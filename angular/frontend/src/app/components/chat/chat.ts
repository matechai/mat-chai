
import { Component, OnInit, OnDestroy, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Subject } from 'rxjs';
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

  chatPartners: ChatPartner[] = [];
  currentChat: ChatMessage[] = [];
  selectedPartner: string | null = null;
  newMessage: string = '';
  currentUsername: string = '';

  ngOnInit(): void {
  const cachedUsername = this.authService.getCachedUsername();
  if (cachedUsername) {
    this.currentUsername = cachedUsername;
    this.setupMessageSubscription();
  } else {
    this.authService.getCurrentUser().subscribe({
      next: (user: any) => {
        this.currentUsername = user.username;
        this.setupMessageSubscription();
      },
      error: (err: any) => console.error('Error getting current user:', err)
    });
  }

  this.loadChatPartners();
}

private setupMessageSubscription() {
  // Ensure WS is connected first
  this.websocketService.connectIfNeeded();

  // Subscribe to messages only when WebSocket is connected
  this.websocketService.onConnected$
    .pipe(takeUntil(this.destroy$))
    .subscribe(() => {
      this.websocketService.messages$
        .pipe(takeUntil(this.destroy$))
        .subscribe((message: ChatMessage | null) => {
          if (!message) return;

          const isCurrentChat =
            (message.sender === this.selectedPartner && message.receiver === this.currentUsername) ||
            (message.receiver === this.selectedPartner && message.sender === this.currentUsername);

          if (isCurrentChat) {
            this.currentChat.push(message);
            this.scrollToBottom();
          }

          const partnerUsername = message.sender === this.currentUsername ? message.receiver : message.sender;
          const partnerIndex = this.chatPartners.findIndex(p => p.username === partnerUsername);
          if (partnerIndex > -1) {
            this.chatPartners[partnerIndex].lastMessage = message.content;
            this.chatPartners[partnerIndex].lastMessageTime = message.timestamp;
          } else {
            this.chatPartners.unshift({
              username: partnerUsername,
              lastMessage: message.content,
              lastMessageTime: message.timestamp
            });
          }
        });
    });
}


  loadChatPartners(): void {
    this.chatService.getChatPartners()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (partners: ChatPartner[]) => {
          this.chatPartners = partners;
          console.log('📋 Chat partners loaded:', partners.length);
        },
        error: (err : any) => console.error('❌ Error loading chat partners:', err)
      });
  }

  selectPartner(username: string): void {
    this.selectedPartner = username;
    this.chatService.setCurrentChatPartner(username);
    this.loadChatHistory(username);
    console.log('👤 Selected chat partner:', username);
  }

  loadChatHistory(username: string): void {
    this.chatService.getChatHistory(username)
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (messages : any) => {
          this.currentChat = messages;
          console.log('💬 Chat history loaded:', messages.length, 'messages');
          this.scrollToBottom();
        },
        error: (err: any) => console.error('❌ Error loading chat history:', err)
      });
  }

  subscribeToNewMessages(): void {
    this.websocketService.messages$
        .pipe(takeUntil(this.destroy$))
        .subscribe((message: ChatMessage | null) => {
          if (!message) return;

          const isCurrentChat = (message.sender === this.selectedPartner && message.receiver === this.currentUsername) ||
                                (message.receiver === this.selectedPartner && message.sender === this.currentUsername);

          // Update current chat if it's the selected conversation
          if (isCurrentChat) {
              this.currentChat.push(message);
              this.scrollToBottom();
          }

          // Update last message in partner list locally for notifications
          const partnerUsername = message.sender === this.currentUsername ? message.receiver : message.sender;
          const partnerIndex = this.chatPartners.findIndex(p => p.username === partnerUsername);
          if (partnerIndex > -1) {
              this.chatPartners[partnerIndex].lastMessage = message.content;
              this.chatPartners[partnerIndex].lastMessageTime = message.timestamp;
          } else {
              // If partner not found, optionally add them
              this.chatPartners.unshift({
                  username: partnerUsername,
                  lastMessage: message.content,
                  lastMessageTime: message.timestamp
              });
          }
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
      timestamp: new Date().toISOString()
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
    // this.websocketService.disconnect();
  }
}
