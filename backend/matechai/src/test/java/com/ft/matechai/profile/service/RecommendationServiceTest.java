package com.ft.matechai.profile.service;

import com.ft.matechai.match.dto.PaginatedUserDTO;
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
import java.util.Collections;
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
                .latitude(37.5)
                .longitude(127.0)
                .build();

        targetUser = User.builder()
                .username("bob")
                .dateOfBirth(LocalDate.of(1995, 5, 20))
                .profileImageUrl("profile.jpg")
                .imageUrls(List.of("img1.jpg", "img2.jpg"))
                .fame(12.0)
                .latitude(37.6)
                .longitude(127.1)
                .build();
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

    @Test
    void testGetRecommendedUsers_returnsPaginatedDTO() {
        // Page 설정
        Page<User> mockPage = new PageImpl<>(List.of(targetUser), PageRequest.of(0, 1), 1);
        when(userRepository.getUsersForMatching(eq("alice"), eq(0), eq(99), eq(0), eq(15), eq(10000d), isNull(), any(Pageable.class))).thenReturn(mockPage);

        PaginatedUserDTO result = recommendationService.getRecommendedUsers(user, 0, "fame", "desc", 0, 99, 0, 15, 10000d, null);

        assertNotNull(result);
        assertEquals(0, result.getCurrentPage());
        assertEquals(1, result.getTotalPages());
        assertTrue(result.isHasNext() == false);

        UserBasicProfileDTO dto = result.getUser();
        assertNotNull(dto);
        assertEquals("bob", dto.getUsername());
        assertEquals("profile.jpg", dto.getProfileImage());
        assertEquals(2, dto.getImageUrls().size());
        assertEquals(LocalDate.of(1995, 5, 20), dto.getDateOfBirth());
    }

    @Test
    void testGetRecommendedUsers_noContent_returnsNull() {
        Page<User> emptyPage = new PageImpl<>(Collections.emptyList(), PageRequest.of(0, 1), 0);
        when(userRepository.getUsersForMatching(eq("alice"), eq(0), eq(99), eq(0), eq(15), eq(10000d), isNull(), any(Pageable.class))).thenReturn(emptyPage);

        PaginatedUserDTO result = recommendationService.getRecommendedUsers(user, 0, "fame", "desc", 0, 99, 0, 15, 10000d, null);
        assertNull(result);
    }
}