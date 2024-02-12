package com.game.netty.config;

import com.game.netty.hook.AccessAuthenticationHook;
import com.game.netty.hook.DefaultAccessAuthenticationHook;
import com.game.netty.hook.cache.ExternalCmdCache;
import lombok.experimental.UtilityClass;

/**
 * @author 渔民小镇
 * @date 2023-02-19
 */
 @UtilityClass
public class ExternalGlobalConfig {
    /** 游戏对外服默认启动端口 */
    public final int externalPort = 10100;

    /**
     * 访问验证钩子接口
     */
    public AccessAuthenticationHook accessAuthenticationHook = new DefaultAccessAuthenticationHook();
    /** 游戏对外服路由缓存 */
    public ExternalCmdCache externalCmdCache;

    @UtilityClass
    public class CoreOption {
        /** 默认数据包最大 1MB */
        public int packageMaxSize = 1024 * 1024;
        /** http 升级 websocket 协议地址 */
        public String websocketPath = "/websocket";
    }
}
