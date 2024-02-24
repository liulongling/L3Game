package com.game.example.logic;

import com.game.example.logic.action.LoginAction;
import com.game.example.logic.config.GameBarSkeletonConfig;
import com.iohao.game.action.skeleton.core.BarSkeleton;
import com.iohao.game.action.skeleton.core.BarSkeletonBuilder;
import com.iohao.game.action.skeleton.core.BarSkeletonBuilderParamConfig;
import com.iohao.game.bolt.broker.client.AbstractBrokerClientStartup;
import com.iohao.game.bolt.broker.core.client.BrokerClient;
import com.iohao.game.bolt.broker.core.client.BrokerClientBuilder;
import lombok.extern.slf4j.Slf4j;

import java.util.TimeZone;


/**
 * 逻辑服启动入口
 *
 * @author liulongling
 * @date 2024-02-15
 */
@Slf4j
public class RunServer extends AbstractBrokerClientStartup {

    @Override
    public BarSkeleton createBarSkeleton() {
        BarSkeletonBuilderParamConfig config = new BarSkeletonBuilderParamConfig()
                // 扫描 action 类所在包
                .scanActionPackage(LoginAction.class);
        log.info("时区:" + TimeZone.getDefault());
        BarSkeletonBuilder builder = GameBarSkeletonConfig.createBuilder(config);

        return builder.build();
    }

    @Override
    public BrokerClientBuilder createBrokerClientBuilder() {
        BrokerClientBuilder builder = BrokerClient.newBuilder();
        builder.appName("逻辑服");
        return builder;
    }
}
