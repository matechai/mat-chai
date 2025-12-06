import { Component, OnInit, OnDestroy, inject, signal, ViewChild } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { UserService } from '../../services/user.service';
import { WebSocketService } from '../../services/websocket.service';
import { UserDetailModal } from '../user-detail-modal/user-detail-modal';

interface User {
  username: string;
  dateOfBirth: string;
  profileImage: string;
  imageUrls: string[];
  targetLikesMe?: boolean;
}

interface MatchingResponse {
  users: User[];
  totalElements: number;
}

@Component({
  selector: 'app-matching',
  standalone: true,
  imports: [CommonModule, FormsModule, UserDetailModal],
  templateUrl: './matching.html',
  styleUrl: './matching.scss'
})
export class Matching implements OnInit, OnDestroy {
  private http = inject(HttpClient);
  private userService = inject(UserService);
  private websocketService = inject(WebSocketService);

  @ViewChild(UserDetailModal) userDetailModal?: UserDetailModal;

  // Expose Math for template use
  Math = Math;

  constructor() {
    console.log('Matching component constructor called');
  }

  // Signals for state management
  currentUser = signal<User | null>(null);
  currentIndex = signal<number>(0); // Current index in cached users array
  totalUsers = signal<number>(0);
  isLoading = signal<boolean>(false);
  noMoreProfiles = signal<boolean>(false);

  // SessionStorage keys
  private readonly STORAGE_KEY = 'matching_users';
  private readonly INDEX_KEY = 'matching_index';

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
    // ✅ Ensure WebSocket is connected when matching component initializes
    this.websocketService.connectIfNeeded();

    console.log('Matching component initialized');

    // Load available interests from GraphQL
    this.userService.getInterests().subscribe({
      next: (data: string[]) => this.availableInterests.set(data),
    });

    // Always clear cache on component init (fresh start)
    console.log('🧹 Clearing old cache on init');
    this.clearCache();

