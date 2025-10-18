package com.ft.matechai.config.socket;

import org.springframework.context.event.EventListener;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

import com.ft.matechai.chat.enums.MessageType;
import com.ft.matechai.chat.nodes.ChatMessage;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

// @Component
// @Slf4j
// @RequiredArgsConstructor
// public class WebSocketEventListener {
//     private final SimpMessageSendingOperations messageTemplate;

//     @EventListener
//     public void handleWebSocketDisconnect(SessionDisconnectEvent event) {
//         StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
//         String username = (String) headerAccessor.getSessionAttributes().get("username");
//         if (username != null) {
//             log.info("User disconnected: {}", username);
//             // ChatMessage chatMessage = new ChatMessage(username, MessageType.LEAVE);
//             messageTemplate.convertAndSend("/topic/public", chatMessage);
//         }
//     }
// }