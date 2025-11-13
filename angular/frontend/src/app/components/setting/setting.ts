import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Auth } from '../../services/auth';

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
export class Setting implements OnInit {

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
        console.error('Error fetching user details:', error);
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
        console.error('Error updating user info:', error);
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
}
