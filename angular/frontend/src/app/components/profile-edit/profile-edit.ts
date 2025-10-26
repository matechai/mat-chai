import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../../services/user.service';
import { Auth } from '../../services/auth';
import { ProfileUpdateRequest } from '../../interfaces/profile-interfaces';

@Component({
	selector: 'app-profile-edit',
	standalone: true,
	imports: [CommonModule, FormsModule],
	templateUrl: './profile-edit.html',
	styleUrl: './profile-edit.css'
})
export class ProfileEdit implements OnInit {
	// Using Angular 20's new inject() function
	private userService = inject(UserService);
	private authService = inject(Auth);
	private router = inject(Router);

	// Using Signals for improved reactivity
	genders = signal<string[]>([]);
	sexualPrefs = signal<string[]>([]);
	interests = signal<string[]>([]);

	selectedGender = signal<string>('');
	selectedSexualPrefs = signal<string[]>([]);
	selectedInterests = signal<string[]>([]);
	biography = signal<string>('');
	selectedPhotos = signal<Array<{ file: File, preview: string }>>([]);

	isLoading = signal<boolean>(false);
	successMessage = signal<string>('');
	errorMessage = signal<string>('');
	currentUsername = signal<string>('');

	// Computed values
	canSubmit = computed(() =>
		this.selectedGender() !== '' &&
		this.selectedPhotos().length > 0 &&
		!this.isLoading()
	);

	selectedSexualPrefsCount = computed(() =>
		this.selectedSexualPrefs().length
	);

	selectedInterestsCount = computed(() =>
		this.selectedInterests().length
	);

	selectedPhotosCount = computed(() =>
		this.selectedPhotos().length
	);

	ngOnInit(): void {
		this.loadCurrentUser();
		this.loadOptions();
		this.loadExistingProfile();
	}

	loadCurrentUser(): void {
		// First check cached username (synchronously for speed)
		const cachedUsername = this.authService.getCachedUsername();
		if (cachedUsername) {
			console.log('✅ Using cached username:', cachedUsername);
			this.currentUsername.set(cachedUsername);
		}

		// Use GraphQL-based getCurrentUser (no more JWT headaches!)
		this.authService.getCurrentUser().subscribe({
			next: (user: any) => {
				console.log('✅ GraphQL username loaded:', user.username);
				this.currentUsername.set(user.username);
			},
			error: (error: any) => {
				console.error('❌ Error loading current user from GraphQL:', error);
				// Show error only if no cached value and API also fails
				if (!cachedUsername) {
					this.errorMessage.set('Failed to load user information');
				}
			}
		});
	}

	loadOptions(): void {
		this.userService.getGenders().subscribe({
			next: (data: string[]) => this.genders.set(data),
			error: (error: any) => console.error('Error loading genders:', error)
		});

		this.userService.getSexualPreferences().subscribe({
			next: (data: string[]) => this.sexualPrefs.set(data),
			error: (error: any) => console.error('Error loading sexual preferences:', error)
		});

		this.userService.getInterests().subscribe({
			next: (data: string[]) => this.interests.set(data),
			error: (error: any) => console.error('Error loading interests:', error)
		});
	}

	loadExistingProfile(): void {
		// Load existing profile data from GraphQL
		this.authService.getUserInfo().subscribe({
			next: (response: any) => {
				const user = response.data?.me;
				if (user) {
					console.log('Loading existing profile data:', user);

					// Set existing values as defaults
					if (user.gender) {
						this.selectedGender.set(user.gender);
					}

					if (user.biography) {
						this.biography.set(user.biography);
					}

					if (user.sexualPreferences && Array.isArray(user.sexualPreferences)) {
						this.selectedSexualPrefs.set(user.sexualPreferences);
					}

					if (user.interests && Array.isArray(user.interests)) {
						this.selectedInterests.set(user.interests);
					}

					// Load existing profile images
					this.loadExistingImages(user.profileImageUrl, user.imageUrls);
				}
			},
			error: (error: any) => {
				console.error('Error loading existing profile:', error);
				// Don't show error to user - just use empty defaults
			}
		});
	}

