import { HttpEvent, HttpHandler, HttpHandlerFn, HttpInterceptorFn, HttpRequest } from '@angular/common/http';
import { inject } from '@angular/core';
import { catchError, from, Observable, switchMap, throwError } from 'rxjs';
import { Auth } from '../services/auth';

// Global variable to prevent duplicate token refresh
let isRefreshing = false;

export const authInterceptor: HttpInterceptorFn = (req: HttpRequest<any>, next: HttpHandlerFn) => 
{
  // console.log('[Interceptor] Request:', req.url);
  const authService = inject(Auth);

  // Exclude credentials for external IP geolocation services
  const isExternalGeoService = req.url.includes('ip-api.com') ||
    req.url.includes('ipinfo.io') ||
    req.url.includes('ipapi.co') ||
    req.url.includes('geoplugin.net');

  // Clone request to add credentials if needed (excluding external services)
  const cloneReq = isExternalGeoService ? req : req.clone({
    withCredentials: true // cookies sent
  });

  if (isExternalGeoService) {
    // console.log('[Interceptor] External geo service detected, skipping credentials');
  }

  return next(cloneReq).pipe(
    catchError((err: any) => {

      // exclude auth endpoints and external geo services from refresh logic
      const isAuthEndpoint = req.url.includes('/login') ||
        req.url.includes('/signup') ||
        req.url.includes('/refresh') ||
        req.url.includes('/logout');

      // Check if it's a 401 error
      const is401Error = err.status === 401;

      // Token expired: try refresh
      const isTokenExpiredError = err.error?.message === "Token expired";

      // Token missing: logout immediately (cookie expired)
      const isTokenMissingError = err.error?.message === "Unauthorized: accessToken missing";

      // Handle token missing - direct logout
      if (is401Error && isTokenMissingError && !isAuthEndpoint && !isExternalGeoService) {
        authService.clearUserCache();

        // Only redirect if not already on login page
        if (!window.location.pathname.includes('/login')) {
          authService.logout_request().subscribe({
            next: () => {
              window.location.href = '/login';
            },
            error: () => {
              window.location.href = '/login';
            }
          });
        }
        return throwError(() => err);
      }

      // Handle token expired - try refresh
      if (is401Error && isTokenExpiredError && !isAuthEndpoint && !isExternalGeoService)
      {
        // If already refreshing, prevent duplicate requests
        if (isRefreshing) {
          // console.log('[Interceptor] Already refreshing, skipping...');
          return throwError(() => err);
        }

        // console.log('[Interceptor] AccessToken expired, refreshing token...');
        isRefreshing = true;

        return authService.refresh_request().pipe(
          switchMap(() => {
            console.log('[Interceptor] ✅ Token refresh successful, reloading page...');
            isRefreshing = false;

            // After successful refresh, retry original request with credentials
            return next(req.clone({ withCredentials: true }));
          }),
          catchError((refreshErr: any) => {
            // console.error('[Interceptor] ❌ Token refresh failed:', refreshErr);
            // if refresh expires/fails
            isRefreshing = false;

            authService.clearUserCache();

            // Send logout request and redirect to login page (only if not already on login)
            if (!window.location.pathname.includes('/login')) {
              authService.logout_request().subscribe({
                next: () => {
                  console.log('[Interceptor] Logout completed');
                  window.location.href = '/login';
                },
                error: (logoutErr: any) => {
                  // console.error('[Interceptor] Logout failed:', logoutErr);
                  // Even if logout fails, redirect to login page
                  window.location.href = '/login';
                }
              });
            }

            return throwError(() => refreshErr);
          })
        );
      }
      return throwError(() => err);
    })
  );
};  
