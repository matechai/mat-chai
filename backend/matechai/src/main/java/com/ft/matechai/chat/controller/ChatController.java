package com.ft.matechai.chat.controller;

import com.ft.matechai.chat.document.Chat;
import com.ft.matechai.chat.service.ChatService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/chat")
@CrossOrigin(origins = "*")
public class ChatController {

    private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

	// GETTERS // GETTERS // GETTERS // GETTERS //

    // get all chats that a user participates in
    @GetMapping("/user/{username}")
    public List<Chat> getChatsForUser(@PathVariable String username) {
        return chatService.getChatsForUser(username);
    }

    // get an existing direct chat between two users
    @GetMapping("/direct")
    public Optional<Chat> getDirectChat(@RequestParam String user1, @RequestParam String user2) {
        return chatService.findDirectChat(user1, user2);
    }

	// SETTERS // SETTERS // SETTERS // SETTERS //

    // create a new chat, should work for group chat and direct chat
    @PostMapping
    public Chat createChat(@RequestBody List<String> participants) {
        return chatService.createChat(participants);
    }

    // gets a direct chat between two users, if it doesn' exist it creates it
    @PostMapping("/direct")
    public Chat findOrCreateDirectChat(@RequestParam String user1, @RequestParam String user2) {
        return chatService.findOrCreateDirectChat(user1, user2);
    }

    // sends a message to a chat
    @PostMapping("/{chatId}/message")
    public Chat addMessage(@PathVariable UUID chatId, @RequestBody Map<String, String> payload) {
        String sender = payload.get("sender");
        String content = payload.get("content");
        if (sender == null || content == null) {
            throw new IllegalArgumentException("Missing sender or content in request");
        }

        return chatService.addMessage(chatId, sender, content);
    }
}
