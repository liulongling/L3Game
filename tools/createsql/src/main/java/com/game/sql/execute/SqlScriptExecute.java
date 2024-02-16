package com.game.sql.execute;


import com.alibaba.druid.pool.DruidPooledConnection;
import com.game.sql.model.Configuration;
import com.game.sql.model.DataBaseConfig;
import com.game.sql.model.SqlModule;
import com.game.sql.model.TableSqlModel;
import com.game.sql.process.SqlModelProcess;
import com.game.sql.utils.AccessFileUtils;
import com.game.sql.utils.DateUtils;
import com.game.sql.utils.SqlUtil;
import lombok.extern.slf4j.Slf4j;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * 生成可执行的sql脚本
 *
 * @Author: liulongling
 * @Date: 2021/7/23 16:42
 */
@Slf4j
public class SqlScriptExecute extends AbstractExecute {
    public SqlScriptExecute(Configuration configuration) {
        super(configuration);
    }

    @Override
    public void execute() {
        DataBaseConfig dataBaseConfig = config.getDataBaseConfig();
        String plat = dataBaseConfig.getPlat();
        log.info("开始创建平台{}->sql", plat);
        try {
            //准备sql
            SqlModule sqlModule = new SqlModelProcess(config).process();

            sqlModule.getMap().forEach((key, value) -> {
                String ip = key;
                value.forEach(
                        item -> {
                            if (!item.getList().isEmpty()) {
                                //创建文件夹、文件
                                File file = createSqlFile(ip, item);
                                //写入到文件
                                try {
                                    writeToFile(file, item);
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                                //数据库执行sql文件
                                if (config.isRun()) {
                                    runSql(ip, item);
                                }
                            }
                        }
                );
            });

        } catch (Exception e) {
            e.printStackTrace();
        }
        log.info("创建平台{}->sql 结束", plat);
    }

    /**
     * 运行sql
     *
     * @param tableSqlModel
     */
    private void runSql(String ip, final TableSqlModel tableSqlModel) {
        try {
            DruidPooledConnection connection = SqlUtil.getDruidDataSource(
                    ip,
                    config.getDataBaseConfig().getPort(),
                    config.getDataBaseConfig().getUsername(),
                    config.getDataBaseConfig().getPassword(),
                    tableSqlModel.getUdbName());

            tableSqlModel.getList().forEach(
                    sql -> {
                        try {
                            PreparedStatement statement = connection.prepareStatement(sql);
                            statement.execute();
                        } catch (SQLException throwables) {
                            throwables.printStackTrace();
                            log.error("数据库：{} 执行sql：{} 失败!", tableSqlModel.getUdbName(), sql);
                        }
                    });
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 创建sql文件目录和存放文件
     * <p>
     * * 存放文件夹层次：
     * * 一层 项目 _ 版本_维护日期
     * * 二层 平台
     * * 三层 IP
     * * 样例：
     * * AG_1.8_20180731
     * * ├── bili
     * * │ ├── 192.168.0.2
     * * │ │ ├── game_udb_10.sql
     * * │ │ └── game_udb_20.sql
     * * │ ├── 192.168.0.4
     * * │ │ ├── game_udb_30.sql
     * * │ │ └── game_udb_40.sql
     * * ├── uo
     * * │ ├── 192.168.1.2
     * * │ │ ├── game_udb_10.sql
     * * │ │ └── game_udb_20.sql
     * * │ ├── 192.168.1.4
     * * │ ├── game_udb_30.sql
     * * │ └── game_udb_40.sql
     *
     * @param ip            数据库ip
     * @param tableSqlModel sql文件详细信息
     * @throws IOException
     */
    public File createSqlFile(String ip, TableSqlModel tableSqlModel) {
        String dirName = this.config.getDataBaseConfig().getGame() + "_" + this.config.getVersion() + "_" + DateUtils.getSqlDate();

        StringBuilder builder = new StringBuilder();

        //一层:项目_版本_维护日期
        builder.append(this.config.getDbTargetPath());
        builder.append(File.separator);
        builder.append(dirName);
        AccessFileUtils.createNewdir(builder.toString());

        //二层 平台
        builder.append(File.separator);
        builder.append(this.config.getDataBaseConfig().getPlat());
        AccessFileUtils.createNewdir(builder.toString());

        //三层 IP
        builder.append(File.separator);
        builder.append(ip);
        AccessFileUtils.createNewdir(builder.toString());

        //创建sql文件
        builder.append(File.separator);
        builder.append(getFileName(tableSqlModel));

        return AccessFileUtils.createNewFile(builder.toString());
    }

    /**
     * 执行后sql写入到文件
     *
     * @param file
     * @param tableSqlModel
     * @throws IOException
     */
    public void writeToFile(File file, final TableSqlModel tableSqlModel) throws IOException {
        FileOutputStream fos = new FileOutputStream(file, true);
        //指定以UTF-8格式写入文件
        OutputStreamWriter osw = new OutputStreamWriter(fos, AccessFileUtils.DEFAULT_CHARSET);

        osw.write("use " + tableSqlModel.getUdbName() + ";");
        osw.write("\r\n");

        try {
            // 按行读取字符串
            tableSqlModel.getList().forEach(item ->
                    {
                        try {
                            log.info("udbName: {} sql: {}", tableSqlModel.getUdbName(), item);
                            osw.write(item);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
            );
            //写入完成关闭流
            osw.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
