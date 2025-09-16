package com.ft.matechai.database;

import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	// GETTERS // GETTERS // GETTERS // GETTERS //

	@Transactional(readOnly = true)
	public Optional<User> getUserById(Long userId) {
		return userRepository.findById(userId);
	}

	@Transactional(readOnly = true)
	public Set<User> getLikedUsers(Long userId) {
		User user = userRepository.findById(userId)
			.orElseThrow(() -> new RuntimeException("user not found"));
		return user.getLiked();
	}

	@Transactional(readOnly = true)
	public Set<User> getLikersUsers(Long userId) {
		User user = userRepository.findById(userId)
			.orElseThrow(() -> new RuntimeException("user not found"));
		return user.getLikers();
	}

	@Transactional(readOnly = true)
	public Set<User> getViewedUsers(Long userId) {
		User user = userRepository.findById(userId)
			.orElseThrow(() -> new RuntimeException("user not found"));
		return user.getViewed();
	}

	@Transactional(readOnly = true)
	public Set<User> getViewersUsers(Long userId) {
		User user = userRepository.findById(userId)
			.orElseThrow(() -> new RuntimeException("user not found"));
		return user.getViewers();
	}

	// SETTERS // SETTERS // SETTERS // SETTERS //

	public User saveUser(User u) {
		return userRepository.save(u);
	}

	public void removeUser(Long userId) {
		userRepository.deleteById(id);
	}

	public void likeUser(Long userId, Long toLikeId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User liked = userRepository.findById(toLikeId).orElseThrow(() -> new RuntimeException("tolike user not found"));

		user.getLiked().add(liked);
		userRepository.save(user);
	}

	public void unlikeUser(Long userId, Long toUnlikeId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User liked = userRepository.findById(tolikeId).orElseThrow(() -> new RuntimeException("tolike user not found"));

		user.getLiked().remove(liked);
		userRepository.save(user);
	}

	public void viewUser(Long userId, Long toViewId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User viewed = userRepository.findById(toViewId).orElseThrow(() -> new RuntimeException("toview user not found"));

		user.getViewd().add(viewed);
		userRepository.save(user);
	}

	public void unviewUser(Long userId, Long toUnviewId) {
		User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("user not found"));
		User viewed = userRepository.findById(toViewId).orElseThrow(() -> new RuntimeException("toview user not found"));

		user.getViewd().remove(viewed);
		userRepository.save(user);
	}

	// public void blockUser(Long userId, Long toBlockId) {
	// 	//LK Add code: Call a function to find follower user and followed user then add the followed user to the follower's Set and save it all
	// }
}
