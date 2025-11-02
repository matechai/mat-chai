package com.ft.matechai.match.dto;

import com.ft.matechai.profile.dto.UserBasicProfileDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class PaginatedUserDTO {

    private UserBasicProfileDTO user;
    private int currentPage;
    private int totalPages;
    private boolean hasNext;
}