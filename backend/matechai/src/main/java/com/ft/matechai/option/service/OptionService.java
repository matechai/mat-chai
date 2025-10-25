package com.ft.matechai.option.service;


import com.ft.matechai.option.repository.GenderRepository;
import com.ft.matechai.option.repository.InterestRepository;
import com.ft.matechai.option.repository.SexualPreferenceRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OptionService {

    private final GenderRepository genderRepository;
    private final SexualPreferenceRepository sexualPreferenceRepository;
    private final InterestRepository interestRepository;

    public OptionService(GenderRepository genderRepository,
                         SexualPreferenceRepository sexualPreferenceRepository,
                         InterestRepository interestRepository) {

        this.genderRepository = genderRepository;
        this.sexualPreferenceRepository = sexualPreferenceRepository;
        this.interestRepository = interestRepository;
    }


    public List<String> getGendersList() {

        return genderRepository.findAllNames();
    }

    public List<String> getSexualPreferencesList() {

        return sexualPreferenceRepository.findAllNames();
    }

    public List<String> getInterestsList() {

        return interestRepository.findAllNames();
    }
}
