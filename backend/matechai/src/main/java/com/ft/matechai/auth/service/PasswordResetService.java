package com.ft.matechai.auth.service;

import com.ft.matechai.auth.node.PasswordResetToken;
import com.ft.matechai.auth.repository.PasswordResetTokenRepository;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class PasswordResetService {

    private final PasswordResetTokenRepository passwordResetTokenRepository;
    private final UserRepository userRepository;
    private final EmailService emailService;

    public PasswordResetService(PasswordResetTokenRepository passwordResetTokenRepository, UserRepository userRepository, EmailService emailService) {
        this.passwordResetTokenRepository = passwordResetTokenRepository;
        this.userRepository = userRepository;
        this.emailService = emailService;
    }

    public void sendPasswordResetEmail(User user) {

        String token = UUID.randomUUID().toString();
        PasswordResetToken rt = PasswordResetToken.builder().token(token).username(user.getUsername()).build();
        passwordResetTokenRepository.save(rt);

        emailService.sendPasswordResetEmail(user.getEmail(), token);
    }
}
