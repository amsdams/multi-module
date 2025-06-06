package com.example.multimodule.application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler;
import org.springframework.security.access.expression.method.MethodSecurityExpressionHandler;

@Configuration
public class MethodSecurityConfig {

    @Autowired CustomPermissionEvaluator customPermissionEvaluator;

    @Bean
    MethodSecurityExpressionHandler expressionHandler() {
        var expressionHandler = new DefaultMethodSecurityExpressionHandler();
        expressionHandler.setPermissionEvaluator(customPermissionEvaluator);
        return expressionHandler;
    }
}