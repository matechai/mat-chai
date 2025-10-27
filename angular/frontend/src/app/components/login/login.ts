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

  constructor(private form: FormBuilder) {
    this.loginForm = this.form.group({
      userName: ['', Validators.required],
      password: ['', Validators.required]
    });
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

                if (userInfo.data?.me?.gender === null || userInfo.data?.me?.gender === undefined) {
                  // If gender is null, redirect to profile edit page
                  alert('✅ Login successful! Please complete your profile.');
                  this.router.navigate(['/profile/edit']);
                } else {
                  // If gender is set, redirect to matching page
                  alert('✅ Login successful!');
                  this.router.navigate(['/matching']);
                }
              },
              error: (err: any) => {
                this.isLoading = false;
                console.error('Failed to get user info:', err);
                // If unable to fetch user info, logout and redirect to login page
                alert('❌ Failed to load user profile. Please try logging in again.');
                this.authService.logout_request().subscribe({
                  next: () => {
                    console.log('Logged out successfully');
                    this.router.navigate(['/login']);
                  },
                  error: (logoutErr: any) => {
                    console.error('Logout failed:', logoutErr);
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
              alert('❌ Email verification required.\nPlease check your email and verify your account before logging in.');
            } else if (err.status === 401) {
              alert('❌ Login failed.\nInvalid username or password. Please try again.');
            } else {
              alert('❌ Login failed.\nPlease try again later.');
            }
          }
        })
    } else {
      alert('❌ Please fill in all required fields.');
    }
  }
}
