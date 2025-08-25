package com.ft.matechai.database;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User addUser(String name, int age) {
        return userRepository.createUser(name, age);
    }

    public void removeUser(String name) {
        userRepository.deleteByName(name);
    }
}
