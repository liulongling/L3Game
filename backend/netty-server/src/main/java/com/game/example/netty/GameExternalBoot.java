package com.game.example.netty;


import com.game.common.cmd.LoginCmd;
import com.iohao.game.external.core.ExternalServer;
import com.iohao.game.external.core.config.ExternalGlobalConfig;
import com.iohao.game.external.core.config.ExternalJoinEnum;
import com.iohao.game.external.core.netty.DefaultExternalServer;
import com.iohao.game.external.core.netty.DefaultExternalServerBuilder;


public class GameExternalBoot {

    public ExternalServer createExternalServer(int externalPort) {
        var accessAuthenticationHook = ExternalGlobalConfig.accessAuthenticationHook;
        // 表示登录才能访问业务方法
        accessAuthenticationHook.setVerifyIdentity(true);
        accessAuthenticationHook.addIgnoreAuthCmd(LoginCmd.cmd, LoginCmd.loginVerify);
        // 添加不需要登录也能访问的业务方法 (action)
        accessAuthenticationHook.addIgnoreAuthCmd(LoginCmd.cmd, LoginCmd.register);

        // 端口
        // 游戏对外服 - 构建器
        DefaultExternalServerBuilder builder = DefaultExternalServer.newBuilder(externalPort)
                // websocket 方式连接
                .externalJoinEnum(ExternalJoinEnum.WEBSOCKET);

        // 构建游戏对外服
        return builder.build();
    }

    public static void main(String[] args) {
        System.out.println("对外服务器启动 ! ");
        GameExternalBoot gameExternalBoot = new GameExternalBoot();

        int externalPort = ExternalGlobalConfig.externalPort;
        ExternalServer externalServer = gameExternalBoot.createExternalServer(externalPort);
        // 启动游戏对外服
        externalServer.startup();

        System.out.println("对外服务器启动 ok! ");
    }
}
