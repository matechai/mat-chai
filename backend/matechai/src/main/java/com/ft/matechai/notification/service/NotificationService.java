package com.ft.matechai.notification.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import com.ft.matechai.notification.model.Notification;
import com.ft.matechai.notification.repository.NotificationRepository;

@Service
public class NotificationService {
	private final NotificationRepository notificationRepository;
	private final SimpMessagingTemplate messagingTemplate;

	public NotificationService(
		NotificationRepository notificationRepository,
		SimpMessagingTemplate messagingTemplate)
	{
		this.notificationRepository = notificationRepository;
		this.messagingTemplate = messagingTemplate;
	}


	public void createAndSendNotification(String sender, String receiver, String type, String message)
	{
		Notification notif = new Notification();
		notif.setSender(sender);
		notif.setReceiver(receiver);
		notif.setType(type);
		notif.setMessage(message);
		notif.setRead(false);
		notif.setCreatedAt(LocalDateTime.now());

		notificationRepository.save(notif);
		messagingTemplate.convertAndSendToUser(receiver,  "/queue/notifications", notif);
	}

	public List<Notification> getUserNotifications(String receiver)
	{
		return notificationRepository.findByReceiverOrderByCreatedAtDesc(receiver);
	}
}
