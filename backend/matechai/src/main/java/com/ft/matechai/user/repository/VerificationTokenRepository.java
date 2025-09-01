package com.ft.matechai.user.repository;

import com.ft.matechai.user.node.VerificationToken;
import org.springframework.data.neo4j.repository.Neo4jRepository;

public interface VerificationTokenRepository extends Neo4jRepository<VerificationToken, String> {

    VerificationToken findByToken(String token);
}
