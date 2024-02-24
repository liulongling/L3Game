ALTER TABLE `player`
ADD COLUMN `channelId` int(11) NOT NULL COMMENT '渠道ID' AFTER `platformId`;