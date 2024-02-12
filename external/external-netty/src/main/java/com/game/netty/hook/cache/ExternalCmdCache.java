package com.game.netty.hook.cache;


import com.iohao.game.action.skeleton.protocol.ResponseMessage;
import com.iohao.game.external.core.message.ExternalMessage;

/**
 * 游戏对外服缓存数据查询、添加相关接口
 *
 * @author 渔民小镇
 * @date 2023-07-02
 */
public interface ExternalCmdCache {

    /**
     * 查询：从缓存中取数据
     * <pre>
     *     当从缓存中找到数据时，会复用 ExternalMessage 对象（引用不变）。
     *     将缓存数据设置到 ExternalMessage.data 中，避免一次对象的创建。
     * </pre>
     *
     * @param message message
     * @return 返回值为 null，表示缓存中没有数据
     */
    ExternalMessage getCache(ExternalMessage message);

    /**
     * 添加：将响应数据添加到缓存中
     *
     * @param responseMessage responseMessage
     */
    void addCacheData(ResponseMessage responseMessage);
}
