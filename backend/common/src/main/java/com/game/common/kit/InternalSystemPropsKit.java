package com.game.common.kit;

import com.game.common.consts.GameLogName;
import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;

/**
 * copy from hutool
 *
 * @author liulongling
 * @date 2023-01-19
 */
@UtilityClass
@Slf4j(topic = GameLogName.CommonStdout)
public class InternalSystemPropsKit {

    /**
     * 取得系统属性，如果因为Java安全的限制而失败，则将错误打在Log中，然后返回 {@code null}
     *
     * @param name  属性名
     * @param quiet 安静模式，不将出错信息打在{@code System.err}中
     * @return 属性值或{@code null}
     * @see System#getProperty(String)
     * @see System#getenv(String)
     */
    public static String get(String name, boolean quiet) {
        String value = null;
        try {
            value = System.getProperty(name);
        } catch (SecurityException e) {
            if (!quiet) {
                log.error("Caught a SecurityException reading the system property '{}'; the SystemPropsKit property value will default to null.", name);
            }
        }

        if (null == value) {
            try {
                value = System.getenv(name);
            } catch (SecurityException e) {
                if (!quiet) {
                    log.error("Caught a SecurityException reading the system env '{}'; the SystemPropsKit env value will default to null.", name);
                }
            }
        }

        return value;
    }
}
