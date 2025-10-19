package com.ft.matechai.chat.controller;

<<<<<<< HEAD
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.chat.model.ChatMessage;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
// @RequiredArgsConstructor
@Slf4j
// @RequestMapping("/api/chat")
public class ChatController
{
	private final SimpMessagingTemplate messageTemplate;

	// @MessageMapping("/chat.sendMessage")
	// @SendTo("/topic/public")
	// public void sendMessage(@Payload ChatMessage chatMessage)
	// {
		// 	log.info("send messge form {} to {}: {}",
		// 			chatMessage.getSender(),
		// 			chatMessage.getReceiver(),
		// 			chatMessage.getContent());
		
		// 	messageTemplate.convertAndSendToUser(
			// 		chatMessage.getReceiver(),
			// 		"/queue/messages",
			// 		chatMessage);
			// 	// return chatMessage;
			// }
			
	@PostMapping("/send")
	public void sendMessage(@RequestBody ChatMessage chatMessage)
	{
		log.info("message info -> {}, {}", chatMessage.getSender(), chatMessage.getContent());
		messageTemplate.convertAndSend("/queue" + chatMessage.getReceiver(), chatMessage);
	}


	// @MessageMapping("/chat.addUser")
	// public void addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor)
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
}