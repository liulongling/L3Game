package com.game.server.data.server.domain;


import lombok.Data;

/**
 * 数据库信息对象 db_info
 *
 * @author liulongling
 * @date 2024-02-17
 */
@Data
public class DbInfo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 唯一ID
     */
    private Integer id;

    /**
     * 1:user库 2:log 3:统计 4:gm
     */
    private Byte type;

    /**
     * 可写权限数据库ip
     */
    private String writeHost;

    /**
     * 可写权限数据库端口
     */
    private Integer writePort;

    /**
     * 只读权限数据库ip
     */
    private String readHost;

    /**
     * 只读权限数据库端口
     */
    private Integer readPort;

    /**
     * 数据库名
     */
    private String gameDBName;

    /**
     * 可写权限数据库账号
     */
    private String writeUserName;

    /**
     * 可写权限数据库密码
     */
    private String writeUserPwd;

    /**
     * 只读权限数据库账号
     */
    private String readUserName;

    /**
     * 只读权限数据库密码
     */
    private String readUserPwd;
}
