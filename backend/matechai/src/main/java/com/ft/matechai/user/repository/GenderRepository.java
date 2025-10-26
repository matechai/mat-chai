package com.ft.matechai.user.repository;

import com.ft.matechai.user.node.Gender;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface GenderRepository extends Neo4jRepository<Gender, String > {


    @Query("MERGE (g:Gender {gender: $gender}) RETURN g")
    void saveIfNotExists(String gender);
}
