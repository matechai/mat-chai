package com.ft.matechai.chat.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.ft.matechai.chat.dto.ChatPartnerDto;
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

	//Get Chat Between two users (both directions)
	public List<ChatMessage> getChatBetween(User user, String receiverUsername)
	{
		User receiver = userRepository.findByUsernameOrThrow(receiverUsername);
		return chatRepository.findBySenderAndReceiverOrReceiverAndSender(user.getUsername(), receiver.getUsername(), receiver.getUsername(), user.getUsername());
	}

	public List<ChatPartnerDto> getChatPartners(User currentUser)
	{
		String username = currentUser.getUsername();

		List<ChatMessage> allMessages = chatRepository.findBySenderAndReceiver(username, username);

		 Map<String, ChatMessage> lastMessages = new HashMap<>();
		
		for (ChatMessage msg: allMessages)
		{
			String partner = msg.getSender().equals(username) ? msg.getReceiver() : msg.getSender();
			
			ChatMessage existing = lastMessages.get(partner);
			if (existing == null || msg.getTimestamp().isAfter(existing.getTimestamp()))
				lastMessages.put(partner, msg);
		}

		return lastMessages.entrySet().stream()
				.map(entry -> {
					ChatMessage msg = entry.getValue();
					return new ChatPartnerDto(
						entry.getKey(),
						msg.getContent(),
						msg.getTimestamp()
					);
				})
				.sorted((a, b) -> b.getLastMessageTime().compareTo(a.getLastMessageTime())) // latest first
                .collect(Collectors.toList());
	}
}
