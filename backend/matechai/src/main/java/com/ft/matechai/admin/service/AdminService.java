package com.ft.matechai.admin.service;

import com.ft.matechai.admin.dto.ReportResponseDTO;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service
public class AdminService {

    private final UserRepository userRepository;

    public AdminService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<ReportResponseDTO> getReports() {

        return userRepository.getReportedUsers();
    }
}
