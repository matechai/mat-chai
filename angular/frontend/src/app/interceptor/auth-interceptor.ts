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

  //clone request to add credentials if needed
  const cloneReq = req.clone({
    withCredentials: true //cookies sent
  });

  return next(cloneReq).pipe(
    catchError((err: any) => {
      console.error('[Interceptor] Caught error:', err);

      // exclude auth endpoints from refresh logic
      const isAuthEndpoint = req.url.includes('/signin') ||
        req.url.includes('/signup') ||
        req.url.includes('/refresh') ||
        req.url.includes('/logout');

      // handles the error when accessToken is expired (but not for auth endpoints)
      if (err.status == 401 && !isAuthEndpoint)
      {
        // if state is already refreshing, skip duplicate requests
        if (isRefreshing) {
          console.log('[Interceptor] Already refreshing, skipping...');
          return throwError(() => err);
        }

        console.log('[Interceptor] 401 detected, refreshing token...');
        isRefreshing = true;

        return authService.refresh_request().pipe(
          switchMap(() => {
            isRefreshing = false;
            //retry original request after refresh
            const retryRequest = req.clone({
              withCredentials: true
            });
            return next(retryRequest);
            }),
          catchError((refreshErr: any) => {
              // if refresh expires/fails
            isRefreshing = false;
              authService.logout_request();
              return throwError(() => refreshErr);
            })
        );
      }
      return throwError(() => err);
    })
  );
};
