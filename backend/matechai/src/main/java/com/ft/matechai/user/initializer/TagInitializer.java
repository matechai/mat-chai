package com.ft.matechai.user.initializer;

import com.ft.matechai.user.node.Tag;
import com.ft.matechai.user.repository.TagRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class TagInitializer implements CommandLineRunner {

    private final TagRepository tagRepository;

    @Override
    public void run(String... args) throws Exception {
        String[] initialTags = {"baseball"};

        for (String tagName : initialTags) {
            tagRepository.saveIfNotExists(tagName);
        }

        System.out.println("Initial tags loaded into Neo4j");
    }
}
