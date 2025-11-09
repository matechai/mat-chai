import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';

interface User {
  username: string;
  dateOfBirth: string;
  profileImage: string;
  imageUrls: string[];
}

interface UserDetail {
  email: string;
  username: string;
  dateOfBirth: string;
  firstName: string;
  lastName: string;
  biography: string;
  interests: string[];
  profileImageUrl: string;
  imageUrls: string[];
  fame: number;
  lastOnline: string;
  distance: number;
}

interface MatchingResponse {
  user: User;
  currentPage: number;
  totalPages: number;
  hasNext: boolean;
}

@Component({
  selector: 'app-matching',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './matching.html',
  styleUrl: './matching.scss'
})
export class Matching implements OnInit {
  private http = inject(HttpClient);

  constructor() {
    console.log('Matching component constructor called');
  }

  // Signals for state management
  currentUser = signal<User | null>(null);
  currentPage = signal<number>(0);
  totalPages = signal<number>(0);
  hasNext = signal<boolean>(true);
  isLoading = signal<boolean>(false);
  noMoreProfiles = signal<boolean>(false);

  // Image carousel state
  currentImageIndex = signal<number>(0);
  allImages = signal<string[]>([]);

  // User detail modal state
  showUserDetail = signal<boolean>(false);
  userDetail = signal<UserDetail | null>(null);
  loadingUserDetail = signal<boolean>(false);

  ngOnInit() {
    console.log('Matching component initialized, loading first profile...');
    console.log('HTTP client available:', !!this.http);

    // 약간의 지연 후 로딩 시작 (컴포넌트 완전 초기화 대기)
    setTimeout(() => {
      this.loadNextProfile();
    }, 100);
  }

  // Calculate age from date of birth
  calculateAge(dateOfBirth: string): number {
    const today = new Date();
    const birthDate = new Date(dateOfBirth);
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDiff = today.getMonth() - birthDate.getMonth();

    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
      age--;
    }

