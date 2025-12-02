package com.ft.matechai.auth.repository;

import com.ft.matechai.auth.node.PasswordResetToken;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

public interface PasswordResetTokenRepository extends Neo4jRepository<PasswordResetToken, String> {

    @Query("MATCH (t:PasswordResetToken {token: $token}) RETURN t")
    PasswordResetToken findByToken(@Param("token") String token);
}
