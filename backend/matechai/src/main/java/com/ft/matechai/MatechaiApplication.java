package com.ft.matechai;
import com.ft.matechai.database.UserService;
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
        // userService.addUser("Alice", 25);
        // userService.addUser("Bob", 30);
        userService.removeUser("Alice");
        userService.removeUser("Bob");
        System.out.println("Users added!");
    }
}
