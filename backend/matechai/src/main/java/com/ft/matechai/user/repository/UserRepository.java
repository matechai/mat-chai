package com.ft.matechai.user.repository;

import com.ft.matechai.admin.dto.BanResponseDTO;
import com.ft.matechai.admin.dto.ReportResponseDTO;
import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
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
    void setSexualPreference(@Param("username") String username,
                             @Param("prefName") String prefName);

    @Transactional
    @Query("""        
               MATCH (u:User {username: $username})-[r:HAS_PREFERENCE]->(s:SexualPreference)
               DELETE r
           """)
    void removeStaleSexualPreference(@Param("username") String username);


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
                MATCH (a:User {username: $username})
                MATCH (b:User {username: $targetUsername})
                MERGE (a)-[l:LIKED]->(b)
                SET l.likedAt = timestamp()
            """)
    void like(@Param("username") String username,
              @Param("targetUsername") String targetUsername);

    @Query ("""
                MATCH (me:User {username: $username})-[r:LIKED]->(target:User {username: $targetUsername})
                RETURN COUNT(r) > 0 AS isLiked
            """)
    boolean isLiked(@Param("username") String username,
                    @Param("targetUsername") String targetUsername);


    // Pass
    @Transactional
    @Query ("""
                MATCH (a:User {username: $username})
                MATCH (b:User {username: $targetUsername})
                MERGE (a)-[:PASSED]->(b)
            """)
    void pass(@Param("username") String username,
              @Param("targetUsername") String targetUsername);


    @Transactional
    @Query ("""
                MATCH (a:User {username:$username})
                MATCH (b:User {username:$targetUsername})
                MERGE (a)-[:MATCHED]->(b)
            """)
    void match(@Param("username") String username,
               @Param("targetUsername") String targetUsername);

    @Query ("""
                MATCH (u1:User {username: $username})-[r:MATCHED]-(u2:User {username: $targetUsername})
                RETURN COUNT(r) > 0
            """)
    boolean isMatched(@Param("username") String username,
                      @Param("targetUsername") String targetUsername);


    // Checks if a MATCHED relationship exists between two users
    @Query ("""
                MATCH (a:User {username:$username})-[:LIKED]->(b:User {username:$targetUsername}),
                (b)-[:LIKED]->(a)
                RETURN count(b) > 0 AS isMatched
            """)
    boolean isLikedBetween(@Param("username") String username,
                           @Param("targetUsername") String targetUsername);


    @Query ("""
                MATCH (a:User {username:$username})-[r:LIKED]->(b:User {username:$targetUsername})
                DELETE r
            """)
    void deleteLike(@Param("username") String username,
                    @Param("targetUsername") String targetUsername);


    @Query ("""
                MATCH (a:User {username:$username})-[:MATCHED]-(b:User {username:$targetUsername})
                RETURN count(b) > 0
            """)
    boolean isMatchBetween(@Param("username") String username,
                           @Param("targetUsername") String targetUsername);


    @Query ("""
                MATCH (a:User {username:$username})-[r: MATCHED]-(b:User {username:$targetUsername})
                DELETE r
            """)
    void deleteMatch(@Param("username") String username,
                     @Param("targetUsername") String targetUsername);


    @Query ("""
                MATCH (a:User {username: $username})
                MATCH (b:User {username: $targetUsername})
                MERGE (a)-[:BLOCKED]->(b)
            """)
    void block(@Param("username") String username,
               @Param("targetUsername") String targetUsername);

    @Query ("""                
                MATCH (reporter:User {username: $reporter})
                MATCH (target:User {username: $target})
                MERGE (reporter)-[r:REPORTED {reason: $reason, createdAt: datetime()}]->(target)
            """)
    void report(@Param("reporter") String reporterUsername,
                @Param("target") String targetUsername,
                @Param("reason") String reason);

    @Query ("""
                MATCH (r:User)-[rep:REPORTED]->(u:User)
                RETURN u.username AS username, count(rep) AS reportCount, collect(rep.reason) AS reasons
                ORDER BY reportCount DESC
            """)
    List<ReportResponseDTO> getReportedUsers();

    @Query ("""
                MATCH (u:User {username: $username})
                SET u.isBanned = true
                RETURN u.username AS username, u.isBanned AS isBanned
            """)
    BanResponseDTO ban(@Param("username") String username);

    @Query ("""
                MATCH (u:User {username: $username})
                SET u.isBanned = false
                RETURN u.username AS username, u.isBanned AS isBanned
            """)
    BanResponseDTO unban(@Param("username") String username);

    @Query("""
               MATCH (u:User)
               WHERE u.isBanned = true
               RETURN u.username AS username, u.isBanned AS isBanned
           """)
    List<BanResponseDTO> getBannedUsers();

    // View
    @Transactional
    @Query ("""
                MATCH (viewer:User {username: $username})
                MATCH (target:User {username: $targetUsername})
                MERGE (viewer)-[v:VIEWED]->(target)
                SET v.viewedAt = timestamp()
            """)
    void view(@Param("username") String username,
              @Param("targetUsername") String targetUsername);

    @Query (
            value = """
                        MATCH (viewer:User)-[v:VIEWED]->(me:User {username: $username})
                        RETURN viewer, v.viewedAt AS viewedAt
                        ORDER BY v.viewedAt DESC
                    """,
            countQuery = """
                            MATCH (viewer:User)-[v:VIEWED]->(me:User {username: $username})
                            RETURN count(viewer)
                         """
    )
    Page<User> findViewersByUserId(@Param("username") String username, Pageable pageable);

    // Check if a user has blocked another user
    @Query("""
        MATCH (a:User {username: $username})-[:BLOCKED]->(b:User {username: $targetUsername})
        RETURN count(b) > 0
        """)
    boolean isBlocked(@Param("username") String username,
                  @Param("targetUsername") String targetUsername);


    @Query(
            value = """
                        MATCH (me:User {username: $username})
                        MATCH (u:User)
                        WHERE NOT (me)-[:BLOCKED]->(u)
                          AND NOT (u)-[:BLOCKED]->(me)
                          AND NOT (me)-[:LIKED]->(u)
                          AND NOT (me)-[:MATCHED]->(u)
                          AND NOT (me)-[:PASSED]->(u)
                          AND (u.isBanned IS NULL OR u.isBanned = false)
                          AND u.username <> me.username
                          AND (date().year - u.dateOfBirth.year) >= $minAge
                          AND (date().year - u.dateOfBirth.year) <= $maxAge
                          AND u.fame >= $minFame
                          AND u.fame <= $maxFame
                        WITH me, u,
                          point({longitude: me.longitude, latitude: me.latitude}) AS mePoint,
                          point({longitude: u.longitude, latitude: u.latitude}) AS uPoint
                        WHERE round(point.distance(mePoint, uPoint)) <= $distance * 1000
                        OPTIONAL MATCH (u)-[:INTERESTED_IN]->(uInterest:Interest)
                        WITH me, u, collect(DISTINCT uInterest.name) AS uInterests
                        WHERE $interests IS NULL OR ANY(i IN uInterests WHERE i IN $interests)
                        WITH me, u
                        OPTIONAL MATCH (me)-[:HAS_GENDER]->(meGender:Gender)
                        OPTIONAL MATCH (u)-[:HAS_GENDER]->(uGender:Gender)
                        OPTIONAL MATCH (me)-[:HAS_PREFERENCE]->(mePref:SexualPreference)
                        OPTIONAL MATCH (u)-[:HAS_PREFERENCE]->(uPref:SexualPreference)
                        WITH me, u, meGender, uGender,
                             collect(DISTINCT mePref.name) AS myPrefs,
                             collect(DISTINCT uPref.name) AS uPrefs
                        WHERE
                          size(myPrefs) = 0 OR
                          (
                            ('Heterosexual' IN myPrefs) AND (
                              (meGender.gender = 'Male' AND uGender.gender = 'Female' AND 'Heterosexual' IN uPrefs) OR
                              (meGender.gender = 'Female' AND uGender.gender = 'Male' AND 'Heterosexual' IN uPrefs) OR
                              (meGender.gender = 'Others' AND uGender.gender = 'Others' AND 'Heterosexual' IN uPrefs)
                            )
                          ) OR
                          (
                            ('Homosexual' IN myPrefs)
                            AND meGender.gender = uGender.gender
                            AND 'Homosexual' IN uPrefs
                          ) OR
                          (
                            ANY(pref IN myPrefs WHERE pref IN ['Bisexual', 'Prefer not to say', 'Others'])
                            AND uGender.gender IN ['Male', 'Female', 'Others']
                          )
                        RETURN u
                        ORDER BY u.fame DESC
                    """,
            countQuery = """
                        MATCH (me:User {username: $username})
                        MATCH (u:User)
                        WHERE NOT (me)-[:BLOCKED]->(u)
                          AND NOT (u)-[:BLOCKED]->(me)
                          AND NOT (me)-[:LIKED]->(u)
                          AND NOT (me)-[:MATCHED]->(u)
                          AND NOT (me)-[:PASSED]->(u)
                          AND (u.isBanned IS NULL OR u.isBanned = false)
                          AND u.username <> me.username
                          AND (date().year - u.dateOfBirth.year) >= $minAge
                          AND (date().year - u.dateOfBirth.year) <= $maxAge
                        AND u.fame >= $minFame
                        AND u.fame <= $maxFame
                        WITH me, u,
                          point({longitude: me.longitude, latitude: me.latitude}) AS mePoint,
                          point({longitude: u.longitude, latitude: u.latitude}) AS uPoint
                        WHERE round(point.distance(mePoint, uPoint)) <= $distance * 1000
                        OPTIONAL MATCH (u)-[:INTERESTED_IN]->(uInterest:Interest)
                        WITH me, u, collect(DISTINCT uInterest.name) AS uInterests
                        WHERE $interests IS NULL OR ANY(i IN uInterests WHERE i IN $interests)
                        WITH me, u
                        OPTIONAL MATCH (me)-[:HAS_GENDER]->(meGender:Gender)
                        OPTIONAL MATCH (u)-[:HAS_GENDER]->(uGender:Gender)
                        OPTIONAL MATCH (me)-[:HAS_PREFERENCE]->(mePref:SexualPreference)
                        OPTIONAL MATCH (u)-[:HAS_PREFERENCE]->(uPref:SexualPreference)
                        WITH me, u, meGender, uGender,
                             collect(DISTINCT mePref.name) AS myPrefs,
                             collect(DISTINCT uPref.name) AS uPrefs
                        WHERE
                          size(myPrefs) = 0 OR
                          (
                            ('Heterosexual' IN myPrefs) AND (
                              (meGender.gender = 'Male' AND uGender.gender = 'Female' AND 'Heterosexual' IN uPrefs) OR
                              (meGender.gender = 'Female' AND uGender.gender = 'Male' AND 'Heterosexual' IN uPrefs) OR
                              (meGender.gender = 'Others' AND uGender.gender = 'Others' AND 'Heterosexual' IN uPrefs)
                            )
                          ) OR
                          (
                            ('Homosexual' IN myPrefs)
                            AND meGender.gender = uGender.gender
                            AND 'Homosexual' IN uPrefs
                          ) OR
                          (
                            ANY(pref IN myPrefs WHERE pref IN ['Bisexual', 'Prefer not to say', 'Others'])
                            AND uGender.gender IN ['Male', 'Female', 'Others']
                          )
                        RETURN count(u)
                    """)
    Page<User> getUsersForMatching(@Param("username") String username,
                                   @Param("minAge") Integer minAge,
                                   @Param("maxAge") Integer maxAge,
                                   @Param("minFame") Integer minFame,
                                   @Param("maxFame") Integer maxFame,
                                   @Param("distance") Double distance,
                                   @Param("interests") List<String> interests,
                                   Pageable pageable);

    @Query("""
            MATCH (me:User {username: $username})
            MATCH (u:User {username: $targetUsername})
            WITH me, u,
              point({longitude: me.longitude, latitude: me.latitude}) AS mePoint,
              point({longitude: u.longitude, latitude: u.latitude}) AS uPoint
            RETURN round(point.distance(mePoint, uPoint)) / 1000 AS distance
            """)
    double getDistanceKm(@Param("username") String username,
                      @Param("targetUsername") String targetUsername);

    @Query("MATCH (a:User) RETURN a")
    List<User> findAllUsers();
}