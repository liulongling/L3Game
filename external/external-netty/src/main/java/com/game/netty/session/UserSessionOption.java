package com.game.netty.session;



import com.game.netty.external.ExternalJoinEnum;
import com.iohao.game.common.kit.attr.AttrOption;

import java.util.Set;

/**
 * UserSession 的动态属性名
 *
 * @author 渔民小镇
 * @date 2023-02-21
 */
public interface UserSessionOption {
    /** false : 没有进行身份验证 */
    AttrOption<Boolean> verifyIdentity = AttrOption.valueOf("verifyIdentity");

    /** 元信息 */
    AttrOption<byte[]> attachment = AttrOption.valueOf("attachment");

    /**
     * 玩家绑定的多个游戏逻辑服
     * <pre>
     *     所有与该游戏逻辑服相关的请求都将被分配给已绑定的游戏逻辑服处理。
     *     即使启动了多个同类型的游戏逻辑服，该请求仍将被分配给已绑定的游戏逻辑服处理。
     * </pre>
     */
    AttrOption<Set<Integer>> bindingLogicServerIdSet = AttrOption.valueOf("bindingLogicServerIdSet");
    /**
     * 玩家绑定的多个游戏逻辑服
     * <pre>
     *     数据来源于 bindingLogicServerIdSet
     *     在传输时使用基础类型数组要比 Set 性能更高
     * </pre>
     */
    AttrOption<int[]> bindingLogicServerIdArray = AttrOption.valueOf("bindingLogicServerIdArray");
    /** 连接方式 */
    AttrOption<ExternalJoinEnum> externalJoin = AttrOption.valueOf("externalJoin");
    /** 玩家真实 ip */
    AttrOption<String> realIp = AttrOption.valueOf("realIp", "");
}
