package com.ft.matechai.admin.controller;

import com.ft.matechai.admin.dto.ReportResponseDTO;
import com.ft.matechai.admin.service.AdminService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping("/api/admin")
public class AdminController {

    private final AdminService admin;

    public AdminController(AdminService admin) {
        this.admin = admin;

    }

    @GetMapping("/reports")
    public ResponseEntity<List<ReportResponseDTO>> getReportList() {

        List<ReportResponseDTO> response = admin.getReports();

        return ResponseEntity.ok(response);
    }
}
