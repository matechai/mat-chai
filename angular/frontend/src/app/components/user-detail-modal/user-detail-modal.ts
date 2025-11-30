import { Component, EventEmitter, Input, Output, signal, inject, OnInit, OnDestroy } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { WebSocketService, OnlineStatus } from '../../services/websocket.service';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

export interface UserDetail {
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
	iLikeTarget: boolean;
	matched: boolean;
	targetLikesMe: boolean;
}

@Component({
	selector: 'app-user-detail-modal',
	standalone: true,
	imports: [CommonModule, FormsModule],
	templateUrl: './user-detail-modal.html',
	styleUrl: './user-detail-modal.scss'
})
export class UserDetailModal implements OnInit, OnDestroy {
	private http = inject(HttpClient);
	private websocketService = inject(WebSocketService);
	private destroy$ = new Subject<void>();

	@Input() show = false;
	@Input() mode: 'view' | 'matching' = 'view'; // view: 일반 보기, matching: 매칭 페이지
	@Output() showChange = new EventEmitter<boolean>();
	@Output() close = new EventEmitter<void>();
	@Output() like = new EventEmitter<string>(); // matching 모드에서 like 시 username 전달
	@Output() pass = new EventEmitter<string>(); // matching 모드에서 pass 시 username 전달
	@Output() likeStatusChanged = new EventEmitter<{ username: string; iLikeTarget: boolean; matched: boolean }>(); // view 모드에서 좋아요 상태 변경 시
	@Output() userBlocked = new EventEmitter<string>(); // 유저 차단 시 username 전달

	loading = signal<boolean>(false);
	userDetail = signal<UserDetail | null>(null);
	isLikeProcessing = signal<boolean>(false);
	showReportModal = signal<boolean>(false);
	reportReason = signal<string>('');
	isReportProcessing = signal<boolean>(false);
	showBlockModal = signal<boolean>(false);
	isBlockProcessing = signal<boolean>(false);
	alertMessage = signal<string>('');
	alertType = signal<'success' | 'error' | ''>('');
	userOnlineStatus = signal<{ isOnline: boolean; lastOnline?: string }>({ isOnline: false });

	ngOnInit() {
		// Subscribe to online status updates from WebSocket
		this.websocketService.onlineStatus$
			.pipe(takeUntil(this.destroy$))
			.subscribe((status: OnlineStatus | null) => {
				if (status && this.userDetail() && status.username === this.userDetail()?.username) {
					console.log('🟢 Online status updated for', status.username, ':', status);
					this.userOnlineStatus.set({
						isOnline: status.isOnline,
						lastOnline: status.lastOnline
					});
				}
			});
	}

	ngOnDestroy() {
		this.destroy$.next();
		this.destroy$.complete();
	}

	// Load user detail by username
	async loadUserDetail(username: string) {
		console.log('Loading user detail for:', username);
		this.loading.set(true);

		try {
			// GraphQL query to get detailed user information
			const query = {
				query: `query {
					getUserByUsername(username: "${username}") {
						username
						dateOfBirth
						firstName
						lastName
						biography
						interests
						profileImageUrl
						imageUrls
						fame
						lastOnline
						distance
						iLikeTarget
						matched
						targetLikesMe
					}
				}`
			};

			const response = await this.http.post<{ data: { getUserByUsername: UserDetail } }>('/api/graphql', query, {
				withCredentials: true,
				headers: {
					'Content-Type': 'application/json'
				}
			}).toPromise();

			if (response?.data?.getUserByUsername) {
				const user = response.data.getUserByUsername;
				this.userDetail.set(user);
				
				// Set initial online status based on lastOnline
				this.userOnlineStatus.set({
					isOnline: false,
					lastOnline: user.lastOnline
				});
				
				console.log('User detail loaded:', user);
			}
		} catch (error) {
			// console.error('Failed to load user detail:', error);
		} finally {
			this.loading.set(false);
		}
	}

	// Close modal
	closeModal() {
		this.show = false;
		this.showChange.emit(false);
		this.close.emit();
		this.userDetail.set(null);
	}

	// Show alert
	showAlert(message: string, type: 'success' | 'error') {
		this.alertMessage.set(message);
		this.alertType.set(type);

		const duration = type === 'success' ? 5000 : 7000;
		setTimeout(() => {
			this.alertMessage.set('');
			this.alertType.set('');
		}, duration);
	}

	// Close alert
	closeAlert() {
		this.alertMessage.set('');
		this.alertType.set('');
	}

