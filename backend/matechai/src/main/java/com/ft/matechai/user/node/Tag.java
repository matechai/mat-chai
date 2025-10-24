package com.ft.matechai.user.node;

import lombok.*;
import org.springframework.data.neo4j.core.schema.*;

@Node("Tag")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Tag {

    @Id @GeneratedValue
    private Long id;
    private String name;
}
