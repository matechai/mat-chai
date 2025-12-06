package com.ft.matechai.profile.service;

import com.ft.matechai.profile.dto.LocationDTO;
import com.ft.matechai.profile.dto.ReportRequestDTO;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.user.dto.PaginatedResponseDTO;
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


    public PaginatedResponseDTO<UserBasicProfileDTO> getViewers(User me, int page, int size) {

        Pageable pageable = PageRequest.of(page, size);

        Page<UserBasicProfileDTO> dtoPage = userRepository.findViewersByUserId(me.getUsername(), pageable)
                .map(viewed -> new UserBasicProfileDTO(
                        viewed.getUsername(),
                        viewed.getDateOfBirth(),
                        viewed.getProfileImageUrl(),
                        viewed.getImageUrls(),
                        userRepository.targetLikesMe(me.getUsername(), viewed.getUsername()),
                        userRepository.isMatched(me.getUsername(), viewed.getUsername())
                ));

        return PaginatedResponseDTO.<UserBasicProfileDTO>builder()
                .content(dtoPage.getContent())
                .number(dtoPage.getNumber())
                .totalPages(dtoPage.getTotalPages())
                .totalElements(dtoPage.getTotalElements())
                .last(dtoPage.isLast())
                .build();
    }

    public PaginatedResponseDTO<UserBasicProfileDTO> getUsersWhoLikedMe(User me, int page, int size) {

        Pageable pageable = PageRequest.of(page, size);

        Page<UserBasicProfileDTO> dtoPage = userRepository.findUsersWhoLikedMe(me.getUsername(), pageable)
                .map(viewed -> new UserBasicProfileDTO(
                        viewed.getUsername(),
                        viewed.getDateOfBirth(),
                        viewed.getProfileImageUrl(),
                        viewed.getImageUrls(),
                        userRepository.targetLikesMe(me.getUsername(), viewed.getUsername()),
                        userRepository.isMatched(me.getUsername(), viewed.getUsername())
                ));

        return PaginatedResponseDTO.<UserBasicProfileDTO>builder()
                .content(dtoPage.getContent())
                .number(dtoPage.getNumber())
                .totalPages(dtoPage.getTotalPages())
                .totalElements(dtoPage.getTotalElements())
                .last(dtoPage.isLast())
                .build();
    }

    @Transactional
    public void updateLocation(String username, LocationDTO location) {

        User user = userRepository.findByUsernameOrThrow(username);

        user.setLatitude(location.getLatitude());
        user.setLongitude(location.getLongitude());

        userRepository.save(user);
    }

    @Transactional
    public void reports(User user, ReportRequestDTO dto) {

        User targetUser = userRepository.findByUsernameOrThrow(dto.getTargetUsername());

        userRepository.report(user.getUsername(), targetUser.getUsername(), dto.getReason());
        fameService.getReported(targetUser);
    }
}
