package com.game.netty.group;

import io.netty.channel.EventLoopGroup;
import io.netty.channel.ServerChannel;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;

/**
 * 服务端 for other nio 处理类
 *
 * <pre>
 * other system:
 *     Windows, Solaris
 * </pre>
 *
 * @author liulongling
 * @date 2024-02-03
 */
public final class GroupChannelOptionForOther implements GroupChannelOption {
    @Override
    public EventLoopGroup bossGroup() {
        return new NioEventLoopGroup(
                1,
                EventLoopGroupThreadFactory.bossThreadFactory()
        );
    }

    @Override
    public EventLoopGroup workerGroup() {
        int availableProcessors = Runtime.getRuntime().availableProcessors() << 1;

        return new NioEventLoopGroup(
                availableProcessors,
                EventLoopGroupThreadFactory.workerThreadFactory()
        );
    }

    @Override
    public Class<? extends ServerChannel> channelClass() {
        return NioServerSocketChannel.class;
    }
}
