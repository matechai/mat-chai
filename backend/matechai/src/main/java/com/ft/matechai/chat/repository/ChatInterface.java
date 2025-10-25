

package com.ft.matechai.chat.repository;
import com.ft.matechai.chat.model.ChatMessage;
import org.springframework.data.mongodb.repository.MongoRepository;
import java.util.List;

public interface ChatInterface extends MongoRepository<ChatMessage, String> {
    List<ChatMessage> findBySenderAndReceiver(String sender, String receiverer);
}
