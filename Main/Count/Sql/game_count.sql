/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-22 17:30:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `game_count`
-- ----------------------------
DROP TABLE IF EXISTS `game_count`;
CREATE TABLE `game_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(100) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_count
-- ----------------------------
INSERT INTO `game_count` VALUES ('1', '123', '123', '123123');
