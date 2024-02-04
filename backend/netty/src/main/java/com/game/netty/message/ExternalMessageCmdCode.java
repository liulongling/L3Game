package com.game.netty.message;

/**
 * @author liulongling
 * @date 2022-03-16
 */
public interface ExternalMessageCmdCode {
    /** 请求命令类型: 0 心跳 */
    int idle = 0;
    /** 请求命令类型: 1 业务 */
    int biz = 1;
    int bizCache = 2;
}
