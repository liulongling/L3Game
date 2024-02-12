package com.game.netty.aware;


import com.game.netty.session.UserSessions;

/**
 * UserSessions Aware
 *
 * @author 渔民小镇
 * @date 2023-02-19
 */
public interface UserSessionsAware {
    /**
     * 框架会调用此方法，将 UserSessions 对象传入
     *
     * @param userSessions userSessions
     */
    void setUserSessions(UserSessions<?, ?> userSessions);
}
