package com.game.netty.bootstrap;

import com.game.netty.aware.ExternalCoreSettingAware;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.core.ExternalCoreSetting;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

/**
 * @author: liulongling
 * @date: 2024/1/6 19:12
 */
@FieldDefaults(level = AccessLevel.PROTECTED)
abstract class AbstractMicroBootstrapFlow<T> implements MicroBootstrapFlow<T>, ExternalCoreSettingAware {
    DefaultExternalCoreSetting setting;

    @Override
    public void setExternalCoreSetting(ExternalCoreSetting externalCoreSetting) {
        this.setting = (DefaultExternalCoreSetting) externalCoreSetting;
    }
}
