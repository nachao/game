/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-19 00:07:23
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

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
INSERT INTO `game_answer` VALUES ('116', 'f1af0387d17d29580c1360165a2f43ae', '1445160303', '1445160893', '1445160903', '2');
INSERT INTO `game_answer` VALUES ('117', '3ce8195a15b71ee8d9a7a22dddfdcf98', '1445160903', '1445161493', '1445161503', '1');
INSERT INTO `game_answer` VALUES ('118', 'e05269aaf52ba28a441783c49c36986e', '1445161503', '1445162093', '1445162103', '9');
INSERT INTO `game_answer` VALUES ('119', '6833d0d6f7b81151215b714bcd60139d', '1445162103', '1445162693', '1445162703', '1');
INSERT INTO `game_answer` VALUES ('120', 'd1aba3448d7ae1f43b5addd689adfc81', '1445162703', '1445163293', '1445163303', '1');
INSERT INTO `game_answer` VALUES ('121', '51f00e6853c1a3c7746b3e03d4929241', '1445163303', '1445163893', '1445163903', '1');
INSERT INTO `game_answer` VALUES ('122', '1a302f25732f5f9c10a5500768521e5a', '1445163903', '1445164493', '1445164503', '8');
INSERT INTO `game_answer` VALUES ('123', '97e133423498333de14a54437ab0bd0e', '1445164503', '1445165093', '1445165103', '2');
INSERT INTO `game_answer` VALUES ('124', '8f0570c3c93bdc2b5d1cbefa7a18910e', '1445165103', '1445165693', '1445165703', '9');
INSERT INTO `game_answer` VALUES ('125', '95ae243069f188fe6aa504c48f31139d', '1445165703', '1445166293', '1445166303', '8');
INSERT INTO `game_answer` VALUES ('126', '7586a5e59a15c55e9fc2d1e2c1f0b9b6', '1445166303', '1445166893', '1445166903', '7');
INSERT INTO `game_answer` VALUES ('127', 'b0726f71d1a6773f567e505a0757ffd8', '1445166903', '1445167493', '1445167503', '4');
INSERT INTO `game_answer` VALUES ('128', 'c25cab1c037dd7f4fcd4cd8b2910192c', '1445167503', '1445168093', '1445168103', '5');
INSERT INTO `game_answer` VALUES ('129', '0838871499b615a880f3b1232a4bc922', '1445168103', '1445168693', '1445168703', '5');
INSERT INTO `game_answer` VALUES ('130', 'a1b303ac26793c472146f2ee28a43c7a', '1445168703', '1445169293', '1445169303', '8');
INSERT INTO `game_answer` VALUES ('131', '48f1389138613310194fd7f3c027900b', '1445169304', '1445169894', '1445169904', '9');
INSERT INTO `game_answer` VALUES ('132', '89ef942b5a5e97ba062ae00609d0ba41', '1445169904', '1445170494', '1445170504', '9');
INSERT INTO `game_answer` VALUES ('133', '53fb5babe41aba08ddbbc7aba0e4398f', '1445170504', '1445171094', '1445171104', '0');
INSERT INTO `game_answer` VALUES ('134', 'b6f9667899efcc1806baa5bbf49bf982', '1445171104', '1445171694', '1445171704', '3');
INSERT INTO `game_answer` VALUES ('135', 'c4e757ec984c039f8c33b0c634a0d2d8', '1445171704', '1445172294', '1445172304', '3');
INSERT INTO `game_answer` VALUES ('136', 'c68e8ad95c37e20a318636c13be701c5', '1445172304', '1445172894', '1445172904', '9');
INSERT INTO `game_answer` VALUES ('137', '7c4162235dfc08cfc2c01e38ad0948ed', '1445172904', '1445173494', '1445173504', '8');
INSERT INTO `game_answer` VALUES ('138', 'bb497066b0d281ce6acec342125b79b7', '1445173504', '1445174094', '1445174104', '6');
INSERT INTO `game_answer` VALUES ('139', '34f4a0e02fbc70c8c8488b3c5f0fbc88', '1445174104', '1445174694', '1445174704', '5');
INSERT INTO `game_answer` VALUES ('140', '7bcc8a46d30dec52c329739b8548dbf4', '1445174704', '1445175294', '1445175304', '8');
INSERT INTO `game_answer` VALUES ('141', 'bcb854610ec866b4cd5ac3ff6a9e8500', '1445175304', '1445175894', '1445175904', '6');
INSERT INTO `game_answer` VALUES ('142', 'ce54e0c02879c5719437c97a29f4c4d5', '1445175904', '1445176494', '1445176504', '6');
INSERT INTO `game_answer` VALUES ('143', '4482cff8b86ff6fa27439ef125aa8cac', '1445176504', '1445177094', '1445177104', '4');
INSERT INTO `game_answer` VALUES ('144', 'c08bd9dfa1614e610f5e7920c597af36', '1445177104', '1445177694', '1445177704', '2');
INSERT INTO `game_answer` VALUES ('145', 'c9c25cb3e492fe115048fb336a640f03', '1445177704', '1445178294', '1445178304', '9');
INSERT INTO `game_answer` VALUES ('146', '32f2405aa66691f7f84d4735899de930', '1445178304', '1445178894', '1445178904', '8');
INSERT INTO `game_answer` VALUES ('147', '87b8570269a963b0c4d445ad4757fce7', '1445178904', '1445179494', '1445179504', '8');
INSERT INTO `game_answer` VALUES ('148', '7d1e971043cba50d1f64ad2ef2d54b32', '1445179504', '1445180094', '1445180104', '4');
INSERT INTO `game_answer` VALUES ('149', '6f4dc0a759ca68666c2235122a66cdd1', '1445180104', '1445180694', '1445180704', '3');
INSERT INTO `game_answer` VALUES ('150', 'b259dc9ec9f4acf1667ebdf303fb080d', '1445180704', '1445181294', '1445181304', '2');
INSERT INTO `game_answer` VALUES ('151', 'ab598ceca73de08e25d0f970ed3132e5', '1445181304', '1445181894', '1445181904', '5');
INSERT INTO `game_answer` VALUES ('152', '54a92f58f452984c9b55f55319d91f7e', '1445181905', '1445182495', '1445182505', '0');
INSERT INTO `game_answer` VALUES ('153', '6ebf1baa8e90a6dc8f0efcc3bc2b2f44', '1445182505', '1445183095', '1445183105', '4');
INSERT INTO `game_answer` VALUES ('154', '24587a03944c4f7c3a4a39f7459a3431', '1445183105', '1445183695', '1445183705', '3');
INSERT INTO `game_answer` VALUES ('155', '415522a461f81d7c2d82090b4bb2e4ae', '1445183705', '1445184295', '1445184305', '5');
INSERT INTO `game_answer` VALUES ('156', '88e874bc3510a2e54e60cef2dfe64ddc', '1445184305', '1445184895', '1445184905', '4');

