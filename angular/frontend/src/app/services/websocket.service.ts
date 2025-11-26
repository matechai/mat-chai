import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, ReplaySubject } from 'rxjs';
import { ChatMessage } from '../interfaces/chat-message.model';
import { Notification, NotificationType } from '../interfaces/notification.model';
import { filter, shareReplay } from 'rxjs/operators';

// Type definitions for WebSocket
interface StompClient {
  connected: boolean;
  activate: () => void;
  deactivate: () => void;
  subscribe: (destination: string, callback: (message: any) => void) => any;
  publish: (params: { destination: string; body?: string; headers?: any }) => void;
  onConnect?: (frame: any) => void;
}

interface StompMessage {
  body: string;
  headers: any;
}

// Declare external libraries as any to avoid type issues
declare const SockJS: any;
declare const StompJs: any;


@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private stompClient: StompClient | null = null;
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

    this.stompClient = new StompJs.Client({
    webSocketFactory: () => new SockJS('http://localhost:8080/ws-chat'),
    connectHeaders: {},
    debug: (str: string) => console.log('STOMP: ' + str),
    reconnectDelay: 5000, // Handles reconnects automatically
    heartbeatIncoming: 4000,
    heartbeatOutgoing: 4000,

    onConnect: () => {
      console.log('✅ WebSocket Connected');
      this.isConnectedValue = true;
      this.connected.next(true);
      this.ready.next(true);
      // ❌ Do NOT resubscribe here
    },

    onDisconnect: () => {
      console.log('🔌 WebSocket disconnected');
      this.isConnectedValue = false;
      this.connected.next(false);
    },

    onWebSocketClose: () => {
      console.log('🔌 WebSocket closed');
      this.isConnectedValue = false;
      this.connected.next(false);
    },

    onWebSocketError: (error: any) => {
      // console.error('❌ WebSocket error:', error);
      this.isConnectedValue = false;
      this.connected.next(false);
    },
  });

    this.stompClient!.onConnect = (frame: any) => {
    console.log('✅ Connected to WebSocket:', frame.headers);
    // Subscribe just once
    if (!this.channelsSubscribed) {
      this.subscribeToChannels();
      this.channelsSubscribed = true;
    }
  };

    this.stompClient!.activate();
}


  public connectIfNeeded(): void {
    if (!this.isConnected()) {
      this.connect();
    } else {
      console.log('🔌 WebSocket already connected (connectIfNeeded skipped)');
    }
  }

  private subscribeToChannels(): void {
  if (!this.stompClient) return;
  console.log('🔔 Subscribing to STOMP channels');

    this.stompClient.subscribe('/user/queue/messages', (message: any) => {
    console.log('📨 Message received:', message.body);
    const chatMessage: ChatMessage = JSON.parse(message.body);
    this.messagesSubject.next(chatMessage);
  });

    this.stompClient.subscribe('/user/queue/notifications', (message: any) => {
    console.log('🔔 Notification received:', message.body);
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
      // console.error('❌ WebSocket not connected. Cannot send message.');
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
