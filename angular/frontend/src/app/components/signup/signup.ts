import { Component } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';

@Component({
  selector: 'app-signup',
  imports: [ReactiveFormsModule],
  templateUrl: './signup.html',
  styleUrl: './signup.scss'
})
export class Signup {

  signupForm!: FormGroup;
  passwordStrength: String = '';

  constructor(private fb: FormBuilder)
  {
    this.signupForm = this.fb.group({
      firstName : ['', [Validators.required]],
      lastName : ['', [Validators.required]],
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
    const email = this.signupForm.get('email')?.value?.toLowerCase() || '';
    const password = this.signupForm.get('password')?.value?.toLowerCase() || '';
    const confirmPassword = this.signupForm.get('confirmPassword')?.value || '';

    if (!password)
      return false;

    if (password !== confirmPassword.toLowerCase())
      return false;

    if (password.includes(firstName) || password.includes(lastName) || password.includes(email))
      return false;

    return this.passwordStrength !== 'weak';
  }

  onSubmit()
  {
    if (this.signupForm.valid && this.isPasswordValid()) 
    {
      console.log('Form Submitted:', this.signupForm.value);
      alert('✅ Signup successful!');
    }
    else 
    {
      alert('❌ Please fix the form errors.');
    }
  }
}
