MATCH (n) DETACH DELETE n;

MERGE (:Gender {gender: 'Female'});
MERGE (:Gender {gender: 'Male'});
MERGE (:Gender {gender: 'Others'});

MERGE (:SexualPreference {name: 'Heterosexual'});
MERGE (:SexualPreference {name: 'Homosexual'});
MERGE (:SexualPreference {name: 'Bisexual'});
MERGE (:SexualPreference {name: 'Prefer not to say'});
MERGE (:SexualPreference {name: 'Other'});

MERGE (:Interest {name: 'Vegan'});
MERGE (:Interest {name: 'Geek'});
MERGE (:Interest {name: 'Piercing'});
MERGE (:Interest {name: 'Fitness'});
MERGE (:Interest {name: 'Gaming'});
MERGE (:Interest {name: 'Music'});
MERGE (:Interest {name: 'Travel'});
MERGE (:Interest {name: 'Books'});
MERGE (:Interest {name: 'Photography'});
MERGE (:Interest {name: 'Art'});
MERGE (:Interest {name: 'Foodie'});
MERGE (:Interest {name: 'Technology'});
MERGE (:Interest {name: 'Fashion'});
MERGE (:Interest {name: 'Sports'});
MERGE (:Interest {name: 'Animals'});
MERGE (:Interest {name: 'Outdoor activities'});
MERGE (:Interest {name: 'Movies'});
MERGE (:Interest {name: 'Mental health awareness'});
MERGE (:Interest {name: 'Environmentalism'});
MERGE (:Interest {name: 'Cooking'});

