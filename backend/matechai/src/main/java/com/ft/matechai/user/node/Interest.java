package com.ft.matechai.user.node;

import lombok.*;
import org.springframework.data.neo4j.core.schema.*;

@Node("Interest")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Interest {

    @Id @GeneratedValue
    private Long id;
    private String name;
}
