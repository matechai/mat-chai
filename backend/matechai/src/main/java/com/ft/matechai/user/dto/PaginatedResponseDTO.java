package com.ft.matechai.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
public class PaginatedResponseDTO<T> {

    private List<T> content;
    private int number;
    private int totalPages;
    private long totalElements;
    private boolean last;

}
