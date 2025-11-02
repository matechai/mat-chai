package com.ft.matechai.profile.service;

import com.ft.matechai.option.repository.InterestRepository;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import java.time.LocalDate;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;


@SpringBootTest
class RecommendationServiceTest {

    @MockitoBean
    private RecommendationService recommendationService;
    @MockitoBean
    private InterestRepository interestRepository;
    @MockitoBean
    private UserRepository userRepository;

    private User user1;
    private User user2;
    private User user;
    private User targetUser;

    @BeforeEach
    void setup() {
        interestRepository = mock(InterestRepository.class);
        recommendationService = new RecommendationService(interestRepository, userRepository);

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

        user = User.builder()
                .username("alice")
                .dateOfBirth(LocalDate.of(1995, 5, 20))
                .build();

        targetUser = User.builder()
                .username("bob")
                .dateOfBirth(LocalDate.of(1994, 3, 10))
                .profileImageUrl("profile_bob.jpg")
                .imageUrls(List.of("img1.jpg", "img2.jpg"))
                .build();
    }

    @Test
    void getRecommendedUsers_shouldReturnDTO() {

        Pageable pageable = PageRequest.of(0, 1);
        Page<User> page = new PageImpl<>(List.of(targetUser), pageable, 1);

        when(userRepository.getUsersForMatching(user.getUsername(), pageable)).thenReturn(page);

        UserBasicProfileDTO dto = recommendationService.getRecommendedUsers(user, 0);

        assertNotNull(dto);
        assertEquals("bob", dto.getUsername());
        assertEquals("profile_bob.jpg", dto.getProfileImage());
        assertEquals(2, dto.getImageUrls().size());
        assertEquals(LocalDate.of(1994, 3, 10), dto.getDateOfBirth());

        verify(userRepository).getUsersForMatching(user.getUsername(), pageable);
    }

    @Test
    void getRecommendedUsers_noUsers_shouldReturnNull() {

        Pageable pageable = PageRequest.of(0, 1);
        Page<User> page = new PageImpl<>(List.of(), pageable, 0);

        when(userRepository.getUsersForMatching(user.getUsername(), pageable)).thenReturn(page);

        UserBasicProfileDTO dto = recommendationService.getRecommendedUsers(user, 0);

        assertNull(dto);
        verify(userRepository).getUsersForMatching(user.getUsername(), pageable);
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