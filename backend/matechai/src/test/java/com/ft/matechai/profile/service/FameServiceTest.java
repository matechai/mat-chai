package com.ft.matechai.profile.service;

import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;


@SpringBootTest
class FameServiceTest {
    private FameService fameService;
    private UserRepository userRepository;
    private User user;

    @BeforeEach
    void setup() {

        userRepository = mock(UserRepository.class);
        fameService = new FameService(userRepository);

        user = new User();
        user.setUsername("alice");
        user.setFame(10.0); // default fame
    }

    @Test
    void receiveLike_shouldIncreaseFame() {

        fameService.receiveLike(user);

        assertEquals(10.5, user.getFame(), 0.001);
        verify(userRepository).save(user);
    }

    @Test
    void receiveMatch_shouldIncreaseFame() {

        fameService.receiveMatch(user);

        assertEquals(10.3, user.getFame(), 0.001);
        verify(userRepository).save(user);
    }

    @Test
    void completeProfile_shouldIncreaseFameBasedOnPhotoCount() {

        // User with 2 profile photos
        user.setImageUrls(List.of("url1", "url2"));

        fameService.completeProfile(user);

        // Expected fame: INITIAL_FAME + PROFILE_INCREMENT * (2/4)
        double expectedFame = Math.min(10.0 + 2.0 * 2 / 4, 15.0);

        assertEquals(expectedFame, user.getFame(), 0.001);

        // Verify that userRepository.save() was called
        verify(userRepository).save(user);
    }

    @Test
    void getBlocked_shouldDecreaseFame() {

        fameService.getBlocked(user);

        assertEquals(8.0, user.getFame(), 0.001);
        verify(userRepository).save(user);
    }

    @Test
    void getReported_shouldDecreaseFame() {

        fameService.getReported(user);

        assertEquals(7.0, user.getFame(), 0.001);
        verify(userRepository).save(user);
    }

    @Test
    void fameShouldNotExceedMaxOrMin() {

        user.setFame(15.0);
        fameService.receiveLike(user);
        assertEquals(15.0, user.getFame(), 0.001);

        user.setFame(0.0);
        fameService.getBlocked(user);
        assertEquals(0.0, user.getFame(), 0.001);
    }
}
