package com.game.netty.external;


import com.game.netty.bootstrap.MicroBootstrap;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.external.join.ExternalJoinSelector;
import com.game.netty.external.join.ExternalJoinSelectors;

import java.util.ServiceLoader;

/**
 * 游戏对外服由两部分构成
 * <pre>
 *     1. 与真实玩家连接的 ExternalCore 服务器
 *     2. 与 Broker（游戏网关）通信的 BrokerClient ExternalBrokerClientStartup 服务器
 * </pre>
 *
 * @author liulongling
 * @date 2023-02-19
 */
public final class DefaultExternalServer implements ExternalServer {
    /** 与真实玩家连接的 ExternalCore 服务器 */
    ExternalCore externalCore;
    /** ExternalCore 的一些设置 */
    DefaultExternalCoreSetting setting;

    static {
        ServiceLoader.load(ExternalJoinSelector.class).forEach(ExternalJoinSelectors::putIfAbsent);
    }

    DefaultExternalServer(DefaultExternalCoreSetting setting, ExternalCore externalCore) {
        this.setting = setting;
        this.externalCore = externalCore;
    }

    @Override
    public void startup() {
        // 创建与真实玩家通信的 netty 服务器
        MicroBootstrap microBootstrap = this.externalCore.createBootstrap();

        this.setting.inject();

        // 启动与真实玩家通信的 netty 服务器
        microBootstrap.startup();
    }


    public static DefaultExternalServerBuilder newBuilder(int externalCorePort) {
        return new DefaultExternalServerBuilder(externalCorePort);
    }
}
