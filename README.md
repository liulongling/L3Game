# 项目结构

```
.
├── L3Game
├── backend                                         # 后端服务
│   ├── common                                      # 通用模块
│   ├── excel                                       # 策划表和数据        
│   ├── framework                                   # 核心框架      
│   ├── jproto                                      # 前后端通信数据协议      
│   ├── server                                      # 业务模块      
│   └── netty                                       # 对外网络通信模块
├── tools                                           # 工具类
│   ├── client                                      # 压测&模拟客户端请求
│   ├── example-server                              # 示例
│   ├── jprotobuf                                   # jprotobuf转换成proto文件
│   └── jexcel                                      # 策划表数据转换成java表结构和数据
└── pom.xml                                         # 整体 maven 项目使用的 pom 文件
```

# 配置开发环境

### 后端

后端使用了 Java 语言的 Spring Boot 框架，并使用 Maven 作为项目管理工具。开发者需要先在开发环境中安装 JDK 17 及 Maven。

#### 编码风格与辅助
遵循[阿里巴巴Java开发手册规约在线文档](https://kangroo.gitee.io/ajcg/#/)

