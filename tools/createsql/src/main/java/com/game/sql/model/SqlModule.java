package com.game.sql.model;

import lombok.Data;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: liulongling
 * @Date: 2021/7/27 16:22
 */
@Data
public class SqlModule {
    private Map<String, List<TableSqlModel>> map = new HashMap<>();
}
