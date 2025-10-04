import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SignupInterface } from '../interfaces/signup-interface';

@Injectable({
  providedIn: 'root'
})
export class Auth {

  private http = inject(HttpClient);
  private apiUrl = 'http://localhost:8080/api';

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
    return this.http.post<null>(`${this.apiUrl}/auth/logout`, {WithCredentials: true});
  }

 refresh_request() {
  return this.http.post(
    `${this.apiUrl}/auth/refresh`, {},
    { withCredentials: true }
  );
}

}
