package com.ft.matechai.user.node;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.neo4j.core.schema.*;

@Node("User")
@Getter
@Setter
public class UserNode {
    @Id @GeneratedValue
    private Long id;

     private String username;

    private String email;
}
