package com.ft.matechai.profile.service;

import com.ft.matechai.profile.dto.LocationDTO;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


@Service
public class ProfileService {

    private final UserRepository userRepository;

    public ProfileService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    public Page<UserBasicProfileDTO> getViewers(User user, int page, int size) {

        Pageable pageable = PageRequest.of(page, size);

        return userRepository.findViewersByUserId(user.getUsername(), pageable)
                .map(viewed -> new UserBasicProfileDTO(
                        viewed.getUsername(),
                        viewed.getAge(),
                        viewed.getProfileImageUrl(),
                        viewed.getImageUrls()
                ));
    }

    public void updateLocation(String username, LocationDTO location, String xForwardedFor) {

        User user = userRepository.findByUsernameOrThrow(username);

        if (location.getLatitude() == null || location.getLongitude() == null) {

            String ip = null;
            if (xForwardedFor != null && !xForwardedFor.isEmpty())
                ip = xForwardedFor.split(",")[0];

            GeoService geoService = new GeoService();
            GeoService.IpApiResponse response = geoService.getLocation(ip);
            location.setLatitude(response.lat);
            location.setLongitude(response.lon);
        }
        user.setLatitude(location.getLatitude());
        user.setLongitude(location.getLongitude());
        userRepository.save(user);
    }
}
