import { HttpEvent, HttpHandler, HttpHandlerFn, HttpInterceptorFn, HttpRequest } from '@angular/common/http';
import { inject } from '@angular/core';
import { catchError, from, Observable, switchMap, throwError } from 'rxjs';
import { Auth } from '../services/auth';

// Global variable to prevent duplicate token refresh
let isRefreshing = false;

export const authInterceptor: HttpInterceptorFn = (req: HttpRequest<any>, next: HttpHandlerFn) => 
{
  console.log('[Interceptor] Request:', req.url);
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
    console.log('[Interceptor] External geo service detected, skipping credentials');
  }

  return next(cloneReq).pipe(
    catchError((err: any) => {
      console.error('[Interceptor] Caught error:', err);

      // exclude auth endpoints and external geo services from refresh logic
      const isAuthEndpoint = req.url.includes('/login') ||
        req.url.includes('/signup') ||
        req.url.includes('/refresh') ||
        req.url.includes('/logout');

      // Refresh only when accessToken has expired (check specific error message)
      const isTokenExpiredError = err.status === 401 &&
        err.error?.message === "Token expired";

      if (isTokenExpiredError && !isAuthEndpoint && !isExternalGeoService)
      {
        // If already refreshing, prevent duplicate requests
        if (isRefreshing) {
          console.log('[Interceptor] Already refreshing, skipping...');
          return throwError(() => err);
        }

        console.log('[Interceptor] AccessToken expired, refreshing token...');
        isRefreshing = true;

        return authService.refresh_request().pipe(
          switchMap(() => {
            console.log('[Interceptor] ✅ Token refresh successful, reloading page...');
            isRefreshing = false;

            // Reload page after successful token refresh
            window.location.reload();

            // Retry original request after refresh (this won't execute due to page reload)
            const retryRequest = req.clone({
              withCredentials: true
            });
            return next(retryRequest);
            }),
          catchError((refreshErr: any) => {
            console.error('[Interceptor] ❌ Token refresh failed:', refreshErr);
            // if refresh expires/fails
            isRefreshing = false;

            authService.clearUserCache();

            // Send logout request and redirect to login page
            authService.logout_request().subscribe({
              next: () => {
                console.log('[Interceptor] Logout completed');
                window.location.href = '/login';
              },
              error: (logoutErr: any) => {
                console.error('[Interceptor] Logout failed:', logoutErr);
                // Even if logout fails, redirect to login page
                window.location.href = '/login';
              }
            });

            return throwError(() => refreshErr);
          })
        );
      }
      return throwError(() => err);
    })
  );
};
