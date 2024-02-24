ALTER TABLE `player`
ADD COLUMN `lastLoginTime` datetime(0) COMMENT '最后登录时间' AFTER `token`,
ADD COLUMN `lastOffTime` datetime(0) COMMENT '最后离线时间' AFTER `lastLoginTime`;