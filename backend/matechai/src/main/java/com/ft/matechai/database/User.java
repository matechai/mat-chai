package com.ft.matechai.database;

import org.springframework.data.annotation.Id;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;
import org.springframework.data.neo4j.core.support.UUIDStringGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Node("User")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	@Id
	@GeneratedValue(UUIDStringGenerator.class)
	private String id;

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

	// @Relationship(type = "Viewed", direction = Relationship.Direction.INCOMING)
	// private Set<User> Viewers;
	@JsonIgnore
	@Relationship(type = "Viewed", direction = Relationship.Direction.OUTGOING)
	private Set<User> Viewed;

	// @Relationship(type = "Liked", direction = Relationship.Direction.INCOMING)
	// private Set<User> Likers;
	
	@JsonIgnore
	@Relationship(type = "Liked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Liked;

	@JsonIgnore
	@Relationship(type = "Blocked", direction = Relationship.Direction.OUTGOING)
	private Set<User> Blocked;
}
