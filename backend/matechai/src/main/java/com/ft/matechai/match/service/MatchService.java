package com.ft.matechai.match.service;

import com.ft.matechai.exception.MatchExceptions;
import com.ft.matechai.match.dto.LikeResponseDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MatchService {

    private final UserRepository userRepository;

    public MatchService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public LikeResponseDTO like(User user, String targetUsername) {

        validateSelfRelation(user.getUsername(), targetUsername, "can't like yourself");

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.like(user.getUsername(), targetUser.getUsername());
        // todo should send notification (don't send when they have block relation)

        if (userRepository.isLikedBetween(user.getUsername(), targetUser.getUsername())) {

            userRepository.match(user.getUsername(), targetUser.getUsername());
            // todo should create chat room
            // todo should send notification (don't send when they have block relation)

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

        if (userRepository.isMatchBetween(username, targetUsername))
            handleUnmatch(username, targetUsername);
    }

    public void block(User user, String targetUsername) {

        if (user.getUsername().equals(targetUsername))
            throw new MatchExceptions.SelfLikeException();

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.block(user.getUsername(), targetUser.getUsername());
    private void validateSelfRelation(String username, String targetUsername, String message) {

        if (username.equals(targetUsername))
            throw new MatchExceptions.SelfRelationException(message);
    }

    private void handleUnmatch(String username, String targetUsername) {

        userRepository.deleteMatch(username, targetUsername);

        // todo should remove chat room, block notification
        // This will prevent further notifications from that user, and the chat function between them will be disabled.;
    }
}
