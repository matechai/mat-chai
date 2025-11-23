import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

interface ForgotPasswordRequest {
	email: string;
}

@Component({
	selector: 'app-forgot-password',
	standalone: true,
	imports: [CommonModule, FormsModule],
	templateUrl: './forgot-password.html',
	styleUrl: './forgot-password.scss'
})
export class ForgotPassword {

	private http = inject(HttpClient);
	private router = inject(Router);
	private apiUrl = '/api';

	// Signals for reactive state management
	email = signal<string>('');
	isLoading = signal<boolean>(false);
	successMessage = signal<string>('');
	errorMessage = signal<string>('');
	step = signal<'input' | 'success'>('input');

	onSubmit() {
		const emailValue = this.email().trim();

		// Validation
		if (!emailValue) {
			this.errorMessage.set('Please enter your email address');
			return;
		}

		if (!this.isValidEmail(emailValue)) {
			this.errorMessage.set('Please enter a valid email address');
			return;
		}

		this.isLoading.set(true);
		this.clearMessages();

		const request: ForgotPasswordRequest = {
			email: emailValue
		};

		// Send password reset request
		this.http.post(`${this.apiUrl}/auth/forgot-password`, request, {
			withCredentials: true,
			headers: {
				'Content-Type': 'application/json'
			}
		}).subscribe({
			next: (response) => {
				this.step.set('success');
				this.successMessage.set(
					'Password reset instructions have been sent to your email address. ' +
					'Please check your inbox and follow the instructions to reset your password.'
				);
				this.isLoading.set(false);
			},
			error: (error) => {
				console.error('Forgot password error:', error);
				if (error.status === 404) {
					this.errorMessage.set('No account found with this email address');
				} else if (error.status === 429) {
					this.errorMessage.set('Too many requests. Please try again later');
				} else {
					this.errorMessage.set('Failed to send reset instructions. Please try again');
				}
				this.isLoading.set(false);
			}
		});
	}

	updateEmail(value: string) {
		this.email.set(value);
		this.clearMessages();
	}

	backToLogin() {
		this.router.navigate(['/login']);
	}

	private isValidEmail(email: string): boolean {
		const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		return emailRegex.test(email);
	}

	private clearMessages() {
		this.successMessage.set('');
		this.errorMessage.set('');
	}
}