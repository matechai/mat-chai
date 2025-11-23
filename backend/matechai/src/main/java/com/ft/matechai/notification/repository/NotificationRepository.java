package com.ft.matechai.notification.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ft.matechai.notification.model.Notification;

public interface NotificationRepository extends MongoRepository<Notification, String>
{
	// // Fetch notifications for a specific user, sorted by newest first
    // List<Notification> findByReceiverOrderByCreatedAtDesc(String receiver);

    // // Optional: fetch only unread notifications
    // List<Notification> findByReceiverAndReadFalseOrderByCreatedAtDesc(String receiver);
    List<Notification> findByReceiver(String receiver);
    long countByReceiverAndReadFalse(String receiver);

    List<Notification> findByReceiverOrderByCreatedAtDesc(String receiver);
}
