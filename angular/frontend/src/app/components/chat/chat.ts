import { Component, OnInit, OnDestroy, inject, signal, computed, Inject, Injectable } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { ChatMessage, ChatPartner, ChatService } from '../../services/chat';


@Component({
  selector: 'app-chat',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './chat.html',
  styleUrl: './chat.scss'
})
export class ChatComponent implements OnInit {

  private chatService = inject(ChatService);
  chatPartners: ChatPartner[] = [];
  messages: ChatMessage[] = [];
  selectedPartner: ChatPartner | null = null;
  messageText: string = '';

  constructor() {}

  ngOnInit(): void {
    // Connect to WebSocket (cookie JWT sent automatically)
    this.chatService.connect();

    // Subscribe to incoming messages
    this.chatService.messages$.subscribe((msgs: any)  => {
      this.messages = msgs;
    });

    // Fetch chat partners
    this.chatService.fetchChatPartners();
    this.chatService.chatPartners$.subscribe((partners: any) => {
      this.chatPartners = partners;
    });
  }

  selectPartner(partner: ChatPartner) {
    this.selectedPartner = partner;
    // Fetch chat history
    this.chatService.fetchChatHistory(partner.username).subscribe((msgs: any) => {
      this.messages = msgs;
    });
  }

  sendMessage() {
    if (!this.selectedPartner || !this.messageText.trim()) return;

    this.chatService.sendMessage(this.selectedPartner.username, this.messageText);
    this.messageText = '';
  }
}
