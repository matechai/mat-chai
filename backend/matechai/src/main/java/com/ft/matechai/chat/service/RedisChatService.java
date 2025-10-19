package com.ft.matechai.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;

@Service
public class RedisChatService
{
	@Autowired
	private RedisTemplate<String, ChatMessage> redisTemplate;

	private static final String CHAT_KEY_STRING_PREFIX = "chat:";

	public void saveMessage(ChatMessage message)
	{
		String key = CHAT_KEY_STRING_PREFIX + getChatId(message.getSender(), message.getReceiver());
		redisTemplate.opsForList().rightPush(key, message);
	}

	public List<ChatMessage> getMessage(String user1, String user2)
	{
		String key = CHAT_KEY_STRING_PREFIX + getChatId(user1, user2);
		return redisTemplate.opsForList().range(key, 0, -1);
	}

	private String getChatId(String user1, String user2)
	{
		return user1.compareTo(user2) < 0 ? user1 + ":" + user2 : user2 + ":" + user1;
	}
}