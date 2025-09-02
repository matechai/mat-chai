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

    public void followUser(Long followerId, Long followedId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }
}
