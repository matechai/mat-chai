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

    //changes + tests to read notifications
    @PatchMapping("/{notificationId}/read")
    public ResponseEntity<Void> markAsRead(
            @AuthenticationPrincipal PrincipalDetails principalDetails,
            @PathVariable String notificationId) {
        notificationService.markAsRead(notificationId, principalDetails.getUsername());
        return ResponseEntity.ok().build();
    }

    @PatchMapping("/read-all")
    public ResponseEntity<Void> markAllAsRead(@AuthenticationPrincipal PrincipalDetails principalDetails) {
        notificationService.markAllAsRead(principalDetails.getUsername());
        return ResponseEntity.ok().build();
    }

    @GetMapping("/unread-count")
    public ResponseEntity<Long> getUnreadCount(@AuthenticationPrincipal PrincipalDetails principalDetails) {
        return ResponseEntity.ok(notificationService.getUnreadCount(principalDetails.getUsername()));
    }
}
