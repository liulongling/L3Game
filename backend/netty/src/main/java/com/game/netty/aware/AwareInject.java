package com.game.netty.aware;

/**
 * aware 注入接口
 *
 * @author: liulongling
 * @date: 2024/1/6 19:12
 */
public interface AwareInject {
    /**
     * 附加能力
     *
     * @param o o
     */
    void aware(Object o);
}
