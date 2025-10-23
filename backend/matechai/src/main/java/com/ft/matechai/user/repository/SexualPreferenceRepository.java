package com.ft.matechai.user.repository;

import com.ft.matechai.user.node.SexualPreference;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface SexualPreferenceRepository extends Neo4jRepository<SexualPreference, String> {

    @Query("MERGE (s:SexualPreference {sexualPreference: $sexualPreference}) RETURN s")
    void saveIfNotExists(String sexualPreference);
}
