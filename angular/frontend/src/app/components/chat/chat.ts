import { Component, OnInit, OnDestroy, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Subject, Subscription } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { ChatService } from '../../services/chat.service';
import { WebSocketService } from '../../services/websocket.service';
import { Auth } from '../../services/auth';
import { ChatMessage } from '../../interfaces/chat-message.model';
import { ChatPartner } from '../../interfaces/chat-partner.model';

@Component({
  selector: 'app-chat',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './chat.html',
  styleUrls: ['./chat.scss']
})
export class ChatComponent implements OnInit, OnDestroy {
  private chatService = inject(ChatService);
  private websocketService = inject(WebSocketService);
  private authService = inject(Auth);
  private destroy$ = new Subject<void>();
  private messageSub?: Subscription; 

  chatPartners: ChatPartner[] = [];
  currentChat: ChatMessage[] = [];
  selectedPartner: string | null = null;
  newMessage: string = '';
  currentUsername: string = '';

  ngOnInit(): void {
    // ✅ Ensure WebSocket is connected when chat component initializes
    this.websocketService.connectIfNeeded();

    const cachedUsername = this.authService.getCachedUsername();
    if (cachedUsername) {
      this.currentUsername = cachedUsername;
      this.setupMessageSubscription();
      // Send online status
      this.websocketService.sendOnlineStatus(cachedUsername);
    } else {
      this.authService.getCurrentUser().subscribe({
        next: (user: any) => {
          this.currentUsername = user.username;
          this.setupMessageSubscription();
          // Send online status
          this.websocketService.sendOnlineStatus(user.username);
        },
        // error: (err: any) => console.error('Error getting current user:', err)
      });
    }

    this.loadChatPartners();
  }

  private setupMessageSubscription(): void {
    // ✅ If we already have a subscription, clean it up first
    this.messageSub?.unsubscribe();

    // ✅ Subscribe only once to shared message stream
    this.messageSub = this.websocketService.messages$
      .pipe(takeUntil(this.destroy$))
      .subscribe((message: ChatMessage | null) => {
        if (!message) return;

        const isCurrentChat =
          (message.sender === this.selectedPartner && message.receiver === this.currentUsername) ||
          (message.receiver === this.selectedPartner && message.sender === this.currentUsername);

        // Push new message into open chat
        if (isCurrentChat) {
          this.currentChat.push(message);
          this.scrollToBottom();
        }

        // Update chat partner list (last message preview)
        const partnerUsername =
          message.sender === this.currentUsername ? message.receiver : message.sender;
        const partnerIndex = this.chatPartners.findIndex(p => p.username === partnerUsername);

        if (partnerIndex > -1) {
          const partner = this.chatPartners[partnerIndex];
          partner.lastMessage = message.content;
          partner.lastMessageTime = message.timestamp;

          if (message.receiver === this.currentUsername && !isCurrentChat) {
            partner.unread = true;
          }

          this.chatPartners.splice(partnerIndex, 1);
          this.chatPartners.unshift(partner);
        } else {
          this.chatPartners.unshift({
            username: partnerUsername,
            lastMessage: message.content,
            lastMessageTime: message.timestamp,
            unread: message.receiver === this.currentUsername,
            isNew: false
          });
        }
      });
  }


  loadChatPartners(): void {
    this.chatService.getChatPartners()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (partners: ChatPartner[]) => {
          // Ensure optional props always exist
          this.chatPartners = partners.map(p => ({
            username: p.username,
            lastMessage: p.lastMessage || '',
            lastMessageTime: p.lastMessageTime || '',
            unread: p.unread ?? false,
            isNew: p.isNew ?? false
          }));
          console.log('📋 Chat partners loaded:', this.chatPartners.length);
        },
        // error: (err: any) => console.error('❌ Error loading chat partners:', err)
      });
  }

  selectPartner(username: string): void {
    this.selectedPartner = username;
    this.chatService.setCurrentChatPartner(username);
    this.loadChatHistory(username);
    console.log('👤 Selected chat partner:', username);

    // Mark all messages as read when opening chat
    this.chatService.markMessagesAsRead(username).subscribe({
      next: () => {
        const partner = this.chatPartners.find(p => p.username === username);
        if (partner) partner.unread = false;
      },
      // error: (err: any) => console.error('❌ Error marking messages as read:', err)
    });
  }

  loadChatHistory(username: string): void {
    this.chatService.getChatHistory(username)
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (messages: ChatMessage[]) => {
          this.currentChat = messages;
          console.log('💬 Chat history loaded:', messages.length, 'messages');
          this.scrollToBottom();
        },
        // error: (err: any) => console.error('❌ Error loading chat history:', err)
      });
  }

  sendMessage(): void {
    if (!this.newMessage.trim() || !this.selectedPartner) {
      console.warn('⚠️ Cannot send empty message or no partner selected');
      return;
    }

    console.log('📤 Sending message to:', this.selectedPartner);
    this.websocketService.sendMessage(this.selectedPartner, this.newMessage);

    // Optimistic update
    const tempMessage: ChatMessage = {
      sender: this.currentUsername,
      receiver: this.selectedPartner,
      content: this.newMessage,
      timestamp: new Date().toISOString(),
      read: false
    };

    this.currentChat.push(tempMessage);
    this.newMessage = '';
    this.scrollToBottom();
  }

  private scrollToBottom(): void {
    setTimeout(() => {
      const messagesArea = document.querySelector('.messages-area');
      if (messagesArea) {
        messagesArea.scrollTop = messagesArea.scrollHeight;
      }
    }, 100);
  }

  ngOnDestroy(): void {
    this.destroy$.next();
    this.destroy$.complete();
  }
}
