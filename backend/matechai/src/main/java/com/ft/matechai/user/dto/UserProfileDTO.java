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

    @Builder.Default
    private List<String> sexualPreferences = new ArrayList<>();
    @Builder.Default
    private List<String> interests = new ArrayList<>();

    // todo 5 images, one should be profile picture

    public static UserProfileDTO from(User user) {

        return UserProfileDTO.builder()
                .gender(user.getGender().getGender())
                .sexualPreferences(
                        user.getSexualPreferences().stream()
                                .map(SexualPreference::getName)
                                .collect(Collectors.toList()))
                .biography(user.getBiography())
                .interests(
                        user.getInterested_in().stream()
                                .map(Interest::getName)
                                .collect(Collectors.toList()))
                // todo image
                .build();
    }
}
