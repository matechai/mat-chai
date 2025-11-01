import { Component, signal, inject } from '@angular/core';
import { RouterLink, RouterLinkActive, RouterOutlet, Router } from '@angular/router';
import { Auth } from './services/auth';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterLink, RouterLinkActive],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App {
  protected readonly title = signal('frontend');

  private authService = inject(Auth);
  private router = inject(Router);

  logout(): void {
    console.log('🚪 Logout button clicked');

    this.authService.logout_request().subscribe({
      next: (response: any) => {
        console.log('✅ Logout successful:', response);
        // Navigate to home, which will redirect to login due to no cookies
        this.router.navigate(['/']);
      },
      error: (error: any) => {
        console.error('❌ Logout failed:', error);
        // Even if logout fails, clear local cache and redirect
        this.authService.clearUserCache();
        this.router.navigate(['/']);
      }
    });
  }
}
