package com.ft.matechai.profile.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserBasicProfileDTO {

    private String username;
    private LocalDate dateOfBirth;
    private String profileImage;
    private List<String> imageUrls;

}
