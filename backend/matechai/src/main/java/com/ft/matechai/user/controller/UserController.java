package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.user.service.UserService;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/users")
@PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
public class UserController {

    private final UserRepository userRepository;

    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @PostMapping
    @PreAuthorize("permitAll()")
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User saved = userService.saveUser(user);
        return ResponseEntity.ok(saved);
    }

    @GetMapping
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<User>> getUsers() {
        List<User> users = userService.getAllUsers();
        return ResponseEntity.ok(users);
    }

    @GetMapping
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<User> getUserByUsername(String username) {
        User user = userService.getUserByUsername(username);
        return ResponseEntity.ok(user);
    }

    @GetMapping("/{username}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<UserInfoDTO> getUserInformation(@PathVariable String username) {

        return ResponseEntity.ok(userService.getUserInfo(username));
    }

    @PostMapping("/{username}")
    public ResponseEntity<Void> updateUserInformation(@PathVariable String username,
                                                   @RequestBody UserInfoDTO userInfoDTO) {

        userService.updateUserInfo(username, userInfoDTO);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/{username}")
    public ResponseEntity<Void> deleteUser(@PathVariable String username) {
        userService.removeUser(username);
        return ResponseEntity.noContent().build();
    }

}
