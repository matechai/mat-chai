package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.service.UserService;
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
}
