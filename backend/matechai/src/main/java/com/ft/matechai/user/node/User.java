package com.ft.matechai.user.node;

import org.springframework.data.neo4j.core.schema.*;
import org.springframework.data.annotation.Id;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ft.matechai.enums.Role;

import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Node("User")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = {"Viewed", "Liked", "Blocked"})
public class User {

    // User Information
    @Id
    private String username;    // should be unique AND immutable, it would be better to use username as ID so the builtin functions return us the usernames

    private String email;

    private String firstName;

    private String lastName;

    private String password;

    @Builder.Default
    private boolean enabled = false;

    @Builder.Default
    private boolean firstLogin = true;

    private Role role;

    private String refreshToken;


    // Profile
    private int age;

    private String gender;

    private String sexualPreference;

    private String biography;

    private String profilePictureUrl;

    @Builder.Default
    private List<String> pictureUrls = new ArrayList<>();

    @Builder.Default
    private List<String> interests = new ArrayList<>();

    private int fame;

    private String location;

    private String lastOnline;

    @JsonIgnore
	@Relationship(type = "Viewed", direction = Relationship.Direction.OUTGOING)
	private Set<User> Viewed;
	
	@JsonIgnore
	@Relationship(type = "Liked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Liked;

	@JsonIgnore
	@Relationship(type = "Blocked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Blocked;

	@JsonIgnore
    @Relationship(type = "chat", direction = Relationship.Direction.OUTGOING)
    private List<Chat> chats;
}
