package com.ft.matechai.auth.dto;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class SignUpRequestDTO {

    @Email    (message = "Please enter a valid email address")
    @NotBlank(message = "Email is required")
    private String email;

    @NotBlank(message = "Username is required")
    private String username;

    @NotBlank(message = "First name is required")
    private String firstName;

    @NotBlank(message = "Last name is required")
    private String lastName;

    @NotBlank(message = "Password is required")
    private String password;

    private boolean enabled = false;
}
