package com.ft.matechai.auth.repository;

import com.ft.matechai.auth.node.PasswordResetToken;
import org.springframework.data.neo4j.repository.Neo4jRepository;

public interface PasswordResetTokenRepository extends Neo4jRepository<PasswordResetToken, String> {

    PasswordResetToken findByToken(String token);
}
