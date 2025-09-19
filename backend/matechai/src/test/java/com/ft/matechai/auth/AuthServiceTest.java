package com.ft.matechai.auth;

import com.ft.matechai.auth.service.AuthService;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.mockito.Mockito.verify;

import static org.mockito.Mockito.*;

import com.ft.matechai.auth.dto.SignUpRequestDTO;
import com.ft.matechai.auth.service.VerificationService;

import org.springframework.security.crypto.password.PasswordEncoder;

@ExtendWith(MockitoExtension.class)
class AuthServiceTest {

    @Mock
    private UserRepository userRepository;
    @Mock
    private VerificationService verificationService;
    @Mock
    private PasswordEncoder passwordEncoder;

    @InjectMocks
    private AuthService authService;

    @Test
    void testSignUp() {

        SignUpRequestDTO dto = new SignUpRequestDTO();
        dto.setEmail("test@example.com");
        dto.setUsername("tester");
        dto.setFirstName("Test");
        dto.setLastName("User");
        dto.setPassword("password");

        when(passwordEncoder.encode("password")).thenReturn("hashedPassword");

        // when
        authService.signUp(dto);

        // then
        verify(userRepository).save(any(User.class));
        verify(verificationService).sendVerificationEmail(any(User.class));
    }
}
