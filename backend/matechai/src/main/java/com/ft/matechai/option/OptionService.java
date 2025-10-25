package com.ft.matechai.option;


import com.ft.matechai.user.repository.GenderRepository;
import com.ft.matechai.user.repository.InterestRepository;
import com.ft.matechai.user.repository.SexualPreferenceRepository;
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


    List<String> getGendersList() {

        return genderRepository.findAllNames();
    }

    List<String> getSexualPreferencesList() {

        return sexualPreferenceRepository.findAllNames();
    }

    List<String> getInterestsList() {

        return interestRepository.findAllNames();
    }
}
