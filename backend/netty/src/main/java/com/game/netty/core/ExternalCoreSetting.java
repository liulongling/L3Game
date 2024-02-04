package com.game.netty.core;


import com.game.common.kit.attr.AttrOptionDynamic;
import com.game.netty.aware.AwareInject;

/**
 * 与真实玩家连接的 ExternalCore 服务器设置
 * <pre>
 *     由于有动态属性的存在，开发者可以通过此接口做任意的扩展
 * </pre>
 *
 * @author liulongling
 * @date 2023-05-05
 */
public interface ExternalCoreSetting extends AwareInject, AttrOptionDynamic {
}
