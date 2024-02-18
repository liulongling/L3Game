package com.game.server.action;

import com.game.jproto.example.LoginVerify;
import com.game.jproto.example.UserInfo;
import com.game.server.common.GameCmd;
import com.iohao.game.action.skeleton.annotation.ActionController;
import com.iohao.game.action.skeleton.annotation.ActionMethod;
import com.iohao.game.action.skeleton.core.flow.FlowContext;
import com.iohao.game.bolt.broker.client.kit.UserIdSettingKit;
import lombok.extern.slf4j.Slf4j;
import org.jctools.maps.NonBlockingHashMap;

import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.LongAdder;


@Slf4j
@ActionController(GameCmd.cmd)
public class LoginAction {

    final Map<String, Long> userMap = new NonBlockingHashMap<>();

    LongAdder userIdAdder = new LongAdder();

    /**
     * 登录验证
     *
     * @param loginVerify 登录验证pb
     * @param flowContext f
     * @return 用户信息
     */
    @ActionMethod(GameCmd.loginVerify)
    public UserInfo loginVerify(LoginVerify loginVerify, FlowContext flowContext) {
        log.info("loginVerify {} ", loginVerify);

        String jwt = loginVerify.jwt;

        // TODO: 2022/2/6 从数据库中
        Long newUserId = userMap.get(jwt);

        if (Objects.isNull(newUserId)) {
            userIdAdder.increment();

            newUserId = userIdAdder.longValue();
            userMap.put(jwt, newUserId);
        }

        UserInfo userInfo = new UserInfo();
        userInfo.id = newUserId;
        userInfo.name = jwt;

        // 登录的关键代码
        // 具体可参考 https://www.yuque.com/iohao/game/tywkqv
        boolean success = UserIdSettingKit.settingUserId(flowContext, newUserId);

        if (!success) {
            // TODO: 2022/1/19 抛异常码
        }

        userMap.clear();

        return userInfo;
    }


}
