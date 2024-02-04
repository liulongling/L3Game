package com.game.netty.session;


import com.game.common.consts.ExternalJoinEnum;
import com.game.common.kit.attr.AttrOptions;
import com.game.netty.cmd.CmdRegions;
import com.game.netty.core.CmdRegionsAware;
import com.game.netty.session.hook.UserHook;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;
import org.jctools.maps.NonBlockingHashMap;
import org.jctools.maps.NonBlockingHashMapLong;

import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

/**
 * UserSessions 抽象父类
 *
 * @author liulongling
 * @date 2023-05-28
 */
@FieldDefaults(level = AccessLevel.PROTECTED)
public abstract class AbstractUserSessions<ChannelHandlerContext, Session extends UserSession>
        implements UserSessions<ChannelHandlerContext, Session>, CmdRegionsAware {

    @Getter
    final AttrOptions options = new AttrOptions();
    /**
     * key : 玩家 id
     * value : UserSession
     */
    final NonBlockingHashMapLong<Session> userIdMap = new NonBlockingHashMapLong<>();

    /**
     * key : userChannelId
     * value : UserSession
     */
    final Map<UserChannelId, Session> userChannelIdMap = new NonBlockingHashMap<>();

    @Setter
    CmdRegions cmdRegions;

    @Setter
    UserHook userHook;

    @Override
    public boolean existUserSession(long userId) {
        return this.userIdMap.containsKey(userId);
    }

    @Override
    public Session getUserSession(long userId) {
        return this.userIdMap.get(userId);
    }

    @Override
    public Session getUserSession(UserChannelId userChannelId) {
        return this.userChannelIdMap.get(userChannelId);
    }

    @Override
    public void removeUserSession(long userId, Object msg) {
        this.ifPresent(userId, userSession -> {
            ChannelFuture channelFuture = userSession.writeAndFlush(msg);
            channelFuture.addListener((ChannelFutureListener) future -> {
                // 回调 UserSessions 中移除对应的玩家
                this.removeUserSession(userSession);
            });
        });
    }

    @Override
    public void forEach(Consumer<Session> consumer) {
        this.userChannelIdMap.values().forEach(consumer);
    }

    /**
     * 上线通知。注意：只有进行身份验证通过的，才会触发此方法
     *
     * @param userSession userSession
     */
    protected void userHookInto(UserSession userSession) {
        if (Objects.isNull(this.userHook)) {
            return;
        }

        this.userHook.into(userSession);
    }

    /**
     * 离线通知。注意：只有进行身份验证通过的，才会触发此方法
     *
     * @param userSession userSession
     */
    protected void userHookQuit(UserSession userSession) {
        if (Objects.isNull(userHook)) {
            return;
        }

        this.userHook.quit(userSession);
    }

    protected void settingDefault(UserSession userSession) {
        // 保存连接方式
        ExternalJoinEnum externalJoinEnum = this.option(UserSessionOption.externalJoin);
        userSession.option(UserSessionOption.externalJoin, externalJoinEnum);
    }
}
