package com.ft.matechai.chat.document;

import com.ft.matechai.chat.model.Message;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.annotation.Id;
import lombok.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Document(collection = "chats")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Chat {

    @Id@Generated
    private UUID id;

    private List<String> participants;

    @Builder.Default
    private List<Message> messages = new ArrayList<>();

    @Builder.Default
    private LocalDateTime createdAt = LocalDateTime.now();

}
