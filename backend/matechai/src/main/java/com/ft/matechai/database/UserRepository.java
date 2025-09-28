package com.ft.matechai.database;

import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface UserRepository extends Neo4jRepository<User, String> {
	@Query("MATCH (u:User {id: $id}) DETACH DELETE u")
	void deleteById(String id);

	Page<User> findAll(Pageable pageable);

	@Query("MATCH (liker:User)-[:Liked]->(u:User {id: $id}) RETURN liker.id")
    Set<String> findLikersIds(String id);

    @Query("MATCH (viewer:User)-[:Viewed]->(u:User {id: $id}) RETURN viewer.id")
    Set<String> findViewersIds(String id);
}
