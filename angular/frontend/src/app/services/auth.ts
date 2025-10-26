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

  signup_request(request: SignupInterface): Observable<any> 
  {
    return this.http.post(`${this.apiUrl}/auth/signup`, request);
  }

  signin_request(credentials: {username: String, password: String}): Observable<any>
  {
    return this.http.post<{firstlogin: boolean}>(`${this.apiUrl}/auth/login`, credentials, {
      withCredentials: true
    });
  }

  logout_request() // Check API URL
  {
    this.clearUserCache();
    return this.http.post<null>(`${this.apiUrl}/auth/logout`, {}, 
      { withCredentials: true});
  }

 refresh_request() {
  console.log("refresh call\n");
  return this.http.post(
    `${this.apiUrl}/auth/refresh`, {},
    { withCredentials: true }
  );
}

  // Get current user information from JWT token (simple username only)
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

    // Extract username from JWT token
    const username = this.getUsernameFromJWT();
    if (username) {
      // Cache the username in session storage
      sessionStorage.setItem('username', username);
      return new Observable((observer: any) => {
        observer.next({ username });
        observer.complete();
      });
    }

    // If no JWT or invalid JWT, return error
    return new Observable((observer: any) => {
      observer.error(new Error('No valid JWT token found'));
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

  // Extract username from JWT token
  private getUsernameFromJWT(): string | null {
    try {
      // Get JWT token from cookies
      const token = this.getJWTFromCookie();
      if (!token) {
        return null;
      }

      // Decode JWT payload (without verification - only for client-side reading)
      const payload = this.decodeJWTPayload(token);
      return payload?.sub || null; // 'sub' contains the username
    } catch (error) {
      console.error('Error decoding JWT:', error);
      return null;
    }
  }

  // Get JWT token from cookies
  private getJWTFromCookie(): string | null {
    const cookies = document.cookie.split(';');
    for (let cookie of cookies) {
      const [name, value] = cookie.trim().split('=');
      if (name === 'accessToken') { // Assuming your JWT cookie name is 'accessToken'
        return value;
      }
    }
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

//testing API
test_protected_request() {
  return this.http.get('http://localhost:8080/api/protected/test', {
    withCredentials: true
  });
}

}
