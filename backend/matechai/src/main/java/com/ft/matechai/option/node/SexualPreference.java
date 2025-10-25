package com.ft.matechai.option.node;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;


@Node("SexualPreference")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SexualPreference {

    @Id @GeneratedValue
    private Long id;
    private String name;
}
