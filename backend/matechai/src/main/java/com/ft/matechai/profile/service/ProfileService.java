package com.ft.matechai.profile.service;

import com.ft.matechai.profile.dto.LocationDTO;
import com.ft.matechai.profile.dto.ReportRequestDTO;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class ProfileService {

    private final UserRepository userRepository;
    private final FameService fameService;

    public ProfileService(UserRepository userRepository,
                          FameService fameService) {
        this.userRepository = userRepository;
        this.fameService = fameService;
    }


    public Page<UserBasicProfileDTO> getViewers(User me, int page, int size) {

        Pageable pageable = PageRequest.of(page, size);

        return userRepository.findViewersByUserId(me.getUsername(), pageable)
                .map(viewed -> new UserBasicProfileDTO(
                        viewed.getUsername(),
                        viewed.getDateOfBirth(),
                        viewed.getProfileImageUrl(),
                        viewed.getImageUrls(),
                        userRepository.targetLikesMe(me.getUsername(), viewed.getUsername()),
                        userRepository.isMatched(me.getUsername(), viewed.getUsername())
                ));
    }

    public Page<UserBasicProfileDTO> getUsersWhoLikedMe(User me, int page, int size) {

        Pageable pageable = PageRequest.of(page, size);

        return userRepository.findUsersWhoLikedMe(me.getUsername(), pageable)
                .map(viewed -> new UserBasicProfileDTO(
                        viewed.getUsername(),
                        viewed.getDateOfBirth(),
                        viewed.getProfileImageUrl(),
                        viewed.getImageUrls(),
                        userRepository.targetLikesMe(me.getUsername(), viewed.getUsername()),
                        userRepository.isMatched(me.getUsername(), viewed.getUsername())
                ));
    }

    @Transactional
    public void updateLocation(String username, LocationDTO location) {

        User user = userRepository.findByUsernameOrThrow(username);

        user.setLatitude(location.getLatitude());
        user.setLongitude(location.getLongitude());

        userRepository.save(user);
    }

    @Transactional
    public void report(User user, ReportRequestDTO dto) {

        User targetUser = userRepository.findByUsernameOrThrow(dto.getTargetUsername());

        userRepository.report(user.getUsername(), targetUser.getUsername(), dto.getReason());
        fameService.getReported(targetUser);
    }
}
