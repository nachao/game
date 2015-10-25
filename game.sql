/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-26 00:44:54
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
-- Table structure for `game_count`
-- ----------------------------
DROP TABLE IF EXISTS `game_count`;
CREATE TABLE `game_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_count
-- ----------------------------
INSERT INTO `game_count` VALUES ('14', 'ff2e109b0b76fb56c655a8a0ee1b625a', '32300', '1445745456');
INSERT INTO `game_count` VALUES ('17', '9f18dfbe0a165b582a91f5e5d429b159', '26800', '1445749116');
INSERT INTO `game_count` VALUES ('86', '3d45d98c13c99df38a23dd3a4be9a5a8', '7200', '1445751648');
INSERT INTO `game_count` VALUES ('88', 'a338b2b75464f8873c31d0f95c16bad0', '7200', '1445755085');
INSERT INTO `game_count` VALUES ('89', '9870a2814efc60ed310d2e7ead315616', '4900', '1445757325');
INSERT INTO `game_count` VALUES ('90', 'bb0af0869b45ccac5fd11c2937410d5d', '8000', '1445757449');
INSERT INTO `game_count` VALUES ('91', '5d8c8038fbe7967ef7ec251a71df9475', '5000', '1445757515');
INSERT INTO `game_count` VALUES ('92', '247ef39b877dc6533d2c588f71643dae', '5200', '1445757554');
INSERT INTO `game_count` VALUES ('93', '92653473c6cb31d94f7361550a5638ab', '5400', '1445757577');
INSERT INTO `game_count` VALUES ('94', '622199fea23d4e0761ad50b9eba7bb5f', '10100', '1445757634');
INSERT INTO `game_count` VALUES ('95', '8856baa6b92525a704f4778a471ceddf', '8400', '1445757709');
INSERT INTO `game_count` VALUES ('96', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758185');
INSERT INTO `game_count` VALUES ('97', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('98', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('99', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('100', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('101', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('102', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('103', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('104', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758204');
INSERT INTO `game_count` VALUES ('105', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('106', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('107', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('108', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('109', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('110', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('111', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('112', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('113', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('114', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758205');
INSERT INTO `game_count` VALUES ('115', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('116', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('117', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('118', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('119', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('120', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('121', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('122', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('123', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('124', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758206');
INSERT INTO `game_count` VALUES ('125', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('126', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('127', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('128', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('129', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('130', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('131', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('132', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758207');
INSERT INTO `game_count` VALUES ('133', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758208');
INSERT INTO `game_count` VALUES ('134', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758209');
INSERT INTO `game_count` VALUES ('135', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');
INSERT INTO `game_count` VALUES ('136', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');
INSERT INTO `game_count` VALUES ('137', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');
INSERT INTO `game_count` VALUES ('138', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');
INSERT INTO `game_count` VALUES ('139', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');
INSERT INTO `game_count` VALUES ('140', '8856baa6b92525a704f4778a471ceddf', '6500', '1445758210');

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
  `type` int(1) DEFAULT NULL COMMENT '1=lol;2=a',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注，游戏的话，则是分区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mode
-- ----------------------------
INSERT INTO `game_mode` VALUES ('6', '1361b0a01d4d2b12db59da179db58efb', 'bb0af0869b45ccac5fd11c2937410d5d', '357586693', 'qonsecpm', '1445176672', '1', '10');
INSERT INTO `game_mode` VALUES ('13', '12f88bbdc2fb0e5d4748918a2b552354', 'bb0af0869b45ccac5fd11c2937410d5d', '15680033681', '那超', '1445182204', '2', '1');
INSERT INTO `game_mode` VALUES ('18', '6fd0941a712e14de09d49f8600e2ff30', '9870a2814efc60ed310d2e7ead315616', '641600670', 'qonsecom', '1445183674', '1', '2');
INSERT INTO `game_mode` VALUES ('20', '5b5ed9efe270a1df40944ccdc90f39f5', '9870a2814efc60ed310d2e7ead315616', '357586693', '命名为老A', '1445183977', '1', '10');
INSERT INTO `game_mode` VALUES ('24', '77f87b52192ce6bf6cea029c1471a68e', '21f1ab8bd5e891594873e8bc3ed87750', '15680033681', '那超', '1445263463', '2', '1');
INSERT INTO `game_mode` VALUES ('25', '9924e64c53d7d51d8be6b9d2dcf14a88', '21f1ab8bd5e891594873e8bc3ed87750', '123', '123123', '1445263586', '1', '9');
INSERT INTO `game_mode` VALUES ('27', '2b00b78a735feaf01362b0a596930df2', '21f1ab8bd5e891594873e8bc3ed87750', '123', '123', '1445265342', '2', '1');
INSERT INTO `game_mode` VALUES ('28', '3476dc11a4ff6884ad40d7a05f3497b7', '9870a2814efc60ed310d2e7ead315616', 'asd', 'asd', '1445265615', '2', '1');
INSERT INTO `game_mode` VALUES ('30', '4f21387e464d20030e867b92b5c04e44', '8b83b2ebe86ab593d5206bc3153a9cb4', '15680033681', '那超', '1445350394', '2', '1');
INSERT INTO `game_mode` VALUES ('31', 'f3cef5f26c7a4502e78361d304b4d380', 'a0d250a05a44ca4ca4a18e86daecc20e', '111', '111', '1445356469', '2', '1');
INSERT INTO `game_mode` VALUES ('32', 'af74ef93101d17dbb1d8aa526c1babae', 'a0d250a05a44ca4ca4a18e86daecc20e', '222', '222', '1445356474', '1', '1');
INSERT INTO `game_mode` VALUES ('33', '97bafbd9a7aec5fccc95df75dc25ec95', 'c2b366caeed42e6b4fa19d0a09f68d2f', '123', '123123', '1445675136', '2', '1');
INSERT INTO `game_mode` VALUES ('34', '14d0f19fadedec4887099c00dc238e51', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'qqw', 'qweqe', '1445675142', '1', '1');
INSERT INTO `game_mode` VALUES ('35', 'c35b3362f2eea0ece34ce89edfd375d4', '686e4d4082d4704c67aba43f97ac8b33', '123', '123', '1445789518', '2', '1');

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
  `token` varchar(100) DEFAULT '' COMMENT '赞助用户id',
  `sid` varchar(100) DEFAULT '' COMMENT '赞助唯一标示',
  `title` varchar(100) DEFAULT '' COMMENT '赞助名称',
  `price` int(11) DEFAULT '0' COMMENT '单价',
  `number` int(11) DEFAULT '0' COMMENT '赞助剩余数量',
  `time` int(11) DEFAULT '0' COMMENT '赞助时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_sponsor
-- ----------------------------
INSERT INTO `game_sponsor` VALUES ('1', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '《韩国宇航局》赞助：我们要去远方看看还有什么是我们的，思密达！', '1000', '1', '1445344260');
INSERT INTO `game_sponsor` VALUES ('2', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'df910da771aff12b18eed4e191e51fff', '手机淘宝好啊，欧巴都说吊啊。', '1000', '1', '1445344637');
INSERT INTO `game_sponsor` VALUES ('3', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', '“自来水公司”赞助：请开门，我们查一下水表，是真滴。', '1000', '1', '1445345992');
INSERT INTO `game_sponsor` VALUES ('4', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', '心灵鸡汤学会赞助：你可能会觉得自己又矮又丑又没钱，但至少你的判断是对的。', '1000', '1', '1445346759');
INSERT INTO `game_sponsor` VALUES ('5', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'b5ce00a86d0fe4efb1e7eb5dd14d7437', '《3D手游铁血战神》赞助：“建议每日游戏时间不要超过二十四小时哟！”', '1000', '1', '1445356871');
INSERT INTO `game_sponsor` VALUES ('8', 'c2b366caeed42e6b4fa19d0a09f68d2f', '3799dc68590b649321398aa710e86952', '艾力赞助：喵~', '1000', '5', '1445676721');

-- ----------------------------
-- Table structure for `game_sponsor_receive`
-- ----------------------------
DROP TABLE IF EXISTS `game_sponsor_receive`;
CREATE TABLE `game_sponsor_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) DEFAULT NULL COMMENT '领取的用户id',
  `sid` varchar(100) DEFAULT NULL COMMENT '领取的赞助id',
  `mid` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------

