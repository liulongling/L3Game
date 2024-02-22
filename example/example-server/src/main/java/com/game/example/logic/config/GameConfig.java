package com.game.example.logic.config;

import java.io.File;

/**
 * 游戏中心配置
 *
 * @author liulongling
 * @version 1.0
 * @date 2020/4/20 10:13
 */
public class GameConfig {
    /**
     * 配置文件存放路径
     */
    public static final String propsConfigPath = System.getProperty("propsConfig");
    /**
     * 日志统一存放路径 线上:/data/log
     */
    public static final String commonLogPath = System.getProperty("commonLogPath");

    /**
     * 数据库配置文件
     */
    public static final String dbconfig = propsConfigPath + File.separator + "common" + File.separator + "dbconfig.properties";
    /**
     * redis配置文件
     */
    public static final String redisConfig = propsConfigPath + File.separator + "common" + File.separator + "redis.properties";
    /**
     * 系统配置文件
     */
    public static final String sysConfig = propsConfigPath + File.separator + "common" + File.separator + "sysconfig.properties";

    public static final String fireBaseConfig = propsConfigPath + File.separator + "common" + File.separator + "serviceAccountKey.json";
}
