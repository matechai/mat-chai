package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/users")
@PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    @PreAuthorize("permitAll()")
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User saved = userService.saveUser(user);
        return ResponseEntity.ok(saved);
    }

    @GetMapping("/{username}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<UserInfoDTO> getUserInformation(@PathVariable String username) {

        return ResponseEntity.ok(userService.getUserInfo(username)); //LK I changed it for consistency
    }

    @PostMapping("/{username}") //LK moved the @PreAuthorize to class level because it will be used almost everywhere, except where we Override it
    public ResponseEntity<Void> updateUserInformation(@PathVariable String username,
                                                   @RequestBody UserInfoDTO userInfoDTO) {

        userService.updateUserInfo(username, userInfoDTO);
        return ResponseEntity.noContent().build(); //LK Also changed for consistency
    }

    @DeleteMapping("/{username}")
    public ResponseEntity<Void> deleteUser(@PathVariable String username) {
        userService.removeUser(username);
        return ResponseEntity.noContent().build();
    }

    @PostMapping("/{username}/like/{toLikeUsername}")
    public ResponseEntity<Void> likeUser(@PathVariable String username, @PathVariable String toLikeUsername) {
        userService.likeUser(username, toLikeUsername);
        return ResponseEntity.ok().build();
    }
}
