import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

interface LikedByUser {
	username: string;
	dateOfBirth: string;
	profileImage?: string;
	imageUrls?: string[];
}

interface UserDetail {
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

interface LikedByResponse {
	content: LikedByUser[];
	totalElements: number;
	totalPages: number;
	first: boolean;
	last: boolean;
	size: number;
	number: number;
	numberOfElements: number;
	empty: boolean;
	pageable: {
		pageNumber: number;
		pageSize: number;
		offset: number;
		paged: boolean;
		unpaged: boolean;
	};
}

@Component({
	selector: 'app-liked-by',
	standalone: true,
	imports: [CommonModule],
	templateUrl: './liked-by.html',
	styleUrl: './liked-by.scss'
})
export class LikedBy implements OnInit {
	private http = inject(HttpClient);
	private router = inject(Router);

	likedByUsers = signal<LikedByUser[]>([]);
	isLoading = signal<boolean>(true);
	isLoadingMore = signal<boolean>(false);
	error = signal<string | null>(null);

	// Pagination state
	currentPage = signal<number>(0);
	last = signal<boolean>(false);
	totalElements = signal<number>(0);

	// Image carousel state for each user
	currentImageIndexes = signal<{ [username: string]: number }>({});

	// User detail modal state
	showUserDetail = signal<boolean>(false);
	userDetail = signal<UserDetail | null>(null);
	loadingUserDetail = signal<boolean>(false);

	ngOnInit() {
		console.log('LikedBy component initialized');
		this.loadLikedByUsers();
		this.setupInfiniteScroll();
	}

	private loadLikedByUsers(page: number = 0, append: boolean = false) {
		if (append) {
			this.isLoadingMore.set(true);
		} else {
			this.isLoading.set(true);
		}
		this.error.set(null);

		this.http.get<LikedByResponse>(`/api/users/me/liked-by?page=${page}&size=20`, {
			withCredentials: true
		}).subscribe({
			next: (response: LikedByResponse) => {
				console.log('✅ Liked-by users response:', response);

				if (append) {
					// Append new users to existing list
					this.likedByUsers.update(current => [...current, ...(response.content || [])]);
					this.isLoadingMore.set(false);
				} else {
					// Replace with new list
					this.likedByUsers.set(response.content || []);
					this.isLoading.set(false);
				}

				// Update pagination state
				this.currentPage.set(response.number);
				this.last.set(response.last);
				this.totalElements.set(response.totalElements);

				// Initialize image indexes for new users
				if (response.content) {
					const indexes = { ...this.currentImageIndexes() };
					response.content.forEach((user: LikedByUser) => {
						if (!(user.username in indexes)) {
							indexes[user.username] = 0;
						}
					});
					this.currentImageIndexes.set(indexes);
				}
			},
			error: (error: any) => {
				console.error('❌ Failed to load liked-by users:', error);
				this.error.set('Failed to load users who liked you');
				this.isLoading.set(false);
				this.isLoadingMore.set(false);
			}
		});
	}

	private setupInfiniteScroll() {
		const scrollHandler = () => {
			const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
			const windowHeight = window.innerHeight;
			const documentHeight = document.documentElement.scrollHeight;

			// Load more when user is 200px from bottom
			const isNearBottom = scrollTop + windowHeight >= documentHeight - 200;

			if (isNearBottom && !this.isLoading() && !this.isLoadingMore() && !this.last()) {
				this.loadMoreUsers();
			}
		};

		// Add scroll event listener
		window.addEventListener('scroll', scrollHandler);

		// Clean up on component destroy
		const originalDestroy = this.ngOnDestroy?.bind(this);
		this.ngOnDestroy = () => {
			window.removeEventListener('scroll', scrollHandler);
			originalDestroy?.();
		};
	}

	private loadMoreUsers() {
		const nextPage = this.currentPage() + 1;
		console.log(`📄 Loading page ${nextPage}...`);
		this.loadLikedByUsers(nextPage, true);
	}

	ngOnDestroy() {
		// This will be overridden by setupInfiniteScroll
	}

