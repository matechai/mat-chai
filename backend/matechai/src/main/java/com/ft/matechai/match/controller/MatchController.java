package com.ft.matechai.match.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.match.service.MatchService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class MatchController {

    private final MatchService matchService;

    public MatchController(MatchService matchService) {
        this.matchService = matchService;
    }


    @PostMapping("/users/{targetUsername}/like")
    public ResponseEntity<?> like(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                  @PathVariable String targetUsername) {

        matchService.like(principalDetails.getUser(), targetUsername);

        return ResponseEntity.status(201).build();
    }
}
