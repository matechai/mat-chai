package com.ft.matechai.option.repository;

import com.ft.matechai.exception.EntityNotFoundException;
import com.ft.matechai.user.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.neo4j.core.Neo4jClient;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;



@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class InterestRepositoryTest {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private InterestRepository interestRepository;

    @Autowired
    private Neo4jClient neo4jClient;

    @BeforeEach
    void setup() {
        // init Test data
        neo4jClient.query("""
            CREATE (u1:User {username: 'Alice'})
            CREATE (u2:User {username: 'Bob'})
            CREATE (i1:Interest {name: 'Music'})
            CREATE (i2:Interest {name: 'Sports'})
            CREATE (i3:Interest {name: 'Travel'})
            CREATE (u1)-[:INTERESTED_IN]->(i1)
            CREATE (u1)-[:INTERESTED_IN]->(i2)
            CREATE (u2)-[:INTERESTED_IN]->(i2)
            CREATE (u2)-[:INTERESTED_IN]->(i3)
            """).run();
    }

    @Test
    void findByName_shouldReturnInterest() {
        var result = interestRepository.findByName("Music");
        assertTrue(result.isPresent());
        assertEquals("Music", result.get().getName());
    }

    @Test
    void findByNameOrThrow_shouldThrowExceptionWhenNotFound() {
        assertThrows(EntityNotFoundException.class,
                () -> interestRepository.findByNameOrThrow("Nonexistent"));
    }

    @Test
    void saveIfNotExists_shouldCreateInterestIfMissing() {
        interestRepository.saveIfNotExists("Reading");
        var names = interestRepository.findAllNames();
        assertTrue(names.contains("Reading"));
    }


    @Test
    void findByUsername_shouldReturnCorrectInterests() {
        List<String> interests = interestRepository.findByUsername("Alice");
        assertEquals(2, interests.size());
        assertTrue(interests.contains("Music"));
        assertTrue(interests.contains("Sports"));
    }

    @Test
    void findAllNames_shouldReturnAllInterestNames() {
        List<String> names = interestRepository.findAllNames();
        assertTrue(names.containsAll(List.of("Music", "Sports", "Travel")));
    }

    @Test
    void getSameInterestCount_shouldReturnCorrectCount() {

        // given
        String user1 = "Alice";
        String user2 = "Bob";

        // when
        int result = interestRepository.getSameInterestCount(user1, user2);

        // then
        assertThat(result).isEqualTo(1); // Same interests : Sports
    }

    @AfterEach
    void cleanup() {
        neo4jClient.query("MATCH (n) DETACH DELETE n").run();
    }
}