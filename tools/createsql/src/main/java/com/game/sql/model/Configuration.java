package com.game.sql.model;

import lombok.Builder;
import lombok.Data;


/**
 * 配置
 *
 * @Author: liulongling
 * @Date: 2021/7/23 16:33
 */
@Data
@Builder
public class Configuration {
    /**
     * 配置文件信息
     */
    private DataBaseConfig dataBaseConfig;
    /**
     * 配置文件路径
     */
    private String dbOriginalPath;
    /**
     * sql目标存储路径
     */
    private String dbTargetPath;
    /**
     * sql语句
     */
    private String sql;
    /**
     * 数据库版本号
     */
    private String version;
    /**
     * 是否直接运行到数据库
     */
    private boolean isRun;
    /**
     * sql条件参数value
     */
    private String parameterValue;
}
