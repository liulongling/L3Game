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
package com.game.example.client;

import com.game.common.cmd.CmdModule;
import com.game.common.cmd.LoginCmd;
import com.game.example.client.join.ClientRunOne;
import com.game.example.client.kit.ClientUserConfigs;
import com.game.example.jproto.LoginVerify;
import com.game.example.jproto.RegisterInfo;
import com.game.example.jproto.UserInfo;
import com.iohao.game.common.kit.ExecutorKit;
import com.iohao.game.common.kit.InternalKit;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @author 渔民小镇
 * @date 2023-07-17
 */
@Slf4j
public class MyOneClient {
    public static void main(String[] args) {
        ClientUserConfigs.closeLog();

        // 模拟请求数据
        List<InputCommandRegion> inputCommandRegions = List.of(
                new InternalRegion()
        );

        // 启动模拟客户端
        new ClientRunOne()
                .setInputCommandRegions(inputCommandRegions)
                .startup();
    }

    static class InternalRegion extends AbstractInputCommandRegion {
        @Override
        public void initInputCommand() {
            inputCommandCreate.cmd = CmdModule.loginCmd;

            ofCommand(LoginCmd.register).setTitle("register").setRequestData(() -> {
                RegisterInfo registerInfo = new RegisterInfo();
                registerInfo.name = "liulongling";
                registerInfo.channelId = 1;
                registerInfo.platformId = "bilibili";
                registerInfo.platformUid = "liulong112";
                return registerInfo;
            }).callback(result -> {

            });

            ofCommand(LoginCmd.loginVerify).setTitle("login").setRequestData(() -> {
                LoginVerify loginVerify = new LoginVerify();
                loginVerify.channelId = 1;
                loginVerify.platformId = "bilibili";
                loginVerify.platformUid = "liulong112";
                return loginVerify;
            }).callback(result -> {
                 result.getValue(UserInfo.class);
            });

            // 一秒后，执行模拟请求;
            InternalKit.newTimeoutSeconds(task -> {
                // 执行请求
                ofRequestCommand(LoginCmd.register).execute();
            });

            ExecutorKit.newSingleScheduled("client").scheduleAtFixedRate(() -> {
                // execute
                ofRequestCommand(LoginCmd.loginVerify).execute();
            }, 2, 5, TimeUnit.SECONDS);
        }
    }

}
