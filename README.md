# 项目结构

```
.
├── LICENSE
├── backend                                         # 后端服务
│   ├── common                                      # 通用模块
│   ├── excel                                       # 策划表和数据        
│   ├── framework                                   # 核心框架      
│   ├── jproto                                      # 前后端通信数据协议      
│   ├── server                                      # 业务模块      
│   └── netty                                       # 对外网络通信模块
├── tools                                           # 工具类
│   ├── client                                      # 压测&模拟客户端请求
│   ├── pom.xml                                     # 后端 maven 项目使用的 pom 文件
│   └── src                                         # 后端代码目录
└── pom.xml                                         # 整体 maven 项目使用的 pom 文件
```

# 配置开发环境

### 后端

后端使用了 Java 语言的 Spring Boot 框架，并使用 Maven 作为项目管理工具。开发者需要先在开发环境中安装 JDK 17 及 Maven。

#### 初始化配置
后续待补充......