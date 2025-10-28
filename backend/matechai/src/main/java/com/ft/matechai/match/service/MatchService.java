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

        if (user.getUsername().equals(targetUsername))
            throw new MatchExceptions.SelfLikeException();

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.like(user.getUsername(), targetUser.getUsername());
        // todo should send notification

        if (userRepository.isLikedBetween(user.getUsername(), targetUser.getUsername())) {

            userRepository.match(user.getUsername(), targetUser.getUsername());
            // todo should create chat room
            // todo should send notification

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

        if (user.getUsername().equals(targetUsername))
            throw new MatchExceptions.SelfLikeException();

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.deleteLike(user.getUsername(), targetUser.getUsername());

        if (userRepository.isMatchBetween(user.getUsername(), targetUser.getUsername())) {

            userRepository.deleteMatch(user.getUsername(), targetUser.getUsername());

            // todo should remove chat room, block notification
            // This will prevent further notifications from that user, and the chat function between them will be disabled.
        }
    }
}
