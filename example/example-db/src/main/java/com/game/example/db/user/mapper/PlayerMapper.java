package com.game.example.db.user.mapper;

import com.game.example.db.user.domain.Player;
import org.apache.ibatis.annotations.*;


/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Mapper
public interface PlayerMapper {
    /**
     * 查询玩家信息
     */
    @Select("select uid, name, level,platformId, channelId,platformUid, lastLoginTime, lastOffTime,createTime,token from player where `uid` = #{uid}")
    Player selectPlayerByUid(@Param("uid") Integer uid);

    /**
     * 查询玩家信息
     */
    @Select("select uid, name, token,level,platformId,channelId, platformUid, lastLoginTime, lastOffTime,createTime from player where `platformId` = #{platformId} and `platformUid` = #{platformUid} and channelId = #{channelId}")
    Player selectPlayerByPlatformUid(@Param("platformId") String platformId,@Param("platformUid") String platformUid,@Param("channelId") int channelId);

    @Insert({"INSERT INTO player (`uid`, name, level,platformId, platformUid, channelId,token,createTime)"+
            "VALUES(#{uid},#{name},#{level},#{platformId},#{platformUid},#{channelId},#{token},#{createTime,jdbcType=TIMESTAMP})"}
            )
    void insert(Player player);

}