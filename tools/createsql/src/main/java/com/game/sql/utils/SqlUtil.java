package com.game.sql.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidPooledConnection;
import lombok.extern.slf4j.Slf4j;

import java.sql.SQLException;

/**
 * @Author: liulongling
 * @Date: 2021/7/28 11:22
 */
@Slf4j
public class SqlUtil {

    public static DruidPooledConnection getDruidDataSource(String ip, Integer port, String username, String password, String dbName) throws SQLException {
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setInitialSize(0);
        dataSource.setMaxActive(8);
        dataSource.setMinIdle(2);
        dataSource.setMaxWait(3000);
        //用来检测连接是否有效
        dataSource.setValidationQuery("SELECT 1");
        //申请连接时执行validationQuery检测连接是否有效，做了这个配置会降低性能
        dataSource.setTestOnBorrow(false);
        //归还连接时执行validationQuery检测连接是否有效，做了这个配置会降低性能
        dataSource.setTestOnReturn(false);
        //申请连接的时候检测，如果空闲时间大于timeBetweenEvictionRunsMillis，执行validationQuery检测连接是否有效。
        //如果检测失败，则连接将被从池中去除
        dataSource.setTestWhileIdle(true);
        //打开强制回收连接功能
        dataSource.removeAbandoned();
        dataSource.setPoolPreparedStatements(false);
        dataSource.setMaxOpenPreparedStatements(100);
        dataSource.setName(ip);
        dataSource.setUrl(String.format("jdbc:mysql://%s:%s/%s?characterEncoding=utf8&useSSL=false", ip, port, dbName));
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource.getConnection();
    }


}
