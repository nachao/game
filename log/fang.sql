/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : fang

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-16 18:02:26
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_answer
-- ----------------------------
INSERT INTO `game_answer` VALUES ('1', '5a93c7fa89b25b0b6f791c7fbc40e877', '1444881985', '1444882035', '1444882045', '7');
INSERT INTO `game_answer` VALUES ('2', '5e3878fa13bb3dc6683ff32396e9b19b', '1444882045', '1444882095', '1444882105', '1');
INSERT INTO `game_answer` VALUES ('3', '6f563cb445a0ebcc5c7b312719230090', '1444882105', '1444882155', '1444882165', '6');
INSERT INTO `game_answer` VALUES ('4', '70eab1cba4389124c07da53f7468b7fe', '1444882165', '1444882215', '1444882225', '6');
INSERT INTO `game_answer` VALUES ('5', '27dcff2d0fe2ad1676e638f799a08e59', '1444882225', '1444882275', '1444882285', '6');
INSERT INTO `game_answer` VALUES ('6', '6ddf8eb555b55f71a0db13745023a194', '1444882285', '1444882335', '1444882345', '2');
INSERT INTO `game_answer` VALUES ('7', '6612d8ebb96a3fe0fc6af226a705a0ef', '1444882345', '1444882395', '1444882405', '0');
INSERT INTO `game_answer` VALUES ('8', '5f0fdd5d805329472fba478a6cfd83da', '1444882405', '1444882455', '1444882465', '6');
INSERT INTO `game_answer` VALUES ('9', '5816de833eeddfa1a338b8b5163b9b5d', '1444882465', '1444882515', '1444882525', '7');
INSERT INTO `game_answer` VALUES ('10', '9ef708be256cc7f63862ea70c134c265', '1444882525', '1444882575', '1444882585', '5');
INSERT INTO `game_answer` VALUES ('11', '504443f56afa34685db140dda560830e', '1444883460', '1444884050', '1444884060', '0');
INSERT INTO `game_answer` VALUES ('12', '376691087d9cfb34342a89a6622b44f7', '1444884060', '1444884650', '1444884660', '7');
INSERT INTO `game_answer` VALUES ('13', '3db61a57de8ba5ee861d669468fd5a21', '1444884660', '1444885250', '1444885260', '4');
INSERT INTO `game_answer` VALUES ('14', '880b76a6d18477ff8c92004b48787ab6', '1444885260', '1444885850', '1444885860', '6');
INSERT INTO `game_answer` VALUES ('15', '9a9f867120f43240a18f1e9ba5c49c69', '1444885860', '1444886450', '1444886460', '3');
INSERT INTO `game_answer` VALUES ('16', '13236b7f25ebce8583bc63f055c41d57', '1444886460', '1444887050', '1444887060', '3');
INSERT INTO `game_answer` VALUES ('17', 'babf34c11479a2136cf6535b988dbbc4', '1444887060', '1444887650', '1444887660', '7');
INSERT INTO `game_answer` VALUES ('18', '995f6518b47137d0c4a3781a66fb94e0', '1444887661', '1444888251', '1444888261', '6');
INSERT INTO `game_answer` VALUES ('19', '34a14cd3e5f288adc49c4f779926a85b', '1444888261', '1444888851', '1444888861', '0');
INSERT INTO `game_answer` VALUES ('20', 'd3d23f4ec992c18d537a4c5be98a47e4', '1444888861', '1444889451', '1444889461', '2');
INSERT INTO `game_answer` VALUES ('21', '88877ef22354e4c13f2fcf15073395d5', '1444889461', '1444890051', '1444890061', '2');
INSERT INTO `game_answer` VALUES ('22', 'd6534bcec34b04014c2bea762c22e3fc', '1444890061', '1444890651', '1444890661', '7');
INSERT INTO `game_answer` VALUES ('23', '2cff12c23a9befdc63fbf8450a358966', '1444890661', '1444891251', '1444891261', '8');
INSERT INTO `game_answer` VALUES ('24', '74adca44d515c8a92ebe1ccb9d84d173', '1444891261', '1444891851', '1444891861', '4');
INSERT INTO `game_answer` VALUES ('25', '749edabd965a92f262fed71d0bc270ac', '1444891861', '1444892451', '1444892461', '2');
INSERT INTO `game_answer` VALUES ('26', 'f59e0ca2b12756df3de91457efb877c7', '1444892461', '1444893051', '1444893061', '8');
INSERT INTO `game_answer` VALUES ('27', 'e5dbc28ffda9f27736c8fd13e183c6b4', '1444893061', '1444893651', '1444893661', '4');
INSERT INTO `game_answer` VALUES ('28', 'c8241eaa8aada3ef6a5262b9c47c5daa', '1444893661', '1444894251', '1444894261', '6');
INSERT INTO `game_answer` VALUES ('29', '6e74115fd1cf37e8cdd5055af1af9bd4', '1444894264', '1444894854', '1444894864', '5');
INSERT INTO `game_answer` VALUES ('30', 'eafdf5b78f176c9997213d7abb47f525', '1444894864', '1444895454', '1444895464', '3');
INSERT INTO `game_answer` VALUES ('31', '7995961138f06c6f167f89ea14a220a7', '1444895464', '1444896054', '1444896064', '5');
INSERT INTO `game_answer` VALUES ('32', '965301718752d831004f30a40c2703e6', '1444896064', '1444896654', '1444896664', '9');
INSERT INTO `game_answer` VALUES ('33', 'be751ec8b87541ac89df20f2f91c8b73', '1444896664', '1444897254', '1444897264', '2');
INSERT INTO `game_answer` VALUES ('34', '3c81c98479665402670bcc73a843b87e', '1444897264', '1444897854', '1444897864', '0');
INSERT INTO `game_answer` VALUES ('35', 'e97b5af6e4e69ad881288dc53cb3028a', '1444897864', '1444898454', '1444898464', '9');
INSERT INTO `game_answer` VALUES ('36', '5da2c99df7369fbdaa100999c88f4080', '1444898464', '1444899054', '1444899064', '9');
INSERT INTO `game_answer` VALUES ('37', '168e6ffbfbae2758af7a915e182e54cc', '1444899064', '1444899654', '1444899664', '1');
INSERT INTO `game_answer` VALUES ('38', '994d1b2f1390810721551012a2aa7c23', '1444899664', '1444900254', '1444900264', '1');
INSERT INTO `game_answer` VALUES ('39', '84e22a1e5907cb0ff37d10a34de0fd16', '1444900264', '1444900854', '1444900864', '2');
INSERT INTO `game_answer` VALUES ('40', '41527e40c39d6d98f5269a29f3fd3499', '1444900864', '1444901454', '1444901464', '6');
INSERT INTO `game_answer` VALUES ('41', '45a3b12b7c9dba4d53814cc3ce0ab967', '1444901464', '1444902054', '1444902064', '3');
INSERT INTO `game_answer` VALUES ('42', '2a0cf3e7a7091ff245e6c86f857a3fe6', '1444902064', '1444902654', '1444902664', '7');
INSERT INTO `game_answer` VALUES ('43', 'c205c0de3e6616e47c4151752c144ff8', '1444902664', '1444903254', '1444903264', '2');
INSERT INTO `game_answer` VALUES ('44', 'aabe0bcb289610d23d95941b86137e7c', '1444903264', '1444903854', '1444903864', '7');
INSERT INTO `game_answer` VALUES ('45', '8b25460ffc6b614386cbc2cacc640c5a', '1444903864', '1444904454', '1444904464', '7');
INSERT INTO `game_answer` VALUES ('46', 'a49847ca16d9c94b34872beaf546035f', '1444904465', '1444905055', '1444905065', '9');
INSERT INTO `game_answer` VALUES ('47', '55410465830ecd639c5193d910a47e0b', '1444905065', '1444905655', '1444905665', '6');
INSERT INTO `game_answer` VALUES ('48', '79a06a247b05f2c934f01a3249d78a75', '1444905665', '1444906255', '1444906265', '2');
INSERT INTO `game_answer` VALUES ('49', '4a53a2bf98874e29b584362b69ded7e8', '1444906265', '1444906855', '1444906865', '4');
INSERT INTO `game_answer` VALUES ('50', 'eb664be0522f91a12f636d6db1791b73', '1444906865', '1444907455', '1444907465', '7');
INSERT INTO `game_answer` VALUES ('51', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '1444907465', '1444908055', '1444908065', '2');
INSERT INTO `game_answer` VALUES ('52', 'e88501dee48f02e694d6a23d2ec7bc77', '1444908065', '1444908655', '1444908665', '7');
INSERT INTO `game_answer` VALUES ('53', '6e9d67c59bb751952e55bbe01d8bd21e', '1444908665', '1444909255', '1444909265', '2');
INSERT INTO `game_answer` VALUES ('54', '3aba363001b21b265b68513eb9068a23', '1444969271', '1444969861', '1444969871', '0');
INSERT INTO `game_answer` VALUES ('55', '66e36876e25547d03a48e7c32621b3dd', '1444969871', '1444970461', '1444970471', '1');
INSERT INTO `game_answer` VALUES ('56', 'bb0c397d8b3fc472ea5b16339ef145f3', '1444970471', '1444971061', '1444971071', '6');
INSERT INTO `game_answer` VALUES ('57', 'ffa99cb71f1133c1f2d6a055adb2bdbe', '1444971071', '1444971661', '1444971671', '5');
INSERT INTO `game_answer` VALUES ('58', '1e7dce33f01f45fb8ad597d7c84ddd5c', '1444971671', '1444972261', '1444972271', '7');
INSERT INTO `game_answer` VALUES ('59', '91256c179f6ee5b42602b22dd0fe875f', '1444972271', '1444972861', '1444972871', '6');
INSERT INTO `game_answer` VALUES ('60', '768d65774dcb8a987bf07bd5b3074a36', '1444972871', '1444973461', '1444973471', '5');
INSERT INTO `game_answer` VALUES ('61', 'd18258c5a9cc3d78b02def7e37eb2222', '1444973471', '1444974061', '1444974071', '2');
INSERT INTO `game_answer` VALUES ('62', '85b7e80775c21eb0c260e11668d3e990', '1444974071', '1444974661', '1444974671', '5');
INSERT INTO `game_answer` VALUES ('63', '20be86fc23c82ce77682c5d7386bd7f3', '1444974671', '1444975261', '1444975271', '5');
INSERT INTO `game_answer` VALUES ('64', 'e51a9ab5d8c807eb6a57ca0b4faa8fdc', '1444975271', '1444975861', '1444975871', '2');
INSERT INTO `game_answer` VALUES ('65', '1b4bc55b1d786d8611eb30a04fb07b4a', '1444975871', '1444976461', '1444976471', '0');
INSERT INTO `game_answer` VALUES ('66', '992860711e6f9d13bff5ab894e73bace', '1444976471', '1444977061', '1444977071', '9');
INSERT INTO `game_answer` VALUES ('67', '6164845422646bdbf1f35b845f2573b5', '1444977071', '1444977661', '1444977671', '2');
INSERT INTO `game_answer` VALUES ('68', '6457ffe25b5b3baadd92e65a6ca4ab20', '1444977671', '1444978261', '1444978271', '6');
INSERT INTO `game_answer` VALUES ('69', '7c2ab6e3585f66424e464a7e138628a8', '1444978271', '1444978861', '1444978871', '2');
INSERT INTO `game_answer` VALUES ('70', '848d3e7d45585250c26c880d64d89f38', '1444978871', '1444979461', '1444979471', '6');
INSERT INTO `game_answer` VALUES ('71', '8646c6be942e98c34f24875bba349987', '1444979471', '1444980061', '1444980071', '7');
INSERT INTO `game_answer` VALUES ('72', 'a421d9ef47f5a5950d11ec6c08f7b427', '1444980071', '1444980661', '1444980671', '3');
INSERT INTO `game_answer` VALUES ('73', '9e39d4d786ff180979a34ce3de7e2215', '1444980671', '1444981261', '1444981271', '5');
INSERT INTO `game_answer` VALUES ('74', '2112c7361e7eaa3d40f2e1fa9dc2785a', '1444981271', '1444981861', '1444981871', '0');
INSERT INTO `game_answer` VALUES ('75', 'eb185fa2aae99576243725a42a6f0438', '1444981871', '1444982461', '1444982471', '5');
INSERT INTO `game_answer` VALUES ('76', '4a77479d991a806dc0217c973b57900c', '1444982471', '1444983061', '1444983071', '5');
INSERT INTO `game_answer` VALUES ('77', '23e4de979e1e1ce7278362ce9854e4aa', '1444983071', '1444983661', '1444983671', '2');
INSERT INTO `game_answer` VALUES ('78', 'f857116c2585d2dcfb71b0a7211322a6', '1444983671', '1444984261', '1444984271', '0');
INSERT INTO `game_answer` VALUES ('79', '21d8b49ebe093c54d85938421874e63b', '1444984272', '1444984862', '1444984872', '5');
INSERT INTO `game_answer` VALUES ('80', '14ffa7c6f47939eff7ef9dce7257dd1c', '1444984872', '1444985462', '1444985472', '8');
INSERT INTO `game_answer` VALUES ('81', 'b4f49e0bf825f35e4549f0dfdcee7723', '1444985472', '1444986062', '1444986072', '8');
INSERT INTO `game_answer` VALUES ('82', '470b834d0be8bfd1fc49248cb2dd0d2f', '1444986072', '1444986662', '1444986672', '9');
INSERT INTO `game_answer` VALUES ('83', '746ac45c7ed78a553af5ae36b3f8a0e0', '1444986672', '1444987262', '1444987272', '3');
INSERT INTO `game_answer` VALUES ('84', 'a806a7c2d0025c3e7079d63da1af4a21', '1444987272', '1444987862', '1444987872', '1');
INSERT INTO `game_answer` VALUES ('85', '6798b9cdbd5818c403268a916a681a17', '1444987872', '1444988462', '1444988472', '8');
INSERT INTO `game_answer` VALUES ('86', 'e4b10e04e39e85308f33250c84da4d30', '1444988472', '1444989062', '1444989072', '5');
INSERT INTO `game_answer` VALUES ('87', '91f4e5ab863315bbdadd8bcb8bcdfef3', '1444989072', '1444989662', '1444989672', '7');
INSERT INTO `game_answer` VALUES ('88', 'b6a0ee31f0d50ef2fc4d85090e75f03c', '1444989672', '1444990262', '1444990272', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_select
-- ----------------------------
INSERT INTO `game_select` VALUES ('1', 'a3', '1', '1444881991', '5a93c7fa89b25b0b6f791c7fbc40e877', '0');
INSERT INTO `game_select` VALUES ('2', 'a2', '1', '1444882055', '5e3878fa13bb3dc6683ff32396e9b19b', '1');
INSERT INTO `game_select` VALUES ('3', 'a1', '3', '1444882057', '5e3878fa13bb3dc6683ff32396e9b19b', '0');
INSERT INTO `game_select` VALUES ('4', 'a3', '4', '1444882067', '5e3878fa13bb3dc6683ff32396e9b19b', '0');
INSERT INTO `game_select` VALUES ('5', 'a2', '6', '1444882141', '6f563cb445a0ebcc5c7b312719230090', '1');
INSERT INTO `game_select` VALUES ('6', 'a3', '1', '1444882147', '6f563cb445a0ebcc5c7b312719230090', '0');
INSERT INTO `game_select` VALUES ('7', 'a4', '2', '1444882149', '6f563cb445a0ebcc5c7b312719230090', '0');
INSERT INTO `game_select` VALUES ('8', 'a5', '4', '1444882152', '6f563cb445a0ebcc5c7b312719230090', '0');
INSERT INTO `game_select` VALUES ('9', 'a2', '6', '1444882184', '70eab1cba4389124c07da53f7468b7fe', '1');
INSERT INTO `game_select` VALUES ('10', 'a3', '1', '1444882187', '70eab1cba4389124c07da53f7468b7fe', '0');
INSERT INTO `game_select` VALUES ('11', 'a5', '1', '1444882190', '70eab1cba4389124c07da53f7468b7fe', '0');
INSERT INTO `game_select` VALUES ('12', 'a4', '2', '1444882193', '70eab1cba4389124c07da53f7468b7fe', '0');
INSERT INTO `game_select` VALUES ('13', 'a1', '6', '1444882198', '70eab1cba4389124c07da53f7468b7fe', '1');
INSERT INTO `game_select` VALUES ('14', 'a2', '0', '1444882381', '6612d8ebb96a3fe0fc6af226a705a0ef', '1');
INSERT INTO `game_select` VALUES ('15', 'a1', '1', '1444882387', '6612d8ebb96a3fe0fc6af226a705a0ef', '0');
INSERT INTO `game_select` VALUES ('16', 'a2', '1', '1444882414', '5f0fdd5d805329472fba478a6cfd83da', '0');
INSERT INTO `game_select` VALUES ('17', 'a1', '6', '1444882418', '5f0fdd5d805329472fba478a6cfd83da', '1');
INSERT INTO `game_select` VALUES ('18', '104', '0', '1444883086', '0', '0');
INSERT INTO `game_select` VALUES ('19', '104', '0', '1444883086', '7', '0');
INSERT INTO `game_select` VALUES ('20', '107', '0', '1444883086', '3', '0');
INSERT INTO `game_select` VALUES ('21', '103', '0', '1444883086', '3', '0');
INSERT INTO `game_select` VALUES ('22', '103', '0', '1444883086', '8', '0');
INSERT INTO `game_select` VALUES ('23', '107', '0', '1444883087', '1', '0');
INSERT INTO `game_select` VALUES ('24', '104', '0', '1444883087', '8', '0');
INSERT INTO `game_select` VALUES ('25', '101', '0', '1444883087', '4', '0');
INSERT INTO `game_select` VALUES ('26', '103', '0', '1444883087', '7', '0');
INSERT INTO `game_select` VALUES ('27', '100', '0', '1444883087', '0', '0');
INSERT INTO `game_select` VALUES ('28', 'a2', '3', '1444883902', '504443f56afa34685db140dda560830e', '0');
INSERT INTO `game_select` VALUES ('29', 'a2', '1', '1444889655', '88877ef22354e4c13f2fcf15073395d5', '0');
INSERT INTO `game_select` VALUES ('30', 'a1', '3', '1444889693', '88877ef22354e4c13f2fcf15073395d5', '0');
INSERT INTO `game_select` VALUES ('31', 'a1', '7', '1444906457', '4a53a2bf98874e29b584362b69ded7e8', '0');
INSERT INTO `game_select` VALUES ('32', 'a1', '5', '1444906931', 'eb664be0522f91a12f636d6db1791b73', '0');
INSERT INTO `game_select` VALUES ('33', 'a2', '5', '1444907294', 'eb664be0522f91a12f636d6db1791b73', '0');
INSERT INTO `game_select` VALUES ('34', 'a3', '0', '1444907299', 'eb664be0522f91a12f636d6db1791b73', '0');
INSERT INTO `game_select` VALUES ('35', 'a3', '3', '1444907478', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('36', 'a1', '2', '1444907641', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('37', 'a2', '5', '1444907645', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('38', 'a4', '5', '1444907649', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('39', 'a5', '2', '1444907654', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('40', 'a8', '9', '1444907685', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('41', 'a11', '1', '1444907690', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('42', 'a22', '4', '1444907693', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('43', 'a32', '6', '1444907696', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('44', 'a111', '2', '1444907707', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('45', 'a33', '2', '1444907710', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '0');
INSERT INTO `game_select` VALUES ('46', 'a23', '2', '1444907713', 'e3b1f361160b72a03ef3fcbbc0e1f77a', '1');
INSERT INTO `game_select` VALUES ('47', 'a1', '7', '1444908185', 'e88501dee48f02e694d6a23d2ec7bc77', '1');
INSERT INTO `game_select` VALUES ('48', 'a2', '7', '1444908204', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('49', 'a3', '7', '1444908206', 'e88501dee48f02e694d6a23d2ec7bc77', '1');
INSERT INTO `game_select` VALUES ('50', 'a4', '4', '1444908208', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('51', 'a5', '7', '1444908212', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('52', 'a6', '7', '1444908214', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('53', 'aa', '7', '1444908219', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('54', 'a112', '7', '1444908223', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('55', 'a1123', '7', '1444908226', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('56', 'a11234', '7', '1444908228', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('57', 'a112345', '7', '1444908231', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('58', 'a1123456', '7', '1444908234', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('59', 'a11234567', '7', '1444908236', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('60', 'a112345678', '7', '1444908238', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('61', 'a1123456789', '7', '1444908241', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('62', 'a11234567899', '7', '1444908243', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('63', 'a112345678990', '7', '1444908245', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('64', 'a1123456789901', '7', '1444908248', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('65', 'a22', '7', '1444908271', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('66', 'a223', '7', '1444908440', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('67', 'a21', '7', '1444908444', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('68', 'a23', '7', '1444908450', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('69', 'a24', '7', '1444908452', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('70', 'a25', '7', '1444908455', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('71', 'a26', '7', '1444908458', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('72', 'a31', '7', '1444908467', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('73', 'a32', '7', '1444908470', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('74', 'a323', '7', '1444908472', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('75', 'a3234', '7', '1444908474', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('76', 'a32345', '7', '1444908476', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('77', 'a323456', '7', '1444908480', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('78', 'a3234567', '7', '1444908482', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('79', 'a32345671', '1', '1444908485', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('80', '73', '9', '1444908536', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('81', 'a41', '3', '1444908636', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('82', 'a412', '2', '1444908638', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('83', 'a4124', '5', '1444908639', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('84', 'a41245', '6', '1444908641', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('85', 'a412456', '8', '1444908644', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('86', 'a4124567', '9', '1444908651', 'e88501dee48f02e694d6a23d2ec7bc77', '0');
INSERT INTO `game_select` VALUES ('87', '啊', '7', '1444972750', '91256c179f6ee5b42602b22dd0fe875f', '0');

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
INSERT INTO `game_sponsor` VALUES ('1', '123', '', '123', '123', '123', '123');
INSERT INTO `game_sponsor` VALUES ('2', '123', '', '123', '123', '123', '123');
INSERT INTO `game_sponsor` VALUES ('3', '8e9d262266e3ed8d745a7b4c685d7799', '', '11111', '1000', '1', '1444973289');
INSERT INTO `game_sponsor` VALUES ('4', '8e9d262266e3ed8d745a7b4c685d7799', '', '222', '1000', '1', '1444973423');
INSERT INTO `game_sponsor` VALUES ('5', '8e9d262266e3ed8d745a7b4c685d7799', '', '222', '1000', '1', '1444973423');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('1', '8e9d262266e3ed8d745a7b4c685d7799', '啊', '10', '1444974943', 'a195df6c184a219a3a320666b9d1fbbd');

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
