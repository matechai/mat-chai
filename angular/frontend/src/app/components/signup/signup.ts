import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { SignupInterface } from '../../interfaces/signup-interface';
import { Auth } from '../../services/auth';
import zxcvbn from 'zxcvbn';

@Component({
  selector: 'app-signup',
  imports: [CommonModule, ReactiveFormsModule, RouterModule],
  templateUrl: './signup.html',
  styleUrl: './signup.scss'
})
export class Signup {

  private authService = inject(Auth);
  private router = inject(Router);
  signupForm!: FormGroup;
  passwordStrength: String = '';
  passwordFeedback: string = '';
  isLoading = false;
  alertMessage: string = '';
  alertType: 'success' | 'error' | '' = '';

  constructor(private fb: FormBuilder) {
    this.signupForm = this.fb.group({
      firstName: ['', [Validators.required]],
      lastName: ['', [Validators.required]],
      userName: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.email]],
      dateOfBirth: ['', [Validators.required]],
      password: ['', [Validators.required]],
      confirmPassword: ['', [Validators.required]],
    });
  }

  checkPasswordStrength(password: string): string {
    if (!password) return 'Weak';

    // User input for personalized dictionary
    const userInputs = [
      this.signupForm.get('firstName')?.value || '',
      this.signupForm.get('lastName')?.value || '',
      this.signupForm.get('userName')?.value || '',
      this.signupForm.get('email')?.value || ''
    ];

    // Use zxcvbn to analyze password
    const result = zxcvbn(password, userInputs);

    // Store feedback for display
    this.passwordFeedback = result.feedback.warning ||
      result.feedback.suggestions.join(' ') || '';

    // Map zxcvbn score (0-4) to our strength labels
    switch (result.score) {
      case 0:
      case 1:
        return 'Weak';
      case 2:
      case 3:
        return 'Medium';
      case 4:
        return 'Strong';
      default:
        return 'Weak';
    }
  }

  onPasswordInput() {
    const password = this.signupForm.get('password')?.value || '';
    this.passwordStrength = this.checkPasswordStrength(password);
  }

  isPasswordValid(): boolean {
    const password = this.signupForm.get('password')?.value || '';
    const confirmPassword = this.signupForm.get('confirmPassword')?.value || '';

    if (!password)
      return false;

    if (password !== confirmPassword)
      return false;

    // zxcvbn already checks for common words and patterns
    // Just check if strength is acceptable (not Weak)
    return this.passwordStrength !== 'Weak';
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
    if (this.signupForm.valid && this.isPasswordValid()) {
      this.isLoading = true;
      const request: SignupInterface =
      {
        firstName: this.signupForm.value.firstName,
        lastName: this.signupForm.value.lastName,
        username: this.signupForm.value.userName,
        email: this.signupForm.value.email,
        dateOfBirth: this.signupForm.value.dateOfBirth,
        password: this.signupForm.value.password
      }
      this.authService.signup_request(request)
        .subscribe({
          next: (response: any) => {
            this.isLoading = false;
            this.showAlert('✅ Registration completed successfully! Please complete email verification and then proceed to login.', 'success');

            // Navigate to login after showing message
            setTimeout(() => {
              window.location.href = '/login';
            }, 2000);
          },
          error: (err: any) => {
            this.isLoading = false;
            // console.log('Signup failed:', err);
            if (err.status === 409) {
              this.showAlert('❌ Username or email already exists.', 'error');
            } else if (err.status === 400) {
              this.showAlert('❌ Invalid input. Please check your information.', 'error');
            } else {
              this.showAlert('❌ Signup failed. Please try again.', 'error');
            }
          }
        })
    }
    else {
      this.showAlert('❌ Please fix the form errors.', 'error');
    }

  }

  // 템플릿에서 사용하는 메소드들 추가
  hasValidationErrors(): boolean {
    return this.passwordContainsPersonalInfo() || this.passwordsMismatch();
  }

  passwordContainsPersonalInfo(): boolean {
    const password = this.signupForm.get('password')?.value?.toLowerCase() || '';
    const firstName = this.signupForm.get('firstName')?.value?.toLowerCase() || '';
    const lastName = this.signupForm.get('lastName')?.value?.toLowerCase() || '';
    const userName = this.signupForm.get('userName')?.value?.toLowerCase() || '';
    const email = this.signupForm.get('email')?.value?.toLowerCase() || '';

    return password.includes(firstName) ||
      password.includes(lastName) ||
      password.includes(userName) ||
      password.includes(email);
  }

  passwordsMismatch(): boolean {
    const password = this.signupForm.get('password')?.value;
    const confirmPassword = this.signupForm.get('confirmPassword')?.value;
    return password !== confirmPassword && !!confirmPassword;
  }

  // Calculate age from date of birth
  calculateAge(dateOfBirth: string): number {
    if (!dateOfBirth) return 0;

    const today = new Date();
    const birthDate = new Date(dateOfBirth);
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDiff = today.getMonth() - birthDate.getMonth();

    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
      age--;
    }

    return age;
  }
}
