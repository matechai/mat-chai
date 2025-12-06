package com.ft.matechai.option.node;

import lombok.*;
import org.springframework.data.neo4j.core.schema.*;

import java.util.UUID;

@Node("Interest")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Interest {

    @Id
    private String id = UUID.randomUUID().toString();
    private String name;
}
