package com.ft.matechai.user.controller;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.dto.UserProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.service.UserService;

import graphql.schema.DataFetchingEnvironment;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


@RestController
@RequestMapping("/api/users")
@Controller // GraphQL
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    // ================= REST =================

    @GetMapping("/{username}")
    public UserInfoDTO getUserInformation(@PathVariable String username) {

        return userService.getUserInfo(username);
    }

    @PatchMapping("/{username}")
    @PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
    public ResponseEntity<?> updateUserInformation(@PathVariable String username,
                                                   @RequestBody UserInfoDTO userInfoDTO) {

        userService.updateUserInfo(username, userInfoDTO);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping("/{username}/profile")
    @PreAuthorize("#username == authentication.principal.username or hasAnyRole('ROLE_ADMIN', 'ROLE_GOD')")
    public ResponseEntity<?> updateProfile(@PathVariable String username,
                                           @RequestPart("data") UserProfileDTO userProfileDTO,
                                           @RequestPart("files") List<MultipartFile> files) {

        UserProfileDTO updatedProfile = userService.updateProfile(username, userProfileDTO, files);

        return ResponseEntity.ok(updatedProfile);
    }


    // ================= GraphQL =================

    @QueryMapping
    public User me(@AuthenticationPrincipal PrincipalDetails user) {

        return user.getUser();
    }

    @QueryMapping
    public User getUserByUsername(@AuthenticationPrincipal PrincipalDetails principalDetails,
                                  @Argument String username,
                                  DataFetchingEnvironment env) {

        return userService.getUser(principalDetails.getUser(), username, env);
    }

    @SchemaMapping(typeName = "User", field = "gender")
    public String getGender(User user) {

        return userService.getGender(user.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "sexualPreference")
    public String getSexualPreference(User user) {

        return userService.getSexualPreference(user.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "interests")
    public List<String> getInterests(User user) {

        return userService.getInterests(user.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "liked")
    public Boolean getLiked(User targetUser) {

        return userService.getLiked(targetUser.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "matched")
    public Boolean getMatched(User targetUser) {

        return userService.getMatched(targetUser.getUsername());
    }

    @SchemaMapping(typeName = "User", field = "distance")
    public Float getDistance(User targetUser) {

        return userService.getDistance(targetUser.getUsername());
    }
}
