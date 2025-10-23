package com.ft.matechai.user.node;

import lombok.*;
import org.springframework.data.neo4j.core.schema.*;

import java.util.UUID;

@Node("Tag")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Tag {

    @Id
    private String id = UUID.randomUUID().toString();

    private String name;
}