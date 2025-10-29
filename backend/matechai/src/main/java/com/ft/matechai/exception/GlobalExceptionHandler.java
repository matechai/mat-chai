package com.ft.matechai.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Map;


@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(AuthExceptions.UnauthorizedException.class)
    public ResponseEntity<Map<String, String>> handleUnauthorized(AuthExceptions.UnauthorizedException e) {
        return ResponseEntity
                .status(HttpStatus.UNAUTHORIZED)
                .body(Map.of("message", e.getMessage()));
    }

    @ExceptionHandler(AuthExceptions.EmailNotVerifiedException.class)
    public ResponseEntity<Map<String, String>> handleEmailNotVerified(AuthExceptions.EmailNotVerifiedException e) {
        return ResponseEntity
                .status(HttpStatus.FORBIDDEN)
                .body(Map.of("message", e.getMessage()));
    }

    @ExceptionHandler(AuthExceptions.DuplicateUserException.class)
    public ResponseEntity<Map<String, String>> handleDuplicate(AuthExceptions.DuplicateUserException e) {
        return ResponseEntity
                .status(HttpStatus.CONFLICT)
                .body(Map.of("message", e.getMessage()));
    }

    @ExceptionHandler(EntityNotFoundException.class)
    public ResponseEntity<Map<String, String>> handleEntityNotFound(EntityNotFoundException e) {
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(Map.of("message", e.getMessage()));
    }

    @ExceptionHandler(MatchExceptions.SelfLikeException.class)
    public ResponseEntity<Map<String, String>> handleSelfLike(MatchExceptions.SelfLikeException e) {
        return ResponseEntity
                .status(HttpStatus.BAD_REQUEST)
                .body(Map.of("message", e.getMessage()));
    }

    @ExceptionHandler(MatchExceptions.SelfBlockException.class)
    public ResponseEntity<Map<String, String>> handleSelfBlock(MatchExceptions.SelfBlockException e) {
        return ResponseEntity
                .status(HttpStatus.BAD_REQUEST)
                .body(Map.of("message", e.getMessage()));
    }
}
