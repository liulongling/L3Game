package com.game.framework.redis;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "iogame")
public class DistibutedLockProperties {
    private String redissonConfigName;

    public String getRedissonConfigName() {
        return redissonConfigName;
    }

    public void setRedissonConfigName(String redissonConfigName) {
        this.redissonConfigName = redissonConfigName;
    }
}
