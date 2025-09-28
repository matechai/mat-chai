import { Routes } from '@angular/router';
import { Login } from './components/login/login';
import { Signup } from './components/signup/signup';
import { Profile } from './components/profile/profile';
import { Matching } from './components/matching/matching';
import { Chat } from './components/chat/chat';
import { NotFoundError } from 'rxjs';
import { Notfound } from './components/notfound/notfound';

export const routes: Routes = [

	{	path: 'login',	component: Login	},
	{	path: 'signup',	component: Signup	},
	{ 	path: '',	component: Profile,	pathMatch: 'full' },
	{	path: 'matching/:id',	component: Matching	},
	{	path: 'chat',	component: Chat	},
	{	path: 'setting',	component: Matching	},
	{	path: '**', component: Notfound }
];
