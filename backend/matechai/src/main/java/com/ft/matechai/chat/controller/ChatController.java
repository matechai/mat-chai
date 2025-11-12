package com.ft.matechai.chat.controller;

import java.security.Principal;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.auth.PrincipalDetails;

import lombok.extern.slf4j.Slf4j;



@Controller
@Slf4j
public class ChatController
{
	private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @MessageMapping("/chat.send/{receiver}")
    public void sendMessage(
        Principal principal,
        @DestinationVariable String receiver,
        @Payload String content) {

    if (principal == null) {
        log.error("[WS] Principal is null!");
        return;
    }

    PrincipalDetails principalDetails = (PrincipalDetails) ((UsernamePasswordAuthenticationToken) principal).getPrincipal();
    log.info("[WS] Sending message from {} to {}: {}", principalDetails.getUser().getUsername(), receiver, content);
    chatService.sendMessage(principalDetails.getUser(), receiver, content);
}

}
