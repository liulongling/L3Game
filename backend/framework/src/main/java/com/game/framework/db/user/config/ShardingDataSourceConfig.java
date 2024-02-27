package com.game.framework.db.user.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.game.common.utils.StringUtils;
import com.game.framework.db.common.ServerConfig;
import com.game.framework.db.master.domain.DbInfo;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.shardingsphere.api.config.sharding.KeyGeneratorConfiguration;
import org.apache.shardingsphere.api.config.sharding.ShardingRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.TableRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.strategy.StandardShardingStrategyConfiguration;
import org.apache.shardingsphere.shardingjdbc.api.ShardingDataSourceFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/**
 * @author: liulongling
 * @date: 2024/2/20
 */

@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = "com.game.example.db.user.mapper", sqlSessionFactoryRef = "shardingSqlSessionFactory")
@Slf4j
public class ShardingDataSourceConfig {

    //分库算法
    @Resource
    private UserDBPreciseShardingAlgorithm userDBPreciseShardingAlgorithm;
    //分表算法
    @Resource
    private UserTablePreciseShardingAlgorithm userTablePreciseShardingAlgorithm;

    @Bean(name = "shardingSqlSessionFactory")
    public SqlSessionFactory shardingSqlSessionFactory() throws Exception {
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(shardingDataSource());
        sessionFactory.setFailFast(true);
        sessionFactory.setMapperLocations(resolver.getResources("classpath:com/game/example/db/user/mapper/*Mapper.xml"));
        return sessionFactory.getObject();
    }


    @Bean("shardingDataSource")
    public DataSource shardingDataSource() throws SQLException {
        //配置真实数据源
        Map<String, DataSource> dataSourceMap = createDataSourceMap();
        //配置分片规则
        ShardingRuleConfiguration shardingRuleConfig = new ShardingRuleConfiguration();
        //配置分表规则
        shardingRuleConfig.getTableRuleConfigs().add(getTableRuleConfiguration(dataSourceMap.keySet(), "player"));
        //分表绑定
        shardingRuleConfig.getBindingTableGroups().add("player");
        //配置默认分库 + 分表策略
        shardingRuleConfig.setDefaultDatabaseShardingStrategyConfig(new StandardShardingStrategyConfiguration("uid", userDBPreciseShardingAlgorithm));
        shardingRuleConfig.setDefaultTableShardingStrategyConfig(new StandardShardingStrategyConfiguration("uid", userTablePreciseShardingAlgorithm));

        Properties p = new Properties();
        p.setProperty("sql.show", Boolean.TRUE.toString());
        return ShardingDataSourceFactory.createDataSource(dataSourceMap, shardingRuleConfig, p);
    }

    /**
     * 查询数据库节点配置
     *
     * @param dbNames 所有游戏库
     * @param table   表
     * @return
     */
    String getActualDataNodes(Set<String> dbNames, String table) {
        int dbCount = dbNames.size();
        StringBuilder actualDataNodes = new StringBuilder();
        for (String dbName : dbNames) {
            actualDataNodes.append(dbName).append(".").append(table);
            if (dbCount > 1) {
                actualDataNodes.append("_${[");
                actualDataNodes.append(getTables(dbName, dbCount));
                actualDataNodes.append("]},");
            }
        }
        return dbCount == 1 ? actualDataNodes.toString() : actualDataNodes.substring(0, actualDataNodes.length() - 1);
    }

    String getTables(String dbName, int dbCount) {
        int tableCount = 100;
        StringBuilder builder = new StringBuilder();
        int db = Integer.parseInt(dbName.split("_")[2]);
        for (int i = 0; i < tableCount; i++) {
            if (i % dbCount == db) {
                int tableNum = i % tableCount;
                builder.append("'");
                builder.append(tableNum < 10 ? "0" + tableNum : String.valueOf(tableNum));
                builder.append("'");
                builder.append(",");
            }
        }
        return StringUtils.removeEnd(builder.toString(), ",");
    }


    /**
     * 数据库分表配置规则
     *
     * @param dbNames 游戏库
     * @param table   表
     * @return
     */
    TableRuleConfiguration getTableRuleConfiguration(Set<String> dbNames, String table) {
        // 配置表规则
        TableRuleConfiguration tableRuleConfig = new TableRuleConfiguration(table, getActualDataNodes(dbNames, table));
        tableRuleConfig.setKeyGeneratorConfig(new KeyGeneratorConfiguration("SNOWFLAKE", "uid"));
        // 配置分库 + 分表策略
        tableRuleConfig.setDatabaseShardingStrategyConfig(new StandardShardingStrategyConfiguration("uid", userDBPreciseShardingAlgorithm));
        tableRuleConfig.setTableShardingStrategyConfig(new StandardShardingStrategyConfiguration("uid", userTablePreciseShardingAlgorithm));
        return tableRuleConfig;
    }


