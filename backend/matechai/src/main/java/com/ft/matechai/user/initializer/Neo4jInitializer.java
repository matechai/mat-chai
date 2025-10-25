package com.ft.matechai.user.initializer;

import com.ft.matechai.user.repository.GenderRepository;
import com.ft.matechai.user.repository.SexualPreferenceRepository;
import com.ft.matechai.user.repository.InterestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;


@Component
@RequiredArgsConstructor
public class Neo4jInitializer implements CommandLineRunner {

    private final GenderRepository genderRepository;
    private final SexualPreferenceRepository sexualPreferenceRepository;
    private final InterestRepository interestRepository;

    @Override
    public void run(String... args) throws Exception {

        initialGenders();
        initialSexualPreference();
        initialInterests();
    }

    private void initialGenders() {

        String[] genders = {
                "Male",
                "Female",
                "Non-binary",
                "Prefer not to say",
                "Other"
        };

        for (String gender : genders) {
            genderRepository.saveIfNotExists(gender);
        }

        System.out.println("Initial Gender loaded into Neo4j");
    }

    private void initialSexualPreference() {

        String[] sexualPreferences = {
                "Heterosexual",
                "Homosexual",
                "Bisexual",
                "Pansexual",
                "Asexual",
                "Demisexual",
                "Queer",
                "Prefer not to say",
                "Other"
        };


        for (String sexualPreference : sexualPreferences) {
            sexualPreferenceRepository.saveIfNotExists(sexualPreference);
        }

        System.out.println("Initial Sexual Preference loaded into Neo4j");
    }

    private void initialInterests() {

        String[] interests = {
                "Vegan",
                "Geek",
                "Piercing",
                "Fitness",
                "Gaming",
                "Music",
                "Travel",
                "Books",
                "Photography",
                "Art",
                "Foodie",
                "Technology",
                "Fashion",
                "Sports",
                "Animals",
                "Outdoor activities",
                "Movies",
                "Mental health awareness",
                "Environmentalism",
                "Photography",
                "Cooking"
        };

        for (String interest : interests) {
            interestRepository.saveIfNotExists(interest);
        }

        System.out.println("Initial Interests loaded into Neo4j");
    }
}
