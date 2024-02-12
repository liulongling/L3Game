package com.game.netty.external.join;

import com.game.netty.external.ExternalJoinEnum;
import lombok.experimental.UtilityClass;

import java.util.EnumMap;

/**
 * 连接方式 : ExternalJoinSelector
 * <pre>
 *     工厂方法
 * </pre>
 *
 * @author 渔民小镇
 * @date 2023-05-29
 */
@UtilityClass
public final class ExternalJoinSelectors {
    final EnumMap<ExternalJoinEnum, ExternalJoinSelector> map = new EnumMap<>(ExternalJoinEnum.class);

    public void putIfAbsent(ExternalJoinSelector joinSelector) {
        putIfAbsent(joinSelector.getExternalJoinEnum(), joinSelector);
    }

    public void putIfAbsent(ExternalJoinEnum joinEnum, ExternalJoinSelector joinSelector) {
        map.putIfAbsent(joinEnum, joinSelector);
    }

    /**
     * 根据连接方式得到对应的 ExternalJoinSelector
     *
     * @param joinEnum 连接方式
     * @return ExternalJoinSelector
     */
    public ExternalJoinSelector getExternalJoinSelector(ExternalJoinEnum joinEnum) {
        if (!map.containsKey(joinEnum)) {
            throw new RuntimeException(joinEnum + " 还没有对应的连接实现类");
        }

        return map.get(joinEnum);
    }
}
