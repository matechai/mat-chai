package com.ft.matechai.chat.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.auth.PrincipalDetails;



@Controller
public class ChatController
{
	private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @MessageMapping("/chat.send/{receiverId}")
    
    public void sendMessage(@AuthenticationPrincipal PrincipalDetails principalDetails,
                            @DestinationVariable String receiver,
                            @Payload String content) 
    {
        chatService.sendMessage(principalDetails.getUser(), receiver, content);
    }

}
