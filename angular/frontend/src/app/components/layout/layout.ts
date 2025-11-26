import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterModule } from '@angular/router';
import { Auth } from '../../services/auth';

@Component({
	selector: 'app-layout',
	standalone: true,
	imports: [CommonModule, RouterModule],
	templateUrl: './layout.html',
	styleUrl: './layout.scss'
})
export class LayoutComponent implements OnInit {
	private router = inject(Router);
	private authService = inject(Auth);

	isAuthenticated = signal<boolean>(false);
	currentUser = signal<any>(null);

	ngOnInit() {
		// Subscribe to auth state changes for real-time updates
		this.authService.authState$.subscribe(authState => {
			this.isAuthenticated.set(authState.isAuthenticated);
			this.currentUser.set(authState.user);
		});

		// Check initial authentication status
		this.checkAuthStatus();

		// Listen to router events, but prevent unnecessary API calls
		this.router.events.subscribe((event: any) => {
			// Only check on NavigationEnd events (when page loading is complete)
			if (event.constructor.name === 'NavigationEnd') {
				this.checkAuthStatusFromCache();
			}
		});

		// Periodic token verification removed - HTTP interceptor handles automatically
	}

	private checkAuthStatus() {
		// Check cached user information first
		const cachedUsername = sessionStorage.getItem('username');

		if (cachedUsername) {
			// If cache exists, update auth service state immediately for fast UI update
			this.authService.setAuthenticatedState({ username: cachedUsername });

			// Verify token validity in background
			this.verifyTokensInBackground();
		} else {
			// If no cache, check with server (including token status)
			this.verifyAuthWithServer();
		}
	}

	private verifyTokensInBackground() {
		// Verify token validity in background
		this.authService.hasValidTokens().subscribe({
			next: (hasTokens: boolean | null) => {
				if (hasTokens === false) {
					console.log('❌ No valid tokens found, clearing auth state');
					this.clearAuthState();
				} else if (hasTokens === true) {
					console.log('✅ Valid tokens confirmed');
					// Do nothing if tokens are valid
				} else {
					console.log('⚠️ Token status uncertain (network issue)');
					// Keep cache state in case of uncertainty due to network issues
				}
			},
			error: (error: any) => {
				console.log('❌ Token verification failed:', error);
				// Safely clear state on error
				this.clearAuthState();
			}
		});
	}

	// Force token check method (call when needed)
	public forceTokenCheck(): void {
		console.log('🔍 Force checking token status...');
		this.verifyTokensInBackground();
	}

	// Log token information (for development - HttpOnly cookies are not visible but status can be checked)
	public logAuthInfo(): void {
		console.log('📊 Current Auth State:');
		console.log('- isAuthenticated:', this.isAuthenticated());
		console.log('- currentUser:', this.currentUser());
		console.log('- cachedUsername:', sessionStorage.getItem('username'));

		// Check cookies included in current request (HttpOnly not visible but other cookies are)
		console.log('- document.cookie:', document.cookie);

		// Check token status with server
		this.authService.hasValidTokens().subscribe({
			next: (hasTokens: boolean | null) => {
				console.log('- serverTokenStatus:', hasTokens ? 'VALID' : hasTokens === false ? 'INVALID' : 'UNKNOWN');
			}
		});
	}

	private checkAuthStatusFromCache() {
		// Only check cache for router events (no API calls)
		const cachedUsername = sessionStorage.getItem('username');
		this.isAuthenticated.set(!!cachedUsername);
		this.currentUser.set(cachedUsername ? { username: cachedUsername } : null);
	}

	private verifyAuthWithServer() {
		// Check actual authentication status with server
		this.authService.getCurrentUser().subscribe({
			next: (user: any) => {
				if (user && user.username) {
					// Update auth service state (will automatically update component signals)
					this.authService.setAuthenticatedState(user);
				} else {
					this.clearAuthState();
				}
			},
			error: (error: any) => {
				console.log('Authentication check failed:', error);
				this.clearAuthState();
			}
		});
	}

	private clearAuthState() {
		// Use auth service to clear state (will automatically update all subscribers)
		this.authService.clearUserCache();
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
		console.log('🚪 Logout button clicked');

		// Immediately change UI state (improve user experience)
		this.clearAuthState();

		// Send logout request to server
		this.authService.logout_request().subscribe({
			next: (response: any) => {
				console.log('✅ Logout successful:', response);
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