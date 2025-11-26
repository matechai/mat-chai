import { Component, OnDestroy, OnInit, inject } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { WebsocketService } from '../../services/websocket.service';
import { NavigationService } from '../../services/navigation.service';
import { Router } from '@angular/router';
import { BehaviorSubject, ReplaySubject } from 'rxjs';
import { AppProvider } from '../../services/app.service';
import { UsersService } from '../../services/users.service';

@Component({
	selector: 'app-layout',
	templateUrl: './layout.component.html',
	styleUrls: ['./layout.component.scss'],
})
export class LayoutComponent implements OnInit, OnDestroy {
	private destroy$ = new ReplaySubject<boolean>(1);

	private websocketService = inject(WebsocketService);
	private navigationService = inject(NavigationService);
	private router = inject(Router);
	private authService = inject(AuthService);
	private appProvider = inject(AppProvider);
	private usersService = inject(UsersService);

	isSidebarOpen = true;
	items$ = new BehaviorSubject<any[]>([]);
	tenant: any = null;
	user: any = null;

	constructor() {
		// UI theme can stay
		this.themeMode = this.appProvider.getConfig().theme.mode;
	}

	themeMode;
	sidebarCollapsed = false;

	ngOnInit(): void {
		this.initializeLayout();
	}

	ngOnDestroy(): void {
		this.destroy$.next(true);
		this.destroy$.complete();
	}

	// ------------------------------------------
	// INIT FLOW
	// ------------------------------------------

	private initializeLayout(): void {
		this.authService.authState$.subscribe((authState) => {
			if (authState?.tenant) {
				this.tenant = authState.tenant;
			}
			if (authState?.user) {
				this.user = authState.user;
				this.handleAuthenticatedUser(authState.user);
			}
		});
	}

	/**
	 * Called only when user is logged in
	 */
	private handleAuthenticatedUser(user: any): void {
		// 👉 Single responsibility: Attach websocket
		this.websocketService.connectIfNeeded();
	}

	/**
	 * Called when logout or token expired
	 */
	private handleLogoutState(): void {
		// 👉 Clean resources
		this.websocketService.disconnect();
	}

	// ------------------------------------------
	// LAYOUT UI CONTROLS
	// ------------------------------------------

	toggleSidebar(): void {
		this.sidebarCollapsed = !this.sidebarCollapsed;
	}

	logout(): void {
		this.authService.logout();
		this.handleLogoutState();
		this.router.navigate(['/auth/login']);
	}
}
