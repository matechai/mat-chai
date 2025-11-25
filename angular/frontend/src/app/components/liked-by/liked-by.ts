import { Component, OnInit, inject, signal, ViewChild } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { UserDetailModal } from '../user-detail-modal/user-detail-modal';

interface LikedByUser {
	username: string;
	dateOfBirth: string;
	profileImage?: string;
	imageUrls?: string[];
	matched?: boolean;
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
	imports: [CommonModule, UserDetailModal],
	templateUrl: './liked-by.html',
	styleUrl: './liked-by.scss'
})
export class LikedBy implements OnInit {
	private http = inject(HttpClient);
	private router = inject(Router);

	@ViewChild(UserDetailModal) userDetailModal?: UserDetailModal;

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
		this.showUserDetail.set(true);
		if (this.userDetailModal) {
			await this.userDetailModal.loadUserDetail(username);
		}
	}

	// Close user detail modal
	closeUserDetailModal() {
		this.showUserDetail.set(false);
	}

	// Handle like status changed from modal
	onLikeStatusChanged(event: { username: string; iLikeTarget: boolean; matched: boolean }) {
		console.log('Like status changed:', event);

		// Update the user in the list
		this.likedByUsers.update(users =>
			users.map(user =>
				user.username === event.username
					? { ...user, matched: event.matched }
					: user
			)
		);
	}

	// Handle user blocked from modal
	onUserBlocked(username: string) {
		console.log('User blocked:', username);
		// Refresh the entire list to remove the blocked user
		this.refresh();
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