package com.ft.matechai.notification.model;

import java.time.LocalDateTime;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Document(collection = "notification")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notification
{
	@Id
	private String id;
	private String sender;
	private String receiver;
	private String type;
	private String message;
	private boolean read;
	private LocalDateTime createdAt;

}

