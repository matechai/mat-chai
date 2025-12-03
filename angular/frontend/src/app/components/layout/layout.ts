import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterModule } from '@angular/router';
import { Auth } from '../../services/auth';
import { WebSocketService } from '../../services/websocket.service';
import { NotificationsComponent } from '../notifications/notifications';

@Component({
	selector: 'app-layout',
	standalone: true,
	imports: [CommonModule, RouterModule, NotificationsComponent],
	templateUrl: './layout.html',
	styleUrl: './layout.scss'
})
export class LayoutComponent implements OnInit {
	private router = inject(Router);
	private authService = inject(Auth);
	private websocketService = inject(WebSocketService);

	isAuthenticated = signal<boolean>(false);
	currentUser = signal<any>(null);

	ngOnInit() {
		// Get initial auth state
		const currentAuthState = this.authService.getCurrentAuthState();
		this.isAuthenticated.set(currentAuthState.isAuthenticated);
		this.currentUser.set(currentAuthState.user);

		// Subscribe to auth state changes for real-time updates
		this.authService.authState$.subscribe(authState => {
			this.isAuthenticated.set(authState.isAuthenticated);
			this.currentUser.set(authState.user);

			// ✅ Connect WebSocket immediately when user becomes authenticated
			if (authState.isAuthenticated && authState.user) {
				// console.log('🔌 Auth state changed to authenticated, connecting WebSocket');
				this.websocketService.connectIfNeeded();
				// Send online status
				this.websocketService.sendOnlineStatus(authState.user.username);
			}
		});

		// Layout은 auth state만 구독! AuthGuard가 인증 체크 담당
		// console.log('🎨 Layout initialized - listening to auth state only');
	}

	navigateToHome() {
		this.router.navigate(['/']);
	}

	// navigateToLogin() {
	// 	this.router.navigate(['/login']);
	// }

	// navigateToSignup() {
	// 	this.router.navigate(['/signup']);
	// }

	navigateToMatching() {
		this.navigateWithAuthCheck(['/matching']);
	}

	navigateToChat() {
		this.navigateWithAuthCheck(['/chat']);
	}

	navigateToSettings() {
		this.navigateWithAuthCheck(['/settings']);
	}

	navigateToViewers() {
		this.navigateWithAuthCheck(['/viewers']);
	}

	navigateToLikedBy() {
		this.navigateWithAuthCheck(['/liked-by']);
	}

	navigateToUpdateProfile() {
		this.navigateWithAuthCheck(['/profile/edit']);
	}

	logout() {

		// Immediately change UI state (improve user experience)
		this.authService.clearUserCache();

		// Send logout request to server
		this.authService.logout_request().subscribe({
			next: (response: any) => {
				this.router.navigate(['/login']);
			},
			error: (error: any) => {
				// console.error('❌ Logout failed:', error);
				// Even if server logout fails, client is already cleaned up
				this.router.navigate(['/login']);
			}
		});
	}

	// Simple check when navigating to pages requiring authentication
	private navigateWithAuthCheck(route: string[]) {
		if (!this.isAuthenticated()) {
			// If not authenticated, go to login page
			this.router.navigate(['/login']);
		} else {
			// If authenticated, navigate (interceptor handles token expiration)
			this.router.navigate(route);
		}
	}
}