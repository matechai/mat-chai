package com.ft.matechai.exception;

import lombok.NoArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

public class AuthExceptions {

    public static class UnauthorizedException extends RuntimeException {
        public UnauthorizedException() {
            super("Unauthorized");
        }
        public UnauthorizedException(String message) { super(message); }
    }

    public static class EmailNotVerifiedException extends RuntimeException {
        public EmailNotVerifiedException() { super("Email not verified"); }
    }

    public static class DuplicateUserException extends RuntimeException {
        public DuplicateUserException() { super("Duplicate Username or Email "); }
    }
}
