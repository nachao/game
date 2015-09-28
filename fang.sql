/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : fang

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-09-28 17:58:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `function`
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------
INSERT INTO `function` VALUES ('0', '列表');
INSERT INTO `function` VALUES ('1', '图集');
INSERT INTO `function` VALUES ('2', '评论');
INSERT INTO `function` VALUES ('3', '文本');

-- ----------------------------
-- Table structure for `function_comment`
-- ----------------------------
DROP TABLE IF EXISTS `function_comment`;
CREATE TABLE `function_comment` (
  `id` int(11) NOT NULL DEFAULT '0',
  `function_id` int(11) DEFAULT '2' COMMENT '对应的功能',
  `menu_id` int(11) DEFAULT '0' COMMENT '对应的菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function_comment
-- ----------------------------
INSERT INTO `function_comment` VALUES ('0', '1', '0');

-- ----------------------------
-- Table structure for `function_img`
-- ----------------------------
DROP TABLE IF EXISTS `function_img`;
CREATE TABLE `function_img` (
  `id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) DEFAULT '0' COMMENT '对应的菜单',
  `function_id` int(11) DEFAULT '1' COMMENT '对应的功能',
  `src` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function_img
-- ----------------------------
INSERT INTO `function_img` VALUES ('0', '0', '1', 'http://gb.cri.cn/42071/2015/09/28/7211s5117323_1.htm', null);

-- ----------------------------
-- Table structure for `function_list`
-- ----------------------------
DROP TABLE IF EXISTS `function_list`;
CREATE TABLE `function_list` (
  `id` int(11) NOT NULL DEFAULT '0',
  `function_id` int(11) DEFAULT '0' COMMENT '对应的功能',
  `menu_id` int(11) DEFAULT '0' COMMENT '对应的菜单',
  `src` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `depict` varchar(100) DEFAULT NULL COMMENT '描述',
  `love` int(11) DEFAULT NULL COMMENT '点赞量',
  `comment` int(11) DEFAULT NULL COMMENT '评论量',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function_list
-- ----------------------------
INSERT INTO `function_list` VALUES ('0', '1', '0', 'http://gb.cri.cn/42071/2015/09/28/7211s5117323_1.htm', null, null, null, null, null);

-- ----------------------------
-- Table structure for `function_text`
-- ----------------------------
DROP TABLE IF EXISTS `function_text`;
CREATE TABLE `function_text` (
  `id` int(11) NOT NULL DEFAULT '0',
  `function_id` int(11) DEFAULT '4' COMMENT '对应的功能',
  `menu_id` int(11) DEFAULT '0' COMMENT '对应的菜单',
  `depict` varchar(100) DEFAULT NULL COMMENT '描述',
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function_text
-- ----------------------------
INSERT INTO `function_text` VALUES ('0', '1', '0', null, null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `hint` varchar(100) DEFAULT NULL COMMENT '简介',
  `detail` text COMMENT '详细',
  `image` varchar(100) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0', '校妆', '一个大学生化妆网站', '', null);
INSERT INTO `menu` VALUES ('1', '民族', '名族的就是世界的', null, null);
INSERT INTO `menu` VALUES ('2', '个人中心', '这里都是秘密', null, null);
