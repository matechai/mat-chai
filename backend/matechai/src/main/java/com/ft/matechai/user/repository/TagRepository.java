package com.ft.matechai.user.repository;

import com.ft.matechai.user.node.Tag;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface TagRepository extends Neo4jRepository<Tag, String> {

    @Query("MERGE (t:Tag {name: $name}) RETURN t")
    void saveIfNotExists(String name);
}
