package com.ft.matechai;

import com.ft.matechai.database.User;
import com.ft.matechai.database.UserService;

import java.util.List;
import java.util.Set;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MatechaiApplication implements CommandLineRunner {

	private final UserService userService;

	public MatechaiApplication(UserService userService) {
		this.userService = userService;
	}

	public static void main(String[] args) {
		SpringApplication.run(MatechaiApplication.class, args);
	}
	@Override
	public void run(String... args) {
	}
}