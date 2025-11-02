import { Client, IMessage } from '@stomp/stompjs';
import { BehaviorSubject, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import SockJSModule from 'sockjs-client';
import { Injectable } from '@angular/core';


  const SockJS = SockJSModule as unknown as { new(url: string, _reserved?: any, options?: any): WebSocket };


export interface ChatMessage {
  sender: string;
  receiver: string;
  content: string;
  timestamp: string;
}

export interface ChatPartner {
  username: string;
  lastMessage: string;
  lastMessageTime: string;
}

@Injectable({ providedIn: 'root' })

export class ChatService {

  private stompClient!: Client;
  private messagesSubject = new BehaviorSubject<ChatMessage[]>([]);
  messages$ = this.messagesSubject.asObservable();

  private chatPartnersSubject = new BehaviorSubject<ChatPartner[]>([]);
  chatPartners$ = this.chatPartnersSubject.asObservable();

  private baseUrl = 'http://localhost:8080/api/chat';

  constructor(private http: HttpClient) {}

  connect() {
    this.stompClient = new Client({
      webSocketFactory: () => new SockJS('http://localhost:8080/ws-chat'),
      reconnectDelay: 5000,
      debug: (str: string) => console.log(str),
      // If using cookies, browser sends them automatically
      connectHeaders: {} // empty because JWT in cookie
    });

    this.stompClient.onConnect = (frame: any) => {
      console.log('Connected: ', frame);
      this.stompClient.subscribe('/user/queue/messages', (message: IMessage) => {
        const msg: ChatMessage = JSON.parse(message.body);
        this.addMessage(msg);
      });
    };

    this.stompClient.onStompError = (frame: any) => {
      console.error('Broker error: ', frame.headers['message']);
    };

    this.stompClient.activate();
  }

  sendMessage(receiver: string, content: string) {
    if (!this.stompClient || !this.stompClient.connected) return;

    this.stompClient.publish({
      destination: `/app/chat/${receiver}`,
      body: content
      // No need for headers if JWT in cookie
    });
  }

  fetchChatHistory(receiver: string): Observable<ChatMessage[]> {
    return this.http.get<ChatMessage[]>(`${this.baseUrl}/history/${receiver}`, { withCredentials: true });
  }

  fetchChatPartners(): void {
    this.http.get<ChatPartner[]>(`${this.baseUrl}/history`, { withCredentials: true }).subscribe(partners => {
      this.chatPartnersSubject.next(partners);
    });
  }

  private addMessage(msg: ChatMessage) {
    const current = this.messagesSubject.getValue();
    this.messagesSubject.next([...current, msg]);
  }
}