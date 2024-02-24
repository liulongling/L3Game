/*
 * ioGame
 * Copyright (C) 2021 - 2023  渔民小镇 （262610965@qq.com、luoyizhu@gmail.com） . All Rights Reserved.
 * # iohao.com . 渔民小镇
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
package com.game.example.mmo.login.client;

import com.game.common.cmd.CmdModule;
import com.game.example.client.AbstractInputCommandRegion;
import com.game.example.client.command.InputRequestData;
import com.game.example.client.kit.AssertKit;
import com.game.common.cmd.LoginCmd;
import com.game.example.jproto.LoginVerify;
import com.game.example.jproto.UserInfo;
import com.iohao.game.common.kit.InternalKit;
import com.iohao.game.common.kit.StrKit;
import lombok.extern.slf4j.Slf4j;

import java.util.concurrent.TimeUnit;


/**
 * @author 渔民小镇
 * @date 2023-07-21
 */
@Slf4j
public class LoginInputCommandRegion extends AbstractInputCommandRegion {
    @Override
    public void initInputCommand() {
        this.inputCommandCreate.cmd = LoginCmd.cmd;

        String jwt = clientUser.getJwt();
        AssertKit.assertTrueThrow(StrKit.isEmpty(jwt), "必须设置登录用的 jwt");

        // 动态请求参数
        InputRequestData inputRequestData = () -> {
            // 请求参数
            LoginVerify loginVerify = new LoginVerify();
//            loginVerify.jwt = clientUser.getJwt();
            return loginVerify;
        };

        ofCommand(LoginCmd.loginVerify).callback(UserInfo.class, result -> {
            UserInfo userInfo = result.getValue();
            log.info("登录成功 : {}", userInfo);
            clientUser.setUserId(userInfo.id);
            clientUser.setNickname(userInfo.name);
        }).setDescription("登录").setInputRequestData(inputRequestData);

        InternalKit.newTimeout(task -> {
            // 自动登录
            ofRequestCommand(LoginCmd.loginVerify).request();
        }, 200, TimeUnit.MILLISECONDS);
    }
}
