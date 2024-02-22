package com.game.example.db.master.mapper;



import com.game.example.db.master.domain.ServerInfo;

import java.util.List;

/**
 * 服务器信息Mapper接口
 *
 * @author liulongling
 * @date 2024-02-17
 */
public interface ServerInfoMapper
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
     * 删除服务器信息
     *
     * @param serverID 服务器信息主键
     * @return 结果
     */
    public int deleteServerInfoByServerID(Long serverID);

    /**
     * 批量删除服务器信息
     *
     * @param serverIDs 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteServerInfoByServerIDs(String[] serverIDs);
}
