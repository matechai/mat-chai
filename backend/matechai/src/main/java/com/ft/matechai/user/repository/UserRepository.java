package com.ft.matechai.user.repository;

import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.UserNode;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends Neo4jRepository<UserNode, Long> {

    @Query("MATCH (a:User {username: $username}) Return a")
    Optional<UserNode> findByUsername(@Param("username") String username);

    default UserNode findByUsernameOrThrow(String username) {
        return findByUsername(username)
                .orElseThrow(() -> new AuthExceptions.UnauthorizedException("Invalid username"));
    }

    default UserNode findByIdOrThrow(Long id) {
        return findById(id)
                .orElseThrow(() -> new AuthExceptions.UnauthorizedException("Invalid id"));
    }

    @Query("MATCH (a:User) RETURN a")
    List<UserNode> findAllUsers();
}
