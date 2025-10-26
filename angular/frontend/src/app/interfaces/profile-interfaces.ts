export interface ProfileUpdateRequest {
	gender: string;
	sexualPreferences: string[];
	biography: string;
	interests: string[];
	photos?: File[];
}

export interface ProfileOptions {
	genders: string[];
	sexualPreferences: string[];
	interests: string[];
}

export interface PhotoItem {
	file: File;
	preview: string;
}

// backend DTO
export interface UserProfileDTO {
	gender: string;
	biography: string;
	sexualPreferences: string[];
	interests: string[];
}

// API request structure for multipart/form-data
export interface ProfileUpdateApiRequest {
	data: UserProfileDTO;    // @RequestPart("data")
	files: File[];          // @RequestPart("files")
}