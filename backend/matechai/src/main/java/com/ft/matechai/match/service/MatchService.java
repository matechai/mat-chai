package com.ft.matechai.match.service;

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

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        userRepository.like(user.getUsername(), targetUser.getUsername());

        if (userRepository.isLikedBetween(user.getUsername(), targetUser.getUsername())) {

            userRepository.match(user.getUsername(), targetUser.getUsername());
            // todo should create chat room

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
}
