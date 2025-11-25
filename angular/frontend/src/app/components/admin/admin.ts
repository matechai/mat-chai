import { Component, inject, OnInit, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

interface ReportResponse {
	username: string;
	reportCount: number;
	reasons: string[];
}

interface BanResponse {
	username: string;
	isBanned: boolean;
}

@Component({
	selector: 'app-admin',
	imports: [CommonModule, FormsModule],
	templateUrl: './admin.html',
	styleUrl: './admin.scss'
})
export class Admin implements OnInit {
	private http = inject(HttpClient);

	// Signals
	reports = signal<ReportResponse[]>([]);
	bannedUsers = signal<BanResponse[]>([]);
	isLoading = signal(false);
	activeTab = signal<'reports' | 'banned'>('reports');
	alertMessage = signal('');
	alertType = signal<'success' | 'error' | ''>('');

	// Modals
	showBanModal = signal(false);
	showUnbanModal = signal(false);
	selectedUsername = signal('');
	selectedReasons = signal<string[]>([]);

	ngOnInit() {
		this.loadReports();
		this.loadBannedUsers();
	}

	switchTab(tab: 'reports' | 'banned') {
		this.activeTab.set(tab);
	}

	loadReports() {
		this.isLoading.set(true);
		this.http.get<ReportResponse[]>('/api/admin/reports')
			.subscribe({
				next: (data) => {
					this.reports.set(data);
					this.isLoading.set(false);
				},
				error: (err) => {
					console.error('Failed to load reports:', err);
					this.showAlert('❌ Failed to load reports', 'error');
					this.isLoading.set(false);
				}
			});
	}

	loadBannedUsers() {
		this.http.get<BanResponse[]>('/api/admin/users/banned')
			.subscribe({
				next: (data) => {
					this.bannedUsers.set(data);
				},
				error: (err) => {
					console.error('Failed to load banned users:', err);
					this.showAlert('❌ Failed to load banned users', 'error');
				}
			});
	}

	openBanModal(username: string, reasons: string[]) {
		this.selectedUsername.set(username);
		this.selectedReasons.set(reasons);
		this.showBanModal.set(true);
	}

	closeBanModal() {
		this.showBanModal.set(false);
		this.selectedUsername.set('');
		this.selectedReasons.set([]);
	}

	confirmBan() {
		const username = this.selectedUsername();
		this.http.post<BanResponse>(`/api/admin/users/${username}/ban`, {})
			.subscribe({
				next: (response) => {
					this.showAlert(`✅ User ${username} has been banned`, 'success');
					this.closeBanModal();
					this.loadReports();
					this.loadBannedUsers();
				},
				error: (err) => {
					console.error('Failed to ban user:', err);
					this.showAlert('❌ Failed to ban user', 'error');
				}
			});
	}

	openUnbanModal(username: string) {
		this.selectedUsername.set(username);
		this.showUnbanModal.set(true);
	}

	closeUnbanModal() {
		this.showUnbanModal.set(false);
		this.selectedUsername.set('');
	}

	confirmUnban() {
		const username = this.selectedUsername();
		this.http.delete<BanResponse>(`/api/admin/users/${username}/ban`)
			.subscribe({
				next: (response) => {
					this.showAlert(`✅ User ${username} has been unbanned`, 'success');
					this.closeUnbanModal();
					this.loadReports();
					this.loadBannedUsers();
				},
				error: (err) => {
					console.error('Failed to unban user:', err);
					this.showAlert('❌ Failed to unban user', 'error');
				}
			});
	}

	showAlert(message: string, type: 'success' | 'error') {
		this.alertMessage.set(message);
		this.alertType.set(type);

		const duration = type === 'success' ? 5000 : 7000;
		setTimeout(() => {
			this.alertMessage.set('');
			this.alertType.set('');
		}, duration);
	}

	closeAlert() {
		this.alertMessage.set('');
		this.alertType.set('');
	}
}
