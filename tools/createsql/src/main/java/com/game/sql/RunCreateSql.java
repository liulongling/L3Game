package com.game.sql;

import com.alibaba.fastjson.JSON;
import com.game.sql.execute.SqlScriptExecute;
import com.game.sql.model.Configuration;
import com.game.sql.model.DataBaseConfig;
import com.game.sql.utils.AccessFileUtils;
import lombok.extern.slf4j.Slf4j;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 生成分库分表sql语句
 *
 * @author liulongling
 * @version 1.0
 * @date 2020/4/21 16:48
 */
@Slf4j
public class RunCreateSql {

    /**
     * db json配置文件
     * 示例：
     * {
     *     "env": "prod",
     *     "dbName": "game_udb",
     *     "dbCount": 10,
     *     "port": 3306,
     *     "plat": "bilibili",
     *     "game": "AG",
     *     "remark": "示例",
     *     "username": "root",
     *     "password": "123456",
     *     "ips": ["127.0.0.1"]
     * }
     *
     */
    private static final String dbOriginalPath = "D:\\liulongling\\a-tools\\config\\dbm";
    /**
     * 写入sql路径 必须
     */
    private static final String dbTargetPath = "D:\\liulongling\\a-tools\\config\\sql";
    /**
     * sql文件路径 必须
     */
    private static final String readFilePath = System.getProperty("user.dir")
            + File.separator + "sql";
    /**
     * 需要创建分库分表sql文件 必须
     */
    private static final String readSqlFileName = "V2_createplayer.sql";
    /**
     * 生成的脚本是否执行到数据库 环境为false
     */
    private static final boolean isRun = false;

    public static void main(String[] args) {
        String[] fileList = getFileList();
        String regEx = "[^0-9]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(readSqlFileName);
        String version = m.replaceAll("").trim();
        for (String filePath : fileList) {
            run(dbOriginalPath + File.separator + filePath, version);
        }
    }

    private static void run(String filePath, String version) {
        String path = readFilePath + File.separator + readSqlFileName;
        DataBaseConfig dataBaseConfig = loadLocalPluginConfiguration(filePath);
        Configuration configuration = Configuration.builder()
                .dataBaseConfig(dataBaseConfig)
                .dbOriginalPath(filePath)
                .dbTargetPath(dbTargetPath)
                .version(version)
                .isRun(isRun)
                .sql(readFile(path)).build();
        new SqlScriptExecute(configuration).execute();
    }

    private static String[] getFileList() {
        Path path = Paths.get(dbOriginalPath);
        if (!Files.exists(path)) {
            log.error("路径不存在!");
            return null;
        }
        File file = new File(dbOriginalPath);
        return file.list();
    }

    /**
     * 从配置文件中加载信息
     */
    private static DataBaseConfig loadLocalPluginConfiguration(String localDBPath) {
        DataBaseConfig dataBaseConfig = null;
        try {
            Path path = Paths.get(localDBPath);
            if (!Files.exists(path)) {
                return null;
            }

            String json = new String(Files.readAllBytes(path), AccessFileUtils.DEFAULT_CHARSET);
            dataBaseConfig = JSON.parseObject(json, DataBaseConfig.class);
        } catch (IOException e) {
            log.error("读取插件配置失败", e);
        }
        return dataBaseConfig;
    }

    private static String readFile(String path) {
        StringBuilder tableBuilder = new StringBuilder();
        try {
            FileReader fr = new FileReader(path);
            BufferedReader bf = new BufferedReader(fr);
            String str;
            while ((str = bf.readLine()) != null) {
                tableBuilder.append(str);
                tableBuilder.append("\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tableBuilder.toString();
    }
}