	loadExistingImages(profileImageUrl: string | null, imageUrls: string[]): void {
		const existingPhotos: Array<{ file: File, preview: string }> = [];

		// First, add profileImageUrl as the main photo (index 0)
		if (profileImageUrl) {
			// Convert backend path to nginx static file path
			// Backend: /app/uploads/profiles/xxx.jpg → nginx: /uploads/profiles/xxx.jpg
			const mainImagePreview = profileImageUrl.replace('/app/uploads', '/uploads');

			// Create a fake File object for display purposes
			const fakeFile = new File([''], 'main-profile.jpg', { type: 'image/jpeg' });
			existingPhotos.push({
				file: fakeFile,
				preview: mainImagePreview
			});
		}

		// Then, add additional images from imageUrls array
		if (imageUrls && Array.isArray(imageUrls)) {
			imageUrls.forEach((imageUrl: string, index: number) => {
				// Convert backend path to nginx static file path
				const imagePreview = imageUrl.replace('/app/uploads', '/uploads');
				const fakeFile = new File([''], `additional-${index}.jpg`, { type: 'image/jpeg' });
				existingPhotos.push({
					file: fakeFile,
					preview: imagePreview
				});
			});
		}

		// Set the loaded images to selectedPhotos signal
		if (existingPhotos.length > 0) {
			console.log('Loading existing images:', existingPhotos);
			this.selectedPhotos.set(existingPhotos);
		}
	}

	selectGender(gender: string): void {
		this.selectedGender.set(gender);
	}

	toggleSexualPreference(preference: string): void {
		const currentPrefs = this.selectedSexualPrefs();
		const index = currentPrefs.indexOf(preference);
		if (index > -1) {
			// Remove if already selected
			this.selectedSexualPrefs.set(currentPrefs.filter((p: string) => p !== preference));
		} else if (currentPrefs.length < 5) {
			// Add if less than 5
			this.selectedSexualPrefs.set([...currentPrefs, preference]);
		}
	}

	toggleInterest(interest: string): void {
		const currentInterests = this.selectedInterests();
		const index = currentInterests.indexOf(interest);
		if (index > -1) {
			// Remove if already selected
			this.selectedInterests.set(currentInterests.filter((i: string) => i !== interest));
		} else if (currentInterests.length < 5) {
			// Add if less than 5
			this.selectedInterests.set([...currentInterests, interest]);
		}
	}

	// Handle photo selection
	onPhotoSelected(event: any): void {
		const file = event.target.files[0];
		if (file && this.selectedPhotos().length < 5) {
			const reader = new FileReader();
			reader.onload = (e: any) => {
				const currentPhotos = this.selectedPhotos();
				this.selectedPhotos.set([
					...currentPhotos,
					{ file: file, preview: e.target.result }
				]);
			};
			reader.readAsDataURL(file);
		}
		// Reset file input
		event.target.value = '';
	}

	// Remove photo
	removePhoto(index: number): void {
		const currentPhotos = this.selectedPhotos();
		this.selectedPhotos.set(currentPhotos.filter((_: any, i: number) => i !== index));
	}

	isSexualPreferenceSelected(preference: string): boolean {
		return this.selectedSexualPrefs().includes(preference);
	}

	isInterestSelected(interest: string): boolean {
		return this.selectedInterests().includes(interest);
	}

	submitProfile(): void {
		if (!this.selectedGender()) {
			this.errorMessage.set('Please select a gender');
			return;
		}

		if (this.selectedPhotos().length === 0) {
			this.errorMessage.set('Please select at least one photo');
			return;
		}

		if (!this.currentUsername()) {
			this.errorMessage.set('User information not loaded. Please try again.');
			return;
		}

		this.isLoading.set(true);
		this.errorMessage.set('');
		this.successMessage.set('');

		// Data structure matching Java backend UserProfileDTO
		const profileData = {
			gender: this.selectedGender(),
			biography: this.biography(),
			sexualPreferences: this.selectedSexualPrefs(),
			interests: this.selectedInterests()
		};

		// Prepare file array
		const files = this.selectedPhotos().map((photo: any) => photo.file);

		this.userService.updateProfile(this.currentUsername(), profileData, files).subscribe({
			next: (response: any) => {
				console.log('Profile updated successfully:', response);
				this.isLoading.set(false);

				// Redirect to matches page immediately after successful profile update
				this.router.navigate(['/matches']);
			},
			error: (error: any) => {
				console.error('Error updating profile:', error);
				this.errorMessage.set('Failed to update profile. Please try again.');
				this.isLoading.set(false);
			}
		});
	}
}
