import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { tap } from 'rxjs/operators';
import { Notification } from '../interfaces/notification.model';

@Injectable({ providedIn: 'root' })
export class NotificationService {
  private notificationsSubject = new BehaviorSubject<Notification[]>([]);
  public notifications$ = this.notificationsSubject.asObservable();

  private unreadCount = new BehaviorSubject<number>(0);
  public unreadCount$ = this.unreadCount.asObservable();

  constructor(private http: HttpClient) {}

  loadNotifications(): void {
    this.http.get<Notification[]>('/api/notifications').subscribe((notifs: Notification[]) => {
      this.notificationsSubject.next(notifs);
      const unread = notifs.filter(n => !n.read).length;
      this.unreadCount.next(unread);
    });
  }

  addNotification(notification: Notification): void {
    const current = this.notificationsSubject.value;
    this.notificationsSubject.next([notification, ...current]);
    this.unreadCount.next(this.unreadCount.value + 1);
  }

  markAsRead(id: string): Observable<any> {
    return this.http.patch(`/api/notifications/${id}/read`, {}).pipe(
      tap(() => {
        const updated = this.notificationsSubject.value.map((n: any) =>
          n.id === id ? { ...n, read: true } : n
        );
        this.notificationsSubject.next(updated);
        this.unreadCount.next(this.unreadCount.value - 1);
      })
    );
  }

  markAllAsRead(): Observable<any> {
    return this.http.patch(`/api/notifications/read-all`, {}).pipe(
      tap(() => {
        const updated = this.notificationsSubject.value.map((n: any) => ({ ...n, read: true }));
        this.notificationsSubject.next(updated);
        this.unreadCount.next(0);
      })
    );
  }
}
