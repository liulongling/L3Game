package com.game.example.db.master.service.impl;

import cn.hutool.core.convert.Convert;
import com.game.common.utils.DateUtils;
import com.game.example.db.common.ServerConfig;
import com.game.example.db.master.domain.ServerInfo;
import com.game.example.db.master.mapper.ServerInfoMapper;
import com.game.example.db.master.service.IServerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * 服务器信息Service业务层处理
 *
 * @author liulongling
 * @date 2024-02-17
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ServerInfoServiceImpl implements IServerInfoService
{
    @Autowired
    private ServerInfoMapper serverInfoMapper;
    /**
     * 项目启动时，初始化参数到缓存
     */
    @PostConstruct
    public void init()
    {
        loadingConfigCache();
    }

    /**
     * 加载参数缓存数据
     */
    @Override
    public void loadingConfigCache()
    {
        List<ServerInfo> serverInfos = serverInfoMapper.selectServerInfoList(new ServerInfo());
        ServerConfig.addServerInfos(serverInfos);
    }

    /**
     * 查询服务器信息
     *
     * @param serverID 服务器信息主键
     * @return 服务器信息
     */
    @Override
    public ServerInfo selectServerInfoByServerID(Long serverID)
    {
        return serverInfoMapper.selectServerInfoByServerID(serverID);
    }

    /**
     * 查询服务器信息列表
     *
     * @param serverInfo 服务器信息
     * @return 服务器信息
     */
    @Override
    public List<ServerInfo> selectServerInfoList(ServerInfo serverInfo)
    {
        return serverInfoMapper.selectServerInfoList(serverInfo);
    }

    /**
     * 新增服务器信息
     *
     * @param serverInfo 服务器信息
     * @return 结果
     */
    @Override
    public int insertServerInfo(ServerInfo serverInfo)
    {
        serverInfo.setCreateTime(DateUtils.getNowDate());
        return serverInfoMapper.insertServerInfo(serverInfo);
    }

    /**
     * 修改服务器信息
     *
     * @param serverInfo 服务器信息
     * @return 结果
     */
    @Override
    public int updateServerInfo(ServerInfo serverInfo)
    {
        serverInfo.setUpdateTime(DateUtils.getNowDate());
        return serverInfoMapper.updateServerInfo(serverInfo);
    }

    /**
     * 批量删除服务器信息
     *
     * @param serverIDs 需要删除的服务器信息主键
     * @return 结果
     */
    @Override
    public int deleteServerInfoByServerIDs(String serverIDs)
    {
        return serverInfoMapper.deleteServerInfoByServerIDs(Convert.toStrArray(serverIDs));
    }

    /**
     * 删除服务器信息信息
     *
     * @param serverID 服务器信息主键
     * @return 结果
     */
    @Override
    public int deleteServerInfoByServerID(Long serverID)
    {
        return serverInfoMapper.deleteServerInfoByServerID(serverID);
    }
}
