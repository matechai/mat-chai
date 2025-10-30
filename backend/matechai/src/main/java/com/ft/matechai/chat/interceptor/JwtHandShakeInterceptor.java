package com.ft.matechai.chat.interceptor;

import java.net.http.HttpHeaders;
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
        
        String jwt = null;
        List<String> authHeaders = request.getHeaders().get("Authorization");
        if (authHeaders != null && !authHeaders.isEmpty()) 
            jwt = authHeaders.get(0).replace("Bearer ", "");
        
           // 2️⃣ If not present, try reading from cookies
        if (jwt == null) 
        {
            List<String> cookies = request.getHeaders().get("cookie");
            if (cookies != null) 
            {
                for (String cookie : cookies) 
                {
                    for (String c : cookie.split(";")) 
                    {
                        c = c.trim();
                        if (c.startsWith("accessToken=")) 
                        {
                            jwt = c.substring("accessToken=".length());
                            break;
                        }
                    }
                    if (jwt != null) break;
                }
            }
        }

        // 3️⃣ Validate and extract username
        if (jwt != null && jwtService.validateToken(jwt)) 
        {
            String username = jwtService.getUsernameFromToken(jwt);
            attributes.put("userId", username);
            System.out.println("✅ JWT validated from header/cookie, user: " + username);
            return true;
        }
        else 
        {
            System.out.println("❌ No valid JWT found in header or cookie");
            return false;
        }
    }

    @Override
    public void afterHandshake(ServerHttpRequest request,
                               ServerHttpResponse response,
                               WebSocketHandler wsHandler,
                               Exception exception) {
    }
}
