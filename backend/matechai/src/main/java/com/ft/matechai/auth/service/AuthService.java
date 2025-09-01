package com.ft.matechai.auth.service;

import com.ft.matechai.auth.dto.SignUpRequestDTO;
import com.ft.matechai.user.node.UserNode;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private final UserRepository userRepository;
    private final VerificationService verificationService;
    private final PasswordEncoder encoder;

    public AuthService(UserRepository userRepository, VerificationService verificationService, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.verificationService = verificationService;
        this.encoder = passwordEncoder;
    }


    public void signUp(SignUpRequestDTO dto) {
        UserNode user = createUser(dto);

        verificationService.sendVerificationEmail(user);
    }

    // create user node
    private UserNode createUser(SignUpRequestDTO dto) {

        String hash = encoder.encode(dto.getPassword());
        UserNode userNode = new UserNode();

        userNode.setEmail(dto.getEmail());
        userNode.setUsername(dto.getUsername());
        userNode.setFirstName(dto.getFirstName());
        userNode.setLastName(dto.getLastName());
        userNode.setPassword(hash);

        userRepository.save(userNode);

        return userNode;
    }
}
