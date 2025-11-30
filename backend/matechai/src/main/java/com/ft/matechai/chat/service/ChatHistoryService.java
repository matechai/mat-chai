package com.ft.matechai.chat.service;

import com.ft.matechai.chat.dto.ChatPartnerDto;
import com.ft.matechai.chat.model.ChatMessage;
import com.ft.matechai.chat.repository.ChatInterface;
import com.ft.matechai.match.service.MatchService;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.*;

@Service
@RequiredArgsConstructor
public class ChatHistoryService {

    private final MatchService matchService;
    private final ChatInterface chatRepository;
    private final UserRepository userRepository;
    private final MongoTemplate mongoTemplate;

    /**
     * Returns all matched users for the current user,
     * including last message info and unread state.
     */
    public List<ChatPartnerDto> getChatPartners(User currentUser) {
        List<User> matchedUsers = matchService.getMatchedUsers(currentUser);
        List<ChatPartnerDto> partners = new ArrayList<>();

        for (User partner : matchedUsers) {
            // Fetch the last message (in either direction) using raw query
            List<ChatMessage> lastMessages = chatRepository.findLastMessageBetweenUsers(
                    currentUser.getUsername(),
                    partner.getUsername()
            );

            ChatPartnerDto dto = new ChatPartnerDto();
            dto.setUsername(partner.getUsername());

            if (!lastMessages.isEmpty()) {
                ChatMessage lastMessage = lastMessages.get(0); // since we sorted desc by timestamp

                dto.setLastMessage(lastMessage.getContent());
                dto.setLastMessageTime(lastMessage.getTimestamp());
                dto.setUnread(!lastMessage.isRead() && lastMessage.getReceiver().equals(currentUser.getUsername()));
                dto.setNew(false);
            } else {
                // no chat yet between these users
                dto.setLastMessage(null);
                dto.setLastMessageTime(null);
                dto.setUnread(false);
                dto.setNew(true);
            }

            partners.add(dto);
        }

        // sort by last message time (newest chats first)
        partners.sort((a, b) -> {
            if (a.getLastMessageTime() == null && b.getLastMessageTime() == null) return 0;
            if (a.getLastMessageTime() == null) return 1;
            if (b.getLastMessageTime() == null) return -1;
            return b.getLastMessageTime().compareTo(a.getLastMessageTime());
        });

        return partners;
    }

    /**
     * Returns the full chat history between current user and receiver.
     */
    public List<ChatMessage> getChatBetween(User currentUser, String receiverUsername) {
        return chatRepository.findChatBetweenUsers(currentUser.getUsername(), receiverUsername);
    }

    /**
     * Marks all unread messages from the partner as read
     * when the current user opens the chat using raw MongoDB query.
     */
    public void markMessagesAsRead(User currentUser, String partnerUsername) {
        Query query = new Query();
        query.addCriteria(
            Criteria.where("sender").is(partnerUsername)
                .and("receiver").is(currentUser.getUsername())
                .and("read").is(false)
        );

        Update update = new Update().set("read", true);
        mongoTemplate.updateMulti(query, update, ChatMessage.class, "messages");
    }
}
