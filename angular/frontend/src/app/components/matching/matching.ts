import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';

interface User {
  username: string;
  dateOfBirth: string;
  profileImage: string;
  imageUrls: string[];
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
}
