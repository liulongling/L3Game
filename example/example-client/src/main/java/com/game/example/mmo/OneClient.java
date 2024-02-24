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
package com.game.example.mmo;

import com.game.example.client.InputCommandRegion;
import com.game.example.client.join.ClientRunOne;
import com.game.example.client.user.ClientUser;
import com.game.example.client.user.DefaultClientUser;
import com.game.example.jproto.RegisterInfo;
import com.game.example.mmo.login.client.LoginInputCommandRegion;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * @author 渔民小镇
 * @date 2023-07-21
 */
@Slf4j
public class OneClient {
    public static void main(String[] args) {
        // 模拟玩家 1
        RegisterInfo registerInfo = new RegisterInfo();
        registerInfo.setName("程序员小毛驴");
        registerInfo.setChannelId(1);
        registerInfo.setPlatformId("bili");
        registerInfo.setPlatformUid("liulongling");
        start(registerInfo);
    }

    private static List<InputCommandRegion> listInputCommandRegion() {
        LoginInputCommandRegion loginInputCommandRegion = new LoginInputCommandRegion();
        // 模拟请求数据
        return List.of(
                // 登录
                loginInputCommandRegion
        );
    }

    static void start(RegisterInfo registerInfo) {
        // 客户端的用户（玩家）
        ClientUser clientUser = new DefaultClientUser();

        List<InputCommandRegion> inputCommandRegions = listInputCommandRegion();

        // 启动模拟客户端
        new ClientRunOne()
                .setClientUser(clientUser)
                .setInputCommandRegions(inputCommandRegions)
                .startup();
    }


}
