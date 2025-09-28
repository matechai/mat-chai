package com.ft.matechai;

import com.ft.matechai.database.User;
import com.ft.matechai.database.UserService;

import java.util.List;
import java.util.Set;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import io.github.cdimascio.dotenv.Dotenv;

@SpringBootApplication
public class MatechaiApplication implements CommandLineRunner {

	private final UserService userService;

	public MatechaiApplication(UserService userService) {
		this.userService = userService;
	}

	public static void main(String[] args) {
		Dotenv dotenv = Dotenv.load();
		System.setProperty("NEO4J_URI", dotenv.get("NEO4J_URI"));
		System.setProperty("NEO4J_USERNAME", dotenv.get("NEO4J_USERNAME"));
		System.setProperty("NEO4J_PASSWORD", dotenv.get("NEO4J_PASSWORD"));
		System.out.println("Loaded URI: " + dotenv.get("NEO4J_URI"));
		SpringApplication.run(MatechaiApplication.class, args);
	}
	@Override
	public void run(String... args) {
		
		// User u = new User();
		// u.setUsername("someone");
		// User u2 = new User();
		// u2.setUsername("anotherone");
		// String id = userService.saveUser(u).getId();
		// String id2 = userService.saveUser(u2).getId();
		
		List<User> users = userService.getAllUsers();
		// // // System.out.println("All users: " + users);
		
		// // users.get(0).setFame(25);
		// // userService.saveUser(users.get(0));
		
		// // Page<User> page = userService.getUsersPage(0, 20);
		// // System.out.println("All users paged: " + page.getContent());
		
		// // System.out.println("id is: " + id);
		// userService.likeUser(users.get(0).getId(), users.get(1).getId());
		// userService.viewUser(users.get(1).getId(), users.get(0).getId());
		Set<String> str = userService.getViewersUsers(users.get(0).getId());
		System.out.println("viewers: " + str);
		System.out.println("likers: " + userService.getLikersUsers(users.get(1).getId()));
		System.out.println("likers0: " + userService.getLikedUsers(users.get(0).getId()));
		System.out.println("likers1: " + userService.getLikedUsers(users.get(1).getId()));
		System.out.println("viewers0: " + userService.getViewedUsers(users.get(0).getId()));
		System.out.println("viewers1: " + userService.getViewedUsers(users.get(1).getId()));
		// userService.removeUser("b9989f71-0cf5-46a5-9824-728827f3da10");
		// userService.removeUser(u.getId());
	}
}