package com.ft.matechai.database;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface UserRepository extends Neo4jRepository<User, Long> {
    // Custom query if you want explicit control
    @Query("CREATE (u:User {name: $name, age: $age}) RETURN u")
    User createUser(String name, int age);
    @Query("MATCH (u:User {name: $name}) DETACH DELETE u")
    void deleteByName(String name);
}
