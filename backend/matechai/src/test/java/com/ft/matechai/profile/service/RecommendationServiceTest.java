package com.ft.matechai.profile.service;

import com.ft.matechai.option.repository.InterestRepository;
import com.ft.matechai.user.node.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;


@SpringBootTest
class RecommendationServiceTest {

    @MockitoBean
    private RecommendationService recommendationService;
    @MockitoBean
    private InterestRepository interestRepository;

    private User user1;
    private User user2;

    @BeforeEach
    void setup() {
        interestRepository = mock(InterestRepository.class);
        recommendationService = new RecommendationService(interestRepository);

        // create User object
        user1 = new User();
        user1.setUsername("alice");
        user1.setLatitude(37.5);
        user1.setLongitude(127.0);
        user1.setFame(80d);

        user2 = new User();
        user2.setUsername("bob");
        user2.setLatitude(37.6);
        user2.setLongitude(127.1);
        user2.setFame(50d);
    }

    @Test
    void calculateRecommendationScore_shouldReturnCorrectScore() throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        // Assume 3 common interests
        when(interestRepository.getSameInterestCount("alice", "bob")).thenReturn(3);

        double score = recommendationService.calculateRecommendationScore(user1, user2);

        // Check distanceScore, commonTagsScore, fameScore directly
        Method method = RecommendationService.class.getDeclaredMethod("calculateDistanceScore", User.class, User.class);
        method.setAccessible(true);
        int expectedDistanceScore = (int) method.invoke(recommendationService, user1, user2);


        int expectedCommonTagsScore = 3;
        double expectedFameScore = Math.min((user2.getFame() / 100.0) * 15, 15);

        double expectedScore = expectedDistanceScore * 0.6 +
                expectedCommonTagsScore * 0.25 +
                expectedFameScore * 0.15;

        assertEquals(expectedScore, score, 0.001);
        System.out.println("expectedScore : " + expectedScore);
        // Verify that the mock was called
        verify(interestRepository).getSameInterestCount("alice", "bob");
    }

    @Test
    void distance_shouldReturnCorrectDistance() {
        double dist = RecommendationService.distance(37.5, 127.0, 37.6, 127.1);
        // Expected distance approximately 14 km
        assertEquals(14, dist, 1.0);
    }
}