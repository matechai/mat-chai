package com.ft.matechai.auth.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


@Service
@Slf4j
public class EmailService {

    private final JavaMailSender mailSender;

    @Value("${app.url}")
    private String address;

    public EmailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendVerificationEmail(String to, String token) {
        String link = address + "/api/auth/verify?token=" + token;

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Verify your account");
        message.setText("Click the link to verify your account: " + link);
        mailSender.send(message);

        log.info("Email verify URL : " + link);
    }
        mailSender.send(message);

        log.info("Email verify address : " + link);
    }
}