-- ----------------------------
-- Table structure for `game_mode`
-- ----------------------------
DROP TABLE IF EXISTS `game_mode`;
CREATE TABLE `game_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_id` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL COMMENT '备注，游戏的话，则是分区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mode
-- ----------------------------
INSERT INTO `game_mode` VALUES ('6', '1361b0a01d4d2b12db59da179db58efb', 'bb0af0869b45ccac5fd11c2937410d5d', '357586693', 'qonsecpm', '1445176672', '1', '2');
INSERT INTO `game_mode` VALUES ('10', '1bd6ee74bc525e124deb1187268da109', 'bb0af0869b45ccac5fd11c2937410d5d', '641600670', '命名为老A', '1445177660', '1', '10');
INSERT INTO `game_mode` VALUES ('12', 'c2bf1a78e8c0c8b3d2f612ec4ff191b5', 'bb0af0869b45ccac5fd11c2937410d5d', '641600670', 'Mr.阿斯达', '1445180747', '1', '6');
INSERT INTO `game_mode` VALUES ('13', '12f88bbdc2fb0e5d4748918a2b552354', 'bb0af0869b45ccac5fd11c2937410d5d', '15680033681', '那超', '1445182204', '2', '1');
INSERT INTO `game_mode` VALUES ('18', '6fd0941a712e14de09d49f8600e2ff30', '9870a2814efc60ed310d2e7ead315616', '641600670', 'qonsecom', '1445183674', '1', '2');
INSERT INTO `game_mode` VALUES ('20', '5b5ed9efe270a1df40944ccdc90f39f5', '9870a2814efc60ed310d2e7ead315616', '357586693', '命名为老A', '1445183977', '1', '10');
INSERT INTO `game_mode` VALUES ('22', 'fc82f236517ed76fef96441ba909a92f', '9870a2814efc60ed310d2e7ead315616', '123', '123123', '1445184088', '1', '1');
INSERT INTO `game_mode` VALUES ('23', 'ec77492d658fdd89686f951d97ed0b54', '9870a2814efc60ed310d2e7ead315616', '1231', '3123123', '1445184113', '1', '10');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('2', '9870a2814efc60ed310d2e7ead315616', 'a1', '10', '0', '72b047db98633ffa1d5c619eca9e3373');
INSERT INTO `game_user` VALUES ('3', '8c38f2b6b92e5bfe4e48831af6ae6aee', 'ff', '10', '0', '2b7c3a03376be6a07b423ba2bc1c6cff');
INSERT INTO `game_user` VALUES ('4', 'bb0af0869b45ccac5fd11c2937410d5d', 'a2', '10', '0', '32c2f676bfb1d2089e20967fb6e1beec');
INSERT INTO `game_user` VALUES ('5', '5d8c8038fbe7967ef7ec251a71df9475', 'a3', '10', '0', '0176b26820beb392afa0ab64655f2d5d');
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
INSERT INTO `game_user` VALUES ('22', 'f6af38342860bad4951aa4235e9ca90e', 'a', '10', '0', '1ef66f4f1719eec41ea65931ad12b213');
INSERT INTO `game_user` VALUES ('23', '62337cc724dc321abadcb8b7afa64aef', 'a12', '9', '1445059622', 'ca9eaacf79555b2a1ab38c7053c0a3dc');
INSERT INTO `game_user` VALUES ('24', 'e39c2c943de64e9a5a43583573d66373', 'a1', '10', '1445059745', 'a67a39818bcf751f33f7127d4651ed53');
INSERT INTO `game_user` VALUES ('25', '3a701c58a2eb119272b2990300b2f454', 'a1', '10', '1445060501', '503611bce89c79cd80d45316843dc79f');
INSERT INTO `game_user` VALUES ('26', '16adf9de59008bd8027887657e44c7c8', 'a1', '10', '1445060506', '2ae61e763b255e56ed0c758f3dcf9608');
INSERT INTO `game_user` VALUES ('27', '22d05ddffcdabc6f6ecce8d9f12688af', 'a5123', '100', '0', '51125a16712ef61addc10946f4c4a6ad');
INSERT INTO `game_user` VALUES ('28', '2e5de02d6dac1871e6f3ea399cc2e26d', '2', '100', '0', '458c6102c9b2c4f980fb198a2395d0f9');
INSERT INTO `game_user` VALUES ('29', '6573330635d40bb16fa6abd112b611f5', 'a1123', '100', '0', '248848a88954677225c12c5f6be1ba4b');
INSERT INTO `game_user` VALUES ('30', '61393bc2d2466a835d968df93125e7b4', 'a33', '100', '0', '4b139ed3923148906fb4f696fa8b1633');
INSERT INTO `game_user` VALUES ('31', '122a86d2ddb448722da55efc3df8bc49', 'a333', '100', '1445184412', '1b976f5460db78a438e808594dc5d082');
