package com.ft.matechai.user.repository;

import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.User;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends Neo4jRepository<User, Long> {

    @Query("MATCH (a:User {username: $username}) Return a")
    Optional<User> findByUsername(@Param("username") String username);

    default User findByUsernameOrThrow(String username) {
        return findByUsername(username)
                .orElseThrow(() -> new AuthExceptions.UnauthorizedException("Invalid username"));
    }

    default User findByIdOrThrow(Long id) {
        return findById(id)
                .orElseThrow(() -> new AuthExceptions.UnauthorizedException("Invalid id"));
    }

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);

    @Query("MATCH (a:User) RETURN a")
    List<User> findAllUsers();
}
