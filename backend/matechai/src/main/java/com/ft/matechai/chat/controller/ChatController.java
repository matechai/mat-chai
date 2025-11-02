package com.ft.matechai.chat.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;

import com.ft.matechai.auth.service.AuthService;
import com.ft.matechai.chat.dto.ChatMessageDto;
import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.config.jwt.JwtUtil;



@Controller
public class ChatController
{
	private final ChatService chatService;
    private final JwtUtil jwtUtil;

    public ChatController(ChatService chatService, JwtUtil jwtUtil) {
        this.chatService = chatService;
        this.jwtUtil = jwtUtil;
    }

    public void sendMessage(@Header("Authorization") String jwt,
                            @DestinationVariable String receiver,
                            @Payload String content) 
    {

        if (jwt == null || !jwt.startsWith("Bearer ")) 
        {
            throw new RuntimeException("JWT missing");
        }
        String sender = jwtUtil.getUsernameFromToken(jwt);
        chatService.sendMessage(sender, receiver, content);
    }

    // @MessageMapping("/chat.send/{receiver}")
    // public void sendMessage(@AuthenticationPrincipal PrincipalDetails principalDetails,
    //                     @DestinationVariable String receiver,
    //                     @Payload ChatMessageDto payload)  
    // {
    //     chatService.sendMessage(principalDetails.getUser(), receiver, payload.getContent());
    // }

}
