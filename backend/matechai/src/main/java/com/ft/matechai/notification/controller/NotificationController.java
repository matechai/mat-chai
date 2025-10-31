package com.ft.matechai.notification.controller;

import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.notification.model.Notification;
import com.ft.matechai.notification.service.NotificationService;


@RestController
@RequestMapping("/api/notifications")
public class NotificationController {
	private final NotificationService notificationService;

	public NotificationController(NotificationService notificationService)
	{
		this.notificationService = notificationService;
	}

	
	@GetMapping
	public List<Notification> getUserNotifications(@AuthenticationPrincipal PrincipalDetails principalDetails) {
    	return notificationService.getUserNotifications(principalDetails.getUsername());
    }
}