    Map<String, DataSource> createDataSourceMap() {
        //配置真实数据源
        Map<String, DataSource> dataSourceMap = new HashMap<>();

//        initTest();
        //从主库查询所有游戏从库
        if (ServerConfig.dbInfos.isEmpty()) {
            log.error("游戏库未配置");
        }
        for (DbInfo dbInfo : ServerConfig.dbInfos.values()) {
            dataSourceMap.put(dbInfo.getGameDBName(), createDataSource(dbInfo));
        }

        return dataSourceMap;
    }

    public DbInfo dbInfo(int db) {
        DbInfo dbInfo = new DbInfo();
        dbInfo.setGameDBName("game_udb_0" + db);
        dbInfo.setWriteHost("localhost");
        dbInfo.setWritePort(3306);
        dbInfo.setWriteUserName("root");
        dbInfo.setWriteUserPwd("123456");
        return dbInfo;
    }

    DataSource createDataSource(final DbInfo dbInfo) {
        DruidDataSource result = new DruidDataSource();
        result.setDriverClassName(com.mysql.cj.jdbc.Driver.class.getName());
        result.setDbType("com.alibaba.druid.pool.DruidDataSource");
        result.setUrl(String.format("jdbc:mysql://%s:%s/%s?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true&useSSL=false&useLocalSessionState=true",
                dbInfo.getWriteHost(), dbInfo.getWritePort(), dbInfo.getGameDBName()));
        result.setUsername(dbInfo.getWriteUserName());
        result.setPassword(dbInfo.getWriteUserPwd());
//        String defaultAutoCommit = shardProperties.getProperty("defaultAutoCommit");
//        result.setDefaultAutoCommit(StringUtils.isEmpty(defaultAutoCommit) || Boolean.parseBoolean(defaultAutoCommit));
//        String initialSize = shardProperties.getProperty("initialSize");
//        result.setInitialSize(!StringUtils.isEmpty(initialSize) ? Integer.parseInt(initialSize) : 3);
//        String maxActive = shardProperties.getProperty("maxActive");
//        result.setMaxActive(!StringUtils.isEmpty(maxActive) ? Integer.parseInt(maxActive) : 3);
////        result.setMaxIdle(120);
//        String minIdle = shardProperties.getProperty("minIdle");
//        result.setMinIdle(!StringUtils.isEmpty(minIdle) ? Integer.parseInt(minIdle) : 3);
////        result.setMaxWaitMillis(10000);
//        result.setValidationQuery("SELECT 1");
//        String validationQueryTimeout = shardProperties.getProperty("validationQueryTimeout");
//        result.setValidationQueryTimeout(!StringUtils.isEmpty(validationQueryTimeout) ? Integer.parseInt(validationQueryTimeout) : 3);
//        String testOnBorrow = shardProperties.getProperty("testOnBorrow");
//        result.setTestOnBorrow(StringUtils.isEmpty(testOnBorrow) || Boolean.parseBoolean(testOnBorrow));
//        String testWhileIdle = shardProperties.getProperty("testWhileIdle");
//        result.setTestWhileIdle(StringUtils.isEmpty(testWhileIdle) || Boolean.parseBoolean(testWhileIdle));
//        String timeBetweenEvictionRunsMillis = shardProperties.getProperty("timeBetweenEvictionRunsMillis");
//        result.setTimeBetweenEvictionRunsMillis(!StringUtils.isEmpty(timeBetweenEvictionRunsMillis) ? Integer.parseInt(timeBetweenEvictionRunsMillis) : 10000);
//        //result.setNumTestsPerEvictionRun(10);
//        String minEvictableIdleTimeMillis = shardProperties.getProperty("minEvictableIdleTimeMillis");
//        result.setMinEvictableIdleTimeMillis(!StringUtils.isEmpty(minEvictableIdleTimeMillis) ? Integer.parseInt(minEvictableIdleTimeMillis) : 120000);
//        //result.setRemoveAbandonedOnBorrow(true);
//        String removeAbandonedTimeout = shardProperties.getProperty("removeAbandonedTimeout");
//        result.setRemoveAbandonedTimeout(!StringUtils.isEmpty(removeAbandonedTimeout) ? Integer.parseInt(removeAbandonedTimeout) : 120);
//        String poolPreparedStatements = shardProperties.getProperty("poolPreparedStatements");
//        result.setPoolPreparedStatements(StringUtils.isEmpty(poolPreparedStatements) || Boolean.parseBoolean(poolPreparedStatements));
        return result;
    }
}
