package com.example.multimodule.application;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.io.Serializable;
@Component

public class CustomPermissionEvaluator implements PermissionEvaluator {
    Logger logger = LoggerFactory.getLogger(CustomPermissionEvaluator.class);

    @Override
    public boolean hasPermission(
            Authentication auth, Object targetDomainObject, Object permission) {
        logger.info("PermissionEvaluator has executed with target domain object " + targetDomainObject +" and permission " + permission);
        return true;
    }

    @Override
    public boolean hasPermission(
            Authentication auth, Serializable targetId, String targetType, Object permission) {
        logger.info("PermissionEvaluator has executed with target id " + targetId + " and type " + targetType + " and permission " + permission);
        return true;
    }
}