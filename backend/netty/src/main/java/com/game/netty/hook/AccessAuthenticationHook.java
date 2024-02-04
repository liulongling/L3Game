package com.game.netty.hook;


/**
 * 路由访问权限的控制
 *
 * @author liulongling
 * @date: 2024/1/6 19:12
 * @Description:
 */
public interface AccessAuthenticationHook {

    /**
     * 表示登录才能访问业务方法
     *
     * @param verifyIdentity true 需要登录才能访问业务方法
     */
    void setVerifyIdentity(boolean verifyIdentity);

    /**
     * 移除需要忽略的路由
     *
     * @param cmd    cmd
     * @param subCmd subCmd
     */
    void removeIgnoreAuthCmd(int cmd, int subCmd);


    /**
     * 移除需要忽略的路由
     *
     * @param cmd cmd
     */
    void removeIgnoreAuthCmd(int cmd);

    /**
     * 访问验证
     * <pre>
     *     通过的验证，可以访问游戏逻辑服的业务方法
     * </pre>
     *
     * @param loginSuccess true 表示玩家登录成功 {@link UserSession#isVerifyIdentity()}
     * @param cmdMerge     路由
     * @return true 通过访问验证
     */
    boolean pass(boolean loginSuccess, int cmdMerge);

    /**
     * 添加拒绝访问的主路由，这些主路由不能由外部直接访问
     * <pre>
     *     这里的外部指的是玩家
     * </pre>
     *
     * @param cmd 主路由
     */
    void addRejectionCmd(int cmd);

    /**
     * 添加拒绝访问的路由，这些路由不能由外部直接访问
     * <pre>
     *     这里的外部指的是玩家
     * </pre>
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     */
    void addRejectionCmd(int cmd, int subCmd);

    /**
     * 移除拒绝访问的路由
     *
     * @param cmd    主路由
     * @param subCmd 子路由
     */
    void removeRejectCmd(int cmd, int subCmd);

    /**
     * 移除拒绝访问的路由
     *
     * @param cmd 主路由
     */
    void removeRejectCmd(int cmd);

    /**
     * 拒绝访问的路由
     * <pre>
     *     当为 true 时，玩家不能访问此路由地址
     * </pre>
     *
     * @param cmdMerge 路由
     * @return true 表示玩家不能访问此路由
     */
    boolean reject(int cmdMerge);

    /**
     * 清除所有的忽略的路由和拒绝路由数据配置
     */
    void clear();
}
