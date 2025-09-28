package com.ft.matechai.auth;

import com.ft.matechai.auth.node.VerificationToken;
import com.ft.matechai.auth.service.EmailService;
import com.ft.matechai.auth.service.VerificationService;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.auth.repository.VerificationTokenRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class VerificationServiceUnitTest {

    @Mock
    private VerificationTokenRepository tokenRepository;
    @Mock
    private UserRepository userRepository;
    @Mock
    private EmailService emailService;
    @InjectMocks
    private VerificationService verificationService;

    @Test
    void testSendVerificationEmail() {
        User user = new User();
        user.setId(1L);
        user.setEmail("test@example.com");

        verificationService.sendVerificationEmail(user);

        // Token 저장 확인
        ArgumentCaptor<VerificationToken> tokenCaptor = ArgumentCaptor.forClass(VerificationToken.class);
        verify(tokenRepository).save(tokenCaptor.capture());
        assertEquals(user.getId(), tokenCaptor.getValue().getUserId());
        assertNotNull(tokenCaptor.getValue().getToken());

        // 이메일 발송 확인
        verify(emailService).sendVerificationEmail(eq("test@example.com"), anyString());
    }

    @Test
    void testVerifyTokenSuccess() {
        String tokenStr = UUID.randomUUID().toString();
        VerificationToken vt = new VerificationToken();
        vt.setToken(tokenStr);
        vt.setUserId(1L);

        User user = new User();
        user.setId(1L);
        user.setEnabled(false);

        when(tokenRepository.findByToken(tokenStr)).thenReturn(vt);
        when(userRepository.findById(1L)).thenReturn(Optional.of(user));

        boolean result = verificationService.verifyToken(tokenStr);

        assertTrue(result);
        assertTrue(user.isEnabled());
        verify(userRepository).save(user);
        verify(tokenRepository).delete(vt);
    }

    @Test
    void testVerifyTokenFail() {
        when(tokenRepository.findByToken("invalid")).thenReturn(null);

        boolean result = verificationService.verifyToken("invalid");

        assertFalse(result);
        verify(userRepository, never()).save(any());
        verify(tokenRepository, never()).delete(any());
    }
}
