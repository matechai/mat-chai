package com.ft.matechai.notification.service;

import com.ft.matechai.user.repository.UserRepository;

import jakarta.transaction.Transactional;

public class UserInteractionService {

	private final UserRepository userRepository;
	private final NotificationService notificationService;

	public UserInteractionService(UserRepository userRepository, NotificationService notificationService)
	{
		this.notificationService = notificationService;
		this.userRepository = userRepository;
	}

	@Transactional
	public void likeUser(String sender, String receiver)
	{
		// Save Liked relationship in neo4j
		userRepository.addLikeRelation(sender, receiver);

		boolean isMutual = userRepository.existsLikeRelation(receiver, sender);

		if (isMutual)
		{
			notificationService.createAndSendNotification(sender, receiver, "MATCH", "You matched with " + receiver );
			notificationService.createAndSendNotification(receiver, sender, "MATCH", "You matched with " + sender);
		}
		else
			notificationService.createAndSendNotification(sender, receiver, "LIKE", sender + " liked your profile");
	}

	@Transactional
	public void unlikeUser(String sender, String receiver)
	{
		userRepository.removeLikeRelation(sender, receiver);
		notificationService.createAndSendNotification(sender, receiver, "UNLIKE", sender + " unliked your profile ");
	}
	
	@Transactional
    public void viewProfile(String viewer, String viewed) {
        userRepository.addViewRelation(viewer, viewed);
        notificationService.createAndSendNotification(viewer, viewed, "VIEW", viewer + " viewed your profile");
    }
}
