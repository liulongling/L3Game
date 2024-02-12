package com.game.netty.core;

import com.game.netty.aware.ExternalCoreSettingAware;
import com.game.netty.aware.UserSessionsAware;
import com.game.netty.bootstrap.MicroBootstrap;
import com.game.netty.bootstrap.MicroBootstrapFlow;
import com.game.netty.external.ExternalJoinEnum;
import com.game.netty.session.UserSessions;
import com.game.netty.session.hook.UserHook;
import com.iohao.game.common.kit.attr.AttrOptions;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;
import org.jctools.maps.NonBlockingHashSet;

import java.util.Set;

/**
 * ExternalCoreSetting
 *
 * @author 渔民小镇
 * @date 2023-02-19
 */
@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public final class DefaultExternalCoreSetting implements ExternalCoreSetting {
    /** 动态属性 */
    final AttrOptions options = new AttrOptions();
    /** 容器管理 */
    final Set<Object> injectObject = new NonBlockingHashSet<>();
    /** 真实玩家连接的端口 */
    @Setter
    int externalCorePort;
    /** 连接方式：默认为 Websocket */
    @Setter
    ExternalJoinEnum externalJoinEnum = ExternalJoinEnum.WEBSOCKET;
    /** 游戏对外服-与真实玩家连接的服务器 */
    MicroBootstrap microBootstrap;
    /** 与真实玩家连接服务器的启动流程 */
    MicroBootstrapFlow<?> microBootstrapFlow;
    /** 用户（玩家）session 管理器 */
    UserSessions<?, ?> userSessions;
    /** UserHook 钩子接口，上线时、下线时会触发 */
    UserHook userHook;

    public void inject() {
        this.injectObject.forEach(this::aware);
    }

    @SuppressWarnings("unchecked")
    public <T> MicroBootstrapFlow<T> getMicroBootstrapFlow() {
        return (MicroBootstrapFlow<T>) microBootstrapFlow;
    }

    public void setMicroBootstrap(MicroBootstrap microBootstrap) {
        this.microBootstrap = microBootstrap;
        this.injectObject.add(this.microBootstrap);
    }

    public void setMicroBootstrapFlow(MicroBootstrapFlow<?> microBootstrapFlow) {
        this.microBootstrapFlow = microBootstrapFlow;
        this.injectObject.add(this.microBootstrapFlow);
    }

    public void setUserSessions(UserSessions<?, ?> userSessions) {
        this.userSessions = userSessions;
        this.injectObject.add(this.userSessions);
    }

    public void setUserHook(UserHook userHook) {
        this.userHook = userHook;
        this.injectObject.add(this.userHook);
    }

    @Override
    public void aware(Object o) {
        if (o instanceof UserSessionsAware aware) {
            aware.setUserSessions(this.userSessions);
        }

        if (o instanceof ExternalCoreSettingAware aware) {
            aware.setExternalCoreSetting(this);
        }
    }
}
