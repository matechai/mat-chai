


import { Component, OnInit, OnDestroy, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet, RouterLink, Router, RouterLinkActive } from '@angular/router';
import { Subject } from 'rxjs';
import { takeUntil, delay } from 'rxjs/operators';

import { Auth } from './services/auth';
import { WebSocketService } from './services/websocket.service';
import { NotificationService } from './services/notification.service';
import { NotificationsComponent } from './components/notifications/notfications';

@Component({
  selector: 'app-root',
  // standalone: true,
  imports: [
    CommonModule,
    RouterOutlet,
    RouterLink,
    RouterLinkActive,
    NotificationsComponent
  ],
  templateUrl: './app.html',
  styleUrls: ['./app.scss']
})
export class AppComponent implements OnInit, OnDestroy {
  private authService = inject(Auth);
  private websocketService = inject(WebSocketService);
  private notificationService = inject(NotificationService);
  private router = inject(Router);
  private destroy$ = new Subject<void>();

  isAuthenticated: boolean = false;
  currentUsername: string = '';

ngOnInit(): void {
  console.log('🚀 App initialized');

  // Subscribe to auth changes
  this.authService.user$
    .pipe(takeUntil(this.destroy$))
    .subscribe((user: any) => {
      this.isAuthenticated = !!user;
      this.currentUsername = user?.username || '';

      if (this.isAuthenticated) {
        console.log('✅ Authenticated, initializing WebSocket...');
        this.websocketService.connectIfNeeded();
      } else {
        console.log('❌ Not authenticated, disconnecting WebSocket');
        this.websocketService.disconnect();
      }
    });

  // Check current session
  this.authService.checkAuthState()
    .pipe(takeUntil(this.destroy$))
    .subscribe({
      next: (result: any) => {
        if (result.isAuthenticated && result.user) {
          this.isAuthenticated = true;
          this.currentUsername = result.user.username;
          console.log('✅ User authenticated:', this.currentUsername);

          // Initialize WebSocket immediately
          this.websocketService.connectIfNeeded();
        } else {
          this.isAuthenticated = false;
          this.websocketService.disconnect();
        }
      },
      error: (err: any) => {
        console.error('❌ Error checking auth state:', err);
        this.isAuthenticated = false;
        this.websocketService.disconnect();
      }
    });
}


  private initializeWebSocket(): void {
    console.log('🔌 Initializing WebSocket connection...');

    // Connect to WebSocket
    this.websocketService.connect();

    // Load initial notification count
    // ✅ correct
    this.notificationService.unreadCount$
      .pipe(takeUntil(this.destroy$))
      .subscribe({
        next: (count: number) => console.log('🔢 Current unread count:', count),
        error: (err: any) => console.error('❌ Error reading unread count:', err)
      });


    // Monitor connection status
    this.websocketService.connected$
      .pipe(takeUntil(this.destroy$))
      .subscribe((connected : any) => {
        if (connected) {
          console.log('✅ WebSocket connected successfully');
        } else {
          console.log('⚠️ WebSocket disconnected');
        }
      });
  }

  logout(): void {
    console.log('👋 Logging out...');

    this.authService.logout_request().subscribe({
      next: () => {
        console.log('✅ Logout successful');
        this.websocketService.disconnect();
        this.isAuthenticated = false;
        this.currentUsername = '';
        this.router.navigate(['/login']);
      },
      error: (err : any) => {
        console.error('❌ Logout error:', err);
        // Still disconnect and navigate even if server request fails
        this.websocketService.disconnect();
        this.isAuthenticated = false;
        this.currentUsername = '';
        this.router.navigate(['/login']);
      }
    });
  }

  ngOnDestroy(): void {
    console.log('🛑 App component destroyed');
    this.destroy$.next();
    this.destroy$.complete();
    this.websocketService.disconnect();
  }

  private checkAuth() {
  this.authService.checkAuthState()
    .pipe(takeUntil(this.destroy$))
    .subscribe({
      next: (result: any) => {
        this.isAuthenticated = result.isAuthenticated;

        if (result.isAuthenticated && result.user) {
          this.currentUsername = result.user.username;
          console.log('✅ User authenticated:', this.currentUsername);
          setTimeout(() => this.initializeWebSocket(), 500);
        } else {
          console.log('❌ User not authenticated');
          this.websocketService.disconnect();
        }
      },
      error: (err: any) => {
        console.error('❌ Error checking auth state:', err);
        this.isAuthenticated = false;
        this.websocketService.disconnect();
      }
    });
}
}
