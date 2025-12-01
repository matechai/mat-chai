package com.ft.matechai.chat.repository;

import com.ft.matechai.chat.model.ChatMessage;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class ChatInterface {

    private final MongoTemplate mongoTemplate;

    // Save a message
    public ChatMessage save(ChatMessage message) {
        return mongoTemplate.save(message, "messages");
    }

    // All messages between two users (both directions)
    public List<ChatMessage> findChatBetweenUsers(String user1, String user2) {
        Query query = new Query();
        query.addCriteria(
            new Criteria().orOperator(
                new Criteria().andOperator(
                    Criteria.where("sender").is(user1),
                    Criteria.where("receiver").is(user2)
                ),
                new Criteria().andOperator(
                    Criteria.where("sender").is(user2),
                    Criteria.where("receiver").is(user1)
                )
            )
        );
        return mongoTemplate.find(query, ChatMessage.class, "messages");
    }

    // All messages where user is sender or receiver
    public List<ChatMessage> findAllMessagesOfUser(String username) {
        Query query = new Query();
        query.addCriteria(
            new Criteria().orOperator(
                Criteria.where("sender").is(username),
                Criteria.where("receiver").is(username)
            )
        );
        return mongoTemplate.find(query, ChatMessage.class, "messages");
    }

    // Latest message from sender -> receiver
    public ChatMessage findTopBySenderAndReceiverOrderByTimestampDesc(String sender, String receiver) {
        Query query = new Query();
        query.addCriteria(
            Criteria.where("sender").is(sender)
                .and("receiver").is(receiver)
        );
         query.with(Sort.by(Sort.Direction.DESC, "timestamp"));
        query.limit(1);
        return mongoTemplate.findOne(query, ChatMessage.class, "messages");
    }

    // Latest message between two users (either direction)
    public List<ChatMessage> findLastMessageBetweenUsers(String user1, String user2) {
        Query query = new Query();
        query.addCriteria(
            new Criteria().orOperator(
                new Criteria().andOperator(
                    Criteria.where("sender").is(user1),
                    Criteria.where("receiver").is(user2)
                ),
                new Criteria().andOperator(
                    Criteria.where("sender").is(user2),
                    Criteria.where("receiver").is(user1)
                )
            )
        );
         query.with(Sort.by(Sort.Direction.DESC, "timestamp"));
        query.limit(1);
        return mongoTemplate.find(query, ChatMessage.class, "messages");
    }

    // Find unread messages between sender -> receiver
    public List<ChatMessage> findUnreadMessages(String sender, String receiver) {
        Query query = new Query();
        query.addCriteria(
            Criteria.where("sender").is(sender)
                .and("receiver").is(receiver)
                .and("read").is(false)
        );
        return mongoTemplate.find(query, ChatMessage.class, "messages");
    }

    // Count unread messages
    public long countUnreadMessages(String sender, String receiver) {
        Query query = new Query();
        query.addCriteria(
            Criteria.where("sender").is(sender)
                .and("receiver").is(receiver)
                .and("read").is(false)
        );
        return mongoTemplate.count(query, ChatMessage.class, "messages");
    }

    // Find message by ID
    public ChatMessage findById(String id) {
        return mongoTemplate.findById(id, ChatMessage.class, "messages");
    }

    // Delete message by ID
    public void deleteById(String id) {
        Query query = new Query(Criteria.where("_id").is(id));
        mongoTemplate.remove(query, ChatMessage.class, "messages");
    }
}
