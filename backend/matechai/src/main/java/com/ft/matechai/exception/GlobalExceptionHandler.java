package com.ft.matechai.exception;


import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import java.util.Map;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(AuthExceptions.UnauthorizedException.class)
    public ResponseEntity<String> handleUnauthorized(AuthExceptions.UnauthorizedException e) {
        return ResponseEntity.status(401).body(e.getMessage());
    }

    @ExceptionHandler(AuthExceptions.EmailNotVerifiedException.class)
    public ResponseEntity<String> handleEmailNotVerified(AuthExceptions.EmailNotVerifiedException e) {
        return ResponseEntity.status(403).body(e.getMessage());
    @ExceptionHandler(EntityNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public Map<String, Object> handleEntityNotFound(EntityNotFoundException e) {
        return Map.of(
                "status", 404,
                "error", "Not Found",
                "message", e.getMessage()
        );
    }
}
