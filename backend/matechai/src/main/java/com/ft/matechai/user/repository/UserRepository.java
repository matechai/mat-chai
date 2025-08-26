package com.ft.matechai.user.repository;

import com.ft.matechai.user.node.UserNode;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends Neo4jRepository<UserNode, Long> {

    Optional<UserNode> findByUsername(String username);

    @Query("MATCH (a:User {username: $username}) Return a")
    Optional<UserNode> findByUsernameCustom(@Param("username") String username);

    @Query("MATCH (a:User) RETURN a")
    List<UserNode> findAllUsers();
}
