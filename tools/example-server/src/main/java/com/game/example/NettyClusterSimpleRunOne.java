package com.game.example;

import com.iohao.game.external.core.ExternalServer;
import lombok.AccessLevel;
import lombok.Setter;
import lombok.experimental.Accessors;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * （集群相关的）集群简单的启动器： 对外服、游戏网关（3个节点）、逻辑服
 * 谐音:拳皇98中的 round one ready go!
 * <pre>
 *     注意：
 *          这个工具只适合单机的开发或本地一体化的开发, 对于分步式不适合。
 *
 * </pre>
 * 集群介绍
 * <pre>
 *     格式： ip:port
 *
 *     -- 生产环境的建议 --
 *     注意，在生产上建议一台物理机配置一个 broker （游戏网关）
 *     一个 broker 就是一个节点
 *     比如配置三台机器，端口可以使用同样的端口，假设三台机器的 ip 分别是:
 *     192.168.1.10:30056
 *     192.168.1.11:30056
 *     192.168.1.12:30056
 *
 *     -- 为了方便演示 --
 *     这里配置写死是方便在一台机器上启动集群
 *     但是同一台机器启动多个 broker 来实现集群就要使用不同的端口，因为《端口被占用，不能相同》
 *     所以这里的配置是：
 *     127.0.0.1:30056
 *     127.0.0.1:30057
 *     127.0.0.1:30058
 * </pre>
 *
 * @author liulongling
 * @date 2023-04-28
 */
@Slf4j
@Setter
@Accessors(chain = true)
@FieldDefaults(level = AccessLevel.PRIVATE)
public final class NettyClusterSimpleRunOne {
    final InternalRunOne runOne = new InternalRunOne();

    /** true 在本地启动 broker （游戏网关）集群 */
    boolean runBrokerServerCluster = true;

    /**
     * 简单的快速启动
     * <pre>
     *     快速启动:
     *          对外服
     *          游戏网关集群
     *          逻辑服
     *
     *      注意1：
     *          方法会启动 3 个游戏网关来演示集群，端口分别是：30056、30057、30058
     *
     *      注意2：
     *          因为 broker （游戏网关） 集群是无中心节点的，所以逻辑服可以选择与任意一台网关建立连接，
     *          逻辑服内部会自动的与集群其他节点建立连接
     * </pre>
     */
    public void startup() {

    }


    /**
     * 添加游戏对外服
     *
     * @param externalServer 游戏对外服
     * @return this
     */
    public NettyClusterSimpleRunOne setExternalServer(ExternalServer externalServer) {
        this.runOne.setExternalServer(externalServer);
        return this;
    }

    /**
     * set 游戏对外服列表
     *
     * @param externalServerList 游戏对外服列表
     * @return this
     */
    public NettyClusterSimpleRunOne setExternalServerList(List<ExternalServer> externalServerList) {
        this.runOne.setExternalServerList(externalServerList);
        return this;
    }

    public NettyClusterSimpleRunOne setOpenWithNo(boolean openWithNo) {
        this.runOne.setOpenWithNo(openWithNo);
        return this;
    }


}
