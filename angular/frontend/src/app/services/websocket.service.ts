import { Injectable, inject } from '@angular/core';
import { Client, IMessage } from '@stomp/stompjs';
import SockJS from 'sockjs-client';
import { BehaviorSubject, Observable } from 'rxjs';
import { ChatMessage } from '../interfaces/chat-message.model';
import { Notification } from '../interfaces/notification.model';

@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private stompClient: Client | null = null;
  private connected = new BehaviorSubject<boolean>(false);

  private messagesSubject = new BehaviorSubject<ChatMessage | null>(null);
  private notificationsSubject = new BehaviorSubject<Notification | null>(null);

  public messages$: Observable<ChatMessage | null> = this.messagesSubject.asObservable();
  public notifications$: Observable<Notification | null> = this.notificationsSubject.asObservable();
  public connected$: Observable<boolean> = this.connected.asObservable();

  connect(): void {
    if (this.stompClient?.connected) {
      console.log('WebSocket already connected');
      return;
    }

    this.stompClient = new Client({
      webSocketFactory: () => {
        // SockJS will automatically send HttpOnly cookies
        return new SockJS('http://localhost:8080/ws-chat');
      },
      connectHeaders: {}, // No headers needed - cookies are sent automatically
      debug: (str) => console.log('STOMP: ' + str),
      reconnectDelay: 5000,
      heartbeatIncoming: 4000,
      heartbeatOutgoing: 4000,
      onConnect: () => {
        console.log('✅ WebSocket Connected');
        this.connected.next(true);
        this.subscribeToChannels();
      },
      onStompError: (frame) => {
        console.error('❌ STOMP error:', frame);
        this.connected.next(false);
      },
      onWebSocketClose: () => {
        console.log('🔌 WebSocket closed');
        this.connected.next(false);
      },
      onWebSocketError: (error) => {
        console.error('❌ WebSocket error:', error);
        this.connected.next(false);
      }
    });

    this.stompClient.activate();
  }

  private subscribeToChannels(): void {
    if (!this.stompClient) return;

    // Subscribe to private messages
    this.stompClient.subscribe('/user/queue/messages', (message: IMessage) => {
      console.log('📨 New message received:', message.body);
      const chatMessage: ChatMessage = JSON.parse(message.body);
      this.messagesSubject.next(chatMessage);
    });

    // Subscribe to notifications
    this.stompClient.subscribe('/user/queue/notifications', (message: IMessage) => {
      console.log('🔔 New notification received:', message.body);
      const notification: Notification = JSON.parse(message.body);
      this.notificationsSubject.next(notification);
    });
  }

  sendMessage(receiver: string, content: string): void {
    if (this.stompClient?.connected) {
      this.stompClient.publish({
        destination: `/app/chat.send/${receiver}`,
        body: content
      });
      console.log('✉️ Message sent to:', receiver);
    } else {
      console.error('❌ WebSocket not connected. Cannot send message.');
    }
  }

  disconnect(): void {
    if (this.stompClient) {
      this.stompClient.deactivate();
      this.connected.next(false);
      this.stompClient = null;
      console.log('🔌 WebSocket disconnected');
    }
  }

  isConnected(): boolean {
    return this.connected.value;
  }
}
