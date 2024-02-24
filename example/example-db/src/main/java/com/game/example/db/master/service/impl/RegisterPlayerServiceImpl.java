package com.game.example.db.master.service.impl;

import java.util.List;

import cn.hutool.core.convert.Convert;
import com.game.common.utils.DateUtils;
import com.game.example.db.master.domain.RegisterPlayer;
import com.game.example.db.master.mapper.RegisterPlayerMapper;
import com.game.example.db.master.service.IRegisterPlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

/**
 * 玩家注册Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-02-24
 */
@Service
public class RegisterPlayerServiceImpl implements IRegisterPlayerService
{
    @Autowired
    private RegisterPlayerMapper registerPlayerMapper;


    /**
     * 项目启动时，初始化参数到缓存
     */
    @PostConstruct
    public void init()
    {
        System.out.println(registerPlayerMapper);
    }

    /**
     * 查询玩家注册
     * 
     * @param uid 玩家注册主键
     * @return 玩家注册
     */
    @Override
    public RegisterPlayer selectRegisterPlayerByUid(Long uid)
    {
        return registerPlayerMapper.selectRegisterPlayerByUid(uid);
    }

    /**
     * 查询玩家注册列表
     * 
     * @param registerPlayer 玩家注册
     * @return 玩家注册
     */
    @Override
    public List<RegisterPlayer> selectRegisterPlayerList(RegisterPlayer registerPlayer)
    {
        return registerPlayerMapper.selectRegisterPlayerList(registerPlayer);
    }

    /**
     * 新增玩家注册
     * 
     * @param registerPlayer 玩家注册
     * @return 结果
     */
    @Override
    public int insertRegisterPlayer(RegisterPlayer registerPlayer)
    {
        registerPlayer.setCreateTime(DateUtils.getNowDate());
        return registerPlayerMapper.insertRegisterPlayer(registerPlayer);
    }

    /**
     * 修改玩家注册
     * 
     * @param registerPlayer 玩家注册
     * @return 结果
     */
    @Override
    public int updateRegisterPlayer(RegisterPlayer registerPlayer)
    {
        registerPlayer.setUpdateTime(DateUtils.getNowDate());
        return registerPlayerMapper.updateRegisterPlayer(registerPlayer);
    }

    /**
     * 批量删除玩家注册
     * 
     * @param uids 需要删除的玩家注册主键
     * @return 结果
     */
    @Override
    public int deleteRegisterPlayerByUids(String uids)
    {
        return registerPlayerMapper.deleteRegisterPlayerByUids(Convert.toStrArray(uids));
    }

    /**
     * 删除玩家注册信息
     * 
     * @param uid 玩家注册主键
     * @return 结果
     */
    @Override
    public int deleteRegisterPlayerByUid(Long uid)
    {
        return registerPlayerMapper.deleteRegisterPlayerByUid(uid);
    }
}
