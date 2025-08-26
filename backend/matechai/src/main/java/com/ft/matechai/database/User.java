package com.ft.matechai.database;

import org.springframework.data.annotation.Id;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Node;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Node("User")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @GeneratedValue
    private Long id;

    private String email;
    private String username;
    private String firstname;
    private String lastname;
    private int age;
    private String password;
    private String gender;
    private String sexualOrientation;
    private String bio;
    private List<String> interests = new ArrayList<>();
    private String profilePicture;
    private List<String> pictures = new ArrayList<>();
    private int fame;
    private String location;
    private String lastOnline;
}
