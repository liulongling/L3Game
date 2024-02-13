package com.game.netty.handler;

import com.iohao.game.external.core.config.ExternalGlobalConfig;
import com.iohao.game.external.core.hook.cache.ExternalCmdCache;
import com.iohao.game.external.core.message.ExternalMessage;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;

import java.util.Objects;

/**
 * 游戏对外服缓存
 *
 * @author 渔民小镇
 * @date 2023-07-02
 */
@ChannelHandler.Sharable
public class CmdCacheHandler extends SimpleChannelInboundHandler<ExternalMessage> {

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {

        ExternalCmdCache externalCmdCache = ExternalGlobalConfig.externalCmdCache;
        if (Objects.isNull(externalCmdCache)) {
            // 删除自身处理器
            ctx.pipeline().remove(this);
        }

        super.channelActive(ctx);
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, ExternalMessage message) {
        ExternalCmdCache externalCmdCache = ExternalGlobalConfig.externalCmdCache;

        ExternalMessage cache = externalCmdCache.getCache(message);
        if (Objects.nonNull(cache)) {
            // 从缓存中取到了数据，直接返回缓存数据
            ctx.writeAndFlush(cache);
            return;
        }

        // 交给下一个业务处理 (handler) , 下一个业务指的是你编排 handler 时的顺序
        ctx.fireChannelRead(message);
    }


    public CmdCacheHandler() {

    }

    public static CmdCacheHandler me() {
        return Holder.ME;
    }

    /** 通过 JVM 的类加载机制, 保证只加载一次 (singleton) */
    private static class Holder {
        static final CmdCacheHandler ME = new CmdCacheHandler();
    }
}
