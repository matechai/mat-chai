package com.ft.matechai.user.service;

import com.ft.matechai.user.dto.UserInfoDTO;
import com.ft.matechai.user.dto.UserProfileDTO;
import com.ft.matechai.option.node.Gender;
import com.ft.matechai.option.node.SexualPreference;
import com.ft.matechai.option.node.Interest;
import com.ft.matechai.user.node.User;
import com.ft.matechai.option.repository.GenderRepository;
import com.ft.matechai.option.repository.SexualPreferenceRepository;
import com.ft.matechai.option.repository.InterestRepository;
import com.ft.matechai.user.repository.UserRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.stream.Collectors;


@Service
public class UserService {
	private final UserRepository userRepository;
    private final GenderRepository genderRepository;
    private final SexualPreferenceRepository sexualPreferenceRepository;
    private final InterestRepository interestRepository;

	public UserService(UserRepository userRepository,
                       GenderRepository genderRepository,
                       SexualPreferenceRepository sexualPreferenceRepository,
                       InterestRepository interestRepository) {
		this.userRepository = userRepository;
        this.genderRepository = genderRepository;
        this.sexualPreferenceRepository = sexualPreferenceRepository;
        this.interestRepository = interestRepository;
	}

	// GETTERS // GETTERS // GETTERS // GETTERS //

	@Transactional(readOnly = true)
    public User getUser(String username) {

        return userRepository.findByUsernameOrThrow(username);
    }

	@Transactional(readOnly = true)
    public UserInfoDTO getUserInfo(String username) {

        User user = userRepository.findByUsernameOrThrow(username);

        return UserInfoDTO.builder()
                .email(user.getEmail())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .build();
    }

    public String getGender(String username) {

        return genderRepository.findByUserUsername(username);
    }

    public List<String> getSexualPreference(String username) {

        return sexualPreferenceRepository.findByUserUsername(username);
    }

    public List<String> getInterests(String username) {

        return interestRepository.findByUsername(username);
    }



	// SETTERS // SETTERS // SETTERS // SETTERS //

    public void updateUserInfo(String username, UserInfoDTO dto) {

        User user = userRepository.findByUsernameOrThrow(username);

        user.setEmail(dto.getEmail());
        user.setFirstName(dto.getFirstName());
        user.setLastName(dto.getLastName());

        userRepository.save(user);
    }


    @Transactional
    public UserProfileDTO updateProfile(String username, UserProfileDTO dto) {

        User user = userRepository.findByUsernameOrThrow(username);

        user.setBiography(dto.getBiography());

        // Gender (1:1)
        Gender gender = genderRepository.findByGenderOrThrow(dto.getGender());
        user.setGender(gender);
        userRepository.removeGender(username);
        userRepository.setGender(username, gender.getGender());

        // Sexual Preference (1:N)
        List<SexualPreference> sexualPreferences = dto.getSexualPreferences().stream()
                .map(sexualPreferenceRepository::findByNameOrThrow)
                .collect(Collectors.toList());
        user.setSexualPreferences(sexualPreferences);
        userRepository.removeStaleSexualPreferences(username, dto.getSexualPreferences());
        sexualPreferences.forEach(sp -> userRepository.addSexualPreference(username, sp.getName()));

        // Interest (1:N)
        List<Interest> interests = dto.getInterests().stream()
                .map(interestRepository::findByNameOrThrow)
                .collect(Collectors.toList());
        user.setInterested_in(interests);
        userRepository.removeStaleInterests(username, dto.getInterests());
        interests.forEach(interest -> userRepository.addInterest(username, interest.getName()));

        // todo image field

        userRepository.save(user);

        return UserProfileDTO.from(user);
    }
}