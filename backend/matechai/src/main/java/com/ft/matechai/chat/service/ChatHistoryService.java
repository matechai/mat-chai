package com.ft.matechai.chat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.repository.ChatInterface;

@Service
public class ChatHistoryService {
	private final ChatInterface chatRepository;

	public ChatHistoryService(ChatInterface chatRepository)
	{
		this.chatRepository = chatRepository;
	}

	//Get all the chats involving a user
	public List<ChatMessage> getAllChatsForUser(String username)
	{
		return chatRepository.findBySenderOrReceiver(username, username);
	}

	//Get Chat Between two users (both directions)
	public List<ChatMessage> getChatBetween(String user1, String user2)
	{
		return chatRepository.findBySenderAndReceiverOrReceiverAndSender(user1, user2, user2, user1);
	}
}
