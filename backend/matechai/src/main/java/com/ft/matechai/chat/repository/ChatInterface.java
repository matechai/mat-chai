

package com.ft.matechai.chat.repository;
import com.ft.matechai.chat.model.ChatMessage;
import org.springframework.data.mongodb.repository.MongoRepository;
import java.util.List;

public interface ChatInterface extends MongoRepository<ChatMessage, String> 
{
    
    // all messages between two users (both directions)
    List<ChatMessage> findBySenderAndReceiverOrReceiverAndSender(String sender1, String receiver1, String sender2, String receiver2);
    List<ChatMessage> findBySenderAndReceiver(String sender, String receiverer);

}
