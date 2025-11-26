


import { Component, OnInit, OnDestroy } from '@angular/core';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [],
  templateUrl: './app.html',
	styleUrl: './app.scss'
})

export class AppComponent implements OnInit, OnDestroy {

 
ngOnInit(): void {
  console.log('🚀 App initialized');

}
}
