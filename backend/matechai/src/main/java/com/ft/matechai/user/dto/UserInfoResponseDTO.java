package com.ft.matechai.user.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class UserInfoResponseDTO {

    private String username;
    private String email;
    private String firstName;
    private String lastName;
}
