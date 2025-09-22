import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SignupInterface } from '../interfaces/signup-interface';

@Injectable({
  providedIn: 'root'
})
export class Auth {

  private http = inject(HttpClient);
  private apiUrl = 'http://localhost:8080/';

  signup_request(request: SignupInterface): Observable<any> 
  {
    return this.http.post(`${this.apiUrl}api/auth/signup`, request);
  }
}
