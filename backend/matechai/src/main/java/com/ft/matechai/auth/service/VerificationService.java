package com.ft.matechai.auth.service;

import com.ft.matechai.auth.node.VerificationToken;
import com.ft.matechai.user.repository.UserRepository;
import com.ft.matechai.auth.repository.VerificationTokenRepository;
import org.springframework.stereotype.Service;
import com.ft.matechai.user.node.User;

import java.util.UUID;

@Service
public class VerificationService {

    private final VerificationTokenRepository tokenRepository;
    private final UserRepository userRepository;
    private final EmailService emailService;


    public VerificationService(VerificationTokenRepository verificationTokenRepository,
                               UserRepository userRepository,
                               EmailService emailService) {
        this.tokenRepository = verificationTokenRepository;
        this.userRepository = userRepository;
        this.emailService = emailService;
    }

    public void sendVerificationEmail(User user) {

        String token = UUID.randomUUID().toString();
        VerificationToken vt = new VerificationToken();
        vt.setToken(token);
        vt.setUserId(user.getId());
        tokenRepository.save(vt);

        emailService.sendVerificationEmail(user.getEmail(), token);
    }

    public boolean verifyToken(String token) {

        VerificationToken vt = tokenRepository.findByToken(token);
        if (vt == null)
            return false;

        User user = userRepository.findByIdOrThrow(vt.getUserId());
        user.setEnabled(true);
        userRepository.save(user);

        tokenRepository.delete(vt);
        return true;
    }
}
