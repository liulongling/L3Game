package com.game.netty.session.socket;


import com.game.netty.session.AbstractUserSessions;
import com.game.netty.session.UserChannelId;
import com.game.netty.session.UserSessionState;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.group.ChannelGroup;
import io.netty.channel.group.DefaultChannelGroup;
import io.netty.util.AttributeKey;
import io.netty.util.concurrent.GlobalEventExecutor;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

import java.util.Objects;

/**
 * tcp、websocket 使用的 session 管理器
 *
 * @author liulongling
 * @date 2023-02-18
 */
@FieldDefaults(level = AccessLevel.PRIVATE)
public final class SocketUserSessions extends AbstractUserSessions<ChannelHandlerContext, SocketUserSession> {
    /** 用户 session，与channel是 1:1 的关系 */
    static final AttributeKey<SocketUserSession> userSessionKey = AttributeKey.valueOf("userSession");

    final ChannelGroup channelGroup = new DefaultChannelGroup(GlobalEventExecutor.INSTANCE);

    @Override
    public SocketUserSession add(ChannelHandlerContext channelHandlerContext) {

        Channel channel = channelHandlerContext.channel();

        SocketUserSession userSession = new SocketUserSession(channel);
        userSession.cmdRegions = this.cmdRegions;

        // channel 中也保存 UserSession 的引用
        channel.attr(SocketUserSessions.userSessionKey).set(userSession);

        UserChannelId userChannelId = userSession.getUserChannelId();
        this.userChannelIdMap.putIfAbsent(userChannelId, userSession);
        this.channelGroup.add(channel);

        this.settingDefault(userSession);

        return userSession;
    }

    @Override
    public SocketUserSession getUserSession(ChannelHandlerContext channelHandlerContext) {
        Channel channel = channelHandlerContext.channel();
        return channel.attr(userSessionKey).get();
    }

    @Override
    public boolean settingUserId(UserChannelId userChannelId, long userId) {

        SocketUserSession userSession = this.getUserSession(userChannelId);
        if (Objects.isNull(userSession)) {
            return false;
        }

        if (Boolean.FALSE.equals(userSession.isActive())) {
            removeUserSession(userSession);
            return false;
        }

        userSession.setUserId(userId);

        this.userIdMap.put(userId, userSession);

        // 上线通知
        if (userSession.isVerifyIdentity()) {
            this.userHookInto(userSession);
        }

        return true;
    }

    @Override
    public void removeUserSession(SocketUserSession userSession) {

        if (Objects.isNull(userSession)) {
            return;
        }

        if (userSession.getState() == UserSessionState.DEAD) {
            return;
        }

        UserChannelId userChannelId = userSession.getUserChannelId();
        long userId = userSession.getUserId();

        Channel channel = userSession.getChannel();
        this.userIdMap.remove(userId);
        this.userChannelIdMap.remove(userChannelId);
        this.channelGroup.remove(channel);

        if (userSession.getState() == UserSessionState.ACTIVE && userSession.isVerifyIdentity()) {
            userSession.setState(UserSessionState.DEAD);
            this.userHookQuit(userSession);
        }

        // 关闭用户的连接
        channel.close();
    }

    @Override
    public int countOnline() {
        return this.channelGroup.size();
    }

    @Override
    public void broadcast(Object msg) {
        this.channelGroup.writeAndFlush(msg);
    }
}
