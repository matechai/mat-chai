package com.ft.matechai.auth.node;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;

@Getter
@Setter
@Node
@NoArgsConstructor
@AllArgsConstructor
public class VerificationToken {

    @Id
    private String token;

    private Long userId;
}
