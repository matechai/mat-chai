package com.ft.matechai.user.repository;

import com.ft.matechai.exception.EntityNotFoundException;
import com.ft.matechai.user.node.SexualPreference;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;


public interface SexualPreferenceRepository extends Neo4jRepository<SexualPreference, Long> {

    @Query("MATCH (s:SexualPreference {name: $name}) RETURN s")
    Optional<SexualPreference> findBySexualPreference(@Param("name") String name);

    default SexualPreference findByNameOrThrow(String name) {
        return findBySexualPreference(name)
                .orElseThrow(() -> new EntityNotFoundException("Sexual Preference", name));
    }

    @Query("MERGE (s:SexualPreference {name: $name}) RETURN s")
    void saveIfNotExists(@Param("name") String name);


    @Query("""
        MATCH (u:User {username: $username})-[:HAS_PREFERENCE]->(s:SexualPreference)
        RETURN s.name
    """)
    List<String> findByUserUsername(@Param("username") String username);


    @Query("MATCH (s:SexualPreference) RETURN s.name AS name")
    List<String> findAllNames();
}