    return age;
  }

  // Convert backend path to nginx static file path
  convertImagePath(imagePath: string): string {
    if (!imagePath) return '';
    // Backend: /app/uploads/profiles/xxx.jpg → nginx: /uploads/profiles/xxx.jpg
    return imagePath.replace('/app/uploads/', '/uploads/');
  }

  // Load next profile from backend
  async loadNextProfile() {
    if (this.isLoading()) {
      console.log('Already loading, skipping...');
      return;
    }

    console.log('Loading profile for page:', this.currentPage());
    this.isLoading.set(true);

    try {
      // Call actual backend API with page parameter
      const page = this.currentPage();
      console.log('Sending GET request to:', `/api/matching?page=${page}`);

      const response = await this.http.get<MatchingResponse>(`/api/matching?page=${page}`, {
        withCredentials: true
      }).toPromise();

      console.log('Received response:', response);

      if (response && response.user) {
        this.currentUser.set(response.user);
        this.currentPage.set(response.currentPage);
        this.totalPages.set(response.totalPages);
        this.hasNext.set(response.hasNext);

        // Prepare images array (profile image + additional images)
        const images: string[] = [];
        if (response.user.profileImage) {
          images.push(this.convertImagePath(response.user.profileImage));
        }
        if (response.user.imageUrls && response.user.imageUrls.length > 0) {
          images.push(...response.user.imageUrls.map((url: string) => this.convertImagePath(url)));
        }

        this.allImages.set(images);
        this.currentImageIndex.set(0);
        this.noMoreProfiles.set(false);
      } else {
        this.noMoreProfiles.set(true);
      }
    } catch (error) {
      console.error('Failed to load profile:', error);
      console.error('Error details:', {
        message: (error as any)?.message,
        status: (error as any)?.status,
        url: (error as any)?.url
      });
      this.noMoreProfiles.set(true);
    } finally {
      console.log('Loading complete, setting isLoading to false');
      this.isLoading.set(false);
    }
  }



  // Navigate to previous image
  previousImage() {
    const images = this.allImages();
    if (images.length > 1) {
      const current = this.currentImageIndex();
      this.currentImageIndex.set(current > 0 ? current - 1 : images.length - 1);
    }
  }

  // Navigate to next image  
  nextImage() {
    const images = this.allImages();
    if (images.length > 1) {
      const current = this.currentImageIndex();
      this.currentImageIndex.set(current < images.length - 1 ? current + 1 : 0);
    }
  }

  // Handle like action
  async onLike() {
    const user = this.currentUser();
    if (!user) return;

    console.log('Liked user:', user.username);

    try {
      // Send like to backend using the correct endpoint
      await this.http.post(`/api/users/${user.username}/like`, {}, {
        withCredentials: true
      }).toPromise();

      // Move to next profile
      await this.moveToNextProfile();
    } catch (error) {
      console.error('Failed to send like:', error);
    }
  }

  // Handle pass action
  async onPass() {
    const user = this.currentUser();
    if (!user) return;

    console.log('Passed user:', user.username);

    try {
      // Send pass to backend using the correct endpoint
      await this.http.post(`/api/users/${user.username}/pass`, {}, {
        withCredentials: true
      }).toPromise();

      // Move to next profile
      await this.moveToNextProfile();
    } catch (error) {
      console.error('Failed to send pass:', error);
    }
  }

  // Move to next profile (shared logic for like and pass)
  private async moveToNextProfile() {
    // Check if there are more profiles available
    if (this.hasNext()) {
      // Increment page number for next API call
      const nextPage = this.currentPage() + 1;
      this.currentPage.set(nextPage);

      // Load next profile with incremented page
      await this.loadNextProfile();
    } else {
      // No more profiles available
      this.noMoreProfiles.set(true);
    }
  }

  // Show user detail modal
  async showUserDetailModal() {
    const user = this.currentUser();
    if (!user) return;

    console.log('Opening user detail for:', user.username);
    this.showUserDetail.set(true);
    this.loadingUserDetail.set(true);

    try {
      // GraphQL query to get detailed user information
      const query = {
        query: `query {getUserByUsername(username: "${user.username}") { email username dateOfBirth firstName lastName biography interests profileImageUrl imageUrls fame lastOnline distance } }`
      };

      const response = await this.http.post<{ data: { getUserByUsername: UserDetail } }>('/api/graphql', query, {
        withCredentials: true,
        headers: {
          'Content-Type': 'application/json'
        }
      }).toPromise();

      if (response?.data?.getUserByUsername) {
        this.userDetail.set(response.data.getUserByUsername);
        console.log('User detail loaded:', response.data.getUserByUsername);
      }
    } catch (error) {
      console.error('Failed to load user detail:', error);
    } finally {
      this.loadingUserDetail.set(false);
    }
  }

  // Close user detail modal
  closeUserDetailModal() {
    this.showUserDetail.set(false);
    this.userDetail.set(null);
  }

  // Format last online time
  formatLastOnline(lastOnline: string): string {
    if (!lastOnline) return 'Unknown';

    const date = new Date(lastOnline);
    const now = new Date();
    const diffInMinutes = Math.floor((now.getTime() - date.getTime()) / (1000 * 60));

    if (diffInMinutes < 1) return 'Just now';
    if (diffInMinutes < 60) return `${diffInMinutes} minutes ago`;

    const diffInHours = Math.floor(diffInMinutes / 60);
    if (diffInHours < 24) return `${diffInHours} hours ago`;

    const diffInDays = Math.floor(diffInHours / 24);
    if (diffInDays < 7) return `${diffInDays} days ago`;

    return date.toLocaleDateString();
  }

  // Get fame level description
  getFameLevel(fame: number): string {
    // Convert 0-15 scale to 0-100 scale for display
    const famePercent = Math.round((fame / 15) * 100);

    if (famePercent >= 80) return '⭐⭐⭐⭐⭐ Celebrity';
    if (famePercent >= 60) return '⭐⭐⭐⭐ Popular';
    if (famePercent >= 40) return '⭐⭐⭐ Well-known';
    if (famePercent >= 20) return '⭐⭐ Rising';
    return '⭐ Newcomer';
  }

  // Get fame percentage (0-100) from 0-15 scale
  getFamePercentage(fame: number): number {
    return Math.round((fame / 15) * 100);
  }

  // Format distance for display
  formatDistance(distance: number): string {
    if (!distance && distance !== 0) return 'Distance unknown';

    if (distance < 0.1) {
      // Show "Nearby" for distances less than 100m
      return 'Nearby';
    } else if (distance < 1) {
      // Show meters for distances less than 1km but more than 100m
      const meters = Math.round(distance * 1000);
      return `${meters}m away`;
    } else if (distance < 10) {
      // Show one decimal place for distances less than 10km
      return `${distance.toFixed(1)} km away`;
    } else {
      // Show whole numbers for distances 10km and above
      return `${Math.round(distance)} km away`;
    }
  }
}
