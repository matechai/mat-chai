package com.ft.matechai.database;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
@Tag("integration")
public class UserServiceIT {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Test
    @Transactional
    void testCreateUser() {
        User u = new User();
        u.setUsername("integrationUser");
        u.setEmail("integration@example.com");

        User saved = userService.saveUser(u);

        assertNotNull(saved.getId());
        assertEquals("integrationUser", saved.getUsername());
        assertEquals("integration@example.com", saved.getEmail());
    }
}