import { Component, OnInit, inject, signal, ViewChild } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { UserService } from '../../services/user.service';
import { UserDetailModal } from '../user-detail-modal/user-detail-modal';

interface User {
  username: string;
  dateOfBirth: string;
  profileImage: string;
  imageUrls: string[];
  targetLikesMe?: boolean;
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
  imports: [CommonModule, FormsModule, UserDetailModal],
  templateUrl: './matching.html',
  styleUrl: './matching.scss'
})
export class Matching implements OnInit {
  private http = inject(HttpClient);
  private userService = inject(UserService);

  @ViewChild(UserDetailModal) userDetailModal?: UserDetailModal;

  // Expose Math for template use
  Math = Math;

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

  // Filter state
  showFilterModal = signal<boolean>(false);
  sortBy = signal<string>('fame'); // fame, age, distance, interest
  order = signal<string>('desc'); // asc, desc

  // Search filter state
  showSearchModal = signal<boolean>(false);
  minAge = signal<number>(1);
  maxAge = signal<number>(99);
  minFame = signal<number>(0);
  maxFame = signal<number>(15);
  maxDistance = signal<number>(10000);
  selectedInterests = signal<string[]>([]);

  // Available interests for selection (loaded from GraphQL)
  availableInterests = signal<string[]>([]);

  // Range slider objects similar to Ignite UI pattern
  ageRange = signal({
    lower: 18,
    upper: 99
  });

  fameRange = signal({
    lower: 0,
    upper: 15
  });

  // Update methods for range sliders
  updateAgeRange(lower: number | string, upper: number | string) {
    const lowerNum = typeof lower === 'string' ? parseInt(lower) : lower;
    const upperNum = typeof upper === 'string' ? parseInt(upper) : upper;

    // Ensure valid range
    if (lowerNum <= upperNum && lowerNum >= 18 && upperNum <= 99) {
      this.ageRange.set({ lower: lowerNum, upper: upperNum });
      this.minAge.set(lowerNum);
      this.maxAge.set(upperNum);
    }
  }

  updateFameRange(lower: number | string, upper: number | string) {
    const lowerNum = typeof lower === 'string' ? parseInt(lower) : lower;
    const upperNum = typeof upper === 'string' ? parseInt(upper) : upper;

    // Ensure valid range
    if (lowerNum <= upperNum && lowerNum >= 0 && upperNum <= 15) {
      this.fameRange.set({ lower: lowerNum, upper: upperNum });
      this.minFame.set(lowerNum);
      this.maxFame.set(upperNum);
    }
  }

  // Individual update methods for inputs
  onAgeRangeChange(event: any, isLower: boolean) {
    const value = parseInt(event.target.value);
    const current = this.ageRange();

    if (isLower && value < current.upper) {
      this.updateAgeRange(value, current.upper);
    } else if (!isLower && value > current.lower) {
      this.updateAgeRange(current.lower, value);
    }
  }

  onFameRangeChange(event: any, isLower: boolean) {
    const value = parseInt(event.target.value);
    const current = this.fameRange();

    if (isLower && value < current.upper) {
      this.updateFameRange(value, current.upper);
    } else if (!isLower && value > current.lower) {
      this.updateFameRange(current.lower, value);
    }
  }

