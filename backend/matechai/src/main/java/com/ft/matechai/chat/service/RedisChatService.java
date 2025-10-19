package com.ft.matechai.chat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;

@Service
public class RedisChatService
{
	@Autowired
	// private RedisTem<String, ChatMessage> redisTemplate;

	private static final String CHAT_KEY_STRING_PREFIX = "chat:";

	public void saveMessage(ChatMessage message)
	{
		String key = CHAT_KEY_STRING_PREFIX + getChatId(message.getSender(), message.getReceiver());
		

	}

	private String getChatId(String user1, String user2)
	{
		return user1.compareTo(user2) < 0 ? user1 + ":" + user2 : user2 + ":" + user1;
	}
}