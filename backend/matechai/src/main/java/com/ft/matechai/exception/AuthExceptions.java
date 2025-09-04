package com.ft.matechai.exception;

import lombok.NoArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

public class AuthExceptions {

    @ResponseStatus(HttpStatus.UNAUTHORIZED)    // 401
    public static class UnauthorizedException extends RuntimeException {
        public UnauthorizedException() {
            super("Unauthorized");
        }
        public UnauthorizedException(String message) { super(message); }
    }

    @ResponseStatus(HttpStatus.FORBIDDEN)   // 403
    public static class EmailNotVerifiedException extends RuntimeException {
        public EmailNotVerifiedException() { super("Email not verified"); }
    }
}
