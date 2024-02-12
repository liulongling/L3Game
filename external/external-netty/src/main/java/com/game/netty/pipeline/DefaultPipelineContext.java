package com.game.netty.pipeline;

import com.game.netty.channel.PipelineContext;
import com.game.netty.core.DefaultExternalCoreSetting;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelPipeline;

/**
 * PipelineContext 主要用于包装 SocketChannel channel
 * <pre>
 *     目的是为了增强 Handler aware 能力
 * </pre>
 *
 * @author 渔民小镇
 * @date 2023-04-26
 */
public record DefaultPipelineContext(Channel channel, DefaultExternalCoreSetting setting)
        implements PipelineContext {

    @Override
    public void addFirst(String name, Object handler) {

        this.setting.aware(handler);

        if (handler instanceof ChannelHandler channelHandler) {
            ChannelPipeline pipeline = channel.pipeline();
            pipeline.addFirst(name, channelHandler);
        }
    }

    @Override
    public void addLast(String name, Object handler) {

        // aware 能力附加
        this.setting.aware(handler);

        if (handler instanceof ChannelHandler channelHandler) {
            ChannelPipeline pipeline = channel.pipeline();
            pipeline.addLast(name, channelHandler);
        }
    }

    @Override
    public void remove(String name) {
        ChannelPipeline pipeline = channel.pipeline();
        pipeline.remove(name);
    }
}
