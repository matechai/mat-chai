

package com.ft.matechai.chat.repository;
import com.ft.matechai.chat.model.ChatMessage;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Sort;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;


public interface ChatInterface extends MongoRepository<ChatMessage, String> 
{
    // All messages between two users (both directions)
    @Query("{ $or: [ " +
           "  { $and: [ {'sender': ?0}, {'receiver': ?1} ] }, " +
           "  { $and: [ {'sender': ?1}, {'receiver': ?0} ] } " +
           "] }")
    List<ChatMessage> findChatBetweenUsers(String user1, String user2);

    // Optional: fetch all messages where the user is sender or receiver (used for partners list)
    @Query("{ $or: [ {'sender': ?0}, {'receiver': ?0} ] }")
    List<ChatMessage> findAllMessagesOfUser(String username);
}
