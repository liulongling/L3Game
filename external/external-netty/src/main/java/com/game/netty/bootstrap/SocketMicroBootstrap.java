package com.game.netty.bootstrap;

import com.game.netty.group.GroupChannelOption;
import com.game.netty.group.GroupChannelOptionForOther;
import com.iohao.game.common.consts.IoGameLogName;
import com.iohao.game.external.core.micro.MicroBootstrapFlow;
import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.ServerChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

/**
 * 与真实玩家连接的服务器，处理 tcp、websocket 的 netty 服务器。
 * <p>
 * 开发者可以继承后重写部分方法，来满足业务需求
 *
 * @author 渔民小镇
 * @date 2023-05-27
 */
@FieldDefaults(level = AccessLevel.PRIVATE)
@Slf4j(topic = IoGameLogName.ExternalTopic)
public final class SocketMicroBootstrap extends AbstractMicroBootstrap {
    @Override
    public void startup() {
        // 线程组相关
        GroupChannelOption groupChannelOption = createGroupChannelOption();
        EventLoopGroup bossGroup = groupChannelOption.bossGroup();
        EventLoopGroup workerGroup = groupChannelOption.workerGroup();
        Class<? extends ServerChannel> channelClass = groupChannelOption.channelClass();

        // netty 服务器
        ServerBootstrap bootstrap = new ServerBootstrap();
        bootstrap.group(bossGroup, workerGroup);
        bootstrap.channel(channelClass);

        // 开发者可以选择性的重写流程方法，来定制符合自身项目的业务
        MicroBootstrapFlow<ServerBootstrap> microMicroBootstrapFlow = this.setting.getMicroBootstrapFlow();
        microMicroBootstrapFlow.createFlow(bootstrap);
        // 真实玩家连接的端口
        final int externalCorePort = this.setting.getExternalCorePort();
        ChannelFuture channelFuture = bootstrap.bind(externalCorePort);

        try {
            channelFuture.channel().closeFuture().sync();
        } catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage(), e);
        } finally {
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }

    protected GroupChannelOption createGroupChannelOption() {
        // 根据环境自动选择，开发者也可以重写此方法，做些自定义
        return new GroupChannelOptionForOther();
    }
}
