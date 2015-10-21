/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-21 14:34:30
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

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
INSERT INTO `game_answer` VALUES ('157', 'a8427a053b1bc766f386cd4a9a4a33e3', '1445392832', '1445393422', '1445393432', '7');
INSERT INTO `game_answer` VALUES ('158', 'f9ee72e2f71780bd2fc4bae7be9f4140', '1445393432', '1445394022', '1445394032', '0');
INSERT INTO `game_answer` VALUES ('159', 'b36fdbda8f542d0d3053120fe8dded61', '1445394032', '1445394622', '1445394632', '4');
INSERT INTO `game_answer` VALUES ('160', '9eff79c1d778a07afa6cdcb292a445c1', '1445394632', '1445395222', '1445395232', '2');
INSERT INTO `game_answer` VALUES ('161', '00576683ec5c40193b3a7380e775e778', '1445395232', '1445395822', '1445395832', '0');
INSERT INTO `game_answer` VALUES ('162', '032967c32bec86d6a7bd840645d7c1bf', '1445395832', '1445396422', '1445396432', '8');
INSERT INTO `game_answer` VALUES ('163', '4019461f1fbb5b948e07c15a6bdbf603', '1445396433', '1445397023', '1445397033', '7');
INSERT INTO `game_answer` VALUES ('164', '970868fc8cc65b20807051365e72ef14', '1445397033', '1445397623', '1445397633', '1');
INSERT INTO `game_answer` VALUES ('165', '87c36cd3984644966fe1d16e53a0820d', '1445397633', '1445398223', '1445398233', '3');
INSERT INTO `game_answer` VALUES ('166', '1a319f66112acfa4551970edd4c04e56', '1445398233', '1445398823', '1445398833', '4');
INSERT INTO `game_answer` VALUES ('167', 'fc8e0ac082baf8bda5efbeedc6353758', '1445398384', '1445398974', '1445398984', '9');
INSERT INTO `game_answer` VALUES ('168', '0efaf5f5e006099741a2a7ce2868b607', '1445398833', '1445399423', '1445399433', '9');
INSERT INTO `game_answer` VALUES ('169', '7fa8356b8d1baeb0b6986421d5f59004', '1445398984', '1445399574', '1445399584', '2');
INSERT INTO `game_answer` VALUES ('170', '4e18193c6a4775d8773c9aad0de5353d', '1445399433', '1445400023', '1445400033', '2');
INSERT INTO `game_answer` VALUES ('171', '9360ccfd40bae7aafeac8a6edb514671', '1445399584', '1445400174', '1445400184', '9');
INSERT INTO `game_answer` VALUES ('172', '2310a76fdb9797e5f67ae9de88a6c702', '1445400033', '1445400623', '1445400633', '2');
INSERT INTO `game_answer` VALUES ('173', 'd8ebae502bee4a006430f7a4081a3fc5', '1445400184', '1445400774', '1445400784', '5');
INSERT INTO `game_answer` VALUES ('174', '1079c727967816514d4b2b22c840da11', '1445400633', '1445401223', '1445401233', '0');
INSERT INTO `game_answer` VALUES ('175', 'c30d636dc944ecc963524e350f306f40', '1445400784', '1445401374', '1445401384', '1');
INSERT INTO `game_answer` VALUES ('176', '18b8e4429f40858d287da4e4f4ddcf68', '1445401233', '1445401823', '1445401833', '5');
INSERT INTO `game_answer` VALUES ('177', '685e7da6e05f54a29bd1c5198f730b58', '1445401384', '1445401974', '1445401984', '7');
INSERT INTO `game_answer` VALUES ('178', '68eda056cf8f07726cd76886d7c1ac10', '1445401833', '1445402423', '1445402433', '6');
INSERT INTO `game_answer` VALUES ('179', 'faf71fdd1c0b859296256d2c16fc7f68', '1445401984', '1445402574', '1445402584', '4');
INSERT INTO `game_answer` VALUES ('180', '97be7bb47a882bae07d68a0f6f3e3926', '1445402433', '1445403023', '1445403033', '0');
INSERT INTO `game_answer` VALUES ('181', '0d0b4603a6611f0b2ed79e6bb181edba', '1445402584', '1445403174', '1445403184', '1');
INSERT INTO `game_answer` VALUES ('182', 'b90a092595797ab7857c9d9d331da47e', '1445403033', '1445403623', '1445403633', '4');
INSERT INTO `game_answer` VALUES ('183', '7adbd0bdd3e7d821256d3c5a5b2bde92', '1445403184', '1445403774', '1445403784', '1');
INSERT INTO `game_answer` VALUES ('184', '81716f5ecbd17e699d79ab547eeff5cd', '1445403633', '1445404223', '1445404233', '3');
INSERT INTO `game_answer` VALUES ('185', '5fb819d68dd2b27507eaab0b70874465', '1445403784', '1445404374', '1445404384', '4');
INSERT INTO `game_answer` VALUES ('186', '126746deaf424fb8e345300717046b4e', '1445404234', '1445404824', '1445404834', '8');
INSERT INTO `game_answer` VALUES ('187', '278427d67eddd7de1f64b005a66e21c9', '1445405075', '1445405665', '1445405675', '6');
INSERT INTO `game_answer` VALUES ('188', '9cacdb57f2d04705a714e1ab57e27445', '1445405675', '1445406265', '1445406275', '1');
INSERT INTO `game_answer` VALUES ('189', '47b27cdff954b2e40beece5482686474', '1445406275', '1445406865', '1445406875', '2');
INSERT INTO `game_answer` VALUES ('190', '173d6704db662c51f4842e9384cdb00a', '1445406876', '1445407466', '1445407476', '1');
INSERT INTO `game_answer` VALUES ('191', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '1445407476', '1445408066', '1445408076', '5');
INSERT INTO `game_answer` VALUES ('192', '5e17b371e9e4723a8c8eb7883fefc007', '1445408076', '1445408666', '1445408676', '1');
INSERT INTO `game_answer` VALUES ('193', '93d852e2015677d9462dd3fd69dcc64f', '1445408676', '1445409266', '1445409276', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
INSERT INTO `game_mode` VALUES ('29', 'fbca1590ccf7e5f6590342eebde6c270', 'c2b366caeed42e6b4fa19d0a09f68d2f', '123', '123123', '1445347236', '2', '1');
INSERT INTO `game_mode` VALUES ('30', '4f21387e464d20030e867b92b5c04e44', '8b83b2ebe86ab593d5206bc3153a9cb4', '15680033681', '那超', '1445350394', '2', '1');
INSERT INTO `game_mode` VALUES ('31', 'f3cef5f26c7a4502e78361d304b4d380', 'a0d250a05a44ca4ca4a18e86daecc20e', '111', '111', '1445356469', '2', '1');
INSERT INTO `game_mode` VALUES ('32', 'af74ef93101d17dbb1d8aa526c1babae', 'a0d250a05a44ca4ca4a18e86daecc20e', '222', '222', '1445356474', '1', '1');

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
  `number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_select
-- ----------------------------
INSERT INTO `game_select` VALUES ('1', '8b83b2ebe86ab593d5206bc3153a9cb4', '4', '1445404273', '5fb819d68dd2b27507eaab0b70874465', '0', '1');
INSERT INTO `game_select` VALUES ('2', '8b83b2ebe86ab593d5206bc3153a9cb4', '5', '1445404421', '126746deaf424fb8e345300717046b4e', '0', '1');
INSERT INTO `game_select` VALUES ('3', '8b83b2ebe86ab593d5206bc3153a9cb4', '4', '1445404424', '126746deaf424fb8e345300717046b4e', '0', '1');
INSERT INTO `game_select` VALUES ('4', '8b83b2ebe86ab593d5206bc3153a9cb4', '2', '1445404426', '126746deaf424fb8e345300717046b4e', '0', '3');
INSERT INTO `game_select` VALUES ('5', '8b83b2ebe86ab593d5206bc3153a9cb4', '5', '1445405144', '278427d67eddd7de1f64b005a66e21c9', '0', '4');
INSERT INTO `game_select` VALUES ('6', '8b83b2ebe86ab593d5206bc3153a9cb4', '4', '1445405169', '278427d67eddd7de1f64b005a66e21c9', '0', '2');
INSERT INTO `game_select` VALUES ('7', '8b83b2ebe86ab593d5206bc3153a9cb4', '3', '1445405192', '278427d67eddd7de1f64b005a66e21c9', '0', '1');
INSERT INTO `game_select` VALUES ('8', '8b83b2ebe86ab593d5206bc3153a9cb4', '6', '1445405642', '278427d67eddd7de1f64b005a66e21c9', '0', '30');
INSERT INTO `game_select` VALUES ('9', '8b83b2ebe86ab593d5206bc3153a9cb4', '7', '1445405650', '278427d67eddd7de1f64b005a66e21c9', '0', '1');
INSERT INTO `game_select` VALUES ('10', '8b83b2ebe86ab593d5206bc3153a9cb4', '5', '1445406096', '9cacdb57f2d04705a714e1ab57e27445', '0', '1');
INSERT INTO `game_select` VALUES ('11', '8b83b2ebe86ab593d5206bc3153a9cb4', '6', '1445406098', '9cacdb57f2d04705a714e1ab57e27445', '0', '19');
INSERT INTO `game_select` VALUES ('12', '8b83b2ebe86ab593d5206bc3153a9cb4', '3', '1445406102', '9cacdb57f2d04705a714e1ab57e27445', '0', '1');
INSERT INTO `game_select` VALUES ('13', '8b83b2ebe86ab593d5206bc3153a9cb4', '5', '1445406437', '47b27cdff954b2e40beece5482686474', '0', '7');
INSERT INTO `game_select` VALUES ('14', '8b83b2ebe86ab593d5206bc3153a9cb4', '4', '1445406551', '47b27cdff954b2e40beece5482686474', '0', '25');
INSERT INTO `game_select` VALUES ('15', '8b83b2ebe86ab593d5206bc3153a9cb4', '3', '1445406625', '47b27cdff954b2e40beece5482686474', '0', '1');
INSERT INTO `game_select` VALUES ('16', '8b83b2ebe86ab593d5206bc3153a9cb4', '5', '1445406959', '173d6704db662c51f4842e9384cdb00a', '0', '5');
INSERT INTO `game_select` VALUES ('17', '8b83b2ebe86ab593d5206bc3153a9cb4', '6', '1445406962', '173d6704db662c51f4842e9384cdb00a', '0', '8');
INSERT INTO `game_select` VALUES ('18', '8b83b2ebe86ab593d5206bc3153a9cb4', '7', '1445406967', '173d6704db662c51f4842e9384cdb00a', '0', '2');
INSERT INTO `game_select` VALUES ('19', '8b83b2ebe86ab593d5206bc3153a9cb4', '3', '1445406982', '173d6704db662c51f4842e9384cdb00a', '0', '1');
INSERT INTO `game_select` VALUES ('20', '8b83b2ebe86ab593d5206bc3153a9cb4', '4', '1445407037', '173d6704db662c51f4842e9384cdb00a', '0', '7');
INSERT INTO `game_select` VALUES ('21', '92178b2d51051c2fa38e3ee7dd31ec83', '7', '1445407357', '173d6704db662c51f4842e9384cdb00a', '0', '6');
INSERT INTO `game_select` VALUES ('22', '92178b2d51051c2fa38e3ee7dd31ec83', '1', '1445407364', '173d6704db662c51f4842e9384cdb00a', '0', '7');
INSERT INTO `game_select` VALUES ('23', '92178b2d51051c2fa38e3ee7dd31ec83', '4', '1445407366', '173d6704db662c51f4842e9384cdb00a', '0', '8');
INSERT INTO `game_select` VALUES ('24', '92178b2d51051c2fa38e3ee7dd31ec83', '6', '1445407369', '173d6704db662c51f4842e9384cdb00a', '0', '11');
INSERT INTO `game_select` VALUES ('25', '92178b2d51051c2fa38e3ee7dd31ec83', '5', '1445407406', '173d6704db662c51f4842e9384cdb00a', '0', '6');
INSERT INTO `game_select` VALUES ('26', '92178b2d51051c2fa38e3ee7dd31ec83', '9', '1445407408', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('27', '92178b2d51051c2fa38e3ee7dd31ec83', '8', '1445407409', '173d6704db662c51f4842e9384cdb00a', '0', '2');
INSERT INTO `game_select` VALUES ('28', '92178b2d51051c2fa38e3ee7dd31ec83', '2', '1445407410', '173d6704db662c51f4842e9384cdb00a', '0', '2');
INSERT INTO `game_select` VALUES ('29', '92178b2d51051c2fa38e3ee7dd31ec83', '3', '1445407411', '173d6704db662c51f4842e9384cdb00a', '0', '2');
INSERT INTO `game_select` VALUES ('30', '9870a2814efc60ed310d2e7ead315616', '4', '1445407416', '173d6704db662c51f4842e9384cdb00a', '0', '7');
INSERT INTO `game_select` VALUES ('31', 'bb0af0869b45ccac5fd11c2937410d5d', '5', '1445407423', '173d6704db662c51f4842e9384cdb00a', '0', '8');
INSERT INTO `game_select` VALUES ('32', 'bb0af0869b45ccac5fd11c2937410d5d', '1', '1445407424', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('33', 'bb0af0869b45ccac5fd11c2937410d5d', '2', '1445407425', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('34', 'bb0af0869b45ccac5fd11c2937410d5d', '3', '1445407426', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('35', 'bb0af0869b45ccac5fd11c2937410d5d', '8', '1445407427', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('36', 'bb0af0869b45ccac5fd11c2937410d5d', '9', '1445407428', '173d6704db662c51f4842e9384cdb00a', '0', '4');
INSERT INTO `game_select` VALUES ('37', 'bb0af0869b45ccac5fd11c2937410d5d', '7', '1445407430', '173d6704db662c51f4842e9384cdb00a', '0', '3');
INSERT INTO `game_select` VALUES ('38', 'bb0af0869b45ccac5fd11c2937410d5d', '6', '1445407430', '173d6704db662c51f4842e9384cdb00a', '0', '30');
INSERT INTO `game_select` VALUES ('39', 'bb0af0869b45ccac5fd11c2937410d5d', '4', '1445407433', '173d6704db662c51f4842e9384cdb00a', '0', '1');
INSERT INTO `game_select` VALUES ('40', 'bb0af0869b45ccac5fd11c2937410d5d', '5', '1445407638', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '0', '30');
INSERT INTO `game_select` VALUES ('41', 'bb0af0869b45ccac5fd11c2937410d5d', '6', '1445407721', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '0', '30');
INSERT INTO `game_select` VALUES ('42', 'bb0af0869b45ccac5fd11c2937410d5d', '7', '1445407789', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '0', '20');
INSERT INTO `game_select` VALUES ('43', 'bb0af0869b45ccac5fd11c2937410d5d', '8', '1445407801', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '0', '1');
INSERT INTO `game_select` VALUES ('44', 'bb0af0869b45ccac5fd11c2937410d5d', '3', '1445407848', 'bb3c9b16a737d6ab78c47ed1ec3e9adc', '0', '30');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_sponsor
-- ----------------------------
INSERT INTO `game_sponsor` VALUES ('1', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '《韩国宇航局》赞助：我们要去远方看看还有什么是我们的，思密达！', '10', '31', '1445344260');
INSERT INTO `game_sponsor` VALUES ('2', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'df910da771aff12b18eed4e191e51fff', '手机淘宝好啊，欧巴都说吊啊。', '1000', '41', '1445344637');
INSERT INTO `game_sponsor` VALUES ('3', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', '“自来水公司”赞助：请开门，我们查一下水表，是真滴。', '1000', '111', '1445345992');
INSERT INTO `game_sponsor` VALUES ('4', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', '心灵鸡汤学会赞助：你可能会觉得自己又矮又丑又没钱，但至少你的判断是对的。', '3000', '222', '1445346759');
INSERT INTO `game_sponsor` VALUES ('5', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'b5ce00a86d0fe4efb1e7eb5dd14d7437', '《3D手游铁血战神》赞助：“建议每日游戏时间不要超过二十四小时哟！”', '5000', '1', '1445356871');
INSERT INTO `game_sponsor` VALUES ('6', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'c3e6889a9dd84fc901951699abb633fe', '《3D手游铁血战神》赞助：“建议每日游戏时间不要超过二十四小时哟！”', '1000', '5', '1445356965');
INSERT INTO `game_sponsor` VALUES ('7', 'c2b366caeed42e6b4fa19d0a09f68d2f', '0095a6edbf82428a3e4c7f0e41a44f2b', '【官方】《站长夫人的零花钱》赞助：“体力好，脑力好，要是有钱就更好。“', '100', '10', '1445358023');

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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_sponsor_receive
-- ----------------------------
INSERT INTO `game_sponsor_receive` VALUES ('1', '123', '123123', null, '123123', null);
INSERT INTO `game_sponsor_receive` VALUES ('2', '123', '123', '123', '123', null);
INSERT INTO `game_sponsor_receive` VALUES ('3', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445350317', null);
INSERT INTO `game_sponsor_receive` VALUES ('4', '8b83b2ebe86ab593d5206bc3153a9cb4', 'e1139d56b03dd513b72a08793780c6ee', '4f21387e464d20030e867b92b5c04e44', '1445350477', null);
INSERT INTO `game_sponsor_receive` VALUES ('5', '8b83b2ebe86ab593d5206bc3153a9cb4', 'e1139d56b03dd513b72a08793780c6ee', '4f21387e464d20030e867b92b5c04e44', '1445350606', null);
INSERT INTO `game_sponsor_receive` VALUES ('6', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445353359', null);
INSERT INTO `game_sponsor_receive` VALUES ('7', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445353380', null);
INSERT INTO `game_sponsor_receive` VALUES ('8', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445353744', null);
INSERT INTO `game_sponsor_receive` VALUES ('9', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445353744', null);
INSERT INTO `game_sponsor_receive` VALUES ('10', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445353744', null);
INSERT INTO `game_sponsor_receive` VALUES ('11', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355278', null);
INSERT INTO `game_sponsor_receive` VALUES ('12', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355382', null);
INSERT INTO `game_sponsor_receive` VALUES ('13', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355449', null);
INSERT INTO `game_sponsor_receive` VALUES ('14', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355506', null);
INSERT INTO `game_sponsor_receive` VALUES ('15', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355534', null);
INSERT INTO `game_sponsor_receive` VALUES ('16', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355562', null);
INSERT INTO `game_sponsor_receive` VALUES ('17', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355612', null);
INSERT INTO `game_sponsor_receive` VALUES ('18', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355655', null);
INSERT INTO `game_sponsor_receive` VALUES ('19', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355712', null);
INSERT INTO `game_sponsor_receive` VALUES ('20', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355745', null);
INSERT INTO `game_sponsor_receive` VALUES ('21', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355772', null);
INSERT INTO `game_sponsor_receive` VALUES ('22', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'df910da771aff12b18eed4e191e51fff', 'fbca1590ccf7e5f6590342eebde6c270', '1445355845', null);
INSERT INTO `game_sponsor_receive` VALUES ('23', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'df910da771aff12b18eed4e191e51fff', 'fbca1590ccf7e5f6590342eebde6c270', '1445355849', null);
INSERT INTO `game_sponsor_receive` VALUES ('24', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355951', null);
INSERT INTO `game_sponsor_receive` VALUES ('25', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355976', null);
INSERT INTO `game_sponsor_receive` VALUES ('26', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445355983', null);
INSERT INTO `game_sponsor_receive` VALUES ('27', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'c6571c525420eecdcd862c7c22ef8b52', 'fbca1590ccf7e5f6590342eebde6c270', '1445355989', null);
INSERT INTO `game_sponsor_receive` VALUES ('28', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445356001', null);
INSERT INTO `game_sponsor_receive` VALUES ('29', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445356004', null);
INSERT INTO `game_sponsor_receive` VALUES ('30', 'c2b366caeed42e6b4fa19d0a09f68d2f', '2395d3d7e6efb6b96f7fc3a1bee1c35c', 'fbca1590ccf7e5f6590342eebde6c270', '1445356006', null);
INSERT INTO `game_sponsor_receive` VALUES ('31', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356016', null);
INSERT INTO `game_sponsor_receive` VALUES ('32', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356016', null);
INSERT INTO `game_sponsor_receive` VALUES ('33', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('34', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('35', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('36', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('37', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('38', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356017', null);
INSERT INTO `game_sponsor_receive` VALUES ('39', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('40', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('41', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('42', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('43', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('44', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('45', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356018', null);
INSERT INTO `game_sponsor_receive` VALUES ('46', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('47', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('48', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('49', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('50', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('51', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356019', null);
INSERT INTO `game_sponsor_receive` VALUES ('52', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356021', null);
INSERT INTO `game_sponsor_receive` VALUES ('53', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356021', null);
INSERT INTO `game_sponsor_receive` VALUES ('54', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356022', null);
INSERT INTO `game_sponsor_receive` VALUES ('55', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356022', null);
INSERT INTO `game_sponsor_receive` VALUES ('56', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356022', null);
INSERT INTO `game_sponsor_receive` VALUES ('57', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356022', null);
INSERT INTO `game_sponsor_receive` VALUES ('58', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356022', null);
INSERT INTO `game_sponsor_receive` VALUES ('59', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356025', null);
INSERT INTO `game_sponsor_receive` VALUES ('60', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356025', null);
INSERT INTO `game_sponsor_receive` VALUES ('61', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'e1139d56b03dd513b72a08793780c6ee', 'fbca1590ccf7e5f6590342eebde6c270', '1445356025', null);
INSERT INTO `game_sponsor_receive` VALUES ('62', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357728', null);
INSERT INTO `game_sponsor_receive` VALUES ('63', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357731', null);
INSERT INTO `game_sponsor_receive` VALUES ('64', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357732', null);
INSERT INTO `game_sponsor_receive` VALUES ('65', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357734', null);
INSERT INTO `game_sponsor_receive` VALUES ('66', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357735', null);
INSERT INTO `game_sponsor_receive` VALUES ('67', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357736', null);
INSERT INTO `game_sponsor_receive` VALUES ('68', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357738', null);
INSERT INTO `game_sponsor_receive` VALUES ('69', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357740', null);
INSERT INTO `game_sponsor_receive` VALUES ('70', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357741', null);
INSERT INTO `game_sponsor_receive` VALUES ('71', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357743', null);
INSERT INTO `game_sponsor_receive` VALUES ('72', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357744', null);
INSERT INTO `game_sponsor_receive` VALUES ('73', '9870a2814efc60ed310d2e7ead315616', 'c6571c525420eecdcd862c7c22ef8b52', '5b5ed9efe270a1df40944ccdc90f39f5', '1445357745', null);
INSERT INTO `game_sponsor_receive` VALUES ('74', '9870a2814efc60ed310d2e7ead315616', '0095a6edbf82428a3e4c7f0e41a44f2b', '5b5ed9efe270a1df40944ccdc90f39f5', '1445358159', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('2', '9870a2814efc60ed310d2e7ead315616', 'a1', '2', '1445408219', 'dca0fa53f320b541711035fce4f34a46');
INSERT INTO `game_user` VALUES ('4', 'bb0af0869b45ccac5fd11c2937410d5d', 'a2', '219', '0', '0849d38b9693ea73285a78b8911dc897');
INSERT INTO `game_user` VALUES ('5', '5d8c8038fbe7967ef7ec251a71df9475', 'a3', '220', '1445271763', 'c56d4b50a192e53ee175248bc7cee3be');
INSERT INTO `game_user` VALUES ('33', '21f1ab8bd5e891594873e8bc3ed87750', 'fangfang', '100', '1445265543', 'f8f448956401b6dc0ea5e603698600dc');
INSERT INTO `game_user` VALUES ('34', '247ef39b877dc6533d2c588f71643dae', 'a4', '300', '0', '24f015bca2c9a6788ffc6e1cb633c8b1');
INSERT INTO `game_user` VALUES ('36', 'adc2eb15142a8be4e1106354819b0949', 'a5', '100', '1445267923', '6379f8116c5cd40e78b4c0131a15a0f3');
INSERT INTO `game_user` VALUES ('37', '1256d74248a90d7ffe3295be641f53d8', 'a6', '100', '0', '7eb404b6605bd33e0b9d17b622d7b21e');
INSERT INTO `game_user` VALUES ('41', 'c2b366caeed42e6b4fa19d0a09f68d2f', 'fang', '0', '1445391984', '90390f4aa58a7d231ce50e5c7a7cc020');
INSERT INTO `game_user` VALUES ('42', '8b83b2ebe86ab593d5206bc3153a9cb4', 'na', '267', '0', '787344807b779d508ea3c570b3739cc6');
INSERT INTO `game_user` VALUES ('43', 'a0d250a05a44ca4ca4a18e86daecc20e', 'fang1', '10000', '0', '9e581241ccfd6a2ffb6d6f3ee6f7b6d2');
INSERT INTO `game_user` VALUES ('44', '21af63b967ad6098f7cb0e0cd07c3456', 'q1', '100', '0', '3ef28270c02fa9667afb281f0ec92070');
INSERT INTO `game_user` VALUES ('45', '92178b2d51051c2fa38e3ee7dd31ec83', '啊', '100', '0', '1d43e5113d94cc01ec82d42540bc3779');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
INSERT INTO `game_welfare_daily` VALUES ('30', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445394394', '100');
INSERT INTO `game_welfare_daily` VALUES ('31', '92178b2d51051c2fa38e3ee7dd31ec83', '1445407355', '100');
INSERT INTO `game_welfare_daily` VALUES ('32', 'bb0af0869b45ccac5fd11c2937410d5d', '1445407422', '100');

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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

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
INSERT INTO `game_welfare_hangup` VALUES ('92', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445394574', '1');
INSERT INTO `game_welfare_hangup` VALUES ('93', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445394755', '1');
INSERT INTO `game_welfare_hangup` VALUES ('94', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445394938', '1');
INSERT INTO `game_welfare_hangup` VALUES ('95', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445395118', '1');
INSERT INTO `game_welfare_hangup` VALUES ('96', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445395298', '1');
INSERT INTO `game_welfare_hangup` VALUES ('97', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445395478', '1');
INSERT INTO `game_welfare_hangup` VALUES ('98', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445395658', '1');
INSERT INTO `game_welfare_hangup` VALUES ('99', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445395839', '1');
INSERT INTO `game_welfare_hangup` VALUES ('100', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396019', '1');
INSERT INTO `game_welfare_hangup` VALUES ('101', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396199', '1');
INSERT INTO `game_welfare_hangup` VALUES ('102', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396379', '1');
INSERT INTO `game_welfare_hangup` VALUES ('103', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396559', '1');
INSERT INTO `game_welfare_hangup` VALUES ('104', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396739', '1');
INSERT INTO `game_welfare_hangup` VALUES ('105', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445396919', '1');
INSERT INTO `game_welfare_hangup` VALUES ('106', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445397100', '1');
INSERT INTO `game_welfare_hangup` VALUES ('107', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445397280', '1');
INSERT INTO `game_welfare_hangup` VALUES ('108', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445397460', '1');
INSERT INTO `game_welfare_hangup` VALUES ('109', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445397640', '1');
INSERT INTO `game_welfare_hangup` VALUES ('110', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445397820', '1');
INSERT INTO `game_welfare_hangup` VALUES ('111', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445398316', '1');
INSERT INTO `game_welfare_hangup` VALUES ('112', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445398504', '1');
INSERT INTO `game_welfare_hangup` VALUES ('113', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445398687', '1');
INSERT INTO `game_welfare_hangup` VALUES ('114', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445398874', '1');
INSERT INTO `game_welfare_hangup` VALUES ('115', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445399072', '1');
INSERT INTO `game_welfare_hangup` VALUES ('116', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445399263', '1');
INSERT INTO `game_welfare_hangup` VALUES ('117', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445399642', '1');
INSERT INTO `game_welfare_hangup` VALUES ('118', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445399824', '1');
INSERT INTO `game_welfare_hangup` VALUES ('119', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400006', '1');
INSERT INTO `game_welfare_hangup` VALUES ('120', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400186', '1');
INSERT INTO `game_welfare_hangup` VALUES ('121', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400369', '1');
INSERT INTO `game_welfare_hangup` VALUES ('122', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400549', '1');
INSERT INTO `game_welfare_hangup` VALUES ('123', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400729', '1');
INSERT INTO `game_welfare_hangup` VALUES ('124', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445400910', '1');
INSERT INTO `game_welfare_hangup` VALUES ('125', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445401094', '1');
INSERT INTO `game_welfare_hangup` VALUES ('126', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445401274', '1');
INSERT INTO `game_welfare_hangup` VALUES ('127', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445401455', '1');
INSERT INTO `game_welfare_hangup` VALUES ('128', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445401641', '1');
INSERT INTO `game_welfare_hangup` VALUES ('129', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445401827', '1');
INSERT INTO `game_welfare_hangup` VALUES ('130', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402010', '1');
INSERT INTO `game_welfare_hangup` VALUES ('131', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402192', '1');
INSERT INTO `game_welfare_hangup` VALUES ('132', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402376', '1');
INSERT INTO `game_welfare_hangup` VALUES ('133', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402560', '1');
INSERT INTO `game_welfare_hangup` VALUES ('134', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402740', '1');
INSERT INTO `game_welfare_hangup` VALUES ('135', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445402921', '1');
INSERT INTO `game_welfare_hangup` VALUES ('136', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445403104', '1');
INSERT INTO `game_welfare_hangup` VALUES ('137', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445403287', '1');
INSERT INTO `game_welfare_hangup` VALUES ('138', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445403467', '1');
INSERT INTO `game_welfare_hangup` VALUES ('139', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445403650', '1');
INSERT INTO `game_welfare_hangup` VALUES ('140', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445403833', '1');
INSERT INTO `game_welfare_hangup` VALUES ('141', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404015', '1');
INSERT INTO `game_welfare_hangup` VALUES ('142', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404202', '1');
INSERT INTO `game_welfare_hangup` VALUES ('143', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404408', '1');
INSERT INTO `game_welfare_hangup` VALUES ('144', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404591', '1');
INSERT INTO `game_welfare_hangup` VALUES ('145', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404771', '1');
INSERT INTO `game_welfare_hangup` VALUES ('146', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445404951', '1');
INSERT INTO `game_welfare_hangup` VALUES ('147', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445405149', '1');
INSERT INTO `game_welfare_hangup` VALUES ('148', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445405340', '1');
INSERT INTO `game_welfare_hangup` VALUES ('149', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445405528', '1');
INSERT INTO `game_welfare_hangup` VALUES ('150', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445405715', '1');
INSERT INTO `game_welfare_hangup` VALUES ('151', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445405895', '1');
INSERT INTO `game_welfare_hangup` VALUES ('152', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445406277', '1');
INSERT INTO `game_welfare_hangup` VALUES ('153', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445406462', '1');
INSERT INTO `game_welfare_hangup` VALUES ('154', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445406655', '1');
INSERT INTO `game_welfare_hangup` VALUES ('155', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445406843', '1');
INSERT INTO `game_welfare_hangup` VALUES ('156', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445407031', '1');
INSERT INTO `game_welfare_hangup` VALUES ('157', '8b83b2ebe86ab593d5206bc3153a9cb4', '1445407213', '1');
INSERT INTO `game_welfare_hangup` VALUES ('158', 'bb0af0869b45ccac5fd11c2937410d5d', '1445407612', '1');
INSERT INTO `game_welfare_hangup` VALUES ('159', 'bb0af0869b45ccac5fd11c2937410d5d', '1445407807', '1');
INSERT INTO `game_welfare_hangup` VALUES ('160', 'bb0af0869b45ccac5fd11c2937410d5d', '1445407990', '1');
INSERT INTO `game_welfare_hangup` VALUES ('161', '9870a2814efc60ed310d2e7ead315616', '1445408217', '1');
