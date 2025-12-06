import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import zxcvbn from 'zxcvbn';

interface ResetPasswordRequest {
	token: string;
	password: string;
}

@Component({
	selector: 'app-reset-password',
	standalone: true,
	imports: [CommonModule, FormsModule],
	templateUrl: './reset-password.html',
	styleUrl: './reset-password.scss'
})
export class ResetPassword implements OnInit {

	private http = inject(HttpClient);
	private router = inject(Router);
	private route = inject(ActivatedRoute);
	private apiUrl = '/api';

	// Signals for reactive state management
	token = signal<string>('');
	password = signal<string>('');
	confirmPassword = signal<string>('');
	isLoading = signal<boolean>(false);
	isValidatingToken = signal<boolean>(true);
	successMessage = signal<string>('');
	errorMessage = signal<string>('');
	step = signal<'validating' | 'reset' | 'success' | 'invalid'>('validating');
	passwordStrength = signal<string>('');
	passwordFeedback = signal<string>('');

	ngOnInit() {
		// Get token from query parameters
		const tokenParam = this.route.snapshot.queryParams['token'];
		if (tokenParam) {
			this.token.set(tokenParam);
			this.validateToken(tokenParam);
		} else {
			this.step.set('invalid');
			this.errorMessage.set('Invalid or missing reset token');
		}
	}

	validateToken(token: string) {
		this.isValidatingToken.set(true);
		this.clearMessages();

		// Validate token with backend
		this.http.get(`${this.apiUrl}/auth/reset-password`, {
			params: { token: token },
			withCredentials: true
		}).subscribe({
			next: (response) => {
				// Token is valid, show password reset form
				this.step.set('reset');
				this.isValidatingToken.set(false);
			},
			error: (error) => {
				// console.error('Token validation error:', error);
				this.isValidatingToken.set(false);

				if (error.status === 400) {
					this.step.set('invalid');
					this.errorMessage.set('This reset link is invalid or has expired. Please request a new password reset.');
				} else {
					this.step.set('invalid');
					this.errorMessage.set('Unable to validate reset token. Please try again later.');
				}
			}
		});
	}

	checkPasswordStrength(password: string): string {
		if (!password) return 'Weak';

		// Use zxcvbn to analyze password (no user inputs for reset password)
		const result = zxcvbn(password);

		// Store feedback for display
		this.passwordFeedback.set(
			result.feedback.warning ||
			result.feedback.suggestions.join(' ') || ''
		);

		// Map zxcvbn score (0-4) to strength labels
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
		const password = this.password();
		this.passwordStrength.set(this.checkPasswordStrength(password));
	}

	isPasswordValid(): boolean {
		const passwordValue = this.password();
		const confirmPasswordValue = this.confirmPassword();

		if (!passwordValue) return false;
		if (passwordValue !== confirmPasswordValue) return false;

		// Password must not be weak
		return this.passwordStrength() !== 'Weak';
	}

	onSubmit() {
		const passwordValue = this.password().trim();
		const confirmPasswordValue = this.confirmPassword().trim();

		// Validation
		if (!passwordValue) {
			this.errorMessage.set('Please enter a new password');
			return;
		}

		if (passwordValue !== confirmPasswordValue) {
			this.errorMessage.set('Passwords do not match');
			return;
		}

		// Check password strength
		if (!this.isPasswordValid()) {
			this.errorMessage.set('Password is too weak. ' + this.passwordFeedback());
			return;
		}

		this.isLoading.set(true);
		this.clearMessages();

		const request: ResetPasswordRequest = {
			token: this.token(),
			password: passwordValue
		};

		// Send password reset request
		this.http.post(`${this.apiUrl}/auth/reset-password`, request, {
			withCredentials: true,
			headers: {
				'Content-Type': 'application/json'
			}
		}).subscribe({
			next: (response) => {
				this.step.set('success');
				this.successMessage.set('Your password has been successfully reset! You can now sign in with your new password.');
				this.isLoading.set(false);
			},
			error: (error) => {
				// console.error('Password reset error:', error);
				if (error.status === 400) {
					this.errorMessage.set('Invalid or expired reset token. Please request a new password reset.');
				} else if (error.status === 422) {
					this.errorMessage.set('Password does not meet security requirements. Please choose a stronger password.');
				} else {
					this.errorMessage.set('Failed to reset password. Please try again.');
				}
				this.isLoading.set(false);
			}
		});
	}

	updatePassword(value: string) {
		this.password.set(value);
		this.onPasswordInput();
		this.clearMessages();
	}

	updateConfirmPassword(value: string) {
		this.confirmPassword.set(value);
		this.clearMessages();
	}

	goToLogin() {
		this.router.navigate(['/login']);
	}

	requestNewReset() {
		this.router.navigate(['/forgot-password']);
	}

	private clearMessages() {
		this.successMessage.set('');
		this.errorMessage.set('');
	}
}