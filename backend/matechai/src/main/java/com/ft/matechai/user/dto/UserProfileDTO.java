package com.ft.matechai.user.dto;

import com.ft.matechai.option.node.Interest;
import com.ft.matechai.option.node.SexualPreference;
import com.ft.matechai.user.node.User;
import lombok.Builder;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Data
@Builder
public class UserProfileDTO {

    private String gender;
    private String biography;
    private String profileImageUrl;
    private List<String> imageUrls;

    private String sexualPreference;
    @Builder.Default
    private List<String> interests = new ArrayList<>();


    public static UserProfileDTO from(User user) {

        return UserProfileDTO.builder()
                .gender(user.getGender().getGender())
                .sexualPreference(user.getSexualPreference().getName())
                .biography(user.getBiography())
                .interests(
                        user.getInterested_in().stream()
                                .map(Interest::getName)
                                .collect(Collectors.toList()))
                .profileImageUrl(user.getProfileImageUrl())
                .imageUrls(user.getImageUrls())
                .build();
    }
}
