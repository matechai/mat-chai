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

	@Transactional(readOnly = true)
	public Set<User> getLikedUsers(String username) {
		User user = userRepository.findByUsernameOrThrow(username);
		return user.getLiked();
	}

	@Transactional(readOnly = true)
	public Set<String> getLikersUsers(String username) {
		return userRepository.findLikers(username);
	}

	@Transactional(readOnly = true)
	public Set<User> getViewedUsers(String username) {
		User user = userRepository.findByUsernameOrThrow(username);
		return user.getViewed();
	}

	@Transactional(readOnly = true)
	public Set<String> getViewersUsers(String username) {
		return userRepository.findViewers(username);
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

	public void likeUser(String username, String toLikeUsername) {
		User user = userRepository.findByUsernameOrThrow(username);
		User liked = userRepository.findByUsernameOrThrow(toLikeUsername);

		user.getLiked().add(liked);
		userRepository.save(user);
	}

	public void unlikeUser(String username, String toUnlikeUsername) {
		User user = userRepository.findByUsernameOrThrow(username);
		User unLiked = userRepository.findByUsernameOrThrow(toUnlikeUsername);

		user.getLiked().remove(unLiked);
		userRepository.save(user);
	}

	public void viewUser(String username, String toViewUsername) {
		User user = userRepository.findByUsernameOrThrow(username);
		User viewed = userRepository.findByUsernameOrThrow(toViewUsername);

		user.getViewed().add(viewed);
		userRepository.save(user);
	}

	public void unviewUser(String username, String toUnviewUsername) {
		User user = userRepository.findByUsernameOrThrow(username);
		User unViewed = userRepository.findByUsernameOrThrow(toUnviewUsername);

		user.getViewed().remove(unViewed);
		userRepository.save(user);
	}

	// public void blockUser(String userId, String toBlockId) {
	// 	//LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
	// }
}
