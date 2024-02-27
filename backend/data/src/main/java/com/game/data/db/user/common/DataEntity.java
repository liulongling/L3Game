package com.game.data.db.user.common;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;


/**
 *
 * @author: liulongling
 * @date: 2024/2/20
 */
@Data
public class DataEntity {

    /**
     * 玩家唯一ID
     */
    private Integer uid;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
}
