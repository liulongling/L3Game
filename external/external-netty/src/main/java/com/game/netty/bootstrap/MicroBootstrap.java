package com.game.netty.bootstrap;


import com.game.netty.core.ExternalCoreSetting;

/**
 * 与真实玩家连接的服务器
 *
 * @author 渔民小镇
 * @date 2023-05-28
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
