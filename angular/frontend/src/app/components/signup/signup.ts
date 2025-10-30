import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { SignupInterface } from '../../interfaces/signup-interface';
import { Auth } from '../../services/auth';

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
  isLoading = false;

  constructor(private fb: FormBuilder)
  {
    this.signupForm = this.fb.group({
      firstName : ['', [Validators.required]],
      lastName : ['', [Validators.required]],
      userName : ['', [Validators.required]],
      email : ['', [Validators.required, Validators.email]],
      dateOfBirth: ['', [Validators.required]],
      password : ['', [Validators.required]],
      confirmPassword : ['', [Validators.required]],
    });
  }

  checkPasswordStrength(password: string) : string
  {
    let strength = 0;
    if (password.length >= 8 )
      strength++;
    if (/[A-Z]/.test(password))
      strength++;
    if (/[a-z]/.test(password))
      strength++;
    if (/[0-9]/.test(password))
      strength++;
    if (/[A-Za-z0-9]/.test(password))
      strength++;
    if (strength <= 2)
      return 'Weak';
    if (strength === 3 || strength === 4)
      return 'Medium';
    return 'Strong';
  }

  onPasswordInput()
  {
    const password = this.signupForm.get('password')?.value || '';
    this.passwordStrength = this.checkPasswordStrength(password);
  }

  isPasswordValid() : boolean
  {
    const firstName = this.signupForm.get('firstName')?.value?.toLowerCase() || '';
    const lastName = this.signupForm.get('lastName')?.value?.toLowerCase() || '';
    const userName = this.signupForm.get('userName')?.value?.toLowerCase() || '';
    const email = this.signupForm.get('email')?.value?.toLowerCase() || '';
    const password = this.signupForm.get('password')?.value?.toLowerCase() || '';
    const confirmPassword = this.signupForm.get('confirmPassword')?.value || '';

    if (!password)
      return false;

    if (password !== confirmPassword.toLowerCase())
      return false;

    if (password.includes(firstName) || password.includes(lastName) || password.includes(email) || password.includes(userName))
      return false;

    return this.passwordStrength !== 'weak';
  }

  onSubmit()
  {
    if (this.signupForm.valid && this.isPasswordValid()) 
    {
      this.isLoading = true;
      const request: SignupInterface =
      {
        firstName : this.signupForm.value.firstName,
        lastName : this.signupForm.value.lastName,
        username : this.signupForm.value.userName,
        email : this.signupForm.value.email,
        dateOfBirth: this.signupForm.value.dateOfBirth,
        password : this.signupForm.value.password
      }
      this.authService.signup_request(request)
      .subscribe({
        next: (response: any) =>
        {
          this.isLoading = false;
          console.log('Signup successful:', response);
          alert('✅ Registration completed successfully.\nPlease complete email verification and then proceed to login.');
          // successful signup, navigate to login page
          this.router.navigate(['/login']);
        },
        error: (err: any) =>
        {
          this.isLoading = false;
          console.log('Signup failed:', err);
          if (err.status === 409) {
            alert('❌ Username or email already exists.');
          } else if (err.status === 400) {
            alert('❌ Invalid input. Please check your information.');
          } else {
            alert('❌ Signup failed. Please try again.');
          }
        }
      })
    }
    else 
    {
      alert('❌ Please fix the form errors.');
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
