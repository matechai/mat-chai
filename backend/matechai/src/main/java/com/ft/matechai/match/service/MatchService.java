package com.ft.matechai.match.service;

import com.ft.matechai.exception.MatchExceptions;
import com.ft.matechai.match.dto.LikeResponseDTO;
import com.ft.matechai.notification.enums.NotificationType;
import com.ft.matechai.notification.service.NotificationService;
import com.ft.matechai.profile.service.FameService;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MatchService {

    private final UserRepository userRepository;
    private final NotificationService notificationService;
    private final FameService fameService;

    public MatchService(UserRepository userRepository,
                        NotificationService notificationService,
                        FameService fameService) {
        this.userRepository = userRepository;
        this.notificationService = notificationService;
        this.fameService = fameService;
    }

    @Transactional
    public LikeResponseDTO like(User user, String targetUsername) {

        validateSelfRelation(user.getUsername(), targetUsername, "can't like yourself");

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.like(user.getUsername(), targetUser.getUsername());
        fameService.receiveLike(targetUser);
        String likeMessage = user.getUsername() + " Likes you";
        notificationService.createAndSendNotification(user.getUsername(), targetUser.getUsername(), NotificationType.LIKE, likeMessage);

        if (userRepository.isLikedBetween(user.getUsername(), targetUser.getUsername())) {

            userRepository.match(user.getUsername(), targetUser.getUsername());
            fameService.receiveMatch(user);
            fameService.receiveMatch(targetUser);
            String matchMessage = "you have matched with ";
            notificationService.createAndSendNotification(user.getUsername(), targetUser.getUsername(), NotificationType.MATCH, user.getUsername() + matchMessage);
            notificationService.createAndSendNotification(targetUser.getUsername(), user.getUsername(), NotificationType.MATCH, targetUser.getUsername() + matchMessage);

            return LikeResponseDTO.builder()
                    .liked(true)
                    .matched(true)
                    .targetUsername(targetUser.getUsername())
                    .build();
        }

        return LikeResponseDTO.builder()
                .liked(true)
                .matched(false)
                .targetUsername(targetUser.getUsername())
                .build();
    }

    public void removeLike(User user, String targetUsername) {

        validateSelfRelation(user.getUsername(), targetUsername, "can't remove like yourself");

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);
        String username = user.getUsername();
        targetUsername = targetUser.getUsername();

        userRepository.deleteLike(username, targetUsername);

        if (userRepository.isMatchBetween(username, targetUsername)) {

            handleUnmatch(username, targetUsername, false);
            fameService.cancelLike(targetUser);
        }
    }

    public void block(User user, String targetUsername) {

        validateSelfRelation(user.getUsername(), targetUsername, "can't block yourself");

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);
        String username = user.getUsername();
        targetUsername = targetUser.getUsername();

        userRepository.block(username, targetUsername);
        userRepository.deleteLike(username, targetUsername);

        if (userRepository.isMatchBetween(username, targetUsername)) {

            handleUnmatch(username, targetUsername, true);
            fameService.getBlocked(targetUser);
        }
        
    }


    @Transactional
    public void pass(User user, String targetUsername) {

        validateSelfRelation(user.getUsername(), targetUsername, "can't pass yourself");

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.pass(user.getUsername(), targetUser.getUsername());
    }


    private void validateSelfRelation(String username, String targetUsername, String message) {

        if (username.equals(targetUsername))
            throw new MatchExceptions.SelfRelationException(message);
    }

    private void handleUnmatch(String username, String targetUsername, Boolean block) {
        userRepository.deleteMatch(username, targetUsername);
        if (!block)
        {
            String message = username + " unlike you. :( ";
            notificationService.createAndSendNotification(username, targetUsername, NotificationType.UNLIKE, message);
        }
    }

    public List<User> getMatchedUsers(User user) 
    {
        return userRepository.findMatchedUsers(user.getUsername());
    }
}
