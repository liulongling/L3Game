package com.game.server.data.server.service.impl;

import java.util.List;

import cn.hutool.core.convert.Convert;
import com.game.common.utils.DateUtils;
import com.game.server.common.ServerConfig;
import com.game.server.data.server.domain.DbInfo;
import com.game.server.data.server.domain.ServerInfo;
import com.game.server.data.server.mapper.DbInfoMapper;
import com.game.server.data.server.service.IDbInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

/**
 * 数据库信息Service业务层处理
 * 
 * @author liulongling
 * @date 2024-02-17
 */
@Service
public class DbInfoServiceImpl implements IDbInfoService
{
    @Autowired
    private DbInfoMapper dbInfoMapper;

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
        List<DbInfo> dbInfos = dbInfoMapper.selectDbInfoList(new DbInfo());
        ServerConfig.addDBInfos(dbInfos);
    }


    /**
     * 查询数据库信息
     * 
     * @param id 数据库信息主键
     * @return 数据库信息
     */
    @Override
    public DbInfo selectDbInfoById(Long id)
    {
        return dbInfoMapper.selectDbInfoById(id);
    }

    /**
     * 查询数据库信息列表
     * 
     * @param dbInfo 数据库信息
     * @return 数据库信息
     */
    @Override
    public List<DbInfo> selectDbInfoList(DbInfo dbInfo)
    {
        return dbInfoMapper.selectDbInfoList(dbInfo);
    }

    /**
     * 新增数据库信息
     * 
     * @param dbInfo 数据库信息
     * @return 结果
     */
    @Override
    public int insertDbInfo(DbInfo dbInfo)
    {
        dbInfo.setCreateTime(DateUtils.getNowDate());
        return dbInfoMapper.insertDbInfo(dbInfo);
    }

    /**
     * 修改数据库信息
     * 
     * @param dbInfo 数据库信息
     * @return 结果
     */
    @Override
    public int updateDbInfo(DbInfo dbInfo)
    {
        dbInfo.setUpdateTime(DateUtils.getNowDate());
        return dbInfoMapper.updateDbInfo(dbInfo);
    }

    /**
     * 批量删除数据库信息
     * 
     * @param ids 需要删除的数据库信息主键
     * @return 结果
     */
    @Override
    public int deleteDbInfoByIds(String ids)
    {
        return dbInfoMapper.deleteDbInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除数据库信息信息
     * 
     * @param id 数据库信息主键
     * @return 结果
     */
    @Override
    public int deleteDbInfoById(Long id)
    {
        return dbInfoMapper.deleteDbInfoById(id);
    }
}
