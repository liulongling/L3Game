package com.game.framework.db.common;

import com.game.framework.db.master.domain.DbInfo;
import com.game.framework.db.master.domain.ServerInfo;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toList;

/**
 * @author: liulongling
 * @date: 2024/2/20
 */
@Slf4j
public final class ServerConfig {
    /**
     * 服务器信息
     */
    public static Map<Integer, ServerInfo> serverInfos = new HashMap<>();
    /**
     * 数据库信息
     */
    public static Map<String, DbInfo> dbInfos = new HashMap<>();

    /**
     * 玩家数据库数量
     */
    public static int udbCount;

    private ServerConfig() {

    }

    public static void addServerInfos(List<ServerInfo> serverInfoList) {
        for (ServerInfo serverInfo : serverInfoList) {
            putServerInfo(serverInfo.getServerID(), serverInfo);
        }
    }

    public static void addDBInfos(List<DbInfo> dbInfos) {
        for (DbInfo dbInfo : dbInfos) {
            putDBInfo(dbInfo.getGameDBName(), dbInfo);
        }
    }


    public static void putServerInfo(Integer id, ServerInfo serverInfo) {
        serverInfos.putIfAbsent(id, serverInfo);
    }

    public static void putDBInfo(String dbname, DbInfo dbInfo) {
        dbInfos.putIfAbsent(dbname, dbInfo);
    }

    /**
     * 数据库数量
     *
     * @return
     */
    public static int getUdbCount() {
        if (udbCount == 0) {
            int i = 0;
            for (DbInfo dbInfo : dbInfos.values()) {
                if (dbInfo.getType() == 1) {
                    i++;
                }
            }
            udbCount = i;
        }
        return udbCount;
    }

    public static List<Integer> getUdbList() {
        return dbInfos.values().stream().filter(x -> x.getType() == 1).map(DbInfo::getId).collect(toList());
    }

    public static String getDBName(int uid) {
        if (uid == 0) {
            return dbInfos.get(0).getGameDBName();
        }
        return dbInfos.get(uid % udbCount + 1).getGameDBName();
    }

    public static int getDBId(int uid) {
        if (uid == 0) {
            return dbInfos.get(0).getId();
        }
        return dbInfos.get(uid % udbCount + 1).getId();
    }
}
