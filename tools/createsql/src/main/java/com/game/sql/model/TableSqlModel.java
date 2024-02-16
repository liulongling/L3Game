package com.game.sql.model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: liulongling
 * @Date: 2021/7/27 15:45
 */
@Data
public class TableSqlModel {

    /**
     * 数据库名
     */
    private String udbName;
    /**
     * sql
     */
    private List<String> list = new ArrayList<>();
}
