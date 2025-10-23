package com.ft.matechai.user.node;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;

import java.util.UUID;


@Node("Gender")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Gender {

    @Id
    private String id = UUID.randomUUID().toString();

    private String gender;
}
