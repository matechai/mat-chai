package com.ft.matechai.option.repository;

import com.ft.matechai.exception.EntityNotFoundException;
import com.ft.matechai.option.node.Gender;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.parameters.P;

import java.util.List;
import java.util.Optional;


public interface GenderRepository extends Neo4jRepository<Gender, String> {

    @Query("MATCH (g:Gender {gender: $gender}) RETURN g")
    Optional<Gender> findByGender(@Param("gender") String gender);

    default Gender findByGenderOrThrow(String gender) {
        return findByGender(gender)
                .orElseThrow(() -> new EntityNotFoundException("Gender", gender));
    }

    @Query("""
                MERGE (g:Gender {gender: $gender})
                ON CREATE SET g.id = $id
                RETURN g
            """)
    Gender saveIfNotExists(@Param("gender") String gender, @Param("id") String id);


    @Query("""
        MATCH (u:User {username: $username})-[:HAS_GENDER]->(g:Gender)
        RETURN g.gender
    """)
    String findByUserUsername(@Param("username") String username);


    @Query("MATCH (g:Gender) RETURN g.gender AS gender")
    List<String> findAllNames();
}
