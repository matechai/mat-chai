package com.ft.matechai;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
public class MatechaiApplication {

    public static void main(String[] args) {
        SpringApplication.run(MatechaiApplication.class, args);
    }

}
