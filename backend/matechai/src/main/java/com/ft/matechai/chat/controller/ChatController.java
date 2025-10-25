package com.ft.matechai.chat.controller;

<<<<<<< HEAD
=======


>>>>>>> 6744fdc (chat with mongodb)
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;

import org.springframework.stereotype.Controller;

import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.jwt.JwtUtil;



@Controller
public class ChatController
{
	 private final ChatService chatService;
    private final JwtUtil jwtService;

    public ChatController(ChatService chatService, JwtUtil jwtService) {
        this.chatService = chatService;
        this.jwtService = jwtService;
    }

    @MessageMapping("/chat.send/{receiverId}")
    public void sendMessage(@Header("Authorization") String jwt,
                            @DestinationVariable String receiver,
                            @Payload String content) 
    {

        if (jwt == null || !jwt.startsWith("Bearer ")) 
        {
            throw new RuntimeException("JWT missing");
        }
        String sender = jwtService.getUsernameFromToken(jwt);
        chatService.sendMessage(sender, receiver, content);
    }

}
