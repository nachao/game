/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-17 16:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_answer
-- ----------------------------
INSERT INTO `game_answer` VALUES ('89', '769fdcfc84261fa617def19e909fcba3', '1445055198', '1445055788', '1445055798', '1');
INSERT INTO `game_answer` VALUES ('90', 'db6874edc4a9973a81dd269efad1f0d9', '1445055798', '1445056388', '1445056398', '6');
INSERT INTO `game_answer` VALUES ('91', '0845387fb0dc2812120ab197d6eef9e0', '1445056398', '1445056988', '1445056998', '9');
INSERT INTO `game_answer` VALUES ('92', '10bcf3edf6d32f5fed8053da0f7200f9', '1445056998', '1445057588', '1445057598', '6');
INSERT INTO `game_answer` VALUES ('93', '1614c618e12c4b3d7fe4aa3878aab393', '1445057598', '1445058188', '1445058198', '8');
INSERT INTO `game_answer` VALUES ('94', 'ee0bb9687cb124c56b14a57954c4e3f5', '1445058198', '1445058788', '1445058798', '4');
INSERT INTO `game_answer` VALUES ('95', 'b210219d1d837becef040a502f525e4d', '1445058798', '1445059388', '1445059398', '9');
INSERT INTO `game_answer` VALUES ('96', 'eb7d814f6ade82b1a7d44383f3f3b4b0', '1445059399', '1445059989', '1445059999', '5');
INSERT INTO `game_answer` VALUES ('97', '93c1b53969f10b61c9e6890927110f73', '1445059999', '1445060589', '1445060599', '4');
INSERT INTO `game_answer` VALUES ('98', '5297e22000be9126e4aa4762a200dfb8', '1445060599', '1445061189', '1445061199', '5');
INSERT INTO `game_answer` VALUES ('99', 'b09fa29b48e1d03a83b209264b48b4d4', '1445061199', '1445061789', '1445061799', '9');
INSERT INTO `game_answer` VALUES ('100', '273954aa317b4625922bd38dd510967b', '1445061799', '1445062389', '1445062399', '2');
INSERT INTO `game_answer` VALUES ('101', 'aedc8a02a1a104c2a86f5f15c307ca46', '1445062399', '1445062989', '1445062999', '9');
INSERT INTO `game_answer` VALUES ('102', '5ea57ead91db6af4d0ce6df654bc4d0c', '1445062999', '1445063589', '1445063599', '2');
INSERT INTO `game_answer` VALUES ('103', '2ea19ff549ee041b3433cd05d1656ffd', '1445063599', '1445064189', '1445064199', '3');
INSERT INTO `game_answer` VALUES ('104', '422c43dded22a788506482042edd12a9', '1445064199', '1445064789', '1445064799', '8');
INSERT INTO `game_answer` VALUES ('105', '26e5552533d2db88751562a0206b5a58', '1445064799', '1445065389', '1445065399', '4');
INSERT INTO `game_answer` VALUES ('106', '097260cef9acc7008f9606e312fd8d1d', '1445065399', '1445065989', '1445065999', '5');
INSERT INTO `game_answer` VALUES ('107', '3cf62c4ee7ceaf4680ab0a7a2246c6fc', '1445065999', '1445066589', '1445066599', '2');
INSERT INTO `game_answer` VALUES ('108', '4ab2995149053ffdb4319908459ed5c3', '1445066599', '1445067189', '1445067199', '9');
INSERT INTO `game_answer` VALUES ('109', 'f9a1e9d57d256be804a9f34ceba5c52a', '1445067199', '1445067789', '1445067799', '7');
INSERT INTO `game_answer` VALUES ('110', 'd0e59455339a17677ee64817405db42a', '1445067799', '1445068389', '1445068399', '5');
INSERT INTO `game_answer` VALUES ('111', 'fa7fb6bdf20e285b1b236df8729dcfbd', '1445068400', '1445068990', '1445069000', '9');
INSERT INTO `game_answer` VALUES ('112', 'c33309ca01c0e5ad4928b77b791f4a9a', '1445069000', '1445069590', '1445069600', '5');
INSERT INTO `game_answer` VALUES ('113', '53dceb87b011b8b530382d6fc583dc54', '1445069600', '1445070190', '1445070200', '8');
INSERT INTO `game_answer` VALUES ('114', 'bba59952a3772e6d905f0e0eaeb28702', '1445070200', '1445070790', '1445070800', '3');
INSERT INTO `game_answer` VALUES ('115', '7551d4fcc1f880d4350f8756b2ca8565', '1445070800', '1445071390', '1445071400', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_select
-- ----------------------------
INSERT INTO `game_select` VALUES ('88', '8c38f2b6b92e5bfe4e48831af6ae6aee', '6', '1445059199', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('89', '9870a2814efc60ed310d2e7ead315616', '6', '1445059217', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('90', 'bb0af0869b45ccac5fd11c2937410d5d', '6', '1445059219', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('91', '5d8c8038fbe7967ef7ec251a71df9475', '6', '1445059222', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('92', '3ec6c92e6581a6a7bcfdfd680373c92c', '6', '1445059225', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('93', 'c2efa50c97a7635f19c1c8e72389719f', '6', '1445059228', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('94', 'b0035d8ddde84294925a5fb6d51ee54f', '6', '1445059230', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('95', 'af117bf310ff3d134b81a8a2e9095d37', '6', '1445059233', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('96', '07cdee19778958924bd838c5127b483e', '7', '1445059234', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('97', 'a447f7c6b40f33e8d478306d46ded535', '7', '1445059236', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('98', '84aa15586e5f028ccbb63fd6805f651d', '5', '1445059237', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('99', 'ba155d26820fc238daec4aa8d0454e73', '4', '1445059238', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('100', '390745b78d83d1951ecf8c7a4851831d', '6', '1445059240', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('101', '5c0eff36adc6c73bf07b14e91de38f8b', '2', '1445059241', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('102', 'e90af6e12ef115104a7dfe00b99b86c1', '1', '1445059244', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('103', '03c2dfc9ea44875beac4c34f1f97da6a', '3', '1445059246', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('104', '90a0e41ea15c84d472ab56c7b2f3d48b', '8', '1445059254', 'b210219d1d837becef040a502f525e4d', '0');
INSERT INTO `game_select` VALUES ('105', 'f6af38342860bad4951aa4235e9ca90e', '6', '1445059552', 'eb7d814f6ade82b1a7d44383f3f3b4b0', '0');
INSERT INTO `game_select` VALUES ('106', '9870a2814efc60ed310d2e7ead315616', '4', '1445059573', 'eb7d814f6ade82b1a7d44383f3f3b4b0', '0');
INSERT INTO `game_select` VALUES ('107', '62337cc724dc321abadcb8b7afa64aef', '4', '1445059623', 'eb7d814f6ade82b1a7d44383f3f3b4b0', '0');

-- ----------------------------
-- Table structure for `game_sponsor`
-- ----------------------------
DROP TABLE IF EXISTS `game_sponsor`;
CREATE TABLE `game_sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(100) DEFAULT '' COMMENT '赞助用户id',
  `sid` varchar(100) DEFAULT '' COMMENT '赞助唯一标示',
  `title` varchar(100) DEFAULT '' COMMENT '赞助名称',
  `price` int(11) DEFAULT '0' COMMENT '单价',
  `number` int(11) DEFAULT '0' COMMENT '赞助剩余数量',
  `time` int(11) DEFAULT '0' COMMENT '赞助时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_sponsor
-- ----------------------------

-- ----------------------------
-- Table structure for `game_sponsor_receive`
-- ----------------------------
DROP TABLE IF EXISTS `game_sponsor_receive`;
CREATE TABLE `game_sponsor_receive` (
  `id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT NULL COMMENT '领取的用户id',
  `sid` int(11) DEFAULT NULL COMMENT '领取的赞助id',
  `time` int(11) DEFAULT '0' COMMENT '兑换时间',
  `remark` text COMMENT '兑换时用户给的兑换到目标位置的信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_sponsor_receive
-- ----------------------------

-- ----------------------------
-- Table structure for `game_user`
-- ----------------------------
DROP TABLE IF EXISTS `game_user`;
CREATE TABLE `game_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL COMMENT '授权令牌，Access_Token',
  `user` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '得分',
  `status` int(11) DEFAULT '0' COMMENT '当前状态0=未登录，xxxx=最近活动时间，没结束一场就上报一次活动时间',
  `key` varchar(100) DEFAULT '' COMMENT '登录钥匙',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('2', '9870a2814efc60ed310d2e7ead315616', 'a1', '10', '1445059569', 'db9129589e647de1fed49af5083f4f92');
INSERT INTO `game_user` VALUES ('3', '8c38f2b6b92e5bfe4e48831af6ae6aee', 'ff', '10', '0', '2b7c3a03376be6a07b423ba2bc1c6cff');
INSERT INTO `game_user` VALUES ('4', 'bb0af0869b45ccac5fd11c2937410d5d', 'a2', '10', '0', '43d7703d55bf0742ce6cb63318992590');
INSERT INTO `game_user` VALUES ('5', '5d8c8038fbe7967ef7ec251a71df9475', 'a3', '10', '0', 'c9c3b0a87123870d5c37e4e2f13c5701');
INSERT INTO `game_user` VALUES ('6', '3ec6c92e6581a6a7bcfdfd680373c92c', 'a11', '10', '0', '08d97c7535d98c8ab10daa33d2647e2c');
INSERT INTO `game_user` VALUES ('7', 'c2efa50c97a7635f19c1c8e72389719f', 'a22', '10', '0', '69205190a6a3896728dd8fee342fdd16');
INSERT INTO `game_user` VALUES ('8', 'b0035d8ddde84294925a5fb6d51ee54f', 'a12', '10', '0', 'f70936b7b8baba270807a3960c116285');
INSERT INTO `game_user` VALUES ('9', 'af117bf310ff3d134b81a8a2e9095d37', 'a123', '10', '0', '6c1ef2121c505eebc05a115b999f53e6');
INSERT INTO `game_user` VALUES ('10', '07cdee19778958924bd838c5127b483e', 'a1234', '10', '0', '8ab2c3b294efa8ae46b3b124e4b0c8c4');
INSERT INTO `game_user` VALUES ('11', 'a447f7c6b40f33e8d478306d46ded535', 'a12345', '10', '0', 'dba9a7e4323fafd1f3230596e9732e58');
INSERT INTO `game_user` VALUES ('12', '84aa15586e5f028ccbb63fd6805f651d', 'a123456', '10', '0', '88ae51cf1500a815eb42e225bdc0dfd7');
INSERT INTO `game_user` VALUES ('13', 'ba155d26820fc238daec4aa8d0454e73', 'a1234567', '10', '0', '0b83a721ed7c3ef4f171ba1cd5b10cc7');
INSERT INTO `game_user` VALUES ('14', '390745b78d83d1951ecf8c7a4851831d', 'a12345678', '10', '0', '9f2c8b69378adc8deb13403119f51b14');
INSERT INTO `game_user` VALUES ('15', 'fb160bc206e50507e61a92127b5f47b4', 'a123456789', '10', '0', '421734986cc3588ce1e9f8dd15e69e48');
INSERT INTO `game_user` VALUES ('16', '5c0eff36adc6c73bf07b14e91de38f8b', 'a1234567890', '10', '0', 'acf51eb31f844169db33e25c77cdcf34');
INSERT INTO `game_user` VALUES ('17', 'e90af6e12ef115104a7dfe00b99b86c1', 'a12345678901', '10', '0', '533aed096f77c24ebaed37a0aae9c68a');
INSERT INTO `game_user` VALUES ('18', '94ca9b9506e5bed4d6dd5f8c31ed1a31', 'a123456789011', '10', '0', '05fab2fc044bb06263236185c89b60fe');
INSERT INTO `game_user` VALUES ('19', '03c2dfc9ea44875beac4c34f1f97da6a', 'a1234567890111', '10', '0', '4c9ab15347d59b4a75498205117d136d');
INSERT INTO `game_user` VALUES ('20', '90a0e41ea15c84d472ab56c7b2f3d48b', 'f', '10', '0', '6a1ff3f88bc54619550f2d0278f7bcfd');
INSERT INTO `game_user` VALUES ('21', '334337e1104d5f115947014488f0b5ba', 'fff', '10', '1445059538', '1ea678a96914ecd1dd208795a05c4603');
INSERT INTO `game_user` VALUES ('22', 'f6af38342860bad4951aa4235e9ca90e', 'a', '10', '0', 'db9129589e647de1fed49af5083f4f92');
INSERT INTO `game_user` VALUES ('23', '62337cc724dc321abadcb8b7afa64aef', 'a12', '9', '1445059622', 'ca9eaacf79555b2a1ab38c7053c0a3dc');
INSERT INTO `game_user` VALUES ('24', 'e39c2c943de64e9a5a43583573d66373', 'a1', '10', '1445059745', 'a67a39818bcf751f33f7127d4651ed53');
INSERT INTO `game_user` VALUES ('25', '3a701c58a2eb119272b2990300b2f454', 'a1', '10', '1445060501', '503611bce89c79cd80d45316843dc79f');
INSERT INTO `game_user` VALUES ('26', '16adf9de59008bd8027887657e44c7c8', 'a1', '10', '1445060506', '2ae61e763b255e56ed0c758f3dcf9608');
