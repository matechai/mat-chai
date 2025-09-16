package com.ft.matechai.database;

import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;

public interface UserRepository extends Neo4jRepository<User, Long> {
	@Query("MATCH (u:User {id: $id}) DETACH DELETE u")
	void deleteById(Long id);
}
