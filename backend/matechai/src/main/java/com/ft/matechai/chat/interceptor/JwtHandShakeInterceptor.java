package com.ft.matechai.chat.interceptor;

import java.util.List;
import java.util.Map;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import com.ft.matechai.config.jwt.JwtUtil;

@Component
public class JwtHandShakeInterceptor implements HandshakeInterceptor {

    private final JwtUtil jwtService;

    public JwtHandShakeInterceptor(JwtUtil jwtService) {
        this.jwtService = jwtService;
    }

    @Override
    public boolean beforeHandshake(ServerHttpRequest request,
                                   ServerHttpResponse response,
                                   WebSocketHandler wsHandler,
                                   Map<String, Object> attributes) throws Exception {

        List<String> authHeaders = request.getHeaders().get("Authorization");
        if (authHeaders != null && !authHeaders.isEmpty()) {
            String jwt = authHeaders.get(0).replace("Bearer ", "");
            if (jwtService.validateToken(jwt)) {
                // Use getUsernameFromToken instead of getUserIdFromJwt
                attributes.put("userId", jwtService.getUsernameFromToken(jwt));
                System.out.println("JWT validated, user: ......... " + jwtService.getUsernameFromToken(jwt));
                return true;
            }
        }
        System.out.println("JWT validated, user nothing.......... ");

        return false; // reject connection if JWT invalid
    }

    @Override
    public void afterHandshake(ServerHttpRequest request,
                               ServerHttpResponse response,
                               WebSocketHandler wsHandler,
                               Exception exception) {
    }
}
