package com.game.netty.bootstrap;

import com.game.netty.channel.PipelineContext;

/**
 * 与真实玩家连接服务器的启动流程；
 * <pre>
 *     开发者可通过此接口对服务器做编排，编排分为：构建时、新建连接时两种。
 *
 *     也可以选择性的重写流程方法，来定制符合自身项目的业务。
 *     框架提供了 TCP、WebSocket、UDP 的实现
 * </pre>
 * <p>
 * 接口方法执行顺序为
 * <pre>
 *     1 【构建时】的执行流程，createFlow 内调用了 option、channelInitializer 方法
 *         1.1 option
 *         1.2 channelInitializer
 *
 *     2 【新建连接时】的执行流程，pipelineFlow 内调用了 pipelineCodec、pipelineIdle、pipelineCustom
 *         2.1 pipelineCodec
 *         2.2 pipelineIdle
 *         2.3 pipelineCustom
 * </pre>
 *
 * @author: liulongling
 * @date: 2024/1/6 19:12
 */
public interface MicroBootstrapFlow<Bootstrap> {
    /**
     * 构建时的执行流程
     *
     * @param bootstrap 服务器
     */
    default void createFlow(Bootstrap bootstrap) {
        // 开发者可以选择性的重写流程方法，来定制符合自身项目的业务
        this.option(bootstrap);
        this.channelInitializer(bootstrap);
    }

    /**
     * 给服务器做一些 option 设置
     * <pre>
     *     构建时，此时服务器还没启动
     * </pre>
     *
     * @param bootstrap 服务器
     */
    void option(Bootstrap bootstrap);

    /**
     * 给服务器做一些业务编排
     * <pre>
     *     构建时，此时服务器还没启动
     * </pre>
     *
     * @param bootstrap 服务器
     */
    void channelInitializer(Bootstrap bootstrap);

    /**
     * 新建连接时的执行流程
     *
     * <pre>
     *     通常情况下，我们可以将 ChannelInitializer 内的实现划分为三部分
     *     1. pipelineCodec：编解码
     *     2. pipelineIdle：心跳相关
     *     3. pipelineCustom：自定义的业务编排 （大部分情况下只需要重写 pipelineCustom 就可以达到很强的扩展了）
     * </pre>
     *
     * @param pipelineContext context
     */
    default void pipelineFlow(PipelineContext pipelineContext) {
        // 编解码
        pipelineCodec(pipelineContext);
        // 心跳相关
        pipelineIdle(pipelineContext);
        // 自定义的业务编排
        /*
         * 自定义的业务编排 pipeline
         * 开发者可以单独重写这个接口方法，达到自定义编排 Handler，
         * 这样可以保留编解码、心跳相关的。
         *
         * 开发者可以选择性的重写此方法，来做符合业务的 handler 编排
         */
        pipelineCustom(pipelineContext);
    }

    /**
     * 编解码相关的
     * <pre>
     *     新建连接时，服务器已经启动，每次有新连接进来时，会触发。
     * </pre>
     *
     * @param context PipelineContext
     */
    void pipelineCodec(PipelineContext context);

    /**
     * 心跳相关的
     * <pre>
     *     新建连接时，服务器已经启动，每次有新连接进来时，会触发。
     * </pre>
     *
     * @param context PipelineContext
     */
    void pipelineIdle(PipelineContext context);

    /**
     * 自定义的业务编排（给服务器做一些业务编排）
     * <pre>
     *     新建连接时，服务器已经启动，每次有新连接进来时，会触发。
     * </pre>
     *
     * @param context PipelineContext
     */
    void pipelineCustom(PipelineContext context);
}