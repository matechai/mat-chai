package com.ft.matechai.profile.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.profile.service.ProfileService;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class ProfileController {

    private final ProfileService profileService;

    public ProfileController(ProfileService profileService) {
        this.profileService = profileService;
    }

    @GetMapping("/users/me/viewers")
    public ResponseEntity<Page<UserBasicProfileDTO>> getViewers(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                                                @RequestParam(defaultValue = "0") int page,
                                                                @RequestParam(defaultValue = "20") int size) {

        Page<UserBasicProfileDTO> viewers = profileService.getViewers(principalDetails.getUser(), page, size);
        return ResponseEntity.ok(viewers);
    }
}
