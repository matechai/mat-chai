package com.ft.matechai.option.repository;

import com.ft.matechai.exception.EntityNotFoundException;
import com.ft.matechai.option.node.Interest;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;


public interface InterestRepository extends Neo4jRepository<Interest, Long> {

    @Query("MATCH (i:Interest {name: $name}) RETURN i")
    Optional<Interest> findByName(@Param("name") String name);

    default Interest findByNameOrThrow(String interest) {
        return findByName(interest)
                .orElseThrow(() -> new EntityNotFoundException("Interest", interest));
    }

    @Query("MERGE (i:Interest {name: $name}) RETURN i")
    void saveIfNotExists(@Param("name") String name);


    @Query("""
        MATCH (u:User {username: $username})-[:INTERESTED_IN]->(i:Interest)
        RETURN i.name
    """)
    List<String> findByUsername(@Param("username") String username);


    @Query("MATCH (i:Interest) RETURN i.name AS name")
    List<String> findAllNames();
}
