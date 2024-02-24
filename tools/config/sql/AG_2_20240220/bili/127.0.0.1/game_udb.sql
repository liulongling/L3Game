use game_udb_00;
CREATE TABLE `player_00` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_10` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_20` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_30` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_40` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_50` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_60` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_70` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_80` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_90` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_01;
CREATE TABLE `player_01` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_11` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_21` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_31` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_41` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_51` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_61` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_71` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_81` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_91` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_02;
CREATE TABLE `player_02` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_12` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_22` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_32` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_42` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_52` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_62` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_72` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_82` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_92` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_03;
CREATE TABLE `player_03` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_13` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_23` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_33` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_43` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_53` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_63` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_73` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_83` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_93` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_04;
CREATE TABLE `player_04` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_14` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_24` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_34` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_44` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_54` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_64` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_74` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_84` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_94` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_05;
CREATE TABLE `player_05` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_15` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_25` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_35` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_45` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_55` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_65` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_75` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_85` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_95` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_06;
CREATE TABLE `player_06` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_16` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_26` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_36` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_46` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_56` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_66` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_76` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_86` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_96` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_07;
CREATE TABLE `player_07` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_17` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_27` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_37` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_47` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_57` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_67` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_77` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_87` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_97` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_08;
CREATE TABLE `player_08` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_18` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_28` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_38` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_48` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_58` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_68` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_78` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_88` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_98` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_09;
CREATE TABLE `player_09` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_19` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_29` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_39` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_49` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_59` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_69` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_79` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_89` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_99` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_00;
CREATE TABLE `player_00` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_10` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_20` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_30` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_40` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_50` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_60` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_70` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_80` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_90` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_01;
CREATE TABLE `player_01` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_11` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_21` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_31` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_41` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_51` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_61` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_71` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_81` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_91` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_02;
CREATE TABLE `player_02` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_12` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_22` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_32` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_42` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_52` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_62` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_72` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_82` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_92` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_03;
CREATE TABLE `player_03` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_13` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_23` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_33` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_43` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_53` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_63` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_73` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_83` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_93` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_04;
CREATE TABLE `player_04` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_14` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_24` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_34` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_44` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_54` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_64` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_74` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_84` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_94` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_05;
CREATE TABLE `player_05` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_15` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_25` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_35` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_45` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_55` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_65` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_75` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_85` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_95` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_06;
CREATE TABLE `player_06` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_16` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_26` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_36` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_46` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_56` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_66` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_76` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_86` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_96` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_07;
CREATE TABLE `player_07` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_17` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_27` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_37` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_47` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_57` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_67` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_77` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_87` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_97` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_08;
CREATE TABLE `player_08` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_18` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_28` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_38` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_48` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_58` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_68` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_78` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_88` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_98` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_09;
CREATE TABLE `player_09` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_19` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_29` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_39` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_49` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_59` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_69` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_79` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_89` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_99` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_00;
CREATE TABLE `player_00` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_10` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_20` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_30` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_40` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_50` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_60` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_70` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_80` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_90` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_01;
CREATE TABLE `player_01` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_11` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_21` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_31` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_41` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_51` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_61` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_71` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_81` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_91` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_02;
CREATE TABLE `player_02` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_12` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_22` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_32` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_42` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_52` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_62` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_72` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_82` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_92` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_03;
CREATE TABLE `player_03` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_13` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_23` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_33` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_43` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_53` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_63` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_73` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_83` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_93` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_04;
CREATE TABLE `player_04` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_14` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_24` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_34` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_44` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_54` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_64` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_74` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_84` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_94` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_05;
CREATE TABLE `player_05` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_15` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_25` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_35` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_45` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_55` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_65` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_75` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_85` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_95` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_06;
CREATE TABLE `player_06` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_16` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_26` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_36` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_46` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_56` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_66` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_76` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_86` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_96` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_07;
CREATE TABLE `player_07` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_17` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_27` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_37` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_47` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_57` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_67` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_77` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_87` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_97` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_08;
CREATE TABLE `player_08` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_18` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_28` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_38` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_48` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_58` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_68` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_78` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_88` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_98` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
use game_udb_09;
CREATE TABLE `player_09` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_19` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_29` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_39` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_49` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_59` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_69` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_79` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_89` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
CREATE TABLE `player_99` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';
