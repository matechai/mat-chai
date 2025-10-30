package com.ft.matechai.chat.controller;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.service.ChatHistoryService;
import com.ft.matechai.config.auth.PrincipalDetails;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/chat")
public class ChatHistoryController {

    private final ChatHistoryService chatHistoryService;

    public ChatHistoryController(ChatHistoryService chatHistoryService) 
	{
        this.chatHistoryService = chatHistoryService;
    }

    // Get all messages for logged-in user
    @GetMapping("/history")
    public ResponseEntity<List<ChatMessage>> getMyChats(@AuthenticationPrincipal PrincipalDetails principalDetails) 
	{

        List<ChatMessage> response = chatHistoryService.getAllChatsForUser(principalDetails.getUser());
        return ResponseEntity.ok(response);
    }

    // Get chat with one specific user
    @GetMapping("/history/{receiver}")
    public ResponseEntity<List<ChatMessage>> getChatWithUser(
            @AuthenticationPrincipal PrincipalDetails principalDetails,
            @PathVariable String receiverUsername) {

        return ResponseEntity.ok(chatHistoryService.getChatBetween(principalDetails.getUser(), receiverUsername));
    }
}
