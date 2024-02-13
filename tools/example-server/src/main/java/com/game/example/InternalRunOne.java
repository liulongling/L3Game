package com.game.example;

import com.iohao.game.common.kit.ExecutorKit;
import com.iohao.game.common.kit.HashKit;
import com.iohao.game.external.core.ExternalServer;
import lombok.AccessLevel;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;


@Slf4j
@Setter(AccessLevel.PACKAGE)
class InternalRunOne {
    final ExecutorService executorService = ExecutorKit.newCacheThreadPool("InternalRunOne");
    final int withNo = HashKit.hash32(UUID.randomUUID().toString());
    /** 游戏对外服列表 */
    List<ExternalServer> externalServerList;
    boolean openWithNo = true;

    void execute(Runnable command) {
        this.executorService.execute(command);
    }

    void startupLogic() {
        // 启动游戏对外服
        if (Objects.nonNull(this.externalServerList)) {
            this.externalServerList.forEach(externalServer -> {
                this.executorService.execute(externalServer::startup);
            });
        }

        try {
            TimeUnit.SECONDS.sleep(1);
        } catch (InterruptedException e) {
            log.error(e.getMessage(), e);
        }

    }

    /**
     * 添加游戏对外服
     *
     * @param externalServer 游戏对外服
     * @return this
     */
    void setExternalServer(ExternalServer externalServer) {
        if (Objects.isNull(this.externalServerList)) {
            this.externalServerList = new ArrayList<>();
        }

        this.externalServerList.add(externalServer);
    }

    int getWithNo() {
        return this.openWithNo ? this.withNo : 0;
    }
}
