package com.game.example.db.master.domain;

import lombok.Data;

/**
 * 玩家注册对象 register_player
 * 
 * @author liulongling
 * @date 2024-02-24
 */
@Data
public class RegisterPlayer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 唯一角色ID */
    private Integer uid;

    /** 平台 */
    private String platformId;

    /** 渠道 */
    private Integer channelId;

    /** 平台uid */
    private String platformUid;
}
