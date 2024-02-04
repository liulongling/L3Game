package com.game.netty;


import com.game.common.kit.attr.AttrOption;
import com.game.netty.handler.SocketCmdAccessAuthHandler;
import com.game.netty.handler.SocketUserSessionHandler;

/**
 * @author liulongling
 * @date 2024-02-03
 */
public interface SettingOption {
    AttrOption<SocketUserSessionHandler> socketUserSessionHandler =
            AttrOption.valueOf("SocketUserSessionHandler");

    AttrOption<SocketCmdAccessAuthHandler> socketCmdAccessAuthHandler =
            AttrOption.valueOf("SocketCmdAccessAuthHandler");

}
