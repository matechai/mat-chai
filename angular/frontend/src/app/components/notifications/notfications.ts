import { Component, OnInit, OnDestroy, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { NotificationService } from '../../services/notification.service';
import { WebSocketService } from '../../services/websocket.service';
import { Notification, NotificationType } from '../../interfaces/notification.model';

@Component({
  selector: 'app-notifications',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './notifications.html',
  styleUrls: ['./notifications.scss']
})
export class NotificationsComponent implements OnInit, OnDestroy {
  private notificationService = inject(NotificationService);
  private websocketService = inject(WebSocketService);
  private destroy$ = new Subject<void>();

  notifications: Notification[] = [];
  unreadCount: number = 0;
  isDropdownOpen: boolean = false;

  ngOnInit(): void {
    this.loadNotifications();
    this.loadUnreadCount();
    this.subscribeToNewNotifications();
  }

  loadNotifications(): void {
    this.notificationService.getNotifications()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (notifications : any) => {
          this.notifications = notifications;
        },
        error: (err : any) => console.error('Error loading notifications:', err)
      });
  }

  loadUnreadCount(): void {
    this.notificationService.getUnreadCount()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (count : any) => {
          this.unreadCount = count;
        },
        error: (err : any) => console.error('Error loading unread count:', err)
      });
  }

  subscribeToNewNotifications(): void {
    this.websocketService.notifications$
      .pipe(takeUntil(this.destroy$))
      .subscribe((notification : any) => {
        if (notification) {
          this.notificationService.addNotification(notification);
          this.loadNotifications();
        }
      });

    this.notificationService.unreadCount$
      .pipe(takeUntil(this.destroy$))
      .subscribe((count : any) => {
        this.unreadCount = count;
      });
  }

  toggleDropdown(): void {
    this.isDropdownOpen = !this.isDropdownOpen;
  }

  closeDropdown(): void {
    this.isDropdownOpen = false;
  }

  markAsRead(notification: Notification): void {
    if (!notification.read) {
      this.notificationService.markAsRead(notification.id)
        .pipe(takeUntil(this.destroy$))
        .subscribe({
          error: (err : any) => console.error('Error marking notification as read:', err)
        });
    }
  }

  markAllAsRead(): void {
    this.notificationService.markAllAsRead()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        error: (err : any) => console.error('Error marking all as read:', err)
      });
  }

  getNotificationIcon(type: NotificationType): string {
    switch (type) {
      case NotificationType.CHAT: return '💬';
      case NotificationType.MATCH: return '❤️';
      case NotificationType.LIKE: return '👍';
      case NotificationType.UNLIKE: return '👎';
      default: return '🔔';
    }
  }

  getNotificationClass(type: NotificationType): string {
    return type.toLowerCase();
  }

  ngOnDestroy(): void {
    this.destroy$.next();
    this.destroy$.complete();
  }
}