-- ----------------------------
-- Table structure for `game_welfare_daily`
-- ----------------------------
DROP TABLE IF EXISTS `game_welfare_daily`;
CREATE TABLE `game_welfare_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_welfare_daily
-- ----------------------------
INSERT INTO `game_welfare_daily` VALUES ('21', '9870a2814efc60ed310d2e7ead315616', '1445270796', '100');
INSERT INTO `game_welfare_daily` VALUES ('22', 'bb0af0869b45ccac5fd11c2937410d5d', '1445270986', '100');
INSERT INTO `game_welfare_daily` VALUES ('23', '5d8c8038fbe7967ef7ec251a71df9475', '1445270998', '100');
INSERT INTO `game_welfare_daily` VALUES ('24', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445344630', '100');
INSERT INTO `game_welfare_daily` VALUES ('25', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445350368', '100');
INSERT INTO `game_welfare_daily` VALUES ('26', 'a0d250a05a44ca4ca4a18e86daecc20e', '1445356456', '100');
INSERT INTO `game_welfare_daily` VALUES ('27', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445356811', '100');
INSERT INTO `game_welfare_daily` VALUES ('28', '21af63b967ad6098f7cb0e0cd07c3456', '1445357054', '100');
INSERT INTO `game_welfare_daily` VALUES ('29', '9870a2814efc60ed310d2e7ead315616', '1445357055', '100');
INSERT INTO `game_welfare_daily` VALUES ('30', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445601534', '100');
INSERT INTO `game_welfare_daily` VALUES ('31', '9870a2814efc60ed310d2e7ead315616', '1445613133', '100');
INSERT INTO `game_welfare_daily` VALUES ('32', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445675061', '100');
INSERT INTO `game_welfare_daily` VALUES ('33', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445741233', '100');
INSERT INTO `game_welfare_daily` VALUES ('34', '9870a2814efc60ed310d2e7ead315616', '1445745244', '100');
INSERT INTO `game_welfare_daily` VALUES ('35', 'ff2e109b0b76fb56c655a8a0ee1b625a', '1445745245', '100');
INSERT INTO `game_welfare_daily` VALUES ('36', '9f18dfbe0a165b582a91f5e5d429b159', '1445745483', '100');
INSERT INTO `game_welfare_daily` VALUES ('37', '1753cd33cabe83b710778cf1e6e6f7b5', '1445750395', '100');
INSERT INTO `game_welfare_daily` VALUES ('38', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445750897', '100');
INSERT INTO `game_welfare_daily` VALUES ('39', '32400b59a24bce8695c2a5704042432c', '1445750930', '100');
INSERT INTO `game_welfare_daily` VALUES ('40', '12ee44e5a667bd11bd77f0ce2eab7f95', '1445752204', '100');
INSERT INTO `game_welfare_daily` VALUES ('41', '6130aee9b376234d196cefad7a8f7ad9', '1445752627', '100');
INSERT INTO `game_welfare_daily` VALUES ('42', 'a338b2b75464f8873c31d0f95c16bad0', '1445754381', '100');
INSERT INTO `game_welfare_daily` VALUES ('43', 'bb0af0869b45ccac5fd11c2937410d5d', '1445757361', '100');
INSERT INTO `game_welfare_daily` VALUES ('44', '5d8c8038fbe7967ef7ec251a71df9475', '1445757504', '100');
INSERT INTO `game_welfare_daily` VALUES ('45', '247ef39b877dc6533d2c588f71643dae', '1445757543', '100');
INSERT INTO `game_welfare_daily` VALUES ('46', '92653473c6cb31d94f7361550a5638ab', '1445757564', '100');
INSERT INTO `game_welfare_daily` VALUES ('47', '622199fea23d4e0761ad50b9eba7bb5f', '1445757603', '100');
INSERT INTO `game_welfare_daily` VALUES ('48', '8856baa6b92525a704f4778a471ceddf', '1445757695', '100');
INSERT INTO `game_welfare_daily` VALUES ('49', '58983019ba1260dcd773c125cda8182b', '1445762769', '100');
INSERT INTO `game_welfare_daily` VALUES ('50', '1776ffbb2190b92ba74a58da4afb86ce', '1445788794', '100');
INSERT INTO `game_welfare_daily` VALUES ('51', '1776ffbb2190b92ba74a58da4afb86ce', '1445788804', '100');
INSERT INTO `game_welfare_daily` VALUES ('52', '35a65a70315d24b8c30a47418c610d50', '1445788811', '100');
INSERT INTO `game_welfare_daily` VALUES ('53', '9df9c79196dbc1dc52d8d3e04ef74761', '1445788893', '100');
INSERT INTO `game_welfare_daily` VALUES ('54', '686e4d4082d4704c67aba43f97ac8b33', '1445789074', '100');
INSERT INTO `game_welfare_daily` VALUES ('55', 'c6533a9251e01677c7a8b8e85787d46c', '1445789079', '100');
INSERT INTO `game_welfare_daily` VALUES ('56', '7a7f905841d6d438f154e4d1d5bc6da5', '1445789082', '100');

-- ----------------------------
-- Table structure for `game_welfare_hangup`
-- ----------------------------
DROP TABLE IF EXISTS `game_welfare_hangup`;
CREATE TABLE `game_welfare_hangup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_welfare_hangup
-- ----------------------------
INSERT INTO `game_welfare_hangup` VALUES ('21', '9870a2814efc60ed310d2e7ead315616', '1445270796', '100');
INSERT INTO `game_welfare_hangup` VALUES ('22', 'bb0af0869b45ccac5fd11c2937410d5d', '1445270986', '100');
INSERT INTO `game_welfare_hangup` VALUES ('23', '5d8c8038fbe7967ef7ec251a71df9475', '1445270998', '100');
INSERT INTO `game_welfare_hangup` VALUES ('24', '123', '123', '1');
INSERT INTO `game_welfare_hangup` VALUES ('25', '9870a2814efc60ed310d2e7ead315616', '1445272180', '1');
INSERT INTO `game_welfare_hangup` VALUES ('26', '9870a2814efc60ed310d2e7ead315616', '1445272335', '1');
INSERT INTO `game_welfare_hangup` VALUES ('27', '9870a2814efc60ed310d2e7ead315616', '1445272395', '1');
INSERT INTO `game_welfare_hangup` VALUES ('28', '9870a2814efc60ed310d2e7ead315616', '1445272551', '1');
INSERT INTO `game_welfare_hangup` VALUES ('29', 'bb0af0869b45ccac5fd11c2937410d5d', '1445272617', '1');
INSERT INTO `game_welfare_hangup` VALUES ('30', 'bb0af0869b45ccac5fd11c2937410d5d', '1445272632', '1');
INSERT INTO `game_welfare_hangup` VALUES ('31', 'bb0af0869b45ccac5fd11c2937410d5d', '1445272955', '1');
INSERT INTO `game_welfare_hangup` VALUES ('32', 'bb0af0869b45ccac5fd11c2937410d5d', '1445273026', '1');
INSERT INTO `game_welfare_hangup` VALUES ('33', 'bb0af0869b45ccac5fd11c2937410d5d', '1445273210', '1');
INSERT INTO `game_welfare_hangup` VALUES ('34', 'bb0af0869b45ccac5fd11c2937410d5d', '1445273392', '1');
INSERT INTO `game_welfare_hangup` VALUES ('35', '9870a2814efc60ed310d2e7ead315616', '1445344235', '1');
INSERT INTO `game_welfare_hangup` VALUES ('36', '9870a2814efc60ed310d2e7ead315616', '1445344421', '1');
INSERT INTO `game_welfare_hangup` VALUES ('37', '9870a2814efc60ed310d2e7ead315616', '1445344602', '1');
INSERT INTO `game_welfare_hangup` VALUES ('38', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445344813', '1');
INSERT INTO `game_welfare_hangup` VALUES ('39', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445344994', '1');
INSERT INTO `game_welfare_hangup` VALUES ('40', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445345184', '1');
INSERT INTO `game_welfare_hangup` VALUES ('41', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445345372', '1');
INSERT INTO `game_welfare_hangup` VALUES ('42', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445345567', '1');
INSERT INTO `game_welfare_hangup` VALUES ('43', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445345750', '1');
INSERT INTO `game_welfare_hangup` VALUES ('44', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445345934', '1');
INSERT INTO `game_welfare_hangup` VALUES ('45', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445346122', '1');
INSERT INTO `game_welfare_hangup` VALUES ('46', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445346305', '1');
INSERT INTO `game_welfare_hangup` VALUES ('47', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445346493', '1');
INSERT INTO `game_welfare_hangup` VALUES ('48', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445346679', '1');
INSERT INTO `game_welfare_hangup` VALUES ('49', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445346863', '1');
INSERT INTO `game_welfare_hangup` VALUES ('50', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445347045', '1');
INSERT INTO `game_welfare_hangup` VALUES ('51', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445347228', '1');
INSERT INTO `game_welfare_hangup` VALUES ('52', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445347415', '1');
INSERT INTO `game_welfare_hangup` VALUES ('53', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445347598', '1');
INSERT INTO `game_welfare_hangup` VALUES ('54', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445347778', '1');
INSERT INTO `game_welfare_hangup` VALUES ('55', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445348882', '1');
INSERT INTO `game_welfare_hangup` VALUES ('56', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349062', '1');
INSERT INTO `game_welfare_hangup` VALUES ('57', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349242', '1');
INSERT INTO `game_welfare_hangup` VALUES ('58', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349422', '1');
INSERT INTO `game_welfare_hangup` VALUES ('59', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349606', '1');
INSERT INTO `game_welfare_hangup` VALUES ('60', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349786', '1');
INSERT INTO `game_welfare_hangup` VALUES ('61', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445349967', '1');
INSERT INTO `game_welfare_hangup` VALUES ('62', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445350149', '1');
INSERT INTO `game_welfare_hangup` VALUES ('63', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445350333', '1');
INSERT INTO `game_welfare_hangup` VALUES ('64', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445350551', '1');
INSERT INTO `game_welfare_hangup` VALUES ('65', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445350914', '1');
INSERT INTO `game_welfare_hangup` VALUES ('66', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445352764', '1');
INSERT INTO `game_welfare_hangup` VALUES ('67', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445352947', '1');
INSERT INTO `game_welfare_hangup` VALUES ('68', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445353149', '1');
INSERT INTO `game_welfare_hangup` VALUES ('69', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445353329', '1');
INSERT INTO `game_welfare_hangup` VALUES ('70', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445353517', '1');
INSERT INTO `game_welfare_hangup` VALUES ('71', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445353698', '1');
INSERT INTO `game_welfare_hangup` VALUES ('72', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445353881', '1');
INSERT INTO `game_welfare_hangup` VALUES ('73', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445354244', '1');
INSERT INTO `game_welfare_hangup` VALUES ('74', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445354424', '1');
INSERT INTO `game_welfare_hangup` VALUES ('75', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445354604', '1');
INSERT INTO `game_welfare_hangup` VALUES ('76', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445354785', '1');
INSERT INTO `game_welfare_hangup` VALUES ('77', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445354966', '1');
INSERT INTO `game_welfare_hangup` VALUES ('78', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445355146', '1');
INSERT INTO `game_welfare_hangup` VALUES ('79', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445355328', '1');
INSERT INTO `game_welfare_hangup` VALUES ('80', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445355529', '1');
INSERT INTO `game_welfare_hangup` VALUES ('81', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445355719', '1');
INSERT INTO `game_welfare_hangup` VALUES ('82', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445355904', '1');
INSERT INTO `game_welfare_hangup` VALUES ('83', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445356091', '1');
INSERT INTO `game_welfare_hangup` VALUES ('84', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445356273', '1');
INSERT INTO `game_welfare_hangup` VALUES ('85', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445356454', '1');
INSERT INTO `game_welfare_hangup` VALUES ('86', 'a0d250a05a44ca4ca4a18e86daecc20e', '1445356647', '1');
INSERT INTO `game_welfare_hangup` VALUES ('87', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445356896', '1');
INSERT INTO `game_welfare_hangup` VALUES ('88', '9870a2814efc60ed310d2e7ead315616', '1445357248', '1');
INSERT INTO `game_welfare_hangup` VALUES ('89', '9870a2814efc60ed310d2e7ead315616', '1445357434', '1');
INSERT INTO `game_welfare_hangup` VALUES ('90', '9870a2814efc60ed310d2e7ead315616', '1445357623', '1');
INSERT INTO `game_welfare_hangup` VALUES ('91', '9870a2814efc60ed310d2e7ead315616', '1445357809', '1');
INSERT INTO `game_welfare_hangup` VALUES ('92', '9870a2814efc60ed310d2e7ead315616', '1445358303', '1');
INSERT INTO `game_welfare_hangup` VALUES ('93', '9870a2814efc60ed310d2e7ead315616', '1445358487', '1');
INSERT INTO `game_welfare_hangup` VALUES ('94', '9870a2814efc60ed310d2e7ead315616', '1445358678', '1');
INSERT INTO `game_welfare_hangup` VALUES ('95', '9870a2814efc60ed310d2e7ead315616', '1445358874', '1');
INSERT INTO `game_welfare_hangup` VALUES ('96', '9870a2814efc60ed310d2e7ead315616', '1445359055', '1');
INSERT INTO `game_welfare_hangup` VALUES ('97', '9870a2814efc60ed310d2e7ead315616', '1445359239', '1');
INSERT INTO `game_welfare_hangup` VALUES ('98', '9870a2814efc60ed310d2e7ead315616', '1445359433', '1');
INSERT INTO `game_welfare_hangup` VALUES ('99', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445601720', '1');
INSERT INTO `game_welfare_hangup` VALUES ('100', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445601903', '1');
INSERT INTO `game_welfare_hangup` VALUES ('101', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445602084', '1');
INSERT INTO `game_welfare_hangup` VALUES ('102', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445602265', '1');
INSERT INTO `game_welfare_hangup` VALUES ('103', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445602445', '1');
INSERT INTO `game_welfare_hangup` VALUES ('104', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445675251', '1');
INSERT INTO `game_welfare_hangup` VALUES ('105', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445675251', '1');
INSERT INTO `game_welfare_hangup` VALUES ('106', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445675691', '1');
INSERT INTO `game_welfare_hangup` VALUES ('107', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445675901', '1');
INSERT INTO `game_welfare_hangup` VALUES ('108', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445676116', '1');
INSERT INTO `game_welfare_hangup` VALUES ('109', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445676296', '1');
INSERT INTO `game_welfare_hangup` VALUES ('110', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445676481', '1');
INSERT INTO `game_welfare_hangup` VALUES ('111', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445676662', '1');
INSERT INTO `game_welfare_hangup` VALUES ('112', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445676859', '1');
INSERT INTO `game_welfare_hangup` VALUES ('113', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677044', '1');
INSERT INTO `game_welfare_hangup` VALUES ('114', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677242', '1');
INSERT INTO `game_welfare_hangup` VALUES ('115', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677435', '1');
INSERT INTO `game_welfare_hangup` VALUES ('116', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677618', '1');
INSERT INTO `game_welfare_hangup` VALUES ('117', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677798', '1');
INSERT INTO `game_welfare_hangup` VALUES ('118', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445677978', '1');
INSERT INTO `game_welfare_hangup` VALUES ('119', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445678158', '1');
INSERT INTO `game_welfare_hangup` VALUES ('120', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445678338', '1');
INSERT INTO `game_welfare_hangup` VALUES ('121', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445678518', '1');
INSERT INTO `game_welfare_hangup` VALUES ('122', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445678698', '1');
INSERT INTO `game_welfare_hangup` VALUES ('123', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445678878', '1');
INSERT INTO `game_welfare_hangup` VALUES ('124', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679058', '1');
INSERT INTO `game_welfare_hangup` VALUES ('125', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679238', '1');
INSERT INTO `game_welfare_hangup` VALUES ('126', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679418', '1');
INSERT INTO `game_welfare_hangup` VALUES ('127', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679598', '1');
INSERT INTO `game_welfare_hangup` VALUES ('128', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679778', '1');
INSERT INTO `game_welfare_hangup` VALUES ('129', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445679958', '1');
INSERT INTO `game_welfare_hangup` VALUES ('130', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445680138', '1');
INSERT INTO `game_welfare_hangup` VALUES ('131', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445680318', '1');
INSERT INTO `game_welfare_hangup` VALUES ('132', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445680498', '1');
INSERT INTO `game_welfare_hangup` VALUES ('133', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445680678', '1');
INSERT INTO `game_welfare_hangup` VALUES ('134', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445680858', '1');
INSERT INTO `game_welfare_hangup` VALUES ('135', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681038', '1');
INSERT INTO `game_welfare_hangup` VALUES ('136', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681218', '1');
INSERT INTO `game_welfare_hangup` VALUES ('137', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681398', '1');
INSERT INTO `game_welfare_hangup` VALUES ('138', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681578', '1');
INSERT INTO `game_welfare_hangup` VALUES ('139', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681758', '1');
INSERT INTO `game_welfare_hangup` VALUES ('140', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445681938', '1');
INSERT INTO `game_welfare_hangup` VALUES ('141', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445682118', '1');
INSERT INTO `game_welfare_hangup` VALUES ('142', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445682298', '1');
INSERT INTO `game_welfare_hangup` VALUES ('143', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445682478', '1');
INSERT INTO `game_welfare_hangup` VALUES ('144', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445682658', '1');
INSERT INTO `game_welfare_hangup` VALUES ('145', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445682838', '1');
INSERT INTO `game_welfare_hangup` VALUES ('146', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683018', '1');
INSERT INTO `game_welfare_hangup` VALUES ('147', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683198', '1');
INSERT INTO `game_welfare_hangup` VALUES ('148', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683378', '1');
INSERT INTO `game_welfare_hangup` VALUES ('149', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683558', '1');
INSERT INTO `game_welfare_hangup` VALUES ('150', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683738', '1');
INSERT INTO `game_welfare_hangup` VALUES ('151', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445683918', '1');
INSERT INTO `game_welfare_hangup` VALUES ('152', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684098', '1');
INSERT INTO `game_welfare_hangup` VALUES ('153', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684278', '1');
INSERT INTO `game_welfare_hangup` VALUES ('154', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684458', '1');
INSERT INTO `game_welfare_hangup` VALUES ('155', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684638', '1');
INSERT INTO `game_welfare_hangup` VALUES ('156', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684818', '1');
INSERT INTO `game_welfare_hangup` VALUES ('157', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445684998', '1');
INSERT INTO `game_welfare_hangup` VALUES ('158', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445685178', '1');
INSERT INTO `game_welfare_hangup` VALUES ('159', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445685358', '1');
INSERT INTO `game_welfare_hangup` VALUES ('160', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445685538', '1');
INSERT INTO `game_welfare_hangup` VALUES ('161', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445685718', '1');
INSERT INTO `game_welfare_hangup` VALUES ('162', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445685898', '1');
INSERT INTO `game_welfare_hangup` VALUES ('163', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686078', '1');
INSERT INTO `game_welfare_hangup` VALUES ('164', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686258', '1');
INSERT INTO `game_welfare_hangup` VALUES ('165', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686438', '1');
INSERT INTO `game_welfare_hangup` VALUES ('166', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686618', '1');
INSERT INTO `game_welfare_hangup` VALUES ('167', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686798', '1');
INSERT INTO `game_welfare_hangup` VALUES ('168', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445686978', '1');
INSERT INTO `game_welfare_hangup` VALUES ('169', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445687158', '1');
INSERT INTO `game_welfare_hangup` VALUES ('170', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445687338', '1');
INSERT INTO `game_welfare_hangup` VALUES ('171', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445687518', '1');
INSERT INTO `game_welfare_hangup` VALUES ('172', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445687698', '1');
INSERT INTO `game_welfare_hangup` VALUES ('173', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445687878', '1');
INSERT INTO `game_welfare_hangup` VALUES ('174', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688058', '1');
INSERT INTO `game_welfare_hangup` VALUES ('175', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688238', '1');
INSERT INTO `game_welfare_hangup` VALUES ('176', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688420', '1');
INSERT INTO `game_welfare_hangup` VALUES ('177', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688601', '1');
INSERT INTO `game_welfare_hangup` VALUES ('178', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688781', '1');
INSERT INTO `game_welfare_hangup` VALUES ('179', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445688968', '1');
INSERT INTO `game_welfare_hangup` VALUES ('180', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445689154', '1');
INSERT INTO `game_welfare_hangup` VALUES ('181', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445689341', '1');
INSERT INTO `game_welfare_hangup` VALUES ('182', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445689521', '1');
INSERT INTO `game_welfare_hangup` VALUES ('183', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445689701', '1');
INSERT INTO `game_welfare_hangup` VALUES ('184', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445689881', '1');
INSERT INTO `game_welfare_hangup` VALUES ('185', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690061', '1');
INSERT INTO `game_welfare_hangup` VALUES ('186', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690241', '1');
INSERT INTO `game_welfare_hangup` VALUES ('187', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690421', '1');
INSERT INTO `game_welfare_hangup` VALUES ('188', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690601', '1');
INSERT INTO `game_welfare_hangup` VALUES ('189', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690781', '1');
INSERT INTO `game_welfare_hangup` VALUES ('190', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445690961', '1');
INSERT INTO `game_welfare_hangup` VALUES ('191', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445691141', '1');
INSERT INTO `game_welfare_hangup` VALUES ('192', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445691321', '1');
INSERT INTO `game_welfare_hangup` VALUES ('193', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445691501', '1');
INSERT INTO `game_welfare_hangup` VALUES ('194', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445691681', '1');
INSERT INTO `game_welfare_hangup` VALUES ('195', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445691861', '1');
INSERT INTO `game_welfare_hangup` VALUES ('196', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692041', '1');
INSERT INTO `game_welfare_hangup` VALUES ('197', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692221', '1');
INSERT INTO `game_welfare_hangup` VALUES ('198', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692401', '1');
INSERT INTO `game_welfare_hangup` VALUES ('199', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692581', '1');
INSERT INTO `game_welfare_hangup` VALUES ('200', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692761', '1');
INSERT INTO `game_welfare_hangup` VALUES ('201', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445692941', '1');
INSERT INTO `game_welfare_hangup` VALUES ('202', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445693121', '1');
INSERT INTO `game_welfare_hangup` VALUES ('203', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445693301', '1');
INSERT INTO `game_welfare_hangup` VALUES ('204', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445693481', '1');
INSERT INTO `game_welfare_hangup` VALUES ('205', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445693661', '1');
INSERT INTO `game_welfare_hangup` VALUES ('206', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445693841', '1');
INSERT INTO `game_welfare_hangup` VALUES ('207', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694021', '1');
INSERT INTO `game_welfare_hangup` VALUES ('208', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694201', '1');
INSERT INTO `game_welfare_hangup` VALUES ('209', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694381', '1');
INSERT INTO `game_welfare_hangup` VALUES ('210', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694561', '1');
INSERT INTO `game_welfare_hangup` VALUES ('211', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694741', '1');
INSERT INTO `game_welfare_hangup` VALUES ('212', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445694921', '1');
INSERT INTO `game_welfare_hangup` VALUES ('213', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445695101', '1');
INSERT INTO `game_welfare_hangup` VALUES ('214', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445695281', '1');
INSERT INTO `game_welfare_hangup` VALUES ('215', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445695461', '1');
INSERT INTO `game_welfare_hangup` VALUES ('216', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445695641', '1');
INSERT INTO `game_welfare_hangup` VALUES ('217', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445695821', '1');
INSERT INTO `game_welfare_hangup` VALUES ('218', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696001', '1');
INSERT INTO `game_welfare_hangup` VALUES ('219', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696181', '1');
INSERT INTO `game_welfare_hangup` VALUES ('220', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696361', '1');
INSERT INTO `game_welfare_hangup` VALUES ('221', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696541', '1');
INSERT INTO `game_welfare_hangup` VALUES ('222', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696721', '1');
INSERT INTO `game_welfare_hangup` VALUES ('223', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445696901', '1');
INSERT INTO `game_welfare_hangup` VALUES ('224', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697081', '1');
INSERT INTO `game_welfare_hangup` VALUES ('225', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697261', '1');
INSERT INTO `game_welfare_hangup` VALUES ('226', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697441', '1');
INSERT INTO `game_welfare_hangup` VALUES ('227', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697621', '1');
INSERT INTO `game_welfare_hangup` VALUES ('228', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697801', '1');
INSERT INTO `game_welfare_hangup` VALUES ('229', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445697981', '1');
INSERT INTO `game_welfare_hangup` VALUES ('230', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445698161', '1');
INSERT INTO `game_welfare_hangup` VALUES ('231', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445698341', '1');
INSERT INTO `game_welfare_hangup` VALUES ('232', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445698521', '1');
INSERT INTO `game_welfare_hangup` VALUES ('233', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445698701', '1');
INSERT INTO `game_welfare_hangup` VALUES ('234', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445698881', '1');
INSERT INTO `game_welfare_hangup` VALUES ('235', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699061', '1');
INSERT INTO `game_welfare_hangup` VALUES ('236', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699241', '1');
INSERT INTO `game_welfare_hangup` VALUES ('237', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699421', '1');
INSERT INTO `game_welfare_hangup` VALUES ('238', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699601', '1');
INSERT INTO `game_welfare_hangup` VALUES ('239', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699781', '1');
INSERT INTO `game_welfare_hangup` VALUES ('240', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445699961', '1');
INSERT INTO `game_welfare_hangup` VALUES ('241', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445700141', '1');
INSERT INTO `game_welfare_hangup` VALUES ('242', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445700321', '1');
INSERT INTO `game_welfare_hangup` VALUES ('243', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445700501', '1');
INSERT INTO `game_welfare_hangup` VALUES ('244', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445700681', '1');
INSERT INTO `game_welfare_hangup` VALUES ('245', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445700861', '1');
INSERT INTO `game_welfare_hangup` VALUES ('246', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701041', '1');
INSERT INTO `game_welfare_hangup` VALUES ('247', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701221', '1');
INSERT INTO `game_welfare_hangup` VALUES ('248', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701401', '1');
INSERT INTO `game_welfare_hangup` VALUES ('249', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701581', '1');
INSERT INTO `game_welfare_hangup` VALUES ('250', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701761', '1');
INSERT INTO `game_welfare_hangup` VALUES ('251', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445701941', '1');
INSERT INTO `game_welfare_hangup` VALUES ('252', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445702121', '1');
INSERT INTO `game_welfare_hangup` VALUES ('253', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445702301', '1');
INSERT INTO `game_welfare_hangup` VALUES ('254', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445702481', '1');
INSERT INTO `game_welfare_hangup` VALUES ('255', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445702661', '1');
INSERT INTO `game_welfare_hangup` VALUES ('256', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445702841', '1');
INSERT INTO `game_welfare_hangup` VALUES ('257', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445703021', '1');
INSERT INTO `game_welfare_hangup` VALUES ('258', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445703201', '1');
INSERT INTO `game_welfare_hangup` VALUES ('259', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445703381', '1');
INSERT INTO `game_welfare_hangup` VALUES ('260', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445703561', '1');
INSERT INTO `game_welfare_hangup` VALUES ('261', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445741413', '1');
INSERT INTO `game_welfare_hangup` VALUES ('262', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445741596', '1');
INSERT INTO `game_welfare_hangup` VALUES ('263', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445741779', '1');
INSERT INTO `game_welfare_hangup` VALUES ('264', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445741961', '1');
INSERT INTO `game_welfare_hangup` VALUES ('265', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445742148', '1');
INSERT INTO `game_welfare_hangup` VALUES ('266', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445742329', '1');
INSERT INTO `game_welfare_hangup` VALUES ('267', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445742541', '1');
INSERT INTO `game_welfare_hangup` VALUES ('268', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445742748', '1');
INSERT INTO `game_welfare_hangup` VALUES ('269', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445742933', '1');
INSERT INTO `game_welfare_hangup` VALUES ('270', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445743131', '1');
INSERT INTO `game_welfare_hangup` VALUES ('271', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445743333', '1');
INSERT INTO `game_welfare_hangup` VALUES ('272', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445743528', '1');
INSERT INTO `game_welfare_hangup` VALUES ('273', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445743736', '1');
INSERT INTO `game_welfare_hangup` VALUES ('274', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445743961', '1');
INSERT INTO `game_welfare_hangup` VALUES ('275', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445744167', '1');
INSERT INTO `game_welfare_hangup` VALUES ('276', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445744351', '1');
INSERT INTO `game_welfare_hangup` VALUES ('277', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445744531', '1');
INSERT INTO `game_welfare_hangup` VALUES ('278', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445744711', '1');
INSERT INTO `game_welfare_hangup` VALUES ('279', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445744895', '1');
INSERT INTO `game_welfare_hangup` VALUES ('280', 'c2b366caeed42e6b4fa19d0a09f68d2f', '1445745080', '1');
INSERT INTO `game_welfare_hangup` VALUES ('281', 'ff2e109b0b76fb56c655a8a0ee1b625a', '1445745438', '1');
INSERT INTO `game_welfare_hangup` VALUES ('282', '9f18dfbe0a165b582a91f5e5d429b159', '1445745664', '1');
INSERT INTO `game_welfare_hangup` VALUES ('283', '9f18dfbe0a165b582a91f5e5d429b159', '1445745664', '1');
INSERT INTO `game_welfare_hangup` VALUES ('284', '9f18dfbe0a165b582a91f5e5d429b159', '1445745849', '1');
INSERT INTO `game_welfare_hangup` VALUES ('285', '9f18dfbe0a165b582a91f5e5d429b159', '1445746034', '1');
INSERT INTO `game_welfare_hangup` VALUES ('286', '9f18dfbe0a165b582a91f5e5d429b159', '1445746215', '1');
INSERT INTO `game_welfare_hangup` VALUES ('287', '9f18dfbe0a165b582a91f5e5d429b159', '1445746398', '1');
INSERT INTO `game_welfare_hangup` VALUES ('288', '9f18dfbe0a165b582a91f5e5d429b159', '1445746582', '1');
INSERT INTO `game_welfare_hangup` VALUES ('289', '9f18dfbe0a165b582a91f5e5d429b159', '1445746786', '1');
INSERT INTO `game_welfare_hangup` VALUES ('290', '9f18dfbe0a165b582a91f5e5d429b159', '1445746966', '1');
INSERT INTO `game_welfare_hangup` VALUES ('291', '9f18dfbe0a165b582a91f5e5d429b159', '1445747146', '1');
INSERT INTO `game_welfare_hangup` VALUES ('292', '9f18dfbe0a165b582a91f5e5d429b159', '1445747334', '1');
INSERT INTO `game_welfare_hangup` VALUES ('293', '9f18dfbe0a165b582a91f5e5d429b159', '1445747519', '1');
INSERT INTO `game_welfare_hangup` VALUES ('294', '9f18dfbe0a165b582a91f5e5d429b159', '1445747703', '1');
INSERT INTO `game_welfare_hangup` VALUES ('295', '9f18dfbe0a165b582a91f5e5d429b159', '1445747886', '1');
INSERT INTO `game_welfare_hangup` VALUES ('296', '9f18dfbe0a165b582a91f5e5d429b159', '1445748067', '1');
INSERT INTO `game_welfare_hangup` VALUES ('297', '9f18dfbe0a165b582a91f5e5d429b159', '1445748249', '1');
INSERT INTO `game_welfare_hangup` VALUES ('298', '9f18dfbe0a165b582a91f5e5d429b159', '1445748430', '1');
INSERT INTO `game_welfare_hangup` VALUES ('299', '9f18dfbe0a165b582a91f5e5d429b159', '1445748610', '1');
INSERT INTO `game_welfare_hangup` VALUES ('300', '9f18dfbe0a165b582a91f5e5d429b159', '1445748791', '1');
INSERT INTO `game_welfare_hangup` VALUES ('301', '9f18dfbe0a165b582a91f5e5d429b159', '1445748971', '1');
INSERT INTO `game_welfare_hangup` VALUES ('302', '9f18dfbe0a165b582a91f5e5d429b159', '1445749159', '1');
INSERT INTO `game_welfare_hangup` VALUES ('303', '9f18dfbe0a165b582a91f5e5d429b159', '1445749342', '1');
INSERT INTO `game_welfare_hangup` VALUES ('304', '9f18dfbe0a165b582a91f5e5d429b159', '1445749523', '1');
INSERT INTO `game_welfare_hangup` VALUES ('305', '9f18dfbe0a165b582a91f5e5d429b159', '1445749708', '1');
INSERT INTO `game_welfare_hangup` VALUES ('306', '9f18dfbe0a165b582a91f5e5d429b159', '1445749891', '1');
INSERT INTO `game_welfare_hangup` VALUES ('307', '9f18dfbe0a165b582a91f5e5d429b159', '1445750073', '1');
INSERT INTO `game_welfare_hangup` VALUES ('308', '9f18dfbe0a165b582a91f5e5d429b159', '1445750253', '1');
INSERT INTO `game_welfare_hangup` VALUES ('309', '9f18dfbe0a165b582a91f5e5d429b159', '1445750438', '1');
INSERT INTO `game_welfare_hangup` VALUES ('310', '9f18dfbe0a165b582a91f5e5d429b159', '1445750624', '1');
INSERT INTO `game_welfare_hangup` VALUES ('311', '9f18dfbe0a165b582a91f5e5d429b159', '1445750817', '1');
INSERT INTO `game_welfare_hangup` VALUES ('312', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445751187', '1');
INSERT INTO `game_welfare_hangup` VALUES ('313', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445751372', '1');
INSERT INTO `game_welfare_hangup` VALUES ('314', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445751554', '1');
INSERT INTO `game_welfare_hangup` VALUES ('315', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445751740', '1');
INSERT INTO `game_welfare_hangup` VALUES ('316', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445751927', '1');
INSERT INTO `game_welfare_hangup` VALUES ('317', '3d45d98c13c99df38a23dd3a4be9a5a8', '1445752108', '1');
INSERT INTO `game_welfare_hangup` VALUES ('318', '12ee44e5a667bd11bd77f0ce2eab7f95', '1445752384', '1');
INSERT INTO `game_welfare_hangup` VALUES ('319', '12ee44e5a667bd11bd77f0ce2eab7f95', '1445752387', '1');
INSERT INTO `game_welfare_hangup` VALUES ('320', '12ee44e5a667bd11bd77f0ce2eab7f95', '1445752564', '1');
INSERT INTO `game_welfare_hangup` VALUES ('321', '12ee44e5a667bd11bd77f0ce2eab7f95', '1445752567', '1');
INSERT INTO `game_welfare_hangup` VALUES ('322', '6130aee9b376234d196cefad7a8f7ad9', '1445752813', '1');
INSERT INTO `game_welfare_hangup` VALUES ('323', '6130aee9b376234d196cefad7a8f7ad9', '1445752993', '1');
INSERT INTO `game_welfare_hangup` VALUES ('324', '6130aee9b376234d196cefad7a8f7ad9', '1445753173', '1');
INSERT INTO `game_welfare_hangup` VALUES ('325', '6130aee9b376234d196cefad7a8f7ad9', '1445753353', '1');
INSERT INTO `game_welfare_hangup` VALUES ('326', '6130aee9b376234d196cefad7a8f7ad9', '1445753537', '1');
INSERT INTO `game_welfare_hangup` VALUES ('327', '6130aee9b376234d196cefad7a8f7ad9', '1445753718', '1');
INSERT INTO `game_welfare_hangup` VALUES ('328', 'a338b2b75464f8873c31d0f95c16bad0', '1445754562', '1');
INSERT INTO `game_welfare_hangup` VALUES ('329', 'a338b2b75464f8873c31d0f95c16bad0', '1445754742', '1');
INSERT INTO `game_welfare_hangup` VALUES ('330', 'a338b2b75464f8873c31d0f95c16bad0', '1445754922', '1');
INSERT INTO `game_welfare_hangup` VALUES ('331', 'a338b2b75464f8873c31d0f95c16bad0', '1445755110', '1');
INSERT INTO `game_welfare_hangup` VALUES ('332', '8856baa6b92525a704f4778a471ceddf', '1445757876', '1');
INSERT INTO `game_welfare_hangup` VALUES ('333', '8856baa6b92525a704f4778a471ceddf', '1445757876', '1');
INSERT INTO `game_welfare_hangup` VALUES ('334', '8856baa6b92525a704f4778a471ceddf', '1445758058', '1');
INSERT INTO `game_welfare_hangup` VALUES ('335', '8856baa6b92525a704f4778a471ceddf', '1445758058', '1');
INSERT INTO `game_welfare_hangup` VALUES ('336', '8856baa6b92525a704f4778a471ceddf', '1445758242', '1');
INSERT INTO `game_welfare_hangup` VALUES ('337', '8856baa6b92525a704f4778a471ceddf', '1445758423', '1');
INSERT INTO `game_welfare_hangup` VALUES ('338', '8856baa6b92525a704f4778a471ceddf', '1445758603', '1');
INSERT INTO `game_welfare_hangup` VALUES ('339', '8856baa6b92525a704f4778a471ceddf', '1445758783', '1');
INSERT INTO `game_welfare_hangup` VALUES ('340', '8856baa6b92525a704f4778a471ceddf', '1445758964', '1');
INSERT INTO `game_welfare_hangup` VALUES ('341', '8856baa6b92525a704f4778a471ceddf', '1445759145', '1');
INSERT INTO `game_welfare_hangup` VALUES ('342', '8856baa6b92525a704f4778a471ceddf', '1445759325', '1');
INSERT INTO `game_welfare_hangup` VALUES ('343', '8856baa6b92525a704f4778a471ceddf', '1445759506', '1');
INSERT INTO `game_welfare_hangup` VALUES ('344', '8856baa6b92525a704f4778a471ceddf', '1445759686', '1');
INSERT INTO `game_welfare_hangup` VALUES ('345', '8856baa6b92525a704f4778a471ceddf', '1445759866', '1');
INSERT INTO `game_welfare_hangup` VALUES ('346', '8856baa6b92525a704f4778a471ceddf', '1445760046', '1');
INSERT INTO `game_welfare_hangup` VALUES ('347', '8856baa6b92525a704f4778a471ceddf', '1445760226', '1');
INSERT INTO `game_welfare_hangup` VALUES ('348', '8856baa6b92525a704f4778a471ceddf', '1445760406', '1');
INSERT INTO `game_welfare_hangup` VALUES ('349', '8856baa6b92525a704f4778a471ceddf', '1445760586', '1');
INSERT INTO `game_welfare_hangup` VALUES ('350', '8856baa6b92525a704f4778a471ceddf', '1445760766', '1');
INSERT INTO `game_welfare_hangup` VALUES ('351', '8856baa6b92525a704f4778a471ceddf', '1445760946', '1');
INSERT INTO `game_welfare_hangup` VALUES ('352', '8856baa6b92525a704f4778a471ceddf', '1445761126', '1');
INSERT INTO `game_welfare_hangup` VALUES ('353', '8856baa6b92525a704f4778a471ceddf', '1445761306', '1');
INSERT INTO `game_welfare_hangup` VALUES ('354', '8856baa6b92525a704f4778a471ceddf', '1445761486', '1');
INSERT INTO `game_welfare_hangup` VALUES ('355', '8856baa6b92525a704f4778a471ceddf', '1445761667', '1');
INSERT INTO `game_welfare_hangup` VALUES ('356', '8856baa6b92525a704f4778a471ceddf', '1445761847', '1');
INSERT INTO `game_welfare_hangup` VALUES ('357', '8856baa6b92525a704f4778a471ceddf', '1445762028', '1');
INSERT INTO `game_welfare_hangup` VALUES ('358', '8856baa6b92525a704f4778a471ceddf', '1445762208', '1');
INSERT INTO `game_welfare_hangup` VALUES ('359', '8856baa6b92525a704f4778a471ceddf', '1445762388', '1');
INSERT INTO `game_welfare_hangup` VALUES ('360', '8856baa6b92525a704f4778a471ceddf', '1445762568', '1');
INSERT INTO `game_welfare_hangup` VALUES ('361', '8856baa6b92525a704f4778a471ceddf', '1445762748', '1');
INSERT INTO `game_welfare_hangup` VALUES ('362', '8856baa6b92525a704f4778a471ceddf', '1445762751', '1');
INSERT INTO `game_welfare_hangup` VALUES ('363', '8856baa6b92525a704f4778a471ceddf', '1445762928', '1');
INSERT INTO `game_welfare_hangup` VALUES ('364', '58983019ba1260dcd773c125cda8182b', '1445762954', '1');
INSERT INTO `game_welfare_hangup` VALUES ('365', '8856baa6b92525a704f4778a471ceddf', '1445763108', '1');
INSERT INTO `game_welfare_hangup` VALUES ('366', '58983019ba1260dcd773c125cda8182b', '1445763135', '1');
INSERT INTO `game_welfare_hangup` VALUES ('367', '8856baa6b92525a704f4778a471ceddf', '1445763298', '1');
INSERT INTO `game_welfare_hangup` VALUES ('368', '58983019ba1260dcd773c125cda8182b', '1445763323', '1');
INSERT INTO `game_welfare_hangup` VALUES ('369', '8856baa6b92525a704f4778a471ceddf', '1445763481', '1');
INSERT INTO `game_welfare_hangup` VALUES ('370', '58983019ba1260dcd773c125cda8182b', '1445763506', '1');
INSERT INTO `game_welfare_hangup` VALUES ('371', '8856baa6b92525a704f4778a471ceddf', '1445763666', '1');
INSERT INTO `game_welfare_hangup` VALUES ('372', '58983019ba1260dcd773c125cda8182b', '1445763699', '1');
INSERT INTO `game_welfare_hangup` VALUES ('373', '8856baa6b92525a704f4778a471ceddf', '1445763850', '1');
INSERT INTO `game_welfare_hangup` VALUES ('374', '58983019ba1260dcd773c125cda8182b', '1445763887', '1');
INSERT INTO `game_welfare_hangup` VALUES ('375', '8856baa6b92525a704f4778a471ceddf', '1445764035', '1');
INSERT INTO `game_welfare_hangup` VALUES ('376', '58983019ba1260dcd773c125cda8182b', '1445764077', '1');
INSERT INTO `game_welfare_hangup` VALUES ('377', '8856baa6b92525a704f4778a471ceddf', '1445764223', '1');
INSERT INTO `game_welfare_hangup` VALUES ('378', '58983019ba1260dcd773c125cda8182b', '1445764267', '1');
INSERT INTO `game_welfare_hangup` VALUES ('379', '8856baa6b92525a704f4778a471ceddf', '1445764408', '1');
INSERT INTO `game_welfare_hangup` VALUES ('380', '58983019ba1260dcd773c125cda8182b', '1445764453', '1');
INSERT INTO `game_welfare_hangup` VALUES ('381', '8856baa6b92525a704f4778a471ceddf', '1445764610', '1');
INSERT INTO `game_welfare_hangup` VALUES ('382', '58983019ba1260dcd773c125cda8182b', '1445764649', '1');
INSERT INTO `game_welfare_hangup` VALUES ('383', '8856baa6b92525a704f4778a471ceddf', '1445764813', '1');
INSERT INTO `game_welfare_hangup` VALUES ('384', '58983019ba1260dcd773c125cda8182b', '1445764849', '1');
INSERT INTO `game_welfare_hangup` VALUES ('385', '8856baa6b92525a704f4778a471ceddf', '1445765018', '1');
INSERT INTO `game_welfare_hangup` VALUES ('386', '58983019ba1260dcd773c125cda8182b', '1445765039', '1');
INSERT INTO `game_welfare_hangup` VALUES ('387', '8856baa6b92525a704f4778a471ceddf', '1445765227', '1');
INSERT INTO `game_welfare_hangup` VALUES ('388', '58983019ba1260dcd773c125cda8182b', '1445765246', '1');
INSERT INTO `game_welfare_hangup` VALUES ('389', '8856baa6b92525a704f4778a471ceddf', '1445765445', '1');
INSERT INTO `game_welfare_hangup` VALUES ('390', '58983019ba1260dcd773c125cda8182b', '1445765462', '1');
INSERT INTO `game_welfare_hangup` VALUES ('391', '8856baa6b92525a704f4778a471ceddf', '1445765654', '1');
INSERT INTO `game_welfare_hangup` VALUES ('392', '58983019ba1260dcd773c125cda8182b', '1445765666', '1');
INSERT INTO `game_welfare_hangup` VALUES ('393', '8856baa6b92525a704f4778a471ceddf', '1445765863', '1');
INSERT INTO `game_welfare_hangup` VALUES ('394', '58983019ba1260dcd773c125cda8182b', '1445765875', '1');
INSERT INTO `game_welfare_hangup` VALUES ('395', '8856baa6b92525a704f4778a471ceddf', '1445766067', '1');
INSERT INTO `game_welfare_hangup` VALUES ('396', '58983019ba1260dcd773c125cda8182b', '1445766080', '1');
INSERT INTO `game_welfare_hangup` VALUES ('397', '8856baa6b92525a704f4778a471ceddf', '1445766262', '1');
INSERT INTO `game_welfare_hangup` VALUES ('398', '58983019ba1260dcd773c125cda8182b', '1445766274', '1');
INSERT INTO `game_welfare_hangup` VALUES ('399', '8856baa6b92525a704f4778a471ceddf', '1445766460', '1');
INSERT INTO `game_welfare_hangup` VALUES ('400', '58983019ba1260dcd773c125cda8182b', '1445766469', '1');
INSERT INTO `game_welfare_hangup` VALUES ('401', '8856baa6b92525a704f4778a471ceddf', '1445766658', '1');
INSERT INTO `game_welfare_hangup` VALUES ('402', '58983019ba1260dcd773c125cda8182b', '1445766670', '1');
INSERT INTO `game_welfare_hangup` VALUES ('403', '8856baa6b92525a704f4778a471ceddf', '1445766861', '1');
INSERT INTO `game_welfare_hangup` VALUES ('404', '58983019ba1260dcd773c125cda8182b', '1445766871', '1');
INSERT INTO `game_welfare_hangup` VALUES ('405', '8856baa6b92525a704f4778a471ceddf', '1445767060', '1');
INSERT INTO `game_welfare_hangup` VALUES ('406', '58983019ba1260dcd773c125cda8182b', '1445767072', '1');
INSERT INTO `game_welfare_hangup` VALUES ('407', '8856baa6b92525a704f4778a471ceddf', '1445767264', '1');
INSERT INTO `game_welfare_hangup` VALUES ('408', '58983019ba1260dcd773c125cda8182b', '1445767273', '1');
INSERT INTO `game_welfare_hangup` VALUES ('409', '8856baa6b92525a704f4778a471ceddf', '1445767462', '1');
INSERT INTO `game_welfare_hangup` VALUES ('410', '58983019ba1260dcd773c125cda8182b', '1445767476', '1');
INSERT INTO `game_welfare_hangup` VALUES ('411', '8856baa6b92525a704f4778a471ceddf', '1445767662', '1');
INSERT INTO `game_welfare_hangup` VALUES ('412', '58983019ba1260dcd773c125cda8182b', '1445767682', '1');
INSERT INTO `game_welfare_hangup` VALUES ('413', '8856baa6b92525a704f4778a471ceddf', '1445767868', '1');
INSERT INTO `game_welfare_hangup` VALUES ('414', '58983019ba1260dcd773c125cda8182b', '1445767887', '1');
INSERT INTO `game_welfare_hangup` VALUES ('415', '8856baa6b92525a704f4778a471ceddf', '1445768074', '1');
INSERT INTO `game_welfare_hangup` VALUES ('416', '58983019ba1260dcd773c125cda8182b', '1445768100', '1');
INSERT INTO `game_welfare_hangup` VALUES ('417', '8856baa6b92525a704f4778a471ceddf', '1445768276', '1');
INSERT INTO `game_welfare_hangup` VALUES ('418', '58983019ba1260dcd773c125cda8182b', '1445768296', '1');
INSERT INTO `game_welfare_hangup` VALUES ('419', '8856baa6b92525a704f4778a471ceddf', '1445768476', '1');
INSERT INTO `game_welfare_hangup` VALUES ('420', '58983019ba1260dcd773c125cda8182b', '1445768500', '1');
INSERT INTO `game_welfare_hangup` VALUES ('421', '8856baa6b92525a704f4778a471ceddf', '1445768679', '1');
INSERT INTO `game_welfare_hangup` VALUES ('422', '58983019ba1260dcd773c125cda8182b', '1445768705', '1');
INSERT INTO `game_welfare_hangup` VALUES ('423', '8856baa6b92525a704f4778a471ceddf', '1445768884', '1');
INSERT INTO `game_welfare_hangup` VALUES ('424', '58983019ba1260dcd773c125cda8182b', '1445768911', '1');
INSERT INTO `game_welfare_hangup` VALUES ('425', '8856baa6b92525a704f4778a471ceddf', '1445769085', '1');
INSERT INTO `game_welfare_hangup` VALUES ('426', '58983019ba1260dcd773c125cda8182b', '1445769108', '1');
INSERT INTO `game_welfare_hangup` VALUES ('427', '8856baa6b92525a704f4778a471ceddf', '1445769298', '1');
INSERT INTO `game_welfare_hangup` VALUES ('428', '58983019ba1260dcd773c125cda8182b', '1445769322', '1');
INSERT INTO `game_welfare_hangup` VALUES ('429', '8856baa6b92525a704f4778a471ceddf', '1445769519', '1');
INSERT INTO `game_welfare_hangup` VALUES ('430', '58983019ba1260dcd773c125cda8182b', '1445769542', '1');
INSERT INTO `game_welfare_hangup` VALUES ('431', '8856baa6b92525a704f4778a471ceddf', '1445769750', '1');
INSERT INTO `game_welfare_hangup` VALUES ('432', '58983019ba1260dcd773c125cda8182b', '1445769757', '1');
INSERT INTO `game_welfare_hangup` VALUES ('433', '8856baa6b92525a704f4778a471ceddf', '1445769982', '1');
INSERT INTO `game_welfare_hangup` VALUES ('434', '58983019ba1260dcd773c125cda8182b', '1445769986', '1');
INSERT INTO `game_welfare_hangup` VALUES ('435', '8856baa6b92525a704f4778a471ceddf', '1445770209', '1');
INSERT INTO `game_welfare_hangup` VALUES ('436', '58983019ba1260dcd773c125cda8182b', '1445770216', '1');
INSERT INTO `game_welfare_hangup` VALUES ('437', '8856baa6b92525a704f4778a471ceddf', '1445770438', '1');
INSERT INTO `game_welfare_hangup` VALUES ('438', '58983019ba1260dcd773c125cda8182b', '1445770443', '1');
INSERT INTO `game_welfare_hangup` VALUES ('439', '8856baa6b92525a704f4778a471ceddf', '1445770668', '1');
INSERT INTO `game_welfare_hangup` VALUES ('440', '58983019ba1260dcd773c125cda8182b', '1445770669', '1');
INSERT INTO `game_welfare_hangup` VALUES ('441', '8856baa6b92525a704f4778a471ceddf', '1445770900', '1');
INSERT INTO `game_welfare_hangup` VALUES ('442', '58983019ba1260dcd773c125cda8182b', '1445770900', '1');
INSERT INTO `game_welfare_hangup` VALUES ('443', '8856baa6b92525a704f4778a471ceddf', '1445771130', '1');
INSERT INTO `game_welfare_hangup` VALUES ('444', '58983019ba1260dcd773c125cda8182b', '1445771130', '1');
INSERT INTO `game_welfare_hangup` VALUES ('445', '58983019ba1260dcd773c125cda8182b', '1445771362', '1');
INSERT INTO `game_welfare_hangup` VALUES ('446', '8856baa6b92525a704f4778a471ceddf', '1445771365', '1');
INSERT INTO `game_welfare_hangup` VALUES ('447', '8856baa6b92525a704f4778a471ceddf', '1445771587', '1');
INSERT INTO `game_welfare_hangup` VALUES ('448', '58983019ba1260dcd773c125cda8182b', '1445771596', '1');
INSERT INTO `game_welfare_hangup` VALUES ('449', '8856baa6b92525a704f4778a471ceddf', '1445771810', '1');
INSERT INTO `game_welfare_hangup` VALUES ('450', '58983019ba1260dcd773c125cda8182b', '1445771822', '1');
INSERT INTO `game_welfare_hangup` VALUES ('451', '8856baa6b92525a704f4778a471ceddf', '1445772001', '1');
INSERT INTO `game_welfare_hangup` VALUES ('452', '58983019ba1260dcd773c125cda8182b', '1445772013', '1');
INSERT INTO `game_welfare_hangup` VALUES ('453', '8856baa6b92525a704f4778a471ceddf', '1445772181', '1');
INSERT INTO `game_welfare_hangup` VALUES ('454', '58983019ba1260dcd773c125cda8182b', '1445772201', '1');
INSERT INTO `game_welfare_hangup` VALUES ('455', '8856baa6b92525a704f4778a471ceddf', '1445772371', '1');
INSERT INTO `game_welfare_hangup` VALUES ('456', '58983019ba1260dcd773c125cda8182b', '1445772389', '1');
INSERT INTO `game_welfare_hangup` VALUES ('457', '8856baa6b92525a704f4778a471ceddf', '1445772556', '1');
INSERT INTO `game_welfare_hangup` VALUES ('458', '58983019ba1260dcd773c125cda8182b', '1445772576', '1');
INSERT INTO `game_welfare_hangup` VALUES ('459', '8856baa6b92525a704f4778a471ceddf', '1445772739', '1');
INSERT INTO `game_welfare_hangup` VALUES ('460', '58983019ba1260dcd773c125cda8182b', '1445772759', '1');
INSERT INTO `game_welfare_hangup` VALUES ('461', '8856baa6b92525a704f4778a471ceddf', '1445772927', '1');
INSERT INTO `game_welfare_hangup` VALUES ('462', '58983019ba1260dcd773c125cda8182b', '1445772952', '1');
INSERT INTO `game_welfare_hangup` VALUES ('463', '8856baa6b92525a704f4778a471ceddf', '1445773113', '1');
INSERT INTO `game_welfare_hangup` VALUES ('464', '58983019ba1260dcd773c125cda8182b', '1445773137', '1');
INSERT INTO `game_welfare_hangup` VALUES ('465', '8856baa6b92525a704f4778a471ceddf', '1445773301', '1');
INSERT INTO `game_welfare_hangup` VALUES ('466', '58983019ba1260dcd773c125cda8182b', '1445773327', '1');
INSERT INTO `game_welfare_hangup` VALUES ('467', '8856baa6b92525a704f4778a471ceddf', '1445773495', '1');
INSERT INTO `game_welfare_hangup` VALUES ('468', '58983019ba1260dcd773c125cda8182b', '1445773516', '1');
INSERT INTO `game_welfare_hangup` VALUES ('469', '8856baa6b92525a704f4778a471ceddf', '1445773688', '1');
INSERT INTO `game_welfare_hangup` VALUES ('470', '58983019ba1260dcd773c125cda8182b', '1445773705', '1');
INSERT INTO `game_welfare_hangup` VALUES ('471', '8856baa6b92525a704f4778a471ceddf', '1445773877', '1');
INSERT INTO `game_welfare_hangup` VALUES ('472', '58983019ba1260dcd773c125cda8182b', '1445773894', '1');
INSERT INTO `game_welfare_hangup` VALUES ('473', '8856baa6b92525a704f4778a471ceddf', '1445774063', '1');
INSERT INTO `game_welfare_hangup` VALUES ('474', '58983019ba1260dcd773c125cda8182b', '1445774080', '1');
INSERT INTO `game_welfare_hangup` VALUES ('475', '8856baa6b92525a704f4778a471ceddf', '1445774250', '1');
INSERT INTO `game_welfare_hangup` VALUES ('476', '58983019ba1260dcd773c125cda8182b', '1445774268', '1');
INSERT INTO `game_welfare_hangup` VALUES ('477', '8856baa6b92525a704f4778a471ceddf', '1445774437', '1');
INSERT INTO `game_welfare_hangup` VALUES ('478', '58983019ba1260dcd773c125cda8182b', '1445774455', '1');
INSERT INTO `game_welfare_hangup` VALUES ('479', '8856baa6b92525a704f4778a471ceddf', '1445774617', '1');
INSERT INTO `game_welfare_hangup` VALUES ('480', '58983019ba1260dcd773c125cda8182b', '1445774639', '1');
INSERT INTO `game_welfare_hangup` VALUES ('481', '8856baa6b92525a704f4778a471ceddf', '1445774804', '1');
INSERT INTO `game_welfare_hangup` VALUES ('482', '58983019ba1260dcd773c125cda8182b', '1445774832', '1');
INSERT INTO `game_welfare_hangup` VALUES ('483', '8856baa6b92525a704f4778a471ceddf', '1445774996', '1');
INSERT INTO `game_welfare_hangup` VALUES ('484', '58983019ba1260dcd773c125cda8182b', '1445775020', '1');
INSERT INTO `game_welfare_hangup` VALUES ('485', '8856baa6b92525a704f4778a471ceddf', '1445775181', '1');
INSERT INTO `game_welfare_hangup` VALUES ('486', '58983019ba1260dcd773c125cda8182b', '1445775207', '1');
INSERT INTO `game_welfare_hangup` VALUES ('487', '8856baa6b92525a704f4778a471ceddf', '1445775369', '1');
INSERT INTO `game_welfare_hangup` VALUES ('488', '58983019ba1260dcd773c125cda8182b', '1445775393', '1');
INSERT INTO `game_welfare_hangup` VALUES ('489', '8856baa6b92525a704f4778a471ceddf', '1445775562', '1');
INSERT INTO `game_welfare_hangup` VALUES ('490', '58983019ba1260dcd773c125cda8182b', '1445775582', '1');
INSERT INTO `game_welfare_hangup` VALUES ('491', '8856baa6b92525a704f4778a471ceddf', '1445775751', '1');
INSERT INTO `game_welfare_hangup` VALUES ('492', '58983019ba1260dcd773c125cda8182b', '1445775769', '1');
INSERT INTO `game_welfare_hangup` VALUES ('493', '8856baa6b92525a704f4778a471ceddf', '1445775940', '1');
INSERT INTO `game_welfare_hangup` VALUES ('494', '58983019ba1260dcd773c125cda8182b', '1445775955', '1');
INSERT INTO `game_welfare_hangup` VALUES ('495', '8856baa6b92525a704f4778a471ceddf', '1445776124', '1');
INSERT INTO `game_welfare_hangup` VALUES ('496', '58983019ba1260dcd773c125cda8182b', '1445776141', '1');
INSERT INTO `game_welfare_hangup` VALUES ('497', '8856baa6b92525a704f4778a471ceddf', '1445776310', '1');
INSERT INTO `game_welfare_hangup` VALUES ('498', '58983019ba1260dcd773c125cda8182b', '1445776333', '1');
INSERT INTO `game_welfare_hangup` VALUES ('499', '8856baa6b92525a704f4778a471ceddf', '1445776498', '1');
INSERT INTO `game_welfare_hangup` VALUES ('500', '58983019ba1260dcd773c125cda8182b', '1445776519', '1');
INSERT INTO `game_welfare_hangup` VALUES ('501', '8856baa6b92525a704f4778a471ceddf', '1445776681', '1');
INSERT INTO `game_welfare_hangup` VALUES ('502', '58983019ba1260dcd773c125cda8182b', '1445776705', '1');
INSERT INTO `game_welfare_hangup` VALUES ('503', '8856baa6b92525a704f4778a471ceddf', '1445776864', '1');
INSERT INTO `game_welfare_hangup` VALUES ('504', '58983019ba1260dcd773c125cda8182b', '1445776888', '1');
INSERT INTO `game_welfare_hangup` VALUES ('505', '8856baa6b92525a704f4778a471ceddf', '1445777053', '1');
INSERT INTO `game_welfare_hangup` VALUES ('506', '58983019ba1260dcd773c125cda8182b', '1445777077', '1');
INSERT INTO `game_welfare_hangup` VALUES ('507', '8856baa6b92525a704f4778a471ceddf', '1445777233', '1');
INSERT INTO `game_welfare_hangup` VALUES ('508', '58983019ba1260dcd773c125cda8182b', '1445777262', '1');
INSERT INTO `game_welfare_hangup` VALUES ('509', '8856baa6b92525a704f4778a471ceddf', '1445777417', '1');
INSERT INTO `game_welfare_hangup` VALUES ('510', '58983019ba1260dcd773c125cda8182b', '1445777443', '1');
INSERT INTO `game_welfare_hangup` VALUES ('511', '8856baa6b92525a704f4778a471ceddf', '1445777599', '1');
INSERT INTO `game_welfare_hangup` VALUES ('512', '58983019ba1260dcd773c125cda8182b', '1445777626', '1');
INSERT INTO `game_welfare_hangup` VALUES ('513', '8856baa6b92525a704f4778a471ceddf', '1445777784', '1');
INSERT INTO `game_welfare_hangup` VALUES ('514', '58983019ba1260dcd773c125cda8182b', '1445777814', '1');
INSERT INTO `game_welfare_hangup` VALUES ('515', '8856baa6b92525a704f4778a471ceddf', '1445777967', '1');
INSERT INTO `game_welfare_hangup` VALUES ('516', '58983019ba1260dcd773c125cda8182b', '1445778001', '1');
INSERT INTO `game_welfare_hangup` VALUES ('517', '8856baa6b92525a704f4778a471ceddf', '1445778154', '1');
INSERT INTO `game_welfare_hangup` VALUES ('518', '58983019ba1260dcd773c125cda8182b', '1445778189', '1');
INSERT INTO `game_welfare_hangup` VALUES ('519', '8856baa6b92525a704f4778a471ceddf', '1445778337', '1');
INSERT INTO `game_welfare_hangup` VALUES ('520', '58983019ba1260dcd773c125cda8182b', '1445778373', '1');
INSERT INTO `game_welfare_hangup` VALUES ('521', '8856baa6b92525a704f4778a471ceddf', '1445778523', '1');
INSERT INTO `game_welfare_hangup` VALUES ('522', '58983019ba1260dcd773c125cda8182b', '1445778562', '1');
INSERT INTO `game_welfare_hangup` VALUES ('523', '8856baa6b92525a704f4778a471ceddf', '1445778706', '1');
INSERT INTO `game_welfare_hangup` VALUES ('524', '58983019ba1260dcd773c125cda8182b', '1445778745', '1');
INSERT INTO `game_welfare_hangup` VALUES ('525', '8856baa6b92525a704f4778a471ceddf', '1445778892', '1');
INSERT INTO `game_welfare_hangup` VALUES ('526', '58983019ba1260dcd773c125cda8182b', '1445778928', '1');
INSERT INTO `game_welfare_hangup` VALUES ('527', '8856baa6b92525a704f4778a471ceddf', '1445779075', '1');
INSERT INTO `game_welfare_hangup` VALUES ('528', '58983019ba1260dcd773c125cda8182b', '1445779114', '1');
INSERT INTO `game_welfare_hangup` VALUES ('529', '8856baa6b92525a704f4778a471ceddf', '1445779263', '1');
INSERT INTO `game_welfare_hangup` VALUES ('530', '58983019ba1260dcd773c125cda8182b', '1445779303', '1');
INSERT INTO `game_welfare_hangup` VALUES ('531', '8856baa6b92525a704f4778a471ceddf', '1445779447', '1');
INSERT INTO `game_welfare_hangup` VALUES ('532', '58983019ba1260dcd773c125cda8182b', '1445779489', '1');
INSERT INTO `game_welfare_hangup` VALUES ('533', '8856baa6b92525a704f4778a471ceddf', '1445779639', '1');
INSERT INTO `game_welfare_hangup` VALUES ('534', '58983019ba1260dcd773c125cda8182b', '1445779681', '1');
INSERT INTO `game_welfare_hangup` VALUES ('535', '8856baa6b92525a704f4778a471ceddf', '1445779823', '1');
INSERT INTO `game_welfare_hangup` VALUES ('536', '58983019ba1260dcd773c125cda8182b', '1445779865', '1');
INSERT INTO `game_welfare_hangup` VALUES ('537', '8856baa6b92525a704f4778a471ceddf', '1445780011', '1');
INSERT INTO `game_welfare_hangup` VALUES ('538', '58983019ba1260dcd773c125cda8182b', '1445780053', '1');
INSERT INTO `game_welfare_hangup` VALUES ('539', '8856baa6b92525a704f4778a471ceddf', '1445780202', '1');
INSERT INTO `game_welfare_hangup` VALUES ('540', '58983019ba1260dcd773c125cda8182b', '1445780239', '1');
INSERT INTO `game_welfare_hangup` VALUES ('541', '8856baa6b92525a704f4778a471ceddf', '1445780387', '1');
INSERT INTO `game_welfare_hangup` VALUES ('542', '58983019ba1260dcd773c125cda8182b', '1445780424', '1');
INSERT INTO `game_welfare_hangup` VALUES ('543', '8856baa6b92525a704f4778a471ceddf', '1445780572', '1');
INSERT INTO `game_welfare_hangup` VALUES ('544', '58983019ba1260dcd773c125cda8182b', '1445780608', '1');
INSERT INTO `game_welfare_hangup` VALUES ('545', '8856baa6b92525a704f4778a471ceddf', '1445780760', '1');
INSERT INTO `game_welfare_hangup` VALUES ('546', '58983019ba1260dcd773c125cda8182b', '1445780794', '1');
INSERT INTO `game_welfare_hangup` VALUES ('547', '8856baa6b92525a704f4778a471ceddf', '1445780948', '1');
INSERT INTO `game_welfare_hangup` VALUES ('548', '58983019ba1260dcd773c125cda8182b', '1445780980', '1');
INSERT INTO `game_welfare_hangup` VALUES ('549', '8856baa6b92525a704f4778a471ceddf', '1445781132', '1');
INSERT INTO `game_welfare_hangup` VALUES ('550', '58983019ba1260dcd773c125cda8182b', '1445781166', '1');
INSERT INTO `game_welfare_hangup` VALUES ('551', '8856baa6b92525a704f4778a471ceddf', '1445781322', '1');
INSERT INTO `game_welfare_hangup` VALUES ('552', '58983019ba1260dcd773c125cda8182b', '1445781353', '1');
INSERT INTO `game_welfare_hangup` VALUES ('553', '8856baa6b92525a704f4778a471ceddf', '1445781509', '1');
INSERT INTO `game_welfare_hangup` VALUES ('554', '58983019ba1260dcd773c125cda8182b', '1445781538', '1');
INSERT INTO `game_welfare_hangup` VALUES ('555', '8856baa6b92525a704f4778a471ceddf', '1445781697', '1');
INSERT INTO `game_welfare_hangup` VALUES ('556', '58983019ba1260dcd773c125cda8182b', '1445781721', '1');
INSERT INTO `game_welfare_hangup` VALUES ('557', '8856baa6b92525a704f4778a471ceddf', '1445781883', '1');
INSERT INTO `game_welfare_hangup` VALUES ('558', '58983019ba1260dcd773c125cda8182b', '1445781909', '1');
INSERT INTO `game_welfare_hangup` VALUES ('559', '8856baa6b92525a704f4778a471ceddf', '1445782072', '1');
INSERT INTO `game_welfare_hangup` VALUES ('560', '58983019ba1260dcd773c125cda8182b', '1445782099', '1');
INSERT INTO `game_welfare_hangup` VALUES ('561', '8856baa6b92525a704f4778a471ceddf', '1445782262', '1');
INSERT INTO `game_welfare_hangup` VALUES ('562', '58983019ba1260dcd773c125cda8182b', '1445782288', '1');
INSERT INTO `game_welfare_hangup` VALUES ('563', '8856baa6b92525a704f4778a471ceddf', '1445782453', '1');
INSERT INTO `game_welfare_hangup` VALUES ('564', '58983019ba1260dcd773c125cda8182b', '1445782476', '1');
INSERT INTO `game_welfare_hangup` VALUES ('565', '8856baa6b92525a704f4778a471ceddf', '1445782636', '1');
INSERT INTO `game_welfare_hangup` VALUES ('566', '58983019ba1260dcd773c125cda8182b', '1445782660', '1');
INSERT INTO `game_welfare_hangup` VALUES ('567', '8856baa6b92525a704f4778a471ceddf', '1445782817', '1');
INSERT INTO `game_welfare_hangup` VALUES ('568', '58983019ba1260dcd773c125cda8182b', '1445782841', '1');
INSERT INTO `game_welfare_hangup` VALUES ('569', '8856baa6b92525a704f4778a471ceddf', '1445782999', '1');
INSERT INTO `game_welfare_hangup` VALUES ('570', '58983019ba1260dcd773c125cda8182b', '1445783023', '1');
INSERT INTO `game_welfare_hangup` VALUES ('571', '8856baa6b92525a704f4778a471ceddf', '1445783180', '1');
INSERT INTO `game_welfare_hangup` VALUES ('572', '58983019ba1260dcd773c125cda8182b', '1445783206', '1');
INSERT INTO `game_welfare_hangup` VALUES ('573', '8856baa6b92525a704f4778a471ceddf', '1445783362', '1');
INSERT INTO `game_welfare_hangup` VALUES ('574', '58983019ba1260dcd773c125cda8182b', '1445783387', '1');
INSERT INTO `game_welfare_hangup` VALUES ('575', '8856baa6b92525a704f4778a471ceddf', '1445783543', '1');
INSERT INTO `game_welfare_hangup` VALUES ('576', '58983019ba1260dcd773c125cda8182b', '1445783569', '1');
INSERT INTO `game_welfare_hangup` VALUES ('577', '8856baa6b92525a704f4778a471ceddf', '1445783725', '1');
INSERT INTO `game_welfare_hangup` VALUES ('578', '58983019ba1260dcd773c125cda8182b', '1445783752', '1');
INSERT INTO `game_welfare_hangup` VALUES ('579', '8856baa6b92525a704f4778a471ceddf', '1445783906', '1');
INSERT INTO `game_welfare_hangup` VALUES ('580', '58983019ba1260dcd773c125cda8182b', '1445783933', '1');
INSERT INTO `game_welfare_hangup` VALUES ('581', '8856baa6b92525a704f4778a471ceddf', '1445784088', '1');
INSERT INTO `game_welfare_hangup` VALUES ('582', '58983019ba1260dcd773c125cda8182b', '1445784115', '1');
INSERT INTO `game_welfare_hangup` VALUES ('583', '8856baa6b92525a704f4778a471ceddf', '1445784271', '1');
INSERT INTO `game_welfare_hangup` VALUES ('584', '58983019ba1260dcd773c125cda8182b', '1445784298', '1');
INSERT INTO `game_welfare_hangup` VALUES ('585', '8856baa6b92525a704f4778a471ceddf', '1445784451', '1');
INSERT INTO `game_welfare_hangup` VALUES ('586', '58983019ba1260dcd773c125cda8182b', '1445784479', '1');
INSERT INTO `game_welfare_hangup` VALUES ('587', '8856baa6b92525a704f4778a471ceddf', '1445784634', '1');
INSERT INTO `game_welfare_hangup` VALUES ('588', '58983019ba1260dcd773c125cda8182b', '1445784661', '1');
INSERT INTO `game_welfare_hangup` VALUES ('589', '8856baa6b92525a704f4778a471ceddf', '1445784816', '1');
INSERT INTO `game_welfare_hangup` VALUES ('590', '58983019ba1260dcd773c125cda8182b', '1445784844', '1');
INSERT INTO `game_welfare_hangup` VALUES ('591', '8856baa6b92525a704f4778a471ceddf', '1445784997', '1');
INSERT INTO `game_welfare_hangup` VALUES ('592', '58983019ba1260dcd773c125cda8182b', '1445785025', '1');
INSERT INTO `game_welfare_hangup` VALUES ('593', '8856baa6b92525a704f4778a471ceddf', '1445785177', '1');
INSERT INTO `game_welfare_hangup` VALUES ('594', '58983019ba1260dcd773c125cda8182b', '1445785207', '1');
INSERT INTO `game_welfare_hangup` VALUES ('595', '8856baa6b92525a704f4778a471ceddf', '1445785360', '1');
INSERT INTO `game_welfare_hangup` VALUES ('596', '58983019ba1260dcd773c125cda8182b', '1445785388', '1');
INSERT INTO `game_welfare_hangup` VALUES ('597', '8856baa6b92525a704f4778a471ceddf', '1445785543', '1');
INSERT INTO `game_welfare_hangup` VALUES ('598', '58983019ba1260dcd773c125cda8182b', '1445785570', '1');
INSERT INTO `game_welfare_hangup` VALUES ('599', '8856baa6b92525a704f4778a471ceddf', '1445785725', '1');
INSERT INTO `game_welfare_hangup` VALUES ('600', '58983019ba1260dcd773c125cda8182b', '1445785753', '1');
INSERT INTO `game_welfare_hangup` VALUES ('601', '8856baa6b92525a704f4778a471ceddf', '1445785905', '1');
INSERT INTO `game_welfare_hangup` VALUES ('602', '58983019ba1260dcd773c125cda8182b', '1445785934', '1');
INSERT INTO `game_welfare_hangup` VALUES ('603', '8856baa6b92525a704f4778a471ceddf', '1445786086', '1');
INSERT INTO `game_welfare_hangup` VALUES ('604', '58983019ba1260dcd773c125cda8182b', '1445786116', '1');
INSERT INTO `game_welfare_hangup` VALUES ('605', '8856baa6b92525a704f4778a471ceddf', '1445786266', '1');
INSERT INTO `game_welfare_hangup` VALUES ('606', '58983019ba1260dcd773c125cda8182b', '1445786297', '1');
INSERT INTO `game_welfare_hangup` VALUES ('607', '8856baa6b92525a704f4778a471ceddf', '1445786446', '1');
INSERT INTO `game_welfare_hangup` VALUES ('608', '58983019ba1260dcd773c125cda8182b', '1445786479', '1');
INSERT INTO `game_welfare_hangup` VALUES ('609', '8856baa6b92525a704f4778a471ceddf', '1445786627', '1');
INSERT INTO `game_welfare_hangup` VALUES ('610', '58983019ba1260dcd773c125cda8182b', '1445786662', '1');
INSERT INTO `game_welfare_hangup` VALUES ('611', '8856baa6b92525a704f4778a471ceddf', '1445786807', '1');
INSERT INTO `game_welfare_hangup` VALUES ('612', '58983019ba1260dcd773c125cda8182b', '1445786845', '1');
INSERT INTO `game_welfare_hangup` VALUES ('613', '8856baa6b92525a704f4778a471ceddf', '1445786988', '1');
INSERT INTO `game_welfare_hangup` VALUES ('614', '58983019ba1260dcd773c125cda8182b', '1445787028', '1');
INSERT INTO `game_welfare_hangup` VALUES ('615', '8856baa6b92525a704f4778a471ceddf', '1445787170', '1');
INSERT INTO `game_welfare_hangup` VALUES ('616', '58983019ba1260dcd773c125cda8182b', '1445787209', '1');
INSERT INTO `game_welfare_hangup` VALUES ('617', '8856baa6b92525a704f4778a471ceddf', '1445787350', '1');
INSERT INTO `game_welfare_hangup` VALUES ('618', '58983019ba1260dcd773c125cda8182b', '1445787391', '1');
INSERT INTO `game_welfare_hangup` VALUES ('619', '8856baa6b92525a704f4778a471ceddf', '1445787530', '1');
INSERT INTO `game_welfare_hangup` VALUES ('620', '58983019ba1260dcd773c125cda8182b', '1445787572', '1');
INSERT INTO `game_welfare_hangup` VALUES ('621', '8856baa6b92525a704f4778a471ceddf', '1445787712', '1');
INSERT INTO `game_welfare_hangup` VALUES ('622', '58983019ba1260dcd773c125cda8182b', '1445787754', '1');
INSERT INTO `game_welfare_hangup` VALUES ('623', '8856baa6b92525a704f4778a471ceddf', '1445787893', '1');
INSERT INTO `game_welfare_hangup` VALUES ('624', '58983019ba1260dcd773c125cda8182b', '1445787935', '1');
INSERT INTO `game_welfare_hangup` VALUES ('625', '8856baa6b92525a704f4778a471ceddf', '1445788075', '1');
INSERT INTO `game_welfare_hangup` VALUES ('626', '58983019ba1260dcd773c125cda8182b', '1445788117', '1');
INSERT INTO `game_welfare_hangup` VALUES ('627', '8856baa6b92525a704f4778a471ceddf', '1445788257', '1');
INSERT INTO `game_welfare_hangup` VALUES ('628', '58983019ba1260dcd773c125cda8182b', '1445788299', '1');
INSERT INTO `game_welfare_hangup` VALUES ('629', '8856baa6b92525a704f4778a471ceddf', '1445788439', '1');
INSERT INTO `game_welfare_hangup` VALUES ('630', '8856baa6b92525a704f4778a471ceddf', '1445788441', '1');
INSERT INTO `game_welfare_hangup` VALUES ('631', '8856baa6b92525a704f4778a471ceddf', '1445788626', '1');
INSERT INTO `game_welfare_hangup` VALUES ('632', '8856baa6b92525a704f4778a471ceddf', '1445788628', '1');
INSERT INTO `game_welfare_hangup` VALUES ('633', '8856baa6b92525a704f4778a471ceddf', '1445788807', '1');
INSERT INTO `game_welfare_hangup` VALUES ('634', '35a65a70315d24b8c30a47418c610d50', '1445788991', '1');
INSERT INTO `game_welfare_hangup` VALUES ('635', '35a65a70315d24b8c30a47418c610d50', '1445788994', '1');
INSERT INTO `game_welfare_hangup` VALUES ('636', '35a65a70315d24b8c30a47418c610d50', '1445789176', '1');
INSERT INTO `game_welfare_hangup` VALUES ('637', '35a65a70315d24b8c30a47418c610d50', '1445789179', '1');
INSERT INTO `game_welfare_hangup` VALUES ('638', '7a7f905841d6d438f154e4d1d5bc6da5', '1445789269', '1');
INSERT INTO `game_welfare_hangup` VALUES ('639', '35a65a70315d24b8c30a47418c610d50', '1445789358', '1');
INSERT INTO `game_welfare_hangup` VALUES ('640', '35a65a70315d24b8c30a47418c610d50', '1445789360', '1');
INSERT INTO `game_welfare_hangup` VALUES ('641', '7a7f905841d6d438f154e4d1d5bc6da5', '1445789451', '1');
INSERT INTO `game_welfare_hangup` VALUES ('642', '35a65a70315d24b8c30a47418c610d50', '1445789538', '1');
INSERT INTO `game_welfare_hangup` VALUES ('643', '35a65a70315d24b8c30a47418c610d50', '1445789540', '1');
INSERT INTO `game_welfare_hangup` VALUES ('644', '686e4d4082d4704c67aba43f97ac8b33', '1445789656', '1');
INSERT INTO `game_welfare_hangup` VALUES ('645', '35a65a70315d24b8c30a47418c610d50', '1445789719', '1');
INSERT INTO `game_welfare_hangup` VALUES ('646', '35a65a70315d24b8c30a47418c610d50', '1445789720', '1');
INSERT INTO `game_welfare_hangup` VALUES ('647', '686e4d4082d4704c67aba43f97ac8b33', '1445789841', '1');
INSERT INTO `game_welfare_hangup` VALUES ('648', '686e4d4082d4704c67aba43f97ac8b33', '1445790029', '1');
INSERT INTO `game_welfare_hangup` VALUES ('649', '686e4d4082d4704c67aba43f97ac8b33', '1445790213', '1');
