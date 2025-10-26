package com.ft.matechai.notification.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.config.jwt.JwtUtil;
import com.ft.matechai.notification.model.Notification;
import com.ft.matechai.notification.service.NotificationService;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/notifications")
public class NotificationController {
	private final NotificationService notificationService;
	private final JwtUtil jwtUtil;

	public NotificationController(NotificationService notificationService, JwtUtil jwtUtil)
	{
		this.notificationService = notificationService;
		this.jwtUtil = jwtUtil;
	}

	private String extractUsernameFromCookies(HttpServletRequest request)
	{
		if (request.getCookies() == null) return null;
		for (var cookie: request.getCookies())
		{
			if ("accessToken".equals(cookie.getName())) {
                return jwtUtil.getUsernameFromToken(cookie.getValue());
            }
		}
		throw new RuntimeException("Unauthorized: accessToken missing");
	}

	@GetMapping
	public List<Notification> getUserNotifications(HttpServletRequest request) {
    	String username = extractUsernameFromCookies(request);
    	return notificationService.getUserNotifications(username);
    }
}
