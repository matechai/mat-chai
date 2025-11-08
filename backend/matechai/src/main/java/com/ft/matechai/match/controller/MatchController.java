package com.ft.matechai.match.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.match.dto.LikeResponseDTO;
import com.ft.matechai.match.service.MatchService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class MatchController {

    private final MatchService matchService;

    public MatchController(MatchService matchService) {
        this.matchService = matchService;
    }


    @PostMapping("/users/{targetUsername}/like")
    public ResponseEntity<LikeResponseDTO> like(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                                @PathVariable String targetUsername) {

        LikeResponseDTO response = matchService.like(principalDetails.getUser(), targetUsername);

        return ResponseEntity.ok(response);
    }

    @DeleteMapping("/users/{targetUsername}/like")
    public ResponseEntity<?> removeLike(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                         @PathVariable String targetUsername) {

        matchService.removeLike(principalDetails.getUser(), targetUsername);

        return ResponseEntity.noContent().build();
    }

    @PostMapping("/users/{targetUsername}/block")
    public ResponseEntity<?> block(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                   @PathVariable String targetUsername) {

        matchService.block(principalDetails.getUser(), targetUsername);

        return ResponseEntity.noContent().build();
    }
}
