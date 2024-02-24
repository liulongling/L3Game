package com.game.example.logic.config;


import com.iohao.game.external.core.ExternalServer;
import lombok.extern.slf4j.Slf4j;

/**
 * 逻辑服启动时加载一些静态数据
 *
 * @author liulongling
 * @date 2024-02-17
 */
@Slf4j
public class LogicServerBuilder implements ExternalServer {


    public static LogicServerBuilder newBuilder() {
        return new LogicServerBuilder();
    }


    @Override
    public void startup() {
    }
}
