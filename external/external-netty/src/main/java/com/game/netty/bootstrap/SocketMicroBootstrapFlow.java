package com.game.netty.bootstrap;

import com.game.netty.SettingOption;
import com.game.netty.channel.PipelineContext;
import com.game.netty.config.ExternalGlobalConfig;
import com.game.netty.handler.*;
import com.game.netty.pipeline.DefaultPipelineContext;
import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.socket.SocketChannel;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

import java.util.Objects;

/**
 * @author 渔民小镇
 * @date 2023-05-31
 */
@FieldDefaults(level = AccessLevel.PROTECTED)
abstract class SocketMicroBootstrapFlow extends AbstractMicroBootstrapFlow<ServerBootstrap> {
    @Override
    public void channelInitializer(ServerBootstrap bootstrap) {
        bootstrap.childHandler(new ChannelInitializer<SocketChannel>() {
            @Override
            protected void initChannel(SocketChannel ch) {
                DefaultPipelineContext pipelineContext = new DefaultPipelineContext(ch, setting);
                /*
                 * 新建连接时的执行流程
                 * 通常情况下，我们可以将 ChannelInitializer 内的实现划分为三部分
                 *  1. pipelineCodec：编解码
                 *  2. pipelineIdle：心跳相关
                 *  3. pipelineCustom：自定义的业务编排 （大部分情况下只需要重写 pipelineCustom 就可以达到很强的扩展了）
                 */
                pipelineFlow(pipelineContext);
            }
        });
    }

    @Override
    public void pipelineIdle(PipelineContext context) {
    }

    @Override
    public void pipelineCustom(PipelineContext context) {

        // 路由存在检测
        context.addLast("CmdCheckHandler", CmdCheckHandler.me());

        // 管理 UserSession 的 Handler
        SocketUserSessionHandler socketUserSessionHandler = setting.option(SettingOption.socketUserSessionHandler);
        context.addLast("UserSessionHandler", socketUserSessionHandler);

        // 路由访问验证 的 Handler
        SocketCmdAccessAuthHandler socketCmdAccessAuthHandler = setting.option(SettingOption.socketCmdAccessAuthHandler);
        context.addLast("CmdAccessAuthHandler", socketCmdAccessAuthHandler);

        // 游戏对外服路由数据缓存
        if (Objects.nonNull(ExternalGlobalConfig.externalCmdCache)) {
            context.addLast("CmdCacheHandler", CmdCacheHandler.me());
        }
    }
}
