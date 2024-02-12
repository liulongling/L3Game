package com.game.example;


import com.game.netty.config.ExternalGlobalConfig;
import com.game.netty.external.DefaultExternalServer;
import com.game.netty.external.DefaultExternalServerBuilder;
import com.game.netty.external.ExternalJoinEnum;
import com.game.netty.external.ExternalServer;


public class GameExternalBoot {

    public ExternalServer createExternalServer(int externalPort) {
        var accessAuthenticationHook = ExternalGlobalConfig.accessAuthenticationHook;
        // 表示登录才能访问业务方法
        accessAuthenticationHook.setVerifyIdentity(true);
        // 添加不需要登录也能访问的业务方法 (action)
        accessAuthenticationHook.addRejectionCmd(LoginCmd.cmd, LoginCmd.loginVerify);

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
