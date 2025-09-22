import { Component, inject } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { SignupInterface } from '../../interfaces/signup-interface';
import { Auth } from '../../services/auth';

@Component({
  selector: 'app-signup',
  imports: [ReactiveFormsModule],
  templateUrl: './signup.html',
  styleUrl: './signup.scss'
})
export class Signup {

  private authService = inject(Auth);
  signupForm!: FormGroup;
  passwordStrength: String = '';

  constructor(private fb: FormBuilder)
  {
    this.signupForm = this.fb.group({
      firstName : ['', [Validators.required]],
      lastName : ['', [Validators.required]],
      userName : ['', [Validators.required]],
      email : ['', [Validators.required, Validators.email]],
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
      const request: SignupInterface =
      {
        firstName : this.signupForm.value.firstName,
        lastName : this.signupForm.value.lastName,
        username : this.signupForm.value.userName,
        email : this.signupForm.value.email,
        password : this.signupForm.value.password
      }
      this.authService.signup_request(request)
      .subscribe({
        next: response =>
        {
          console.log('Form Submitted:', request);
          alert('✅ Signup successful!');
        },
        error: err =>
        {
          console.log('signup failed: ', err)
          alert('❌ Please fix the form errors.');
        }
      })
    }
    else 
    {
      alert('❌ Please fix the form errors.');
    }

  }
}
