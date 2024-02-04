package com.game.netty.external;


import com.game.netty.bootstrap.MicroBootstrap;

/**
 * 与真实玩家连接的 ExternalCore 服务器，也是通信框架屏蔽接口
 * <pre>
 *     ExternalCore 帮助开发者屏蔽各通信框架的细节，如 Netty、mina、smart-socket 等通信框。
 *     ioGame 默认提供 Netty 的实现。
 * </pre>
 *
 * @author liulongling
 * @date 2023-02-17
 */
public interface ExternalCore {
    /**
     * 创建与真实玩家通信的 netty 服务器
     */
    MicroBootstrap createBootstrap();
}
