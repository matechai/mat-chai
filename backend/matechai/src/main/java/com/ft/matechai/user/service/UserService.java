package com.ft.matechai.user.service;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	// GETTERS // GETTERS // GETTERS // GETTERS //

	@Transactional(readOnly = true)
    public User getUser(String username) {

        return userRepository.findByUsernameOrThrow(username);
    }

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
    public List<User> getAllUsers() {
        return userRepository.findAll();
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
}