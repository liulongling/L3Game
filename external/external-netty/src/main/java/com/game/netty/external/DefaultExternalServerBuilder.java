package com.game.netty.external;

import com.game.netty.core.DefaultExternalCoreSetting;
import com.iohao.game.bolt.broker.core.client.BrokerAddress;
import com.iohao.game.external.core.ExternalCore;
import com.iohao.game.external.core.ExternalServer;
import com.iohao.game.external.core.broker.client.ExternalBrokerClientStartup;
import com.iohao.game.external.core.config.ExternalJoinEnum;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import lombok.experimental.FieldDefaults;

import java.util.Objects;


/**
 * @author 渔民小镇
 * @date 2023-02-19
 */
@Getter
@Setter
@Accessors(fluent = true)
@FieldDefaults(level = AccessLevel.PRIVATE)
public final class DefaultExternalServerBuilder {

    final DefaultExternalCoreSetting setting = new DefaultExternalCoreSetting();

    /** 内部逻辑服 连接网关服务器，与网关通信 */
    ExternalBrokerClientStartup externalBrokerClientStartup = new ExternalBrokerClientStartup();

    /** 设置 broker （游戏网关）连接地址 */
    BrokerAddress brokerAddress;


    DefaultExternalServerBuilder(int externalCorePort) {
        this.setting.setExternalCorePort(externalCorePort);
    }

    /**
     * 连接方式；如果不设置，默认是 websocket
     *
     * @param joinEnum 连接方式
     * @return this
     */
    public DefaultExternalServerBuilder externalJoinEnum(ExternalJoinEnum joinEnum) {
        this.setting.setExternalJoinEnum(joinEnum);
        return this;
    }



    public ExternalServer build() {
        this.check();
        // 与真实玩家通信的 netty 服务器
        ExternalCore externalCore = new DefaultExternalCore(this.setting);


        // 游戏对外服
        return new DefaultExternalServer(
                this.setting,
                externalCore,
                this.brokerAddress,
                this.externalBrokerClientStartup
        );
    }

    private void check() {
        Objects.requireNonNull(this.externalBrokerClientStartup);
    }
}
