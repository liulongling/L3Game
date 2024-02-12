package com.game.netty.bootstrap;

import com.game.netty.aware.ExternalCoreSettingAware;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.core.ExternalCoreSetting;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

/**
 * @author 渔民小镇
 * @date 2023-06-01
 */
@FieldDefaults(level = AccessLevel.PROTECTED)
abstract class AbstractMicroBootstrapFlow<T> implements MicroBootstrapFlow<T>, ExternalCoreSettingAware {
    DefaultExternalCoreSetting setting;

    @Override
    public void setExternalCoreSetting(ExternalCoreSetting externalCoreSetting) {
        this.setting = (DefaultExternalCoreSetting) externalCoreSetting;
    }
}
