package com.ft.matechai.admin.dto;

import lombok.Builder;
import lombok.Data;

import java.util.List;


@Data
@Builder
public class ReportResponseDTO {

    private String username;
    private int reportCount;
    private List<String> reasons;
}
