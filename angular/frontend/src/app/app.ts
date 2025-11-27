


import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LayoutComponent } from './components/layout/layout';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, LayoutComponent],
  template: `<app-layout></app-layout>`,
  styleUrl: './app.scss'
})
export class AppComponent {}
