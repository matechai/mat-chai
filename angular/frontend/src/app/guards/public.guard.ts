import { Auth } from "../services/auth";
import { Injectable, inject } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Observable, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class PublicGuard implements CanActivate {
  private authService = inject(Auth);
  private router = inject(Router);

  canActivate(): Observable<boolean> {
    // Use synchronous getCurrentAuthState() to avoid unnecessary GraphQL calls
    const authState = this.authService.getCurrentAuthState();

    if (authState.isAuthenticated) {
      // Redirect logged-in users to dashboard/matching
      this.router.navigate(['/matching']);
      return of(false);
    }

    return of(true); // allow unauthenticated users
  }
}
