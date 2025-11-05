import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, BehaviorSubject } from 'rxjs';
import { tap } from 'rxjs/operators';
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

  getChatPartners(): Observable<ChatPartner[]> {
    return this.http.get<ChatPartner[]>(`${this.apiUrl}/history`);
  }

  getChatHistory(username: string): Observable<ChatMessage[]> {
    return this.http.get<ChatMessage[]>(`${this.apiUrl}/history/${username}`);
  }

  setCurrentChatPartner(username: string | null): void {
    this.currentChatPartner.next(username);
  }

  getCurrentChatPartner(): string | null {
    return this.currentChatPartner.value;
  }
}
