package com.ft.matechai.database;

import java.util.List;
import java.util.Optional;
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
	public Optional<User> getUserById(String userId) {
		return userRepository.findById(userId);
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
	public Set<User> getLikedUsers(String userId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		return user.getLiked();
	}

	@Transactional(readOnly = true)
	public Set<String> getLikersUsers(String userId) {
		return userRepository.findLikersIds(userId);
	}

	@Transactional(readOnly = true)
	public Set<User> getViewedUsers(String userId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		return user.getViewed();
	}

	@Transactional(readOnly = true)
	public Set<String> getViewersUsers(String userId) {
		return userRepository.findViewersIds(userId);
	}

	// SETTERS // SETTERS // SETTERS // SETTERS //

	public User saveUser(User u) {
		return userRepository.save(u);
	}

	public void removeUser(String userId) {
		userRepository.deleteById(userId);
	}

	public void likeUser(String userId, String toLikeId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User liked = userRepository.findById(toLikeId).orElseThrow(() -> new RuntimeException("toLike user not found"));

		user.getLiked().add(liked);
		userRepository.save(user);
	}

	public void unlikeUser(String userId, String toUnlikeId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User unLiked = userRepository.findById(toUnlikeId).orElseThrow(() -> new RuntimeException("toUnlike user not found"));

		user.getLiked().remove(unLiked);
		userRepository.save(user);
	}

	public void viewUser(String userId, String toViewId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User viewed = userRepository.findById(toViewId).orElseThrow(() -> new RuntimeException("toView user not found"));

		user.getViewed().add(viewed);
		userRepository.save(user);
	}

	public void unviewUser(String userId, String toUnviewId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User unViewed = userRepository.findById(toUnviewId).orElseThrow(() -> new RuntimeException("toUnview user not found"));

		user.getViewed().remove(unViewed);
		userRepository.save(user);
	}

	// public void blockUser(String userId, String toBlockId) {
	// 	//LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
	// }
}
