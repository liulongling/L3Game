# 配置开发环境

### 概况

后端使用了 Java 语言的 Spring Boot 框架，并使用 Maven 作为项目管理工具。开发者需要先在开发环境中安装 JDK 17 及 Maven。

#### 编码风格与辅助
遵循[阿里巴巴Java开发手册规约在线文档](https://kangroo.gitee.io/ajcg/#/)

#### 架构
![img.png](img.png)

#### 配置server服务启动参数：
-DpropsConfig=D:/liulongling/work/github/L3Game/config/dev -DcommonLogPath=D:/liulongling/Log -Dlogback.configurationFile=D:/liulongling/work/github/L3Game/config/dev/common/logback.xml