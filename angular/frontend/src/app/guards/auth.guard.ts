


import { Injectable, inject } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Observable, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';
import { Auth } from '../services/auth';

@Injectable({
	providedIn: 'root'
})
export class AuthGuard implements CanActivate {
	private authService = inject(Auth);
	private router = inject(Router);

	canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> {
		console.log('🔒 AuthGuard: canActivate() called for route:', state.url);
		return this.authService.checkAuthState().pipe(
			map((result : any) => {
				console.log('🔒 AuthGuard: checkAuthState result:', result);

				// Check if user is authenticated
				if (!result.isAuthenticated && state.url !== '/login') {
					console.log('❌ Not authenticated, redirecting to login');
					this.router.navigate(['/login'], {
						queryParams: { returnUrl: state.url }
					});
					return false;
				}

				const user = result.user;

				// Check email verification
				if (!user.enabled) {
					console.log('⚠️ Email not verified');
					alert('Please verify your email address to continue.');
					// Block access but don't redirect
					return false;
				}

				// Check if profile is complete (gender is required)
				// But allow access to profile/edit route to complete it
				if (!user.gender && state.url !== '/profile/edit') {
					console.log('⚠️ Profile incomplete, redirecting to profile edit');
					this.router.navigate(['/profile/edit']);
					return false;
				}

				// All checks passed - allow access to requested route
				console.log('✅ All checks passed, allowing access to:', state.url);
				return true;
			}),
			catchError((error : any) => {
				console.error('❌ Error in AuthGuard:', error);
				this.router.navigate(['/login']);
				return of(false);
			})
		);
	}
}
