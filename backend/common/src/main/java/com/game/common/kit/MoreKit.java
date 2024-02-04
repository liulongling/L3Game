package com.game.common.kit;

import lombok.experimental.UtilityClass;

import java.util.Map;

/**
 * @author liulongling
 * @date 2023-12-07
 */
@UtilityClass
public class MoreKit {
    public <T> T firstNonNull(T first, T second) {
        if (first != null) {
            return first;
        }

        if (second != null) {
            return second;
        }

        throw new NullPointerException("两者为 null");
    }

    public <K, T> T putIfAbsent(Map<K, T> map, K key, T value) {

        var first = map.putIfAbsent(key, value);

        return firstNonNull(first, value);
    }
}
