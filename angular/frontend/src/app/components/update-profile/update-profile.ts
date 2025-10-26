import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { UserService } from '../../services/user.service';
import { Auth } from '../../services/auth';
import { ProfileUpdateRequest } from '../../interfaces/profile-interfaces';

@Component({
  selector: 'app-update-profile',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './update-profile.html',
  styleUrl: './update-profile.css'
})
export class UpdateProfile implements OnInit {
  // Using Angular 20's new inject() function
  private userService = inject(UserService);
  private authService = inject(Auth);

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
    this.selectedGender() !== '' && !this.isLoading()
  );

  selectedSexualPrefsCount = computed(() =>
    this.selectedSexualPrefs().length
  );

  selectedInterestsCount = computed(() =>
    this.selectedInterests().length
  );

  ngOnInit(): void {
    this.loadCurrentUser();
    this.loadOptions();
  }

  loadCurrentUser(): void {
    // First check cached username (synchronously for speed)
    const cachedUsername = this.authService.getCachedUsername();
    if (cachedUsername) {
      this.currentUsername.set(cachedUsername);
    }

    // Check latest info via GraphQL (asynchronously)
    this.authService.getCurrentUser().subscribe({
      next: (user: any) => {
        this.currentUsername.set(user.username);
      },
      error: (error: any) => {
        console.error('Error loading current user:', error);
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
    this.selectedPhotos.set(currentPhotos.filter((_, i) => i !== index));
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
        this.successMessage.set('Profile updated successfully!');
        this.isLoading.set(false);
      },
      error: (error: any) => {
        console.error('Error updating profile:', error);
        this.errorMessage.set('Failed to update profile. Please try again.');
        this.isLoading.set(false);
      }
    });
  }
}
