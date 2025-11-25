import { Component, OnInit, OnDestroy, inject, signal, AfterViewInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Auth } from '../../services/auth';
import * as L from 'leaflet';

interface UserInfoDTO {
  email?: string;
  firstName?: string;
  lastName?: string;
}

interface UserInfo {
  email: string;
  firstName: string;
  lastName: string;
  username: string;
}

@Component({
  selector: 'app-setting',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './setting.html',
  styleUrl: './setting.scss'
})
export class Setting implements OnInit, OnDestroy {

  private http = inject(HttpClient);
  private authService = inject(Auth);
  private apiUrl = '/api';

  // Signals for reactive state management
  userInfo = signal<UserInfo>({
    email: '',
    firstName: '',
    lastName: '',
    username: ''
  });

  isLoading = signal<boolean>(false);
  isEditing = signal<boolean>(false);
  successMessage = signal<string>('');
  errorMessage = signal<string>('');

  // Form data signals
  editForm = signal<UserInfoDTO>({
    email: '',
    firstName: '',
    lastName: ''
  });

  // Location signals
  currentLocation = signal<{ latitude: number; longitude: number } | null>(null);
  isLocationLoading = signal<boolean>(false);
  locationSuccessMessage = signal<string>('');
  locationErrorMessage = signal<string>('');
  showLocationModal = signal<boolean>(false);
  manualLatitude = signal<string>('');
  manualLongitude = signal<string>('');

  // Map instance
  private map: L.Map | null = null;
  private marker: L.Marker | null = null;

  ngOnInit() {
    this.loadUserInfo();
  }

  loadUserInfo() {
    this.isLoading.set(true);
    this.clearMessages();

    // Fetch user details using GraphQL
    this.fetchUserDetails();
  }

  fetchUserDetails() {
    const query = {
      query: `query {
        me {
          username
          email
          firstName
          lastName
        }
      }`
    };

    this.http.post<any>(`${this.apiUrl}/graphql`, query, {
      withCredentials: true,
      headers: {
        'Content-Type': 'application/json'
      }
    }).subscribe({
      next: (response) => {
        const user = response.data?.me;
        if (user) {
          this.userInfo.set(user);
          // Initialize edit form with current values
          this.editForm.set({
            email: user.email,
            firstName: user.firstName,
            lastName: user.lastName
          });
        } else {
          this.errorMessage.set('User information not found');
        }
        this.isLoading.set(false);
      },
      error: (error) => {
        // console.error('Error fetching user details:', error);
        this.errorMessage.set('Failed to load user details');
        this.isLoading.set(false);
      }
    });
  }

  startEditing() {
    this.isEditing.set(true);
    this.clearMessages();
    // Reset form to current user info
    const currentUser = this.userInfo();
    this.editForm.set({
      email: currentUser.email,
      firstName: currentUser.firstName,
      lastName: currentUser.lastName
    });
  }

  cancelEditing() {
    this.isEditing.set(false);
    this.clearMessages();
  }

  updateUserInfo() {
    const formData = this.editForm();
    const currentUser = this.userInfo();

    // Create patch object with only changed fields
    const patchData: UserInfoDTO = {};

    if (formData.email && formData.email !== currentUser.email) {
      patchData.email = formData.email;
    }
    if (formData.firstName && formData.firstName !== currentUser.firstName) {
      patchData.firstName = formData.firstName;
    }
    if (formData.lastName && formData.lastName !== currentUser.lastName) {
      patchData.lastName = formData.lastName;
    }

    // If no changes, just cancel editing
    if (Object.keys(patchData).length === 0) {
      this.cancelEditing();
      return;
    }

    this.isLoading.set(true);
    this.clearMessages();

    this.http.patch<UserInfo>(`${this.apiUrl}/users/${currentUser.username}`, patchData, {
      withCredentials: true,
      headers: {
        'Content-Type': 'application/json'
      }
    }).subscribe({
      next: (updatedUser) => {
        this.userInfo.set(updatedUser);
        this.isEditing.set(false);
        this.isLoading.set(false);
        this.successMessage.set('User information updated successfully!');

        // Clear success message after 3 seconds
        setTimeout(() => {
          this.successMessage.set('');
        }, 3000);
      },
      error: (error) => {
        // console.error('Error updating user info:', error);
        this.errorMessage.set('Failed to update user information. Please try again.');
        this.isLoading.set(false);
      }
    });
  }

  updateFormField(field: keyof UserInfoDTO, value: string) {
    const currentForm = this.editForm();
    this.editForm.set({
      ...currentForm,
      [field]: value
    });
  }

  private clearMessages() {
    this.successMessage.set('');
    this.errorMessage.set('');
  }

  // Location functions
  private clearLocationMessages() {
    this.locationSuccessMessage.set('');
    this.locationErrorMessage.set('');
  }

