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
import java.util.HashSet;
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
    @Id @GeneratedValue
    private Long id;

    private String email;

    private static final String username;    // should be unique AND immutable

    private String firstName;

    private String lastName;

    private String password;

    private boolean enabled = false;

    private boolean firstLogin = true;

    private Role role;

    private String refreshToken;


    // Profile
    private int age;

    private String gender;

    private String sexualPreference;

    private String biography;

    private String profilePictureUrl;
    
    private List<String> pictureUrls = new ArrayList<>();
    
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

//    // 좋아요
//    @Relationship(type = "LIKES", direction = Relationship.Direction.OUTGOING)
//    private Set<UserNode> likes = new HashSet<>();

//    // 매칭
//    @Relationship(type = "MATCHED", direction = Relationship.Direction.)
//    private Set<UserNode> matches = new HashSet<>();

    // 차단
//    @Relationship(type = "BLOCKED", direction = Relationship.Direction.OUTGOING)
//    private Set<UserNode> blocked = new HashSet<>();
//
//    // 내 프로필 조회자
//    @Relationship(type = "VIEWED", direction = Relationship.Direction.INCOMING)
//    private Set<UserNode> viewers = new HashSet<>();


//    @Relationship(type = "FOLLOWS", direction = Relationship.Direction.INCOMING)
//    private Set<UserNode> followers = new HashSet<>();



}
