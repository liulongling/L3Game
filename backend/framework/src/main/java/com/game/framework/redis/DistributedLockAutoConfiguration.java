package com.game.framework.redis;


import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 分布式锁 自动装配
 *
 * @author shen
 * @date 2022-03-28
 */
@Configuration
public class DistributedLockAutoConfiguration {

    @Autowired
    private RedissonClient redissonClient;

    @Bean
    @ConditionalOnMissingBean
    public DistributedLock distributedLock() {
        return new DefaultRedissonDistributedLock(redissonClient);
    }
}
