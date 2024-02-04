package com.game.netty.group;

import io.netty.channel.EventLoopGroup;
import io.netty.channel.ServerChannel;

/**
 * netty 核心组件. (1 连接创建线程组, 2 业务处理线程组)
 *
 * @author liulongling
 * @date 2024-02-03
 */
public interface GroupChannelOption {
    /**
     * EventLoopGroup bossGroup (连接处理组)
     *
     * @return EventLoopGroup
     */
    EventLoopGroup bossGroup();

    /**
     * EventLoopGroup workerGroup (业务处理组)
     *
     * @return EventLoopGroup
     */
    EventLoopGroup workerGroup();

    /**
     * channelClass
     *
     * @return channelClass
     */
    Class<? extends ServerChannel> channelClass();
}
