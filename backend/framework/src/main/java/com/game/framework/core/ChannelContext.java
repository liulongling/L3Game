package com.game.framework.core;

/**
 * 通信通道接口
 * <pre>
 *     用于对 bolt AsyncContext、netty Channel 的包装，这样可以使得业务框架与网络通信框架解耦。
 *     为将来 ioGame 实现绳量级架构的使用做准备，也为将来实现一套更符合游戏的网络通信框架做预留准备。
 * </pre>
 *
 * @author L3
 * @date 2022-12-04
 */
public interface ChannelContext {
    /**
     * 发送响应给请求端
     *
     * @param responseObject 响应对象
     */
    void sendResponse(Object responseObject);
}
