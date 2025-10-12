package com.ft.matechai.chat.controller;

<<<<<<< HEAD
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.chat.nodes.ChatMessage;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
// @RequestMapping("/api/chat")
public class ChatController
{
	private final SimpMessagingTemplate messageTemplate;

	@MessageMapping("/chat.sendMessage")
	// @SendTo("/topic/public")
	public void sendMessage(@Payload ChatMessage chatMessage)
	{
		messageTemplate.convertAndSendToUser(
			chatMessage.get_receiver(),
			"/queue/message",
			chatMessage);
		// return chatMessage;
	}

	// @MessageMapping("/chat.addUser")
	// @SendTo("/topic/public")
	// public ChatMessage addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor)
	// {
	// 	//Add username to WebSocket session
	// 	headerAccessor.getSessionAttributes().put("username", chatMessage.get_receiver());
	// 	return chatMessage;
	// }

	@MessageMapping("/chat.addUser")
	public void addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor)
	{
		headerAccessor.getSessionAttributes().put("username", chatMessage.get_sender());
	}
=======
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/chat")
public class ChatController
{
	
>>>>>>> da121c5 (working on websockets)
}