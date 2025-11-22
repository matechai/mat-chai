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
    return this.authService.checkAuthState().pipe(
      map((result: any) => {
        if (result.isAuthenticated) {
          // Redirect logged-in users to dashboard/matching
          this.router.navigate(['/matching']);
          return false;
        }
        return true; // allow unauthenticated users
      }),
      catchError(() => {
        return of(true); // allow unauthenticated users even on error
      })
    );
  }
}
