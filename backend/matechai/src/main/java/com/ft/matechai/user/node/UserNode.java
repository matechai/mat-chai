package com.ft.matechai.user.node;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.neo4j.core.schema.*;

@Node("User")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserNode {
    @Id @GeneratedValue
    private Long id;

    private String email;

    private String username;

    private String firstName;

    private String lastName;

    private String password;

    private boolean enabled = false;
}
