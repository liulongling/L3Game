package com.game.netty.channel;

import java.util.Objects;

/**
 * Pipeline 上下文
 *
 * @author 渔民小镇
 * @date 2023-02-19
 */
public interface PipelineContext {
    /**
     * 把处理器添加到第一个位置
     *
     * @param handler 处理器
     */
    default void addFirst(Object handler) {
        Objects.requireNonNull(handler);
        String simpleName = handler.getClass().getSimpleName();
        this.addFirst(simpleName, handler);
    }

    /**
     * 把处理器添加到第一个位置
     *
     * @param name    处理器的名称
     * @param handler 处理器
     */
    void addFirst(String name, Object handler);

    /**
     * 把处理器添加到最后的位置
     *
     * @param handler 处理器
     */
    default void addLast(Object handler) {
        Objects.requireNonNull(handler);
        String simpleName = handler.getClass().getSimpleName();
        this.addLast(simpleName, handler);
    }

    /**
     * 把处理器添加到最后的位置
     *
     * @param name    处理器的名称
     * @param handler 处理器
     */
    void addLast(String name, Object handler);

    /**
     * 移除指定处理器
     *
     * @param name 处理器的名称
     */
    void remove(String name);
}
