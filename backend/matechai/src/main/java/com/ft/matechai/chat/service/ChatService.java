package com.ft.matechai.chat.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.repository.ChatInterface;

@Service
public class ChatService
{
	 private final ChatInterface messageRepository;
    private final SimpMessagingTemplate messagingTemplate;

    public ChatService(ChatInterface messageRepository, SimpMessagingTemplate messagingTemplate) {
        this.messageRepository = messageRepository;
        this.messagingTemplate = messagingTemplate;
    }

    public void sendMessage(String sender, String receiver, String content) {
        ChatMessage message = new ChatMessage(sender, receiver, content, LocalDateTime.now());
        messageRepository.save(message);
        messagingTemplate.convertAndSendToUser(receiver, "/queue/messages", message);
    }
}