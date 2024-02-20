package com.game.server.data.udb.config;

import lombok.Builder;
import lombok.Data;


/**
 *
 * @author: liulongling
 * @date: 2024/2/20
 */
@Data
@Builder
public class Configuration {
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
     * 是否直接运行到数据库
     */
    private boolean isRun;
    /**
     * sql条件参数value
     */
    private String parameterValue;
    /**
     * shell脚本
     */
    private String shellScript;

}
