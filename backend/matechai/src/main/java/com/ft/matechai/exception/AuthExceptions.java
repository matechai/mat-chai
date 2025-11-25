package com.ft.matechai.exception;


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

    public static class BannedUserException extends RuntimeException {
        public BannedUserException() { super("User is banned"); }
        public BannedUserException(String message) { super(message); }
    }
}
