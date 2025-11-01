package com.ft.matechai.profile.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.profile.dto.LocationDTO;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.profile.service.ProfileService;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;


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

    @PostMapping("/users/{username}/location")
    @PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
    public ResponseEntity<?> updateLocation(@PathVariable String username,
                                            @RequestBody LocationDTO location) {

        profileService.updateLocation(username, location);

        return ResponseEntity.noContent().build();
    }
}
