package com.ft.matechai.match.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.match.dto.LikeResponseDTO;
import com.ft.matechai.match.dto.PaginatedUserDTO;
import com.ft.matechai.match.service.MatchService;
import com.ft.matechai.profile.service.RecommendationService;
import com.ft.matechai.user.node.User;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api")
public class MatchController {

    private final MatchService matchService;
    private final RecommendationService recommendationService;

    public MatchController(MatchService matchService, RecommendationService recommendationService) {
        this.matchService = matchService;
        this.recommendationService = recommendationService;
    }


    @GetMapping("/matching")
    public PaginatedUserDTO getNextMatch(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                         @RequestParam(defaultValue = "0") int page,
                                         @RequestParam(defaultValue = "fame") String sortBy,         // fame, age, distance, interest
                                         @RequestParam(defaultValue = "desc") String order,        // asc, desc
                                         @RequestParam(defaultValue = "1") int minAge,
                                         @RequestParam(defaultValue = "99") int maxAge,
                                         @RequestParam(defaultValue = "0") int minFame,
                                         @RequestParam(defaultValue = "15") int maxFame,
                                         @RequestParam(defaultValue = "100") double distance,
                                         @RequestParam(required = false) List<String> interests) {

        return recommendationService.getRecommendedUsers(principalDetails.getUser(), page, sortBy, order, minAge, maxAge, minFame, maxFame, distance, interests);
    }

    @PostMapping("/users/{targetUsername}/like")
    public ResponseEntity<LikeResponseDTO> like(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                                @PathVariable String targetUsername) {

        LikeResponseDTO response = matchService.like(principalDetails.getUser(), targetUsername);

        return ResponseEntity.ok(response);
    }

    @PostMapping("/users/{targetUsername}/pass")
    public ResponseEntity<LikeResponseDTO> pass(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                                @PathVariable String targetUsername) {

        matchService.pass(principalDetails.getUser(), targetUsername);

        return ResponseEntity.noContent().build();
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

    @GetMapping("/users/matches")
    public ResponseEntity<List<User>> getMatchedUsers(@AuthenticationPrincipal PrincipalDetails principalDetails) {
        List<User> matchedUsers = matchService.getMatchedUsers(principalDetails.getUser());
        return ResponseEntity.ok(matchedUsers);
    }
}
