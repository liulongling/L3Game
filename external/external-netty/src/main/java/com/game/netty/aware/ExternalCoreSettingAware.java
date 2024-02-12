package com.game.netty.aware;

import com.game.netty.core.ExternalCoreSetting;

/**
 * ExternalCoreSetting Aware
 *
 * @author 渔民小镇
 * @date 2023-05-05
 */
public interface ExternalCoreSettingAware {
    /**
     * 框架会调用此方法，将 ExternalCoreSetting 对象传入
     *
     * @param externalCoreSetting externalCoreSetting
     */
    void setExternalCoreSetting(ExternalCoreSetting externalCoreSetting);
}
