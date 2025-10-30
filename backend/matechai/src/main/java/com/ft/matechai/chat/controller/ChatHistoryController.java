package com.ft.matechai.chat.controller;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.service.ChatHistoryService;
import com.ft.matechai.config.jwt.JwtUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/chat")
public class ChatHistoryController {

    private final ChatHistoryService chatHistoryService;
    private final JwtUtil jwtUtil;

    public ChatHistoryController(ChatHistoryService chatHistoryService, JwtUtil jwtUtil) 
	{
        this.chatHistoryService = chatHistoryService;
        this.jwtUtil = jwtUtil;
    }

    // Get all messages for logged-in user
    @GetMapping("/api/history")
    public ResponseEntity<List<ChatMessage>> getMyChats(@CookieValue("accessToken") String token) 
	{
        String username = jwtUtil.getUsernameFromToken(token);
        return ResponseEntity.ok(chatHistoryService.getAllChatsForUser(username));
    }

    // Get chat with one specific user
    @GetMapping("/api/history/{receiver}")
    public ResponseEntity<List<ChatMessage>> getChatWithUser(
            @CookieValue("accessToken") String token,
            @PathVariable String receiver) {

        String username = jwtUtil.getUsernameFromToken(token);
        return ResponseEntity.ok(chatHistoryService.getChatBetween(username, receiver));
    }
}