	// Calculate age from date of birth
	calculateAge(dateOfBirth: string): number {
		if (!dateOfBirth) return 0;

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
			return 'online';
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

	// Get online status text and color
	getOnlineStatusDisplay(): { text: string; isOnline: boolean; color: string } {
		const status = this.userOnlineStatus();
		
		if (status.isOnline) {
			return {
				text: 'Online now',
				isOnline: true,
				color: '#4CAF50'
			};
		} else if (status.lastOnline) {
			return {
				text: this.formatLastOnline(status.lastOnline),
				isOnline: false,
				color: '#999'
			};
		} else if (this.userDetail()?.lastOnline) {
			return {
				text: this.formatLastOnline(this.userDetail()!.lastOnline),
				isOnline: false,
				color: '#999'
			};
		}
		
		return {
			text: 'Unknown',
			isOnline: false,
			color: '#ccc'
		};
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

	// Toggle like status (view 모드용)
	async toggleLike() {
		const user = this.userDetail();
		if (!user || this.isLikeProcessing()) return;

		this.isLikeProcessing.set(true);

		try {
			if (user.iLikeTarget) {
				// Unlike: DELETE request
				await this.http.delete(`/api/users/${user.username}/like`, {
					withCredentials: true
				}).toPromise();

				// Update local state
				this.userDetail.set({
					...user,
					iLikeTarget: false
				});

				console.log('Unliked user:', user.username);

				// Emit event to parent component
				this.likeStatusChanged.emit({
					username: user.username,
					iLikeTarget: false,
					matched: false
				});
			} else {
				// Like: POST request - response may contain matched status
				const response = await this.http.post<{ matched?: boolean }>(`/api/users/${user.username}/like`, {}, {
					withCredentials: true
				}).toPromise();

				// Check if matched (백엔드가 matched 값을 반환하는 경우)
				const matched = response?.matched || false;

				// Update local state
				this.userDetail.set({
					...user,
					iLikeTarget: true,
					matched: matched
				});

				console.log('Liked user:', user.username, 'Matched:', matched);

				// Emit event to parent component
				this.likeStatusChanged.emit({
					username: user.username,
					iLikeTarget: true,
					matched: matched
				});
			}
		} catch (error) {
			// console.error('Failed to toggle like:', error);
		} finally {
			this.isLikeProcessing.set(false);
		}
	}

	// Matching 모드: Like 버튼 클릭
	onMatchingLike() {
		const user = this.userDetail();
		if (!user || this.isLikeProcessing()) return;

		this.like.emit(user.username);
		this.closeModal(); // 모달 닫고 부모에서 처리
	}

	// Matching 모드: Pass 버튼 클릭
	onMatchingPass() {
		const user = this.userDetail();
		if (!user || this.isLikeProcessing()) return;

		this.pass.emit(user.username);
		this.closeModal(); // 모달 닫고 부모에서 처리
	}

	// Open report modal
	openReportModal() {
		this.showReportModal.set(true);
		this.reportReason.set('');
	}

	// Close report modal
	closeReportModal() {
		this.showReportModal.set(false);
		this.reportReason.set('');
	}

	// Submit report
	async submitReport() {
		const user = this.userDetail();
		const reason = this.reportReason().trim();

		if (!user || !reason) {
			this.showAlert('Please enter a reason for reporting.', 'error');
			return;
		}

		if (this.isReportProcessing()) return;

		this.isReportProcessing.set(true);

		try {
			await this.http.post('/api/reports', {
				targetUsername: user.username,
				reason: reason
			}, {
				withCredentials: true,
				headers: {
					'Content-Type': 'application/json'
				}
			}).toPromise();

			console.log('Report submitted successfully for:', user.username);
			this.showAlert('Report submitted successfully. Thank you for helping keep our community safe.', 'success');
			this.closeReportModal();
		} catch (error) {
			// console.error('Failed to submit report:', error);
			this.showAlert('Failed to submit report. Please try again.', 'error');
		} finally {
			this.isReportProcessing.set(false);
		}
	}

	// Open block modal
	openBlockModal() {
		this.showBlockModal.set(true);
	}

	// Close block modal
	closeBlockModal() {
		this.showBlockModal.set(false);
	}

	// Block user
	async blockUser() {
		const user = this.userDetail();
		if (!user || this.isBlockProcessing()) return;

		this.isBlockProcessing.set(true);

		try {
			await this.http.post(`/api/users/${user.username}/block`, {}, {
				withCredentials: true
			}).toPromise();

			console.log('User blocked successfully:', user.username);
			this.showAlert(`You have blocked @${user.username}. You will no longer see their profile and they cannot contact you.`, 'success');

			// Emit event to parent component to refresh the list
			this.userBlocked.emit(user.username);

			this.closeBlockModal();

			// Close the detail modal after a short delay to show the success message
			setTimeout(() => {
				this.closeModal();
			}, 1500);
		} catch (error) {
			// console.error('Failed to block user:', error);
			this.showAlert('Failed to block user. Please try again.', 'error');
		} finally {
			this.isBlockProcessing.set(false);
		}
	}
}
