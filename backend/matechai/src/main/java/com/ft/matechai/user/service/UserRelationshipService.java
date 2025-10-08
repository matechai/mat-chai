package com.ft.matechai.user.service;

import java.util.Set;

import org.springframework.transaction.annotation.Transactional;

import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserRelationshipService {
	private final UserRepository userRepository;

	public UserRelationshipService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	// GETTERS // GETTERS // GETTERS // GETTERS //

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