  ngOnInit() {
    console.log('Matching component initialized, loading first profile...');
    console.log('HTTP client available:', !!this.http);

    // Load available interests from GraphQL
    this.userService.getInterests().subscribe({
      next: (data: string[]) => this.availableInterests.set(data),
      error: (error: any) => console.error('Error loading interests:', error)
    });

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
      // Call actual backend API with page and filter parameters
      const page = this.currentPage();
      const sortBy = this.sortBy();
      const order = this.order();

      // Build URL with search filter parameters
      const params = new URLSearchParams();
      params.set('page', page.toString());
      params.set('sortBy', sortBy);
      params.set('order', order);
      params.set('minAge', this.minAge().toString());
      params.set('maxAge', this.maxAge().toString());
      params.set('minFame', this.minFame().toString());
      params.set('maxFame', this.maxFame().toString());
      params.set('distance', this.maxDistance().toString());

      // Add interests if any are selected
      const interests = this.selectedInterests();
      if (interests.length > 0) {
        params.set('interests', interests.join(','));
      }

      const url = `/api/matching?${params.toString()}`;
      console.log('Sending GET request to:', url);

      const response = await this.http.get<MatchingResponse>(url, {
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

    this.showUserDetail.set(true);
    if (this.userDetailModal) {
      await this.userDetailModal.loadUserDetail(user.username);
    }
  }

  // Close user detail modal
  closeUserDetailModal() {
    this.showUserDetail.set(false);
  }

  // Handle like from modal (matching mode)
  async onModalLike(username: string) {
    console.log('Modal like:', username);
    await this.onLike(); // 기존 onLike 메서드 재사용
  }

  // Handle pass from modal (matching mode)
  async onModalPass(username: string) {
    console.log('Modal pass:', username);
    await this.onPass(); // 기존 onPass 메서드 재사용
  }

  // Handle user blocked from modal
  onUserBlocked(username: string) {
    console.log('User blocked:', username);
    // Load next user as the current one has been blocked
    this.loadNextProfile();
  }

  // Filter functions
  toggleFilterModal() {
    console.log('toggleFilterModal called');
    console.log('Current showFilterModal state:', this.showFilterModal());
    const newState = !this.showFilterModal();
    this.showFilterModal.set(newState);
    console.log('New showFilterModal state:', this.showFilterModal());
  }

  closeFilterModal() {
    console.log('Close filter modal called');
    this.showFilterModal.set(false);
  }

  applySortFilter(sortBy: string, order: string) {
    console.log('Applying sort filter:', sortBy, order);
    this.sortBy.set(sortBy);
    this.order.set(order);

    // Reset pagination and reload
    this.currentPage.set(0);
    this.hasNext.set(true);
    this.noMoreProfiles.set(false);
    this.currentUser.set(null);

    console.log('Filter applied - sortBy:', this.sortBy(), 'order:', this.order());

    this.closeFilterModal();

    // Force reload with new filter
    setTimeout(() => {
      this.loadNextProfile();
    }, 100);
  }

  getSortLabel(): string {
    const sortMap: { [key: string]: string } = {
      'fame': 'Fame',
      'age': 'Age',
      'distance': 'Distance',
      'interest': 'Interests'
    };

    const orderMap: { [key: string]: string } = {
      'desc': 'Descending',
      'asc': 'Ascending'
    };

    return `${sortMap[this.sortBy()]} ${orderMap[this.order()]}`;
  }

  // Search filter functions
  toggleSearchModal() {
    console.log('toggleSearchModal called');
    this.showSearchModal.set(!this.showSearchModal());
  }

  closeSearchModal() {
    this.showSearchModal.set(false);
  }

  applySearchFilter() {
    console.log('Applying search filter:', {
      minAge: this.minAge(),
      maxAge: this.maxAge(),
      minFame: this.minFame(),
      maxFame: this.maxFame(),
      maxDistance: this.maxDistance(),
      interests: this.selectedInterests()
    });

    // Reset pagination and reload
    this.currentPage.set(0);
    this.hasNext.set(true);
    this.noMoreProfiles.set(false);
    this.currentUser.set(null);

    this.closeSearchModal();

    // Force reload with new filter
    setTimeout(() => {
      this.loadNextProfile();
    }, 100);
  }

  resetSearchFilter() {
    this.minAge.set(1);
    this.maxAge.set(99);
    this.minFame.set(0);
    this.maxFame.set(15);
    this.maxDistance.set(10000);
    this.selectedInterests.set([]);
  }

  toggleInterest(interest: string) {
    const current = this.selectedInterests();
    if (current.includes(interest)) {
      this.selectedInterests.set(current.filter((i: string) => i !== interest));
    } else {
      this.selectedInterests.set([...current, interest]);
    }
  }

  getSearchFilterLabel(): string {
    const filters = [];

    if (this.minAge() !== 1 || this.maxAge() !== 99) {
      filters.push(`Age: ${this.minAge()}-${this.maxAge()}`);
    }

    if (this.minFame() !== 0 || this.maxFame() !== 15) {
      filters.push(`Fame: ${this.minFame()}-${this.maxFame()}`);
    }

    if (this.maxDistance() !== 10000) {
      filters.push(`Distance: ${this.maxDistance()}km`);
    }

    if (this.selectedInterests().length > 0) {
      filters.push(`Interests: ${this.selectedInterests().length}`);
    }

    return filters.length > 0 ? filters.join(', ') : 'No filters';
  }
}
