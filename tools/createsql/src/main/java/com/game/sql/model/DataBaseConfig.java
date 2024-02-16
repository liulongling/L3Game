package com.game.sql.model;

import lombok.Data;

import java.util.List;

/**
 * @Author: liulongling
 * @Date: 2021/7/23 16:34
 */
@Data
public class DataBaseConfig {
    /**
     * 数据库环境
     */
    private String env;
    /**
     * 所有数据库ip
     */
    private List<String> ips;
    /**
     * 数据库名称
     */
    private String dbName;
    /**
     * 数据库总数
     */
    private int dbCount;
    /**
     * 平台
     */
    private String plat;
    /**
     * 游戏名
     */
    private String game;
    /**
     * 备注
     */
    private String remark;
    /**
     * 端口
     */
    private int port;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;


    public boolean isProdEnv() {
        return env.equals("prod");
    }
}