	viewProfile(username: string) {
		this.showUserDetailModal(username);
	}

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
		return imagePath.replace('/app/uploads/', '/uploads/');
	}

	// Get all images for a user (profile image + additional images)
	getUserImages(user: LikedByUser): string[] {
		const images: string[] = [];

		// Always add profileImage first
		if (user.profileImage) {
			images.push(this.convertImagePath(user.profileImage));
		}

		// Add additional images
		if (user.imageUrls && user.imageUrls.length > 0) {
			const additionalImages = user.imageUrls
				.filter(url => url && url !== user.profileImage)
				.map(url => this.convertImagePath(url));
			images.push(...additionalImages);
		}

		return images;
	}

	// Navigate to previous image
	previousImage(username: string) {
		const user = this.likedByUsers().find(u => u.username === username);
		if (!user) return;

		const images = this.getUserImages(user);
		if (images.length <= 1) return;

		const currentIndex = this.currentImageIndexes()[username] || 0;
		const newIndex = currentIndex > 0 ? currentIndex - 1 : images.length - 1;

		this.currentImageIndexes.update(indexes => ({
			...indexes,
			[username]: newIndex
		}));
	}

	// Navigate to next image
	nextImage(username: string) {
		const user = this.likedByUsers().find(u => u.username === username);
		if (!user) return;

		const images = this.getUserImages(user);
		if (images.length <= 1) return;

		const currentIndex = this.currentImageIndexes()[username] || 0;
		const newIndex = currentIndex < images.length - 1 ? currentIndex + 1 : 0;

		this.currentImageIndexes.update(indexes => ({
			...indexes,
			[username]: newIndex
		}));
	}

	// Get current image index for a user
	getCurrentImageIndex(username: string): number {
		return this.currentImageIndexes()[username] || 0;
	}

	// Get current image URL for a user
	getCurrentImageUrl(user: LikedByUser): string {
		const images = this.getUserImages(user);
		if (images.length === 0) return '';

		const currentIndex = this.currentImageIndexes()[user.username] || 0;
		return images[currentIndex] || '';
	}

	// Set image index for a user
	setImageIndex(username: string, index: number) {
		this.currentImageIndexes.update(indexes => ({
			...indexes,
			[username]: index
		}));
	}

	// Show user detail modal
	async showUserDetailModal(username: string) {
		console.log('Opening user detail for:', username);
		this.showUserDetail.set(true);
		this.loadingUserDetail.set(true);

		try {
			// GraphQL query to get detailed user information
			const query = {
				query: `query {getUserByUsername(username: "${username}") { username dateOfBirth firstName lastName biography interests profileImageUrl imageUrls fame lastOnline distance } }`
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

		const lastOnlineDate = new Date(lastOnline);
		const now = new Date();
		const diffInMs = now.getTime() - lastOnlineDate.getTime();
		const diffInMinutes = Math.floor(diffInMs / (1000 * 60));
		const diffInHours = Math.floor(diffInMinutes / 60);
		const diffInDays = Math.floor(diffInHours / 24);

		if (diffInMinutes < 1) {
			return 'Just now';
		} else if (diffInMinutes < 60) {
			return `${diffInMinutes} min${diffInMinutes > 1 ? 's' : ''} ago`;
		} else if (diffInHours < 24) {
			return `${diffInHours} hour${diffInHours > 1 ? 's' : ''} ago`;
		} else if (diffInDays < 7) {
			return `${diffInDays} day${diffInDays > 1 ? 's' : ''} ago`;
		} else {
			return lastOnlineDate.toLocaleDateString();
		}
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


	// Get fame percentage
	getFamePercentage(fame: number): number {
		return Math.round((fame / 15) * 100);
	}

	// Format distance
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

	refresh() {
		// Reset pagination state
		this.currentPage.set(0);
		this.last.set(false);
		this.totalElements.set(0);
		this.loadLikedByUsers(0, false);
	}

	goBack() {
		this.router.navigate(['/']);
	}

	updateProfile() {
		this.router.navigate(['/updateprofile']);
	}
}