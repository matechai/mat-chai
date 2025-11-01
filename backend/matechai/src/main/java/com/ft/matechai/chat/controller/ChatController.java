package com.ft.matechai.chat.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;

import com.ft.matechai.chat.dto.ChatMessageDto;
import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.auth.PrincipalDetails;



@Controller
public class ChatController
{
	private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @MessageMapping("/chat.send/{receiver}")
    public void sendMessage(@AuthenticationPrincipal PrincipalDetails principalDetails,
                        @DestinationVariable String receiver,
                        @Payload ChatMessageDto payload)  
    {
        chatService.sendMessage(principalDetails.getUser(), receiver, payload.getContent());
    }

}
