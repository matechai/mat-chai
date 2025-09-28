package com.ft.matechai.database;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

public class UserServiceTest {
    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private UserService userService;

    private User user1;
    private User user2;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);

        user1 = new User();
        user1.setId("1");
        user1.setUsername("Mate");
        user1.setLiked(new HashSet<>());

        user2 = new User();
        user2.setId("2");
        user2.setUsername("Chai");
        user2.setLiked(new HashSet<>());
    }

    // GETTERS // GETTERS // GETTERS // GETTERS //

    @Test
    void testGetUserById_found() {
        when(userRepository.findById("1")).thenReturn(Optional.of(user1));

        Optional<User> result = userService.getUserById("1");
        assertTrue(result.isPresent());
        assertEquals("Mate", result.get().getUsername());
    }

    
    @Test
    void testGetUserById_notFound() {
        when(userRepository.findById("3")).thenReturn(Optional.empty());

        Optional<User> result = userService.getUserById("3");
        assertFalse(result.isPresent());
    }

    @Test
    void testGetAllUsers() {
        List<User> mockUsers = List.of(
            new User("1", "email1", "Mate", "First1", "Last1", 25, "pass", "M", "F", "bio1", List.of(), null, List.of(), 0, "Loc1", "Now", Set.of(), Set.of(), Set.of()),
            new User("2", "email2", "Chai", "First2", "Last2", 30, "pass", "F", "M", "bio2", List.of(), null, List.of(), 0, "Loc2", "Now", Set.of(), Set.of(), Set.of())
        );
        when(userRepository.findAll()).thenReturn(mockUsers);

        List<User> result = userService.getAllUsers();
        assertEquals(2, result.size());
        assertEquals("Mate", result.get(0).getUsername());
        assertEquals("Chai", result.get(1).getUsername());
    }

    @Test
    void testGetUsersPage() {
        // Arrange: create a mock page of users
        List<User> mockUsers = List.of(
            new User("1", "email1", "Mate", "First1", "Last1", 25, "pass", "M", "F", "bio1", List.of(), null, List.of(), 0, "Loc1", "Now", Set.of(), Set.of(), Set.of()),
            new User("2", "email2", "Chai", "First2", "Last2", 30, "pass", "F", "M", "bio2", List.of(), null, List.of(), 0, "Loc2", "Now", Set.of(), Set.of(), Set.of())
        );
        Page<User> mockPage = new PageImpl<>(mockUsers);
        when(userRepository.findAll(any(Pageable.class))).thenReturn(mockPage);

        Page<User> result = userService.getUsersPage(0, 20);

        assertEquals(2, result.getContent().size());
        assertEquals("Mate", result.getContent().get(0).getUsername());
        assertEquals("Chai", result.getContent().get(1).getUsername());
    }

    // SETTERS // SETTERS // SETTERS // SETTERS //

    @Test
    void testLikeUser() {
        when(userRepository.findById("1")).thenReturn(Optional.of(user1));
        when(userRepository.findById("2")).thenReturn(Optional.of(user2));
        when(userRepository.save(any(User.class))).thenAnswer(invocation -> invocation.getArgument(0));

        userService.likeUser("1", "2");

        assertTrue(user1.getLiked().contains(user2));
        verify(userRepository).save(user1);
    }
}
