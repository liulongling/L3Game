package com.game.netty.cmd;

import com.game.common.core.CmdKit;
import lombok.Getter;

/**
 * cmdInfo 命令路由信息
 * <pre>
 *     平常大部分框架使用一个 cmd 来约定协议
 *     这里使用cmd,subCmd是为了模块的划分清晰, 当然这样规划还有更多好处
 *
 *     cmdInfo 的创建可以通过：
 *     1 {@link CmdInfoFlyweightFactory} 来完成
 *     2 {@link CmdInfo#of(int, int)} 静态方法来完成
 * </pre>
 *
 * @author liulongling
 * @date 2021-12-20
 */
@Getter
public final class CmdInfo {
    /** 业务主路由 */
    final int cmd;
    /** 业务子路由 */
    final int subCmd;

    /**
     * 合并两个参数,分别存放在 [高16 和 低16]
     * <pre>
     *     cmd - 高16
     *     subCmd - 低16
     *     例如 cmd = 600; subCmd = 700;
     *     merge 的结果: 39322300
     *     那么 cmdMerge 对应的二进制是: [0000 0010 0101 1000] [0000 0010 1011 1100]
     * </pre>
     */
    final int cmdMerge;

    CmdInfo(int cmdMerge) {
        // -------------- 路由相关 --------------
        this.cmd = CmdKit.getCmd(cmdMerge);
        this.subCmd = CmdKit.getSubCmd(cmdMerge);
        this.cmdMerge = cmdMerge;
    }

    /**
     * 获取 cmdInfo
     * <pre>
     *     内部使用享元工厂来获取 cmdInfo
     *
     *     请使用 of 系列方法来代替此方法
     * </pre>
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     * @return 路由信息
     */
    public static CmdInfo getCmdInfo(int cmd, int subCmd) {
        return of(cmd, subCmd);
    }

    /**
     * 获取 cmdInfo
     * <pre>
     *     内部使用享元工厂来获取 cmdInfo
     *
     *     请使用 of 系列方法来代替此方法
     * </pre>
     *
     * @param cmdMerge cmd-subCmd {@link CmdKit#merge(int, int)}
     * @return 路由信息
     */
    public static CmdInfo getCmdInfo(int cmdMerge) {
        return of(cmdMerge);
    }

    /**
     * 获取 cmdInfo
     * <pre>
     *     内部使用享元工厂来获取 cmdInfo
     * </pre>
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     * @return 路由信息
     */
    public static CmdInfo of(int cmd, int subCmd) {
        return CmdInfoFlyweightFactory.of(cmd, subCmd);
    }

    /**
     * 获取 cmdInfo
     * <pre>
     *     内部使用享元工厂来获取 cmdInfo
     * </pre>
     *
     * @param cmdMerge cmd-subCmd {@link CmdKit#merge(int, int)}
     * @return 路由信息
     */
    public static CmdInfo of(int cmdMerge) {
        return CmdInfoFlyweightFactory.of(cmdMerge);
    }

    @Override
    public String toString() {
        return CmdKit.mergeToString(this.cmdMerge);
    }
}
