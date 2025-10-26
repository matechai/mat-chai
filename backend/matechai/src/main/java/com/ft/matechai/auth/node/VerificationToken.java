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

<<<<<<< HEAD
    private String username;
=======
    private String userId;
>>>>>>> d39a80c (changed User Node ID from Long to String to use the Username as ID)
}
