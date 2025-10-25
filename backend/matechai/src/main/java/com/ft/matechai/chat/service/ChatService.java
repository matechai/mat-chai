package com.ft.matechai.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;

@Service
public class ChatService
{
	// private final SimpMessagingTemplate messagingTemplate;
	// private final RedisChatService redisChatService;

	// @Autowired
	// public ChatService(SimpMessagingTemplate messagingTemplate, RedisChatService redisChatService)
	// {
	// 	this.messagingTemplate = messagingTemplate;
	// 	this.redisChatService = redisChatService;
	// }

	// public void sendMessage(ChatMessage message)
	// {	
	// 	//save to redis
	// 	redisChatService.saveMessage(message);
	// 	//send to receiver via socket
	// 	messagingTemplate.convertAndSend("/queue/" + message.getReceiver(), message);
	// }

	// public List<ChatMessage> getChatHistory(String user1, String user2)
	// {
	// 	return redisChatService.getMessage(user1, user2);
	// }
}