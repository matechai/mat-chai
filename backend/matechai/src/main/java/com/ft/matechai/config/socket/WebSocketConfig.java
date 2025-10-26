package com.ft.matechai.config.socket;

import com.ft.matechai.chat.interceptor.JwtHandShakeInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

    private final JwtHandShakeInterceptor jwtHandshakeInterceptor;

    public WebSocketConfig(JwtHandShakeInterceptor jwtHandshakeInterceptor) {
        this.jwtHandshakeInterceptor = jwtHandshakeInterceptor;
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws-chat")
                .addInterceptors(jwtHandshakeInterceptor) // 👈 Add this
                .setAllowedOrigins("*");
                // .withSockJS(); 
                //uncomment when use Frontend keep .withSockJS() —
                // but make sure your frontend uses a SockJS client (e.g., @stomp/stompjs or sockjs-client).
    }

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {
        config.enableSimpleBroker("/topic", "/queue");
        config.setApplicationDestinationPrefixes("/app");
    }
}
