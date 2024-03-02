/*
 * ioGame
 * Copyright (C) 2021 - 2023  渔民小镇 （262610965@qq.com、luoyizhu@gmail.com） . All Rights Reserved.
 * # iohao.com . 渔民小镇
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
package com.iohao.game.external.core.netty.handler;

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
 * <pre>
 *     <a href="https://github.com/iohao/ioGame/issues/115">115</a>
 *
 *     当路由不存在时，可以起到抵挡的作用，而不必经过其他服务器。
 * </pre>
 *
 * @author 渔民小镇
 * @date 2023-05-01
 */
@ChannelHandler.Sharable
public final class CmdCheckHandler extends SimpleChannelInboundHandler<ExternalMessage>
        implements CmdRegionsAware {
    CmdRegions cmdRegions;

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, ExternalMessage message) {
        System.out.println(" Test CmdCheckHandler channelRead0");
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
