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

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;


@Node("User")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = {"Viewed", "Liked", "Interested_in"})
public class User {

    // User Information
    @Id
    private String username;    // should be unique AND immutable, it would be better to use username as ID so the builtin functions return us the usernames
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private LocalDate DateOfBirth;
    private int age;
    private Role role;
    private String refreshToken;

    @Builder.Default
    private boolean enabled = false;
    @Builder.Default
    private boolean firstLogin = true;


    // Profile
    @Relationship(type = "HAS_GENDER", direction = Relationship.Direction.OUTGOING)
    private Gender gender;
    @Relationship(type = "HAS_PREFERENCE", direction = Relationship.Direction.OUTGOING)
    private List<SexualPreference> sexualPreferences;
    private String biography;
    @Relationship(type = "INTERESTED_IN", direction = Relationship.Direction.OUTGOING)
    private List<Tag> Interested_in;
    private String profilePictureUrl;
    @Builder.Default
    private List<String> pictureUrls = new ArrayList<>();

    private int fame;
    private String location;

    private String lastOnline;

    @JsonIgnore
	@Relationship(type = "Viewed", direction = Relationship.Direction.OUTGOING)
	private Set<User> Viewed;
	@JsonIgnore
	@Relationship(type = "Liked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Liked;
}