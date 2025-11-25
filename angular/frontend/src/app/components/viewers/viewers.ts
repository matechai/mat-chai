import { Component, OnInit, inject, signal, HostListener, ViewChild } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { UserDetailModal } from '../user-detail-modal/user-detail-modal';

interface UserBasicProfile {
	username: string;
	dateOfBirth: string;
	profileImage: string;
	imageUrls: string[];
	matched?: boolean;
	targetLikesMe?: boolean;
}

interface ViewersResponse {
	content: UserBasicProfile[];
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
}@Component({
	selector: 'app-viewers',
	standalone: true,
	imports: [CommonModule, UserDetailModal],
	templateUrl: './viewers.html',
	styleUrl: './viewers.scss'
})
export class Viewers implements OnInit {
	private http = inject(HttpClient);

	@ViewChild(UserDetailModal) userDetailModal?: UserDetailModal;

	// Signals for state management
	viewers = signal<UserBasicProfile[]>([]);
	currentPage = signal<number>(0);
	totalPages = signal<number>(0);
	last = signal<boolean>(false);
	isLoading = signal<boolean>(false);
	totalElements = signal<number>(0);

	// Image carousel state for each user
	currentImageIndexes = signal<{ [username: string]: number }>({});

	// User detail modal state
	showUserDetail = signal<boolean>(false); ngOnInit() {
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

				this.currentPage.set(response.number);
				this.totalPages.set(response.totalPages);
				this.last.set(response.last);
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
		if (scrollTop + clientHeight >= scrollHeight - 100 && !this.last() && !this.isLoading()) {
			this.loadNextPage();
		}
	}

	// Load next page
	async loadNextPage() {
		if (!this.last() && !this.isLoading()) {
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
		this.showUserDetail.set(true);
		if (this.userDetailModal) {
			await this.userDetailModal.loadUserDetail(username);
		}
	}

	// Close user detail modal
	closeUserDetailModal() {
		this.showUserDetail.set(false);
	}

	// Handle user blocked from modal
	onUserBlocked(username: string) {
		console.log('User blocked:', username);
		// Refresh the entire list to remove the blocked user
		this.refreshViewers();
	}
}