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

	ngOnInit() {
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
		this.router.navigate(['/profile', username]);
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