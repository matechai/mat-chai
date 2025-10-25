package com.ft.matechai.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;


@ResponseStatus(HttpStatus.NOT_FOUND)  // 404
public class EntityNotFoundException extends RuntimeException {

    public EntityNotFoundException(String entityName, String value) {
        super(entityName + " not found: " + value);
    }
}
