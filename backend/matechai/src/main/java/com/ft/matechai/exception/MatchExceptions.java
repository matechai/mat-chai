package com.ft.matechai.exception;

public class MatchExceptions {

    public static class SelfRelationException extends RuntimeException {
        public SelfRelationException() {
            super("Cannot make relation yourself");
        }
        public SelfRelationException(String message) { super(message); }
    }
}
