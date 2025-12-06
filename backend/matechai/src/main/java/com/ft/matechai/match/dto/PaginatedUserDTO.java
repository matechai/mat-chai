package com.ft.matechai.match.dto;

import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
public class PaginatedUserDTO {

    private List<UserBasicProfileDTO> users;
    private Long totalElements;
}