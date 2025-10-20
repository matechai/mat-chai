package com.ft.matechai.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

@Configuration
@DependsOn("filterChain") // Ensure Security is initialized first
public class GraphQLConfig {
    // Define custom schemas and data fetchers if necessary
}