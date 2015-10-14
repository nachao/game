/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : fang

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-15 03:31:27
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
-- Table structure for `game_answer`
-- ----------------------------
DROP TABLE IF EXISTS `game_answer`;
CREATE TABLE `game_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(100) DEFAULT '' COMMENT '场次唯一编码',
  `time` int(11) DEFAULT '0' COMMENT '本场开始时间',
  `valid` int(11) DEFAULT '0' COMMENT '给出答案时间',
  `under` int(11) DEFAULT '0' COMMENT '本场结束时间',
  `number` int(1) DEFAULT '0' COMMENT '给出的答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_answer
-- ----------------------------
INSERT INTO `game_answer` VALUES ('1', 'e7fa95d0451ccc3a2239bbfcb8579fa7', '1444848680', '1444848730', '1444848740', '3');
INSERT INTO `game_answer` VALUES ('2', '8be0e0de68edeacae6381dbe42bb6e91', '1444848740', '1444848790', '1444848800', '3');
INSERT INTO `game_answer` VALUES ('3', '3374a87ebd9d943f7e00cf01135a4705', '1444848800', '1444848850', '1444848860', '9');
INSERT INTO `game_answer` VALUES ('4', 'f003c967469e7aa101108a08fdb045eb', '1444848860', '1444848910', '1444848920', '6');
INSERT INTO `game_answer` VALUES ('5', '126cd2064ee7b4be65678be85a047c52', '1444848920', '1444848970', '1444848980', '1');
INSERT INTO `game_answer` VALUES ('6', 'cd8b278e99de23942cc1aa3c500ce3c4', '1444848980', '1444849030', '1444849040', '6');
INSERT INTO `game_answer` VALUES ('7', '81b5ff33bf0e21db6cce308a50a788ff', '1444849040', '1444849090', '1444849100', '5');
INSERT INTO `game_answer` VALUES ('8', 'f46ef359b1505170f530e585a7719729', '1444849132', '1444849182', '1444849192', '0');
INSERT INTO `game_answer` VALUES ('9', '1122036363d4f90fbfa36bc9cb9c093c', '1444849192', '1444849242', '1444849252', '7');
INSERT INTO `game_answer` VALUES ('10', '747ca070aa39942966254a5724265369', '1444849252', '1444849302', '1444849312', '1');
INSERT INTO `game_answer` VALUES ('11', '73a15052643cef9a19887b425cba8bef', '1444849312', '1444849362', '1444849372', '3');
INSERT INTO `game_answer` VALUES ('12', '696aa066cff84bb05cde9dee2091cd64', '1444849372', '1444849422', '1444849432', '5');
INSERT INTO `game_answer` VALUES ('13', '24ec131d3ec3385866130e36ede8316e', '1444849432', '1444849482', '1444849492', '8');
INSERT INTO `game_answer` VALUES ('14', '5418186f2a83815e9fac09c1d7bb3f03', '1444849492', '1444849542', '1444849552', '1');
INSERT INTO `game_answer` VALUES ('15', 'c117a86d540397d4545d7864815a32f8', '1444849552', '1444849602', '1444849612', '7');
INSERT INTO `game_answer` VALUES ('16', '8268f82c7a9e8ddeeab0f37bb7c240cb', '1444849612', '1444849662', '1444849672', '6');
INSERT INTO `game_answer` VALUES ('17', '9d689e606b70fb877edad030d2d013c3', '1444849672', '1444849722', '1444849732', '6');
INSERT INTO `game_answer` VALUES ('18', '3967af5b684ae45d0619bc31f7e7aa14', '1444849844', '1444849894', '1444849904', '0');
INSERT INTO `game_answer` VALUES ('19', '148934254adba6b9ce81d7653491a14a', '1444849904', '1444849954', '1444849964', '8');
INSERT INTO `game_answer` VALUES ('20', '971f94fced82449d92048fb8b7046eca', '1444849964', '1444850014', '1444850024', '7');
INSERT INTO `game_answer` VALUES ('21', 'e96c35081eaad1b87f6d622696b1e482', '1444850024', '1444850074', '1444850084', '7');
INSERT INTO `game_answer` VALUES ('22', '69cc0869602624473289f9b3a50107a9', '1444850084', '1444850134', '1444850144', '6');
INSERT INTO `game_answer` VALUES ('23', 'ddad8afa1721dd428a4ec407d09a94b9', '1444850144', '1444850194', '1444850204', '6');
INSERT INTO `game_answer` VALUES ('24', 'ccec20df8080da9f9e03e119ba04721c', '1444850204', '1444850254', '1444850264', '4');
INSERT INTO `game_answer` VALUES ('25', 'e058c7bd2b33de00aedd2b3fa4ab452e', '1444850264', '1444850314', '1444850324', '9');
INSERT INTO `game_answer` VALUES ('26', 'c684465f857384635298d87c41112e70', '1444850324', '1444850374', '1444850384', '1');
INSERT INTO `game_answer` VALUES ('27', 'fbb85e83f8eea497f86f9f622b04450d', '1444850384', '1444850434', '1444850444', '9');
INSERT INTO `game_answer` VALUES ('28', 'c20b8db9f40e4f508b350c5cf01c2bda', '1444850469', '1444850519', '1444850529', '2');
INSERT INTO `game_answer` VALUES ('29', 'f0aafaf32b2ead9ac6d504c9fc6efc14', '1444850529', '1444850579', '1444850589', '5');
INSERT INTO `game_answer` VALUES ('30', 'fff82fdc03bbf83b8dd3bda55170269b', '1444850589', '1444850639', '1444850649', '8');
INSERT INTO `game_answer` VALUES ('31', '00140477378dc353415c9eb83bdbd1cd', '1444850649', '1444850699', '1444850709', '2');
INSERT INTO `game_answer` VALUES ('32', 'c009f210e4804b36bc6f1e09328f25ee', '1444850709', '1444850759', '1444850769', '6');
INSERT INTO `game_answer` VALUES ('33', '8f9d86738a4e2b5ad69f506ff48b6511', '1444850769', '1444850819', '1444850829', '3');
INSERT INTO `game_answer` VALUES ('34', 'a54f4344b59915289a04eeef99de5681', '1444850829', '1444850879', '1444850889', '5');
INSERT INTO `game_answer` VALUES ('35', '29b37ba98ef41dbc8ddd5f2dbbbdf21d', '1444850889', '1444850939', '1444850949', '4');
INSERT INTO `game_answer` VALUES ('36', '51750918214a0a32a24a7d064e5378d1', '1444850949', '1444850999', '1444851009', '2');
INSERT INTO `game_answer` VALUES ('37', 'fbab24bdc3cc9485bc72a02c8a32c481', '1444851009', '1444851059', '1444851069', '8');

-- ----------------------------
-- Table structure for `game_select`
-- ----------------------------
DROP TABLE IF EXISTS `game_select`;
CREATE TABLE `game_select` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `select` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `tag` varchar(100) DEFAULT '' COMMENT '场次唯一标示',
  `provide` int(1) DEFAULT '0' COMMENT '是否已发放积分0=没，1=已发',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_select
-- ----------------------------
INSERT INTO `game_select` VALUES ('1', 'a1', '1', '1444848687', 'e7fa95d0451ccc3a2239bbfcb8579fa7', '0');
INSERT INTO `game_select` VALUES ('2', 'a1', '1', '1444848752', '8be0e0de68edeacae6381dbe42bb6e91', '0');
INSERT INTO `game_select` VALUES ('3', 'a1', '1', '1444848771', '8be0e0de68edeacae6381dbe42bb6e91', '0');
INSERT INTO `game_select` VALUES ('4', 'a1', '1', '1444848813', '3374a87ebd9d943f7e00cf01135a4705', '0');
INSERT INTO `game_select` VALUES ('5', 'a1', '3', '1444848829', '3374a87ebd9d943f7e00cf01135a4705', '0');
INSERT INTO `game_select` VALUES ('6', 'a1', '4423', '1444848836', '3374a87ebd9d943f7e00cf01135a4705', '0');
INSERT INTO `game_select` VALUES ('7', 'a1', '1', '1444848986', 'cd8b278e99de23942cc1aa3c500ce3c4', '0');
INSERT INTO `game_select` VALUES ('8', 'a1', '2', '1444848991', 'cd8b278e99de23942cc1aa3c500ce3c4', '0');
INSERT INTO `game_select` VALUES ('9', 'a1', '2', '1444849047', '81b5ff33bf0e21db6cce308a50a788ff', '0');
INSERT INTO `game_select` VALUES ('10', 'a1', '3', '1444849055', '81b5ff33bf0e21db6cce308a50a788ff', '0');
INSERT INTO `game_select` VALUES ('11', 'a1', '1', '1444849090', '81b5ff33bf0e21db6cce308a50a788ff', '0');
INSERT INTO `game_select` VALUES ('12', 'a1', '2', '1444849144', 'f46ef359b1505170f530e585a7719729', '0');
INSERT INTO `game_select` VALUES ('13', 'a1', '3', '1444849149', 'f46ef359b1505170f530e585a7719729', '0');
INSERT INTO `game_select` VALUES ('14', 'a2', '12', '1444849200', '1122036363d4f90fbfa36bc9cb9c093c', '0');
INSERT INTO `game_select` VALUES ('15', 'a2', '11', '1444849208', '1122036363d4f90fbfa36bc9cb9c093c', '0');
INSERT INTO `game_select` VALUES ('16', 'a2', '22', '1444849216', '1122036363d4f90fbfa36bc9cb9c093c', '0');
INSERT INTO `game_select` VALUES ('17', 'a2', '1', '1444849257', '747ca070aa39942966254a5724265369', '0');
INSERT INTO `game_select` VALUES ('18', 'a2', '23', '1444849439', '24ec131d3ec3385866130e36ede8316e', '0');
INSERT INTO `game_select` VALUES ('19', 'a2', '3', '1444849497', '5418186f2a83815e9fac09c1d7bb3f03', '0');
INSERT INTO `game_select` VALUES ('20', 'a3', '1', '1444849520', '5418186f2a83815e9fac09c1d7bb3f03', '0');
INSERT INTO `game_select` VALUES ('21', 'a2', '1', '1444849721', '9d689e606b70fb877edad030d2d013c3', '0');
INSERT INTO `game_select` VALUES ('22', 'a1', '0', '1444849849', '3967af5b684ae45d0619bc31f7e7aa14', '0');
INSERT INTO `game_select` VALUES ('23', 'a2', '1', '1444849854', '3967af5b684ae45d0619bc31f7e7aa14', '0');
INSERT INTO `game_select` VALUES ('24', 'a3', '2', '1444849858', '3967af5b684ae45d0619bc31f7e7aa14', '0');
INSERT INTO `game_select` VALUES ('25', 'a1', '9', '1444850290', 'e058c7bd2b33de00aedd2b3fa4ab452e', '1');
INSERT INTO `game_select` VALUES ('26', 'a2', '1', '1444850293', 'e058c7bd2b33de00aedd2b3fa4ab452e', '0');
INSERT INTO `game_select` VALUES ('27', 'a3', '2', '1444850295', 'e058c7bd2b33de00aedd2b3fa4ab452e', '0');
INSERT INTO `game_select` VALUES ('28', 'a1', '1', '1444850347', 'c684465f857384635298d87c41112e70', '1');
INSERT INTO `game_select` VALUES ('29', 'a2', '2', '1444850349', 'c684465f857384635298d87c41112e70', '0');
INSERT INTO `game_select` VALUES ('30', 'a3', '3', '1444850350', 'c684465f857384635298d87c41112e70', '0');
INSERT INTO `game_select` VALUES ('31', 'a4', '4', '1444850360', 'c684465f857384635298d87c41112e70', '0');
INSERT INTO `game_select` VALUES ('32', 'a1', '9', '1444850417', 'fbb85e83f8eea497f86f9f622b04450d', '1');
INSERT INTO `game_select` VALUES ('33', 'a2', '1', '1444850418', 'fbb85e83f8eea497f86f9f622b04450d', '0');
INSERT INTO `game_select` VALUES ('34', 'a3', '2', '1444850420', 'fbb85e83f8eea497f86f9f622b04450d', '0');
INSERT INTO `game_select` VALUES ('35', 'a4', '1', '1444850421', 'fbb85e83f8eea497f86f9f622b04450d', '0');
INSERT INTO `game_select` VALUES ('36', 'a1', '2', '1444850476', 'c20b8db9f40e4f508b350c5cf01c2bda', '1');
INSERT INTO `game_select` VALUES ('37', 'a2', '1', '1444850480', 'c20b8db9f40e4f508b350c5cf01c2bda', '0');
INSERT INTO `game_select` VALUES ('38', 'a3', '1', '1444850481', 'c20b8db9f40e4f508b350c5cf01c2bda', '0');
INSERT INTO `game_select` VALUES ('39', 'a4', '1', '1444850483', 'c20b8db9f40e4f508b350c5cf01c2bda', '0');
INSERT INTO `game_select` VALUES ('40', 'a1', '2', '1444850668', '00140477378dc353415c9eb83bdbd1cd', '1');
INSERT INTO `game_select` VALUES ('41', 'a1', '3', '1444850815', '8f9d86738a4e2b5ad69f506ff48b6511', '1');
INSERT INTO `game_select` VALUES ('42', 'a1', '5', '1444850847', 'a54f4344b59915289a04eeef99de5681', '1');
INSERT INTO `game_select` VALUES ('43', 'a1', '4', '1444850901', '29b37ba98ef41dbc8ddd5f2dbbbdf21d', '1');
INSERT INTO `game_select` VALUES ('44', 'a1', '2', '1444850961', '51750918214a0a32a24a7d064e5378d1', '1');
INSERT INTO `game_select` VALUES ('45', 'a2', '1', '1444850978', '51750918214a0a32a24a7d064e5378d1', '0');
INSERT INTO `game_select` VALUES ('46', 'a3', '1', '1444850981', '51750918214a0a32a24a7d064e5378d1', '0');
INSERT INTO `game_select` VALUES ('47', 'a4', '1', '1444850982', '51750918214a0a32a24a7d064e5378d1', '0');

-- ----------------------------
-- Table structure for `game_status`
-- ----------------------------
DROP TABLE IF EXISTS `game_status`;
CREATE TABLE `game_status` (
  `id` int(11) NOT NULL DEFAULT '0',
  `status` int(1) DEFAULT NULL,
  `selected` varchar(3) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `select_0` int(11) DEFAULT '0',
  `select_1` int(11) DEFAULT '0',
  `select_2` int(11) DEFAULT '0',
  `select_3` int(11) DEFAULT '0',
  `select_4` int(11) DEFAULT '0',
  `select_5` int(11) DEFAULT '0',
  `select_6` int(11) DEFAULT '0',
  `select_7` int(11) DEFAULT '0',
  `select_8` int(11) DEFAULT '0',
  `select_9` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_status
-- ----------------------------
INSERT INTO `game_status` VALUES ('0', '2', '7', '1444580590', '1444580610', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `game_user`
-- ----------------------------
DROP TABLE IF EXISTS `game_user`;
CREATE TABLE `game_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) DEFAULT NULL COMMENT '授权令牌，Access_Token',
  `user` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '得分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('1', '58598B12AE21208A147D1C28645CDF86', '20746446B01F671246B702364E5750C6', '10');
INSERT INTO `game_user` VALUES ('2', '123', '123', '11');
INSERT INTO `game_user` VALUES ('3', '', '1', '10');
INSERT INTO `game_user` VALUES ('4', '', 'a', '10');
INSERT INTO `game_user` VALUES ('5', '', 'a1', '104');
INSERT INTO `game_user` VALUES ('6', '', 'a2', '-3');
INSERT INTO `game_user` VALUES ('7', '', 'a3', '3');
INSERT INTO `game_user` VALUES ('8', '', 'a4', '6');
INSERT INTO `game_user` VALUES ('9', '', 'a`1', '10');

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
