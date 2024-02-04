package com.game.netty.session.hook;


import com.game.netty.session.UserSession;

/**
 * UserHook 钩子接口，上线时、下线时会触发
 * <pre>
 *     实际上需要真正登录过，才会触发 ：into和quit 方法
 *
 *     这里是改变用户的验证状态
 *
 *     验证状态变更为 true -------- 真正登录过
 *     see {@link UserSession#setUserId}
 *     channel.attr(UserSessionAttr.verifyIdentity).set(true);
 *
 *     利用好该接口，可以把用户当前在线状态通知到逻辑服，比如使用 redis PubSub 之类的。
 * </pre>
 *
 * @author liulongling
 * @date 2022-03-14
 */
public interface UserHook {
    /**
     * 用户进入，可以理解为上线
     *
     * @param userSession userSession
     */
    void into(UserSession userSession);

    /**
     * 用户退出，可以理解为下线、离线通知等
     *
     * @param userSession userSession
     */
    void quit(UserSession userSession);
}
