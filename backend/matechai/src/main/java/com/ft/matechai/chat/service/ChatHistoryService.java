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

	// Get chat messages between two users, excluding messages from blocked users
    public List<ChatMessage> getChatBetween(User user, String receiverUsername) 
	{
        User receiver = userRepository.findByUsernameOrThrow(receiverUsername);

        // Fetch all messages between the two users
        List<ChatMessage> messages = chatRepository.findBySenderAndReceiverOrReceiverAndSender(
                user.getUsername(), receiver.getUsername(),
                receiver.getUsername(), user.getUsername()
        );

        // Remove messages where sender is blocked by the current user
        messages.removeIf(msg -> userRepository.isBlocked(user.getUsername(), msg.getSender()));

        return messages;
    }

	// Get chat partners with the last message, excluding blocked users
    public List<ChatPartnerDto> getChatPartners(User currentUser) 
	{
        String username = currentUser.getUsername();

        // Fetch all messages where the user is sender or receiver
        List<ChatMessage> allMessages = chatRepository.findBySenderOrReceiver(username, username);

        Map<String, ChatMessage> lastMessages = new HashMap<>();
        for (ChatMessage msg : allMessages) {
            String partner = msg.getSender().equals(username) ? msg.getReceiver() : msg.getSender();

            // Skip partner if blocked by current user
            if (userRepository.isBlocked(username, partner)) continue;

            ChatMessage existing = lastMessages.get(partner);
            if (existing == null || msg.getTimestamp().isAfter(existing.getTimestamp())) {
                lastMessages.put(partner, msg);
            }
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