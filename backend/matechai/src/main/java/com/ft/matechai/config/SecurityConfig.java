package com.ft.matechai.config;

import com.ft.matechai.config.jwt.JwtAuthenticationFilter;
import com.ft.matechai.config.jwt.JwtExceptionFilter;
import com.ft.matechai.config.jwt.JwtUtil;
import com.ft.matechai.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;


@Slf4j
@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableGlobalMethodSecurity(prePostEnabled = true) // can use @PreAuthorize
public class SecurityConfig {

    private final JwtUtil jwtUtil;
    private final UserRepository userRepository;

    @Bean
    public PasswordEncoder passwordEncoder() {

        return new BCryptPasswordEncoder(12);
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        http.addFilterBefore(new JwtAuthenticationFilter(jwtUtil, userRepository), BasicAuthenticationFilter.class);
        http.addFilterBefore(new JwtExceptionFilter(), JwtAuthenticationFilter.class);

        http
                .cors().configurationSource(corsConfigurationSource())
                .and()
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .formLogin().disable()
                .httpBasic().disable()
                .authorizeRequests()
                    .requestMatchers("/api/graphql").hasAnyRole("USER", "ADMIN", "GOD")
                    .requestMatchers("/api/auth/signup",
                                            "/api/auth/login",
                                            "/api/auth/verify",
                                            "/api/auth/refresh",
                                            "/api/auth/forgot-password",
                                            "/api/auth/reset-password").permitAll()
                    .requestMatchers("/api/auth/logout").authenticated()
                    .requestMatchers("/api/users/**").hasAnyRole("USER", "ADMIN", "GOD")
                    .requestMatchers("/api/admin/**").hasAnyRole("ADMIN", "GOD")
                    .requestMatchers("/ws-chat/**").authenticated()
                    .requestMatchers("/api/reports").authenticated()
                    .anyRequest().authenticated();

        return http.build();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {

        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        config.setAllowedOriginPatterns(List.of("*"));
        // config.setAllowedOriginPatterns(List.of("http://localhost:4200")); 
        config.setAllowedOrigins(List.of("http://localhost:4200"));
//        config.addAllowedOrigin("*");   // should be front address
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config);

        return source;
    }
}
