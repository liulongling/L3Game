package com.game.netty.session;

import com.iohao.game.external.core.session.UserChannelId;
import com.iohao.game.external.core.session.UserSessionOption;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;

import java.net.InetSocketAddress;
import java.util.Objects;

/**
 * 长连接的 UserSession
 * <pre>
 *     tcp、websocket
 * </pre>
 *
 * @author 渔民小镇
 * @date 2023-02-18
 */
public final class SocketUserSession extends AbstractUserSession {

    public SocketUserSession(Channel channel) {
        this.channel = channel;
        // asLongText 使用空间换时间的策略；因为在登录后 channelId 将不会用于传输
        String channelId = this.channel.id().asLongText();
        this.userChannelId = new UserChannelId(channelId);
    }

    @Override
    public boolean isActive() {
        return Objects.nonNull(this.channel) && this.channel.isActive();
    }

    @Override
    @SuppressWarnings("unchecked")
    public ChannelFuture writeAndFlush(Object message) {
        return this.channel.writeAndFlush(message);
    }

    @Override
    public String getIp() {

        // 优先拿玩家真实 ip
        String realIp = this.option(UserSessionOption.realIp);

        if (realIp.isEmpty()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) channel.remoteAddress();
            return inetSocketAddress.getHostString();
        }

        return realIp;
    }
}
