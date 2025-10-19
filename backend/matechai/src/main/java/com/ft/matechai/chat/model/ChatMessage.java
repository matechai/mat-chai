package com.ft.matechai.chat.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChatMessage
{
	private String sender;
	private String receiver;
	private String content;
	private long timestamp;
	// private MessageType type;

}
