import { Component, inject} from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { Auth } from '../../services/auth';

@Component({
  selector: 'app-login',
  imports: [ReactiveFormsModule, RouterModule],
  templateUrl: './login.html',
  styleUrl: './login.scss'
})
export class Login {

  loginForm: FormGroup;
  private authService = inject(Auth);

  constructor(private form: FormBuilder)
  {
    this.loginForm = this.form.group({
      userName: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  onSubmit()
  {
    this.authService.signin_request({username: this.loginForm.value.userName, password: this.loginForm.value.password})
    .subscribe({
      next: response =>
      {
        console.log('Form Submitted: ', response);
        alert('Success...');
      },
      error: err =>
      {
        console.log('failed: ', err);
        alert('Sorry failed');
      }
    })
  }

  callProtected() {
    this.authService.test_protected_request().subscribe({
      next: res => console.log('✅ Protected response:', res),
      error: err => console.error('❌ Error:', err)
    });
  }
}
