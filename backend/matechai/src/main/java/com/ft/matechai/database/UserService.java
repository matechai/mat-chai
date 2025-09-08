package com.ft.matechai.database;

import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // GETTERS

    @Transactional(readOnly = true)
    public Optional<User> getUserById(Long userId) {
        return userRepository.findById(userId);
    }

    // SETTERS

    @Transactional
    public User saveUser(User u) {
        return userRepository.save(u);
    }

    @Transactional
    public void removeUser(Long userId) {
        userRepository.deleteById(id);
    }

    @Transactional
    public void followUser(Long userId, Long toFollowId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }

    @Transactional
    public void unfollowUser(Long userId, Long toUnfollowId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }

    @Transactional
    public void viewUser(Long userId, Long toViewId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }

    @Transactional
    public void unviewUser(Long userId, Long toUnviewId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }

    @Transactional
    public void blockUser(Long userId, Long toBlockId) {
        //LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
    }
}
