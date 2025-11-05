import { Component, signal, inject } from '@angular/core';
import { RouterLink, RouterLinkActive, RouterOutlet, Router } from '@angular/router';
import { Auth } from './services/auth';
import { NotificationsComponent } from "./components/notifications/notfications";

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterLink, RouterLinkActive, NotificationsComponent],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App {
  protected readonly title = signal('frontend');

  private authService = inject(Auth);
  private router = inject(Router);

  logout(): void {
    console.log('🚪 Logout button clicked');

    this.authService.logout_request().subscribe({
      next: (response: any) => {
        console.log('✅ Logout successful:', response);
        // Navigate to home, which will redirect to login due to no cookies
        this.router.navigate(['/']);
      },
      error: (error: any) => {
        console.error('❌ Logout failed:', error);
        // Even if logout fails, clear local cache and redirect
        this.authService.clearUserCache();
        this.router.navigate(['/']);
      }
    });
  }
}



// import { Component, OnInit, OnDestroy, inject } from '@angular/core';
// import { CommonModule } from '@angular/common';
// import { RouterOutlet, RouterLink, Router } from '@angular/router';
// import { Subject } from 'rxjs';
// import { takeUntil, delay } from 'rxjs/operators';
//
// import { Auth } from './services/auth';
// import { WebSocketService } from './services/websocket.service';
// import { NotificationService } from './services/notification.service';
// import { NotificationsComponent } from './components/notifications/notfications';
//
// @Component({
//   selector: 'app-root',
//   standalone: true,
//   imports: [
//     CommonModule,
//     RouterOutlet,
//     RouterLink,
//     NotificationsComponent
//   ],
//   templateUrl: './app.html',
//   styleUrls: ['./app.scss']
// })
// export class AppComponent implements OnInit, OnDestroy {
//   private authService = inject(Auth);
//   private websocketService = inject(WebSocketService);
//   private notificationService = inject(NotificationService);
//   private router = inject(Router);
//   private destroy$ = new Subject<void>();
//
//   isAuthenticated: boolean = false;
//   currentUsername: string = '';
//
//   ngOnInit(): void {
//     console.log('🚀 App initialized');
//
//     // Check authentication status
//     this.authService.checkAuthState()
//       .pipe(takeUntil(this.destroy$))
//       .subscribe({
//         next: (result) => {
//           this.isAuthenticated = result.isAuthenticated;
//
//           if (result.isAuthenticated && result.user) {
//             this.currentUsername = result.user.username;
//             console.log('✅ User authenticated:', this.currentUsername);
//
//             // Initialize WebSocket connection after small delay to ensure auth is set
//             setTimeout(() => {
//               this.initializeWebSocket();
//             }, 500);
//           } else {
//             console.log('❌ User not authenticated');
//             this.websocketService.disconnect();
//           }
//         },
//         error: (err) => {
//           console.error('❌ Error checking auth state:', err);
//           this.isAuthenticated = false;
//           this.websocketService.disconnect();
//         }
//       });
//   }
//
//   private initializeWebSocket(): void {
//     console.log('🔌 Initializing WebSocket connection...');
//
//     // Connect to WebSocket
//     this.websocketService.connect();
//
//     // Load initial notification count
//     this.notificationService.getUnreadCount()
//       .pipe(takeUntil(this.destroy$))
//       .subscribe({
//         next: (count) => console.log('🔢 Initial unread count:', count),
//         error: (err) => console.error('❌ Error loading unread count:', err)
//       });
//
//     // Monitor connection status
//     this.websocketService.connected$
//       .pipe(takeUntil(this.destroy$))
//       .subscribe(connected => {
//         if (connected) {
//           console.log('✅ WebSocket connected successfully');
//         } else {
//           console.log('⚠️ WebSocket disconnected');
//         }
//       });
//   }
//
//   logout(): void {
//     console.log('👋 Logging out...');
//
//     this.authService.logout_request().subscribe({
//       next: () => {
//         console.log('✅ Logout successful');
//         this.websocketService.disconnect();
//         this.isAuthenticated = false;
//         this.currentUsername = '';
//         this.router.navigate(['/login']);
//       },
//       error: (err) => {
//         console.error('❌ Logout error:', err);
//         // Still disconnect and navigate even if server request fails
//         this.websocketService.disconnect();
//         this.isAuthenticated = false;
//         this.currentUsername = '';
//         this.router.navigate(['/login']);
//       }
//     });
//   }
//
//   ngOnDestroy(): void {
//     console.log('🛑 App component destroyed');
//     this.destroy$.next();
//     this.destroy$.complete();
//     this.websocketService.disconnect();
//   }
// }
