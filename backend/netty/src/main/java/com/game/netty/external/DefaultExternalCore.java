package com.game.netty.external;

import com.game.common.consts.ExternalJoinEnum;
import com.game.common.consts.GameLogName;
import com.game.netty.bootstrap.MicroBootstrap;
import com.game.netty.core.DefaultExternalCoreSetting;
import com.game.netty.external.join.ExternalJoinSelector;
import com.game.netty.external.join.ExternalJoinSelectors;
import com.game.netty.hook.DefaultUserHook;
import com.game.netty.kit.PresentKit;
import com.game.netty.session.UserSessionOption;
import com.game.netty.session.UserSessions;
import com.game.netty.session.hook.UserHook;
import lombok.extern.slf4j.Slf4j;

import java.util.Arrays;
import java.util.Objects;

/**
 * netty ExternalCore
 *
 * @author liulongling
 * @date 2023-02-19
 */
@Slf4j(topic = GameLogName.CommonStdout)
public final class DefaultExternalCore implements ExternalCore {
    final DefaultExternalCoreSetting setting;

    DefaultExternalCore(DefaultExternalCoreSetting setting) {
        this.setting = setting;
    }

    @Override
    public MicroBootstrap createBootstrap() {
        check();

        defaultSetting();

        final int externalCorePort = this.setting.getExternalCorePort();
        aware();

        // 此服务器是和真实用户连接的
        MicroBootstrap microBootstrap = this.setting.getMicroBootstrap();
        microBootstrap.setExternalCoreSetting(this.setting);

        return microBootstrap;
    }

    private void check() {

        int externalCorePort = setting.getExternalCorePort();
        if (externalCorePort <= 0) {
            throw new IllegalArgumentException("游戏对外服端口必须 >0 " + externalCorePort);
        }

        Objects.requireNonNull(setting.getExternalJoinEnum()
                , "需要设置一种连接方式:" + Arrays.toString(ExternalJoinEnum.values()));
    }

    /**
     * 一些默认值设置，由于连接类型的代码并不多，就在这里硬编码了。
     */
    private void defaultSetting() {
        // 根据当前的连接方式得到 ExternalJoinSelector
        ExternalJoinEnum joinEnum = this.setting.getExternalJoinEnum();
        ExternalJoinSelector externalJoinSelector = ExternalJoinSelectors.getExternalJoinSelector(joinEnum);
        // 初始化一些数据
        externalJoinSelector.defaultSetting(this.setting);

        // ================== 以下是在各连接方式下都通用的设置 ==================

        // UserHook 钩子接口；如果开发者没有手动赋值，则给一个默认的
        PresentKit.ifNull(this.setting.getUserHook(), () -> this.setting.setUserHook(new DefaultUserHook()));
        UserSessions<?, ?> userSessions = this.setting.getUserSessions();
        userSessions.setUserHook(this.setting.getUserHook());

        // 当前游戏对外服所使用的连接方式
        userSessions.option(UserSessionOption.externalJoin, joinEnum);
    }

    private void aware() {
        // 玩家上线、下线钩子接口
        UserHook userHook = setting.getUserHook();
        var userSessions = setting.getUserSessions();
        userSessions.setUserHook(userHook);
    }
}