  // Get current location using browser geolocation API
  getCurrentLocation() {
    this.clearLocationMessages();

    if (!navigator.geolocation) {
      this.locationErrorMessage.set('Geolocation is not supported by your browser.');
      return;
    }

    this.isLocationLoading.set(true);

    navigator.geolocation.getCurrentPosition(
      (position) => {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;

        console.log('Current location:', { latitude, longitude });
        this.currentLocation.set({ latitude, longitude });

        // Send location to server
        this.updateLocation(latitude, longitude);
      },
      (error) => {
        // console.error('Geolocation error:', error);
        this.isLocationLoading.set(false);

        switch (error.code) {
          case error.PERMISSION_DENIED:
            this.locationErrorMessage.set('Location permission denied. Please enable location access in your browser settings.');
            break;
          case error.POSITION_UNAVAILABLE:
            this.locationErrorMessage.set('Location information is unavailable.');
            break;
          case error.TIMEOUT:
            this.locationErrorMessage.set('Location request timed out.');
            break;
          default:
            this.locationErrorMessage.set('An unknown error occurred while getting your location.');
            break;
        }
      },
      {
        enableHighAccuracy: true,
        timeout: 10000,
        maximumAge: 0
      }
    );
  }

  // Update location on server
  private updateLocation(latitude: number, longitude: number) {
    const currentUser = this.userInfo();
    if (!currentUser.username) {
      this.locationErrorMessage.set('User information not available.');
      this.isLocationLoading.set(false);
      return;
    }

    const locationData = {
      latitude,
      longitude
    };

    this.http.post(`${this.apiUrl}/users/${currentUser.username}/location`, locationData, {
      withCredentials: true,
      headers: {
        'Content-Type': 'application/json'
      }
    }).subscribe({
      next: () => {
        this.isLocationLoading.set(false);
        this.locationSuccessMessage.set(`Location updated successfully! (${latitude.toFixed(6)}, ${longitude.toFixed(6)})`);

        // Clear success message after 5 seconds
        setTimeout(() => {
          this.locationSuccessMessage.set('');
        }, 5000);
      },
      error: (error) => {
        // console.error('Error updating location:', error);
        this.isLocationLoading.set(false);
        this.locationErrorMessage.set('Failed to update location. Please try again.');
      }
    });
  }

  // Open manual location modal
  openLocationModal() {
    this.showLocationModal.set(true);
    this.clearLocationMessages();
    const current = this.currentLocation();
    if (current) {
      this.manualLatitude.set(current.latitude.toString());
      this.manualLongitude.set(current.longitude.toString());
    } else {
      // Default to Seoul coordinates if no location set
      this.manualLatitude.set('37.5665');
      this.manualLongitude.set('126.9780');
    }

    // Initialize map after modal is rendered
    setTimeout(() => this.initializeMap(), 100);
  }

  // Close manual location modal
  closeLocationModal() {
    this.showLocationModal.set(false);
    this.clearLocationMessages();
    this.destroyMap();
  }

  // Initialize Leaflet map
  private initializeMap() {
    if (this.map) {
      this.map.remove();
    }

    const lat = parseFloat(this.manualLatitude()) || 37.5665;
    const lng = parseFloat(this.manualLongitude()) || 126.9780;

    // Create map instance
    this.map = L.map('location-map').setView([lat, lng], 13);

    // Add OpenStreetMap tile layer
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '© OpenStreetMap contributors',
      maxZoom: 19
    }).addTo(this.map);

    // Create custom icon for marker
    const customIcon = L.icon({
      iconUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-icon.png',
      iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-icon-2x.png',
      shadowUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

    // Add draggable marker
    this.marker = L.marker([lat, lng], {
      draggable: true,
      icon: customIcon
    }).addTo(this.map);

    // Update coordinates when marker is dragged
    this.marker.on('dragend', () => {
      if (this.marker) {
        const position = this.marker.getLatLng();
        this.manualLatitude.set(position.lat.toFixed(6));
        this.manualLongitude.set(position.lng.toFixed(6));
      }
    });

    // Update marker position when clicking on map
    this.map.on('click', (e: L.LeafletMouseEvent) => {
      const { lat, lng } = e.latlng;
      this.manualLatitude.set(lat.toFixed(6));
      this.manualLongitude.set(lng.toFixed(6));

      if (this.marker) {
        this.marker.setLatLng([lat, lng]);
      }
    });
  }

  // Destroy map instance
  private destroyMap() {
    if (this.map) {
      this.map.remove();
      this.map = null;
      this.marker = null;
    }
  }

  // Component cleanup
  ngOnDestroy() {
    this.destroyMap();
  }

  // Update manual location
  updateManualLocation() {
    const lat = parseFloat(this.manualLatitude());
    const lng = parseFloat(this.manualLongitude());

    // Validate latitude and longitude
    if (isNaN(lat) || isNaN(lng)) {
      this.locationErrorMessage.set('Please enter valid numbers for latitude and longitude.');
      return;
    }

    if (lat < -90 || lat > 90) {
      this.locationErrorMessage.set('Latitude must be between -90 and 90.');
      return;
    }

    if (lng < -180 || lng > 180) {
      this.locationErrorMessage.set('Longitude must be between -180 and 180.');
      return;
    }

    this.isLocationLoading.set(true);
    this.currentLocation.set({ latitude: lat, longitude: lng });

    // Send location to server
    this.updateLocation(lat, lng);

    // Close modal after a short delay if successful
    setTimeout(() => {
      if (!this.locationErrorMessage()) {
        this.closeLocationModal();
      }
    }, 1000);
  }
}
