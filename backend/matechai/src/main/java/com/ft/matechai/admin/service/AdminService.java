package com.ft.matechai.admin.service;

import com.ft.matechai.admin.dto.BanResponseDTO;
import com.ft.matechai.admin.dto.ReportResponseDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    @Transactional
    public BanResponseDTO banUser(String username) {

        User user = userRepository.findByUsernameOrThrow(username);
        return userRepository.ban(user.getUsername());
    }

    @Transactional
    public BanResponseDTO unbanUser(String username) {

        User user = userRepository.findByUsernameOrThrow(username);
        return userRepository.unban(user.getUsername());
    }

    public List<BanResponseDTO> getBannedUsers() {

        return userRepository.getBannedUsers();
    }
}
