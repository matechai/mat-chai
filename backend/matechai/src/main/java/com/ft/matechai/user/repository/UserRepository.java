package com.ft.matechai.user.repository;

import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.User;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;


public interface UserRepository extends Neo4jRepository<User, String> {

    // Find by username
    @Query("MATCH (a:User {username: $username}) Return a")
    Optional<User> findByUsername(@Param("username") String username);

    default User findByUsernameOrThrow(String username) {
        return findByUsername(username)
                .orElseThrow(() -> new AuthExceptions.UnauthorizedException("Invalid username"));
    }

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);


    // Gender
    @Transactional
    @Query("MATCH (u:User {username: $username}), (g:Gender {gender: $gender}) " +
            "MERGE (u)-[:HAS_GENDER]->(g)")
    void setGender(@Param("username") String username,
                   @Param("gender") String gender);

    @Transactional
    @Query("""
            MATCH (u:User {username: $username})-[r:HAS_GENDER]->(g:Gender)
            DELETE r
            """)
    void removeGender(@Param("username") String username);


    // Sexual Preference
    @Transactional
    @Query("MATCH (u:User {username: $username}), (s:SexualPreference {name: $prefName}) " +
            "MERGE (u)-[:HAS_PREFERENCE]->(s)")
    void addSexualPreference(@Param("username") String username,
                             @Param("prefName") String prefName);

    @Transactional
    @Query("""        
           MATCH (u:User {username: $username})-[r:HAS_PREFERENCE]->(s:SexualPreference)
           WHERE NOT s.name IN $newPrefs
           DELETE r
           """)
    void removeStaleSexualPreferences(@Param("username") String username,
                                      @Param("newPrefs") List<String> newPrefs);


    // Interest
    @Transactional
    @Query("MATCH (u:User {username: $username}), (i:Interest {name: $interestName}) " +
            "MERGE (u)-[:INTERESTED_IN]->(i)")
    void addInterest(@Param("username") String username,
                     @Param("interestName") String interestName);

    @Transactional
    @Query("""
            MATCH (u:User {username: $username})-[r:INTERESTED_IN]->(i:Interest)
            WHERE NOT i.name IN $newInterests
            DELETE r
            """)
    void removeStaleInterests(@Param("username") String username,
                              @Param("newInterests") List<String> newInterests);

    // Like
    @Transactional
    @Query ("""
                MATCH (a:User {username: $username})-[:LIKED]->(b:User {username: $targetUsername})
                RETURN a, b
            """)
    void like(@Param("username") String username,
              @Param("targetUsername") String targetUsername);



    @Query("MATCH (a:User) RETURN a")
    List<User> findAllUsers();
}