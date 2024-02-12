package com.game.netty.external.join;



import com.game.netty.SettingOption;
import com.game.netty.bootstrap.MicroBootstrap;
import com.game.netty.bootstrap.SocketMicroBootstrap;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.core.ExternalCoreSetting;
import com.game.netty.handler.SocketCmdAccessAuthHandler;
import com.game.netty.handler.SocketUserSessionHandler;
import com.game.netty.session.UserSessions;
import com.game.netty.session.socket.SocketUserSessions;

import java.util.Objects;

/**
 * @author 渔民小镇
 * @date 2023-05-31
 */
abstract class SocketExternalJoinSelector implements ExternalJoinSelector {
    @Override
    public void defaultSetting(ExternalCoreSetting coreSetting) {
        DefaultExternalCoreSetting setting = (DefaultExternalCoreSetting) coreSetting;
        // microBootstrap；如果开发者没有手动赋值，则根据当前连接方式生成
        MicroBootstrap microBootstrap = setting.getMicroBootstrap();
        if (Objects.isNull(microBootstrap)) {
            setting.setMicroBootstrap(new SocketMicroBootstrap());
        }

        // UserSessions 管理器；如果开发者没有手动赋值，则根据当前连接方式生成
        UserSessions<?, ?> userSessions = setting.getUserSessions();
        if (Objects.isNull(userSessions)) {
            setting.setUserSessions(new SocketUserSessions());
        }

        // pipelineCustom Handler
        setting.option(SettingOption.socketUserSessionHandler, new SocketUserSessionHandler());
        setting.option(SettingOption.socketCmdAccessAuthHandler, new SocketCmdAccessAuthHandler());
    }
}