    // Fetch fresh data
    console.log('🔄 Fetching new users');
    this.fetchAndCacheUsers();
  }

  ngOnDestroy() {
    // Clear cache when component is destroyed (navigation away)
    console.log('🧹 Clearing cache on component destroy');
    this.clearCache();
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

  // Fetch users from backend and cache them
  async fetchAndCacheUsers() {
    if (this.isLoading()) return;

    this.isLoading.set(true);
    console.log('🌐 Fetching users from backend...');

    try {
      const sortBy = this.sortBy();
      const order = this.order();

      // Build URL with filter parameters
      const params = new URLSearchParams();
      params.set('sortBy', sortBy);
      params.set('order', order);
      params.set('minAge', this.minAge().toString());
      params.set('maxAge', this.maxAge().toString());
      params.set('minFame', this.minFame().toString());
      params.set('maxFame', this.maxFame().toString());
      params.set('distance', this.maxDistance().toString());

      const interests = this.selectedInterests();
      if (interests.length > 0) {
        params.set('interests', interests.join(','));
      }

      const url = `/api/matching?${params.toString()}`;
      const response = await this.http.get<MatchingResponse>(url, {
        withCredentials: true
      }).toPromise();

      if (response && response.users && response.users.length > 0) {
        console.log(`✅ Fetched ${response.users.length} users`);

        // Cache users in sessionStorage
        this.setCachedUsers(response.users);
        this.setCachedIndex(0);

        this.totalUsers.set(response.users.length);
        this.currentIndex.set(0);
        this.showUserAtIndex(0);
        this.noMoreProfiles.set(false);
      } else {
        console.log('❌ No users found');
        this.noMoreProfiles.set(true);
        this.clearCache();
      }
    } catch (error) {
      console.error('❌ Failed to fetch users:', error);
      this.noMoreProfiles.set(true);
      this.clearCache();
    } finally {
      this.isLoading.set(false);
    }
  }

  // Show user at specific index
  showUserAtIndex(index: number) {
    const users = this.getCachedUsers();
    if (!users || index >= users.length) {
      this.noMoreProfiles.set(true);
      return;
    }

    const user = users[index];
    this.currentUser.set(user);
    this.currentIndex.set(index);
    this.setCachedIndex(index);

    // Prepare images array
    const images: string[] = [];
    if (user.profileImage) {
      images.push(this.convertImagePath(user.profileImage));
    }
    if (user.imageUrls && user.imageUrls.length > 0) {
      images.push(...user.imageUrls.map((url: string) => this.convertImagePath(url)));
    }

    this.allImages.set(images);
    this.currentImageIndex.set(0);

    console.log(`👤 Showing user ${index + 1}/${users.length}: ${user.username}`);
  }

  // Move to next user
  async moveToNextUser() {
    const nextIndex = this.currentIndex() + 1;
    const totalUsers = this.totalUsers();

    if (nextIndex < totalUsers) {
      this.showUserAtIndex(nextIndex);
    } else {
      console.log('✨ All cached users viewed, fetching more...');
      this.clearCache();

      // Try to fetch more users
      await this.fetchAndCacheUsers();

      // If still no users after refetch, show no more profiles
      if (this.totalUsers() === 0) {
        console.log('❌ No more profiles available');
        this.noMoreProfiles.set(true);
      }
    }
  }

  // SessionStorage helper methods
  private getCachedUsers(): User[] | null {
    const cached = sessionStorage.getItem(this.STORAGE_KEY);
    return cached ? JSON.parse(cached) : null;
  }

  private setCachedUsers(users: User[]) {
    sessionStorage.setItem(this.STORAGE_KEY, JSON.stringify(users));
  }

  private getCachedIndex(): number {
    const cached = sessionStorage.getItem(this.INDEX_KEY);
    return cached ? parseInt(cached) : 0;
  }

  private setCachedIndex(index: number) {
    sessionStorage.setItem(this.INDEX_KEY, index.toString());
  }

  private clearCache() {
    sessionStorage.removeItem(this.STORAGE_KEY);
    sessionStorage.removeItem(this.INDEX_KEY);
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

    console.log('👍 Liked user:', user.username);

    try {
      await this.http.post(`/api/users/${user.username}/like`, {}, {
        withCredentials: true
      }).toPromise();

      // Move to next user in cache
      this.moveToNextUser();
    } catch (error) {
      console.error('❌ Failed to send like:', error);
    }
  }

  // Handle pass action
  async onPass() {
    const user = this.currentUser();
    if (!user) return;

    console.log('👎 Passed user:', user.username);

    try {
      await this.http.post(`/api/users/${user.username}/pass`, {}, {
        withCredentials: true
      }).toPromise();

      // Move to next user in cache
      this.moveToNextUser();
    } catch (error) {
      console.error('❌ Failed to send pass:', error);
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
    // console.log('Modal like:', username);
    await this.onLike(); // 기존 onLike 메서드 재사용
  }

  // Handle pass from modal (matching mode)
  async onModalPass(username: string) {
    // console.log('Modal pass:', username);
    await this.onPass(); // 기존 onPass 메서드 재사용
  }

  // Handle user blocked from modal
  async onUserBlocked(username: string) {
    console.log('🚫 User blocked:', username);
    // Move to next user
    await this.moveToNextUser();
  }

  // Handle user reported from modal
  async onUserReported(event: any) {
    const username = typeof event === 'string' ? event : event.username || event;
    console.log('⚠️ User reported:', username);
    // Move to next user
    await this.moveToNextUser();
  }

  // Filter functions
  toggleFilterModal() {
    // console.log('toggleFilterModal called');
    // console.log('Current showFilterModal state:', this.showFilterModal());
    const newState = !this.showFilterModal();
    this.showFilterModal.set(newState);
    // console.log('New showFilterModal state:', this.showFilterModal());
  }

  closeFilterModal() {
    // console.log('Close filter modal called');
    this.showFilterModal.set(false);
  }

  applySortFilter(sortBy: string, order: string) {
    console.log('🔄 Applying sort filter:', sortBy, order);
    this.sortBy.set(sortBy);
    this.order.set(order);

    this.closeFilterModal();

    // Clear cache and fetch new data
    this.clearCache();
    this.fetchAndCacheUsers();
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
    // console.log('toggleSearchModal called');
    this.showSearchModal.set(!this.showSearchModal());
  }

  closeSearchModal() {
    this.showSearchModal.set(false);
  }

  applySearchFilter() {
    console.log('🔍 Applying search filter:', {
      minAge: this.minAge(),
      maxAge: this.maxAge(),
      minFame: this.minFame(),
      maxFame: this.maxFame(),
      maxDistance: this.maxDistance(),
      interests: this.selectedInterests()
    });

    this.closeSearchModal();

    // Clear cache and fetch new data with filters
    this.clearCache();
    this.fetchAndCacheUsers();
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
