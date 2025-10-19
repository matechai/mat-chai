package com.ft.matechai.chat.controller;

<<<<<<< HEAD
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;

import org.springframework.stereotype.Controller;
=======
<<<<<<< HEAD
<<<<<<< HEAD
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
=======
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
>>>>>>> f04d151 (aded chat with redis)
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.service.ChatService;
>>>>>>> 4c70422 (added chat module with redis)

import com.ft.matechai.chat.service.ChatService;
import com.ft.matechai.config.jwt.JwtUtil;

<<<<<<< HEAD


@Controller
public class ChatController
{
	 private final ChatService chatService;
    private final JwtUtil jwtService;

    public ChatController(ChatService chatService, JwtUtil jwtService) {
        this.chatService = chatService;
        this.jwtService = jwtService;
    }
=======
@RestController
<<<<<<< HEAD
// @RequiredArgsConstructor
=======
@RequestMapping
>>>>>>> f04d151 (aded chat with redis)
@Slf4j
// @RequestMapping("/api/chat")
public class ChatController
{
	private final ChatService chatService;
	
	@Autowired
	public ChatController(ChatService chatService)
	{
		this.chatService = chatService;
	}

	@PostMapping("/send")
	public void sendMessage(@RequestBody ChatMessage message)
	{
		chatService.sendMessage(message);
	}

	@GetMapping("/history")
	public List<ChatMessage> getHistory(@RequestParam String user1, @RequestParam String user2)
	{
		return chatService.getChatHistory(user1, user2);
	}
	// private final SimpMessagingTemplate messageTemplate;

	// @MessageMapping("/chat.sendMessage")
	// @SendTo("/topic/public")
	// public void sendMessage(@Payload ChatMessage chatMessage)
	// {
		// 	log.info("send messge form {} to {}: {}",
		// 			chatMessage.getSender(),
		// 			chatMessage.getReceiver(),
		// 			chatMessage.getContent());
		
		// 	messageTemplate.convertAndSendToUser(
			// 		chatMessage.getReceiver(),
			// 		"/queue/messages",
			// 		chatMessage);
			// 	// return chatMessage;
			// }
			
	// @PostMapping("/send")
	// public void sendMessage(@RequestBody ChatMessage chatMessage)
	// {
	// 	log.info("message info -> {}, {}", chatMessage.getSender(), chatMessage.getContent());
	// 	messageTemplate.convertAndSend("/queue" + chatMessage.getReceiver(), chatMessage);
	// }
>>>>>>> 4c70422 (added chat module with redis)

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

<<<<<<< HEAD
}
=======
<<<<<<< HEAD
	@MessageMapping("/chat.addUser")
	public void addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor)
	{
		headerAccessor.getSessionAttributes().put("username", chatMessage.get_sender());
	}
=======
>>>>>>> f04d151 (aded chat with redis)
}
>>>>>>> 4c70422 (added chat module with redis)
