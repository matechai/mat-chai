package com.ft.matechai.profile.service;

import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;


@Service
public class FameService {

    private static final double MAX_FAME = 15.0;
    private static final double MIN_FAME = 0.0;
    private static final double INITIAL_FAME = 10.0;

    // Event weights
    private static final double LIKE_INCREMENT = 0.5;
    private static final double MATCH_INCREMENT = 0.3;
    private static final double PROFILE_INCREMENT = 2.0;
    private static final double BLOCK_DECREMENT = 2.0;
    private static final double REPORT_DECREMENT = 3.0;

    private final UserRepository userRepository;

    public FameService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    /**
     * Increase fame when receiving a like
     */
    public void receiveLike(User user) {

        double newFame = Math.min(user.getFame() + LIKE_INCREMENT, MAX_FAME);
        user.setFame(newFame);
        userRepository.save(user);
    }

    /**
     * When a received like is canceled, decrease fame.
     */
    public void cancelLike(User user) {

        double newFame = Math.max(user.getFame() - LIKE_INCREMENT, MIN_FAME);
        user.setFame(newFame);
        userRepository.save(user);
    }

    /**
     * Increase fame when matched
     */
    public void receiveMatch(User user) {

        double newFame = Math.min(user.getFame() + MATCH_INCREMENT, MAX_FAME);
        user.setFame(newFame);
        userRepository.save(user);
    }

    /**
     * Increases fame based on the number of profile photos when completing the profile.
     * Fame increases proportionally to the number of photos (up to 4).
     * The resulting fame will not exceed MAX_FAME.
     */
    public void updateProfile(User user) {

        int maxPhotos = 4;
        int photoCount = user.getImageUrls() != null ? user.getImageUrls().size() : 0;

        double photoFame = PROFILE_INCREMENT * Math.min(photoCount, maxPhotos) / maxPhotos;
        double newFame = Math.min(INITIAL_FAME + photoFame, MAX_FAME);

        user.setFame(newFame);
        userRepository.save(user);
    }

    /**
     * Decrease fame when blocked
     */
    public void getBlocked(User user) {

        double newFame = Math.max(user.getFame() - BLOCK_DECREMENT, MIN_FAME);
        user.setFame(newFame);
        userRepository.save(user);
    }

    /**
     * Decrease fame when reported
     */
    public void getReported(User user) {

        double newFame = Math.max(user.getFame() - REPORT_DECREMENT, MIN_FAME);
        user.setFame(newFame);
        userRepository.save(user);
    }
}
