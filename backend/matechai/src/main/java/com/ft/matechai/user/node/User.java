package com.ft.matechai.user.node;

import com.ft.matechai.option.node.Gender;
import com.ft.matechai.option.node.Interest;
import com.ft.matechai.option.node.SexualPreference;
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
import java.time.OffsetDateTime;
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
    private LocalDate dateOfBirth;
    private Role role;
    private String refreshToken;

    private OffsetDateTime lastOnline;
    @Builder.Default
    private boolean enabled = false;
    @Builder.Default
    private boolean isBanned = false;


    // Profile
    private String biography;
    @Builder.Default
    private Double fame = 10d;
    private Double latitude;
    private Double longitude;
    private String profileImageUrl;
    @Builder.Default
    private List<String> imageUrls = new ArrayList<>();

    @Relationship(type = "INTERESTED_IN", direction = Relationship.Direction.OUTGOING)
    private List<Interest> Interested_in = new ArrayList<>();
    @Relationship(type = "HAS_GENDER", direction = Relationship.Direction.OUTGOING)
    private Gender gender;
    @Relationship(type = "HAS_PREFERENCE", direction = Relationship.Direction.OUTGOING)
    private List<SexualPreference> sexualPreferences = new ArrayList<>();;


    @JsonIgnore @Relationship(type = "VIEWED", direction = Relationship.Direction.OUTGOING)
	private Set<User> Viewed;
	@JsonIgnore	@Relationship(type = "Liked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Liked;
    @JsonIgnore	@Relationship(type = "MATCHED", direction = Relationship.Direction.OUTGOING)
    private Set<User> matched;
    @JsonIgnore	@Relationship(type = "BLOCKED", direction = Relationship.Direction.OUTGOING)
    private Set<User> blocked;
}