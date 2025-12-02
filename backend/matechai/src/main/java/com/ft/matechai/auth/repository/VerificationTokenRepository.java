package com.ft.matechai.auth.repository;

import com.ft.matechai.auth.node.VerificationToken;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

public interface VerificationTokenRepository extends Neo4jRepository<VerificationToken, String> {

    @Query("MATCH (v:VerificationToken {token: $token}) RETURN v")
    VerificationToken findByToken(@Param("token") String token);
}
