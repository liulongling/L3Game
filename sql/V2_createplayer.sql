CREATE TABLE `player` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务器ID',
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名字',
  `platformId` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `platformUid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台uid',
  `level` int(11) NOT NULL COMMENT '角色等级',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家的token',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息';