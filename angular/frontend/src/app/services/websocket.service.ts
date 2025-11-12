import { Injectable, inject } from '@angular/core';
import { Client, IMessage } from '@stomp/stompjs';
import SockJS from 'sockjs-client';
import { BehaviorSubject, Observable, ReplaySubject } from 'rxjs';
import { ChatMessage } from '../interfaces/chat-message.model';
import { Notification, NotificationType } from '../interfaces/notification.model';
import { filter, startWith, shareReplay } from 'rxjs/operators';


@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private stompClient: Client | null = null;
  private connected = new ReplaySubject<boolean>(1);
  private ready = new BehaviorSubject<boolean>(false);
  private isConnectedValue = false;
  private channelsSubscribed = false; 

  
  
  private messagesSubject = new BehaviorSubject<ChatMessage | null>(null);
  private notificationsSubject = new BehaviorSubject<Notification | null>(null);
  public messages$ = this.messagesSubject.asObservable().pipe(shareReplay(1));
  public notifications$ = this.notificationsSubject.asObservable().pipe(shareReplay(1));

  public connected$: Observable<boolean> = this.connected.asObservable();
  public ready$ = this.ready.asObservable();

  public onConnected$ = this.connected$.pipe(
  filter((status: any) => status === true)
);

  public connect(): void {
    if (this.stompClient?.connected) {
      console.log('WebSocket already connected');
      return;
    }

    this.stompClient = new Client({
      webSocketFactory: () => new SockJS('http://localhost:8080/ws-chat'),
      connectHeaders: {},
      debug: (str: any) => console.log('STOMP: ' + str),
      reconnectDelay: 5000,
      heartbeatIncoming: 4000,
      heartbeatOutgoing: 4000,
      onConnect: () => {
        console.log('✅ WebSocket Connected');
        this.isConnectedValue = true;
        this.connected.next(true);
        this.ready.next(true);
        this.channelsSubscribed = false;
        this.subscribeToChannels();
      },

      onWebSocketClose: () => {
        console.log('🔌 WebSocket closed');
        this.isConnectedValue = false;
        this.connected.next(false);
        this.channelsSubscribed = false;
      },
      onWebSocketError: (error: any) => {
        console.error('❌ WebSocket error:', error);
        this.isConnectedValue = false;
        this.connected.next(false);
      },

    });

    this.stompClient.activate();
  }

  public connectIfNeeded(): void {
    if (!this.isConnected()) {
      this.connect();
    } else {
      console.log('🔌 WebSocket already connected (connectIfNeeded skipped)');
    }
  }

  private subscribeToChannels(): void {
    if (!this.stompClient || this.channelsSubscribed) return;
    this.channelsSubscribed = true;

    // ✅ Subscribe once to chat messages
    this.stompClient.subscribe('/user/queue/messages', (message: IMessage) => {
      console.log('📨 New message received:', message.body);
      const chatMessage: ChatMessage = JSON.parse(message.body);
      this.messagesSubject.next(chatMessage);
    });

    // ✅ Subscribe once to notifications
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
      this.isConnectedValue = false;
      this.connected.next(false);
      this.stompClient = null;
      this.channelsSubscribed = false;
      console.log('🔌 WebSocket disconnected');
    }
  }

  isConnected(): boolean {
    return this.isConnectedValue;
  }

}
