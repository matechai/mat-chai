import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
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
	private http = inject(HttpClient);

	// Using Signals for improved reactivity
	genders = signal<string[]>([]);
	sexualPrefs = signal<string[]>([]);
	interests = signal<string[]>([]);

	selectedGender = signal<string>('');
	selectedSexualPref = signal<string>('');
	selectedInterests = signal<string[]>([]);
	biography = signal<string>('');
	selectedPhotos = signal<Array<{ file: File, preview: string }>>([]);

	isLoading = signal<boolean>(false);
	successMessage = signal<string>('');
	errorMessage = signal<string>('');
	currentUsername = signal<string>('');

	// Location-related signals (for internal use only)
	locationPermission = signal<'granted' | 'denied' | 'prompt' | 'unknown'>('unknown');
	currentLocation = signal<{ latitude: number, longitude: number } | null>(null);
	locationRequestInProgress = signal<boolean>(false);
	locationRequestCompleted = signal<boolean>(false);

	// Computed values
	canSubmit = computed(() =>
		this.selectedGender() !== '' &&
		this.selectedPhotos().length > 0 &&
		!this.isLoading()
	);

	selectedSexualPrefCount = computed(() =>
		this.selectedSexualPref() ? 1 : 0
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
		this.checkLocationPermission();
	}

	loadCurrentUser(): void {
		// Use GraphQL-based getCurrentUser (authoritative source)
		this.authService.getCurrentUser().subscribe({
			next: (user: any) => {
				console.log('✅ GraphQL username loaded:', user.username);
				this.currentUsername.set(user.username);

				// Update cache with fresh data to ensure consistency
				sessionStorage.setItem('username', user.username);
			},
			error: (error: any) => {
				// console.error('❌ Error loading current user from GraphQL:', error);

				// Clear potentially stale cache
				this.authService.clearUserCache();

				// Only use cached username as fallback if GraphQL fails
				const cachedUsername = this.authService.getCachedUsername();
				if (cachedUsername) {
					console.log('⚠️ Using cached username as fallback:', cachedUsername);
					this.currentUsername.set(cachedUsername);
				} else {
					this.errorMessage.set('Failed to load user information');
				}
			}
		});
	}

	loadOptions(): void {
		this.userService.getGenders().subscribe({
			next: (data: string[]) => this.genders.set(data),
			// error: (error: any) => console.error('Error loading genders:', error)
		});

		this.userService.getSexualPreferences().subscribe({
			next: (data: string[]) => this.sexualPrefs.set(data),
			// error: (error: any) => console.error('Error loading sexual preferences:', error)
		});

		this.userService.getInterests().subscribe({
			next: (data: string[]) => this.interests.set(data),
			// error: (error: any) => console.error('Error loading interests:', error)
		});
	}

	loadExistingProfile(): void {
		// Load existing profile data from GraphQL (only editable fields)
		this.authService.getUserEditableFields().subscribe({
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

					if (user.sexualPreference) {
						this.selectedSexualPref.set(user.sexualPreference);
					}

					if (user.interests && Array.isArray(user.interests)) {
						this.selectedInterests.set(user.interests);
					}

					// Load existing profile images
					this.loadExistingImages(user.profileImageUrl, user.imageUrls);
				}
			},
			error: (error: any) => {
				// console.error('Error loading existing profile:', error);
				// Don't show error to user - just use empty defaults
			}
		});
	}

	loadExistingImages(profileImageUrl: string | null, imageUrls: string[]): void {
		const imagePromises: Promise<{ file: File, preview: string }>[] = [];

		// First, add profileImageUrl as the main photo (index 0)
		if (profileImageUrl) {
			const mainImagePreview = profileImageUrl.replace('/app/uploads', '/uploads');
			imagePromises.push(this.urlToFile(mainImagePreview, 'main-profile.jpg'));
		}

		// Then, add additional images from imageUrls array
		if (imageUrls && Array.isArray(imageUrls)) {
			imageUrls.forEach((imageUrl: string, index: number) => {
				const imagePreview = imageUrl.replace('/app/uploads', '/uploads');
				imagePromises.push(this.urlToFile(imagePreview, `additional-${index}.jpg`));
			});
		}

		// Wait for all images to be loaded
		if (imagePromises.length > 0) {
			Promise.all(imagePromises).then((loadedPhotos) => {
				console.log('Loading existing images as real files:', loadedPhotos);
				this.selectedPhotos.set(loadedPhotos);
			}).catch((error) => {
				// console.error('Failed to load existing images:', error);
			});
		}
	}

	// Convert image URL to actual File object
	private async urlToFile(url: string, filename: string): Promise<{ file: File, preview: string }> {
		try {
			const response = await fetch(url);
			const blob = await response.blob();
			const file = new File([blob], filename, { type: blob.type });
			return { file, preview: url };
		} catch (error) {
			// console.error('Failed to convert URL to file:', url, error);
			// Fallback to empty file
			const emptyFile = new File([''], filename, { type: 'image/jpeg' });
			return { file: emptyFile, preview: url };
		}
	}

	selectGender(gender: string): void {
		this.selectedGender.set(gender);
	}

	selectSexualPreference(preference: string): void {
		this.selectedSexualPref.set(preference);
	}

	toggleInterest(interest: string): void {
		const currentInterests = this.selectedInterests();
		const index = currentInterests.indexOf(interest);
		if (index > -1) {
			// Remove if already selected
			this.selectedInterests.set(currentInterests.filter((i: string) => i !== interest));
		} else if (currentInterests.length < 10) {
			// Add if less than 10
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
		return this.selectedSexualPref() === preference;
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
			sexualPreference: this.selectedSexualPref(),
			interests: this.selectedInterests()
		};

		// Prepare file array - now all images are real File objects
		const files = this.selectedPhotos().map((photo: any) => photo.file);
		
		console.log('All files to upload (including existing as real files):', files.length);

		this.userService.updateProfile(this.currentUsername(), profileData, files).subscribe({
			next: (response: any) => {
				this.isLoading.set(false);

				// Force reload to clear all caches and guards
				window.location.href = '/matching';
			},
			error: (error: any) => {
				// console.error('Profile update error:', error);
				this.errorMessage.set('Profile update failed. Please try again.');
				this.isLoading.set(false);
			}
		});
	}

	// Location permission and handling methods
	async checkLocationPermission(): Promise<void> {
		console.log('📍 Location request started');

		// Prevent concurrent requests
		if (this.locationRequestInProgress() || this.locationRequestCompleted()) {
			console.log('🚫 Location request already in progress or completed');
			return;
		}

		if (!navigator.geolocation) {
			console.log('❌ Browser does not support geolocation, using IP-based location');
			this.sendLocationDataWithIP();
			return;
		}

		this.locationRequestInProgress.set(true);

		// First check permission status
		if ('permissions' in navigator) {
			try {
				const permission = await navigator.permissions.query({ name: 'geolocation' as PermissionName });
				console.log('🔍 Current permission state:', permission.state);

				// Register permission change listener
				permission.addEventListener('change', () => {
					console.log('🔄 Permission state changed:', permission.state);
					this.handlePermissionChange(permission.state);
				});

				// Handle based on current state
				await this.handlePermissionState(permission.state);
			} catch (error) {
				console.log('⚠️ Permission API failed, requesting location directly');
				await this.requestLocationDirectly();
			}
		} else {
			console.log('ℹ️ Permissions API not supported, requesting location directly');
			await this.requestLocationDirectly();
		}
	}

	// Handle permission state
	private async handlePermissionState(state: string): Promise<void> {
		switch (state) {
			case 'granted':
				console.log('✅ Permission granted - requesting location directly');
				await this.requestLocationDirectly();
				break;

			case 'denied':
				console.log('❌ Permission denied - using IP-based location');
				this.sendLocationDataWithIP();
				break;

			case 'prompt':
			default:
				console.log('🔄 Permission prompt required - waiting for user approval');
				await this.requestLocationWithPrompt();
				break;
		}
	}

	// Handle permission changes (when user changes permission in settings)
	private handlePermissionChange(newState: string): void {
		console.log(`🔄 Permission changed to ${newState}`);

		// Re-process if not already completed
		if (!this.locationRequestCompleted()) {
			this.handlePermissionState(newState);
		} else {
			console.log('ℹ️ Location processing already completed, ignoring permission change');
		}
	}

	// Request location directly when permission is granted
	private async requestLocationDirectly(): Promise<void> {
		try {
			await this.getLocation();
		} catch (error: any) {
			console.log('❌ Location acquisition failed, using IP-based location:', error.code, error.message);
			this.sendLocationDataWithIP();
		}
	}

	// When permission prompt is required
	private async requestLocationWithPrompt(): Promise<void> {
		try {
			// First attempt (ignored)
			console.log('🔄 First attempt (permission popup)');
			await this.getLocation();
		} catch (error: any) {
			console.log('❌ First attempt failed:', error.code);

			// Second attempt after 2 seconds
			setTimeout(async () => {
				try {
					console.log('🔄 Second attempt (actual use)');
					await this.getLocation();
				} catch (retryError: any) {
					console.log('❌ Second attempt also failed, using IP-based location:', retryError.code);
					this.sendLocationDataWithIP();
				}
			}, 2000);
		}
	}

	// Get location (first request for position)
	private async getLocation(): Promise<void> {
		return new Promise((resolve, reject) => {
			navigator.geolocation.getCurrentPosition(
				(position) => {
					console.log('🔍 getLocation result:', {
						latitude: position.coords.latitude.toFixed(6),
						longitude: position.coords.longitude.toFixed(6)
					});
					this.sendLocationData(position.coords.latitude, position.coords.longitude);
					resolve();
				},
				(error) => {
					console.log('🔍 getLocation error:', error.code, error.message);
					reject(error); // Pass error object
				},
				{
					enableHighAccuracy: false,
					timeout: 5000,
					maximumAge: 0
				}
			);
		});
	}

	// Get external IP-based location information (multiple service fallback)
	private async getLocationByIP(): Promise<{ latitude: number, longitude: number } | null> {
		// Try multiple IP geolocation services in order
		const services = [
			{
				url: 'https://ip-api.com/json/',
				name: 'ip-api.com',
				parse: (data: any) => ({
					latitude: data.lat,
					longitude: data.lon,
					city: data.city,
					country: data.country
				})
			},
			{
				url: 'https://ipinfo.io/json',
				name: 'ipinfo.io',
				parse: (data: any) => {
					const [lat, lon] = data.loc ? data.loc.split(',') : [null, null];
					return {
						latitude: parseFloat(lat),
						longitude: parseFloat(lon),
						city: data.city,
						country: data.country
					};
				}
			}
		];

		for (const service of services) {
			try {
				console.log(`🌐 Requesting IP-based location from ${service.name}...`);

				const response = await this.http.get<any>(service.url).toPromise();

				if (response) {
					const parsed = service.parse(response);

					if (parsed.latitude && parsed.longitude &&
						!isNaN(parsed.latitude) && !isNaN(parsed.longitude)) {
						console.log(`✅ Location acquired from ${service.name}:`, parsed.city, parsed.country);
						return {
							latitude: parsed.latitude,
							longitude: parsed.longitude
						};
					}
				}

				console.log(`⚠️ Incomplete response from ${service.name}:`, response);

			} catch (error) {
				// console.error(`❌ Request to ${service.name} failed:`, error);
				// Continue to next service
			}
		}

		// console.error('❌ All IP geolocation services failed');
		return null;
	}

	// Send IP-based location data (alternative when GPS permission is unavailable)
	private async sendLocationDataWithIP(): Promise<void> {
		const username = this.currentUsername();
		if (!username) {
			// console.error('❌ No username available');
			return;
		}

		// Get location information based on external IP
		const ipLocation = await this.getLocationByIP();

		if (ipLocation) {
			console.log('📡 Sending IP-based location:', ipLocation.latitude.toFixed(6), ipLocation.longitude.toFixed(6));
		} else {
			console.log('📡 No IP location information, sending null');
		}

		const locationData = ipLocation ? {
			latitude: ipLocation.latitude,
			longitude: ipLocation.longitude
		} : { latitude: null, longitude: null };

		this.userService.updateUserLocation(username, locationData).subscribe({
			next: () => {
				console.log('✅ Location data sent successfully');
				this.locationRequestInProgress.set(false);
				this.locationRequestCompleted.set(true);
			},
			error: (error: any) => {
				// console.error('❌ Location data transmission failed:', error);
				this.locationRequestInProgress.set(false);
				this.locationRequestCompleted.set(true);
			}
		});
	}

	// Send location data (coordinates or null)
	private sendLocationData(latitude: number | null, longitude: number | null): void {

		const username = this.currentUsername();
		if (!username) {
			// console.error('❌ No username available');
			return;
		}

		const locationData = { latitude, longitude };
		const logMessage = latitude && longitude ?
			`Sending GPS location: ${latitude.toFixed(6)}, ${longitude.toFixed(6)}` :
			'GPS location transmission failed';

		console.log('📡', logMessage);

		this.userService.updateUserLocation(username, locationData).subscribe({
			next: () => {
				console.log('✅ Location data sent successfully');
				this.locationRequestInProgress.set(false);
				this.locationRequestCompleted.set(true);
			},
			error: (error: any) => {
				// console.error('❌ Location data transmission failed:', error);
				this.locationRequestInProgress.set(false);
				this.locationRequestCompleted.set(true);
			}
		});
	}


}
