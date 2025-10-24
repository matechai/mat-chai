package com.ft.matechai.user.repository;

import com.ft.matechai.exception.EntityNotFoundException;
import com.ft.matechai.user.node.Tag;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;


public interface TagRepository extends Neo4jRepository<Tag, Long> {

    @Query("MATCH (t:Tag {name: $name}) RETURN t")
    Optional<Tag> findByTag(@Param("name") String name);

    default Tag findByTagOrThrow(String tag) {
        return findByTag(tag)
                .orElseThrow(() -> new EntityNotFoundException("Tag", tag));
    }

    @Query("MERGE (t:Tag {name: $name}) RETURN t")
    void saveIfNotExists(@Param("name") String name);


    @Query("""
        MATCH (u:User {username: $username})-[:INTERESTED_IN]->(t:Tag)
        RETURN t.name
    """)
    List<String> findByUserUsername(@Param("username") String username);
}
