package com.game.netty.aware;


import com.game.netty.session.UserSessions;

/**
 * UserSessions Aware
 *
 * @author: liulongling
 * @date: 2024/1/6 19:12
 */
public interface UserSessionsAware {
    /**
     * 框架会调用此方法，将 UserSessions 对象传入
     *
     * @param userSessions userSessions
     */
    void setUserSessions(UserSessions<?, ?> userSessions);
}
