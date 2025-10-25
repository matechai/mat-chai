package com.ft.matechai.option.controller;

import com.ft.matechai.option.service.OptionService;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;


@Controller
public class OptionController {

    final private OptionService optionService;

    public OptionController(OptionService optionService) {

        this.optionService = optionService;
    }


    @QueryMapping
    public List<String> genders() {

        return optionService.getGendersList();
    }

    @QueryMapping
    public List<String> sexualPreferences() {

        return optionService.getSexualPreferencesList();
    }

    @QueryMapping
    public List<String> interests() {

        return optionService.getInterestsList();
    }
}
