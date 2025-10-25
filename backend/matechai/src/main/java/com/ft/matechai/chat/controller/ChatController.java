package com.ft.matechai.chat.controller;


import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.service.ChatService;

import lombok.extern.slf4j.Slf4j;

@RestController
// @RequiredArgsConstructor
@RequestMapping
@Slf4j
// @RequestMapping("/api/chat")
public class ChatController
{
	private final ChatService chatService;
	
	@Autowired
	public ChatController(ChatService chatService)
	{
		this.chatService = chatService;
	}

	// @PostMapping("/send")
	// public void sendMessage(@RequestBody ChatMessage message)
	// {
	// 	chatService.sendMessage(message);
	// }

	// @GetMapping("/history")
	// public List<ChatMessage> getHistory(@RequestParam String user1, @RequestParam String user2)
	// {
	// 	return chatService.getChatHistory(user1, user2);
	// }

}