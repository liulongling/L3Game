package com.game.netty.bootstrap;


import com.game.netty.core.ExternalCoreSetting;

/**
 * 与真实玩家连接的服务器
 *
 * @author: liulongling
 * @date: 2024/1/6 19:12
 */
public interface MicroBootstrap {
    /**
     * 启动与真实玩家连接的服务器
     */
    void startup();

    /**
     * 设置 ExternalCoreSetting
     *
     * @param setting setting
     */
    void setExternalCoreSetting(ExternalCoreSetting setting);
}
