package com.game.common.kit.attr;

import java.io.Serializable;
import java.util.Objects;

/**
 * 动态属性的属性项
 * <pre>
 *     see {@link AttrOptionDynamic}
 * </pre>
 *
 * @param <T> t
 * @author liulongling
 * @date 2022-01-31
 */
public record AttrOption<T>(String name, T defaultValue) implements Serializable {
    /**
     * 初始化 一个 AttrOption
     *
     * @param name name
     * @param <T>  t
     * @return AttrOption
     */
    public static <T> AttrOption<T> valueOf(String name) {
        return new AttrOption<>(name, null);
    }

    /**
     * 初始化 一个 AttrOption
     *
     * @param name         name
     * @param defaultValue 默认值
     * @param <T>          t
     * @return AttrOption
     */
    public static <T> AttrOption<T> valueOf(String name, T defaultValue) {
        return new AttrOption<>(name, defaultValue);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        AttrOption<?> that = (AttrOption<?>) o;

        return Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return name != null ? name.hashCode() : 0;
    }
}
