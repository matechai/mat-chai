import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable, of, BehaviorSubject } from 'rxjs';
import { SignupInterface } from '../interfaces/signup-interface';

@Injectable({
  providedIn: 'root'
})
export class Auth {

  private http = inject(HttpClient);
  private apiUrl = '/api';

  // Authentication state subject for real-time updates
  private authStateSubject = new BehaviorSubject<{ isAuthenticated: boolean, user: any | null }>({
    isAuthenticated: false,
    user: null
  });

  // Public observable for components to subscribe
  public authState$ = this.authStateSubject.asObservable();

  signup_request(request: SignupInterface): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/signup`, request);
  }

  signin_request(credentials: { username: String, password: String }): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/login`, credentials, {
      withCredentials: true
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

  // Check token status using GraphQL me query (more efficient than separate endpoint)
  checkTokenStatus(): Observable<any> {
    // Use existing GraphQL endpoint to verify token validity
    return this.getUserAuthInfo();
  }

  // Indirectly check token existence (server returns authentication status)
  hasValidTokens(): Observable<boolean> {
    return new Observable((observer: any) => {
      this.checkTokenStatus().subscribe({
        next: (response: any) => {
          // If GraphQL returns user data, tokens are valid
          if (response.data?.me) {
            observer.next(true);
          } else {
            observer.next(false);
          }
          observer.complete();
        },
        error: (error: any) => {
          // 401/403 errors mean tokens are missing or expired
          if (error.status === 401 || error.status === 403) {
            observer.next(false);
          } else {
            // Other errors might be network issues, so uncertain
            observer.next(null);
          }
          observer.complete();
        }
      });
    });
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
          sexualPreference
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
            // Cache the username and update auth state
            sessionStorage.setItem('username', username);
            this.updateAuthState(true, { username });
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

  // Check authentication status and get user state
  checkAuthState(): Observable<{ isAuthenticated: boolean, user?: any }> {
    // Use GraphQL to check authentication (HttpOnly cookies are sent automatically)
    return new Observable((observer: any) => {
      this.getUserAuthInfo().subscribe({
        next: (response: any) => {
          const user = response.data.me;
          observer.next({ isAuthenticated: true, user });
          observer.complete();
        },
        error: (error: any) => {
          console.error('Error checking auth state:', error);
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

  // Clear user cache
  clearUserCache(): void {
    sessionStorage.removeItem('username');
    // Update auth state when clearing cache
    this.updateAuthState(false, null);
  }

  // Get cached username (synchronous)
  getCachedUsername(): string | null {
    return sessionStorage.getItem('username');
  }

  // Update authentication state (notify all subscribers)
  updateAuthState(isAuthenticated: boolean, user: any = null): void {
    this.authStateSubject.next({
      isAuthenticated,
      user
    });
  }

  // Set authenticated state (call after successful login)
  setAuthenticatedState(user: any): void {
    if (user?.username) {
      sessionStorage.setItem('username', user.username);
    }
    this.updateAuthState(true, user);
  }

  // Get current auth state (synchronous)
  getCurrentAuthState(): { isAuthenticated: boolean, user: any | null } {
    return this.authStateSubject.value;
  }
}
