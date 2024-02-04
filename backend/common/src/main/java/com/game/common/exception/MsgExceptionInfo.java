package com.game.common.exception;

import java.util.Objects;

/**
 * 异常消息
 * <pre>
 *     关于异常机制的解释可以参考这里:
 * </pre>
 *
 * @author liulongling
 * @date 2022-01-14
 */
public interface MsgExceptionInfo {
    /**
     * 异常消息
     *
     * @return 消息
     */
    String getMsg();

    /**
     * 异常码
     *
     * @return 异常码
     */
    int getCode();

    /**
     * 断言为 true, 就抛出异常
     *
     * @param v1 断言值
     * @throws MsgException e
     */
    default void assertTrueThrows(boolean v1) throws MsgException {
        if (v1) {
            throw new MsgException(this);
        }
    }

    /**
     * 断言为 true, 就抛出异常
     *
     * @param v1  断言值
     * @param msg 自定义消息
     * @throws MsgException e
     */
    default void assertTrueThrows(boolean v1, String msg) throws MsgException {
        if (v1) {
            int code = this.getCode();
            throw new MsgException(code, msg);
        }
    }

    /**
     * 断言值 value 不能为 null, 否则就抛出异常
     *
     * @param value 断言值
     * @param msg   自定义消息
     * @throws MsgException e
     */
    default void assertNonNull(Object value, String msg) throws MsgException {
        assertTrue(Objects.nonNull(value), msg);
    }

    /**
     * 断言值 value 不能为 null, 否则就抛出异常
     *
     * @param value 断言值
     * @throws MsgException e
     */
    default void assertNonNull(Object value) throws MsgException {
        assertTrue(Objects.nonNull(value));
    }

    /**
     * 断言必须是 true, 否则抛出异常
     *
     * @param v1 断言值
     * @throws MsgException e
     */
    default void assertTrue(boolean v1) throws MsgException {
        if (v1) {
            return;
        }

        throw new MsgException(this);
    }


    /**
     * 断言必须是 false, 否则抛出异常
     *
     * @param v1 断言值
     * @throws MsgException e
     */
    default void assertFalse(boolean v1) throws MsgException {
        this.assertTrue(!v1);
    }

    /**
     * 断言必须是 false, 否则抛出异常
     *
     * @param v1  断言值
     * @param msg 自定义消息
     * @throws MsgException e
     */
    default void assertFalse(boolean v1, String msg) throws MsgException {
        this.assertTrue(!v1, msg);
    }


    /**
     * 断言必须是 true, 否则抛出异常
     *
     * @param v1  断言值
     * @param msg 自定义消息
     * @throws MsgException e
     */
    default void assertTrue(boolean v1, String msg) throws MsgException {
        if (v1) {
            return;
        }

        int code = this.getCode();
        throw new MsgException(code, msg);
    }
}
