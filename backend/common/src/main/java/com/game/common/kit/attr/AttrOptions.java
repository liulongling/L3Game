package com.game.common.kit.attr;

import org.jctools.maps.NonBlockingHashMap;

import java.io.Serial;
import java.io.Serializable;
import java.util.Map;
import java.util.Objects;

/**
 * 动态属性的选项载体
 * <pre>
 *     see {@link AttrOptionDynamic}
 * </pre>
 *
 * @author liulongling
 * @date 2022-01-31
 */
public class AttrOptions implements Serializable {
    @Serial
    private static final long serialVersionUID = 9042891580724596100L;

    final Map<com.game.common.kit.attr.AttrOption<?>, Object> options = new NonBlockingHashMap<>();

    /**
     * 获取选项值。
     * <p>
     * 如果选项不存在，返回默认值。
     *
     * @param option 选项值
     * @return 如果option不存在，则默认的option值。
     */
    @SuppressWarnings("unchecked")
    public <T> T option(com.game.common.kit.attr.AttrOption<T> option) {
        Object value = options.get(option);
        if (Objects.isNull(value)) {
            value = option.defaultValue();
        }

        return (T) value;
    }

    /**
     * 设置一个具有特定值的新选项。
     * <p>
     * 使用 null 值删除前一个设置的 {@link com.game.common.kit.attr.AttrOption}。
     *
     * @param option 选项值
     * @param value  选项值, null 用于删除前一个 {@link com.game.common.kit.attr.AttrOption}.
     * @return this
     */
    public <T> AttrOptions option(com.game.common.kit.attr.AttrOption<T> option, T value) {
        if (Objects.isNull(value)) {
            options.remove(option);
            return this;
        }

        options.put(option, value);
        return this;
    }
}
