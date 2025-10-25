package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.dto.UserProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.service.UserService;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/users")
@Controller // GraphQL
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    // ================= REST =================

    @GetMapping("/{username}")
    public UserInfoDTO getUserInformation(@PathVariable String username) {

        return userService.getUserInfo(username);
    }

    @PostMapping("/{username}")
    @PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
    public ResponseEntity<?> updateUserInformation(@PathVariable String username,
                                                   @RequestBody UserInfoDTO userInfoDTO) {

        userService.updateUserInfo(username, userInfoDTO);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PutMapping("/{username}/profile")
    @PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
    public ResponseEntity<?> updateProfile(@PathVariable String username,
                                           @RequestBody UserProfileDTO userProfileDTO) {

        UserProfileDTO updatedProfile = userService.updateProfile(username, userProfileDTO);

        return ResponseEntity.ok(updatedProfile);
    }


    // ================= GraphQL =================

    @QueryMapping
    public User getUserByUsername(@Argument String username) {

        return userService.getUser(username);
    }

    @SchemaMapping(typeName = "User", field = "gender")
    public String getGender(User user) {

        return userService.getGender(user.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "sexualPreferences")
    public List<String> getSexualPreferences(User user) {

        return userService.getSexualPreference(user.getUsername());
    }
    @SchemaMapping(typeName = "User", field = "interests")
    public List<String> getInterests(User user) {

        return userService.getInterests(user.getUsername());
    }
}
