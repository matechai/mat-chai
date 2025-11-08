import { Routes } from '@angular/router';
import { AuthGuard } from './guards/auth.guard';
import { PublicGuard } from './guards/public.guard';


export const routes: Routes = [
  {
	path: '',
	redirectTo: '/matching',
	pathMatch: 'full'
  },
  {
	path: 'login',
	loadComponent: () => import('./components/login/login').then(m => m.Login),
	canActivate: [PublicGuard]
  },
  {
	path: 'signup',
	loadComponent: () => import('./components/signup/signup').then(m => m.Signup),
	canActivate: [PublicGuard]
  },
  {
	path: 'chat',
	loadComponent: () => import('./components/chat/chat').then(m => m.ChatComponent),
	canActivate: [AuthGuard]
  },
  {
	path: 'matches',
	loadComponent: () => import('./components/matches/matches').then(m => m.Matches),
	canActivate: [AuthGuard]
  },
  {
	path: 'matching',
	loadComponent: () => import('./components/matching/matching').then(m => m.Matching),
	canActivate: [AuthGuard]
  },
  {
	path: 'profile',
	loadComponent: () => import('./components/profile/profile').then(m => m.Profile),
	canActivate: [AuthGuard]
  },
  {
	path: 'profile/edit',
	loadComponent: () => import('./components/profile-edit/profile-edit').then(m => m.ProfileEdit),
	canActivate: [AuthGuard]
  },
  {
	path: 'settings',
	loadComponent: () => import('./components/setting/setting').then(m => m.Setting),
	canActivate: [AuthGuard]
  },
  {
	path: '**',
	loadComponent: () => import('./components/notfound/notfound').then(m => m.Notfound)
  }
];


// export const routes: Routes = [
// 	{ path: 'login', component: Login },
// 	{ path: 'signup', component: Signup },
// 	{ path: 'profile/edit', component: ProfileEdit },
// 	{ path: 'matches', component: Matches },
// 	{ path: 'matching/:id', component: Matching },
// 	{ path: 'chat', component: ChatComponent },
// 	{ path: 'setting', component: Matching },
// 	{ path: 'updateprofile', component: ProfileEdit },
// 	{ path: '', canActivate: [AuthGuard], component: Login, pathMatch: 'full' },
// 	{ path: '**', component: Notfound }
// ];



// import { Routes } from '@angular/router';
// import { AuthGuard } from './guards/auth.guard';
//
