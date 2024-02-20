package com.game.server.data.udb.mapper;

import com.game.server.data.udb.domain.Player;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;



/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Mapper
public interface PlayerMapper {
    /**
     * 查询玩家信息
     */
    @Select("select uid, name, level,platformId, platformUid, lastLoginTime, regDate,token from player where `uid` = #{uid}")
    Player selectPlayerByUid(@Param("uid") Integer uid);

    /**
     * 根据平台和平台uid查询玩家
     * @param platformId 平台
     * @param platformUid 平台uid
     */
    @Select("select uid, name, level,platformId, platformUid, lastLoginTime, regDate, commanderId from player where `platformId` = #{platformId} and `platformUid` = #{platformUid}")
    Player selectPlayerByPlatform(@Param("platformId") String platformId, @Param("platformUid") String platformUid);

    /**
     * 查询玩家数量（不区分平台渠道）
     * @return
     */
    @Select({"select count(uid) as countUid from player where platformId!='' and channelId != ''"})
    int countUid();


    /**
     * 根据uid查询玩家注册时间
     * @param uid
     * @return
     */
    @Select("select regDate from player where uid = ${uid}")
    Player playerRegDate(@Param("uid")int uid);

}