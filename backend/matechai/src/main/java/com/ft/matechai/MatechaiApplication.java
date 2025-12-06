package com.ft.matechai;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.mongo.MongoDataAutoConfiguration;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(
    exclude = {
        org.springframework.boot.autoconfigure.data.mongo.MongoRepositoriesAutoConfiguration.class,
        SecurityAutoConfiguration.class
    }
)
public class MatechaiApplication {

    public static void main(String[] args) {
        SpringApplication.run(MatechaiApplication.class, args);
    }
}
