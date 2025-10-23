package com.ft.matechai.user.initializer;

import com.ft.matechai.user.repository.GenderRepository;
import com.ft.matechai.user.repository.SexualPreferenceRepository;
import com.ft.matechai.user.repository.TagRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;


@Component
@RequiredArgsConstructor
public class Neo4jInitializer implements CommandLineRunner {

    private final GenderRepository genderRepository;
    private final SexualPreferenceRepository sexualPreferenceRepository;
    private final TagRepository tagRepository;

    @Override
    public void run(String... args) throws Exception {

        initialGenders();
        initialSexualPreference();
        initialTags();
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

    private void initialTags() {

        String[] tags = {
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

        for (String tag : tags) {
            tagRepository.saveIfNotExists(tag);
        }

        System.out.println("Initial Tags loaded into Neo4j");
    }
}
