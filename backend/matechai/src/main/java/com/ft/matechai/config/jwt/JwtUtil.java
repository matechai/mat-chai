package com.ft.matechai.config.jwt;

import com.ft.matechai.exception.AuthExceptions;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.UnsupportedJwtException;
import io.jsonwebtoken.security.SignatureException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.util.Date;

@Slf4j
@Component
public class JwtUtil {

    private final Key key;


    public JwtUtil(@Value("${jwt.secret-key}") String secret) {

        this.key = new SecretKeySpec(secret.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
    }


    // Generate JWT Token
    public String generateToken(String username, long expirationMs) {

        return Jwts.builder()
                .setSubject(username)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + expirationMs))
                .signWith(key)
                .compact();
    }

    // Validate JWT Token
    public void validateToken(String token) {

        try {
            Jwts.parserBuilder()
                    .setSigningKey(key)
                    .build()
                    .parseClaimsJws(token);

        } catch (ExpiredJwtException e) {
            log.info("[JWT] Token expired: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException("Token expired");

        } catch (SignatureException e) {
            log.info("[JWT] Invalid signature: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException("Invalid signature");

        } catch (MalformedJwtException e) {
            log.info("[JWT] Malformed token: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException("Malformed token");

        } catch (UnsupportedJwtException e) {
            log.info("[JWT] Unsupported token: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException("Unsupported token");

        } catch (IllegalArgumentException e) {
            log.info("[JWT] Empty or null token: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException("Empty or null token");

        } catch (Exception e) {
            log.info("[JWT] Unknown error: {}", e.getMessage());
            throw new AuthExceptions.UnauthorizedException(e.getMessage());
        }
    }

    // Get Username from the token
    public String getUsernameFromToken(String token) {

        return Jwts.parserBuilder()
                .setSigningKey(key)
                .build()
                .parseClaimsJws(token)
                .getBody()
                .getSubject();
    }
}
