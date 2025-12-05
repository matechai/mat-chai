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
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.741838,
			longitude: 7.251345,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2001-04-29'),
            lastOnline: datetime('2025-11-29T22:12:10.041495'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'bulbasaur1'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur1'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur1'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur2',
			email: 'ivysaur2@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.112841,
			longitude: 6.713987,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1988-05-22'),
            lastOnline: datetime('2025-11-15T22:12:10.041527'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ivysaur2'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur2'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur2'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur3',
			email: 'venusaur3@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.419723,
			longitude: 18.395452,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2009-10-19'),
            lastOnline: datetime('2025-11-29T22:12:10.041547'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur3'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur3'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur3'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander4',
			email: 'charmander4@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.890808,
			longitude: 19.360859,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2003-01-28'),
            lastOnline: datetime('2025-11-16T22:12:10.041562'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charmander4'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander4'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander4'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon5',
			email: 'charmeleon5@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.838297,
			longitude: 36.672214,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1996-04-17'),
            lastOnline: datetime('2025-11-11T22:12:10.041577'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charmeleon5'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon5'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon5'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard6',
			email: 'charizard6@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.968363,
			longitude: 24.573567,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2020-11-16'),
            lastOnline: datetime('2025-11-16T22:12:10.041612'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charizard6'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard6'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard6'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle7',
			email: 'squirtle7@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.399215,
			longitude: 20.179911,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2019-11-20'),
            lastOnline: datetime('2025-11-10T22:12:10.041625'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'squirtle7'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle7'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle7'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle8',
			email: 'wartortle8@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.728699,
			longitude: 35.132581,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1989-11-21'),
            lastOnline: datetime('2025-12-01T22:12:10.041638'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'wartortle8'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle8'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle8'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise9',
			email: 'blastoise9@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.017466,
			longitude: 33.774805,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2014-04-08'),
            lastOnline: datetime('2025-11-20T22:12:10.041651'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'blastoise9'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise9'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise9'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie10',
			email: 'caterpie10@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.006346,
			longitude: 8.494926,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-09'),
            lastOnline: datetime('2025-11-16T22:12:10.041664'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'caterpie10'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie10'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie10'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod11',
			email: 'metapod11@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.852965,
			longitude: 1.465685,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1992-01-11'),
            lastOnline: datetime('2025-11-21T22:12:10.041685'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'metapod11'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod11'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod11'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree12',
			email: 'butterfree12@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.220306,
			longitude: 19.591859,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2011-10-03'),
            lastOnline: datetime('2025-11-24T22:12:10.041698'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'butterfree12'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree12'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree12'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle13',
			email: 'weedle13@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.70327,
			longitude: -6.314148,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2020-10-19'),
            lastOnline: datetime('2025-11-15T22:12:10.041711'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'weedle13'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle13'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle13'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna14',
			email: 'kakuna14@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.261107,
			longitude: 10.361562,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1998-06-30'),
            lastOnline: datetime('2025-11-30T22:12:10.041722'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'kakuna14'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna14'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna14'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill15',
			email: 'beedrill15@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.353084,
			longitude: 21.354571,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1992-10-04'),
            lastOnline: datetime('2025-12-04T22:12:10.041735'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'beedrill15'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill15'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill15'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey16',
			email: 'pidgey16@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.609294,
			longitude: 26.830789,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1992-03-11'),
            lastOnline: datetime('2025-11-13T22:12:10.041753'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgey16'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey16'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey16'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto17',
			email: 'pidgeotto17@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.22724,
			longitude: 7.023741,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1995-05-24'),
            lastOnline: datetime('2025-11-23T22:12:10.041766'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeotto17'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto17'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto17'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 59.451553,
			longitude: 36.575405,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2015-05-01'),
            lastOnline: datetime('2025-11-12T22:12:10.041778'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeot18'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot18'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot18'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata19',
			email: 'rattata19@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.814513,
			longitude: 14.823343,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1995-05-22'),
            lastOnline: datetime('2025-11-23T22:12:10.041790'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'rattata19'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata19'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata19'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans20',
			email: 'ekans20@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.837735,
			longitude: 29.70041,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2006-01-25'),
            lastOnline: datetime('2025-11-16T22:12:10.041801'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans20'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans20'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans20'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 51.73576,
			longitude: 8.2079,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2020-06-24'),
            lastOnline: datetime('2025-11-07T22:12:10.041819'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pikachu21'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu21'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu21'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu22',
			email: 'raichu22@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.591434,
			longitude: -8.355794,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2008-08-20'),
            lastOnline: datetime('2025-11-30T22:12:10.041831'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'raichu22'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu22'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu22'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett23',
			email: 'diglett23@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.285475,
			longitude: 25.995237,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2008-11-28'),
            lastOnline: datetime('2025-11-24T22:12:10.041843'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'diglett23'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett23'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett23'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio24',
			email: 'dugtrio24@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.813219,
			longitude: 38.415089,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2002-04-03'),
            lastOnline: datetime('2025-11-24T22:12:10.041855'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'dugtrio24'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio24'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio24'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy25',
			email: 'clefairy25@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.438919,
			longitude: 9.372916,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1993-11-26'),
            lastOnline: datetime('2025-11-08T22:12:10.041867'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'clefairy25'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy25'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy25'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix26',
			email: 'vulpix26@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.913579,
			longitude: 21.118599,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1989-10-27'),
            lastOnline: datetime('2025-11-06T22:12:10.041886'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'vulpix26'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix26'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix26'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff27',
			email: 'jigglypuff27@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.699431,
			longitude: -8.652515,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2001-03-01'),
            lastOnline: datetime('2025-11-17T22:12:10.041898'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'jigglypuff27'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff27'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff27'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat28',
			email: 'golbat28@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.968863,
			longitude: 13.288412,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1987-08-06'),
            lastOnline: datetime('2025-11-14T22:12:10.041910'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'golbat28'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat28'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat28'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret29',
			email: 'sentret29@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.890624,
			longitude: 0.550315,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1998-11-15'),
            lastOnline: datetime('2025-12-02T22:12:10.041933'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'sentret29'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret29'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret29'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume30',
			email: 'vileplume30@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.390651,
			longitude: 33.612685,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2003-06-20'),
            lastOnline: datetime('2025-11-19T22:12:10.041947'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vileplume30'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume30'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume30'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett231',
			email: 'diglett231@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.332644,
			longitude: 10.536079,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2015-12-14'),
            lastOnline: datetime('2025-11-19T22:12:10.041964'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'diglett231'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett231'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett231'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth32',
			email: 'meowth32@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.208155,
			longitude: 1.207711,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-13'),
            lastOnline: datetime('2025-11-10T22:12:10.041976'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'meowth32'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth32'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth32'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian33',
			email: 'persian33@pokemon.com',
			firstName: 'Persian',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.931277,
			longitude: 36.992701,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1991-04-21'),
            lastOnline: datetime('2025-11-09T22:12:10.041987'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'persian33'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian33'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian33'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck34',
			email: 'psyduck34@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.123581,
			longitude: 39.79612,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1992-08-21'),
            lastOnline: datetime('2025-12-04T22:12:10.041999'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'psyduck34'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck34'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck34'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe35',
			email: 'growlithe35@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.645688,
			longitude: 35.670029,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1998-08-24'),
            lastOnline: datetime('2025-11-05T22:12:10.042011'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe35'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe35'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe35'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 51.85298,
			longitude: 4.383872,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2020-01-24'),
            lastOnline: datetime('2025-11-06T22:12:10.042029'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'poliwag36'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag36'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag36'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl37',
			email: 'poliwhirl37@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.699992,
			longitude: -9.716771,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1998-03-12'),
            lastOnline: datetime('2025-11-19T22:12:10.042040'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'poliwhirl37'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl37'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl37'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra38',
			email: 'abra38@pokemon.com',
			firstName: 'Abra',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.842011,
			longitude: 21.094918,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2012-04-05'),
            lastOnline: datetime('2025-11-27T22:12:10.042051'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'abra38'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra38'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra38'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop39',
			email: 'machop39@pokemon.com',
			firstName: 'Machop',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.834335,
			longitude: 15.841885,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('1998-07-11'),
            lastOnline: datetime('2025-11-09T22:12:10.042062'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'machop39'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop39'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop39'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke40',
			email: 'slowpoke40@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.213698,
			longitude: 25.431988,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('1990-03-11'),
            lastOnline: datetime('2025-11-12T22:12:10.042074'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'slowpoke40'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke40'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke40'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro41',
			email: 'slowbro41@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.665671,
			longitude: 33.103313,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-22'),
            lastOnline: datetime('2025-11-22T22:12:10.042085'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowbro41'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro41'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro41'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd42',
			email: 'farfetchd42@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.79715,
			longitude: 30.324288,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2009-12-27'),
            lastOnline: datetime('2025-11-24T22:12:10.042103'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'farfetchd42'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd42'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd42'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone43',
			email: 'cubone43@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.796307,
			longitude: 32.27808,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1988-05-04'),
            lastOnline: datetime('2025-11-29T22:12:10.042116'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone43'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone43'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone43'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur44',
			email: 'bulbasaur44@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.878673,
			longitude: -0.513757,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2010-09-18'),
            lastOnline: datetime('2025-11-09T22:12:10.042131'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'bulbasaur44'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur44'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur44'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur45',
			email: 'ivysaur45@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.122702,
			longitude: 2.450194,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1988-12-10'),
            lastOnline: datetime('2025-11-10T22:12:10.042149'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'ivysaur45'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur45'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur45'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur46',
			email: 'venusaur46@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.057785,
			longitude: 15.14797,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1986-08-11'),
            lastOnline: datetime('2025-11-06T22:12:10.042168'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'venusaur46'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur46'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur46'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander47',
			email: 'charmander47@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.002454,
			longitude: 10.931406,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2015-07-30'),
            lastOnline: datetime('2025-11-12T22:12:10.042188'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmander47'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander47'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander47'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 54.766738,
			longitude: -1.138562,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2001-09-20'),
            lastOnline: datetime('2025-11-29T22:12:10.042200'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charmeleon48'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon48'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon48'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard49',
			email: 'charizard49@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.526719,
			longitude: 24.949233,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-21'),
            lastOnline: datetime('2025-11-30T22:12:10.042212'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charizard49'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard49'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard49'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle50',
			email: 'squirtle50@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.588203,
			longitude: 32.256995,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2011-06-01'),
            lastOnline: datetime('2025-11-15T22:12:10.042223'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'squirtle50'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle50'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle50'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle51',
			email: 'wartortle51@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.03643,
			longitude: 25.75286,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1987-09-25'),
            lastOnline: datetime('2025-11-20T22:12:10.042236'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'wartortle51'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle51'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle51'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise52',
			email: 'blastoise52@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.436576,
			longitude: 32.539698,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2009-06-23'),
            lastOnline: datetime('2025-11-12T22:12:10.042254'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'blastoise52'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise52'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise52'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie53',
			email: 'caterpie53@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.126077,
			longitude: 24.97727,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2006-08-13'),
            lastOnline: datetime('2025-11-07T22:12:10.042266'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'caterpie53'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie53'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie53'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod54',
			email: 'metapod54@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.900473,
			longitude: 17.629118,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2012-10-31'),
            lastOnline: datetime('2025-11-23T22:12:10.042277'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'metapod54'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod54'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod54'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 51.91291,
			longitude: 5.125795,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2000-01-27'),
            lastOnline: datetime('2025-11-16T22:12:10.042289'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'butterfree55'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree55'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree55'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle56',
			email: 'weedle56@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.33734,
			longitude: 34.34471,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2003-02-04'),
            lastOnline: datetime('2025-11-14T22:12:10.042307'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'weedle56'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle56'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle56'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna57',
			email: 'kakuna57@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.267023,
			longitude: 19.040047,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2005-06-28'),
            lastOnline: datetime('2025-11-21T22:12:10.042318'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'kakuna57'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna57'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna57'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill58',
			email: 'beedrill58@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.454308,
			longitude: 26.217229,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1990-01-07'),
            lastOnline: datetime('2025-11-30T22:12:10.042330'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'beedrill58'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill58'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill58'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey59',
			email: 'pidgey59@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.752676,
			longitude: 7.310633,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2006-11-10'),
            lastOnline: datetime('2025-11-27T22:12:10.042341'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgey59'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey59'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey59'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto60',
			email: 'pidgeotto60@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.65858,
			longitude: 34.840335,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2003-11-15'),
            lastOnline: datetime('2025-11-21T22:12:10.042352'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeotto60'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto60'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto60'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot61',
			email: 'pidgeot61@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.91795,
			longitude: 22.85683,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1997-12-03'),
            lastOnline: datetime('2025-11-12T22:12:10.042363'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeot61'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot61'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot61'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata62',
			email: 'rattata62@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.400878,
			longitude: 21.450549,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2013-05-24'),
            lastOnline: datetime('2025-11-13T22:12:10.042380'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'rattata62'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata62'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata62'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans63',
			email: 'ekans63@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.035926,
			longitude: 28.697335,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1991-09-26'),
            lastOnline: datetime('2025-11-16T22:12:10.042392'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ekans63'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans63'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans63'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu64',
			email: 'pikachu64@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.562109,
			longitude: 27.046608,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1988-08-12'),
            lastOnline: datetime('2025-11-08T22:12:10.042404'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pikachu64'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu64'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu64'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu65',
			email: 'raichu65@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.287818,
			longitude: -9.4056,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1987-08-02'),
            lastOnline: datetime('2025-11-28T22:12:10.042416'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'raichu65'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu65'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu65'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett66',
			email: 'diglett66@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.379947,
			longitude: 21.678035,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1992-07-05'),
            lastOnline: datetime('2025-11-11T22:12:10.042428'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'diglett66'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett66'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett66'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio67',
			email: 'dugtrio67@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.605822,
			longitude: -0.46983,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2018-05-26'),
            lastOnline: datetime('2025-11-28T22:12:10.042496'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'dugtrio67'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio67'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio67'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy68',
			email: 'clefairy68@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.242435,
			longitude: 34.42059,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2002-12-23'),
            lastOnline: datetime('2025-11-12T22:12:10.042512'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'clefairy68'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy68'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy68'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix69',
			email: 'vulpix69@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.698022,
			longitude: -4.07952,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1992-12-23'),
            lastOnline: datetime('2025-12-01T22:12:10.042526'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vulpix69'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix69'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix69'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff70',
			email: 'jigglypuff70@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.937421,
			longitude: 8.541018,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1986-03-21'),
            lastOnline: datetime('2025-11-17T22:12:10.042539'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff70'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff70'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff70'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 46.881699,
			longitude: 5.853515,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2008-11-03'),
            lastOnline: datetime('2025-11-19T22:12:10.042559'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat71'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat71'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat71'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret72',
			email: 'sentret72@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.017161,
			longitude: 36.443896,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2018-01-14'),
            lastOnline: datetime('2025-11-29T22:12:10.042570'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'sentret72'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret72'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret72'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume73',
			email: 'vileplume73@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.047483,
			longitude: -0.124515,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2009-02-13'),
            lastOnline: datetime('2025-11-25T22:12:10.042582'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'vileplume73'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume73'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume73'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett274',
			email: 'diglett274@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.588951,
			longitude: 13.876443,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2020-05-30'),
            lastOnline: datetime('2025-11-07T22:12:10.042594'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett274'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett274'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett274'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth75',
			email: 'meowth75@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.397771,
			longitude: 25.091327,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2014-02-13'),
            lastOnline: datetime('2025-11-14T22:12:10.042606'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'meowth75'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth75'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth75'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian76',
			email: 'persian76@pokemon.com',
			firstName: 'Persian',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.268413,
			longitude: 24.913125,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1991-10-23'),
            lastOnline: datetime('2025-11-30T22:12:10.042618'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'persian76'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian76'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian76'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck77',
			email: 'psyduck77@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.917854,
			longitude: 32.472376,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-30'),
            lastOnline: datetime('2025-12-01T22:12:10.042636'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'psyduck77'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck77'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck77'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe78',
			email: 'growlithe78@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.346758,
			longitude: 24.842847,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1989-07-06'),
            lastOnline: datetime('2025-11-22T22:12:10.042648'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe78'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe78'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe78'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag79',
			email: 'poliwag79@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.84955,
			longitude: 33.50719,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1989-09-24'),
            lastOnline: datetime('2025-11-18T22:12:10.042660'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwag79'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag79'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag79'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl80',
			email: 'poliwhirl80@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.677024,
			longitude: 12.746705,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2020-11-06'),
            lastOnline: datetime('2025-11-27T22:12:10.042671'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'poliwhirl80'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl80'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl80'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra81',
			email: 'abra81@pokemon.com',
			firstName: 'Abra',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.84981,
			longitude: 25.766372,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2002-02-15'),
            lastOnline: datetime('2025-11-30T22:12:10.042738'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'abra81'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra81'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra81'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 58.574366,
			longitude: 36.702109,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2006-05-02'),
            lastOnline: datetime('2025-11-06T22:12:10.042750'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'machop82'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop82'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop82'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke83',
			email: 'slowpoke83@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.017971,
			longitude: 30.147983,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2006-09-22'),
            lastOnline: datetime('2025-11-30T22:12:10.042762'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'slowpoke83'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke83'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke83'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro84',
			email: 'slowbro84@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.3948,
			longitude: -4.959658,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2013-12-26'),
            lastOnline: datetime('2025-11-06T22:12:10.042774'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowbro84'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro84'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro84'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd85',
			email: 'farfetchd85@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.741505,
			longitude: 17.71819,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1990-05-06'),
            lastOnline: datetime('2025-11-13T22:12:10.042785'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'farfetchd85'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd85'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd85'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone86',
			email: 'cubone86@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.093585,
			longitude: 19.615965,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1992-08-02'),
            lastOnline: datetime('2025-11-12T22:12:10.042797'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'cubone86'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone86'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone86'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur87',
			email: 'bulbasaur87@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.925884,
			longitude: 26.226343,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-20'),
            lastOnline: datetime('2025-11-09T22:12:10.042816'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'bulbasaur87'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur87'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur87'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur88',
			email: 'ivysaur88@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.929384,
			longitude: 33.5588,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2016-10-28'),
            lastOnline: datetime('2025-11-29T22:12:10.042828'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'ivysaur88'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur88'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur88'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur89',
			email: 'venusaur89@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.764638,
			longitude: -5.718986,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2004-05-04'),
            lastOnline: datetime('2025-12-02T22:12:10.042839'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'venusaur89'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur89'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur89'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander90',
			email: 'charmander90@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.0131,
			longitude: 10.032742,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2012-04-15'),
            lastOnline: datetime('2025-11-17T22:12:10.042851'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'charmander90'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander90'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander90'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 47.55316,
			longitude: 7.8023,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1989-02-24'),
            lastOnline: datetime('2025-12-03T22:12:10.042862'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charmeleon91'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon91'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon91'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard92',
			email: 'charizard92@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.473561,
			longitude: 10.511693,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2019-03-21'),
            lastOnline: datetime('2025-12-01T22:12:10.042880'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charizard92'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard92'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard92'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle93',
			email: 'squirtle93@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.705302,
			longitude: 0.844308,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2010-07-03'),
            lastOnline: datetime('2025-11-18T22:12:10.042892'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'squirtle93'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle93'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle93'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle94',
			email: 'wartortle94@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.086259,
			longitude: 38.348142,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1986-07-18'),
            lastOnline: datetime('2025-12-01T22:12:10.042904'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'wartortle94'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle94'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle94'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 65.474858,
			longitude: 33.0977,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-25'),
            lastOnline: datetime('2025-11-17T22:12:10.042921'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'blastoise95'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise95'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise95'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie96',
			email: 'caterpie96@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.108068,
			longitude: 14.800525,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2001-01-26'),
            lastOnline: datetime('2025-11-14T22:12:10.042935'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'caterpie96'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie96'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie96'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod97',
			email: 'metapod97@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.127136,
			longitude: 7.374119,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2018-04-08'),
            lastOnline: datetime('2025-12-01T22:12:10.042952'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'metapod97'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod97'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod97'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree98',
			email: 'butterfree98@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.10814,
			longitude: 9.93029,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1992-09-27'),
            lastOnline: datetime('2025-11-06T22:12:10.042964'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'butterfree98'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree98'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree98'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 48.901623,
			longitude: 12.065872,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1989-01-17'),
            lastOnline: datetime('2025-11-27T22:12:10.042976'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'weedle99'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle99'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle99'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna100',
			email: 'kakuna100@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.116058,
			longitude: 27.043348,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1987-09-16'),
            lastOnline: datetime('2025-11-08T22:12:10.042988'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'kakuna100'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna100'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna100'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill101',
			email: 'beedrill101@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.956337,
			longitude: -4.087336,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1994-07-22'),
            lastOnline: datetime('2025-11-28T22:12:10.042999'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'beedrill101'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill101'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill101'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey102',
			email: 'pidgey102@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.391923,
			longitude: -8.361739,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2003-11-05'),
            lastOnline: datetime('2025-11-15T22:12:10.043021'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgey102'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey102'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey102'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto103',
			email: 'pidgeotto103@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.381706,
			longitude: 6.173369,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1988-03-23'),
            lastOnline: datetime('2025-11-09T22:12:10.043032'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeotto103'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto103'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto103'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot104',
			email: 'pidgeot104@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.168976,
			longitude: 3.18882,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1995-10-10'),
            lastOnline: datetime('2025-11-07T22:12:10.043044'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgeot104'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot104'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot104'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata105',
			email: 'rattata105@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.901569,
			longitude: 13.142502,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2005-05-13'),
            lastOnline: datetime('2025-12-01T22:12:10.043056'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'rattata105'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata105'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata105'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 46.471843,
			longitude: 38.892621,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2000-03-23'),
            lastOnline: datetime('2025-11-29T22:12:10.043067'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ekans106'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans106'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans106'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu107',
			email: 'pikachu107@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.571178,
			longitude: 29.400162,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2014-03-10'),
            lastOnline: datetime('2025-11-28T22:12:10.043084'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pikachu107'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu107'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu107'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu108',
			email: 'raichu108@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.333668,
			longitude: 8.233708,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2018-02-13'),
            lastOnline: datetime('2025-11-23T22:12:10.043096'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'raichu108'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu108'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu108'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett109',
			email: 'diglett109@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.442155,
			longitude: 24.78411,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2009-07-16'),
            lastOnline: datetime('2025-11-15T22:12:10.043108'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'diglett109'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett109'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett109'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 49.905375,
			longitude: 29.105458,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1987-11-02'),
            lastOnline: datetime('2025-11-16T22:12:10.043119'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'dugtrio110'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio110'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio110'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy111',
			email: 'clefairy111@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.557528,
			longitude: -7.078662,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1994-10-17'),
            lastOnline: datetime('2025-11-19T22:12:10.043130'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'clefairy111'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy111'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy111'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix112',
			email: 'vulpix112@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.89265,
			longitude: 39.858549,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-29'),
            lastOnline: datetime('2025-12-01T22:12:10.043147'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vulpix112'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix112'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix112'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff113',
			email: 'jigglypuff113@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.925952,
			longitude: 0.245072,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2015-04-28'),
            lastOnline: datetime('2025-11-20T22:12:10.043159'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff113'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff113'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff113'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat114',
			email: 'golbat114@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.157559,
			longitude: 26.483874,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2018-08-15'),
            lastOnline: datetime('2025-11-19T22:12:10.043171'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'golbat114'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat114'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat114'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 53.886061,
			longitude: 15.702042,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2012-12-20'),
            lastOnline: datetime('2025-11-19T22:12:10.043183'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'sentret115'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret115'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret115'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume116',
			email: 'vileplume116@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.166279,
			longitude: 35.735954,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2014-03-27'),
            lastOnline: datetime('2025-11-10T22:12:10.043195'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vileplume116'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume116'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume116'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2117',
			email: 'diglett2117@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.572893,
			longitude: 26.404169,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-19'),
            lastOnline: datetime('2025-11-20T22:12:10.043213'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett2117'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2117'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2117'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth118',
			email: 'meowth118@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.246749,
			longitude: 15.636167,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1991-10-02'),
            lastOnline: datetime('2025-11-08T22:12:10.043225'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'meowth118'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth118'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth118'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian119',
			email: 'persian119@pokemon.com',
			firstName: 'Persian',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.123323,
			longitude: -4.834096,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2009-10-27'),
            lastOnline: datetime('2025-11-19T22:12:10.043237'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'persian119'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian119'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian119'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck120',
			email: 'psyduck120@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.094611,
			longitude: 2.655954,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1991-02-16'),
            lastOnline: datetime('2025-11-06T22:12:10.043248'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'psyduck120'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck120'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck120'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe121',
			email: 'growlithe121@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.056125,
			longitude: -5.028079,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2004-08-15'),
            lastOnline: datetime('2025-11-12T22:12:10.043266'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe121'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe121'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe121'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag122',
			email: 'poliwag122@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.474614,
			longitude: 3.680106,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2003-10-27'),
            lastOnline: datetime('2025-11-09T22:12:10.043278'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwag122'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag122'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag122'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 46.150163,
			longitude: 0.690669,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1992-05-01'),
            lastOnline: datetime('2025-11-14T22:12:10.043290'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'poliwhirl123'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl123'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl123'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra124',
			email: 'abra124@pokemon.com',
			firstName: 'Abra',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.864239,
			longitude: 7.510131,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1995-11-25'),
            lastOnline: datetime('2025-11-20T22:12:10.043302'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'abra124'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra124'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra124'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop125',
			email: 'machop125@pokemon.com',
			firstName: 'Machop',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.363241,
			longitude: -4.879014,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2006-03-02'),
            lastOnline: datetime('2025-11-21T22:12:10.043314'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'machop125'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop125'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop125'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke126',
			email: 'slowpoke126@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.536031,
			longitude: 10.203715,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2000-12-28'),
            lastOnline: datetime('2025-11-23T22:12:10.043330'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'slowpoke126'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke126'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke126'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro127',
			email: 'slowbro127@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.23723,
			longitude: 29.510997,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('1990-04-10'),
            lastOnline: datetime('2025-11-27T22:12:10.043341'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowbro127'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro127'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro127'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd128',
			email: 'farfetchd128@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.020345,
			longitude: 3.410253,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2012-12-10'),
            lastOnline: datetime('2025-11-14T22:12:10.043354'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'farfetchd128'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd128'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd128'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone129',
			email: 'cubone129@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.454102,
			longitude: 30.511136,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1989-02-18'),
            lastOnline: datetime('2025-12-03T22:12:10.043366'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'cubone129'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone129'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone129'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur130',
			email: 'bulbasaur130@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.812387,
			longitude: 34.8731,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2015-02-26'),
            lastOnline: datetime('2025-11-20T22:12:10.043378'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'bulbasaur130'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur130'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur130'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur131',
			email: 'ivysaur131@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.825559,
			longitude: 20.464243,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2009-08-26'),
            lastOnline: datetime('2025-11-16T22:12:10.043394'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ivysaur131'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur131'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur131'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur132',
			email: 'venusaur132@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.365913,
			longitude: 1.240303,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1999-07-27'),
            lastOnline: datetime('2025-11-20T22:12:10.043406'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur132'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur132'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur132'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 57.135105,
			longitude: 32.903856,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2005-09-21'),
            lastOnline: datetime('2025-11-10T22:12:10.043418'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmander133'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander133'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander133'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon134',
			email: 'charmeleon134@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.709446,
			longitude: 32.333588,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2015-05-10'),
            lastOnline: datetime('2025-11-20T22:12:10.043429'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'charmeleon134'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon134'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon134'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard135',
			email: 'charizard135@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.092159,
			longitude: 14.898349,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1991-09-27'),
            lastOnline: datetime('2025-11-15T22:12:10.043441'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charizard135'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard135'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard135'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle136',
			email: 'squirtle136@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.595383,
			longitude: 27.517684,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2013-10-09'),
            lastOnline: datetime('2025-11-27T22:12:10.043458'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'squirtle136'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle136'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle136'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle137',
			email: 'wartortle137@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.943184,
			longitude: 7.189038,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1997-08-07'),
            lastOnline: datetime('2025-11-16T22:12:10.043470'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'wartortle137'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle137'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle137'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise138',
			email: 'blastoise138@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.508466,
			longitude: 17.653579,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1998-10-15'),
            lastOnline: datetime('2025-11-05T22:12:10.043482'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'blastoise138'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise138'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise138'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie139',
			email: 'caterpie139@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.725968,
			longitude: 6.668386,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1992-08-03'),
            lastOnline: datetime('2025-11-24T22:12:10.043493'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'caterpie139'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie139'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie139'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod140',
			email: 'metapod140@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.010559,
			longitude: 6.655309,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2012-05-16'),
            lastOnline: datetime('2025-11-11T22:12:10.043505'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'metapod140'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod140'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod140'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree141',
			email: 'butterfree141@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.017325,
			longitude: 30.591451,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2011-07-07'),
            lastOnline: datetime('2025-12-03T22:12:10.043522'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'butterfree141'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree141'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree141'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle142',
			email: 'weedle142@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.280962,
			longitude: 10.049879,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2003-04-03'),
            lastOnline: datetime('2025-11-17T22:12:10.043534'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'weedle142'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle142'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle142'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna143',
			email: 'kakuna143@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.190835,
			longitude: 36.50159,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1986-01-09'),
            lastOnline: datetime('2025-11-10T22:12:10.043546'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'kakuna143'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna143'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna143'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill144',
			email: 'beedrill144@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.770813,
			longitude: 1.437837,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2011-03-17'),
            lastOnline: datetime('2025-12-03T22:12:10.043557'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'beedrill144'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill144'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill144'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 45.731962,
			longitude: 18.117479,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1990-05-17'),
            lastOnline: datetime('2025-12-01T22:12:10.043568'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgey145'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey145'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey145'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto146',
			email: 'pidgeotto146@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.871121,
			longitude: 36.801237,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2002-03-21'),
            lastOnline: datetime('2025-12-01T22:12:10.043584'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'pidgeotto146'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto146'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto146'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot147',
			email: 'pidgeot147@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.909847,
			longitude: 30.117379,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2020-10-04'),
            lastOnline: datetime('2025-11-29T22:12:10.043595'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgeot147'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot147'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot147'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata148',
			email: 'rattata148@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.682832,
			longitude: 22.942798,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2007-07-25'),
            lastOnline: datetime('2025-11-22T22:12:10.043606'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'rattata148'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata148'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata148'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans149',
			email: 'ekans149@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.133002,
			longitude: 20.298732,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-16'),
            lastOnline: datetime('2025-11-29T22:12:10.043618'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'ekans149'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans149'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans149'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu150',
			email: 'pikachu150@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.673158,
			longitude: 18.194919,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1986-01-07'),
            lastOnline: datetime('2025-12-03T22:12:10.043629'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pikachu150'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu150'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu150'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu151',
			email: 'raichu151@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.184807,
			longitude: 5.135883,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-18'),
            lastOnline: datetime('2025-11-07T22:12:10.043645'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'raichu151'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu151'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu151'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett152',
			email: 'diglett152@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.010348,
			longitude: -8.169056,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-09'),
            lastOnline: datetime('2025-11-09T22:12:10.043657'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'diglett152'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett152'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett152'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio153',
			email: 'dugtrio153@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.978099,
			longitude: 12.956154,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-31'),
            lastOnline: datetime('2025-11-20T22:12:10.043669'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'dugtrio153'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio153'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio153'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy154',
			email: 'clefairy154@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.632651,
			longitude: 29.467768,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2010-03-06'),
            lastOnline: datetime('2025-11-22T22:12:10.043680'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'clefairy154'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy154'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy154'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix155',
			email: 'vulpix155@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.809352,
			longitude: -8.812855,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1987-02-24'),
            lastOnline: datetime('2025-12-03T22:12:10.043692'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'vulpix155'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix155'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix155'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff156',
			email: 'jigglypuff156@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.571374,
			longitude: 28.522598,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2003-07-18'),
            lastOnline: datetime('2025-12-04T22:12:10.043703'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff156'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff156'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff156'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat157',
			email: 'golbat157@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.114578,
			longitude: -4.270422,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2017-06-18'),
            lastOnline: datetime('2025-11-07T22:12:10.043721'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'golbat157'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat157'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat157'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret158',
			email: 'sentret158@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.259338,
			longitude: 24.752063,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1996-04-10'),
            lastOnline: datetime('2025-11-05T22:12:10.043733'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'sentret158'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret158'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret158'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume159',
			email: 'vileplume159@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.452803,
			longitude: -3.141135,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1992-02-19'),
            lastOnline: datetime('2025-11-22T22:12:10.043745'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vileplume159'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume159'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume159'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 41.097593,
			longitude: 29.89973,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1997-07-01'),
            lastOnline: datetime('2025-11-24T22:12:10.043756'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'diglett2160'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2160'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2160'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth161',
			email: 'meowth161@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.684165,
			longitude: 17.67895,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2001-10-08'),
            lastOnline: datetime('2025-11-09T22:12:10.043770'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'meowth161'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth161'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth161'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian162',
			email: 'persian162@pokemon.com',
			firstName: 'Persian',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.486077,
			longitude: -8.88357,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1998-07-08'),
            lastOnline: datetime('2025-11-25T22:12:10.043787'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'persian162'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian162'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian162'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck163',
			email: 'psyduck163@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.979495,
			longitude: 1.313678,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1998-01-28'),
            lastOnline: datetime('2025-12-04T22:12:10.043799'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'psyduck163'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck163'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck163'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe164',
			email: 'growlithe164@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.851542,
			longitude: 23.304703,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1993-01-08'),
            lastOnline: datetime('2025-11-19T22:12:10.043811'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'growlithe164'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe164'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe164'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag165',
			email: 'poliwag165@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.135468,
			longitude: -1.141503,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1995-01-07'),
            lastOnline: datetime('2025-11-05T22:12:10.043824'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'poliwag165'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag165'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag165'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl166',
			email: 'poliwhirl166@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.00417,
			longitude: 3.708833,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2012-04-06'),
            lastOnline: datetime('2025-11-12T22:12:10.043842'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwhirl166'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl166'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl166'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra167',
			email: 'abra167@pokemon.com',
			firstName: 'Abra',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.747689,
			longitude: 24.435691,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-26'),
            lastOnline: datetime('2025-11-30T22:12:10.043854'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'abra167'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra167'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra167'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop168',
			email: 'machop168@pokemon.com',
			firstName: 'Machop',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.230597,
			longitude: 9.61346,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2015-03-18'),
            lastOnline: datetime('2025-11-21T22:12:10.043866'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'machop168'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop168'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop168'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke169',
			email: 'slowpoke169@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.178282,
			longitude: 35.174182,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2008-06-26'),
            lastOnline: datetime('2025-11-16T22:12:10.043878'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowpoke169'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke169'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke169'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 65.532476,
			longitude: 31.281944,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2005-10-16'),
            lastOnline: datetime('2025-11-06T22:12:10.043889'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'slowbro170'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro170'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro170'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 36.98521,
			longitude: 19.182376,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2015-02-02'),
            lastOnline: datetime('2025-11-14T22:12:10.043900'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'farfetchd171'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd171'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd171'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone172',
			email: 'cubone172@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.291431,
			longitude: 25.438675,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1987-01-28'),
            lastOnline: datetime('2025-11-10T22:12:10.043921'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'cubone172'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone172'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone172'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur173',
			email: 'bulbasaur173@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.704499,
			longitude: -6.361013,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2002-02-16'),
            lastOnline: datetime('2025-11-05T22:12:10.043939'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'bulbasaur173'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur173'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur173'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur174',
			email: 'ivysaur174@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.084956,
			longitude: -2.351534,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2007-06-10'),
            lastOnline: datetime('2025-11-13T22:12:10.043951'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'ivysaur174'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur174'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur174'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur175',
			email: 'venusaur175@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.096129,
			longitude: 11.604599,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2018-03-10'),
            lastOnline: datetime('2025-11-20T22:12:10.043963'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'venusaur175'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur175'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur175'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander176',
			email: 'charmander176@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.380022,
			longitude: 30.781681,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2014-03-29'),
            lastOnline: datetime('2025-11-22T22:12:10.043982'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmander176'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander176'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander176'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon177',
			email: 'charmeleon177@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.414756,
			longitude: 38.210773,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1997-04-24'),
            lastOnline: datetime('2025-11-08T22:12:10.043993'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'charmeleon177'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon177'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon177'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard178',
			email: 'charizard178@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.135653,
			longitude: 19.936728,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2020-04-24'),
            lastOnline: datetime('2025-12-02T22:12:10.044005'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charizard178'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard178'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard178'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle179',
			email: 'squirtle179@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.967409,
			longitude: 2.649271,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2009-12-09'),
            lastOnline: datetime('2025-11-26T22:12:10.044016'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle179'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle179'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle179'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle180',
			email: 'wartortle180@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.537642,
			longitude: 6.237579,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2010-12-17'),
            lastOnline: datetime('2025-11-14T22:12:10.044027'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'wartortle180'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle180'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle180'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise181',
			email: 'blastoise181@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.770949,
			longitude: 0.858942,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1987-05-30'),
            lastOnline: datetime('2025-12-04T22:12:10.044044'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'blastoise181'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise181'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise181'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie182',
			email: 'caterpie182@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.450064,
			longitude: 14.705079,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1986-02-28'),
            lastOnline: datetime('2025-11-24T22:12:10.044056'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'caterpie182'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie182'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie182'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod183',
			email: 'metapod183@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.884468,
			longitude: 27.775322,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2008-09-03'),
            lastOnline: datetime('2025-11-26T22:12:10.044068'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod183'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod183'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod183'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree184',
			email: 'butterfree184@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.522329,
			longitude: -2.858938,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1989-06-03'),
            lastOnline: datetime('2025-11-18T22:12:10.044079'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'butterfree184'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree184'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree184'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle185',
			email: 'weedle185@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.858998,
			longitude: -7.662699,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2014-09-06'),
            lastOnline: datetime('2025-11-05T22:12:10.044091'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'weedle185'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle185'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle185'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna186',
			email: 'kakuna186@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.137577,
			longitude: 19.154121,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2018-03-26'),
            lastOnline: datetime('2025-11-18T22:12:10.044102'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'kakuna186'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna186'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna186'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill187',
			email: 'beedrill187@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.827859,
			longitude: 9.840204,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1995-08-14'),
            lastOnline: datetime('2025-11-23T22:12:10.044118'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'beedrill187'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill187'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill187'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey188',
			email: 'pidgey188@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.433074,
			longitude: 13.597366,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2015-12-30'),
            lastOnline: datetime('2025-11-10T22:12:10.044130'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgey188'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey188'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey188'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto189',
			email: 'pidgeotto189@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.950716,
			longitude: 33.215047,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2018-06-07'),
            lastOnline: datetime('2025-11-30T22:12:10.044142'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pidgeotto189'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto189'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto189'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot190',
			email: 'pidgeot190@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.338144,
			longitude: 31.40784,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2016-05-27'),
            lastOnline: datetime('2025-11-27T22:12:10.044153'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'pidgeot190'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot190'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot190'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata191',
			email: 'rattata191@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.544087,
			longitude: -5.695838,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-10'),
            lastOnline: datetime('2025-11-15T22:12:10.044165'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'rattata191'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata191'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata191'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans192',
			email: 'ekans192@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.270933,
			longitude: 3.57438,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1988-02-22'),
            lastOnline: datetime('2025-11-05T22:12:10.044182'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ekans192'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans192'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans192'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu193',
			email: 'pikachu193@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.277436,
			longitude: 6.949499,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1987-03-20'),
            lastOnline: datetime('2025-11-12T22:12:10.044194'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pikachu193'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu193'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu193'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu194',
			email: 'raichu194@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.654479,
			longitude: 23.118108,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2017-04-21'),
            lastOnline: datetime('2025-11-14T22:12:10.044205'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'raichu194'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu194'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu194'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett195',
			email: 'diglett195@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.806203,
			longitude: 9.052271,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2019-08-02'),
            lastOnline: datetime('2025-11-05T22:12:10.044217'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'diglett195'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett195'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett195'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio196',
			email: 'dugtrio196@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.542497,
			longitude: 13.713286,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2001-07-09'),
            lastOnline: datetime('2025-11-11T22:12:10.044228'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'dugtrio196'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio196'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio196'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy197',
			email: 'clefairy197@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.52752,
			longitude: 2.428792,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2013-07-13'),
            lastOnline: datetime('2025-11-09T22:12:10.044244'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'clefairy197'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy197'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy197'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix198',
			email: 'vulpix198@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.949842,
			longitude: 0.157523,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2007-06-27'),
            lastOnline: datetime('2025-11-25T22:12:10.044256'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vulpix198'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix198'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix198'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff199',
			email: 'jigglypuff199@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.360931,
			longitude: 16.470591,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2004-03-05'),
            lastOnline: datetime('2025-11-10T22:12:10.044267'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff199'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff199'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff199'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat200',
			email: 'golbat200@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.804548,
			longitude: 10.030361,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2009-11-03'),
            lastOnline: datetime('2025-11-18T22:12:10.044279'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'golbat200'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat200'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat200'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret201',
			email: 'sentret201@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.86502,
			longitude: 26.955918,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-08'),
            lastOnline: datetime('2025-11-25T22:12:10.044291'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'sentret201'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret201'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret201'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume202',
			email: 'vileplume202@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.109029,
			longitude: -0.405887,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1997-01-21'),
            lastOnline: datetime('2025-11-24T22:12:10.044309'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vileplume202'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume202'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume202'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2203',
			email: 'diglett2203@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.241117,
			longitude: 39.166634,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1998-06-17'),
            lastOnline: datetime('2025-11-12T22:12:10.044321'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett2203'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2203'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2203'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth204',
			email: 'meowth204@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.252781,
			longitude: 6.902896,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1997-04-09'),
            lastOnline: datetime('2025-11-11T22:12:10.044333'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'meowth204'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth204'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth204'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 43.205743,
			longitude: 5.930588,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2013-03-11'),
            lastOnline: datetime('2025-11-09T22:12:10.044345'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'persian205'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian205'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian205'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck206',
			email: 'psyduck206@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.800359,
			longitude: 30.786371,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2003-07-08'),
            lastOnline: datetime('2025-11-24T22:12:10.044357'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck206'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck206'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck206'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe207',
			email: 'growlithe207@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.393795,
			longitude: 13.407597,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1999-02-14'),
            lastOnline: datetime('2025-11-06T22:12:10.044375'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe207'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe207'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe207'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag208',
			email: 'poliwag208@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.47873,
			longitude: 26.262036,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2017-09-10'),
            lastOnline: datetime('2025-11-20T22:12:10.044386'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'poliwag208'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag208'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag208'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl209',
			email: 'poliwhirl209@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.740436,
			longitude: 15.046183,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('1992-10-09'),
            lastOnline: datetime('2025-12-04T22:12:10.044398'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwhirl209'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl209'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl209'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra210',
			email: 'abra210@pokemon.com',
			firstName: 'Abra',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.188885,
			longitude: -3.067775,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-14'),
            lastOnline: datetime('2025-11-07T22:12:10.044410'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'abra210'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra210'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra210'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop211',
			email: 'machop211@pokemon.com',
			firstName: 'Machop',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.519743,
			longitude: 29.513871,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('1991-05-06'),
            lastOnline: datetime('2025-12-01T22:12:10.044422'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'machop211'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop211'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop211'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke212',
			email: 'slowpoke212@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.93806,
			longitude: -4.673365,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2001-12-05'),
            lastOnline: datetime('2025-11-20T22:12:10.044439'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'slowpoke212'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke212'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke212'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro213',
			email: 'slowbro213@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.056507,
			longitude: 36.526033,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('1988-05-01'),
            lastOnline: datetime('2025-11-15T22:12:10.044451'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'slowbro213'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro213'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro213'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd214',
			email: 'farfetchd214@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.709942,
			longitude: -2.453271,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2013-10-13'),
            lastOnline: datetime('2025-11-30T22:12:10.044462'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'farfetchd214'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd214'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd214'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone215',
			email: 'cubone215@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.47431,
			longitude: 33.517889,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1991-11-24'),
            lastOnline: datetime('2025-11-23T22:12:10.044474'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone215'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone215'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone215'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur216',
			email: 'bulbasaur216@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.801189,
			longitude: -7.585686,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1994-05-22'),
            lastOnline: datetime('2025-11-12T22:12:10.044485'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'bulbasaur216'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur216'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur216'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur217',
			email: 'ivysaur217@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.568117,
			longitude: 0.446663,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1986-09-03'),
            lastOnline: datetime('2025-11-20T22:12:10.044502'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ivysaur217'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur217'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur217'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur218',
			email: 'venusaur218@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.751924,
			longitude: 15.30323,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1997-06-25'),
            lastOnline: datetime('2025-11-28T22:12:10.044513'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'venusaur218'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur218'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur218'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander219',
			email: 'charmander219@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.795164,
			longitude: 33.287729,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1988-10-20'),
            lastOnline: datetime('2025-11-15T22:12:10.044524'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'charmander219'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander219'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander219'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon220',
			email: 'charmeleon220@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.535564,
			longitude: 24.669695,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1992-09-23'),
            lastOnline: datetime('2025-11-24T22:12:10.044536'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'charmeleon220'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon220'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon220'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard221',
			email: 'charizard221@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.145334,
			longitude: 10.520686,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2014-09-19'),
            lastOnline: datetime('2025-11-24T22:12:10.044548'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charizard221'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard221'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard221'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle222',
			email: 'squirtle222@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.305986,
			longitude: 32.785153,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-17'),
            lastOnline: datetime('2025-11-15T22:12:10.044564'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'squirtle222'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle222'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle222'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle223',
			email: 'wartortle223@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.248895,
			longitude: 39.102723,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2016-02-13'),
            lastOnline: datetime('2025-11-26T22:12:10.044576'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'wartortle223'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle223'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle223'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise224',
			email: 'blastoise224@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.886069,
			longitude: 25.54996,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2019-02-19'),
            lastOnline: datetime('2025-11-27T22:12:10.044588'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'blastoise224'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise224'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise224'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie225',
			email: 'caterpie225@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.936085,
			longitude: 15.380273,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2000-03-09'),
            lastOnline: datetime('2025-12-03T22:12:10.044599'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'caterpie225'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie225'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie225'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod226',
			email: 'metapod226@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.514616,
			longitude: 22.504442,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1992-10-20'),
            lastOnline: datetime('2025-11-14T22:12:10.044611'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod226'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod226'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod226'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree227',
			email: 'butterfree227@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.821178,
			longitude: 5.146525,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2002-09-27'),
            lastOnline: datetime('2025-11-15T22:12:10.044628'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'butterfree227'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree227'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree227'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle228',
			email: 'weedle228@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.982203,
			longitude: 35.698559,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1998-01-04'),
            lastOnline: datetime('2025-11-08T22:12:10.044640'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'weedle228'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle228'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle228'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna229',
			email: 'kakuna229@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.725468,
			longitude: 13.062711,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2017-03-23'),
            lastOnline: datetime('2025-11-10T22:12:10.044651'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'kakuna229'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna229'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna229'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 35.416808,
			longitude: 19.538969,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2011-09-29'),
            lastOnline: datetime('2025-11-29T22:12:10.044663'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'beedrill230'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill230'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill230'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey231',
			email: 'pidgey231@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.685579,
			longitude: 17.175635,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1996-03-01'),
            lastOnline: datetime('2025-11-08T22:12:10.044674'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgey231'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey231'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey231'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto232',
			email: 'pidgeotto232@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.663106,
			longitude: 0.668532,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2007-02-23'),
            lastOnline: datetime('2025-12-01T22:12:10.044690'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgeotto232'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto232'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto232'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot233',
			email: 'pidgeot233@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.960562,
			longitude: 2.988612,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-15'),
            lastOnline: datetime('2025-12-01T22:12:10.044703'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pidgeot233'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot233'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot233'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata234',
			email: 'rattata234@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.958984,
			longitude: 4.497022,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1990-12-31'),
            lastOnline: datetime('2025-11-13T22:12:10.044715'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'rattata234'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata234'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata234'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans235',
			email: 'ekans235@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.233498,
			longitude: 5.366746,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2003-10-01'),
            lastOnline: datetime('2025-11-17T22:12:10.044727'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans235'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans235'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans235'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu236',
			email: 'pikachu236@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.066076,
			longitude: -7.733036,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2010-10-27'),
            lastOnline: datetime('2025-11-21T22:12:10.044738'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pikachu236'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu236'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu236'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 67.507709,
			longitude: 24.318792,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2009-08-31'),
            lastOnline: datetime('2025-11-05T22:12:10.044755'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'raichu237'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu237'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu237'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett238',
			email: 'diglett238@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.451721,
			longitude: 37.880799,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1986-11-14'),
            lastOnline: datetime('2025-12-04T22:12:10.044767'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'diglett238'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett238'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett238'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio239',
			email: 'dugtrio239@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.723741,
			longitude: -9.01695,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1998-04-24'),
            lastOnline: datetime('2025-12-01T22:12:10.044779'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'dugtrio239'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio239'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio239'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 60.884876,
			longitude: 10.314507,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2019-03-23'),
            lastOnline: datetime('2025-12-04T22:12:10.044791'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'clefairy240'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy240'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy240'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix241',
			email: 'vulpix241@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.284904,
			longitude: 23.62866,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2005-08-02'),
            lastOnline: datetime('2025-11-09T22:12:10.044802'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'vulpix241'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix241'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix241'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff242',
			email: 'jigglypuff242@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.246192,
			longitude: 34.09367,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1997-12-06'),
            lastOnline: datetime('2025-12-02T22:12:10.044819'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'jigglypuff242'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff242'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff242'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat243',
			email: 'golbat243@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.94039,
			longitude: 12.182923,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2003-08-04'),
            lastOnline: datetime('2025-12-01T22:12:10.044831'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'golbat243'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat243'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat243'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret244',
			email: 'sentret244@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.55899,
			longitude: 5.183239,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1998-07-05'),
            lastOnline: datetime('2025-11-12T22:12:10.044842'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'sentret244'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret244'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret244'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume245',
			email: 'vileplume245@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.272512,
			longitude: -4.490896,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2001-04-07'),
            lastOnline: datetime('2025-11-12T22:12:10.044854'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'vileplume245'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume245'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume245'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2246',
			email: 'diglett2246@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.106773,
			longitude: 25.732908,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2017-04-13'),
            lastOnline: datetime('2025-11-24T22:12:10.044865'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2246'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2246'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2246'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth247',
			email: 'meowth247@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.258576,
			longitude: 20.079081,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2009-10-04'),
            lastOnline: datetime('2025-11-27T22:12:10.044883'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'meowth247'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth247'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth247'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 56.850346,
			longitude: 21.857688,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2007-10-01'),
            lastOnline: datetime('2025-11-26T22:12:10.044895'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'persian248'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian248'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian248'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck249',
			email: 'psyduck249@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.205627,
			longitude: 0.335134,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1998-07-04'),
            lastOnline: datetime('2025-11-26T22:12:10.044907'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'psyduck249'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck249'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck249'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe250',
			email: 'growlithe250@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.690553,
			longitude: 10.957407,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1986-06-23'),
            lastOnline: datetime('2025-11-11T22:12:10.044925'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'growlithe250'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe250'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe250'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag251',
			email: 'poliwag251@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.860195,
			longitude: 20.883474,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2001-12-07'),
            lastOnline: datetime('2025-11-14T22:12:10.044936'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwag251'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag251'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag251'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl252',
			email: 'poliwhirl252@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.181698,
			longitude: -9.699749,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2020-07-26'),
            lastOnline: datetime('2025-11-15T22:12:10.044953'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwhirl252'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl252'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl252'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra253',
			email: 'abra253@pokemon.com',
			firstName: 'Abra',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.168251,
			longitude: 34.144495,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1989-01-08'),
            lastOnline: datetime('2025-11-28T22:12:10.044965'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'abra253'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra253'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra253'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop254',
			email: 'machop254@pokemon.com',
			firstName: 'Machop',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.752651,
			longitude: 38.857815,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2007-10-21'),
            lastOnline: datetime('2025-11-27T22:12:10.044976'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'machop254'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop254'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop254'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke255',
			email: 'slowpoke255@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.231541,
			longitude: 13.870081,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('1990-02-16'),
            lastOnline: datetime('2025-12-04T22:12:10.044988'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'slowpoke255'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke255'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke255'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro256',
			email: 'slowbro256@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.262179,
			longitude: 30.872027,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-05'),
            lastOnline: datetime('2025-11-21T22:12:10.044999'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'slowbro256'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro256'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro256'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd257',
			email: 'farfetchd257@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.033973,
			longitude: 5.424387,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2012-11-26'),
            lastOnline: datetime('2025-11-05T22:12:10.045018'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'farfetchd257'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd257'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd257'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 57.238019,
			longitude: 28.169016,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2001-03-30'),
            lastOnline: datetime('2025-11-10T22:12:10.045031'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'cubone258'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone258'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone258'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur259',
			email: 'bulbasaur259@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.763902,
			longitude: 30.083283,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2003-02-28'),
            lastOnline: datetime('2025-11-28T22:12:10.045044'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'bulbasaur259'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur259'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur259'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur260',
			email: 'ivysaur260@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.837546,
			longitude: -6.852094,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2007-02-18'),
            lastOnline: datetime('2025-11-12T22:12:10.045057'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ivysaur260'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur260'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur260'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur261',
			email: 'venusaur261@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.964565,
			longitude: 9.271926,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1989-01-07'),
            lastOnline: datetime('2025-11-29T22:12:10.045068'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur261'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur261'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur261'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander262',
			email: 'charmander262@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.978193,
			longitude: 6.171839,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1988-04-25'),
            lastOnline: datetime('2025-11-21T22:12:10.045086'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmander262'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander262'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander262'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon263',
			email: 'charmeleon263@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.46408,
			longitude: 26.815782,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1997-10-08'),
            lastOnline: datetime('2025-11-20T22:12:10.045097'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charmeleon263'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon263'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon263'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard264',
			email: 'charizard264@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.034731,
			longitude: 28.489806,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2007-07-05'),
            lastOnline: datetime('2025-11-20T22:12:10.045109'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charizard264'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard264'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard264'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle265',
			email: 'squirtle265@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.645089,
			longitude: 19.249822,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2005-01-11'),
            lastOnline: datetime('2025-11-27T22:12:10.045121'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle265'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle265'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle265'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle266',
			email: 'wartortle266@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.111556,
			longitude: 23.275175,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1989-09-09'),
            lastOnline: datetime('2025-12-04T22:12:10.045132'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'wartortle266'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle266'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle266'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise267',
			email: 'blastoise267@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.659271,
			longitude: 2.221245,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2000-06-04'),
            lastOnline: datetime('2025-11-13T22:12:10.045149'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise267'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise267'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise267'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie268',
			email: 'caterpie268@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.811969,
			longitude: 7.586801,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2002-04-25'),
            lastOnline: datetime('2025-12-03T22:12:10.045160'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'caterpie268'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie268'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie268'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod269',
			email: 'metapod269@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.049525,
			longitude: 13.997345,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-17'),
            lastOnline: datetime('2025-11-25T22:12:10.045172'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod269'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod269'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod269'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree270',
			email: 'butterfree270@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.478476,
			longitude: 29.741926,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2019-09-30'),
            lastOnline: datetime('2025-11-26T22:12:10.045184'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'butterfree270'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree270'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree270'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle271',
			email: 'weedle271@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.578286,
			longitude: 13.817471,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2016-07-11'),
            lastOnline: datetime('2025-11-24T22:12:10.045195'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'weedle271'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle271'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle271'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna272',
			email: 'kakuna272@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.861827,
			longitude: 23.1231,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2006-12-20'),
            lastOnline: datetime('2025-11-29T22:12:10.045212'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'kakuna272'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna272'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna272'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill273',
			email: 'beedrill273@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.603335,
			longitude: 14.676724,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2007-02-12'),
            lastOnline: datetime('2025-11-19T22:12:10.045224'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'beedrill273'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill273'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill273'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey274',
			email: 'pidgey274@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.197388,
			longitude: 9.553317,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2006-01-06'),
            lastOnline: datetime('2025-11-13T22:12:10.045236'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgey274'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey274'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey274'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto275',
			email: 'pidgeotto275@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.638909,
			longitude: 10.631642,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2001-09-11'),
            lastOnline: datetime('2025-11-22T22:12:10.045247'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeotto275'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto275'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto275'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot276',
			email: 'pidgeot276@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.811791,
			longitude: 2.284919,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2015-02-08'),
            lastOnline: datetime('2025-12-02T22:12:10.045259'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeot276'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot276'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot276'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata277',
			email: 'rattata277@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.492311,
			longitude: -2.097954,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1993-02-19'),
            lastOnline: datetime('2025-11-13T22:12:10.045276'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'rattata277'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata277'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata277'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans278',
			email: 'ekans278@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.00949,
			longitude: 26.290604,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1993-07-29'),
            lastOnline: datetime('2025-11-23T22:12:10.045288'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ekans278'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans278'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans278'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu279',
			email: 'pikachu279@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.107722,
			longitude: 12.031023,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2002-10-18'),
            lastOnline: datetime('2025-11-24T22:12:10.045300'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pikachu279'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu279'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu279'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu280',
			email: 'raichu280@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.985468,
			longitude: 17.762177,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1988-09-17'),
            lastOnline: datetime('2025-11-09T22:12:10.045312'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'raichu280'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu280'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu280'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett281',
			email: 'diglett281@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.996382,
			longitude: 3.518241,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1994-07-20'),
            lastOnline: datetime('2025-12-03T22:12:10.045324'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'diglett281'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett281'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett281'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio282',
			email: 'dugtrio282@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.098146,
			longitude: 30.40858,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2018-02-21'),
            lastOnline: datetime('2025-11-23T22:12:10.045341'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'dugtrio282'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio282'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio282'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy283',
			email: 'clefairy283@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.318255,
			longitude: 39.194805,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2015-02-11'),
            lastOnline: datetime('2025-11-20T22:12:10.045353'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'clefairy283'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy283'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy283'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix284',
			email: 'vulpix284@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.94949,
			longitude: 9.626546,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2020-06-26'),
            lastOnline: datetime('2025-11-26T22:12:10.045365'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'vulpix284'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix284'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix284'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff285',
			email: 'jigglypuff285@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.149408,
			longitude: 23.290344,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2003-12-11'),
            lastOnline: datetime('2025-11-08T22:12:10.045376'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'jigglypuff285'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff285'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff285'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat286',
			email: 'golbat286@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.721911,
			longitude: -0.142937,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2017-08-24'),
            lastOnline: datetime('2025-11-27T22:12:10.045387'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'golbat286'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat286'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat286'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret287',
			email: 'sentret287@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.081944,
			longitude: 30.824027,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1988-09-11'),
            lastOnline: datetime('2025-11-06T22:12:10.045404'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'sentret287'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret287'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret287'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume288',
			email: 'vileplume288@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.290158,
			longitude: 33.033214,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2007-11-17'),
            lastOnline: datetime('2025-11-14T22:12:10.045416'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'vileplume288'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume288'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume288'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2289',
			email: 'diglett2289@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.030638,
			longitude: 29.683321,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2020-08-06'),
            lastOnline: datetime('2025-11-07T22:12:10.045427'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'diglett2289'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2289'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2289'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth290',
			email: 'meowth290@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.926792,
			longitude: -0.033945,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1986-09-14'),
            lastOnline: datetime('2025-11-08T22:12:10.045439'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'meowth290'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth290'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth290'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 39.45691,
			longitude: 10.732179,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2001-02-17'),
            lastOnline: datetime('2025-12-02T22:12:10.045451'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'persian291'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian291'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian291'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck292',
			email: 'psyduck292@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.570974,
			longitude: -7.510496,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-14'),
            lastOnline: datetime('2025-11-23T22:12:10.045467'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck292'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck292'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck292'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe293',
			email: 'growlithe293@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.504811,
			longitude: 31.243593,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1990-05-01'),
            lastOnline: datetime('2025-11-30T22:12:10.045479'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'growlithe293'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe293'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe293'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag294',
			email: 'poliwag294@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.495457,
			longitude: 18.743963,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('1992-02-23'),
            lastOnline: datetime('2025-11-13T22:12:10.045491'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'poliwag294'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag294'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag294'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl295',
			email: 'poliwhirl295@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.873741,
			longitude: 22.457286,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2020-11-27'),
            lastOnline: datetime('2025-11-05T22:12:10.045502'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'poliwhirl295'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl295'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl295'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra296',
			email: 'abra296@pokemon.com',
			firstName: 'Abra',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.471195,
			longitude: 9.36162,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2011-01-09'),
            lastOnline: datetime('2025-11-14T22:12:10.045514'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'abra296'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra296'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra296'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop297',
			email: 'machop297@pokemon.com',
			firstName: 'Machop',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.931983,
			longitude: 27.42502,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('1995-07-26'),
            lastOnline: datetime('2025-12-04T22:12:10.045532'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'machop297'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop297'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop297'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke298',
			email: 'slowpoke298@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.651876,
			longitude: 22.198156,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2010-10-24'),
            lastOnline: datetime('2025-11-11T22:12:10.045543'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'slowpoke298'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke298'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke298'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro299',
			email: 'slowbro299@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.509696,
			longitude: 35.972755,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2011-07-25'),
            lastOnline: datetime('2025-11-28T22:12:10.045555'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'slowbro299'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro299'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro299'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd300',
			email: 'farfetchd300@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.425003,
			longitude: 21.808524,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1997-05-04'),
            lastOnline: datetime('2025-11-05T22:12:10.045566'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'farfetchd300'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd300'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd300'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone301',
			email: 'cubone301@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.353642,
			longitude: 28.433161,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2007-05-05'),
            lastOnline: datetime('2025-11-12T22:12:10.045578'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'cubone301'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone301'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone301'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur302',
			email: 'bulbasaur302@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.388195,
			longitude: 3.146291,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-15'),
            lastOnline: datetime('2025-11-27T22:12:10.045594'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'bulbasaur302'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur302'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur302'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur303',
			email: 'ivysaur303@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.188089,
			longitude: 17.993527,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1997-03-13'),
            lastOnline: datetime('2025-11-08T22:12:10.045606'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ivysaur303'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur303'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur303'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur304',
			email: 'venusaur304@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.06748,
			longitude: 35.084026,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('1989-11-09'),
            lastOnline: datetime('2025-11-20T22:12:10.045618'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'venusaur304'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur304'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur304'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 69.226097,
			longitude: 32.610019,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2019-03-12'),
            lastOnline: datetime('2025-11-19T22:12:10.045629'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charmander305'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander305'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander305'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon306',
			email: 'charmeleon306@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.240711,
			longitude: 9.045774,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2014-10-18'),
            lastOnline: datetime('2025-11-29T22:12:10.045642'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charmeleon306'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon306'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon306'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard307',
			email: 'charizard307@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.856545,
			longitude: 4.227782,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1992-07-28'),
            lastOnline: datetime('2025-11-09T22:12:10.045653'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'charizard307'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard307'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard307'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle308',
			email: 'squirtle308@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.80577,
			longitude: 27.343913,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('1995-07-17'),
            lastOnline: datetime('2025-11-24T22:12:10.045670'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'squirtle308'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle308'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle308'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle309',
			email: 'wartortle309@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.287304,
			longitude: 16.085521,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1987-11-01'),
            lastOnline: datetime('2025-11-25T22:12:10.045682'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'wartortle309'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle309'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle309'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise310',
			email: 'blastoise310@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.436904,
			longitude: 29.84941,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2020-11-07'),
            lastOnline: datetime('2025-11-30T22:12:10.045694'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'blastoise310'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise310'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise310'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 47.603491,
			longitude: 39.401396,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2008-08-15'),
            lastOnline: datetime('2025-11-06T22:12:10.045705'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'caterpie311'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie311'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie311'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod312',
			email: 'metapod312@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.303885,
			longitude: 9.901666,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1986-03-06'),
            lastOnline: datetime('2025-11-30T22:12:10.045722'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'metapod312'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod312'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod312'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree313',
			email: 'butterfree313@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.24358,
			longitude: -8.256604,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1998-01-27'),
            lastOnline: datetime('2025-11-08T22:12:10.045734'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'butterfree313'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree313'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree313'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle314',
			email: 'weedle314@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.472024,
			longitude: 19.810255,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1998-02-18'),
            lastOnline: datetime('2025-11-15T22:12:10.045745'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'weedle314'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle314'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle314'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna315',
			email: 'kakuna315@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.865073,
			longitude: 31.849759,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2007-05-10'),
            lastOnline: datetime('2025-11-14T22:12:10.045757'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'kakuna315'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna315'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna315'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill316',
			email: 'beedrill316@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.90071,
			longitude: -3.499571,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2012-02-15'),
            lastOnline: datetime('2025-11-12T22:12:10.045769'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'beedrill316'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill316'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill316'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey317',
			email: 'pidgey317@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.049452,
			longitude: 15.070343,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2019-11-19'),
            lastOnline: datetime('2025-11-18T22:12:10.045785'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgey317'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey317'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey317'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto318',
			email: 'pidgeotto318@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.712526,
			longitude: 38.290634,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2005-09-16'),
            lastOnline: datetime('2025-11-26T22:12:10.045797'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeotto318'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto318'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto318'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot319',
			email: 'pidgeot319@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.190917,
			longitude: 10.354121,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2000-08-01'),
            lastOnline: datetime('2025-11-10T22:12:10.045809'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgeot319'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot319'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot319'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata320',
			email: 'rattata320@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.777356,
			longitude: 39.765823,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2009-08-02'),
            lastOnline: datetime('2025-11-05T22:12:10.045820'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'rattata320'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata320'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata320'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans321',
			email: 'ekans321@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.902086,
			longitude: -4.32621,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2017-05-13'),
            lastOnline: datetime('2025-11-12T22:12:10.045832'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans321'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans321'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans321'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu322',
			email: 'pikachu322@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.490959,
			longitude: -1.563949,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('1989-04-06'),
            lastOnline: datetime('2025-12-02T22:12:10.045848'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pikachu322'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu322'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu322'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu323',
			email: 'raichu323@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.27192,
			longitude: -1.686509,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2002-08-05'),
            lastOnline: datetime('2025-11-27T22:12:10.045859'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'raichu323'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu323'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu323'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett324',
			email: 'diglett324@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.853241,
			longitude: 16.173451,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2013-12-16'),
            lastOnline: datetime('2025-11-22T22:12:10.045870'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'diglett324'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett324'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett324'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 45.607966,
			longitude: 14.317755,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2002-03-28'),
            lastOnline: datetime('2025-11-07T22:12:10.045881'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'dugtrio325'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio325'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio325'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy326',
			email: 'clefairy326@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.298609,
			longitude: 13.798752,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2011-11-13'),
            lastOnline: datetime('2025-11-16T22:12:10.045893'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'clefairy326'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy326'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy326'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix327',
			email: 'vulpix327@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.586875,
			longitude: 33.327719,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1994-03-28'),
            lastOnline: datetime('2025-11-28T22:12:10.045904'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'vulpix327'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix327'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix327'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff328',
			email: 'jigglypuff328@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.984682,
			longitude: -5.722457,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2003-01-01'),
            lastOnline: datetime('2025-11-25T22:12:10.045930'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'jigglypuff328'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff328'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff328'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat329',
			email: 'golbat329@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.861351,
			longitude: 5.741888,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('2018-05-19'),
            lastOnline: datetime('2025-11-22T22:12:10.045944'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'golbat329'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat329'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat329'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret330',
			email: 'sentret330@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.722516,
			longitude: 17.995251,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('2005-03-27'),
            lastOnline: datetime('2025-11-06T22:12:10.045956'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'sentret330'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret330'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret330'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 67.921452,
			longitude: -8.225325,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2017-09-08'),
            lastOnline: datetime('2025-11-29T22:12:10.045968'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'vileplume331'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume331'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume331'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2332',
			email: 'diglett2332@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.199432,
			longitude: 8.789334,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('1986-01-15'),
            lastOnline: datetime('2025-11-28T22:12:10.045987'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'diglett2332'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2332'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2332'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth333',
			email: 'meowth333@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.26638,
			longitude: 5.415392,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('1987-07-26'),
            lastOnline: datetime('2025-11-14T22:12:10.045998'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'meowth333'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth333'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth333'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian334',
			email: 'persian334@pokemon.com',
			firstName: 'Persian',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.256568,
			longitude: 27.692814,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1992-10-04'),
            lastOnline: datetime('2025-12-02T22:12:10.046011'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'persian334'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian334'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian334'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck335',
			email: 'psyduck335@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.150871,
			longitude: 14.749814,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1991-03-13'),
            lastOnline: datetime('2025-11-10T22:12:10.046022'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck335'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck335'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck335'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe336',
			email: 'growlithe336@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.227114,
			longitude: 5.57338,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2003-01-14'),
            lastOnline: datetime('2025-11-12T22:12:10.046033'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'growlithe336'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe336'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe336'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag337',
			email: 'poliwag337@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.296373,
			longitude: 21.473611,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2006-08-31'),
            lastOnline: datetime('2025-11-19T22:12:10.046050'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwag337'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag337'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag337'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl338',
			email: 'poliwhirl338@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.614924,
			longitude: 30.3954,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2013-12-04'),
            lastOnline: datetime('2025-11-24T22:12:10.046062'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'poliwhirl338'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl338'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl338'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra339',
			email: 'abra339@pokemon.com',
			firstName: 'Abra',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.606228,
			longitude: 36.281659,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('1990-01-10'),
            lastOnline: datetime('2025-11-13T22:12:10.046074'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'abra339'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra339'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra339'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop340',
			email: 'machop340@pokemon.com',
			firstName: 'Machop',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.145401,
			longitude: -6.554919,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2018-11-13'),
            lastOnline: datetime('2025-11-24T22:12:10.046086'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'machop340'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop340'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop340'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke341',
			email: 'slowpoke341@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.42705,
			longitude: 17.381652,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2016-04-27'),
            lastOnline: datetime('2025-11-25T22:12:10.046097'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'slowpoke341'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke341'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke341'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro342',
			email: 'slowbro342@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.069216,
			longitude: 7.193847,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2010-09-16'),
            lastOnline: datetime('2025-11-25T22:12:10.046113'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'slowbro342'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro342'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro342'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd343',
			email: 'farfetchd343@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.736499,
			longitude: 4.221129,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1999-09-16'),
            lastOnline: datetime('2025-11-13T22:12:10.046124'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'farfetchd343'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd343'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd343'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone344',
			email: 'cubone344@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.05674,
			longitude: 31.523303,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2012-12-01'),
            lastOnline: datetime('2025-11-30T22:12:10.046136'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'cubone344'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone344'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone344'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur345',
			email: 'bulbasaur345@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.969352,
			longitude: 29.619845,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('2018-06-21'),
            lastOnline: datetime('2025-11-29T22:12:10.046148'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'bulbasaur345'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur345'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur345'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur346',
			email: 'ivysaur346@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.414271,
			longitude: 19.244704,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2012-07-17'),
            lastOnline: datetime('2025-11-17T22:12:10.046159'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ivysaur346'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur346'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur346'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur347',
			email: 'venusaur347@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.260059,
			longitude: 39.926157,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2014-05-16'),
            lastOnline: datetime('2025-11-09T22:12:10.046176'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'venusaur347'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur347'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur347'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander348',
			email: 'charmander348@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.809754,
			longitude: -5.543325,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1985-12-21'),
            lastOnline: datetime('2025-11-15T22:12:10.046188'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charmander348'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander348'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander348'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon349',
			email: 'charmeleon349@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.495122,
			longitude: 4.884361,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2005-05-21'),
            lastOnline: datetime('2025-11-28T22:12:10.046199'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'charmeleon349'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon349'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon349'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard350',
			email: 'charizard350@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.852466,
			longitude: 12.522941,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('2006-07-29'),
            lastOnline: datetime('2025-11-29T22:12:10.046210'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'charizard350'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard350'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard350'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle351',
			email: 'squirtle351@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.108436,
			longitude: 21.671173,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2014-06-08'),
            lastOnline: datetime('2025-11-22T22:12:10.046222'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'squirtle351'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle351'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle351'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle352',
			email: 'wartortle352@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.51819,
			longitude: 37.753007,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1987-12-04'),
            lastOnline: datetime('2025-11-14T22:12:10.046238'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'wartortle352'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle352'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle352'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise353',
			email: 'blastoise353@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.491911,
			longitude: 33.195193,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-15'),
            lastOnline: datetime('2025-11-30T22:12:10.046250'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'blastoise353'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise353'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise353'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie354',
			email: 'caterpie354@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.370553,
			longitude: -7.906493,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('1988-08-26'),
            lastOnline: datetime('2025-11-24T22:12:10.046262'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'caterpie354'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie354'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie354'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod355',
			email: 'metapod355@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.218784,
			longitude: -4.74017,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2001-04-03'),
            lastOnline: datetime('2025-11-19T22:12:10.046274'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'metapod355'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod355'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod355'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 62.743508,
			longitude: 32.916035,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('1995-05-10'),
            lastOnline: datetime('2025-11-16T22:12:10.046285'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'butterfree356'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree356'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree356'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle357',
			email: 'weedle357@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.122231,
			longitude: 30.228735,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2014-07-24'),
            lastOnline: datetime('2025-11-23T22:12:10.046301'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'weedle357'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle357'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle357'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna358',
			email: 'kakuna358@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.16774,
			longitude: 18.197757,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2013-03-05'),
            lastOnline: datetime('2025-11-27T22:12:10.046314'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'kakuna358'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna358'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna358'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill359',
			email: 'beedrill359@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.944838,
			longitude: 32.976149,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1996-08-23'),
            lastOnline: datetime('2025-11-07T22:12:10.046326'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'beedrill359'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill359'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill359'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey360',
			email: 'pidgey360@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.616181,
			longitude: 16.351429,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2002-11-18'),
            lastOnline: datetime('2025-11-18T22:12:10.046337'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'pidgey360'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey360'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey360'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 60.612497,
			longitude: 22.006263,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2016-09-11'),
            lastOnline: datetime('2025-11-17T22:12:10.046348'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgeotto361'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto361'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto361'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot362',
			email: 'pidgeot362@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.938708,
			longitude: -0.37301,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-10'),
            lastOnline: datetime('2025-11-27T22:12:10.046365'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'pidgeot362'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot362'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot362'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata363',
			email: 'rattata363@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.180367,
			longitude: 37.468826,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1996-12-14'),
            lastOnline: datetime('2025-11-05T22:12:10.046376'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'rattata363'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata363'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata363'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans364',
			email: 'ekans364@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.990841,
			longitude: 10.834241,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('2011-06-10'),
            lastOnline: datetime('2025-11-21T22:12:10.046388'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'ekans364'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans364'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans364'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu365',
			email: 'pikachu365@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.450746,
			longitude: 23.454101,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2014-02-02'),
            lastOnline: datetime('2025-11-18T22:12:10.046399'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pikachu365'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu365'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu365'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu366',
			email: 'raichu366@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.949736,
			longitude: 4.164011,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2017-09-25'),
            lastOnline: datetime('2025-11-06T22:12:10.046410'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'raichu366'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu366'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu366'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett367',
			email: 'diglett367@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 60.768176,
			longitude: 2.726572,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2017-01-30'),
            lastOnline: datetime('2025-11-08T22:12:10.046426'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'diglett367'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett367'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett367'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio368',
			email: 'dugtrio368@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.738607,
			longitude: 30.4243,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2003-09-24'),
            lastOnline: datetime('2025-11-11T22:12:10.046438'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'dugtrio368'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio368'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio368'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy369',
			email: 'clefairy369@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.504717,
			longitude: 31.55797,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1999-01-21'),
            lastOnline: datetime('2025-11-11T22:12:10.046449'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'clefairy369'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy369'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy369'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix370',
			email: 'vulpix370@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.197142,
			longitude: -2.478228,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1998-05-25'),
            lastOnline: datetime('2025-11-08T22:12:10.046461'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'vulpix370'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix370'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix370'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff371',
			email: 'jigglypuff371@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.491389,
			longitude: 38.475389,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2014-08-12'),
            lastOnline: datetime('2025-11-08T22:12:10.046473'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'jigglypuff371'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff371'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff371'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat372',
			email: 'golbat372@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.03619,
			longitude: -1.307819,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1997-07-18'),
            lastOnline: datetime('2025-11-21T22:12:10.046490'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'golbat372'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat372'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat372'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret373',
			email: 'sentret373@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.130006,
			longitude: 20.932114,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1986-08-19'),
            lastOnline: datetime('2025-12-02T22:12:10.046501'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'sentret373'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret373'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret373'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume374',
			email: 'vileplume374@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.878437,
			longitude: 17.139424,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2011-02-24'),
            lastOnline: datetime('2025-11-30T22:12:10.046512'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'vileplume374'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume374'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume374'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2375',
			email: 'diglett2375@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.989448,
			longitude: 3.985203,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2017-03-06'),
            lastOnline: datetime('2025-11-09T22:12:10.046523'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'diglett2375'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2375'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2375'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth376',
			email: 'meowth376@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.014295,
			longitude: 25.420017,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2012-10-25'),
            lastOnline: datetime('2025-11-14T22:12:10.046535'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'meowth376'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth376'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth376'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian377',
			email: 'persian377@pokemon.com',
			firstName: 'Persian',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.724555,
			longitude: 17.841531,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2014-04-07'),
            lastOnline: datetime('2025-11-19T22:12:10.046551'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'persian377'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian377'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian377'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck378',
			email: 'psyduck378@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.048549,
			longitude: 1.533686,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('1995-07-03'),
            lastOnline: datetime('2025-11-28T22:12:10.046563'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'psyduck378'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck378'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck378'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe379',
			email: 'growlithe379@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.385261,
			longitude: 9.181924,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('2008-10-12'),
            lastOnline: datetime('2025-11-25T22:12:10.046574'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'growlithe379'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe379'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe379'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag380',
			email: 'poliwag380@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.777299,
			longitude: -1.234619,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2010-11-08'),
            lastOnline: datetime('2025-11-05T22:12:10.046585'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwag380'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag380'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag380'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl381',
			email: 'poliwhirl381@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.61418,
			longitude: -3.03039,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2004-11-16'),
            lastOnline: datetime('2025-11-12T22:12:10.046597'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwhirl381'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl381'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl381'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra382',
			email: 'abra382@pokemon.com',
			firstName: 'Abra',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.974596,
			longitude: -0.423171,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2017-09-10'),
            lastOnline: datetime('2025-11-24T22:12:10.046613'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'abra382'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra382'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra382'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop383',
			email: 'machop383@pokemon.com',
			firstName: 'Machop',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.903931,
			longitude: 14.322399,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2020-06-25'),
            lastOnline: datetime('2025-11-28T22:12:10.046625'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'machop383'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop383'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop383'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke384',
			email: 'slowpoke384@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.4285,
			longitude: 13.439302,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('1996-11-08'),
            lastOnline: datetime('2025-11-18T22:12:10.046638'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowpoke384'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke384'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke384'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro385',
			email: 'slowbro385@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.937386,
			longitude: -5.792566,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2012-03-02'),
            lastOnline: datetime('2025-11-18T22:12:10.046650'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'slowbro385'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro385'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro385'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd386',
			email: 'farfetchd386@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.427031,
			longitude: 16.961975,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2011-11-07'),
            lastOnline: datetime('2025-11-21T22:12:10.046661'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'farfetchd386'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd386'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd386'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone387',
			email: 'cubone387@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.012521,
			longitude: 15.856355,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('2009-04-02'),
            lastOnline: datetime('2025-11-16T22:12:10.046677'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'cubone387'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone387'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone387'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur388',
			email: 'bulbasaur388@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 61.785608,
			longitude: -1.929973,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1988-09-28'),
            lastOnline: datetime('2025-11-22T22:12:10.046688'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'bulbasaur388'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur388'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur388'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur389',
			email: 'ivysaur389@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.39657,
			longitude: 21.008834,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2012-01-17'),
            lastOnline: datetime('2025-11-24T22:12:10.046700'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ivysaur389'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur389'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur389'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur390',
			email: 'venusaur390@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.342725,
			longitude: 10.132677,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2011-09-11'),
            lastOnline: datetime('2025-11-18T22:12:10.046712'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur390'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur390'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur390'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander391',
			email: 'charmander391@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.286208,
			longitude: 4.054303,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2004-10-31'),
            lastOnline: datetime('2025-11-30T22:12:10.046723'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'charmander391'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander391'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander391'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon392',
			email: 'charmeleon392@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.825162,
			longitude: 33.331129,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('1990-11-18'),
            lastOnline: datetime('2025-11-16T22:12:10.046740'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'charmeleon392'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon392'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon392'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard393',
			email: 'charizard393@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.509613,
			longitude: 15.816642,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1989-04-04'),
            lastOnline: datetime('2025-11-30T22:12:10.046751'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'charizard393'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard393'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard393'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle394',
			email: 'squirtle394@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.895821,
			longitude: 27.465066,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2008-04-04'),
            lastOnline: datetime('2025-11-14T22:12:10.046763'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'squirtle394'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle394'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle394'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle395',
			email: 'wartortle395@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 54.523503,
			longitude: 27.616857,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2006-10-30'),
            lastOnline: datetime('2025-11-30T22:12:10.046775'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'wartortle395'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle395'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle395'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise396',
			email: 'blastoise396@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.029512,
			longitude: 33.551322,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1987-06-24'),
            lastOnline: datetime('2025-11-25T22:12:10.046786'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'blastoise396'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise396'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise396'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie397',
			email: 'caterpie397@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.925775,
			longitude: 24.802667,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-23'),
            lastOnline: datetime('2025-11-25T22:12:10.046804'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'caterpie397'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie397'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie397'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod398',
			email: 'metapod398@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.112392,
			longitude: 23.269293,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1994-11-30'),
            lastOnline: datetime('2025-11-13T22:12:10.046815'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'metapod398'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod398'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod398'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree399',
			email: 'butterfree399@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.494282,
			longitude: -1.559815,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2007-04-22'),
            lastOnline: datetime('2025-11-15T22:12:10.046827'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'butterfree399'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree399'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree399'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle400',
			email: 'weedle400@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.363567,
			longitude: 17.951213,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2017-06-26'),
            lastOnline: datetime('2025-11-29T22:12:10.046838'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'weedle400'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle400'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle400'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 60.510053,
			longitude: 2.677525,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('1997-11-30'),
            lastOnline: datetime('2025-11-06T22:12:10.046850'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'kakuna401'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna401'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna401'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill402',
			email: 'beedrill402@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.50682,
			longitude: -5.888211,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('1997-07-01'),
            lastOnline: datetime('2025-11-17T22:12:10.046866'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'beedrill402'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill402'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill402'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey403',
			email: 'pidgey403@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.690213,
			longitude: -3.341295,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2006-12-31'),
            lastOnline: datetime('2025-11-25T22:12:10.046878'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgey403'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey403'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey403'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto404',
			email: 'pidgeotto404@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 46.6238,
			longitude: 27.261078,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1987-06-01'),
            lastOnline: datetime('2025-11-26T22:12:10.046890'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeotto404'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto404'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto404'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot405',
			email: 'pidgeot405@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.044143,
			longitude: 2.547533,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('2004-05-10'),
            lastOnline: datetime('2025-11-25T22:12:10.046902'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'pidgeot405'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot405'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot405'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata406',
			email: 'rattata406@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.327208,
			longitude: 12.226243,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2013-09-10'),
            lastOnline: datetime('2025-11-20T22:12:10.046913'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'rattata406'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata406'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata406'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans407',
			email: 'ekans407@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.659769,
			longitude: -4.327151,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-03'),
            lastOnline: datetime('2025-11-14T22:12:10.046933'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'ekans407'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans407'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans407'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu408',
			email: 'pikachu408@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.718944,
			longitude: 10.885489,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2007-10-30'),
            lastOnline: datetime('2025-11-30T22:12:10.046945'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pikachu408'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu408'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu408'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu409',
			email: 'raichu409@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.378127,
			longitude: 29.346025,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1988-06-18'),
            lastOnline: datetime('2025-11-10T22:12:10.046956'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'raichu409'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu409'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu409'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett410',
			email: 'diglett410@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.76127,
			longitude: 6.26039,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2004-12-07'),
            lastOnline: datetime('2025-11-11T22:12:10.046967'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'diglett410'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett410'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett410'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio411',
			email: 'dugtrio411@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.201902,
			longitude: 20.462187,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2000-06-11'),
            lastOnline: datetime('2025-11-24T22:12:10.046979'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'dugtrio411'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio411'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio411'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy412',
			email: 'clefairy412@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.658677,
			longitude: 13.641929,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('2009-07-30'),
            lastOnline: datetime('2025-11-22T22:12:10.046991'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'clefairy412'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy412'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy412'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix413',
			email: 'vulpix413@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 55.680156,
			longitude: 4.335804,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('1992-09-16'),
            lastOnline: datetime('2025-11-16T22:12:10.047009'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vulpix413'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix413'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix413'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff414',
			email: 'jigglypuff414@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.930162,
			longitude: -6.032928,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1991-09-05'),
            lastOnline: datetime('2025-11-08T22:12:10.047020'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'jigglypuff414'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff414'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff414'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat415',
			email: 'golbat415@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.51653,
			longitude: 20.678322,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1998-04-26'),
            lastOnline: datetime('2025-12-04T22:12:10.047032'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'golbat415'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat415'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat415'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret416',
			email: 'sentret416@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.692574,
			longitude: 31.312322,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1998-05-10'),
            lastOnline: datetime('2025-11-10T22:12:10.047043'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'sentret416'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret416'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret416'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vileplume417',
			email: 'vileplume417@pokemon.com',
			firstName: 'Vileplume',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.690483,
			longitude: -0.433521,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('2009-10-14'),
            lastOnline: datetime('2025-11-11T22:12:10.047059'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'vileplume417'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume417'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume417'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2418',
			email: 'diglett2418@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.054504,
			longitude: 24.044474,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2017-11-15'),
            lastOnline: datetime('2025-11-06T22:12:10.047071'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'diglett2418'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2418'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2418'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth419',
			email: 'meowth419@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.090549,
			longitude: -3.97233,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2002-02-16'),
            lastOnline: datetime('2025-11-11T22:12:10.047083'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'meowth419'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth419'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth419'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian420',
			email: 'persian420@pokemon.com',
			firstName: 'Persian',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.127477,
			longitude: 10.718233,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('1995-12-27'),
            lastOnline: datetime('2025-11-15T22:12:10.047095'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'persian420'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian420'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian420'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck421',
			email: 'psyduck421@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.039095,
			longitude: -8.385294,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2012-01-21'),
            lastOnline: datetime('2025-11-11T22:12:10.047106'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'psyduck421'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck421'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck421'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe422',
			email: 'growlithe422@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.918415,
			longitude: 9.659548,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1991-01-14'),
            lastOnline: datetime('2025-11-25T22:12:10.047123'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'growlithe422'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe422'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe422'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag423',
			email: 'poliwag423@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Taylor',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.4883,
			longitude: -3.49915,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2009-10-02'),
            lastOnline: datetime('2025-11-13T22:12:10.047135'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'poliwag423'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag423'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag423'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl424',
			email: 'poliwhirl424@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.658776,
			longitude: 6.911249,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2019-05-01'),
            lastOnline: datetime('2025-11-28T22:12:10.047147'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'poliwhirl424'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl424'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl424'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra425',
			email: 'abra425@pokemon.com',
			firstName: 'Abra',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.20015,
			longitude: 31.054622,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2001-09-04'),
            lastOnline: datetime('2025-12-02T22:12:10.047159'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'abra425'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra425'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra425'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop426',
			email: 'machop426@pokemon.com',
			firstName: 'Machop',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.570069,
			longitude: 34.174692,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2005-07-09'),
            lastOnline: datetime('2025-11-05T22:12:10.047170'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'machop426'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop426'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop426'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke427',
			email: 'slowpoke427@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.83746,
			longitude: 36.466358,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2009-01-14'),
            lastOnline: datetime('2025-11-08T22:12:10.047186'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowpoke427'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke427'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke427'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro428',
			email: 'slowbro428@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.084934,
			longitude: -9.285057,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('2004-05-10'),
            lastOnline: datetime('2025-11-07T22:12:10.047197'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'slowbro428'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro428'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro428'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd429',
			email: 'farfetchd429@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.57729,
			longitude: 21.536914,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('1990-04-21'),
            lastOnline: datetime('2025-11-25T22:12:10.047208'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'farfetchd429'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd429'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd429'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone430',
			email: 'cubone430@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 42.298831,
			longitude: 1.395941,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1987-06-29'),
            lastOnline: datetime('2025-11-21T22:12:10.047220'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'cubone430'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone430'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone430'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur431',
			email: 'bulbasaur431@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 68.292065,
			longitude: 18.191283,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1995-01-16'),
            lastOnline: datetime('2025-11-13T22:12:10.047231'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'bulbasaur431'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur431'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur431'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur432',
			email: 'ivysaur432@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.167948,
			longitude: -7.669174,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('1991-10-08'),
            lastOnline: datetime('2025-11-09T22:12:10.047247'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'ivysaur432'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur432'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur432'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur433',
			email: 'venusaur433@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.696292,
			longitude: -1.910719,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2020-09-14'),
            lastOnline: datetime('2025-11-20T22:12:10.047260'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'venusaur433'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur433'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur433'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander434',
			email: 'charmander434@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.171609,
			longitude: 18.882507,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('1989-03-04'),
            lastOnline: datetime('2025-11-12T22:12:10.047271'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charmander434'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander434'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander434'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon435',
			email: 'charmeleon435@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.813012,
			longitude: -1.81574,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2019-10-26'),
            lastOnline: datetime('2025-11-23T22:12:10.047283'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charmeleon435'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon435'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon435'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard436',
			email: 'charizard436@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.163482,
			longitude: 8.146392,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1990-08-31'),
            lastOnline: datetime('2025-11-30T22:12:10.047295'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'charizard436'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard436'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard436'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle437',
			email: 'squirtle437@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.423531,
			longitude: 33.492697,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2018-12-08'),
            lastOnline: datetime('2025-11-22T22:12:10.047311'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle437'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle437'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle437'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle438',
			email: 'wartortle438@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.625523,
			longitude: 31.254716,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('1995-07-13'),
            lastOnline: datetime('2025-11-28T22:12:10.047323'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'wartortle438'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle438'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle438'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise439',
			email: 'blastoise439@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.517342,
			longitude: 38.699548,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1995-10-06'),
            lastOnline: datetime('2025-11-27T22:12:10.047334'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'blastoise439'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise439'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise439'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie440',
			email: 'caterpie440@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 63.793256,
			longitude: 30.054724,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2007-05-07'),
            lastOnline: datetime('2025-11-27T22:12:10.047346'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'caterpie440'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie440'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie440'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod441',
			email: 'metapod441@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.658347,
			longitude: 6.024794,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('2000-10-31'),
            lastOnline: datetime('2025-11-15T22:12:10.047357'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'metapod441'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod441'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod441'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree442',
			email: 'butterfree442@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.059415,
			longitude: 7.461183,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2000-07-27'),
            lastOnline: datetime('2025-11-22T22:12:10.047373'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'butterfree442'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree442'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree442'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle443',
			email: 'weedle443@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.931506,
			longitude: 8.299136,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('1999-10-18'),
            lastOnline: datetime('2025-11-28T22:12:10.047384'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'weedle443'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle443'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle443'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'kakuna444',
			email: 'kakuna444@pokemon.com',
			firstName: 'Kakuna',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.333282,
			longitude: 21.185141,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2007-08-26'),
            lastOnline: datetime('2025-11-09T22:12:10.047395'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'kakuna444'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna444'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna444'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill445',
			email: 'beedrill445@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.337049,
			longitude: 20.914718,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2002-07-01'),
            lastOnline: datetime('2025-11-28T22:12:10.047407'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'beedrill445'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill445'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill445'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey446',
			email: 'pidgey446@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 69.308227,
			longitude: 32.216531,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('2005-09-19'),
            lastOnline: datetime('2025-11-10T22:12:10.047419'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'pidgey446'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey446'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey446'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeotto447',
			email: 'pidgeotto447@pokemon.com',
			firstName: 'Pidgeotto',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 56.14951,
			longitude: 13.044572,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('1993-08-16'),
            lastOnline: datetime('2025-11-27T22:12:10.047435'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'pidgeotto447'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto447'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto447'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgeot448',
			email: 'pidgeot448@pokemon.com',
			firstName: 'Pidgeot',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.185131,
			longitude: 21.379388,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1993-02-09'),
            lastOnline: datetime('2025-11-23T22:12:10.047447'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'pidgeot448'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot448'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot448'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'rattata449',
			email: 'rattata449@pokemon.com',
			firstName: 'Rattata',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.178819,
			longitude: 21.85529,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('1996-06-05'),
            lastOnline: datetime('2025-11-25T22:12:10.047459'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'rattata449'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata449'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata449'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans450',
			email: 'ekans450@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 52.68338,
			longitude: 18.21566,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1999-06-01'),
            lastOnline: datetime('2025-11-27T22:12:10.047470'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'ekans450'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans450'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans450'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu451',
			email: 'pikachu451@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.056794,
			longitude: -5.235422,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2017-03-04'),
            lastOnline: datetime('2025-11-19T22:12:10.047481'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'pikachu451'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu451'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu451'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu452',
			email: 'raichu452@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 66.698934,
			longitude: 20.489265,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('2004-02-04'),
            lastOnline: datetime('2025-11-23T22:12:10.047497'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'raichu452'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu452'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu452'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett453',
			email: 'diglett453@pokemon.com',
			firstName: 'Diglett',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.929521,
			longitude: -7.773817,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('1991-01-20'),
            lastOnline: datetime('2025-11-12T22:12:10.047509'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'diglett453'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett453'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett453'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 56.129511,
			longitude: 19.945828,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('1989-10-12'),
            lastOnline: datetime('2025-11-24T22:12:10.047520'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'dugtrio454'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio454'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio454'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy455',
			email: 'clefairy455@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.357532,
			longitude: -0.126382,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1991-12-27'),
            lastOnline: datetime('2025-11-10T22:12:10.047531'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'clefairy455'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy455'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy455'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix456',
			email: 'vulpix456@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 62.350167,
			longitude: 11.272485,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2016-06-07'),
            lastOnline: datetime('2025-11-21T22:12:10.047543'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'vulpix456'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix456'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix456'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff457',
			email: 'jigglypuff457@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.808991,
			longitude: 34.457942,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('1995-11-28'),
            lastOnline: datetime('2025-11-07T22:12:10.047559'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'jigglypuff457'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff457'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff457'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'golbat458',
			email: 'golbat458@pokemon.com',
			firstName: 'Golbat',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.29832,
			longitude: 23.010782,
			profileImageUrl: '/app/uploads/profiles/42.png',
			imageUrls: [],
			dateOfBirth: date('1991-10-21'),
            lastOnline: datetime('2025-11-14T22:12:10.047571'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'golbat458'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'golbat458'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'golbat458'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'sentret459',
			email: 'sentret459@pokemon.com',
			firstName: 'Sentret',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.123114,
			longitude: 19.090478,
			profileImageUrl: '/app/uploads/profiles/43.png',
			imageUrls: [],
			dateOfBirth: date('1990-07-24'),
            lastOnline: datetime('2025-12-04T22:12:10.047582'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'sentret459'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'sentret459'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'sentret459'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 38.295406,
			longitude: 27.401492,
			profileImageUrl: '/app/uploads/profiles/45.png',
			imageUrls: [],
			dateOfBirth: date('1987-12-02'),
            lastOnline: datetime('2025-11-13T22:12:10.047594'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'vileplume460'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vileplume460'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vileplume460'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'diglett2461',
			email: 'diglett2461@pokemon.com',
			firstName: 'Diglett2',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.551473,
			longitude: 4.695388,
			profileImageUrl: '/app/uploads/profiles/50.png',
			imageUrls: [],
			dateOfBirth: date('2006-12-07'),
            lastOnline: datetime('2025-11-06T22:12:10.047606'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'diglett2461'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett2461'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett2461'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'meowth462',
			email: 'meowth462@pokemon.com',
			firstName: 'Meowth',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 50.330282,
			longitude: 28.36001,
			profileImageUrl: '/app/uploads/profiles/52.png',
			imageUrls: [],
			dateOfBirth: date('2017-07-17'),
            lastOnline: datetime('2025-11-20T22:12:10.047623'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'meowth462'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'meowth462'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'meowth462'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'persian463',
			email: 'persian463@pokemon.com',
			firstName: 'Persian',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 39.039472,
			longitude: 28.869778,
			profileImageUrl: '/app/uploads/profiles/53.png',
			imageUrls: [],
			dateOfBirth: date('2016-12-08'),
            lastOnline: datetime('2025-11-19T22:12:10.047633'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'persian463'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'persian463'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'persian463'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'psyduck464',
			email: 'psyduck464@pokemon.com',
			firstName: 'Psyduck',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.697486,
			longitude: 30.675371,
			profileImageUrl: '/app/uploads/profiles/54.png',
			imageUrls: [],
			dateOfBirth: date('2010-03-11'),
            lastOnline: datetime('2025-11-09T22:12:10.047644'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'psyduck464'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'psyduck464'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'psyduck464'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'growlithe465',
			email: 'growlithe465@pokemon.com',
			firstName: 'Growlithe',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 67.760358,
			longitude: 14.715785,
			profileImageUrl: '/app/uploads/profiles/58.png',
			imageUrls: [],
			dateOfBirth: date('1987-08-19'),
            lastOnline: datetime('2025-12-03T22:12:10.047656'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'growlithe465'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'growlithe465'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'growlithe465'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwag466',
			email: 'poliwag466@pokemon.com',
			firstName: 'Poliwag',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 36.036573,
			longitude: 31.444731,
			profileImageUrl: '/app/uploads/profiles/60.png',
			imageUrls: [],
			dateOfBirth: date('2011-05-20'),
            lastOnline: datetime('2025-11-11T22:12:10.047668'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'poliwag466'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwag466'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwag466'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'poliwhirl467',
			email: 'poliwhirl467@pokemon.com',
			firstName: 'Poliwhirl',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.035947,
			longitude: 39.93972,
			profileImageUrl: '/app/uploads/profiles/61.png',
			imageUrls: [],
			dateOfBirth: date('2015-11-25'),
            lastOnline: datetime('2025-11-17T22:12:10.047684'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'poliwhirl467'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'poliwhirl467'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'poliwhirl467'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'abra468',
			email: 'abra468@pokemon.com',
			firstName: 'Abra',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.779063,
			longitude: 30.786408,
			profileImageUrl: '/app/uploads/profiles/63.png',
			imageUrls: [],
			dateOfBirth: date('2007-09-03'),
            lastOnline: datetime('2025-12-04T22:12:10.047696'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'abra468'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'abra468'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'abra468'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'machop469',
			email: 'machop469@pokemon.com',
			firstName: 'Machop',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.39199,
			longitude: -8.82735,
			profileImageUrl: '/app/uploads/profiles/69.png',
			imageUrls: [],
			dateOfBirth: date('2011-02-18'),
            lastOnline: datetime('2025-12-02T22:12:10.047708'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'machop469'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'machop469'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'machop469'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowpoke470',
			email: 'slowpoke470@pokemon.com',
			firstName: 'Slowpoke',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.75177,
			longitude: 18.460301,
			profileImageUrl: '/app/uploads/profiles/79.png',
			imageUrls: [],
			dateOfBirth: date('2014-12-24'),
            lastOnline: datetime('2025-12-01T22:12:10.047720'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'slowpoke470'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowpoke470'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowpoke470'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'slowbro471',
			email: 'slowbro471@pokemon.com',
			firstName: 'Slowbro',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.760026,
			longitude: 17.706818,
			profileImageUrl: '/app/uploads/profiles/80.png',
			imageUrls: [],
			dateOfBirth: date('1991-11-24'),
            lastOnline: datetime('2025-11-19T22:12:10.047731'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'slowbro471'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'slowbro471'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'slowbro471'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'farfetchd472',
			email: 'farfetchd472@pokemon.com',
			firstName: 'Farfetchd',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 51.912018,
			longitude: 37.617321,
			profileImageUrl: '/app/uploads/profiles/83.png',
			imageUrls: [],
			dateOfBirth: date('2005-03-25'),
            lastOnline: datetime('2025-11-30T22:12:10.047747'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'farfetchd472'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'farfetchd472'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'farfetchd472'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'cubone473',
			email: 'cubone473@pokemon.com',
			firstName: 'Cubone',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.560605,
			longitude: 29.892988,
			profileImageUrl: '/app/uploads/profiles/104.png',
			imageUrls: [],
			dateOfBirth: date('1993-06-05'),
            lastOnline: datetime('2025-11-07T22:12:10.047759'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'cubone473'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'cubone473'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'cubone473'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'bulbasaur474',
			email: 'bulbasaur474@pokemon.com',
			firstName: 'Bulbasaur',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 65.946686,
			longitude: 20.450273,
			profileImageUrl: '/app/uploads/profiles/1.png',
			imageUrls: [],
			dateOfBirth: date('1991-07-07'),
            lastOnline: datetime('2025-11-08T22:12:10.047770'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'bulbasaur474'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'bulbasaur474'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'bulbasaur474'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ivysaur475',
			email: 'ivysaur475@pokemon.com',
			firstName: 'Ivysaur',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 35.332095,
			longitude: -7.51207,
			profileImageUrl: '/app/uploads/profiles/2.png',
			imageUrls: [],
			dateOfBirth: date('2018-07-24'),
            lastOnline: datetime('2025-11-16T22:12:10.047782'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'ivysaur475'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ivysaur475'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ivysaur475'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'venusaur476',
			email: 'venusaur476@pokemon.com',
			firstName: 'Venusaur',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.870217,
			longitude: 26.201103,
			profileImageUrl: '/app/uploads/profiles/3.png',
			imageUrls: [],
			dateOfBirth: date('2013-01-05'),
            lastOnline: datetime('2025-11-08T22:12:10.047793'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'venusaur476'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'venusaur476'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'venusaur476'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmander477',
			email: 'charmander477@pokemon.com',
			firstName: 'Charmander',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.945232,
			longitude: -6.902981,
			profileImageUrl: '/app/uploads/profiles/4.png',
			imageUrls: [],
			dateOfBirth: date('2018-12-06'),
            lastOnline: datetime('2025-12-03T22:12:10.047809'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'charmander477'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmander477'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmander477'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charmeleon478',
			email: 'charmeleon478@pokemon.com',
			firstName: 'Charmeleon',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 45.498821,
			longitude: 25.63792,
			profileImageUrl: '/app/uploads/profiles/5.png',
			imageUrls: [],
			dateOfBirth: date('2017-02-06'),
            lastOnline: datetime('2025-11-06T22:12:10.047820'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'charmeleon478'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charmeleon478'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charmeleon478'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'charizard479',
			email: 'charizard479@pokemon.com',
			firstName: 'Charizard',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 47.078959,
			longitude: 0.105307,
			profileImageUrl: '/app/uploads/profiles/6.png',
			imageUrls: [],
			dateOfBirth: date('1999-09-13'),
            lastOnline: datetime('2025-11-28T22:12:10.047831'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'charizard479'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'charizard479'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'charizard479'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'squirtle480',
			email: 'squirtle480@pokemon.com',
			firstName: 'Squirtle',
			lastName: 'Davis',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 44.16779,
			longitude: 6.804516,
			profileImageUrl: '/app/uploads/profiles/7.png',
			imageUrls: [],
			dateOfBirth: date('2003-04-26'),
            lastOnline: datetime('2025-12-01T22:12:10.047843'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'squirtle480'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'squirtle480'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'squirtle480'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'wartortle481',
			email: 'wartortle481@pokemon.com',
			firstName: 'Wartortle',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.098344,
			longitude: 12.180875,
			profileImageUrl: '/app/uploads/profiles/8.png',
			imageUrls: [],
			dateOfBirth: date('2005-11-11'),
            lastOnline: datetime('2025-12-01T22:12:10.047855'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'wartortle481'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'wartortle481'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'wartortle481'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'blastoise482',
			email: 'blastoise482@pokemon.com',
			firstName: 'Blastoise',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 37.542716,
			longitude: 8.803716,
			profileImageUrl: '/app/uploads/profiles/9.png',
			imageUrls: [],
			dateOfBirth: date('1992-03-20'),
            lastOnline: datetime('2025-11-28T22:12:10.047872'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'blastoise482'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'blastoise482'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'blastoise482'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'caterpie483',
			email: 'caterpie483@pokemon.com',
			firstName: 'Caterpie',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 48.268994,
			longitude: 21.829356,
			profileImageUrl: '/app/uploads/profiles/10.png',
			imageUrls: [],
			dateOfBirth: date('2011-12-27'),
            lastOnline: datetime('2025-11-29T22:12:10.047883'),
			biography: 'Coffee enthusiast and book lover.'
		});
MATCH (u:User {username:'caterpie483'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'caterpie483'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'caterpie483'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'metapod484',
			email: 'metapod484@pokemon.com',
			firstName: 'Metapod',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 49.149889,
			longitude: 8.554004,
			profileImageUrl: '/app/uploads/profiles/11.png',
			imageUrls: [],
			dateOfBirth: date('1989-09-03'),
            lastOnline: datetime('2025-11-28T22:12:10.047895'),
			biography: 'Foodie with a passion for cooking.'
		});
MATCH (u:User {username:'metapod484'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'metapod484'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'metapod484'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'butterfree485',
			email: 'butterfree485@pokemon.com',
			firstName: 'Butterfree',
			lastName: 'Smith',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 43.602224,
			longitude: -0.287699,
			profileImageUrl: '/app/uploads/profiles/12.png',
			imageUrls: [],
			dateOfBirth: date('2004-01-16'),
            lastOnline: datetime('2025-11-22T22:12:10.047907'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'butterfree485'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'butterfree485'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'butterfree485'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'weedle486',
			email: 'weedle486@pokemon.com',
			firstName: 'Weedle',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.61285,
			longitude: 20.164368,
			profileImageUrl: '/app/uploads/profiles/13.png',
			imageUrls: [],
			dateOfBirth: date('2008-09-14'),
            lastOnline: datetime('2025-12-02T22:12:10.047920'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'weedle486'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'weedle486'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'weedle486'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 35.454457,
			longitude: -8.28482,
			profileImageUrl: '/app/uploads/profiles/14.png',
			imageUrls: [],
			dateOfBirth: date('2012-01-22'),
            lastOnline: datetime('2025-11-10T22:12:10.047939'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'kakuna487'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'kakuna487'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'kakuna487'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'beedrill488',
			email: 'beedrill488@pokemon.com',
			firstName: 'Beedrill',
			lastName: 'Lee',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.464738,
			longitude: 33.622078,
			profileImageUrl: '/app/uploads/profiles/15.png',
			imageUrls: [],
			dateOfBirth: date('2011-11-09'),
            lastOnline: datetime('2025-11-23T22:12:10.047950'),
			biography: 'Environmentalist and animal lover.'
		});
MATCH (u:User {username:'beedrill488'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'beedrill488'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'beedrill488'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pidgey489',
			email: 'pidgey489@pokemon.com',
			firstName: 'Pidgey',
			lastName: 'Miller',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 41.595522,
			longitude: 26.98971,
			profileImageUrl: '/app/uploads/profiles/16.png',
			imageUrls: [],
			dateOfBirth: date('1987-06-12'),
            lastOnline: datetime('2025-11-22T22:12:10.047961'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pidgey489'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgey489'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgey489'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 43.136028,
			longitude: 38.734608,
			profileImageUrl: '/app/uploads/profiles/17.png',
			imageUrls: [],
			dateOfBirth: date('2015-10-13'),
            lastOnline: datetime('2025-11-05T22:12:10.047973'),
			biography: 'Tech geek and music fan.'
		});
MATCH (u:User {username:'pidgeotto490'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeotto490'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeotto490'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 42.641226,
			longitude: 0.801769,
			profileImageUrl: '/app/uploads/profiles/18.png',
			imageUrls: [],
			dateOfBirth: date('1999-10-22'),
            lastOnline: datetime('2025-11-29T22:12:10.047984'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'pidgeot491'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pidgeot491'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pidgeot491'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 51.255591,
			longitude: 12.700222,
			profileImageUrl: '/app/uploads/profiles/19.png',
			imageUrls: [],
			dateOfBirth: date('2003-05-21'),
            lastOnline: datetime('2025-11-28T22:12:10.048002'),
			biography: 'Fitness and outdoor activities lover.'
		});
MATCH (u:User {username:'rattata492'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'rattata492'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'rattata492'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'ekans493',
			email: 'ekans493@pokemon.com',
			firstName: 'Ekans',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 40.523812,
			longitude: 15.236972,
			profileImageUrl: '/app/uploads/profiles/21.png',
			imageUrls: [],
			dateOfBirth: date('1996-07-18'),
            lastOnline: datetime('2025-11-30T22:12:10.048013'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'ekans493'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'ekans493'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'ekans493'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'pikachu494',
			email: 'pikachu494@pokemon.com',
			firstName: 'Pikachu',
			lastName: 'Choi',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 64.097195,
			longitude: 15.071665,
			profileImageUrl: '/app/uploads/profiles/25.png',
			imageUrls: [],
			dateOfBirth: date('2014-01-07'),
            lastOnline: datetime('2025-12-02T22:12:10.048025'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'pikachu494'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'pikachu494'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Piercing'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'pikachu494'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'raichu495',
			email: 'raichu495@pokemon.com',
			firstName: 'Raichu',
			lastName: 'Brown',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 57.959238,
			longitude: -6.532857,
			profileImageUrl: '/app/uploads/profiles/26.png',
			imageUrls: [],
			dateOfBirth: date('1991-11-25'),
            lastOnline: datetime('2025-12-02T22:12:10.048036'),
			biography: 'Always exploring new places.'
		});
MATCH (u:User {username:'raichu495'}), (g:Gender {gender:'Male'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'raichu495'}), (s:SexualPreference {name:'Homosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'raichu495'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);

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
			latitude: 58.641242,
			longitude: 11.648329,
			profileImageUrl: '/app/uploads/profiles/27.png',
			imageUrls: [],
			dateOfBirth: date('2001-01-01'),
            lastOnline: datetime('2025-11-06T22:12:10.048048'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'diglett496'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'diglett496'}), (s:SexualPreference {name:'Prefer not to say'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Movies'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'diglett496'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'dugtrio497',
			email: 'dugtrio497@pokemon.com',
			firstName: 'Dugtrio',
			lastName: 'Park',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 38.245788,
			longitude: -3.058237,
			profileImageUrl: '/app/uploads/profiles/28.png',
			imageUrls: [],
			dateOfBirth: date('2001-06-14'),
            lastOnline: datetime('2025-11-20T22:12:10.048065'),
			biography: 'Creative soul who enjoys art and photography.'
		});
MATCH (u:User {username:'dugtrio497'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'dugtrio497'}), (s:SexualPreference {name:'Other'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Cooking'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'dugtrio497'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'clefairy498',
			email: 'clefairy498@pokemon.com',
			firstName: 'Clefairy',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 53.069167,
			longitude: 25.040025,
			profileImageUrl: '/app/uploads/profiles/35.png',
			imageUrls: [],
			dateOfBirth: date('1995-03-19'),
            lastOnline: datetime('2025-11-19T22:12:10.048077'),
			biography: 'Love adventures and meeting new people.'
		});
MATCH (u:User {username:'clefairy498'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'clefairy498'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Travel'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Geek'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Technology'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'clefairy498'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'vulpix499',
			email: 'vulpix499@pokemon.com',
			firstName: 'Vulpix',
			lastName: 'Kim',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 58.370893,
			longitude: -2.454382,
			profileImageUrl: '/app/uploads/profiles/37.png',
			imageUrls: [],
			dateOfBirth: date('2011-04-02'),
            lastOnline: datetime('2025-11-22T22:12:10.048088'),
			biography: 'Gamer and movie buff.'
		});
MATCH (u:User {username:'vulpix499'}), (g:Gender {gender:'Others'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'vulpix499'}), (s:SexualPreference {name:'Bisexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Vegan'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Art'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Mental health awareness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Photography'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'vulpix499'}), (i:Interest {name:'Fashion'}) CREATE (u)-[:INTERESTED_IN]->(i);

CREATE (u:User {
			username: 'jigglypuff500',
			email: 'jigglypuff500@pokemon.com',
			firstName: 'Jigglypuff',
			lastName: 'Wilson',
			password: '$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: 59.748316,
			longitude: 23.454392,
			profileImageUrl: '/app/uploads/profiles/39.png',
			imageUrls: [],
			dateOfBirth: date('2009-09-30'),
            lastOnline: datetime('2025-11-05T22:12:10.048100'),
			biography: 'Curious mind, always learning.'
		});
MATCH (u:User {username:'jigglypuff500'}), (g:Gender {gender:'Female'}) CREATE (u)-[:HAS_GENDER]->(g);
MATCH (u:User {username:'jigglypuff500'}), (s:SexualPreference {name:'Heterosexual'}) CREATE (u)-[:HAS_PREFERENCE]->(s);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Sports'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Books'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Music'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Foodie'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Fitness'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Gaming'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Environmentalism'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Outdoor activities'}) CREATE (u)-[:INTERESTED_IN]->(i);
MATCH (u:User {username:'jigglypuff500'}), (i:Interest {name:'Animals'}) CREATE (u)-[:INTERESTED_IN]->(i);

