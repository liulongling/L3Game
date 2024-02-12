package com.game.netty.external.join;

import com.game.netty.core.ExternalCoreSetting;
import com.game.netty.external.ExternalJoinEnum;

/**
 * 游戏对外服连接方式选择器
 * <pre>
 *     连接方式：tcp、websocket、udp、kcp
 *
 *     Selector 作用是根据当前的连接方式（实现类），初始化一此属性和编解码
 *     <ui>
 *         <li>getCodecPipeline：编解码相关的 Pipeline</li>
 *         <li>defaultSetting：相关连接方式的一些默认设置</li>
 *     </ui>
 * </pre>
 *
 * @author 渔民小镇
 * @date 2023-05-29
 */
public interface ExternalJoinSelector {
    /**
     * 连接方式
     *
     * @return 连接方式
     */
    ExternalJoinEnum getExternalJoinEnum();

    /**
     * 相关连接方式的一些默认设置
     *
     * @param coreSetting coreSetting
     */
    void defaultSetting(ExternalCoreSetting coreSetting);
}
