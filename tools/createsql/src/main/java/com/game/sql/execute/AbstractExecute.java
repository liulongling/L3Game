package com.game.sql.execute;


import com.game.sql.model.Configuration;
import com.game.sql.model.TableSqlModel;
import org.junit.Assert;

/**
 * @Author: liulongling
 * @Date: 2021/7/23 16:32
 */
public abstract class AbstractExecute implements Execute {
    protected Configuration config;

    public AbstractExecute(Configuration config) {
        Assert.assertNotNull("Configuration can not be empty!", config);
        this.config = config;
    }

    /**
     * 获取文件名
     *
     * @param tableSqlModel
     * @return
     */
    public String getFileName(TableSqlModel tableSqlModel) {
        String fileName = "";
        //只有一个ip数据库所有sql存放到一个.sql文件
        if (this.config.getDataBaseConfig().getIps().size() == 1) {
            fileName = this.config.getDataBaseConfig().getDbName() + ".sql";
        } else {
            fileName = tableSqlModel.getUdbName() + ".sql";
        }
        return fileName;
    }

}
