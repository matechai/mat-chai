package com.ft.matechai.user.service;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	// GETTERS // GETTERS // GETTERS // GETTERS //

	@Transactional(readOnly = true)
    public UserInfoDTO getUserInfo(String username) {

        User user = userRepository.findByUsernameOrThrow(username);

        return UserInfoDTO.builder()
                .email(user.getEmail())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .build();
    }

	@Transactional(readOnly = true)
	public User getUserByUsername(String username) {
		return userRepository.findByUsernameOrThrow(username);
	}

	@Transactional(readOnly = true)
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public Page<User> getUsersPage(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("fame").descending());
        return userRepository.findAll(pageable);
    }

	// SETTERS // SETTERS // SETTERS // SETTERS //

    public void updateUserInfo(String username, UserInfoDTO dto) {

        User user = userRepository.findByUsernameOrThrow(username);

        user.setEmail(dto.getEmail());
        user.setFirstName(dto.getFirstName());
        user.setLastName(dto.getLastName());

        userRepository.save(user);
    }

	public User saveUser(User u) {
		return userRepository.save(u);
	}

	public void removeUser(String username) {
		userRepository.deleteUser(username);
	}
}
