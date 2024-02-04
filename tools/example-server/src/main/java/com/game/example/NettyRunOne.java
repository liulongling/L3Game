package com.game.example;

import com.game.common.consts.GameLogName;
import com.game.netty.external.ExternalServer;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * 简单的启动器： 游戏对外服
 *
 * @author liulongling
 * @date 2023-02-19
 */
@Setter
@Accessors(chain = true)
@FieldDefaults(level = AccessLevel.PRIVATE)
@Slf4j(topic = GameLogName.CommonStdout)
public final class NettyRunOne {
    @Getter(AccessLevel.PRIVATE)
    final InternalRunOne runOne = new InternalRunOne();
    /** true 在本地启动 broker （游戏网关） */
    boolean runBrokerServer = true;

    /**
     * 简单的快速启动，
     * <pre>
     *     游戏对外服、Broker（游戏网关）、游戏逻辑服这三部分，在一个进程中使用内存通信。
     *     【单体应用；在开发分步式时，调试更加方便】
     * </pre>
     */
    public void startup() {
        this.runOne.startupLogic();
    }

    /**
     * 添加游戏对外服
     *
     * @param externalServer 游戏对外服
     * @return this
     */
    public NettyRunOne setExternalServer(ExternalServer externalServer) {
        this.runOne.setExternalServer(externalServer);
        return this;
    }

    /**
     * set 游戏对外服列表
     *
     * @param externalServerList 游戏对外服列表
     * @return this
     */
    public NettyRunOne setExternalServerList(List<ExternalServer> externalServerList) {
        this.runOne.setExternalServerList(externalServerList);
        return this;
    }

    public NettyRunOne setOpenWithNo(boolean openWithNo) {
        this.runOne.setOpenWithNo(openWithNo);
        return this;
    }


}
