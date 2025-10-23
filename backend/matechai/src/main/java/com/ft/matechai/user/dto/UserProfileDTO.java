package com.ft.matechai.user.dto;

import com.ft.matechai.user.node.SexualPreference;
import com.ft.matechai.user.node.Tag;
import com.ft.matechai.user.node.User;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
@Builder
public class UserProfileDTO {

    private String gender;

    private List<String> sexualPreferences;

    private String biography;

    private List<String> tags;

    // todo 5 images, one should be profile picture

    public static UserProfileDTO from(User user) {

        return UserProfileDTO.builder()
                .gender(user.getGender().getGender())
                .sexualPreferences(
                        user.getSexualPreferences().stream()
                                .map(SexualPreference::getName)
                                .collect(Collectors.toList()))
                .biography(user.getBiography())
                .tags(
                        user.getInterested_in().stream()
                                .map(Tag::getName)
                                .collect(Collectors.toList()))
                // todo image
                .build();
    }
}
