import { Injectable, inject } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { Observable, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';
import { Auth } from '../services/auth';

@Injectable({
	providedIn: 'root'
})
export class AuthGuard implements CanActivate {
	private authService = inject(Auth);
	private router = inject(Router);

	canActivate(): Observable<boolean> {
		console.log('🔒 AuthGuard: canActivate() called');
		return this.authService.checkAuthState().pipe(
			map(result => {
				console.log('🔒 AuthGuard: checkAuthState result:', result);
				if (!result.isAuthenticated) {
					this.router.navigate(['/login']);
					return false;
				}

				const user = result.user;

				// Check email verification
				if (!user.enabled) {
					alert('Please verify your email address to continue.');
					return true; // Stay on current page
				}

				// Check if profile is complete (gender is required)
				if (!user.gender) {
					this.router.navigate(['/profile/edit']);
					return false;
				}

				// All checks passed, redirect to matches
				this.router.navigate(['/matches']);
				return true;
			}),
			catchError(() => {
				this.router.navigate(['/login']);
				return of(false);
			})
		);
	}
}