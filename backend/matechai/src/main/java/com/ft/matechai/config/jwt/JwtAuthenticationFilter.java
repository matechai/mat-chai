package com.ft.matechai.config.jwt;


import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.exception.AuthExceptions;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import java.io.IOException;
import java.util.HashSet;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.web.filter.OncePerRequestFilter;

import java.util.Set;

@Slf4j
@AllArgsConstructor
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final JwtUtil jwtUtil;
    private final UserRepository userRepository;


    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {

        String bearer = request.getHeader("Authorization");
        String path = request.getRequestURI();

        if (!path.startsWith("/api/auth/") || path.startsWith("/api/auth/logout")) {

            if (bearer != null && bearer.startsWith("Bearer ")) {

                String token = bearer.substring(7);

                if (!jwtUtil.validateToken(token))
                    throw new AuthExceptions.UnauthorizedException("JWT token is wrong");

                User user = userRepository.findByUsername(jwtUtil.getUsernameFromToken(token))
                        .orElseThrow(() -> new AuthExceptions.UnauthorizedException("User not found"));

                Set<GrantedAuthority> authorities = new HashSet<>();
                authorities.add(new SimpleGrantedAuthority(user.getRole().name()));

                PrincipalDetails principal = new PrincipalDetails(user);
                Authentication auth = new UsernamePasswordAuthenticationToken(principal, null, authorities);
                SecurityContextHolder.getContext().setAuthentication(auth);

                log.info("[JWT] JWT Authentication Success : {}", user.getUsername());

            }
            else
                throw new RuntimeException("Authorization Headers error");
        }

        filterChain.doFilter(request, response);
    }
}
