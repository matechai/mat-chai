export interface SignupInterface {
	firstName: string;
	lastName: string;
	username: string;
	email: string;
	password: string;
	dateOfBirth: string; // ISO date format (YYYY-MM-DD)
	age: number; // Calculated age in years
}
