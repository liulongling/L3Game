package com.game.common.cmd;

/**
 * @author 渔民小镇
 * @date 2023-07-21
 */
public interface LoginCmd {
    /** 模块A - 主 cmd */
    int cmd = CmdModule.loginCmd;
    /** 登录验证 */
    int loginVerify = 2;
    /** 注册角色 */
    int register = 3;
}
