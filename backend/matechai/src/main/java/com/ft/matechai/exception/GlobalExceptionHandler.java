package com.ft.matechai.exception;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(AuthExceptions.UnauthorizedException.class)
    public ResponseEntity<String> handleUnauthorized(AuthExceptions.UnauthorizedException e) {
        return ResponseEntity.status(401).body(e.getMessage());
    }

    @ExceptionHandler(AuthExceptions.EmailNotVerifiedException.class)
    public ResponseEntity<String> handleEmailNotVerified(AuthExceptions.EmailNotVerifiedException e) {
        return ResponseEntity.status(403).body(e.getMessage());
    }
}
