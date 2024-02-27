package com.game.framework.db.user.config;

import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.springframework.stereotype.Component;

import java.util.Collection;

/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Component
@Slf4j
public class UserTablePreciseShardingAlgorithm implements PreciseShardingAlgorithm<Integer> {

    @Override
    public String doSharding(final Collection<String> tableNames, final PreciseShardingValue<Integer> shardingValue) {
        log.info("doSharding tables:{}", tableNames.size());
        for (String tableName : tableNames) {
            if (tableNames.size() == 1) {
                return tableName;
            }
            if (tableName.endsWith(shardingValue.getValue() % 100 + "")) {
                log.info("doSharding table:{},value:{}", tableName, shardingValue.getValue());
                return tableName;
            }
        }
        throw new UnsupportedOperationException();
    }
}
