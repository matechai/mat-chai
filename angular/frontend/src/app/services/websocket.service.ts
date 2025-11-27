import { Injectable, NgZone } from '@angular/core';
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
  onDisconnect?: (frame: any) => void;
  onWebSocketClose?: () => void;
  onWebSocketError?: (error: any) => void;
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
  private connected = new BehaviorSubject<boolean>(false);
  private ready = new BehaviorSubject<boolean>(false);
  private isConnectedValue = false;
  private channelsSubscribed = false; 

  
  
  private messagesSubject = new ReplaySubject<ChatMessage | null>(1);
  private notificationsSubject = new ReplaySubject<Notification | null>(1);
  public messages$ = this.messagesSubject.asObservable().pipe(shareReplay(1));
  public notifications$ = this.notificationsSubject.asObservable().pipe(shareReplay(1));

  public connected$: Observable<boolean> = this.connected.asObservable();
  public ready$ = this.ready.asObservable();

  public onConnected$ = this.connected$.pipe(
  filter((status: any) => status === true)
);

  constructor(private ngZone: NgZone) {}

  public connect(): void {
    if (this.stompClient?.connected) {
      console.log('🔌 WebSocket already connected');
      return;
    }

    this.stompClient = new StompJs.Client({
      webSocketFactory: () => new SockJS('http://localhost:8080/ws-chat'),
      connectHeaders: {},
      debug: (str: string) => console.log('STOMP: ' + str),
      reconnectDelay: 5000,
      heartbeatIncoming: 4000,
      heartbeatOutgoing: 4000,
    });

    if (!this.stompClient) {
      console.error('❌ Failed to create STOMP client');
      return;
    }

    this.stompClient.onConnect = (frame: any) => {
      console.log('✅ Connected to WebSocket:', frame.headers);
      this.isConnectedValue = true;
      this.connected.next(true);
      this.ready.next(true);
      
      // Subscribe to channels IMMEDIATELY after connection
      if (!this.channelsSubscribed) {
        this.subscribeToChannels();
        this.channelsSubscribed = true;
      }
    };

    this.stompClient.onDisconnect = (frame: any) => {
      console.log('🔌 WebSocket disconnected');
      this.isConnectedValue = false;
      this.connected.next(false);
    };

    this.stompClient.onWebSocketClose = () => {
      console.log('🔌 WebSocket closed');
      this.isConnectedValue = false;
      this.connected.next(false);
    };

    this.stompClient.onWebSocketError = (error: any) => {
      console.error('❌ WebSocket error:', error);
      this.isConnectedValue = false;
      this.connected.next(false);
    };

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
    if (!this.stompClient) return;
    console.log('🔔 Subscribing to STOMP channels');

    this.stompClient.subscribe('/user/queue/messages', (message: any) => {
      console.log('📨 Message received:', message.body);
      try {
        const chatMessage: ChatMessage = JSON.parse(message.body);
        // ✅ Wrap in NgZone to trigger Angular change detection
        this.ngZone.run(() => {
          this.messagesSubject.next(chatMessage);
        });
      } catch (e) {
        console.error('❌ Error parsing chat message:', e);
      }
    });

    this.stompClient.subscribe('/user/queue/notifications', (message: any) => {
      console.log('🔔 Notification received:', message.body);
      try {
        const notification: Notification = JSON.parse(message.body);
        // ✅ Wrap in NgZone to trigger Angular change detection
        this.ngZone.run(() => {
          this.notificationsSubject.next(notification);
        });
      } catch (e) {
        console.error('❌ Error parsing notification:', e);
      }
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
