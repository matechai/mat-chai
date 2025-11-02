package com.ft.matechai.user.service;

import com.ft.matechai.profile.service.FameService;
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

import graphql.schema.DataFetchingEnvironment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;


@Slf4j
@Service
public class UserService {

    @Value("${file.upload.path}")
    private String uploadDirPath;

	private final UserRepository userRepository;
    private final GenderRepository genderRepository;
    private final SexualPreferenceRepository sexualPreferenceRepository;
    private final InterestRepository interestRepository;
    private final FameService fameService;


	public UserService(UserRepository userRepository,
                       GenderRepository genderRepository,
                       SexualPreferenceRepository sexualPreferenceRepository,
                       InterestRepository interestRepository,
                       FameService fameService) {
		this.userRepository = userRepository;
        this.genderRepository = genderRepository;
        this.sexualPreferenceRepository = sexualPreferenceRepository;
        this.interestRepository = interestRepository;
        this.fameService = fameService;
    }

	// GETTERS // GETTERS // GETTERS // GETTERS //

	@Transactional
    public User getUser(User user, String targetUsername, DataFetchingEnvironment env) {

        User targetUser = userRepository.findByUsernameOrThrow(targetUsername);

        if (env.getSelectionSet().contains("interests") && !user.getUsername().equals(targetUsername))
            userRepository.view(user.getUsername(), targetUsername);

        return targetUser;
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
    public UserProfileDTO updateProfile(String username, UserProfileDTO dto, List<MultipartFile> files) {

        User user = userRepository.findByUsernameOrThrow(username);

        updateProfileWithoutImages(user, dto);
        saveImages(user, files);
        fameService.updateProfile(user);

        userRepository.save(user);

        return UserProfileDTO.from(user);
    }

    private void updateProfileWithoutImages(User user, UserProfileDTO dto) {

        String username = user.getUsername();
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
    }

    private void saveImages(User user, List<MultipartFile> files) {

        String uploadDir = uploadDirPath;

        try {
            boolean isFirst = true;
            user.getImageUrls().clear();

            for (MultipartFile file : files) {
                if (!file.isEmpty()) {

                    String filename = UUID.randomUUID() + "_" + file.getOriginalFilename();
                    Path filePath = Paths.get(uploadDir + filename);

                    Files.createDirectories(filePath.getParent());
                    file.transferTo(filePath.toFile());

                    if (isFirst) {

                        user.setProfileImageUrl(uploadDir + filename);
                        isFirst = false;
                    } else
                        user.getImageUrls().add(filePath.toString());
                }
            }
        } catch (Exception e) {

            log.error("[" + e + "] : " + e.getMessage());
        }
    }
}
