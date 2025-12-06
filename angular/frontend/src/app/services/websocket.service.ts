import { Injectable, NgZone } from '@angular/core';
import { BehaviorSubject, ReplaySubject } from 'rxjs';
import { shareReplay } from 'rxjs/operators';
import { ChatMessage } from '../interfaces/chat-message.model';
import { Notification } from '../interfaces/notification.model';

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

export interface OnlineStatus {
  username: string;
  isOnline: boolean;
  lastOnline?: string;
}

declare const SockJS: any;
declare const StompJs: any;

@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private stompClient: StompClient | null = null;
  private isConnectedValue = false;
  private channelsSubscribed = false;

  private connected = new BehaviorSubject<boolean>(false);
  private ready = new BehaviorSubject<boolean>(false);

  private messagesSubject = new ReplaySubject<ChatMessage | null>(1);
  private notificationsSubject = new ReplaySubject<Notification | null>(1);
  private onlineStatusSubject = new ReplaySubject<OnlineStatus | null>(1);

  public messages$ = this.messagesSubject.asObservable().pipe(shareReplay(1));
  public notifications$ = this.notificationsSubject.asObservable().pipe(shareReplay(1));
  public onlineStatus$ = this.onlineStatusSubject.asObservable().pipe(shareReplay(1));

  public connected$ = this.connected.asObservable();
  public ready$ = this.ready.asObservable();

  // Queues for messages / online status triggered before connection
  private pendingMessages: { receiver: string; content: string }[] = [];
  private pendingOnlineStatuses: string[] = [];

  constructor(private ngZone: NgZone) {}

  public connect(): void {
    if (this.stompClient?.connected) {
      return;
    }
  }

  /** Establish STOMP connection */
  private connect(): void {
    if (this.stompClient?.connected) return;

    this.stompClient = new StompJs.Client({
      webSocketFactory: () => new SockJS('http://localhost:8080/ws-chat'),
      debug: (str: any) => console.log('STOMP: ' + str),
      reconnectDelay: 5000,
      heartbeatIncoming: 4000,
      heartbeatOutgoing: 4000
    });

    if (!this.stompClient) {
      // console.error('❌ Failed to create STOMP client');
      return;
    }

    this.stompClient.onConnect = (frame: any) => {
      console.log('✅ Connected to WebSocket:', frame.headers);
      this.isConnectedValue = true;
      this.connected.next(true);
      this.ready.next(true);

      // Subscribe to channels after ensuring connection is ready
      if (!this.channelsSubscribed) {
        setTimeout(() => this.subscribeToChannels(), 100);
        this.channelsSubscribed = true;
      }
    };

    this.stompClient.onDisconnect = (frame: any) => {
      // console.log('🔌 WebSocket disconnected');
      this.isConnectedValue = false;
      this.connected.next(false);
    };

    this.stompClient.onWebSocketClose = () => {
      // console.log('🔌 WebSocket closed');
      this.isConnectedValue = false;
      this.connected.next(false);
    };

    this.stompClient.onWebSocketError = (error: any) => {
      // console.error('❌ WebSocket error:', error);
      this.isConnectedValue = false;
      this.connected.next(false);
    };

    this.stompClient!.activate();
    console.log('STOMP: Activating WebSocket...');
  }


  public connectIfNeeded(): void {
    if (!this.isConnected()) {
      this.connect();
    } else {
      // console.log('🔌 WebSocket already connected (connectIfNeeded skipped)');
    }
  }

  /** Subscribe to message, notification, and online-status channels */
  private subscribeToChannels(): void {
    if (!this.stompClient) return;
    // console.log('🔔 Subscribing to STOMP channels');

    this.stompClient.subscribe('/user/queue/messages', (message: any) => {
      // console.log('📨 Message received:', message.body);
      try {
        const chatMessage: ChatMessage = JSON.parse(message.body);
        // ✅ Wrap in NgZone to trigger Angular change detection
        this.ngZone.run(() => {
          this.messagesSubject.next(chatMessage);
        });
      } catch (e) {
        // console.error('❌ Error parsing chat message:', e);
      }
    });

    this.stompClient.subscribe('/user/queue/notifications', (message: any) => {
      // console.log('🔔 Notification received:', message.body);
      try {
        const notification: Notification = JSON.parse(message.body);
        // ✅ Wrap in NgZone to trigger Angular change detection
        this.ngZone.run(() => {
          this.notificationsSubject.next(notification);
        });
      } catch (e) {
        // console.error('❌ Error parsing notification:', e);
      }
    });

    // Subscribe to online status updates
    this.stompClient.subscribe('/topic/online-status', (message: any) => {
      // console.log('🟢 Online status received:', message.body);
      try {
        const onlineStatus: OnlineStatus = JSON.parse(message.body);
        // ✅ Wrap in NgZone to trigger Angular change detection
        this.ngZone.run(() => {
          this.onlineStatusSubject.next(onlineStatus);
        });
      } catch (e) {
        // console.error('❌ Error parsing online status:', e);
      }
    });
  }

  /** Send chat message, queue if not connected */
  public sendMessage(receiver: string, content: string): void {
    if (this.stompClient?.connected) {
      this.stompClient.publish({
        destination: `/app/chat.send/${receiver}`,
        body: content
      });
      // console.log('✉️ Message sent to:', receiver);
    } else {
      console.warn('❌ WebSocket not connected, queuing message for:', receiver);
      this.pendingMessages.push({ receiver, content });
    }
  }

  /** Send online status, queue if not connected */
  public sendOnlineStatus(username: string): void {
    if (this.stompClient?.connected) {
      this.stompClient.publish({
        destination: `/app/user.online/${username}`,
        body: ''
      });
      // console.log('🟢 Online status sent for:', username);
    } else {
      // console.error('❌ WebSocket not connected. Cannot send online status.');
    }
  }

  /** Flush queued messages */
  private flushPendingMessages() {
    this.pendingMessages.forEach(msg => this.sendMessage(msg.receiver, msg.content));
    this.pendingMessages = [];
  }

  /** Flush queued online statuses */
  private flushPendingOnlineStatuses() {
    this.pendingOnlineStatuses.forEach(username => this.sendOnlineStatus(username));
    this.pendingOnlineStatuses = [];
  }

  /** Disconnect STOMP client */
  public disconnect(): void {
    if (this.stompClient) {
      this.stompClient.deactivate();
      this.stompClient = null;
      this.isConnectedValue = false;
      this.channelsSubscribed = false;
      // console.log('🔌 WebSocket disconnected');
    }
  }

  /** Return connection status */
  public isConnected(): boolean {
    return this.isConnectedValue;
  }
}
