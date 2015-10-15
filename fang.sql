/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : fang

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-10-16 01:07:07
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `game_sponsor`
-- ----------------------------
DROP TABLE IF EXISTS `game_sponsor`;
CREATE TABLE `game_sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '赞助用户id',
  `title` varchar(100) DEFAULT '' COMMENT '赞助名称',
  `price` int(11) DEFAULT '0' COMMENT '单价',
  `number` int(11) DEFAULT '0' COMMENT '赞助数量',
  `time` int(11) DEFAULT '0' COMMENT '赞助时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES ('10', '', 'a1', '52', '1444908728', '36db7078cef2587b64a3d2f8805ae176');
INSERT INTO `game_user` VALUES ('11', '', 'a2', '187', '0', '52990da0e7034a160b2b884fa24e462d');
INSERT INTO `game_user` VALUES ('12', '', 'a3', '16', '0', 'e65a6e4f9c7cbd6b74f60b9361e46a05');
INSERT INTO `game_user` VALUES ('13', '', 'a4', '6', '0', '84d9708238ee3c3164d78f1e3ce6f3b6');
INSERT INTO `game_user` VALUES ('14', '0d4437d0df34785df86b7877cd59194f', 'aq1', '10', '0', '0fda027f7f2f9af3972342dfa5b9df05');
INSERT INTO `game_user` VALUES ('15', '0fda027f7f2f9af3972342dfa5b9df05', '1', '10', '0', '8f6a6099e14e14d5ffa7216fca55dfa6');
INSERT INTO `game_user` VALUES ('16', '675609ccd5ceed3f62cf6000b75573f1', 'a5', '6', '0', '5a5aa1b960eaad1137dc8514205038b6');
INSERT INTO `game_user` VALUES ('17', '7badd9442d7ca7af9bade4905ef4b810', 'a23', '32', '0', '8d79ffb9e90936bd2940f985a512b2a1');
INSERT INTO `game_user` VALUES ('18', '3cb7cd7ead8f3d9335abbb004a61c1ec', 'a7', '10', '0', 'fd7814bc6303b4045abfc016d191f947');
INSERT INTO `game_user` VALUES ('19', '52bcfc061eb1bfdb4583b645d911d4b3', 'aa', '9', '0', '36417c63f9f4eb1c5beeee4e3d552fa0');
INSERT INTO `game_user` VALUES ('20', '6d7bd9644c8e672e9a12e7d1f5de1c7f', 'aaa1', '10', '0', 'a4ad3e5acfb8fdaac8c7fed9b3134879');
INSERT INTO `game_user` VALUES ('21', 'eed8c0e0d587863d835e22af2494420e', 'aa1', '10', '0', '7d3eb6b8f86f09385747eccc563de208');
INSERT INTO `game_user` VALUES ('22', '', 'aa2', '10', '0', 'dd97b9237b8993d3dcd3c681c6c3b719');
INSERT INTO `game_user` VALUES ('23', '', 'aa3', '10', '0', 'dbcb4203d34c7a4d4acb463b0560ce0b');
INSERT INTO `game_user` VALUES ('24', '', 'aa4', '10', '0', 'f29f32b1cbe9db9205ada68a0c8f572f');
INSERT INTO `game_user` VALUES ('25', '', 'a', '10', '0', '204c29a03f78fd3bd9c8e79cf06ca588');
INSERT INTO `game_user` VALUES ('26', '', '啊实打实大阿萨德阿萨德阿萨德', '10', '0', '6ff13a631f10a28b19b0758e308b1f54');
INSERT INTO `game_user` VALUES ('27', '', '1123', '10', '0', 'afac2ce69ea1b03fee53ac9fbe9796b8');
INSERT INTO `game_user` VALUES ('28', '', '123', '10', '0', '98b83b0d11fda893706914bb3481c558');
INSERT INTO `game_user` VALUES ('29', '', 'asd', '10', '0', '68417f2a16d878e3ba33b7415774af62');
INSERT INTO `game_user` VALUES ('30', '', '4123', '10', '1444901413', '68417f2a16d878e3ba33b7415774af62');
INSERT INTO `game_user` VALUES ('31', '', '1a', '10', '0', 'a5a1b452c5fcc4ccfc5e65a626eddaf6');
INSERT INTO `game_user` VALUES ('32', '', '12', '10', '0', '04bcb662dbb3197905fcbd6f6112402d');
INSERT INTO `game_user` VALUES ('33', '', '爱的', '10', '0', '85136aa057191bb6c080d6d9dcc43692');
INSERT INTO `game_user` VALUES ('34', '', '2', '10', '1444905080', '63a4da1712e05a43cbda7a3c6d39227d');
INSERT INTO `game_user` VALUES ('35', '', '3', '10', '1444905372', '65fdd59910e35314583d396457c6593d');
INSERT INTO `game_user` VALUES ('36', '', 'a12', '10', '0', '21b5740b2a66300a3f13d57b285695a6');
INSERT INTO `game_user` VALUES ('37', '', 'a123', '10', '0', '3495be39bec63509fc77a8953445c24e');
INSERT INTO `game_user` VALUES ('38', '', 'a1234', '10', '0', 'a9ab17b221589b49466d5988729bf012');
INSERT INTO `game_user` VALUES ('39', '', '1234', '10', '0', 'e9ce3655af1a07d66a35ea620fe13208');
INSERT INTO `game_user` VALUES ('40', '', 'a8', '9', '0', '6fb398bdcee39475f7a53ac9e3d673d9');
INSERT INTO `game_user` VALUES ('41', '', 'a11', '9', '0', '1eb753951da57f8861678622fff849e8');
INSERT INTO `game_user` VALUES ('42', '', 'a22', '8', '0', '5c4c1b3c6e96ddaff624ee36a326c5a1');
INSERT INTO `game_user` VALUES ('43', '', 'a32', '8', '0', '75aa9358743b3391daed1311e9e88e9f');
INSERT INTO `game_user` VALUES ('44', '', 'a111', '9', '0', '4c81d7c2efabfe73264a3918f0f1c48e');
INSERT INTO `game_user` VALUES ('45', '', 'a33', '9', '0', '846ef56b6aaf5681b44804544daf58b2');
INSERT INTO `game_user` VALUES ('46', '', 'a6', '9', '0', '125eb051a4dfd1674c7855ddc2e27c0d');
INSERT INTO `game_user` VALUES ('47', '', 'a112', '9', '0', 'e2de84b1c2de453c101fd0474f4fe018');
INSERT INTO `game_user` VALUES ('48', '', 'a1123', '9', '0', 'd73aa97309e14f60b9f3579f9c34affb');
INSERT INTO `game_user` VALUES ('49', '', 'a11234', '9', '0', '2c1157096a2c27601400cbf90e7b52f1');
INSERT INTO `game_user` VALUES ('50', '', 'a112345', '9', '0', 'ecdf2a2c05933837bececd21afca3016');
INSERT INTO `game_user` VALUES ('51', '', 'a1123456', '9', '0', '74e99580daef8cd1dc2730797d707163');
INSERT INTO `game_user` VALUES ('52', '', 'a11234567', '9', '0', 'd7b3dffc4f290c35a5729bb70213fb3d');
INSERT INTO `game_user` VALUES ('53', '', 'a112345678', '9', '0', '986abf99144b3071733fad1ae2bcba2a');
INSERT INTO `game_user` VALUES ('54', '', 'a1123456789', '9', '0', '9fec7e78c1e1c6e49963582ee131e3dc');
INSERT INTO `game_user` VALUES ('55', '', 'a11234567899', '9', '0', 'a00f7edaa9e6c15e99bf7f925e5e33f6');
INSERT INTO `game_user` VALUES ('56', '', 'a112345678990', '9', '0', 'd16bc7ca8a3b792e85058171eb45d7f9');
INSERT INTO `game_user` VALUES ('57', '', 'a1123456789901', '9', '0', '055f9582bc6e49e6c5b4800451e81e60');
INSERT INTO `game_user` VALUES ('58', '', 'a223', '9', '0', '240ed37ab6b58cd0492d17fb7b88f46b');
INSERT INTO `game_user` VALUES ('59', '', 'a21', '9', '0', 'd82008ebbf133fbb0fe74d1aaeab8702');
INSERT INTO `game_user` VALUES ('60', '', 'a24', '9', '0', '306a62e493756928dbe8e06e22759e2f');
INSERT INTO `game_user` VALUES ('61', '', 'a25', '9', '0', 'f96101420e0b4d942fe2149420175133');
INSERT INTO `game_user` VALUES ('62', '', 'a26', '9', '0', 'a531d64e61d222120fbdd65b196eddc7');
INSERT INTO `game_user` VALUES ('63', '', 'a27', '10', '0', '63060a5a6ba9f001ddf0b3e828f872f7');
INSERT INTO `game_user` VALUES ('64', '', 'a31', '9', '0', '06b3572f903c39070a59529de5f67559');
INSERT INTO `game_user` VALUES ('65', '', 'a323', '9', '0', '4648ec729751fcbb7a33ccf120e31da1');
INSERT INTO `game_user` VALUES ('66', '', 'a3234', '9', '0', '50a78a7aa7bd07937e79d55f0efdadd8');
INSERT INTO `game_user` VALUES ('67', '', 'a32345', '9', '0', 'a6b0222dabb88f342325b6b57e2506b9');
INSERT INTO `game_user` VALUES ('68', '', 'a323456', '9', '0', 'e3010ecc4539324da255d4ed800a22dd');
INSERT INTO `game_user` VALUES ('69', '', 'a3234567', '9', '0', '0aeb4204ec43458aac264729c33a7262');
INSERT INTO `game_user` VALUES ('70', '', 'a32345671', '9', '0', '64d2fbd85e34ba698af95b9bb199faca');
INSERT INTO `game_user` VALUES ('71', '', 'a323456712', '10', '0', '04a104119f0847846887c496ba63e106');
INSERT INTO `game_user` VALUES ('72', '', '73', '9', '0', '421e981ee312479de3611dd51d43390e');
INSERT INTO `game_user` VALUES ('73', '', 'a41', '9', '0', 'ae169726fd2dbb93cda499dc04090363');
INSERT INTO `game_user` VALUES ('74', '', 'a412', '9', '0', '4f9408aad53ed3bf07e4774ea45982f3');
INSERT INTO `game_user` VALUES ('75', '', 'a4124', '9', '0', '1718d4db1e12044facd1e67715a15b97');
INSERT INTO `game_user` VALUES ('76', '', 'a41245', '9', '0', 'f61ef227908f5807471595f40d351149');
INSERT INTO `game_user` VALUES ('77', '', 'a412456', '9', '0', '53fdf802c2c6997b2315d7ebfb391dee');
INSERT INTO `game_user` VALUES ('78', '', 'a4124567', '9', '0', '6728d4d200ec35e67d1ecbbb94c08a78');
INSERT INTO `game_user` VALUES ('79', '', '啊', '10', '1444928292', '71ad5159cf4981ecfc51b27449bfdc9e');

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
