package com.ft.matechai.user.controller;

import com.ft.matechai.user.service.UserRelationshipService;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/users")
@PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
public class UserRelationshipController {
    private final UserRelationshipService service;

    public UserRelationshipController(UserRelationshipService service) {
        this.service = service;
    }

	@PostMapping("/{username}/like/{toLikeUsername}")
    public ResponseEntity<Void> likeUser(@PathVariable String username, @PathVariable String toLikeUsername) {
        service.likeUser(username, toLikeUsername);
        return ResponseEntity.ok().build();
    }
}
