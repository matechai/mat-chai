package com.ft.matechai.auth.repository;

import com.ft.matechai.auth.node.VerificationToken;
import org.springframework.data.neo4j.repository.Neo4jRepository;

public interface VerificationTokenRepository extends Neo4jRepository<VerificationToken, String> {

    VerificationToken findByToken(String token);
}
