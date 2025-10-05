import { HttpEvent, HttpHandler, HttpHandlerFn, HttpInterceptorFn, HttpRequest } from '@angular/common/http';
import { inject } from '@angular/core';
import { catchError, from, Observable, switchMap, throwError } from 'rxjs';
import { Auth } from '../services/auth';

export const authInterceptor: HttpInterceptorFn = (req: HttpRequest<any>, next: HttpHandlerFn) => 
{
  console.log('[Interceptor] Request:', req.url);
  const authService = inject(Auth);

  //clone request to add credentials if needed
  const cloneReq = req.clone({
    withCredentials: true //cookies sent
  });

  return next(cloneReq).pipe(
    catchError(err => {
      console.error('[Interceptor] Caught error:', err);
      // handles the error when accessToken is expired
      if (err.status == 401)
      {
        console.log('[Interceptor] 401 detected, refreshing token...');
        return authService.refresh_request().pipe(
          switchMap(() => {
            //retry original request after refresh
            const retryRequest = req.clone({
              withCredentials: true
            });
            return next(retryRequest);
            }),
            catchError(refreshErr => {
              // if refresh expires/fails
              authService.logout_request();
              return throwError(() => refreshErr);
            })
        );
      }
      return throwError(() => err);
    })
  );
};
