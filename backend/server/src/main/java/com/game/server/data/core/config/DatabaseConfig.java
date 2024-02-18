package com.game.server.data.core.config;

import com.game.server.data.core.interceptor.MybatisInterceptorConfig;
import com.game.server.data.core.interceptor.UserDesensitizationInterceptor;
import com.github.pagehelper.PageInterceptor;
import com.zaxxer.hikari.HikariDataSource;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@Configuration
@MapperScan(basePackages = {"com.game.server.data.server.mapper"}, sqlSessionFactoryRef = "sqlSessionFactory")
@EnableTransactionManagement
public class DatabaseConfig {

    @Bean
    @ConditionalOnMissingBean
    public PageInterceptor pageInterceptor() {
        PageInterceptor pageInterceptor = new PageInterceptor();
        Properties properties = new Properties();
        properties.setProperty("helperDialect", "mysql");
        properties.setProperty("rowBoundsWithCount", "true");
        properties.setProperty("reasonable", "true");
        properties.setProperty("offsetAsPageNum", "true");
        properties.setProperty("pageSizeZero", "true");
        pageInterceptor.setProperties(properties);
        return pageInterceptor;
    }

    @Bean
    @ConditionalOnMissingBean
    public MybatisInterceptor dbInterceptor() {
        MybatisInterceptor interceptor = new MybatisInterceptor();
        List<MybatisInterceptorConfig> configList = new ArrayList<>();
        interceptor.setInterceptorConfigList(configList);
        return interceptor;
    }

    @Bean
    public UserDesensitizationInterceptor userDesensitizationInterceptor() {
        return new UserDesensitizationInterceptor();
    }

    @Bean
    @Primary
    @ConfigurationProperties(prefix = "spring.datasource.hikari")
    public DataSource dataSource(DataSourceProperties properties) {
        return DataSourceBuilder.create(properties.getClassLoader()).type(HikariDataSource.class)
                .driverClassName(properties.determineDriverClassName())
                .url(properties.determineUrl())
                .username(properties.determineUsername())
                .password(properties.determinePassword())
                .build();
    }
}