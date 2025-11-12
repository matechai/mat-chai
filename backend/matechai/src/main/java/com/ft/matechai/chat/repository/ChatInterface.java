package com.ft.matechai.chat.repository;

import com.ft.matechai.chat.model.ChatMessage;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import java.util.List;

public interface ChatInterface extends MongoRepository<ChatMessage, String> {

    // All messages between two users (both directions)
    @Query("{ $or: [ " +
           "  { $and: [ {'sender': ?0}, {'receiver': ?1} ] }, " +
           "  { $and: [ {'sender': ?1}, {'receiver': ?0} ] } " +
           "] }")
    List<ChatMessage> findChatBetweenUsers(String user1, String user2);

    // All messages where user is sender or receiver
    @Query("{ $or: [ {'sender': ?0}, {'receiver': ?0} ] }")
    List<ChatMessage> findAllMessagesOfUser(String username);

    // Latest message from sender -> receiver
    ChatMessage findTopBySenderAndReceiverOrderByTimestampDesc(String sender, String receiver);

    // Latest message between two users (either direction)
    @Query(value = "{ $or: [ " +
        "  { $and: [ {'sender': ?0}, {'receiver': ?1} ] }, " +
        "  { $and: [ {'sender': ?1}, {'receiver': ?0} ] } " +
        "] }",
        sort = "{ 'timestamp': -1 }")
    List<ChatMessage> findLastMessageBetweenUsers(String user1, String user2);

    // Find unread messages between sender -> receiver
    @Query("{ 'sender': ?0, 'receiver': ?1, 'read': false }")
    List<ChatMessage> findUnreadMessages(String sender, String receiver);

    // Count unread
    @Query(value = "{ 'sender': ?0, 'receiver': ?1, 'read': false }", count = true)
    long countUnreadMessages(String sender, String receiver);
}
