package com.game.netty.bootstrap;

import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.core.ExternalCoreSetting;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

/**
 * 与真实玩家连接的服务器
 *
 * @author 渔民小镇
 * @date 2023-05-27
 */
@FieldDefaults(level = AccessLevel.PRIVATE)
abstract class AbstractMicroBootstrap implements MicroBootstrap {

    protected DefaultExternalCoreSetting setting;

    @Override
    public void setExternalCoreSetting(ExternalCoreSetting setting) {
        this.setting = (DefaultExternalCoreSetting) setting;
    }
}
