package com.ft.matechai.auth.service;

import com.ft.matechai.auth.dto.*;
import com.ft.matechai.enums.Role;
import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.config.jwt.JwtUtil;
import jakarta.validation.constraints.Null;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class AuthService {

    @Value("${jwt.type}")
    private String tokenType;
    @Value("${jwt.expirationMs.accessToken}")
    private long accessTokenExpirationMs;
    @Value("${jwt.expirationMs.refreshToken}")
    private long refreshTokenExpirationMs;

    private final UserRepository userRepository;
    private final VerificationService verificationService;
    private final PasswordEncoder encoder;
    private final JwtUtil jwtUtil;

    public AuthService(UserRepository userRepository,
                       VerificationService verificationService,
                       PasswordEncoder passwordEncoder,
                       JwtUtil jwtUtil) {
        this.userRepository = userRepository;
        this.verificationService = verificationService;
        this.encoder = passwordEncoder;
        this.jwtUtil = jwtUtil;
    }


    // Sign Up
    public void signUp(SignUpRequestDTO dto) {

        if (userRepository.existsByUsername(dto.getUsername()) || userRepository.existsByEmail(dto.getEmail()))
            throw new AuthExceptions.DuplicateUserException();

        User user = createUser(dto);
        verificationService.sendVerificationEmail(user);
    }


    // Log In
    public LoginResponseDTO logIn(LoginRequestDTO dto) {

        User user = userRepository.findByUsernameOrThrow(dto.getUsername());

        // check password
        if (encoder.matches(dto.getPassword(), user.getPassword())) {       // success

            if (!user.isEnabled())
                throw new AuthExceptions.EmailNotVerifiedException();

            String accessToken = jwtUtil.generateToken(user.getUsername(), accessTokenExpirationMs);
            String refreshToken = jwtUtil.generateToken(user.getUsername(), refreshTokenExpirationMs);

            user.setRefreshToken(refreshToken);
            userRepository.save(user);

            return LoginResponseDTO.builder()
                    .accessToken(accessToken)
                    .refreshToken(refreshToken)
                    .tokenType(tokenType)
                    .firstLogin(user.isFirstLogin())
                    .build();

        } else {        // fail
            throw new AuthExceptions.UnauthorizedException("Invalid username or password");
        }
    }


    // Create new Access token using refresh token
    public RefreshResponseDTO refreshAccessToken(RefreshRequestDTO dto) {

        String refreshToken = dto.getRefreshToken();

        if (!jwtUtil.validateToken(refreshToken))
            throw new AuthExceptions.UnauthorizedException();

        String username = jwtUtil.getUsernameFromToken(refreshToken);
        User user = userRepository.findByUsernameOrThrow(username);

        if (!refreshToken.equals(user.getRefreshToken()))
            throw new AuthExceptions.UnauthorizedException();

        String accessToken = jwtUtil.generateToken(username, accessTokenExpirationMs);
        return RefreshResponseDTO.builder()
                .AccessToken(accessToken)
                .build();
    }

    // Create User node
    private User createUser(SignUpRequestDTO dto) {

        String hash = encoder.encode(dto.getPassword());
        User user = User.builder()
                        .email(dto.getEmail())
                        .username(dto.getUsername())
                        .firstName(dto.getFirstName())
                        .lastName(dto.getLastName())
                        .password(hash)
                        .role(Role.ROLE_USER)
                        .refreshToken(null)
                        .build();

        userRepository.save(user);

        return user;
    }
}
