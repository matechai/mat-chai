package com.ft.matechai.user.controller;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.util.UUID;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.user;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ft.matechai.user.node.User;
import com.ft.matechai.auth.node.VerificationToken;
import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.repository.UserRepository;

@SpringBootTest
@AutoConfigureMockMvc
@Tag("integration")
public class UserControllerIT {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper; //LK this thing converts strings to json and the opposite

    @Autowired
    private UserRepository userRepository;

    @Test
    void testCreateUserIT() throws Exception {
        User user = new User();
        user.setUsername("integrationUser");

        mockMvc.perform(post("/api/users")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(user)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.username").value("integrationUser"));
    }

    @Test
    void testGetUserInformation() throws Exception {
        String tokenStr = UUID.randomUUID().toString();
        VerificationToken vt = new VerificationToken();
        vt.setToken(tokenStr);
        vt.setUserId("testGetUser");

        User user = new User();
        user.setUsername("testGetUser");
        userRepository.save(user);

        mockMvc.perform(get("/api/users/testGetUser"))
                .andExpect(status().isUnauthorized()); //LK basically checking if a none-logged in user tries to view other people

        mockMvc.perform(get("/api/users/testGetUser")
                    .with(user("userWhoWantsToSee").roles("ROLE_GOD")))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.username").value("testGetUser"));
    }

    @Test
    void testUpdateUserInformation() throws Exception {
        User user = new User();
        user.setUsername("testUpdateUserInformation");
        user.setEmail("old@example.com");
        userRepository.save(user);

        UserInfoDTO updateDTO = new UserInfoDTO();
        updateDTO.setEmail("new@example.com");

        mockMvc.perform(post("/api/users/testUpdateUserInformation")
                        // .with(user("testUpdateUserInformation").roles("ROLE_ADMIN"))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(updateDTO)))
                .andExpect(status().isNoContent());

        User updated = userRepository.findById("testUpdateUserInformation").orElseThrow();
        assert(updated.getEmail().equals("new@example.com"));
    }

    @Test
    void testDeleteUser() throws Exception {
        User user = new User();
        user.setUsername("testDeleteUser");
        userRepository.save(user);

        mockMvc.perform(delete("/api/users/testDeleteUser")
                    .with(user("testDeleteUser").roles("ROLE_GOD")))
                .andExpect(status().isNoContent());

        assert(userRepository.findById("testDeleteUser").isEmpty());
    }

    @Test
    void testLikeUser() throws Exception {
        User user1 = new User();
        user1.setUsername("testLiker");
        User user2 = new User();
        user2.setUsername("testLiked");
        userRepository.save(user1);
        userRepository.save(user2);

        mockMvc.perform(post("/api/users/testLiker/like/testLiked")
                    .with(user("testLiker").roles("ROLE_GOD")))
                .andExpect(status().isOk());

        User updated = userRepository.findById("testLiker").orElseThrow();
        assert(updated.getLiked().contains(user2));
    }
}
