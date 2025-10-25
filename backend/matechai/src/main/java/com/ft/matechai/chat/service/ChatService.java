package com.ft.matechai.chat.service;

import com.ft.matechai.chat.document.Chat;
import com.ft.matechai.chat.model.Message;
import com.ft.matechai.chat.repository.ChatRepository;

import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ChatService {
    private final ChatRepository chatRepository;

    public ChatService(ChatRepository chatRepository) {
        this.chatRepository = chatRepository;
    }

	// GETTERS // GETTERS // GETTERS // GETTERS //

    public List<Chat> getChatsForUser(String username) {
        return chatRepository.findByParticipantsContaining(username);
    }

    public Optional<Chat> findDirectChat(String user1, String user2) {
        return chatRepository.findDirectChat(user1, user2);
    }

	// SETTERS // SETTERS // SETTERS // SETTERS //

    public Chat findOrCreateDirectChat(String user1, String user2) {
        return findDirectChat(user1, user2)
                .orElseGet(() -> createChat(List.of(user1, user2)));
    }

    public Chat createChat(List<String> participants) {
        Chat chat = Chat.builder()
                .participants(participants)
                .build();
        return chatRepository.save(chat);
    }

    public Chat addMessage(UUID chatId, String sender, String content) {
        Optional<Chat> chatOpt = chatRepository.findById(chatId);
        if (chatOpt.isEmpty()) {
            throw new IllegalArgumentException("Chat not found: " + chatId);
        }

        Chat chat = chatOpt.get();

        Message message = Message.builder()
                .sender(sender)
                .content(content)
                .build();

        chat.getMessages().add(message);
        return chatRepository.save(chat);
    }
}