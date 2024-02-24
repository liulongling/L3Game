package com.game.example.db.user.config;

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
public class UserDBPreciseShardingAlgorithm implements PreciseShardingAlgorithm<Integer> {

    @Override
    public String doSharding(final Collection<String> dbNames, final PreciseShardingValue<Integer> shardingValue) {
        log.info("UserDBPreciseShardingAlgorithm doSharding dbNames:{} value:{}", dbNames.size(), shardingValue.getValue());
        Integer dbNameSize = dbNames.size();
        for (String dbName : dbNames) {
            if (dbNameSize == 1) {
                return dbName;
            }

            Long s = shardingValue.getValue() % dbNameSize.longValue();
            if (dbName.endsWith(s < 10 ? "0" + s : s + "")) {
                log.info("UserDBPreciseShardingAlgorithm doSharding dbName:{},value:{}", dbName, shardingValue.getValue() % dbNameSize);
                return dbName;
            }
        }
        throw new UnsupportedOperationException();
    }
}
