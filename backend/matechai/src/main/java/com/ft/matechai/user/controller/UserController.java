package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


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
}
