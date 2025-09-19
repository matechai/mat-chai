package com.ft.matechai.user.node;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.neo4j.core.schema.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Node("User")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User {

    // User Information
    @Id @GeneratedValue
    private Long id;

    private String email;

    private String username;    // should be unique

    private String firstName;

    private String lastName;

    private String password;

    private boolean enabled = false;

    private boolean firstLogin = true;


    // Profile
    private String gender;

    private String sexualPreference;

    private String biography;

    @Relationship(type = "INTERESTED_IN", direction = Relationship.Direction.OUTGOING)
    private Set<Tag> interests = new HashSet<>();

    private String profilePictureUrl;

    private List<String> pictureUrls;

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
