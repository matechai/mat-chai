package com.ft.matechai.chat.repository;

import com.ft.matechai.chat.document.Chat;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface ChatRepository extends MongoRepository<Chat, UUID> {

    List<Chat> findChatByParticipant(String username);

    @Query("{ 'participants': { $all: [?0, ?1] }, 'participants': { $size: 2 } }")
    Optional<Chat> findDirectChat(String user1, String user2);
}
