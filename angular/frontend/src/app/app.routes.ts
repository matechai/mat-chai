import { Routes } from '@angular/router';
import { Login } from './components/login/login';
import { Signup } from './components/signup/signup';
import { Profile } from './components/profile/profile';
import { Matching } from './components/matching/matching';
import { Chat } from './components/chat/chat';
import { Notfound } from './components/notfound/notfound';
import { ProfileEdit } from './components/profile-edit/profile-edit';
import { Matches } from './components/matches/matches';
import { Viewers } from './components/viewers/viewers';
import { LikedBy } from './components/liked-by/liked-by';
import { Setting } from './components/setting/setting';
import { ForgotPassword } from './components/forgot-password/forgot-password';
import { AuthGuard } from './guards/auth.guard';


export const routes: Routes = [
	{ path: 'login', component: Login },
	{ path: 'signup', component: Signup },
	{ path: 'forgot-password', component: ForgotPassword },
	{ path: 'profile/edit', component: ProfileEdit },
	{ path: 'matches', component: Matches },
	{ path: 'matching', component: Matching },
	{ path: 'viewers', component: Viewers },
	{ path: 'liked-by', component: LikedBy },
	{ path: 'chat', component: Chat },
	{ path: 'setting', component: Setting },
	{ path: 'updateprofile', component: ProfileEdit },
	{ path: '', canActivate: [AuthGuard], component: Login, pathMatch: 'full' },
	{ path: '**', component: Notfound }
];
