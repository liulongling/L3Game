package com.game.sql.exception;

import lombok.extern.slf4j.Slf4j;

/**
 * @Author: liulongling
 * @Date: 2021/7/16 15:42
 */
@Slf4j
public class AccessException extends RuntimeException {
    public AccessException(String msg) {
        super("工具异常:[" + msg + "]");
    }
}
