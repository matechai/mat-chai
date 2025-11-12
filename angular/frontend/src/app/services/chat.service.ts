import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, BehaviorSubject } from 'rxjs';
import { tap, map } from 'rxjs/operators';
import { ChatMessage } from '../interfaces/chat-message.model';
import { ChatPartner } from '../interfaces/chat-partner.model';

@Injectable({
  providedIn: 'root'
})
export class ChatService {
  private apiUrl = '/api/chat';
  private currentChatPartner = new BehaviorSubject<string | null>(null);

  public currentChatPartner$ = this.currentChatPartner.asObservable();

  constructor(private http: HttpClient) {}

  // getChatPartners(): Observable<ChatPartner[]> {
  //   return this.http.get<ChatPartner[]>(`${this.apiUrl}/history`);
  // }

  // getChatPartners(): Observable<ChatPartner[]> {
  //   return this.http.get<any[]>(`api/users/matches`).pipe(
  //     tap((users :any) => console.log('Matched users:', users)),
  //     map((users: any) => users.map((u : any) => ({
  //       username: u.username,
  //       lastMessage: '', // Placeholder, as lastMessage is not provided by the backend
  //       lastMessageTimestamp: null // Placeholder, as lastMessageTimestamp is not provided by the backend
  //     })))
  //   );
  // }

   getChatPartners(): Observable<ChatPartner[]> {
    return this.http.get<ChatPartner[]>(`${this.apiUrl}/history`);
  }

  /** Get full chat history with a specific user */
  getChatWithUser(receiver: string): Observable<ChatMessage[]> {
    return this.http.get<ChatMessage[]>(`${this.apiUrl}/history/${receiver}`);
  }

  getChatHistory(username: string): Observable<ChatMessage[]> {
    return this.http.get<ChatMessage[]>(`${this.apiUrl}/history/${username}`);
  }


  // 👇 new function to mark messages as read when chat opens
  markMessagesAsRead(partner: string): Observable<void> {
    return this.http.put<void>(`${this.apiUrl}/mark-read/${partner}`, {}); // you'll add endpoint below
  }


  setCurrentChatPartner(username: string | null): void {
    this.currentChatPartner.next(username);
  }

  getCurrentChatPartner(): string | null {
    return this.currentChatPartner.value;
  }
}
