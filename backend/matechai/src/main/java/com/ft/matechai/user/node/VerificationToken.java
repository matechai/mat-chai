package com.ft.matechai.user.node;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;

@Getter
@Setter
@Node
public class VerificationToken {

    @Id
    private String token;

    private Long userId;
}
