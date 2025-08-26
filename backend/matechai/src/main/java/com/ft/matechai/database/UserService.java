package com.ft.matechai.database;

import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User addUser(User u) {
        return userRepository.save(u);
    }

    public void removeUser(Long id) {
        userRepository.deleteById(id);
    }
}
