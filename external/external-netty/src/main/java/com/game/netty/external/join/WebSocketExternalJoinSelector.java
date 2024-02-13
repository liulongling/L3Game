package com.game.netty.external.join;


import com.game.netty.bootstrap.WebSocketMicroBootstrapFlow;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.iohao.game.common.kit.PresentKit;
import com.iohao.game.external.core.ExternalCoreSetting;
import com.iohao.game.external.core.config.ExternalJoinEnum;
import com.iohao.game.external.core.micro.MicroBootstrapFlow;

/**
 * Websocket 相关
 *
 * @author 渔民小镇
 * @date 2023-05-29
 */
public final class WebSocketExternalJoinSelector extends SocketExternalJoinSelector {
    @Override
    public ExternalJoinEnum getExternalJoinEnum() {
        return ExternalJoinEnum.WEBSOCKET;
    }

    @Override
    public void defaultSetting(ExternalCoreSetting coreSetting) {
        super.defaultSetting(coreSetting);

        DefaultExternalCoreSetting setting = (DefaultExternalCoreSetting) coreSetting;
        // MicroBootstrapFlow 启动流程；如果开发者没有手动赋值，则根据当前连接方式生成
        MicroBootstrapFlow<?> microBootstrapFlow = setting.getMicroBootstrapFlow();
        PresentKit.ifNull(microBootstrapFlow, () -> setting.setMicroBootstrapFlow(new WebSocketMicroBootstrapFlow()));
    }
}
