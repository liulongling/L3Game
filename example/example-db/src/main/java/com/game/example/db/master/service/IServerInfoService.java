package com.game.example.db.master.service;


import com.game.example.db.master.domain.ServerInfo;

import java.util.List;

/**
 * 服务器信息Service接口
 *
 * @author ruoyi
 * @date 2024-02-17
 */
public interface IServerInfoService
{
    /**
     * 查询服务器信息
     *
     * @param serverID 服务器信息主键
     * @return 服务器信息
     */
    public ServerInfo selectServerInfoByServerID(Long serverID);

    /**
     * 查询服务器信息列表
     *
     * @param serverInfo 服务器信息
     * @return 服务器信息集合
     */
    public List<ServerInfo> selectServerInfoList(ServerInfo serverInfo);

    /**
     * 新增服务器信息
     *
     * @param serverInfo 服务器信息
     * @return 结果
     */
    public int insertServerInfo(ServerInfo serverInfo);

    /**
     * 修改服务器信息
     *
     * @param serverInfo 服务器信息
     * @return 结果
     */
    public int updateServerInfo(ServerInfo serverInfo);

    /**
     * 批量删除服务器信息
     *
     * @param serverIDs 需要删除的服务器信息主键集合
     * @return 结果
     */
    public int deleteServerInfoByServerIDs(String serverIDs);

    /**
     * 删除服务器信息信息
     *
     * @param serverID 服务器信息主键
     * @return 结果
     */
    public int deleteServerInfoByServerID(Long serverID);

    /**
     * 加载参数缓存数据
     */
    public void loadingConfigCache();
}
