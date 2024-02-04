package com.game.common.consts;

import lombok.Getter;
import lombok.ToString;

/**
 * 对外服的连接方式
 *
 * @author liulongling
 * @date 2022-01-13
 */
@ToString
public enum ExternalJoinEnum {
    /** tcp socket */
    TCP("tcp socket"),
    /** websocket */
    WEBSOCKET("websocket"),
    /** udp socket 注意这个目前还没现实 */
    UDP("udp socket"),
    /**
     * ext socket
     * <pre>
     *     特殊的预留扩展
     * </pre>
     */
    EXT_SOCKET("ext socket");

    @Getter
    final String name;

    ExternalJoinEnum(String name) {
        this.name = name;
    }
}
