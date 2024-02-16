package com.game.sql.process;


import com.alibaba.druid.stat.TableStat;
import com.game.sql.model.Configuration;
import org.junit.Assert;

import java.util.*;

/**
 * @Author: liulongling
 * @Date: 2021/7/24 17:33
 */
public abstract class AbstractProcess implements Process {
    protected Configuration config;

    AbstractProcess(Configuration configuration) {
        Assert.assertNotNull("Configuration can not be empty!",configuration);
        this.config = configuration;
    }

    /**
     * 查询数据库下所有表名
     *
     * @param table
     * @param db
     * @param dbCount
     * @return
     */
    public static String[] getTableNames(String table, int db, int dbCount) {
        table = table.replaceAll("`", "");
        String[] tables;
        List<String> set = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            if (i % dbCount == db) {
                int tableNum = i % 100;
                set.add("`" + table + "_" + (tableNum < 10 ? "0" + tableNum : String.valueOf(tableNum)) + "`");
            }
        }
        tables = new String[set.size()];
        set.toArray(tables);
        return tables;
    }

    /**
     * 查询数据库下所有表名的后缀
     *
     * @param db      数据库0~100
     * @param dbCount 数据库数量
     * @return
     */
    public static String[] getTableIndexs(int db, int dbCount) {
        String[] tables;
        List<String> set = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            if (i % dbCount == db) {
                int tableNum = i % 100;
                set.add(tableNum < 10 ? "0" + tableNum : String.valueOf(tableNum));
            }
        }
        tables = new String[set.size()];
        set.toArray(tables);
        return tables;
    }

    /**
     * 查询数据库下该角色指定的表名
     *
     * @param table   表名
     * @param uid     角色ID
     * @param dbCount 数据库数量
     * @return
     */
    public static String getTable(String table, int uid, int dbCount) {
        if (dbCount != 1) {
            int tableNum = uid % 100;
            return table + "_" + (tableNum < 10 ? "0" + tableNum : tableNum);
        }
        return null;
    }

    /**
     * 检查sql字段是否已赋值
     *
     * @param conditions 字段
     * @return sql中所有已赋值字段名
     */
    protected Set<String> checkColumnsValuesIsNull(List<TableStat.Condition> conditions) {
        Set<String> set = new HashSet<>();
        for (TableStat.Condition condition : conditions) {
            Object object = condition.getValues().get(0);
            if (object != null) {
                set.add(condition.getColumn().getName());
            }
        }
        return set;

    }

    /**
     * 寻找字段所在数组中的位置
     *
     * @param columnName 字段
     * @param columns    所有字段
     * @return
     */
    protected int findIdIndex(String columnName, Collection<TableStat.Column> columns) {
        Iterator iterator = columns.iterator();
        int findIdIndex = 0;
        while (iterator.hasNext()) {
            TableStat.Column column = (TableStat.Column) iterator.next();
            if (column.getName().equals(columnName)) {
                break;
            }
            findIdIndex++;
        }
        return findIdIndex;
    }

    protected String filterTable(String tableName) {
        return filterTable(tableName, null);
    }

    protected String filterTable(String tableName, String tableIndex) {
        String table = tableName.replaceAll("`", "");
        if (tableIndex == null) {
            return "`" + table + "`";
        }
        return "`" + table + "_" + tableIndex + "`";
    }

}
