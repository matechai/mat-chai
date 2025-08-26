package com.ft.matechai;

import com.ft.matechai.database.User;
import com.ft.matechai.database.UserService;

import java.util.List;

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
        User u = new User();
        u.setEmail("john@example.com");
        u.setUsername("johnny");
        u.setFirstname("John");
        u.setLastname("Doe");
        u.setAge(25);
        u.setPassword("secret");
        u.setGender("male");
        u.setSexualOrientation("straight");
        u.setBio("Hello world!");
        u.setInterests(List.of("coding", "gaming"));
        u.setProfilePicture("profile.png");
        u.setPictures(List.of("pic1.png", "pic2.png"));
        u.setFame(10);
        u.setLocation("New York");
        u.setLastOnline("2025-08-25");
        userService.addUser(u);
        // userService.removeUser(u.getId());
        System.out.println("Users added!");
    }
}
