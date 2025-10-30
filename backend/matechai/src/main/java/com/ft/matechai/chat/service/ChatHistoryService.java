package com.ft.matechai.chat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.repository.ChatInterface;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.user.node.User;

@Service
public class ChatHistoryService {
	
	private final ChatInterface chatRepository;
	private final UserRepository userRepository;

	public ChatHistoryService(ChatInterface chatRepository, UserRepository userRepository)
	{
		this.chatRepository = chatRepository;
		this.userRepository = userRepository;
	}

	//Get all the chats involving a user
	public List<ChatMessage> getAllChatsForUser(User user)
	{
		return chatRepository.findBySenderOrReceiver(user.getUsername(), user.getUsername());
	}

	//Get Chat Between two users (both directions)
	public List<ChatMessage> getChatBetween(User user, String receiverUsername)
	{
		User receiver = userRepository.findByUsernameOrThrow(receiverUsername);
		return chatRepository.findBySenderAndReceiverOrReceiverAndSender(user.getUsername(), receiver.getUsername(), receiver.getUsername(), user.getUsername());
	}
}
