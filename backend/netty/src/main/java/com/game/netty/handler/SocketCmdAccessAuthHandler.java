package com.game.netty.handler;

import com.game.common.exception.ActionErrorEnum;
import com.game.netty.aware.UserSessionsAware;
import com.game.netty.config.ExternalGlobalConfig;
import com.game.netty.hook.AccessAuthenticationHook;
import com.game.framework.kit.ExternalKit;
import com.game.framework.message.ExternalMessage;
import com.game.netty.session.UserSession;
import com.game.netty.session.UserSessions;
import com.game.netty.session.socket.SocketUserSessions;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;

/**
 * 业务处理
 *
 * @author liulongling
 * @date 2024-02-03
 */
@ChannelHandler.Sharable
public class SocketCmdAccessAuthHandler extends SimpleChannelInboundHandler<ExternalMessage>
        implements UserSessionsAware {
    protected UserSessions<?, ?> userSessions;

    @Override
    public void setUserSessions(UserSessions<?, ?> userSessions) {
        this.userSessions = userSessions;
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, ExternalMessage message) throws Exception {
        if (reject(ctx, message)) {
            // 拒绝玩家直接访问 action
            return;
        }

        SocketUserSessions socketUserSessions = (SocketUserSessions) this.userSessions;
        UserSession userSession = socketUserSessions.getUserSession(ctx);
        boolean loginSuccess = userSession.isVerifyIdentity();
        if (notPass(ctx, message, loginSuccess)) {
            // 访问了需要登录才能访问的 action
            return;
        }

        // 交给下一个业务处理 (handler) , 下一个业务指的是你编排 handler 时的顺序
        ctx.fireChannelRead(message);
    }

    protected boolean notPass(ChannelHandlerContext ctx, ExternalMessage message, boolean loginSuccess) {
        // 是否可以访问业务方法（action），true 表示可以访问该路由对应的业务方法
        AccessAuthenticationHook accessAuthenticationHook = ExternalGlobalConfig.accessAuthenticationHook;
        boolean pass = accessAuthenticationHook.pass(loginSuccess, message.getCmdMerge());

        if (pass) {
            return false;
        }

        // 当访问验证没通过，通知玩家
        ExternalKit.employError(message, ActionErrorEnum.verifyIdentity);

        // 响应结果给玩家
        ctx.writeAndFlush(message);

        return true;
    }

    protected boolean reject(ChannelHandlerContext ctx, ExternalMessage message) {
        AccessAuthenticationHook accessAuthenticationHook = ExternalGlobalConfig.accessAuthenticationHook;
        boolean reject = accessAuthenticationHook.reject(message.getCmdMerge());

        if (reject) {
            ExternalKit.employError(message, ActionErrorEnum.cmdInfoErrorCode);
            // 响应结果给玩家
            ctx.writeAndFlush(message);

            return true;
        }

        return false;
    }

}
