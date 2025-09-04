package com.ft.matechai.user.service;

import com.ft.matechai.exception.AuthExceptions;
import com.ft.matechai.user.node.UserNode;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    public UserNode findUser(String username) {
        return userRepository.findByUsernameOrThrow(username);
    }

}
