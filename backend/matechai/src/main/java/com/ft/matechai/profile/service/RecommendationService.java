package com.ft.matechai.profile.service;

import com.ft.matechai.match.dto.PaginatedUserDTO;
import com.ft.matechai.option.repository.InterestRepository;
import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;


@Service
public class RecommendationService {

    private static final double EARTH_RADIUS_KM = 6371.0;
    private final InterestRepository interestRepository;
    private final UserRepository userRepository;

    public RecommendationService(InterestRepository interestRepository, UserRepository userRepository) {
        this.interestRepository = interestRepository;
        this.userRepository = userRepository;
    }


    /**
     * Returns a list of recommended users for the given user.
     * Steps:
     * 1. Exclude blocked users.
     * 2. Filter by gender and sexual preference.
     * 3. Sort by fame score in descending order.
     */
    public PaginatedUserDTO getRecommendedUsers(User user, int page, String sortBy, String order) {

        Pageable pageable = PageRequest.of(page, 1);
        Page<User> usersPage = userRepository.getUsersForMatching(user.getUsername(), pageable);

        if (!usersPage.hasContent())
            return null;

        List<User> sortedList = new ArrayList<>(usersPage.getContent());

        Comparator<User> comparator = switch (sortBy) {
            case "age" -> Comparator.comparing(User::getDateOfBirth);
            case "distance" -> Comparator.comparing(u -> distance(user.getLatitude(), user.getLongitude(), u.getLatitude(), u.getLongitude()));
            case "interest" -> Comparator.comparing(u -> calculateCommonTagsScore(user, u));
            default -> Comparator.comparing(User::getFame);
        };

        if ("desc".equalsIgnoreCase(order))
            comparator = comparator.reversed();
        sortedList.sort(comparator);

        User targetUser = sortedList.get(0);

        UserBasicProfileDTO userProfileDto = UserBasicProfileDTO.builder()
                .username(targetUser.getUsername())
                .profileImage(targetUser.getProfileImageUrl())
                .imageUrls(targetUser.getImageUrls())
                .dateOfBirth(targetUser.getDateOfBirth())
                .build();

        return PaginatedUserDTO.builder()
                .user(userProfileDto)
                .currentPage(page)
                .totalPages(usersPage.getTotalPages())
                .hasNext(usersPage.hasNext())
                .build();
    }

    public double calculateRecommendationScore(User user, User targetUser) {

        // Recommendation score = (distance score × 0.6) + (common tags score × 0.25) + (fame score × 0.15)

        int distanceScore = calculateDistanceScore(user, targetUser);
        int commonTagsScore = calculateCommonTagsScore(user, targetUser);
        double fameScore = calculateFameScore(targetUser);

        return distanceScore * 0.6 + commonTagsScore * 0.25 + fameScore * 0.15;
    }

    private int calculateDistanceScore(User user, User targetUser) {

        double distanceKm = distance(user.getLatitude(), user.getLongitude(), targetUser.getLatitude(), targetUser.getLongitude());

        if (distanceKm < 1) return 60;      // very close
        if (distanceKm < 5) return 55;
        if (distanceKm < 10) return 50;
        if (distanceKm < 20) return 40;
        if (distanceKm < 50) return 30;
        if (distanceKm < 100) return 15;

        return 5;       // Too far, minimal score
    }

    private int calculateCommonTagsScore(User user, User targetUser) {

        return interestRepository.getSameInterestCount(user.getUsername(), targetUser.getUsername());
    }

    private double calculateFameScore(User targetUser) {

        return Math.min((targetUser.getFame() / 100.0) * 15, 15);
    }


    public static double distance(double lat1, double lon1, double lat2, double lon2) {

        double dLat = Math.toRadians(lat2 - lat1);
        double dLon = Math.toRadians(lon2 - lon1);

        double a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) *
                        Math.sin(dLon / 2) * Math.sin(dLon / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        return EARTH_RADIUS_KM * c;     // Result: distance in km
    }
}
