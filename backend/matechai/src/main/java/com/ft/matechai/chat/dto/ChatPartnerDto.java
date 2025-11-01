package com.ft.matechai.chat.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChatPartnerDto {
	private String username;
	private String lastMessage;
	private LocalDateTime lastMessageTime;
}
