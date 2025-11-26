import random
from datetime import date, timedelta

POKEMON_MAP = {
    1: "bulbasaur",
    2: "ivysaur",
    3: "venusaur",
    4: "charmander",
    5: "charmeleon",
    6: "charizard",
    7: "squirtle",
    8: "wartortle",
    9: "blastoise",
    10: "caterpie",
    11: "metapod",
    12: "butterfree",
    13: "weedle",
    14: "kakuna",
    15: "beedrill",
    16: "pidgey",
    17: "pidgeotto",
    18: "pidgeot",
    19: "rattata",
    21: "ekans",
    25: "pikachu",
    26: "raichu",
    27: "diglett",
    28: "dugtrio",
    35: "clefairy",
    37: "vulpix",
    39: "jigglypuff",
    42: "golbat",
    43: "sentret",
    45: "vileplume",
    50: "diglett2",
    52: "meowth",
    53: "persian",
    54: "psyduck",
    58: "growlithe",
    60: "poliwag",
    61: "poliwhirl",
    63: "abra",
    69: "machop",
    79: "slowpoke",
    80: "slowbro",
    83: "farfetchd",
    104: "cubone"
}

POKEMON_LIST = list(POKEMON_MAP.values())

PASSWORD_HASH = "$2a$12$xk3pxoVQxE2UfubCvr70a.5mj8KWEMWEEw8s3/RtQgfBfOPRKkf0q"

GENDERS = ["Female", "Male", "Others"]
PREFERENCES = ["Heterosexual", "Homosexual", "Bisexual", "Prefer not to say", "Other"]
INTERESTS = [
    "Vegan","Geek","Piercing","Fitness","Gaming","Music","Travel","Books",
    "Photography","Art","Foodie","Technology","Fashion","Sports","Animals",
    "Outdoor activities","Movies","Mental health awareness","Environmentalism","Cooking"
]
LAST_NAMES = ["Smith", "Lee", "Kim", "Park", "Choi", "Brown", "Davis", "Miller", "Wilson", "Taylor"]


def random_birthday(min_age=5, max_age=40):
    today = date.today()
    start_birth = today.replace(year=today.year - max_age)
    end_birth = today.replace(year=today.year - min_age)
    delta = (end_birth - start_birth).days
    random_days = random.randint(0, delta)
    return (start_birth + timedelta(days=random_days)).isoformat()  # "YYYY-MM-DD"


def random_biography():
    bios = [
        "Love adventures and meeting new people.",
        "Coffee enthusiast and book lover.",
        "Always exploring new places.",
        "Tech geek and music fan.",
        "Foodie with a passion for cooking.",
        "Fitness and outdoor activities lover.",
        "Creative soul who enjoys art and photography.",
        "Gamer and movie buff.",
        "Environmentalist and animal lover.",
        "Curious mind, always learning."
    ]
    return random.choice(bios)


with open("init_profiles.cypher", "w", encoding="utf-8") as f:
    f.write("MATCH (n) DETACH DELETE n;\n\n")

    # Gender nodes
    for g in GENDERS:
        f.write(f"MERGE (:Gender {{gender: '{g}'}});\n")
    f.write("\n")

    # SexualPreference nodes
    for p in PREFERENCES:
        f.write(f"MERGE (:SexualPreference {{name: '{p}'}});\n")
    f.write("\n")

    # Interest nodes
    for i in INTERESTS:
        f.write(f"MERGE (:Interest {{name: '{i}'}});\n")
    f.write("\n")

    # Create 500 users
    for i in range(1, 501):
        pokemon = POKEMON_LIST[(i - 1) % len(POKEMON_LIST)]
        username = f"{pokemon}{i}"
        email = f"{username}@pokemon.com"

        lat = round(random.uniform(35, 70), 6)
        lon = round(random.uniform(-10, 40), 6)

        pokemon_number = [k for k, v in POKEMON_MAP.items() if v == pokemon][0]
        profile_img = f"/app/uploads/profiles/{pokemon_number}.png"

        gender = random.choice(GENDERS)
        preference = random.choice(PREFERENCES)
        interests = random.sample(INTERESTS, k=random.randint(6, 10))
        
        dob = random_birthday()
        bio = random_biography()
        
        cypher = f"""CREATE (u:User {{
			username: '{username}',
			email: '{email}',
			firstName: '{pokemon.capitalize()}',
			lastName: '{random.choice(LAST_NAMES)}',
			password: '{PASSWORD_HASH}',
			role: 'ROLE_USER',
			enabled: true,
			isBanned: false,
			fame: 10.0,
			latitude: {lat},
			longitude: {lon},
			profileImageUrl: '{profile_img}',
			imageUrls: [],
			dateOfBirth: date('{dob}'),
			biography: '{bio}'
		}});\n"""
        f.write(cypher)

        # HAS_GENDER
        f.write(
            f"MATCH (u:User {{username:'{username}'}}), (g:Gender {{gender:'{gender}'}}) "
            f"CREATE (u)-[:HAS_GENDER]->(g);\n"
        )

        # HAS_PREFERENCE
        f.write(
            f"MATCH (u:User {{username:'{username}'}}), (s:SexualPreference {{name:'{preference}'}}) "
            f"CREATE (u)-[:HAS_PREFERENCE]->(s);\n"
        )

        # INTERESTED_IN
        for interest in interests:
            f.write(
                f"MATCH (u:User {{username:'{username}'}}), (i:Interest {{name:'{interest}'}}) "
                f"CREATE (u)-[:INTERESTED_IN]->(i);\n"
            )

        f.write("\n")

print("init_profiles.cypher 생성 완료!")
