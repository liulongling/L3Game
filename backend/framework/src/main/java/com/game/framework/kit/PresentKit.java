package com.game.framework.kit;

import lombok.experimental.UtilityClass;

import java.util.Objects;

/**
 * @author liulongling
 * @date 2023-06-01
 */
@UtilityClass
public class PresentKit {

    /**
     * 如果属性为 null，则执行给定操作，否则不执行任何操作。
     *
     * @param obj      属性
     * @param runnable 给定操作
     */
    public void ifNull(Object obj, Runnable runnable) {
        if (Objects.isNull(obj)) {
            runnable.run();
        }
    }
}
