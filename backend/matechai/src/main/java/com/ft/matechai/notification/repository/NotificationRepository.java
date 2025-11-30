package com.ft.matechai.notification.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.ft.matechai.notification.model.Notification;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class NotificationRepository
{
	private final MongoTemplate mongoTemplate;

	// Save a notification
	public Notification save(Notification notification) {
		return mongoTemplate.save(notification, "notification");
	}

	// Find notification by ID
	public Optional<Notification> findById(String id) {
		Notification notification = mongoTemplate.findById(id, Notification.class, "notification");
		return Optional.ofNullable(notification);
	}

	// Fetch notifications for a specific user
	public List<Notification> findByReceiver(String receiver) {
		Query query = new Query(Criteria.where("receiver").is(receiver));
		return mongoTemplate.find(query, Notification.class, "notification");
	}

	// Count unread notifications for a specific user
	public long countByReceiverAndReadFalse(String receiver) {
		Query query = new Query(
			Criteria.where("receiver").is(receiver)
				.and("read").is(false)
		);
		return mongoTemplate.count(query, Notification.class, "notification");
	}

	// Fetch notifications for a specific user, sorted by newest first
	public List<Notification> findByReceiverOrderByCreatedAtDesc(String receiver) {
		Query query = new Query(Criteria.where("receiver").is(receiver));
		query.with(Sort.by(Sort.Direction.DESC, "createdAt"));
		return mongoTemplate.find(query, Notification.class, "notification");
	}

	// Save all notifications (bulk update for marking as read)
	public void saveAll(List<Notification> notifications) {
		for (Notification notification : notifications) {
			mongoTemplate.save(notification, "notification");
		}
	}

	// Update a notification by ID
	public void updateById(String id, Notification notification) {
		Query query = new Query(Criteria.where("_id").is(id));
		Update update = new Update()
			.set("sender", notification.getSender())
			.set("receiver", notification.getReceiver())
			.set("type", notification.getType())
			.set("message", notification.getMessage())
			.set("read", notification.isRead())
			.set("createdAt", notification.getCreatedAt());
		mongoTemplate.updateFirst(query, update, Notification.class, "notification");
	}
}
