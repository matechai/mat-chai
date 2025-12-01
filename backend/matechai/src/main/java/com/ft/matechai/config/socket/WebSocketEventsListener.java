package com.ft.matechai.config.socket;

import com.ft.matechai.config.auth.PrincipalDetails;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionConnectedEvent;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

@Component
@Slf4j
public class WebSocketEventsListener {

    private final PresenceService presenceService;

    public WebSocketEventsListener(PresenceService presenceService) {
        this.presenceService = presenceService;
    }

    @EventListener
    public void handleSessionConnected(SessionConnectedEvent event) {
        try {
            StompHeaderAccessor sha = StompHeaderAccessor.wrap(event.getMessage());
            Object user = sha.getUser();
            String sessionId = sha.getSessionId();

            String username = null;
            if (user instanceof org.springframework.security.authentication.UsernamePasswordAuthenticationToken auth) {
                Object principal = auth.getPrincipal();
                if (principal instanceof PrincipalDetails pd) {
                    username = pd.getUsername();
                }
            }

            if (username == null) {
                // fallback to session attributes set by handshake interceptor
                var attrs = sha.getSessionAttributes();
                if (attrs != null) {
                    Object simp = attrs.get("simpUser");
                    if (simp instanceof org.springframework.security.authentication.UsernamePasswordAuthenticationToken a2) {
                        Object p2 = a2.getPrincipal();
                        if (p2 instanceof PrincipalDetails pd2) username = pd2.getUsername();
                    }
                }
            }

            if (username != null) {
                presenceService.registerSession(username, sessionId);
                log.debug("[WS EVENT] connected {} session {}", username, sessionId);
            }
        } catch (Exception e) {
            log.debug("[WS EVENT] connect handling failed: {}", e.getMessage());
        }
    }

    @EventListener
    public void handleSessionDisconnect(SessionDisconnectEvent event) {
        try {
            StompHeaderAccessor sha = StompHeaderAccessor.wrap(event.getMessage());
            Object user = sha.getUser();
            String sessionId = sha.getSessionId();

            String username = null;
            if (user instanceof org.springframework.security.authentication.UsernamePasswordAuthenticationToken auth) {
                Object principal = auth.getPrincipal();
                if (principal instanceof PrincipalDetails pd) {
                    username = pd.getUsername();
                }
            }

            if (username == null) {
                var attrs = sha.getSessionAttributes();
                if (attrs != null) {
                    Object simp = attrs.get("simpUser");
                    if (simp instanceof org.springframework.security.authentication.UsernamePasswordAuthenticationToken a2) {
                        Object p2 = a2.getPrincipal();
                        if (p2 instanceof PrincipalDetails pd2) username = pd2.getUsername();
                    }
                }
            }

            if (username != null) {
                presenceService.removeSession(username, sessionId);
                log.debug("[WS EVENT] disconnected {} session {}", username, sessionId);
            }
        } catch (Exception e) {
            log.debug("[WS EVENT] disconnect handling failed: {}", e.getMessage());
        }
    }
}
