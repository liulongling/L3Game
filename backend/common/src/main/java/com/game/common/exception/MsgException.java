package com.game.common.exception;

import lombok.Getter;
import lombok.Setter;

import java.io.Serial;

/**
 * 业务框架 异常消息
 * <pre>
 *     关于异常机制的解释可以参考这里:
 * </pre>
 *
 * @author liulongling
 * @date 2021-12-20
 */
@Getter
@Setter
public class MsgException extends RuntimeException {
    @Serial
    private static final long serialVersionUID = -4977523514509693190L;

    /** 异常消息码 */
    final int msgCode;

    public MsgException(int msgCode, String message) {
        super(message);
        this.msgCode = msgCode;
    }

    public MsgException(MsgExceptionInfo msgExceptionInfo) {
        this(msgExceptionInfo.getCode(), msgExceptionInfo.getMsg());
    }
}
