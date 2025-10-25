package com.ft.matechai.user.node;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;


@Node("Gender")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Gender {

    @Id @GeneratedValue
    private Long id;
    private String gender;
}
