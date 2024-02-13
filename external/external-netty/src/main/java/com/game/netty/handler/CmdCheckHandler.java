package com.game.netty.handler;

import com.iohao.game.action.skeleton.core.exception.ActionErrorEnum;
import com.iohao.game.bolt.broker.core.aware.CmdRegionsAware;
import com.iohao.game.core.common.cmd.CmdRegions;
import com.iohao.game.external.core.kit.ExternalKit;
import com.iohao.game.external.core.message.ExternalMessage;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;

/**
 * 路由是否存在检测
 * 当路由不存在时，可以起到抵挡的作用，而不必经过其他服务器。
 *
 * @author 渔民小镇
 * @date 2024-02-03
 */
@ChannelHandler.Sharable
public final class CmdCheckHandler extends SimpleChannelInboundHandler<ExternalMessage>
        implements CmdRegionsAware {
    CmdRegions cmdRegions;

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, ExternalMessage message) {
        int cmdMerge = message.getCmdMerge();
        // 路由存在
        if (cmdRegions.existCmdMerge(cmdMerge)) {
            // 交给下一个业务处理 (handler) , 下一个业务指的是你编排 handler 时的顺序
            ctx.fireChannelRead(message);
            return;
        }

        ExternalKit.employError(message, ActionErrorEnum.cmdInfoErrorCode);

        ctx.writeAndFlush(message);
    }

    @Override
    public void setCmdRegions(CmdRegions cmdRegions) {
        this.cmdRegions = cmdRegions;
    }


    public CmdCheckHandler() {
    }

    public static CmdCheckHandler me() {
        return Holder.ME;
    }

    /** 通过 JVM 的类加载机制, 保证只加载一次 (singleton) */
    private static class Holder {
        static final CmdCheckHandler ME = new CmdCheckHandler();
    }
}
