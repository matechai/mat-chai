package com.ft.matechai.auth.service;

import com.ft.matechai.auth.dto.LoginRequestDTO;
import com.ft.matechai.auth.dto.LoginResponseDTO;
import com.ft.matechai.auth.dto.SignUpRequestDTO;
import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.util.JwtUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class AuthService {

    @Value("${jwt.type}")
    private String tokenType;

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

            return LoginResponseDTO.builder()
                    .token(jwtUtil.generateToken(user.getUsername()))
                    .tokenType(tokenType)
                    .firstLogin(user.isFirstLogin())
                    .build();

        } else {        // fail
            throw new AuthExceptions.UnauthorizedException("Invalid username or password");
        }
    }

    // Create User node
    private User createUser(SignUpRequestDTO dto) {

        String hash = encoder.encode(dto.getPassword());
        User user = new User();

        user.setEmail(dto.getEmail());
        user.setUsername(dto.getUsername());
        user.setFirstName(dto.getFirstName());
        user.setLastName(dto.getLastName());
        user.setPassword(hash);

        userRepository.save(user);

        return user;
    }
}
