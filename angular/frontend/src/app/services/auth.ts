import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { BehaviorSubject, Observable, of } from 'rxjs';
import { SignupInterface } from '../interfaces/signup-interface';

@Injectable({
  providedIn: 'root'
})
export class Auth {

  private http = inject(HttpClient);
  private apiUrl = '/api';

  private currentUserSubject = new BehaviorSubject<any | null>(null);

  // Public observable for other components
  user$ = this.currentUserSubject.asObservable();

  signup_request(request: SignupInterface): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/signup`, request);
  }

  signin_request(credentials: { username: String, password: String }): Observable<any> {
     return new Observable((observer: any) => {
    this.http.post(`${this.apiUrl}/auth/login`, credentials, { withCredentials: true })
      .subscribe({
        next: (res: any) => {
          // Fetch current user info from GraphQL
          this.getUserAuthInfo().subscribe({
            next: (response: any) => {
              const user = response.data?.me || null;
              this.setCurrentUser(user);
              observer.next(res);
              observer.complete();
            },
            error: (err : any) => {
              this.setCurrentUser(null);
              observer.error(err);
            }
          });
        },
        error: (err : any) => observer.error(err)
      });
  });
  }

  logout_request() // Using DELETE method as requested
  {
    this.clearUserCache();
    return this.http.delete<null>(`${this.apiUrl}/auth/logout`, {
      withCredentials: true
    });
  }

  refresh_request() {
    console.log("refresh call\n");
    return this.http.post(
      `${this.apiUrl}/auth/refresh`, {},
      { withCredentials: true }
    );
  }

  // Get current user information using GraphQL (no more JWT headaches!)
  getCurrentUser(): Observable<{ username: string }> {
    // First check session storage cache
    const cachedUsername = sessionStorage.getItem('username');
    if (cachedUsername) {
      // Return cached value immediately
      return new Observable((observer: any) => {
        observer.next({ username: cachedUsername });
        observer.complete();
      });
    }

    // Use GraphQL to get username
    return new Observable((observer: any) => {
      console.log('Fetching username via GraphQL...');
      this.getUsernameOnly().subscribe({
        next: (username: string) => {
          observer.next({ username });
          observer.complete();
        },
        error: (error: any) => {
          observer.error(error);
        }
      });
    });
  }

  // Get basic auth info (lightweight for navigation decisions)
  getUserAuthInfo(): Observable<any> {
    const query = {
      query: `query {
        me {
          username
          gender
          enabled
        }
      }`
    };

    return this.http.post<any>(`${this.apiUrl}/graphql`, query, {
      withCredentials: true,
      headers: {
        'Content-Type': 'application/json'
      }
    });
  }

  // Get profile editable fields only (optimized for profile editing)
  getUserEditableFields(): Observable<any> {
    const query = {
      query: `query {
        me {
          gender
          sexualPreferences
          biography
          interests
          profileImageUrl
          imageUrls
        }
      }`
    };

    return this.http.post<any>(`${this.apiUrl}/graphql`, query, {
      withCredentials: true,
      headers: {
        'Content-Type': 'application/json'
      }
    });
  }

  // Legacy method for full profile (keep for backward compatibility)
  getUserFullProfile(): Observable<any> {
    return this.getUserEditableFields();
  }

  // Legacy method for backward compatibility (use getUserAuthInfo instead)
  getUserInfo(): Observable<any> {
    return this.getUserAuthInfo();
  }

  // Get username only using GraphQL
  getUsernameOnly(): Observable<string> {
    const query = {
      query: `query {
        me {
          username
        }
      }`
    };

    return new Observable((observer: any) => {
      this.http.post<any>(`${this.apiUrl}/graphql`, query, {
        withCredentials: true,
        headers: {
          'Content-Type': 'application/json'
        }
      }).subscribe({
        next: (response: any) => {
          const username = response.data?.me?.username;
          if (username) {
            // Cache the username
            sessionStorage.setItem('username', username);
            observer.next(username);
            observer.complete();
          } else {
            observer.error(new Error('Username not found in response'));
          }
        },
        error: (error: any) => {
          observer.error(error);
        }
      });
    });
  }

  // Call this after successful login or on app init
  setCurrentUser(user: any | null) {
    this.currentUserSubject.next(user);
    if (user?.username) {
      sessionStorage.setItem('username', user.username);
    } else {
      sessionStorage.removeItem('username');
    }
  }

  // Check authentication status and get user state
// Modify checkAuthState to update currentUserSubject automatically
  checkAuthState(): Observable<{ isAuthenticated: boolean, user?: any }> {
    return new Observable((observer: any) => {
      this.getUserAuthInfo().subscribe({
        next: (response: any) => {
          const user = response.data?.me || null;
          if (user) this.setCurrentUser(user);
          else this.setCurrentUser(null);

          observer.next({ isAuthenticated: !!user, user });
          observer.complete();
        },
        error: (error: any) => {
          console.error('Error checking auth state:', error);
          this.setCurrentUser(null);
          observer.next({ isAuthenticated: false });
          observer.complete();
        }
      });
    });
  }


  // Get JWT token from cookies
  private getJWTFromCookie(): string | null {
    const cookies = document.cookie.split(';');
    for (let cookie of cookies) {
      const [name, value] = cookie.trim().split('=');
      if (name === 'accessToken') { // Assuming your JWT cookie name is 'accessToken'
        console.log('✅ Cookie Debug: Found accessToken!');
        return value;
      }
    }

    console.log('❌ Cookie Debug: accessToken not found. Available cookie names:',
      cookies.map(c => `"${c.trim().split('=')[0]}"`));
    return null;
  }

  hasAuthCookies() : boolean
  {
    const cookies = document.cookie.split(';');
    const hasAccess = cookies.some(c => c.trim().startsWith('accessToken='));
    const hasRefresh = cookies.some(c => c.trim().startsWith('refreshToken='));
    return hasAccess || hasRefresh;
  }
  

  // Clear user cache
  clearUserCache(): void {
    sessionStorage.removeItem('username');
    this.setCurrentUser(null);
  }

  // Get cached username (synchronous)
  getCachedUsername(): string | null {
    return sessionStorage.getItem('username');
  }
}