CREATE (u:User {
			username: 'bulbasaur1',
			email: 'bulbasaur1@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.86115,
			longitude: 36.851705,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2003-02-20'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'bulbasaur1'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur1'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur2',
			email: 'ivysaur2@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.504413,
			longitude: 14.0622,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1990-09-17'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'ivysaur2'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur2'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur3',
			email: 'venusaur3@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.507049,
			longitude: 35.144441,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2002-05-05'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'venusaur3'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur3'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander4',
			email: 'charmander4@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.289884,
			longitude: 8.057254,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1995-01-28'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmander4'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander4'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon5',
			email: 'charmeleon5@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.641557,
			longitude: 20.083775,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2005-10-08'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charmeleon5'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon5'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard6',
			email: 'charizard6@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.91911,
			longitude: 7.722833,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2006-08-23'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charizard6'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard6'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle7',
			email: 'squirtle7@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.312631,
			longitude: -7.084637,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2015-07-06'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'squirtle7'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle7'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle8',
			email: 'wartortle8@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.482575,
			longitude: 5.73771,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1995-10-11'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'wartortle8'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle8'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise9',
			email: 'blastoise9@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.236776,
			longitude: 14.754464,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-23'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'blastoise9'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise9'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie10',
			email: 'caterpie10@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.599444,
			longitude: 15.280198,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2015-02-18'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'caterpie10'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie10'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod11',
			email: 'metapod11@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.085406,
			longitude: -0.203294,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2006-07-03'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'metapod11'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod11'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree12',
			email: 'butterfree12@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.782922,
			longitude: 1.827109,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1986-09-26'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'butterfree12'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree12'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle13',
			email: 'weedle13@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.173824,
			longitude: 4.962405,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2000-03-03'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'weedle13'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle13'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna14',
			email: 'kakuna14@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.501671,
			longitude: 10.737741,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1987-11-08'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'kakuna14'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna14'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill15',
			email: 'beedrill15@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.546537,
			longitude: 37.690982,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2012-10-15'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'beedrill15'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill15'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey16',
			email: 'pidgey16@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.196837,
			longitude: 14.173294,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1986-10-13'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgey16'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey16'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto17',
			email: 'pidgeotto17@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.687223,
			longitude: 6.139785,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2003-04-13'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeotto17'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto17'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot18',
			email: 'pidgeot18@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.421275,
			longitude: -5.712933,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2002-08-06'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pidgeot18'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot18'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata19',
			email: 'rattata19@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.370016,
			longitude: 1.419819,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1988-08-08'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'rattata19'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata19'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans20',
			email: 'ekans20@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.614416,
			longitude: 32.873104,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2008-02-05'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'ekans20'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans20'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu21',
			email: 'pikachu21@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.537438,
			longitude: 31.78471,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2017-05-14'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pikachu21'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu21'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu22',
			email: 'raichu22@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.957142,
			longitude: 3.656409,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2010-06-10'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'raichu22'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu22'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett23',
			email: 'diglett23@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.01012,
			longitude: -1.369444,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2012-05-15'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett23'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett23'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio24',
			email: 'dugtrio24@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.396408,
			longitude: -8.612247,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2016-07-28'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'dugtrio24'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio24'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy25',
			email: 'clefairy25@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.62686,
			longitude: 32.596302,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1989-03-07'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'clefairy25'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy25'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix26',
			email: 'vulpix26@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.315932,
			longitude: 6.280981,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2005-10-14'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vulpix26'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix26'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff27',
			email: 'jigglypuff27@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.847467,
			longitude: 18.005831,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2019-11-08'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'jigglypuff27'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff27'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat28',
			email: 'golbat28@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.363469,
			longitude: 18.930345,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1987-08-14'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'golbat28'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat28'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret29',
			email: 'sentret29@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.297733,
			longitude: 1.705645,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2015-04-04'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'sentret29'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret29'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume30',
			email: 'vileplume30@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.133044,
			longitude: 15.02175,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1994-02-15'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'vileplume30'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume30'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett231',
			email: 'diglett231@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.614965,
			longitude: 34.004181,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2019-11-27'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'diglett231'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett231'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth32',
			email: 'meowth32@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.277831,
			longitude: -2.34703,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1997-08-20'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'meowth32'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth32'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian33',
			email: 'persian33@pokemon.com',
			firstName: 'Persian',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.178371,
			longitude: 28.049643,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1993-11-08'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'persian33'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian33'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck34',
			email: 'psyduck34@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.54153,
			longitude: 31.337527,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2001-03-04'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'psyduck34'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck34'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe35',
			email: 'growlithe35@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.785775,
			longitude: 18.101676,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-22'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'growlithe35'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe35'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag36',
			email: 'poliwag36@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.160695,
			longitude: 36.278465,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1987-07-26'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'poliwag36'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag36'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl37',
			email: 'poliwhirl37@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.444271,
			longitude: 39.693656,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2010-03-04'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'poliwhirl37'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl37'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra38',
			email: 'abra38@pokemon.com',
			firstName: 'Abra',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.283165,
			longitude: 13.520057,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1998-09-15'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'abra38'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra38'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop39',
			email: 'machop39@pokemon.com',
			firstName: 'Machop',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.235669,
			longitude: 21.122212,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-30'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'machop39'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop39'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke40',
			email: 'slowpoke40@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.939969,
			longitude: -4.890541,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2020-08-24'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'slowpoke40'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke40'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro41',
			email: 'slowbro41@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.929673,
			longitude: 19.432833,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2012-03-10'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'slowbro41'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro41'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd42',
			email: 'farfetchd42@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.419542,
			longitude: 13.347955,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2017-04-29'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'farfetchd42'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd42'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone43',
			email: 'cubone43@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.604648,
			longitude: 25.517952,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1989-03-28'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone43'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone43'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur44',
			email: 'bulbasaur44@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.557772,
			longitude: -5.831212,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2014-03-19'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'bulbasaur44'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur44'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur45',
			email: 'ivysaur45@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.260357,
			longitude: 36.733723,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2006-04-27'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ivysaur45'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur45'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur46',
			email: 'venusaur46@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.336611,
			longitude: 14.329093,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1987-09-05'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur46'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur46'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander47',
			email: 'charmander47@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.96834,
			longitude: 32.840758,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2020-06-21'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmander47'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander47'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon48',
			email: 'charmeleon48@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.238652,
			longitude: 25.084978,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1992-04-25'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmeleon48'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon48'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard49',
			email: 'charizard49@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.245306,
			longitude: 31.321175,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1990-06-08'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charizard49'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard49'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle50',
			email: 'squirtle50@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.279851,
			longitude: 23.774627,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2003-06-19'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'squirtle50'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle50'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle51',
			email: 'wartortle51@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.910835,
			longitude: 22.243764,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2002-04-11'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'wartortle51'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle51'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise52',
			email: 'blastoise52@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.666331,
			longitude: -5.317224,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1993-04-21'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise52'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise52'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie53',
			email: 'caterpie53@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.872364,
			longitude: -9.460149,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-07'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'caterpie53'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie53'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod54',
			email: 'metapod54@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.434088,
			longitude: 18.726983,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-18'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'metapod54'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod54'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree55',
			email: 'butterfree55@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.419708,
			longitude: 34.614728,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1996-08-04'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'butterfree55'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree55'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle56',
			email: 'weedle56@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.817068,
			longitude: 28.853236,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-19'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'weedle56'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle56'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna57',
			email: 'kakuna57@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.073793,
			longitude: 13.331402,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1996-05-09'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'kakuna57'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna57'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill58',
			email: 'beedrill58@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.618585,
			longitude: 12.29604,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1992-02-07'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'beedrill58'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill58'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey59',
			email: 'pidgey59@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.941999,
			longitude: -0.574462,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2009-05-20'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgey59'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey59'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto60',
			email: 'pidgeotto60@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.353253,
			longitude: 34.647475,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-29'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pidgeotto60'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto60'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot61',
			email: 'pidgeot61@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.924517,
			longitude: 11.069576,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2003-11-14'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeot61'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot61'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata62',
			email: 'rattata62@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.706059,
			longitude: 7.707833,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2012-07-11'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'rattata62'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata62'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans63',
			email: 'ekans63@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.981267,
			longitude: 2.502874,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1999-12-19'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'ekans63'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans63'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu64',
			email: 'pikachu64@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.967675,
			longitude: 28.925883,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2016-08-09'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pikachu64'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu64'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu65',
			email: 'raichu65@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.308026,
			longitude: 18.902424,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2014-04-11'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'raichu65'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu65'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett66',
			email: 'diglett66@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.099152,
			longitude: 17.908637,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-04'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett66'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett66'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio67',
			email: 'dugtrio67@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.048821,
			longitude: 31.14049,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2008-02-27'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'dugtrio67'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio67'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy68',
			email: 'clefairy68@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.037773,
			longitude: 38.294711,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1999-04-27'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'clefairy68'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy68'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix69',
			email: 'vulpix69@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.931134,
			longitude: 30.235696,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-04'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vulpix69'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix69'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff70',
			email: 'jigglypuff70@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.986854,
			longitude: -7.61008,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-27'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'jigglypuff70'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff70'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat71',
			email: 'golbat71@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.634819,
			longitude: -4.474269,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1992-06-14'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat71'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat71'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret72',
			email: 'sentret72@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.183319,
			longitude: -7.939719,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2017-08-20'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'sentret72'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret72'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume73',
			email: 'vileplume73@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.690454,
			longitude: -0.268418,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1986-02-26'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'vileplume73'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume73'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett274',
			email: 'diglett274@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.443928,
			longitude: 4.899323,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2000-10-06'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett274'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett274'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth75',
			email: 'meowth75@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.043444,
			longitude: -1.070468,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2004-02-04'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'meowth75'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth75'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian76',
			email: 'persian76@pokemon.com',
			firstName: 'Persian',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.580022,
			longitude: 26.03523,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1988-03-01'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'persian76'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian76'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck77',
			email: 'psyduck77@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.315226,
			longitude: 39.044603,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2019-12-08'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'psyduck77'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck77'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe78',
			email: 'growlithe78@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.214909,
			longitude: 31.455526,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2007-10-04'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'growlithe78'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe78'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag79',
			email: 'poliwag79@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.836597,
			longitude: 22.526853,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1991-12-10'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwag79'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag79'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl80',
			email: 'poliwhirl80@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.98332,
			longitude: 4.056304,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2011-08-06'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'poliwhirl80'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl80'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra81',
			email: 'abra81@pokemon.com',
			firstName: 'Abra',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.601633,
			longitude: 5.572844,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2000-10-23'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'abra81'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra81'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop82',
			email: 'machop82@pokemon.com',
			firstName: 'Machop',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.965617,
			longitude: 18.271319,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2001-08-05'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'machop82'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop82'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke83',
			email: 'slowpoke83@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.761822,
			longitude: 28.187628,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-13'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowpoke83'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke83'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro84',
			email: 'slowbro84@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.607095,
			longitude: 25.469059,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2005-10-08'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'slowbro84'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro84'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd85',
			email: 'farfetchd85@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.832264,
			longitude: 3.02307,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2020-04-05'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'farfetchd85'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd85'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone86',
			email: 'cubone86@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.856288,
			longitude: 30.814561,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2014-12-08'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'cubone86'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone86'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur87',
			email: 'bulbasaur87@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.767294,
			longitude: -3.540667,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2011-05-16'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'bulbasaur87'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur87'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur88',
			email: 'ivysaur88@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.58649,
			longitude: 34.944231,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1986-11-06'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'ivysaur88'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur88'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur89',
			email: 'venusaur89@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.581915,
			longitude: -6.314467,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-25'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'venusaur89'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur89'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander90',
			email: 'charmander90@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.570465,
			longitude: 0.527855,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2018-12-19'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charmander90'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander90'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon91',
			email: 'charmeleon91@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.987432,
			longitude: 34.879475,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2003-12-03'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmeleon91'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon91'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard92',
			email: 'charizard92@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.479777,
			longitude: 1.083139,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2017-11-07'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'charizard92'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard92'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle93',
			email: 'squirtle93@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.21487,
			longitude: 4.981529,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1993-07-31'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle93'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle93'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle94',
			email: 'wartortle94@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.840122,
			longitude: 35.662072,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1993-06-26'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'wartortle94'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle94'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise95',
			email: 'blastoise95@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.594694,
			longitude: -2.336664,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1992-03-08'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise95'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise95'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie96',
			email: 'caterpie96@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.955266,
			longitude: 20.976272,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1993-06-28'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'caterpie96'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie96'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod97',
			email: 'metapod97@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.440315,
			longitude: 6.585869,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1994-01-22'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod97'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod97'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree98',
			email: 'butterfree98@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.786124,
			longitude: 34.890058,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2013-01-28'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'butterfree98'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree98'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle99',
			email: 'weedle99@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.018172,
			longitude: 15.865758,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-24'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'weedle99'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle99'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna100',
			email: 'kakuna100@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.702988,
			longitude: 3.732701,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2009-11-16'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'kakuna100'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna100'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill101',
			email: 'beedrill101@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.768936,
			longitude: 35.747123,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2012-01-23'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'beedrill101'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill101'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey102',
			email: 'pidgey102@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.641523,
			longitude: 17.636742,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2003-05-18'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pidgey102'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey102'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto103',
			email: 'pidgeotto103@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.449749,
			longitude: -9.453076,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1992-01-30'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeotto103'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto103'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot104',
			email: 'pidgeot104@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.491411,
			longitude: 14.029321,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2010-04-18'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pidgeot104'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot104'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata105',
			email: 'rattata105@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.582325,
			longitude: -3.351091,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-05'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'rattata105'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata105'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans106',
			email: 'ekans106@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.729513,
			longitude: 11.086396,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2016-07-26'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ekans106'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans106'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu107',
			email: 'pikachu107@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.443843,
			longitude: -6.081229,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1993-11-06'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pikachu107'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu107'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu108',
			email: 'raichu108@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.23506,
			longitude: -2.265599,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1995-04-01'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'raichu108'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu108'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett109',
			email: 'diglett109@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.793859,
			longitude: 32.218637,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2008-01-22'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett109'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett109'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio110',
			email: 'dugtrio110@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.295113,
			longitude: 34.81731,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1997-05-07'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'dugtrio110'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio110'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy111',
			email: 'clefairy111@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.528655,
			longitude: -6.649005,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1995-09-11'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'clefairy111'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy111'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix112',
			email: 'vulpix112@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.756154,
			longitude: 6.76031,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2005-11-15'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vulpix112'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix112'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff113',
			email: 'jigglypuff113@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.373024,
			longitude: 34.424412,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2010-10-14'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'jigglypuff113'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff113'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat114',
			email: 'golbat114@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.162229,
			longitude: -2.540737,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1995-04-07'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat114'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat114'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret115',
			email: 'sentret115@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.87655,
			longitude: 18.533381,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2019-05-30'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'sentret115'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret115'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume116',
			email: 'vileplume116@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.69522,
			longitude: 18.375146,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2002-12-27'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'vileplume116'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume116'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2117',
			email: 'diglett2117@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.439131,
			longitude: -6.524068,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1991-11-11'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett2117'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2117'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth118',
			email: 'meowth118@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.281172,
			longitude: 30.162513,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2017-01-13'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'meowth118'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth118'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian119',
			email: 'persian119@pokemon.com',
			firstName: 'Persian',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.389852,
			longitude: 15.888198,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1990-07-05'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'persian119'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian119'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck120',
			email: 'psyduck120@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.39076,
			longitude: -5.693241,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1998-09-01'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'psyduck120'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck120'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe121',
			email: 'growlithe121@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.176733,
			longitude: 3.562814,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-24'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'growlithe121'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe121'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag122',
			email: 'poliwag122@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.842656,
			longitude: 13.829582,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2012-05-10'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'poliwag122'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag122'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl123',
			email: 'poliwhirl123@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.14937,
			longitude: 39.189231,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2008-05-06'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwhirl123'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl123'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra124',
			email: 'abra124@pokemon.com',
			firstName: 'Abra',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.426033,
			longitude: 15.912373,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2006-02-13'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'abra124'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra124'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop125',
			email: 'machop125@pokemon.com',
			firstName: 'Machop',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.429826,
			longitude: 39.720481,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2001-09-03'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'machop125'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop125'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke126',
			email: 'slowpoke126@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.947377,
			longitude: 12.054967,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2017-08-10'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'slowpoke126'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke126'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro127',
			email: 'slowbro127@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.94729,
			longitude: 38.172215,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-28'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'slowbro127'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro127'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd128',
			email: 'farfetchd128@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.76357,
			longitude: 31.006535,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1993-04-09'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'farfetchd128'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd128'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone129',
			email: 'cubone129@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.547973,
			longitude: -7.507232,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1995-08-09'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'cubone129'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone129'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur130',
			email: 'bulbasaur130@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.175473,
			longitude: 18.760102,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1996-06-14'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'bulbasaur130'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur130'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur131',
			email: 'ivysaur131@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.940792,
			longitude: 36.804506,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1990-12-02'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'ivysaur131'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur131'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur132',
			email: 'venusaur132@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.203434,
			longitude: 12.699501,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2006-02-21'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur132'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur132'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander133',
			email: 'charmander133@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.541936,
			longitude: -0.178874,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1989-10-09'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charmander133'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander133'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon134',
			email: 'charmeleon134@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.915482,
			longitude: 4.159704,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2013-05-21'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'charmeleon134'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon134'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard135',
			email: 'charizard135@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.373738,
			longitude: 1.367663,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1985-12-09'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'charizard135'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard135'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle136',
			email: 'squirtle136@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.793408,
			longitude: 21.038142,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2015-10-30'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'squirtle136'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle136'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle137',
			email: 'wartortle137@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.246262,
			longitude: 6.687641,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1998-06-17'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'wartortle137'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle137'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise138',
			email: 'blastoise138@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.56609,
			longitude: 32.132603,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2010-03-24'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise138'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise138'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie139',
			email: 'caterpie139@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.884004,
			longitude: -7.983433,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2011-01-15'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'caterpie139'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie139'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod140',
			email: 'metapod140@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.316982,
			longitude: 36.167771,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-27'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'metapod140'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod140'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree141',
			email: 'butterfree141@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.000053,
			longitude: 29.398935,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2006-03-16'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'butterfree141'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree141'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle142',
			email: 'weedle142@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.581404,
			longitude: -1.026575,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1993-10-20'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'weedle142'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle142'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna143',
			email: 'kakuna143@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.053134,
			longitude: -2.59811,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2003-08-22'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'kakuna143'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna143'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill144',
			email: 'beedrill144@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.281007,
			longitude: -8.018877,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2018-07-08'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'beedrill144'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill144'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey145',
			email: 'pidgey145@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.624055,
			longitude: 13.702903,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2008-08-13'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pidgey145'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey145'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto146',
			email: 'pidgeotto146@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.366515,
			longitude: 4.557717,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1990-11-20'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgeotto146'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto146'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot147',
			email: 'pidgeot147@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.740429,
			longitude: 35.812564,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2005-05-29'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgeot147'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot147'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata148',
			email: 'rattata148@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.711117,
			longitude: 32.987607,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1996-05-16'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'rattata148'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata148'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans149',
			email: 'ekans149@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.516503,
			longitude: -1.020546,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2014-03-31'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans149'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans149'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu150',
			email: 'pikachu150@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.823899,
			longitude: 0.233846,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-15'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pikachu150'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu150'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu151',
			email: 'raichu151@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.615147,
			longitude: 37.079444,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1997-05-19'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'raichu151'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu151'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett152',
			email: 'diglett152@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.992662,
			longitude: 29.154,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1988-10-05'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'diglett152'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett152'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio153',
			email: 'dugtrio153@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.334983,
			longitude: -2.940684,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1989-12-18'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'dugtrio153'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio153'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy154',
			email: 'clefairy154@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.941261,
			longitude: 21.955057,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1987-09-09'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'clefairy154'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy154'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix155',
			email: 'vulpix155@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.429789,
			longitude: 39.939692,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2020-10-06'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'vulpix155'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix155'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff156',
			email: 'jigglypuff156@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.7756,
			longitude: 29.354807,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2014-08-04'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'jigglypuff156'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff156'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat157',
			email: 'golbat157@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.793081,
			longitude: 1.021759,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-28'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'golbat157'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat157'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret158',
			email: 'sentret158@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.401702,
			longitude: 16.382337,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2018-01-24'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'sentret158'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret158'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume159',
			email: 'vileplume159@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.383088,
			longitude: 38.047431,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-17'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'vileplume159'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume159'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2160',
			email: 'diglett2160@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.980435,
			longitude: -8.16816,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1987-07-27'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'diglett2160'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2160'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth161',
			email: 'meowth161@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.160141,
			longitude: 31.83271,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2017-05-01'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'meowth161'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth161'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian162',
			email: 'persian162@pokemon.com',
			firstName: 'Persian',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.496563,
			longitude: 0.008324,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-25'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'persian162'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian162'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck163',
			email: 'psyduck163@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.131129,
			longitude: 19.445066,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2004-09-24'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck163'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck163'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe164',
			email: 'growlithe164@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.517999,
			longitude: 32.813213,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2007-09-22'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'growlithe164'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe164'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag165',
			email: 'poliwag165@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.379805,
			longitude: 22.837964,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-06'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'poliwag165'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag165'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl166',
			email: 'poliwhirl166@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.085651,
			longitude: 31.692375,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2019-05-01'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'poliwhirl166'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl166'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra167',
			email: 'abra167@pokemon.com',
			firstName: 'Abra',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.490857,
			longitude: 0.547509,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2008-09-11'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'abra167'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra167'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop168',
			email: 'machop168@pokemon.com',
			firstName: 'Machop',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.518587,
			longitude: 19.052555,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2013-11-28'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'machop168'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop168'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke169',
			email: 'slowpoke169@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.920698,
			longitude: 10.549349,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2008-05-20'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'slowpoke169'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke169'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro170',
			email: 'slowbro170@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.727764,
			longitude: 24.007025,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2018-04-02'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'slowbro170'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro170'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd171',
			email: 'farfetchd171@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.066013,
			longitude: 13.727297,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1996-01-07'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'farfetchd171'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd171'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone172',
			email: 'cubone172@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.573657,
			longitude: 6.226614,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1992-01-04'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'cubone172'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone172'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur173',
			email: 'bulbasaur173@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.14266,
			longitude: 32.64567,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2016-03-05'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'bulbasaur173'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur173'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur174',
			email: 'ivysaur174@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.515876,
			longitude: 15.971817,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1993-09-08'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'ivysaur174'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur174'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur175',
			email: 'venusaur175@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.533365,
			longitude: 33.425473,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2019-08-14'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur175'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur175'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander176',
			email: 'charmander176@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.265684,
			longitude: 17.171899,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2014-12-15'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charmander176'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander176'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon177',
			email: 'charmeleon177@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.945212,
			longitude: 12.860917,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1999-09-22'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmeleon177'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon177'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard178',
			email: 'charizard178@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.666041,
			longitude: 23.033876,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1989-06-19'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charizard178'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard178'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle179',
			email: 'squirtle179@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.206391,
			longitude: 29.023095,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2005-01-23'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'squirtle179'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle179'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle180',
			email: 'wartortle180@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.582736,
			longitude: 28.834859,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2001-08-09'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'wartortle180'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle180'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise181',
			email: 'blastoise181@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.881919,
			longitude: 15.200364,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1989-09-07'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise181'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise181'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie182',
			email: 'caterpie182@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.77681,
			longitude: 12.819565,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2011-12-29'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'caterpie182'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie182'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod183',
			email: 'metapod183@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.119255,
			longitude: 3.331855,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2008-02-20'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'metapod183'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod183'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree184',
			email: 'butterfree184@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.332607,
			longitude: -1.43034,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1992-04-22'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'butterfree184'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree184'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle185',
			email: 'weedle185@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.463949,
			longitude: -2.463915,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2010-12-17'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'weedle185'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle185'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna186',
			email: 'kakuna186@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.206955,
			longitude: 35.258115,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2001-12-15'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'kakuna186'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna186'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill187',
			email: 'beedrill187@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.247727,
			longitude: 4.995925,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2017-12-24'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'beedrill187'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill187'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey188',
			email: 'pidgey188@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.483519,
			longitude: 4.425265,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1998-01-22'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgey188'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey188'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto189',
			email: 'pidgeotto189@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.966323,
			longitude: 37.204972,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1997-07-24'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeotto189'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto189'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot190',
			email: 'pidgeot190@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.734428,
			longitude: 2.78806,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2016-02-12'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeot190'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot190'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata191',
			email: 'rattata191@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.664801,
			longitude: -0.967714,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2007-08-29'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'rattata191'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata191'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans192',
			email: 'ekans192@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.245776,
			longitude: -0.33942,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2011-10-18'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans192'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans192'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu193',
			email: 'pikachu193@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.329452,
			longitude: -2.4106,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-21'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pikachu193'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu193'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu194',
			email: 'raichu194@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.470279,
			longitude: 28.402285,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1999-11-09'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'raichu194'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu194'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett195',
			email: 'diglett195@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.61767,
			longitude: -5.621352,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2011-08-04'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'diglett195'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett195'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio196',
			email: 'dugtrio196@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.262542,
			longitude: 5.049979,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1986-11-01'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'dugtrio196'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio196'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy197',
			email: 'clefairy197@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.257089,
			longitude: 12.743298,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2003-10-07'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'clefairy197'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy197'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix198',
			email: 'vulpix198@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.523968,
			longitude: 13.601952,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2002-06-23'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vulpix198'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix198'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff199',
			email: 'jigglypuff199@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.869017,
			longitude: 16.380947,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1999-07-05'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff199'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff199'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat200',
			email: 'golbat200@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.460568,
			longitude: 36.045677,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1991-12-20'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'golbat200'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat200'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret201',
			email: 'sentret201@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.433586,
			longitude: 36.538072,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2008-01-04'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'sentret201'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret201'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume202',
			email: 'vileplume202@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.512911,
			longitude: 1.708671,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2014-01-19'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vileplume202'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume202'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2203',
			email: 'diglett2203@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.323799,
			longitude: 10.346326,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2005-10-26'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett2203'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2203'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth204',
			email: 'meowth204@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.05452,
			longitude: 26.797494,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2013-08-24'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'meowth204'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth204'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian205',
			email: 'persian205@pokemon.com',
			firstName: 'Persian',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.106409,
			longitude: 38.735062,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1992-11-10'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'persian205'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian205'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck206',
			email: 'psyduck206@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.069902,
			longitude: 30.9279,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2016-03-28'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'psyduck206'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck206'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe207',
			email: 'growlithe207@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.434428,
			longitude: 21.377453,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2019-10-20'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'growlithe207'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe207'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag208',
			email: 'poliwag208@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.138974,
			longitude: 28.019402,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1999-06-25'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'poliwag208'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag208'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl209',
			email: 'poliwhirl209@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.99878,
			longitude: 24.417279,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1994-02-28'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwhirl209'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl209'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra210',
			email: 'abra210@pokemon.com',
			firstName: 'Abra',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.570308,
			longitude: 20.340869,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1987-12-30'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'abra210'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra210'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop211',
			email: 'machop211@pokemon.com',
			firstName: 'Machop',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.714073,
			longitude: -3.708813,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('1994-12-09'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'machop211'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop211'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke212',
			email: 'slowpoke212@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.470595,
			longitude: 31.146919,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('1996-05-26'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'slowpoke212'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke212'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro213',
			email: 'slowbro213@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.272493,
			longitude: 26.564132,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2009-08-06'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowbro213'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro213'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd214',
			email: 'farfetchd214@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.767891,
			longitude: 10.108317,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-01'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'farfetchd214'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd214'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone215',
			email: 'cubone215@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.291116,
			longitude: 27.41245,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1999-12-08'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone215'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone215'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur216',
			email: 'bulbasaur216@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.518714,
			longitude: 21.074909,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2014-02-12'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'bulbasaur216'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur216'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur217',
			email: 'ivysaur217@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.842438,
			longitude: 31.987716,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-04'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'ivysaur217'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur217'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur218',
			email: 'venusaur218@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.810049,
			longitude: -1.168541,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2002-07-18'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur218'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur218'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander219',
			email: 'charmander219@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.236885,
			longitude: -9.154741,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1987-01-03'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmander219'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander219'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon220',
			email: 'charmeleon220@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.264446,
			longitude: 3.08508,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2012-07-18'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'charmeleon220'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon220'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard221',
			email: 'charizard221@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.028881,
			longitude: -0.81697,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2013-02-26'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charizard221'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard221'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle222',
			email: 'squirtle222@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.078677,
			longitude: 8.925056,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1990-11-07'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle222'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle222'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle223',
			email: 'wartortle223@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.813466,
			longitude: -7.820649,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2012-03-23'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'wartortle223'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle223'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise224',
			email: 'blastoise224@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.434117,
			longitude: -2.444855,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-12'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'blastoise224'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise224'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie225',
			email: 'caterpie225@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.437685,
			longitude: 18.899001,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2006-09-01'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'caterpie225'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie225'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod226',
			email: 'metapod226@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.11354,
			longitude: 25.944355,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1997-04-25'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'metapod226'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod226'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree227',
			email: 'butterfree227@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.851003,
			longitude: 35.345189,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2009-01-30'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'butterfree227'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree227'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle228',
			email: 'weedle228@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.639172,
			longitude: 26.999358,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1987-08-01'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'weedle228'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle228'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna229',
			email: 'kakuna229@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.301025,
			longitude: 9.384727,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2000-01-27'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'kakuna229'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna229'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill230',
			email: 'beedrill230@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.404769,
			longitude: -4.317275,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1990-04-28'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'beedrill230'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill230'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey231',
			email: 'pidgey231@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.400591,
			longitude: 5.522131,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2000-09-25'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgey231'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey231'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto232',
			email: 'pidgeotto232@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.369878,
			longitude: -8.091584,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2014-10-26'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeotto232'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto232'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot233',
			email: 'pidgeot233@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.226682,
			longitude: 13.879186,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2002-02-19'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgeot233'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot233'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata234',
			email: 'rattata234@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.353818,
			longitude: 20.875344,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2004-04-11'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'rattata234'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata234'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans235',
			email: 'ekans235@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.546774,
			longitude: 7.409913,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2005-12-18'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans235'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans235'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu236',
			email: 'pikachu236@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.719344,
			longitude: 7.924018,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2014-08-06'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pikachu236'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu236'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu237',
			email: 'raichu237@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.7841,
			longitude: 3.472552,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2010-12-16'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'raichu237'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu237'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett238',
			email: 'diglett238@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.786414,
			longitude: 24.995383,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2007-12-29'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'diglett238'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett238'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio239',
			email: 'dugtrio239@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.811598,
			longitude: 11.442461,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1999-07-08'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'dugtrio239'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio239'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy240',
			email: 'clefairy240@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.106292,
			longitude: 29.191528,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2000-01-30'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'clefairy240'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy240'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix241',
			email: 'vulpix241@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.552622,
			longitude: -3.716995,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1999-10-16'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vulpix241'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix241'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff242',
			email: 'jigglypuff242@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.981031,
			longitude: -7.70959,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2001-11-04'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'jigglypuff242'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff242'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat243',
			email: 'golbat243@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.762577,
			longitude: 13.300152,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1994-02-07'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'golbat243'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat243'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret244',
			email: 'sentret244@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.945189,
			longitude: 37.360366,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2010-11-03'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'sentret244'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret244'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume245',
			email: 'vileplume245@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.826424,
			longitude: 24.282313,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2015-05-04'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vileplume245'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume245'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2246',
			email: 'diglett2246@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.61315,
			longitude: 26.084118,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2006-09-26'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett2246'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2246'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth247',
			email: 'meowth247@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.222777,
			longitude: -6.094921,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2016-11-27'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'meowth247'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth247'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian248',
			email: 'persian248@pokemon.com',
			firstName: 'Persian',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.069393,
			longitude: 18.759558,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2019-07-22'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'persian248'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian248'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck249',
			email: 'psyduck249@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.07882,
			longitude: 11.224452,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2006-04-18'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'psyduck249'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck249'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe250',
			email: 'growlithe250@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.85904,
			longitude: 33.026948,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2014-10-12'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'growlithe250'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe250'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag251',
			email: 'poliwag251@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.194414,
			longitude: -6.065498,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2013-05-30'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwag251'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag251'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl252',
			email: 'poliwhirl252@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.800977,
			longitude: 21.77777,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2006-02-02'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwhirl252'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl252'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra253',
			email: 'abra253@pokemon.com',
			firstName: 'Abra',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.999741,
			longitude: 1.423303,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2016-03-19'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'abra253'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra253'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop254',
			email: 'machop254@pokemon.com',
			firstName: 'Machop',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.106053,
			longitude: 23.608165,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2009-11-14'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'machop254'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop254'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke255',
			email: 'slowpoke255@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.105962,
			longitude: 13.101955,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2010-07-04'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowpoke255'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke255'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro256',
			email: 'slowbro256@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.53469,
			longitude: 10.721405,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-25'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowbro256'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro256'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd257',
			email: 'farfetchd257@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.491604,
			longitude: 39.961296,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2012-11-20'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'farfetchd257'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd257'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone258',
			email: 'cubone258@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.71694,
			longitude: 3.254681,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1992-12-18'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'cubone258'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone258'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur259',
			email: 'bulbasaur259@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.762217,
			longitude: 21.504999,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1999-05-29'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'bulbasaur259'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur259'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur260',
			email: 'ivysaur260@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.345631,
			longitude: -1.329927,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1992-09-08'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ivysaur260'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur260'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur261',
			email: 'venusaur261@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.671156,
			longitude: -5.546759,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2010-07-22'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'venusaur261'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur261'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander262',
			email: 'charmander262@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.913988,
			longitude: 24.533733,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1990-06-28'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmander262'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander262'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon263',
			email: 'charmeleon263@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.773025,
			longitude: 33.468693,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1990-04-12'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmeleon263'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon263'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard264',
			email: 'charizard264@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.802726,
			longitude: 8.588108,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1987-10-30'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charizard264'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard264'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle265',
			email: 'squirtle265@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.637071,
			longitude: 18.419979,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2006-05-23'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'squirtle265'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle265'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle266',
			email: 'wartortle266@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.084159,
			longitude: 14.979413,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2016-02-25'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'wartortle266'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle266'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise267',
			email: 'blastoise267@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.044749,
			longitude: 39.243667,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1992-10-30'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'blastoise267'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise267'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie268',
			email: 'caterpie268@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.945537,
			longitude: 31.472617,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2009-03-05'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'caterpie268'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie268'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod269',
			email: 'metapod269@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.997446,
			longitude: 28.330497,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1998-10-14'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'metapod269'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod269'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree270',
			email: 'butterfree270@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.114618,
			longitude: 37.264317,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2013-09-21'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'butterfree270'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree270'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle271',
			email: 'weedle271@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.119608,
			longitude: 35.978284,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2007-04-11'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'weedle271'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle271'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna272',
			email: 'kakuna272@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.8715,
			longitude: -6.710664,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2011-10-11'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'kakuna272'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna272'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill273',
			email: 'beedrill273@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.557249,
			longitude: -3.253284,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1993-11-13'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'beedrill273'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill273'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey274',
			email: 'pidgey274@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.352689,
			longitude: -8.748224,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1991-04-20'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'pidgey274'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey274'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto275',
			email: 'pidgeotto275@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.38459,
			longitude: 8.905022,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2009-05-15'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgeotto275'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto275'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot276',
			email: 'pidgeot276@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.734261,
			longitude: 9.32077,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1995-09-20'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgeot276'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot276'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata277',
			email: 'rattata277@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.256967,
			longitude: 5.091731,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1988-11-19'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'rattata277'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata277'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans278',
			email: 'ekans278@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.581174,
			longitude: 34.202506,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2009-03-12'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'ekans278'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans278'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu279',
			email: 'pikachu279@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.842342,
			longitude: 27.197266,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-07'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pikachu279'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu279'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu280',
			email: 'raichu280@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.43615,
			longitude: -1.307689,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2011-09-30'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'raichu280'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu280'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett281',
			email: 'diglett281@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.374488,
			longitude: -9.500775,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1994-02-25'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'diglett281'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett281'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio282',
			email: 'dugtrio282@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.480884,
			longitude: -2.50466,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2000-04-06'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'dugtrio282'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio282'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy283',
			email: 'clefairy283@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.485331,
			longitude: 4.428333,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-02'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'clefairy283'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy283'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix284',
			email: 'vulpix284@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.984967,
			longitude: -0.610605,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2003-03-25'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vulpix284'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix284'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff285',
			email: 'jigglypuff285@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.566522,
			longitude: 34.518082,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2017-03-20'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'jigglypuff285'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff285'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat286',
			email: 'golbat286@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.326665,
			longitude: -6.463354,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1997-03-29'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'golbat286'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat286'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret287',
			email: 'sentret287@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.784442,
			longitude: 5.877918,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2001-10-23'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'sentret287'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret287'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume288',
			email: 'vileplume288@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.645571,
			longitude: 12.903876,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2002-07-29'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'vileplume288'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume288'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2289',
			email: 'diglett2289@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.07753,
			longitude: 14.81434,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2010-12-20'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett2289'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2289'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth290',
			email: 'meowth290@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.771018,
			longitude: 28.551083,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2013-01-26'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'meowth290'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth290'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian291',
			email: 'persian291@pokemon.com',
			firstName: 'Persian',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.180711,
			longitude: 22.861697,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2006-08-04'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'persian291'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian291'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck292',
			email: 'psyduck292@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.373579,
			longitude: 33.631583,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2015-05-22'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'psyduck292'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck292'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe293',
			email: 'growlithe293@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.883292,
			longitude: -2.036781,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-09'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe293'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe293'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag294',
			email: 'poliwag294@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.273078,
			longitude: 34.391689,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1988-07-02'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwag294'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag294'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl295',
			email: 'poliwhirl295@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.283193,
			longitude: 34.513076,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2018-07-01'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwhirl295'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl295'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra296',
			email: 'abra296@pokemon.com',
			firstName: 'Abra',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.990308,
			longitude: 3.347992,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-15'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'abra296'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra296'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop297',
			email: 'machop297@pokemon.com',
			firstName: 'Machop',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.086626,
			longitude: 23.264301,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-28'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'machop297'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop297'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke298',
			email: 'slowpoke298@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.834135,
			longitude: 14.084365,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('1994-12-30'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowpoke298'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke298'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro299',
			email: 'slowbro299@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.957453,
			longitude: 22.860408,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('1991-01-11'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowbro299'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro299'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd300',
			email: 'farfetchd300@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.72346,
			longitude: 18.699238,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1990-12-28'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'farfetchd300'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd300'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone301',
			email: 'cubone301@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.79734,
			longitude: -2.091998,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2014-11-27'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone301'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone301'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur302',
			email: 'bulbasaur302@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.222806,
			longitude: 19.506118,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1996-05-05'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'bulbasaur302'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur302'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur303',
			email: 'ivysaur303@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.484291,
			longitude: 19.372121,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1996-11-21'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'ivysaur303'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur303'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur304',
			email: 'venusaur304@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.058199,
			longitude: 17.974302,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2012-07-06'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur304'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur304'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander305',
			email: 'charmander305@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.484238,
			longitude: 32.976772,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1996-03-21'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmander305'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander305'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon306',
			email: 'charmeleon306@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.165899,
			longitude: 38.517542,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2001-11-03'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmeleon306'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon306'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard307',
			email: 'charizard307@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.460579,
			longitude: 31.830744,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2013-09-26'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charizard307'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard307'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle308',
			email: 'squirtle308@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.093554,
			longitude: -8.563672,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-17'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle308'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle308'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle309',
			email: 'wartortle309@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.658268,
			longitude: -6.687417,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-23'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'wartortle309'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle309'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise310',
			email: 'blastoise310@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.601409,
			longitude: 9.281938,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2012-10-07'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise310'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise310'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie311',
			email: 'caterpie311@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.130386,
			longitude: 0.544887,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2014-04-12'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'caterpie311'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie311'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod312',
			email: 'metapod312@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.269059,
			longitude: 8.114702,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-13'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'metapod312'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod312'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree313',
			email: 'butterfree313@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.202131,
			longitude: 26.244639,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2000-05-30'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'butterfree313'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree313'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle314',
			email: 'weedle314@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.630754,
			longitude: 34.516771,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1995-02-08'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'weedle314'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle314'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna315',
			email: 'kakuna315@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.935088,
			longitude: 39.806094,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2010-05-03'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'kakuna315'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna315'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill316',
			email: 'beedrill316@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.194288,
			longitude: 16.652551,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2001-07-21'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'beedrill316'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill316'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey317',
			email: 'pidgey317@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.536295,
			longitude: 32.590721,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2009-07-06'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgey317'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey317'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto318',
			email: 'pidgeotto318@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.722639,
			longitude: 16.13866,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2009-03-20'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgeotto318'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto318'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot319',
			email: 'pidgeot319@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.722415,
			longitude: 34.492906,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2018-02-15'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgeot319'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot319'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata320',
			email: 'rattata320@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.509956,
			longitude: 30.226001,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1986-03-08'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'rattata320'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata320'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans321',
			email: 'ekans321@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.901657,
			longitude: 3.783851,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2004-07-27'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans321'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans321'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu322',
			email: 'pikachu322@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.914825,
			longitude: -2.51311,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1997-08-13'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pikachu322'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu322'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu323',
			email: 'raichu323@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.1985,
			longitude: 5.964517,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1996-03-02'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'raichu323'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu323'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett324',
			email: 'diglett324@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.046905,
			longitude: 12.645355,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2011-12-31'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'diglett324'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett324'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio325',
			email: 'dugtrio325@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.049485,
			longitude: 2.347567,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-02'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'dugtrio325'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio325'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy326',
			email: 'clefairy326@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.077797,
			longitude: 32.419078,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1989-06-11'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'clefairy326'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy326'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix327',
			email: 'vulpix327@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.8139,
			longitude: 5.148543,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2020-03-05'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vulpix327'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix327'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff328',
			email: 'jigglypuff328@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.069288,
			longitude: 12.064647,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1986-04-12'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'jigglypuff328'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff328'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat329',
			email: 'golbat329@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.315233,
			longitude: 35.438578,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2013-05-22'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'golbat329'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat329'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret330',
			email: 'sentret330@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.861645,
			longitude: 37.53703,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2011-02-21'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'sentret330'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret330'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume331',
			email: 'vileplume331@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.56735,
			longitude: 38.32304,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2008-09-29'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vileplume331'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume331'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2332',
			email: 'diglett2332@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.518569,
			longitude: 3.439918,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1989-10-08'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2332'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2332'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth333',
			email: 'meowth333@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.668862,
			longitude: 19.012045,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2008-07-14'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'meowth333'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth333'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian334',
			email: 'persian334@pokemon.com',
			firstName: 'Persian',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.711335,
			longitude: 19.664685,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1996-08-29'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'persian334'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian334'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck335',
			email: 'psyduck335@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.039242,
			longitude: 12.8569,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2016-09-12'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'psyduck335'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck335'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe336',
			email: 'growlithe336@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.148962,
			longitude: -3.571991,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2018-10-24'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'growlithe336'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe336'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag337',
			email: 'poliwag337@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.130335,
			longitude: 19.305714,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1987-07-10'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'poliwag337'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag337'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl338',
			email: 'poliwhirl338@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.939441,
			longitude: -2.841423,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1993-03-13'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'poliwhirl338'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl338'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra339',
			email: 'abra339@pokemon.com',
			firstName: 'Abra',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.90976,
			longitude: 36.567511,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2003-06-20'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'abra339'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra339'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop340',
			email: 'machop340@pokemon.com',
			firstName: 'Machop',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.195691,
			longitude: 35.98119,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2014-12-15'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'machop340'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop340'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke341',
			email: 'slowpoke341@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.172349,
			longitude: 4.31369,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2007-03-09'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowpoke341'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke341'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro342',
			email: 'slowbro342@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.121989,
			longitude: 14.507067,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2008-09-29'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'slowbro342'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro342'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd343',
			email: 'farfetchd343@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.903707,
			longitude: -9.418817,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2017-04-06'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'farfetchd343'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd343'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone344',
			email: 'cubone344@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.287305,
			longitude: 24.29706,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1993-08-09'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'cubone344'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone344'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur345',
			email: 'bulbasaur345@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.619178,
			longitude: -7.485955,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2011-06-15'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'bulbasaur345'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur345'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur346',
			email: 'ivysaur346@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.542598,
			longitude: 17.279225,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2001-10-25'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ivysaur346'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur346'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur347',
			email: 'venusaur347@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.993539,
			longitude: 16.05464,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2008-11-23'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur347'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur347'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander348',
			email: 'charmander348@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.895132,
			longitude: -3.508072,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1990-09-14'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charmander348'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander348'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon349',
			email: 'charmeleon349@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.982663,
			longitude: -2.291124,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2000-06-02'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmeleon349'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon349'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard350',
			email: 'charizard350@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.162799,
			longitude: 13.463324,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2019-07-12'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charizard350'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard350'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle351',
			email: 'squirtle351@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.832239,
			longitude: 25.880737,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2006-09-18'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'squirtle351'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle351'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle352',
			email: 'wartortle352@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.945721,
			longitude: 10.023323,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2000-12-10'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'wartortle352'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle352'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise353',
			email: 'blastoise353@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.244553,
			longitude: 3.304099,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-23'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise353'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise353'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie354',
			email: 'caterpie354@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.070155,
			longitude: 37.767546,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1999-12-31'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'caterpie354'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie354'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod355',
			email: 'metapod355@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.579016,
			longitude: 13.365676,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-20'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'metapod355'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod355'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree356',
			email: 'butterfree356@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.141927,
			longitude: 29.248964,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2012-04-28'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'butterfree356'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree356'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle357',
			email: 'weedle357@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.71965,
			longitude: 27.441806,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2013-12-23'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'weedle357'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle357'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna358',
			email: 'kakuna358@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.678687,
			longitude: 24.092531,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2005-07-11'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'kakuna358'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna358'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill359',
			email: 'beedrill359@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.518192,
			longitude: 23.911722,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1987-12-09'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'beedrill359'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill359'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey360',
			email: 'pidgey360@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.921491,
			longitude: 33.201026,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1994-12-31'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pidgey360'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey360'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto361',
			email: 'pidgeotto361@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.31251,
			longitude: -0.199598,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1994-09-02'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgeotto361'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto361'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot362',
			email: 'pidgeot362@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.945035,
			longitude: 13.436337,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1997-12-20'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeot362'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot362'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata363',
			email: 'rattata363@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.847559,
			longitude: 16.136446,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2002-06-01'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'rattata363'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata363'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans364',
			email: 'ekans364@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.748078,
			longitude: 38.393669,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-02'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans364'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans364'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu365',
			email: 'pikachu365@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.56422,
			longitude: 24.660233,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1989-11-16'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pikachu365'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu365'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu366',
			email: 'raichu366@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.273035,
			longitude: 26.102418,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2017-07-19'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'raichu366'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu366'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett367',
			email: 'diglett367@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.142268,
			longitude: -5.523863,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2016-06-01'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'diglett367'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett367'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio368',
			email: 'dugtrio368@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.152906,
			longitude: 26.624196,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1997-04-03'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'dugtrio368'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio368'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy369',
			email: 'clefairy369@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.985801,
			longitude: 7.49806,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2006-08-17'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'clefairy369'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy369'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix370',
			email: 'vulpix370@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.407631,
			longitude: 28.153122,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1996-08-18'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vulpix370'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix370'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff371',
			email: 'jigglypuff371@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.214357,
			longitude: 1.167128,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2008-04-18'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'jigglypuff371'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff371'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat372',
			email: 'golbat372@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.536539,
			longitude: 6.911038,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2016-06-24'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat372'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat372'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret373',
			email: 'sentret373@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.655753,
			longitude: -8.64263,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1986-06-16'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'sentret373'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret373'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume374',
			email: 'vileplume374@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.701923,
			longitude: 39.421641,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1988-06-13'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vileplume374'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume374'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2375',
			email: 'diglett2375@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.143915,
			longitude: 4.351005,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1991-10-01'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2375'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2375'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth376',
			email: 'meowth376@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.603967,
			longitude: 27.327219,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1988-02-02'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'meowth376'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth376'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian377',
			email: 'persian377@pokemon.com',
			firstName: 'Persian',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.656485,
			longitude: 23.125173,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2012-01-29'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'persian377'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian377'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck378',
			email: 'psyduck378@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.768002,
			longitude: 31.847898,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2002-08-12'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'psyduck378'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck378'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe379',
			email: 'growlithe379@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.258166,
			longitude: 32.778548,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2019-02-24'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'growlithe379'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe379'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag380',
			email: 'poliwag380@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.966927,
			longitude: 35.837481,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-13'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwag380'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag380'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl381',
			email: 'poliwhirl381@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.305032,
			longitude: 33.303518,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2020-04-29'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'poliwhirl381'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl381'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra382',
			email: 'abra382@pokemon.com',
			firstName: 'Abra',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.684921,
			longitude: 15.686139,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1992-03-25'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'abra382'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra382'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop383',
			email: 'machop383@pokemon.com',
			firstName: 'Machop',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.135141,
			longitude: 5.141582,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2012-02-13'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'machop383'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop383'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke384',
			email: 'slowpoke384@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.870789,
			longitude: -9.238801,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2007-07-29'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowpoke384'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke384'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro385',
			email: 'slowbro385@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.098191,
			longitude: 31.21946,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2018-01-31'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowbro385'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro385'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd386',
			email: 'farfetchd386@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.641602,
			longitude: -8.527798,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1991-07-10'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'farfetchd386'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd386'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone387',
			email: 'cubone387@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.161033,
			longitude: 33.171687,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2004-08-11'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'cubone387'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone387'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur388',
			email: 'bulbasaur388@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.439416,
			longitude: 19.365892,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-12'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'bulbasaur388'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur388'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur389',
			email: 'ivysaur389@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.974315,
			longitude: 32.382608,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1988-05-02'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'ivysaur389'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur389'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur390',
			email: 'venusaur390@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.370735,
			longitude: -6.781797,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2006-01-06'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'venusaur390'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur390'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander391',
			email: 'charmander391@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.199852,
			longitude: 7.699114,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2012-03-23'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmander391'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander391'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon392',
			email: 'charmeleon392@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.010794,
			longitude: -4.537318,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1999-09-25'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmeleon392'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon392'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard393',
			email: 'charizard393@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.958095,
			longitude: -6.031121,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-11'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charizard393'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard393'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle394',
			email: 'squirtle394@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.230309,
			longitude: -6.674309,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1995-04-01'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'squirtle394'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle394'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle395',
			email: 'wartortle395@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.040648,
			longitude: 33.978349,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1988-07-06'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'wartortle395'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle395'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise396',
			email: 'blastoise396@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.861011,
			longitude: 20.558025,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1999-07-14'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'blastoise396'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise396'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie397',
			email: 'caterpie397@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.555452,
			longitude: 29.802409,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1996-03-05'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'caterpie397'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie397'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod398',
			email: 'metapod398@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.24719,
			longitude: -5.705724,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1999-06-20'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod398'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod398'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree399',
			email: 'butterfree399@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.947476,
			longitude: 8.381868,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1987-04-10'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'butterfree399'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree399'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle400',
			email: 'weedle400@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.216552,
			longitude: -5.02964,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1990-05-28'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'weedle400'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle400'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna401',
			email: 'kakuna401@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.834239,
			longitude: -2.627941,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1994-09-27'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'kakuna401'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna401'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill402',
			email: 'beedrill402@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.889301,
			longitude: 15.743737,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2011-09-27'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'beedrill402'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill402'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey403',
			email: 'pidgey403@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.775407,
			longitude: -5.863684,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2005-12-27'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgey403'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey403'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto404',
			email: 'pidgeotto404@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.870199,
			longitude: 5.910636,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1999-07-24'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'pidgeotto404'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto404'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot405',
			email: 'pidgeot405@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.802235,
			longitude: 9.698462,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2018-10-27'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgeot405'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot405'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata406',
			email: 'rattata406@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.289543,
			longitude: 37.242448,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1986-08-07'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'rattata406'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata406'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans407',
			email: 'ekans407@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.834973,
			longitude: -1.908795,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2005-01-23'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans407'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans407'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu408',
			email: 'pikachu408@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.801092,
			longitude: 35.198145,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-24'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pikachu408'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu408'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu409',
			email: 'raichu409@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.9131,
			longitude: -9.535272,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2016-01-19'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'raichu409'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu409'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett410',
			email: 'diglett410@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.519634,
			longitude: 34.000479,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2000-03-08'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'diglett410'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett410'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio411',
			email: 'dugtrio411@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.244434,
			longitude: 14.474249,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1992-05-01'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'dugtrio411'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio411'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy412',
			email: 'clefairy412@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.570846,
			longitude: 2.572958,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2011-01-11'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'clefairy412'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy412'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix413',
			email: 'vulpix413@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.763019,
			longitude: 24.918843,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1991-01-03'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vulpix413'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix413'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff414',
			email: 'jigglypuff414@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.039881,
			longitude: 18.326667,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-02'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'jigglypuff414'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff414'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat415',
			email: 'golbat415@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.281975,
			longitude: 4.116646,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2010-06-28'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'golbat415'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat415'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret416',
			email: 'sentret416@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.190405,
			longitude: 23.111764,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1998-05-31'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'sentret416'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret416'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume417',
			email: 'vileplume417@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.476469,
			longitude: 32.158403,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1988-01-02'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vileplume417'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume417'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2418',
			email: 'diglett2418@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.221605,
			longitude: -9.126022,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2016-02-09'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2418'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2418'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth419',
			email: 'meowth419@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.139227,
			longitude: 37.501314,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1988-10-10'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'meowth419'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth419'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian420',
			email: 'persian420@pokemon.com',
			firstName: 'Persian',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.430915,
			longitude: 36.435582,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1996-04-03'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'persian420'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian420'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck421',
			email: 'psyduck421@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.665201,
			longitude: -5.972929,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2007-02-04'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck421'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck421'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe422',
			email: 'growlithe422@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.693107,
			longitude: 17.986531,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2019-07-04'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'growlithe422'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe422'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag423',
			email: 'poliwag423@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.625555,
			longitude: 5.422978,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2012-08-20'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'poliwag423'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag423'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl424',
			email: 'poliwhirl424@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.364529,
			longitude: 26.319865,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1992-04-29'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwhirl424'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl424'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra425',
			email: 'abra425@pokemon.com',
			firstName: 'Abra',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.494295,
			longitude: 34.645827,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2003-07-15'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'abra425'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra425'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop426',
			email: 'machop426@pokemon.com',
			firstName: 'Machop',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.749368,
			longitude: 11.060619,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2007-07-06'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'machop426'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop426'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke427',
			email: 'slowpoke427@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.649905,
			longitude: 0.226427,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-27'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowpoke427'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke427'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro428',
			email: 'slowbro428@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.266565,
			longitude: 0.673054,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2002-01-05'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'slowbro428'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro428'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd429',
			email: 'farfetchd429@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.324603,
			longitude: -7.7532,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2016-06-01'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'farfetchd429'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd429'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone430',
			email: 'cubone430@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.984734,
			longitude: 8.672224,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2013-07-15'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'cubone430'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone430'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur431',
			email: 'bulbasaur431@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.455947,
			longitude: 29.532388,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2006-01-05'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'bulbasaur431'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur431'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur432',
			email: 'ivysaur432@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.00487,
			longitude: 9.803123,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2007-06-13'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ivysaur432'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur432'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur433',
			email: 'venusaur433@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.373242,
			longitude: -9.409251,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1999-08-31'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'venusaur433'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur433'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander434',
			email: 'charmander434@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.837139,
			longitude: 5.922667,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2017-03-11'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'charmander434'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander434'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon435',
			email: 'charmeleon435@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.056749,
			longitude: -8.728644,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-07'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmeleon435'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon435'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard436',
			email: 'charizard436@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.227204,
			longitude: 37.851152,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2005-04-28'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charizard436'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard436'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle437',
			email: 'squirtle437@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.443811,
			longitude: 3.57463,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1997-07-08'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'squirtle437'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle437'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle438',
			email: 'wartortle438@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.260067,
			longitude: 34.210881,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2017-04-21'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'wartortle438'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle438'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise439',
			email: 'blastoise439@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.195024,
			longitude: 35.371007,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1988-09-19'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'blastoise439'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise439'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie440',
			email: 'caterpie440@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.356709,
			longitude: 4.752336,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2002-08-18'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'caterpie440'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie440'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod441',
			email: 'metapod441@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.056373,
			longitude: 7.360566,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1996-10-14'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'metapod441'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod441'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree442',
			email: 'butterfree442@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.517475,
			longitude: 38.165954,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-20'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'butterfree442'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree442'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle443',
			email: 'weedle443@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.418696,
			longitude: 22.130689,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2012-02-05'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'weedle443'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle443'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna444',
			email: 'kakuna444@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.334258,
			longitude: 4.58531,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1992-03-06'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'kakuna444'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna444'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill445',
			email: 'beedrill445@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.219896,
			longitude: 28.607768,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2003-05-06'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'beedrill445'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill445'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey446',
			email: 'pidgey446@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.985772,
			longitude: -0.163752,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1999-06-13'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgey446'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey446'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto447',
			email: 'pidgeotto447@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.434689,
			longitude: 23.538192,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-14'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgeotto447'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto447'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot448',
			email: 'pidgeot448@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.785047,
			longitude: 6.687651,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2009-07-07'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgeot448'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot448'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata449',
			email: 'rattata449@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.692503,
			longitude: 13.738742,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2006-12-12'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'rattata449'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata449'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans450',
			email: 'ekans450@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.936398,
			longitude: 20.802235,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1990-10-15'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans450'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans450'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu451',
			email: 'pikachu451@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.158085,
			longitude: 33.553954,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2008-03-31'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pikachu451'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu451'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu452',
			email: 'raichu452@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.301457,
			longitude: -0.214381,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2004-03-23'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'raichu452'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu452'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett453',
			email: 'diglett453@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.102151,
			longitude: 22.483618,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2000-09-18'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett453'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett453'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio454',
			email: 'dugtrio454@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.212445,
			longitude: 33.48116,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1992-05-02'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'dugtrio454'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio454'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy455',
			email: 'clefairy455@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.615781,
			longitude: 38.96006,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2019-03-02'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'clefairy455'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy455'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix456',
			email: 'vulpix456@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.245863,
			longitude: 26.536901,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-25'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vulpix456'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix456'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff457',
			email: 'jigglypuff457@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.497335,
			longitude: 22.891068,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2006-01-19'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'jigglypuff457'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff457'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat458',
			email: 'golbat458@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.460498,
			longitude: -9.49494,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2018-06-11'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat458'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat458'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret459',
			email: 'sentret459@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.144861,
			longitude: 32.185324,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1994-04-20'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'sentret459'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret459'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume460',
			email: 'vileplume460@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.13811,
			longitude: 20.491213,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2009-02-04'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'vileplume460'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume460'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2461',
			email: 'diglett2461@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.315502,
			longitude: 18.326796,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1997-10-25'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2461'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2461'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth462',
			email: 'meowth462@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.763091,
			longitude: -6.216903,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2000-06-13'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'meowth462'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth462'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian463',
			email: 'persian463@pokemon.com',
			firstName: 'Persian',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.352207,
			longitude: 24.316708,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1989-03-11'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'persian463'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian463'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck464',
			email: 'psyduck464@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.584826,
			longitude: 10.711364,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2013-09-12'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'psyduck464'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck464'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe465',
			email: 'growlithe465@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.194917,
			longitude: 2.259267,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1986-02-19'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'growlithe465'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe465'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag466',
			email: 'poliwag466@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.110589,
			longitude: 30.423822,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-20'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwag466'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag466'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl467',
			email: 'poliwhirl467@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.266494,
			longitude: -7.569261,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1999-03-26'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwhirl467'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl467'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra468',
			email: 'abra468@pokemon.com',
			firstName: 'Abra',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.765247,
			longitude: 12.055849,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1999-08-28'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'abra468'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra468'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop469',
			email: 'machop469@pokemon.com',
			firstName: 'Machop',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.140681,
			longitude: 7.988366,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2018-08-16'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'machop469'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop469'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke470',
			email: 'slowpoke470@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.212294,
			longitude: 20.01055,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2015-11-01'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowpoke470'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke470'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro471',
			email: 'slowbro471@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.061211,
			longitude: 25.70365,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2013-09-30'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'slowbro471'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro471'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd472',
			email: 'farfetchd472@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.574558,
			longitude: 6.536299,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2018-01-17'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'farfetchd472'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd472'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone473',
			email: 'cubone473@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.270129,
			longitude: 1.920113,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2005-08-14'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'cubone473'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone473'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur474',
			email: 'bulbasaur474@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.136111,
			longitude: 4.445132,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2018-04-17'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'bulbasaur474'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur474'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur475',
			email: 'ivysaur475@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.363945,
			longitude: 33.892545,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2016-08-02'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ivysaur475'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur475'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur476',
			email: 'venusaur476@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.234288,
			longitude: -9.95664,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2009-08-23'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'venusaur476'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur476'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander477',
			email: 'charmander477@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.452704,
			longitude: 13.630098,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1989-12-22'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmander477'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander477'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon478',
			email: 'charmeleon478@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.824957,
			longitude: 15.339786,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1988-06-13'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charmeleon478'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon478'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard479',
			email: 'charizard479@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.369819,
			longitude: 3.19946,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2020-05-23'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charizard479'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard479'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle480',
			email: 'squirtle480@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.733112,
			longitude: -5.033838,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2002-06-03'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'squirtle480'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle480'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle481',
			email: 'wartortle481@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.528642,
			longitude: 6.123755,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2002-02-05'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'wartortle481'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle481'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise482',
			email: 'blastoise482@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.896671,
			longitude: -6.777961,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1998-01-08'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'blastoise482'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise482'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie483',
			email: 'caterpie483@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.356417,
			longitude: 37.522021,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2007-01-07'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'caterpie483'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie483'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod484',
			email: 'metapod484@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.066357,
			longitude: -1.703192,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2019-03-17'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'metapod484'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod484'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree485',
			email: 'butterfree485@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.176401,
			longitude: 39.876001,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2018-01-02'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'butterfree485'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree485'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle486',
			email: 'weedle486@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.450019,
			longitude: -5.816236,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2008-04-16'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'weedle486'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle486'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna487',
			email: 'kakuna487@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.438916,
			longitude: 17.408008,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2015-06-19'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'kakuna487'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna487'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill488',
			email: 'beedrill488@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.479684,
			longitude: 29.511005,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2002-05-19'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'beedrill488'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill488'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey489',
			email: 'pidgey489@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.172512,
			longitude: -3.382238,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2009-04-10'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgey489'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey489'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto490',
			email: 'pidgeotto490@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.688861,
			longitude: -9.741001,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2011-06-20'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeotto490'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto490'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot491',
			email: 'pidgeot491@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.483216,
			longitude: 9.160393,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1987-02-25'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeot491'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot491'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata492',
			email: 'rattata492@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.49268,
			longitude: 24.49855,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1993-09-17'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'rattata492'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata492'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans493',
			email: 'ekans493@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.845343,
			longitude: 26.930613,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2002-10-18'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ekans493'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans493'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu494',
			email: 'pikachu494@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.039947,
			longitude: -6.634072,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2015-07-17'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pikachu494'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu494'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu495',
			email: 'raichu495@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.190346,
			longitude: 30.298891,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1989-05-08'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'raichu495'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu495'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett496',
			email: 'diglett496@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.189008,
			longitude: 2.637444,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2001-03-17'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett496'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett496'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio497',
			email: 'dugtrio497@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.814685,
			longitude: 35.568811,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2019-08-17'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'dugtrio497'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio497'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy498',
			email: 'clefairy498@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.853347,
			longitude: 36.593078,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-16'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'clefairy498'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy498'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix499',
			email: 'vulpix499@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.544097,
			longitude: 34.360544,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2005-07-08'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vulpix499'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix499'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff500',
			email: 'jigglypuff500@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.291337,
			longitude: 32.502801,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-20'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'jigglypuff500'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff500'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

