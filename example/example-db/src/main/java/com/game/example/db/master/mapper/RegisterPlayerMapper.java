package com.game.example.db.master.mapper;

import com.game.example.db.master.domain.RegisterPlayer;

import java.util.List;

/**
 * 玩家注册Mapper接口
 * 
 * @author liulongling
 * @date 2024-02-24
 */
public interface RegisterPlayerMapper 
{
    /**
     * 查询玩家注册
     * 
     * @param uid 玩家注册主键
     * @return 玩家注册
     */
    public RegisterPlayer selectRegisterPlayerByUid(Long uid);

    /**
     * 查询玩家注册列表
     * 
     * @param registerPlayer 玩家注册
     * @return 玩家注册集合
     */
    public List<RegisterPlayer> selectRegisterPlayerList(RegisterPlayer registerPlayer);

    /**
     * 新增玩家注册
     * 
     * @param registerPlayer 玩家注册
     * @return 结果
     */
    public int insertRegisterPlayer(RegisterPlayer registerPlayer);

    /**
     * 修改玩家注册
     * 
     * @param registerPlayer 玩家注册
     * @return 结果
     */
    public int updateRegisterPlayer(RegisterPlayer registerPlayer);

    /**
     * 删除玩家注册
     * 
     * @param uid 玩家注册主键
     * @return 结果
     */
    public int deleteRegisterPlayerByUid(Long uid);

    /**
     * 批量删除玩家注册
     * 
     * @param uids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRegisterPlayerByUids(String[] uids);
}
