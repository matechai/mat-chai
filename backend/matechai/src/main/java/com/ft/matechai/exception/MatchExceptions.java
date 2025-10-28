package com.ft.matechai.exception;

public class MatchExceptions {

    public static class SelfLikeException extends RuntimeException {
        public SelfLikeException() {
            super("Cannot like yourself");
        }
    }
}
