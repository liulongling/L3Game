package com.game.netty.group;



import com.iohao.game.common.kit.concurrent.DaemonThreadFactory;

import java.util.concurrent.ThreadFactory;

/**
 * netty 核心组件. (1 连接创建线程组, 2 业务处理线程组)
 *
 * @author
 * @date 2024-02-03
 */
final class EventLoopGroupThreadFactory {

    /**
     * 业务 ThreadFactory
     *
     * @return worker ThreadFactory
     */
    static ThreadFactory workerThreadFactory() {
        return new DaemonThreadFactory("game.com:external-netty-server-worker");
    }

    /**
     * 连接 ThreadFactory
     *
     * @return boss ThreadFactory
     */
    static ThreadFactory bossThreadFactory() {
        return new DaemonThreadFactory("game.com:external-netty-server-boss");
    }
}
