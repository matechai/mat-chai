package com.ft.matechai.chat.service;

import java.time.LocalDateTime;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.repository.ChatInterface;
import com.ft.matechai.notification.enums.NotificationType;
import com.ft.matechai.notification.service.NotificationService;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;

@Service
public class ChatService
{
	private final ChatInterface messageRepository;
    private final SimpMessagingTemplate messagingTemplate;
    private final UserRepository userRepository;
    private final NotificationService notificationService;

    public ChatService(ChatInterface messageRepository, SimpMessagingTemplate messagingTemplate, 
                        UserRepository userRepository, NotificationService notificationService) {
        this.messageRepository = messageRepository;
        this.messagingTemplate = messagingTemplate;
        this.userRepository = userRepository;
        this.notificationService = notificationService;
    }

    public void sendMessage(User sender, String receiverUsername, String content) 
    {
        User receiver = userRepository.findByUsernameOrThrow(receiverUsername);
        ChatMessage message = new ChatMessage(sender.getUsername(), receiver.getUsername(), content, LocalDateTime.now());
        messageRepository.save(message);
        messagingTemplate.convertAndSendToUser(receiver.getUsername(), "/queue/messages", message);
        String notifyMessage = "you got a message from " + sender.getUsername();
        if (!userRepository.isBlocked(receiverUsername, sender.getUsername()))
            notificationService.createAndSendNotification(sender.getUsername(), receiverUsername, NotificationType.CHAT, notifyMessage);
    }
}