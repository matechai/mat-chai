package com.ft.matechai.config.socket;

import com.ft.matechai.user.node.User;
import com.ft.matechai.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.OffsetDateTime;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@Service
@Slf4j
public class PresenceService {

    private final UserRepository userRepository;

    // map username -> session ids
    private final Map<String, Set<String>> userSessions = new ConcurrentHashMap<>();

    public PresenceService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void registerSession(String username, String sessionId) {
        userSessions.compute(username, (k, v) -> {
            if (v == null) v = ConcurrentHashMap.newKeySet();
            v.add(sessionId);
            return v;
        });
        log.debug("[PRESENCE] registerSession {} -> {} sessions", username, userSessions.get(username).size());
    }

    public void removeSession(String username, String sessionId) {
        Set<String> sessions = userSessions.get(username);
        if (sessions != null) {
            sessions.remove(sessionId);
            if (sessions.isEmpty()) {
                userSessions.remove(username);
                // save last online
                try {
                    User user = userRepository.findByUsernameOrThrow(username);
                    user.setLastOnline(OffsetDateTime.now());
                    userRepository.save(user);
                    log.info("[PRESENCE] user {} set lastOnline", username);
                } catch (Exception e) {
                    log.error("[PRESENCE] failed to update lastOnline for {}: {}", username, e.getMessage());
                }
            }
        }
    }

    public boolean isOnline(String username) {
        Set<String> sessions = userSessions.get(username);
        return sessions != null && !sessions.isEmpty();
    }

    // for debugging / admin
    public Map<String, Set<String>> getAll() {
        return Collections.unmodifiableMap(userSessions);
    }
}
