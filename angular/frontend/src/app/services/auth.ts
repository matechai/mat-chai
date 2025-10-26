import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { SignupInterface } from '../interfaces/signup-interface';

@Injectable({
  providedIn: 'root'
})
export class Auth {

  private http = inject(HttpClient);
  private apiUrl = '/api';

  signup_request(request: SignupInterface): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/signup`, request);
  }

  signin_request(credentials: { username: String, password: String }): Observable<any> {
    return this.http.post<{ firstlogin: boolean }>(`${this.apiUrl}/auth/login`, credentials, {
      withCredentials: true
    });
  }

  logout_request() // Check API URL
  {
    this.clearUserCache();
    return this.http.post<null>(`${this.apiUrl}/auth/logout`, {},
      { withCredentials: true });
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

  // Get full user information using GraphQL me query
  getUserInfo(): Observable<any> {
    const query = {
      query: `query {
        me {
          email
          username
          firstName
          lastName
          dateOfBirth
          age
          gender
          sexualPreferences
          biography
          interests
          profileImageUrl
          imageUrls
          fame
          enabled
          firstLogin
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

  // Check authentication status and get user state
  checkAuthState(): Observable<{ isAuthenticated: boolean, user?: any }> {
    // Check if JWT token exists
    const token = this.getJWTFromCookie();
    if (!token) {
      return new Observable(observer => {
        observer.next({ isAuthenticated: false });
        observer.complete();
      });
    }

    // Get user info from GraphQL
    return new Observable(observer => {
      this.getUserInfo().subscribe({
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

  // Decode JWT payload without verification (client-side only)
  private decodeJWTPayload(token: string): any {
    try {
      const base64Payload = token.split('.')[1];
      const payload = atob(base64Payload);
      return JSON.parse(payload);
    } catch (error) {
      throw new Error('Invalid JWT format');
    }
  }

  // Clear user cache
  clearUserCache(): void {
    sessionStorage.removeItem('username');
  }

  // Get cached username (synchronous)
  getCachedUsername(): string | null {
    return sessionStorage.getItem('username');
  }
}
