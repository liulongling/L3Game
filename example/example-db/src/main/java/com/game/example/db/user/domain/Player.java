package com.game.example.db.user.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.game.example.db.user.common.DataEntity;
import lombok.Data;

import java.util.Date;


/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Data
public class Player extends DataEntity {
    /**
     * 角色名字
     */
    private String name;
    /**
     * 平台
     */
    private String platformId;
    /**
     * 渠道ID
     */
    private int channelId;
    /**
     * 平台uid
     */
    private String platformUid;
    /**
     * 角色等级
     */
    private int level;
    /**
     * 玩家的token 给玩家推送消息需要
     */
    private String token;
    /**
     * 角色最后登录时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastLoginTime;
    /**
     * 角色最后离线时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastOffTime;

}
