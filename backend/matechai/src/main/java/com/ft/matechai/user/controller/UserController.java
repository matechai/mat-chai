package com.ft.matechai.user.controller;

import com.ft.matechai.user.dto.SignUpRequestDTO;
import com.ft.matechai.user.service.UserService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/{username}")
    public ResponseEntity<?> getNode(@PathVariable String username){

        return new ResponseEntity<>(userService.findUser(username), HttpStatus.OK);
    }
}
