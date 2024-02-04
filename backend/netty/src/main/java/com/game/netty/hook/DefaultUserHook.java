package com.game.netty.hook;


import com.game.common.consts.GameLogName;
import com.game.netty.aware.UserSessionsAware;
import com.game.netty.session.UserSession;
import com.game.netty.session.UserSessions;
import com.game.netty.session.hook.UserHook;
import lombok.extern.slf4j.Slf4j;

/**
 * 上线下线钩子实现类
 *
 * @author liulongling
 * @date 2023-02-20
 */
@Slf4j(topic = GameLogName.CommonStdout)
public class DefaultUserHook implements UserHook, UserSessionsAware {
    UserSessions<?, ?> userSessions;

    @Override
    public void setUserSessions(UserSessions<?, ?> userSessions) {
        this.userSessions = userSessions;
    }

    @Override
    public void into(UserSession userSession) {
        long userId = userSession.getUserId();
        log.info("[玩家上线] 在线数量:{}  userId:{} -- {}"
                , userSessions.countOnline()
                , userId, userSession.getUserChannelId());
    }

    @Override
    public void quit(UserSession userSession) {
        long userId = userSession.getUserId();
        log.info("[玩家下线] 在线数量:{}  userId:{} -- {}",
                userSessions.countOnline()
                , userId, userSession.getUserChannelId());
    }
}