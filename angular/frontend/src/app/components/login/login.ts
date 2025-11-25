import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { Auth } from '../../services/auth';

@Component({
  selector: 'app-login',
  imports: [CommonModule, ReactiveFormsModule, RouterModule],
  templateUrl: './login.html',
  styleUrl: './login.scss'
})
export class Login {

  loginForm: FormGroup;
  private authService = inject(Auth);
  private router = inject(Router);
  isLoading = false;
  alertMessage: string = '';
  alertType: 'success' | 'error' | '' = '';

  constructor(private form: FormBuilder) {
    this.loginForm = this.form.group({
      userName: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  showAlert(message: string, type: 'success' | 'error') {
    this.alertMessage = message;
    this.alertType = type;

    // Auto-hide after 5 seconds for success, 7 seconds for error
    const duration = type === 'success' ? 5000 : 7000;
    setTimeout(() => {
      this.alertMessage = '';
      this.alertType = '';
    }, duration);
  }

  closeAlert() {
    this.alertMessage = '';
    this.alertType = '';
  }

  onSubmit() {
    if (this.loginForm.valid) {
      this.isLoading = true;
      this.authService.signin_request({ username: this.loginForm.value.userName, password: this.loginForm.value.password })
        .subscribe({
          next: (response: any) => {
            console.log('Login successful:', response);
            // Fetch user profile information after successful login
            this.authService.getUserInfo().subscribe({
              next: (userInfo: any) => {
                this.isLoading = false;
                console.log('User info:', userInfo);

                const user = userInfo.data?.me;
                if (user) {
                  // Update auth service state for immediate UI update
                  this.authService.setAuthenticatedState(user);
                }

                if (user?.gender === null || user?.gender === undefined) {
                  // If gender is null, redirect to profile edit page
                  this.router.navigate(['/profile/edit']);
                } else {
                  // If gender is set, redirect to matching page
                  this.router.navigate(['/matching']);
                }
              },
              error: (err: any) => {
                this.isLoading = false;
                // console.error('Failed to get user info:', err);
                // If unable to fetch user info, logout and redirect to login page
                this.showAlert('❌ Failed to load user profile. Please try logging in again.', 'error');
                this.authService.logout_request().subscribe({
                  next: () => {
                    console.log('Logged out successfully');
                    this.router.navigate(['/login']);
                  },
                  error: (logoutErr: any) => {
                    // console.error('Logout failed:', logoutErr);
                    // Force navigation to login even if logout fails
                    this.router.navigate(['/login']);
                  }
                });
              }
            });
          },
          error: (err: any) => {
            this.isLoading = false;
            console.log('Login failed:', err);
            if (err.status === 403) {
              // Check if the error message indicates the user is banned
              const errorMessage = err.error?.message || '';
              if (errorMessage === 'User is banned') {
                this.showAlert('🚫 Your account has been banned. Please contact support for more information.', 'error');
              } else {
                // Email verification required
                this.showAlert('❌ Email verification required. Please check your email and verify your account before logging in.', 'error');
              }
            } else if (err.status === 401) {
              this.showAlert('❌ Login failed. Invalid username or password. Please try again.', 'error');
            } else {
              this.showAlert('❌ Login failed. Please try again later.', 'error');
            }
          }
        })
    } else {
      this.showAlert('❌ Please fill in all required fields.', 'error');
    }
  }
}
