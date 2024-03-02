package com.game.data.db.master.domain;

import com.game.data.db.master.BaseEntity;
import lombok.Data;

/**
 * 服务器信息 server_info
 *
 * @author liulongling
 * @date 2024-02-17
 */
@Data
public class ServerInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 服务器ID */
    private Integer serverID;

    /** 服务器类型：1 游戏服；2 战斗服；3 聊天服；4 API服；5 GM服 */
    private Integer serverType;

    /** 内网IP */
    private String lanIp;

    /** 服务器端口 */
    private Integer serverTcpPort;

    /** 服务器http端口 */
    private Integer serverHttpPort;
}
