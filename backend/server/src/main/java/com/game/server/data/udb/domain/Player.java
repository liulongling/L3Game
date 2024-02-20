package com.game.server.data.udb.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Player {
    /**
     * 角色UID
     */
    private Integer uid;
    /**
     * 角色名字
     */
    private String name;
    /**
     * 平台
     */
    private String platformId;
    /**
     * 平台uid
     */
    private String platformUid;
    /**
     * 角色等级
     */
    private int level;
    /**
     * 角色最后登录时间
     */
    private Integer lastLoginTime;
    /**
     * 注册时间
     */
    private Integer regDate;

    /**
     * 指挥官id
     */
    private Integer commanderId;

    /**
     * 玩家的token 给玩家推送消息需要
     */
    private String token;
}
