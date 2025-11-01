import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ProfileUpdateRequest } from '../interfaces/profile-interfaces';

@Injectable({ providedIn: 'root' })
export class UserService {
  private apiUrl = '/api';  // Use relative path to proxy through nginx

  constructor(private http: HttpClient) { }

  // Get gender list using GraphQL
  getGenders(): Observable<string[]> {
    const query = {
      query: "query { genders }"
    };

    return new Observable((observer: any) => {
      this.http.post<any>(`${this.apiUrl}/graphql`, query, {
        withCredentials: true,
        headers: { 'Content-Type': 'application/json' }
      }).subscribe({
        next: (response: any) => {
          observer.next(response.data.genders);
          observer.complete();
        },
        error: (error: any) => observer.error(error)
      });
    });
  }

  // Get sexual preferences list using GraphQL
  getSexualPreferences(): Observable<string[]> {
    const query = {
      query: "query { sexualPreferences }"
    };

    return new Observable((observer: any) => {
      this.http.post<any>(`${this.apiUrl}/graphql`, query, {
        withCredentials: true,
        headers: { 'Content-Type': 'application/json' }
      }).subscribe({
        next: (response: any) => {
          observer.next(response.data.sexualPreferences);
          observer.complete();
        },
        error: (error: any) => observer.error(error)
      });
    });
  }

  // Get interests list using GraphQL
  getInterests(): Observable<string[]> {
    const query = {
      query: "query { interests }"
    };

    return new Observable((observer: any) => {
      this.http.post<any>(`${this.apiUrl}/graphql`, query, {
        withCredentials: true,
        headers: { 'Content-Type': 'application/json' }
      }).subscribe({
        next: (response: any) => {
          observer.next(response.data.interests);
          observer.complete();
        },
        error: (error: any) => observer.error(error)
      });
    });
  }

  // Update profile using POST API (@RequestPart method)
  updateProfile(username: string, profileData: any, files: File[]): Observable<any> {
    const formData = new FormData();

    // @RequestPart("data") - Send JSON data as Blob
    const dataBlob = new Blob([JSON.stringify(profileData)], {
      type: 'application/json'
    });
    formData.append('data', dataBlob);

    // @RequestPart("files") - Send files as array
    files.forEach((file) => {
      formData.append('files', file);
    });

    return this.http.post(`${this.apiUrl}/users/${username}/profile`, formData, {
      withCredentials: true
    });
  }

  // Update user location
  updateUserLocation(username: string, locationData: { latitude: number | null, longitude: number | null }): Observable<any> {
    return this.http.post(`${this.apiUrl}/users/${username}/location`, locationData, {
      withCredentials: true,
      headers: { 'Content-Type': 'application/json' }
    });
  }
}
