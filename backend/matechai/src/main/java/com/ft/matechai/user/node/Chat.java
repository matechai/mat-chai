package com.ft.matechai.user.node;

import org.springframework.data.neo4j.core.schema.*;
import org.springframework.data.annotation.Id;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ft.matechai.user.model.Message;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Node("Chat")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Chat {

    @Id @GeneratedValue
    private UUID id;

    private String name;

    @Builder.Default
    private boolean isGroupChat = false;

    private LocalDateTime createdAt;

    private LocalDateTime lastActivity;

    @Builder.Default
    private List<Message> history = new ArrayList<>(); 

    @Builder.Default
    private List<String>  = new ArrayList<>(); 

}