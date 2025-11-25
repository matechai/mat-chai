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

  ngOnInit() {
    // Load existing notifications from backend
    this.notificationService.loadNotifications();

    // Subscribe to reactive notifications list
    this.notificationService.notifications$
      .pipe(takeUntil(this.destroy$))
      .subscribe((notifs: Notification[]) => {
        this.notifications = notifs;
      });

    // Subscribe to unread count
    this.notificationService.unreadCount$
      .pipe(takeUntil(this.destroy$))
      .subscribe((count: number) => {
        this.unreadCount = count;
      });

    // Subscribe once to WebSocket notifications
    this.websocketService.notifications$
      .pipe(takeUntil(this.destroy$))
      .subscribe((notification: Notification | null) => {
        if (notification) {
          this.notificationService.addNotification(notification);
        }
      });

    // Connect WebSocket if not already
    this.websocketService.connectIfNeeded();
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
          next: () => console.log(`Notification ${notification.id} marked as read`),
          // error: (err: any) => console.error('Error marking notification as read:', err)
        });
    }
  }

  markAllAsRead(): void {
    this.notificationService.markAllAsRead()
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: () => console.log('All notifications marked as read'),
        // error: (err: any) => console.error('Error marking all as read:', err)
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
