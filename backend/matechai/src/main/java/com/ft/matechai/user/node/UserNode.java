package com.ft.matechai.user.node;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.neo4j.core.schema.*;

@Node("User")
@Data
@Builder
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
