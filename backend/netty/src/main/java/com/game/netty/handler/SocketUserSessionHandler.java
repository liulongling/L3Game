package com.game.netty.handler;


import com.game.common.consts.GameLogName;
import com.game.netty.aware.UserSessionsAware;
import com.game.netty.session.UserSessions;
import com.game.netty.session.socket.SocketUserSessions;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import lombok.extern.slf4j.Slf4j;

/**
 * @author liulongling
 * @date 2024-02-03
 */
@ChannelHandler.Sharable
@Slf4j(topic = GameLogName.ExternalTopic)
public final class SocketUserSessionHandler extends ChannelInboundHandlerAdapter
        implements UserSessionsAware {
    SocketUserSessions userSessions;

    @Override
    public void setUserSessions(UserSessions<?, ?> userSessions) {
        this.userSessions = (SocketUserSessions) userSessions;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) {
        // 加入到 session 管理
        userSessions.add(ctx);
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) {
        // 从 session 管理中移除
        var userSession = this.userSessions.getUserSession(ctx);
        this.userSessions.removeUserSession(userSession);
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) {
        // 从 session 管理中移除
        var userSession = this.userSessions.getUserSession(ctx);
        this.userSessions.removeUserSession(userSession);
    }
}
