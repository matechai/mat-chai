package com.ft.matechai.config.socket;

import com.ft.matechai.config.auth.PrincipalDetails;
import com.ft.matechai.config.jwt.JwtUtil;
import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

import java.util.Map;

@Slf4j
@RequiredArgsConstructor
public class JwtHandshakeInterceptor implements HandshakeInterceptor {

    private final JwtUtil jwtUtil;
    private final UserRepository userRepository;

    @Override
    public boolean beforeHandshake(ServerHttpRequest request,
                                   ServerHttpResponse response,
                                   WebSocketHandler wsHandler,
                                   Map<String, Object> attributes) {

        if (request instanceof ServletServerHttpRequest servletRequest) {
            HttpServletRequest httpReq = servletRequest.getServletRequest();
            Cookie[] cookies = httpReq.getCookies();

            if (cookies != null) {
                for (Cookie c : cookies) {
                    if ("accessToken".equals(c.getName())) {
                        String token = c.getValue();
                        if (jwtUtil.validateToken(token)) {
                            String username = jwtUtil.getUsernameFromToken(token);
                            User user = userRepository.findByUsernameOrThrow(username);
                            PrincipalDetails principal = new PrincipalDetails(user);

                            UsernamePasswordAuthenticationToken auth =
                                    new UsernamePasswordAuthenticationToken(principal, null, principal.getAuthorities());
                            attributes.put("simpUser", auth);
                            log.info("[WS] WebSocket handshake authenticated user: {}", username);
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override
    public void afterHandshake(ServerHttpRequest request,
                               ServerHttpResponse response,
                               WebSocketHandler wsHandler,
                               Exception exception) {
        // nothing
    }
}
