import { Component, OnInit, inject, signal, HostListener } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';

interface UserBasicProfile {
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

interface ViewersResponse {
	content: UserBasicProfile[];
	currentPage: number;
	totalPages: number;
	hasNext: boolean;
	totalElements: number;
}@Component({
	selector: 'app-viewers',
	standalone: true,
	imports: [CommonModule],
	templateUrl: './viewers.html',
	styleUrl: './viewers.scss'
})
export class Viewers implements OnInit {
	private http = inject(HttpClient);

	// Signals for state management
	viewers = signal<UserBasicProfile[]>([]);
	currentPage = signal<number>(0);
	totalPages = signal<number>(0);
	hasNext = signal<boolean>(true);
	isLoading = signal<boolean>(false);
	totalElements = signal<number>(0);

	// Image carousel state for each user
	currentImageIndexes = signal<{ [username: string]: number }>({});

	// User detail modal state
	showUserDetail = signal<boolean>(false);
	userDetail = signal<UserDetail | null>(null);
	loadingUserDetail = signal<boolean>(false); ngOnInit() {
		console.log('Viewers component initialized');
		this.loadViewers();
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
		return imagePath.replace('/app/uploads/', '/uploads/');
	}

	// Get all images for a user (profile image + additional images)
	getUserImages(user: UserBasicProfile): string[] {
		const images: string[] = [];

		// Always add profileImage first
		if (user.profileImage) {
			images.push(this.convertImagePath(user.profileImage));
		}

		// Then add additional images from imageUrls array
		if (user.imageUrls && user.imageUrls.length > 0) {
			images.push(...user.imageUrls.map((url: string) => this.convertImagePath(url)));
		}

		return images;
	}

	// Get current image index for a user
	getCurrentImageIndex(username: string): number {
		const indexes = this.currentImageIndexes();
		return indexes[username] || 0;
	}

	// Set current image index for a user
	setCurrentImageIndex(username: string, index: number): void {
		const indexes = { ...this.currentImageIndexes() };
		indexes[username] = index;
		this.currentImageIndexes.set(indexes);
	}

	// Navigate to previous image for a user
	previousImage(user: UserBasicProfile) {
		const images = this.getUserImages(user);
		if (images.length > 1) {
			const current = this.getCurrentImageIndex(user.username);
			const newIndex = current > 0 ? current - 1 : images.length - 1;
			this.setCurrentImageIndex(user.username, newIndex);
		}
	}

	// Navigate to next image for a user
	nextImage(user: UserBasicProfile) {
		const images = this.getUserImages(user);
		if (images.length > 1) {
			const current = this.getCurrentImageIndex(user.username);
			const newIndex = current < images.length - 1 ? current + 1 : 0;
			this.setCurrentImageIndex(user.username, newIndex);
		}
	}

	// Load viewers from backend
	async loadViewers() {
		if (this.isLoading()) {
			console.log('Already loading, skipping...');
			return;
		}

		console.log('Loading viewers for page:', this.currentPage());
		this.isLoading.set(true);

		try {
			const page = this.currentPage();
			console.log('Sending GET request to:', `/api/users/me/viewers?page=${page}`);

			const response = await this.http.get<ViewersResponse>(`/api/users/me/viewers?page=${page}`, {
				withCredentials: true
			}).toPromise();

			console.log('Received viewers response:', response);

			if (response && response.content) {
				// If it's the first page, replace the array. Otherwise, append to existing array
				if (page === 0) {
					this.viewers.set(response.content);
				} else {
					this.viewers.set([...this.viewers(), ...response.content]);
				}

				this.currentPage.set(response.currentPage);
				this.totalPages.set(response.totalPages);
				this.hasNext.set(response.hasNext);
				this.totalElements.set(response.totalElements);

				// Initialize image indexes for new users
				const indexes = { ...this.currentImageIndexes() };
				response.content.forEach((user: UserBasicProfile) => {
					if (!(user.username in indexes)) {
						indexes[user.username] = 0;
					}
				});
				this.currentImageIndexes.set(indexes);
			}
		} catch (error) {
			console.error('Failed to load viewers:', error);
		} finally {
			this.isLoading.set(false);
		}
	}

	// Load next page on scroll
	@HostListener('window:scroll')
	onScroll() {
		const scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
		const scrollHeight = document.documentElement.scrollHeight || document.body.scrollHeight;
		const clientHeight = document.documentElement.clientHeight || window.innerHeight;

		// Load next page when scrolled to bottom
		if (scrollTop + clientHeight >= scrollHeight - 100 && this.hasNext() && !this.isLoading()) {
			this.loadNextPage();
		}
	}

	// Load next page
	async loadNextPage() {
		if (this.hasNext() && !this.isLoading()) {
			this.currentPage.set(this.currentPage() + 1);
			await this.loadViewers();
		}
	}

	// Refresh viewers list
	async refreshViewers() {
		this.currentPage.set(0);
		this.viewers.set([]);
		this.currentImageIndexes.set({});
		await this.loadViewers();
	}

	// Show user detail modal
	async showUserDetailModal(username: string) {
		console.log('Opening user detail for:', username);
		this.showUserDetail.set(true);
		this.loadingUserDetail.set(true);

		try {
			// GraphQL query to get detailed user information
			const query = {
				query: `query {getUserByUsername(username: "${username}") { email username dateOfBirth firstName lastName biography interests profileImageUrl imageUrls fame lastOnline distance } }`
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
		if (fame >= 80) return '⭐⭐⭐⭐⭐ Celebrity';
		if (fame >= 60) return '⭐⭐⭐⭐ Popular';
		if (fame >= 40) return '⭐⭐⭐ Well-known';
		if (fame >= 20) return '⭐⭐ Rising';
		return '⭐ Newcomer';
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