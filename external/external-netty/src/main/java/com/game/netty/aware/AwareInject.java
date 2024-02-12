package com.game.netty.aware;

/**
 * aware 注入接口
 *
 * @author 渔民小镇
 * @date 2023-02-21
 */
public interface AwareInject {
    /**
     * 附加能力
     *
     * @param o o
     */
    void aware(Object o);
}
