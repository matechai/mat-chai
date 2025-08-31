package com.ft.matechai.user.service;

import com.ft.matechai.user.dto.UserRequestDTO;
import com.ft.matechai.user.node.UserNode;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder encoder;

    public UserService(UserRepository userRepository, PasswordEncoder encoder) {
        this.userRepository = userRepository;
        this.encoder = encoder;
    }

    // create user node
    public void createUser(UserRequestDTO dto) {

        String hash = encoder.encode(dto.getPassword());
        UserNode userNode = new UserNode();

        userNode.setEmail(dto.getEmail());
        userNode.setUsername(dto.getUsername());
        userNode.setFirstName(dto.getFirstName());
        userNode.setLastName(dto.getLastName());
        userNode.setPassword(hash);

        userRepository.save(userNode);
    }

    public UserNode findUser(String username) {
        return userRepository.findByUsernameCustom(username).orElseThrow();
    }
}
