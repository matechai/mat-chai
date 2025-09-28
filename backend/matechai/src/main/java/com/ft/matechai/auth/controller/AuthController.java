package com.ft.matechai.auth.controller;

import com.ft.matechai.auth.dto.*;
import com.ft.matechai.auth.service.AuthService;
import com.ft.matechai.auth.service.VerificationService;
import com.ft.matechai.config.auth.PrincipalDetails;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService authService;
    private final VerificationService verificationService;

    public AuthController(AuthService authService, VerificationService verificationService) {
        this.authService = authService;
        this.verificationService = verificationService;
    }

    @PostMapping("/signup")
    public ResponseEntity<?> signUp(@Valid @RequestBody SignUpRequestDTO dto) {
        authService.signUp(dto);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    // email verify
    @GetMapping("/verify")
    public ResponseEntity<String> verify(@RequestParam("token") String token) {

        boolean success = verificationService.verifyToken(token);
        if (success)
            return ResponseEntity.ok("Account verified successfully!");
        else
            return ResponseEntity.badRequest().body("Invalid token.");
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequestDTO dto) {

        LoginResponseDTO response = authService.logIn(dto);

        if (response != null)
            return ResponseEntity.ok(response);
        else
            return ResponseEntity.status(401).build();
    }

    @DeleteMapping("/logout")

    public ResponseEntity<?> logout(@AuthenticationPrincipal PrincipalDetails principalDetails) {

        authService.logout(principalDetails.getUser());

        return ResponseEntity.noContent().build();
    }

    @PostMapping("/refresh")
    public ResponseEntity<RefreshResponseDTO> refreshToken(@RequestBody RefreshRequestDTO dto) {

        RefreshResponseDTO response = authService.refreshAccessToken(dto);

        return ResponseEntity.ok(response);
    }
}
