package com.game.framework.cmd;

import com.game.common.core.CmdKit;
import com.game.common.kit.MoreKit;
import org.jctools.maps.NonBlockingHashMap;

import java.util.Map;
import java.util.Objects;

/**
 * 享元工厂
 *
 * @author liulongling
 * @date 2021-12-20
 */
public final class CmdInfoFlyweightFactory {
    /**
     * <pre>
     * key : cmdMerge
     * value : cmdInfo
     * </pre>
     */
    static final Map<Integer, CmdInfo> cmdInfoMap = new NonBlockingHashMap<>();

    /**
     * 获取路由信息
     * <pre>
     *     将在下个版本移除，请使用 of 系列代替
     * </pre>
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     * @return 路由信息
     */
    @Deprecated
    public static CmdInfo getCmdInfo(int cmd, int subCmd) {
        return of(cmd, subCmd);
    }

    /**
     * 获取路由信息
     * <pre>
     *     将在下个版本移除，请使用 of 系列代替
     * </pre>
     *
     * @param cmdMerge 主路由(高16) + 子路由(低16)
     * @return 路由信息
     */
    @Deprecated
    public static CmdInfo getCmdInfo(int cmdMerge) {
        return of(cmdMerge);
    }


    /**
     * 获取路由信息
     * <pre>
     *     如果不存在，就新建
     * </pre>
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     * @return 路由信息
     */
    public static CmdInfo of(int cmd, int subCmd) {
        int cmdMerge = CmdKit.merge(cmd, subCmd);
        return of(cmdMerge);
    }

    /**
     * 获取路由信息
     * <pre>
     *     如果不存在，就新建
     * </pre>
     *
     * @param cmdMerge 主路由(高16) + 子路由(低16)
     * @return 路由信息
     */
    public static CmdInfo of(int cmdMerge) {

        CmdInfo cmdInfo = cmdInfoMap.get(cmdMerge);

        // 无锁化
        if (Objects.isNull(cmdInfo)) {
            var newValue = new CmdInfo(cmdMerge);
            return MoreKit.putIfAbsent(cmdInfoMap, cmdMerge, newValue);
        }

        return cmdInfo;
    }

    /**
     * 请直接使用静态方法
     * <pre>
     *     将在下个大版本中移除
     * </pre>
     *
     * @return me
     */
    @Deprecated
    public static CmdInfoFlyweightFactory me() {
        return Holder.ME;
    }

    private CmdInfoFlyweightFactory() {
    }

    /** 通过 JVM 的类加载机制, 保证只加载一次 (singleton) */
    private static class Holder {
        static final CmdInfoFlyweightFactory ME = new CmdInfoFlyweightFactory();
    }
}
