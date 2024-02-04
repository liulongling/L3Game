package com.game.netty.session;


import com.game.common.kit.attr.AttrOptionDynamic;
import com.game.netty.message.RequestMessage;

/**
 * UserSession 接口
 * <pre>
 *     对应的动态属性接口 {@link UserSessionOption}
 * </pre>
 *
 * @author liulongling
 * @date 2023-02-18
 */
public interface UserSession extends AttrOptionDynamic {
    /**
     * active
     *
     * @return true active
     */
    boolean isActive();

    /**
     * 设置当前用户（玩家）的 id
     * <pre>
     *     当设置好玩家 id ，也表示着已经身份验证了（表示登录过了）。
     * </pre>
     *
     * @param userId userId
     */
    void setUserId(long userId);

    /**
     * 当前用户（玩家）的 id
     *
     * @return 当前用户（玩家）的 id
     */
    long getUserId();

    /**
     * 是否进行身份验证
     *
     * @return true 已经身份验证了，表示登录过了。
     */
    boolean isVerifyIdentity();

    /**
     * 当前用户（玩家）的 State
     *
     * @return 当前用户（玩家）的 State
     */
    UserSessionState getState();

    /**
     * 当前用户（玩家）的 UserChannelId
     *
     * @return 当前用户（玩家）的 UserChannelId
     */
    UserChannelId getUserChannelId();

    /**
     * 给请求消息加上一些 user 自身的数据
     *
     * @param requestMessage 请求消息
     */
    void employ(RequestMessage requestMessage);

    /**
     * writeAndFlush
     *
     * @param message
     * @return
     */
    <T> T writeAndFlush(Object message);

    /**
     * 获取玩家 ip
     *
     * @return 玩家 ip
     */
    String getIp();
}
