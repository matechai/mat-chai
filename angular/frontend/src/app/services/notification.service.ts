import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, BehaviorSubject } from 'rxjs';
import { tap } from 'rxjs/operators';
import { Notification } from '../models/notification.model';

@Injectable({
  providedIn: 'root'
})
export class NotificationService {
  private apiUrl = '/api/notifications';
  private unreadCount = new BehaviorSubject<number>(0);

  public unreadCount$ = this.unreadCount.asObservable();

  constructor(private http: HttpClient) {}

  getNotifications(): Observable<Notification[]> {
    return this.http.get<Notification[]>(this.apiUrl);
  }

  getUnreadCount(): Observable<number> {
    return this.http.get<number>(`${this.apiUrl}/unread-count`).pipe(
      tap(count => this.unreadCount.next(count))
    );
  }

  markAsRead(notificationId: string): Observable<void> {
    return this.http.patch<void>(`${this.apiUrl}/${notificationId}/read`, {}).pipe(
      tap(() => this.decrementUnreadCount())
    );
  }

  markAllAsRead(): Observable<void> {
    return this.http.patch<void>(`${this.apiUrl}/read-all`, {}).pipe(
      tap(() => this.unreadCount.next(0))
    );
  }

  incrementUnreadCount(): void {
    this.unreadCount.next(this.unreadCount.value + 1);
  }

  private decrementUnreadCount(): void {
    const current = this.unreadCount.value;
    if (current > 0) {
      this.unreadCount.next(current - 1);
    }
  }
}
