package com.ft.matechai.match.service;

import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class MatchService {

    private final UserRepository userRepository;

    public MatchService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void like(User user, String targetUsername) {

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.like(user.getUsername(), targetUsername);

    }
}
