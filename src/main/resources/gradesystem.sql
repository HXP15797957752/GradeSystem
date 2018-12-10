/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : gradesystem

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-12-10 10:49:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(255) DEFAULT NULL,
  `gradingunitid` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '农学院', '1', '组长2');
INSERT INTO `department` VALUES ('2', '林学院（园林与艺术学院）', '1', '组长2');
INSERT INTO `department` VALUES ('3', '工学院', '1', '组长');
INSERT INTO `department` VALUES ('4', '生物科学与工程学院', '1', null);
INSERT INTO `department` VALUES ('5', '动物科学技术学院', '1', null);
INSERT INTO `department` VALUES ('6', '国土资源与环境学院', '1', null);
INSERT INTO `department` VALUES ('7', '经济管理学院', '1', null);
INSERT INTO `department` VALUES ('8', '食品科学与工程学院', '1', null);
INSERT INTO `department` VALUES ('9', '计算机与信息工程学院', '1', null);
INSERT INTO `department` VALUES ('10', '人文与公共管理学院', '1', null);
INSERT INTO `department` VALUES ('11', '马克思主义（政治）学院', '1', null);
INSERT INTO `department` VALUES ('12', '外国语学院', '1', null);
INSERT INTO `department` VALUES ('13', '软件学院', '1', null);
INSERT INTO `department` VALUES ('14', '职业师范（技术）学院', '1', null);
INSERT INTO `department` VALUES ('15', '理学院', '1', null);
INSERT INTO `department` VALUES ('16', '军体部（武装部）', '1', null);
INSERT INTO `department` VALUES ('17', '纪委（监察、审计）', '2', null);
INSERT INTO `department` VALUES ('18', '组织部（机关党委、党校）', '2', null);
INSERT INTO `department` VALUES ('19', '宣传部', '2', null);
INSERT INTO `department` VALUES ('20', '统战部', '2', null);
INSERT INTO `department` VALUES ('21', '工会', '2', null);
INSERT INTO `department` VALUES ('22', '学工部（处、大学生资助管理中心）', '2', null);
INSERT INTO `department` VALUES ('23', '团委', '2', null);
INSERT INTO `department` VALUES ('24', '招生就业处', '2', null);
INSERT INTO `department` VALUES ('25', '离退休工作处', '2', null);
INSERT INTO `department` VALUES ('26', '党办校办（党务政务督查室）', '2', null);
INSERT INTO `department` VALUES ('27', '科技处', '2', null);
INSERT INTO `department` VALUES ('28', '新农村发展研究院', '2', null);
INSERT INTO `department` VALUES ('29', '人事处', '2', null);
INSERT INTO `department` VALUES ('30', '财务处', '2', null);
INSERT INTO `department` VALUES ('31', '保卫处', '2', null);
INSERT INTO `department` VALUES ('32', '国际交流处', '2', null);
INSERT INTO `department` VALUES ('33', '产业处', '2', null);
INSERT INTO `department` VALUES ('34', '教务处（教学督导组）', '2', null);
INSERT INTO `department` VALUES ('35', '高教所', '2', null);
INSERT INTO `department` VALUES ('36', '研究生院', '2', null);
INSERT INTO `department` VALUES ('37', '资产与实验室管理处', '2', null);
INSERT INTO `department` VALUES ('38', 'MPA教育中心', '2', null);
INSERT INTO `department` VALUES ('39', '信息中心', '2', null);
INSERT INTO `department` VALUES ('40', '招标与采购中心', '2', null);
INSERT INTO `department` VALUES ('41', '农业科技园', '2', null);
INSERT INTO `department` VALUES ('42', '校友工作办公室', '2', null);
INSERT INTO `department` VALUES ('43', '后勤与校园管理处', '2', null);
INSERT INTO `department` VALUES ('44', '基本建设处', '2', null);
INSERT INTO `department` VALUES ('45', '图书馆', '2', null);
INSERT INTO `department` VALUES ('46', '期刊社', '2', null);
INSERT INTO `department` VALUES ('47', '档案馆', '2', null);
INSERT INTO `department` VALUES ('48', '继续教育学院（管理干部学院）', '2', null);
INSERT INTO `department` VALUES ('49', '后勤服务集团', '2', null);
INSERT INTO `department` VALUES ('50', '附中', '2', null);
INSERT INTO `department` VALUES ('51', '医院', '2', null);
INSERT INTO `department` VALUES ('54', '22', '2', null);
INSERT INTO `department` VALUES ('69', '33333', '1', null);
INSERT INTO `department` VALUES ('70', '22', '2', null);

-- ----------------------------
-- Table structure for gradingunit
-- ----------------------------
DROP TABLE IF EXISTS `gradingunit`;
CREATE TABLE `gradingunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gradingunit
-- ----------------------------
INSERT INTO `gradingunit` VALUES ('1', '教学科研单位');
INSERT INTO `gradingunit` VALUES ('2', '管理服务单位');

-- ----------------------------
-- Table structure for qoption
-- ----------------------------
DROP TABLE IF EXISTS `qoption`;
CREATE TABLE `qoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qoption
-- ----------------------------
INSERT INTO `qoption` VALUES ('1', '教学');
INSERT INTO `qoption` VALUES ('2', '科研');
INSERT INTO `qoption` VALUES ('3', '学科与研究生');
INSERT INTO `qoption` VALUES ('4', '人才');
INSERT INTO `qoption` VALUES ('5', '学生工作');
INSERT INTO `qoption` VALUES ('6', '就业');
INSERT INTO `qoption` VALUES ('7', '党建');
INSERT INTO `qoption` VALUES ('8', '党风廉政建设');
INSERT INTO `qoption` VALUES ('9', '综治');
INSERT INTO `qoption` VALUES ('10', '工作效绩');
INSERT INTO `qoption` VALUES ('14', '444');
INSERT INTO `qoption` VALUES ('16', '意');

-- ----------------------------
-- Table structure for quantify
-- ----------------------------
DROP TABLE IF EXISTS `quantify`;
CREATE TABLE `quantify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `proportion` double DEFAULT '0',
  `grade` int(11) DEFAULT '0',
  `unitid` int(11) DEFAULT NULL,
  `optionid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantify
-- ----------------------------
INSERT INTO `quantify` VALUES ('1', '2018', '4', '6', '1', '1', '1');
INSERT INTO `quantify` VALUES ('2', '2017', '4', '6', '1', '2', '1');
INSERT INTO `quantify` VALUES ('3', '2017', '4', null, '1', '3', '1');
INSERT INTO `quantify` VALUES ('4', '2017', '4', null, '1', '4', '1');
INSERT INTO `quantify` VALUES ('5', '2017', null, null, '1', '5', '1');
INSERT INTO `quantify` VALUES ('6', '2017', null, null, '1', '6', '1');
INSERT INTO `quantify` VALUES ('7', '2017', null, null, '1', '7', '1');
INSERT INTO `quantify` VALUES ('8', '2017', null, null, '1', '8', '1');
INSERT INTO `quantify` VALUES ('9', '2017', null, null, '1', '9', '1');
INSERT INTO `quantify` VALUES ('10', '2017', '2', '2', '2', '10', '17');
INSERT INTO `quantify` VALUES ('11', '2017', '2', '2', '2', '7', '17');
INSERT INTO `quantify` VALUES ('12', '2017', '2', '2', '2', '8', '17');
INSERT INTO `quantify` VALUES ('13', '2017', '2', '2', '2', '9', '17');
INSERT INTO `quantify` VALUES ('22', '2018', '2', '2', '2', '10', '54');
INSERT INTO `quantify` VALUES ('23', '2018', '2', '2', '2', '7', '54');
INSERT INTO `quantify` VALUES ('24', '2018', '2', '2', '2', '8', '54');
INSERT INTO `quantify` VALUES ('25', '2018', '2', '2', '2', '9', '54');
INSERT INTO `quantify` VALUES ('42', '2018', '2', null, '2', '14', '17');
INSERT INTO `quantify` VALUES ('43', '2018', '2', null, '2', '14', '18');
INSERT INTO `quantify` VALUES ('44', '2018', '2', null, '2', '14', '19');
INSERT INTO `quantify` VALUES ('45', '2018', '2', null, '2', '14', '20');
INSERT INTO `quantify` VALUES ('46', '2018', '2', null, '2', '14', '21');
INSERT INTO `quantify` VALUES ('47', '2018', '2', null, '2', '14', '22');
INSERT INTO `quantify` VALUES ('48', '2018', '2', null, '2', '14', '23');
INSERT INTO `quantify` VALUES ('49', '2018', '2', null, '2', '14', '24');
INSERT INTO `quantify` VALUES ('50', '2018', '2', null, '2', '14', '25');
INSERT INTO `quantify` VALUES ('51', '2018', '2', null, '2', '14', '26');
INSERT INTO `quantify` VALUES ('52', '2018', '2', null, '2', '14', '27');
INSERT INTO `quantify` VALUES ('53', '2018', '2', null, '2', '14', '28');
INSERT INTO `quantify` VALUES ('54', '2018', '2', null, '2', '14', '29');
INSERT INTO `quantify` VALUES ('55', '2018', '2', null, '2', '14', '30');
INSERT INTO `quantify` VALUES ('56', '2018', '2', null, '2', '14', '31');
INSERT INTO `quantify` VALUES ('57', '2018', '2', null, '2', '14', '32');
INSERT INTO `quantify` VALUES ('58', '2018', '2', null, '2', '14', '33');
INSERT INTO `quantify` VALUES ('59', '2018', '2', null, '2', '14', '34');
INSERT INTO `quantify` VALUES ('60', '2018', '2', null, '2', '14', '35');
INSERT INTO `quantify` VALUES ('61', '2018', '2', null, '2', '14', '36');
INSERT INTO `quantify` VALUES ('62', '2018', '2', null, '2', '14', '37');
INSERT INTO `quantify` VALUES ('63', '2018', '2', null, '2', '14', '38');
INSERT INTO `quantify` VALUES ('64', '2018', '2', null, '2', '14', '39');
INSERT INTO `quantify` VALUES ('65', '2018', '2', null, '2', '14', '40');
INSERT INTO `quantify` VALUES ('66', '2018', '2', null, '2', '14', '41');
INSERT INTO `quantify` VALUES ('67', '2018', '2', null, '2', '14', '42');
INSERT INTO `quantify` VALUES ('68', '2018', '2', null, '2', '14', '43');
INSERT INTO `quantify` VALUES ('69', '2018', '2', null, '2', '14', '44');
INSERT INTO `quantify` VALUES ('70', '2018', '2', null, '2', '14', '45');
INSERT INTO `quantify` VALUES ('71', '2018', '2', null, '2', '14', '46');
INSERT INTO `quantify` VALUES ('72', '2018', '2', null, '2', '14', '47');
INSERT INTO `quantify` VALUES ('73', '2018', '2', null, '2', '14', '48');
INSERT INTO `quantify` VALUES ('74', '2018', '2', null, '2', '14', '49');
INSERT INTO `quantify` VALUES ('75', '2018', '2', null, '2', '14', '50');
INSERT INTO `quantify` VALUES ('76', '2018', '2', null, '2', '14', '51');
INSERT INTO `quantify` VALUES ('77', '2018', '2', null, '2', '14', '54');
INSERT INTO `quantify` VALUES ('146', '2018', '1', '1', '1', '1', '69');
INSERT INTO `quantify` VALUES ('147', '2018', '1', '1', '1', '2', '69');
INSERT INTO `quantify` VALUES ('148', '2018', '1', '1', '1', '3', '69');
INSERT INTO `quantify` VALUES ('149', '2018', '1', '1', '1', '4', '69');
INSERT INTO `quantify` VALUES ('150', '2018', '1', '1', '1', '5', '69');
INSERT INTO `quantify` VALUES ('151', '2018', '1', null, '1', '6', '69');
INSERT INTO `quantify` VALUES ('152', '2018', null, null, '1', '7', '69');
INSERT INTO `quantify` VALUES ('153', '2018', null, null, '1', '8', '69');
INSERT INTO `quantify` VALUES ('154', '2018', null, null, '1', '9', '69');
INSERT INTO `quantify` VALUES ('155', '2018', '2', '2', '2', '7', '70');
INSERT INTO `quantify` VALUES ('156', '2018', '2', '2', '2', '8', '70');
INSERT INTO `quantify` VALUES ('157', '2018', '2', '2', '2', '9', '70');
INSERT INTO `quantify` VALUES ('158', '2018', '2', '2', '2', '10', '70');
INSERT INTO `quantify` VALUES ('159', '2018', '2', null, '2', '14', '70');
INSERT INTO `quantify` VALUES ('160', '2018', null, null, '1', '14', '1');
INSERT INTO `quantify` VALUES ('161', '2018', null, null, '1', '14', '2');
INSERT INTO `quantify` VALUES ('162', '2018', null, null, '1', '14', '3');
INSERT INTO `quantify` VALUES ('163', '2018', null, null, '1', '14', '4');
INSERT INTO `quantify` VALUES ('164', '2018', null, null, '1', '14', '5');
INSERT INTO `quantify` VALUES ('165', '2018', null, null, '1', '14', '6');
INSERT INTO `quantify` VALUES ('166', '2018', null, null, '1', '14', '7');
INSERT INTO `quantify` VALUES ('167', '2018', null, null, '1', '14', '8');
INSERT INTO `quantify` VALUES ('168', '2018', null, null, '1', '14', '9');
INSERT INTO `quantify` VALUES ('169', '2018', null, null, '1', '14', '10');
INSERT INTO `quantify` VALUES ('170', '2018', null, null, '1', '14', '11');
INSERT INTO `quantify` VALUES ('171', '2018', null, null, '1', '14', '12');
INSERT INTO `quantify` VALUES ('172', '2018', null, null, '1', '14', '13');
INSERT INTO `quantify` VALUES ('173', '2018', null, null, '1', '14', '14');
INSERT INTO `quantify` VALUES ('174', '2018', null, null, '1', '14', '15');
INSERT INTO `quantify` VALUES ('175', '2018', null, null, '1', '14', '16');
INSERT INTO `quantify` VALUES ('176', '2018', null, null, '1', '14', '69');
INSERT INTO `quantify` VALUES ('177', '2018', null, null, '1', '10', '1');
INSERT INTO `quantify` VALUES ('178', '2018', null, null, '1', '10', '2');
INSERT INTO `quantify` VALUES ('179', '2018', null, null, '1', '10', '3');
INSERT INTO `quantify` VALUES ('180', '2018', null, null, '1', '10', '4');
INSERT INTO `quantify` VALUES ('181', '2018', null, null, '1', '10', '5');
INSERT INTO `quantify` VALUES ('182', '2018', null, null, '1', '10', '6');
INSERT INTO `quantify` VALUES ('183', '2018', null, null, '1', '10', '7');
INSERT INTO `quantify` VALUES ('184', '2018', null, null, '1', '10', '8');
INSERT INTO `quantify` VALUES ('185', '2018', null, null, '1', '10', '9');
INSERT INTO `quantify` VALUES ('186', '2018', null, null, '1', '10', '10');
INSERT INTO `quantify` VALUES ('187', '2018', null, null, '1', '10', '11');
INSERT INTO `quantify` VALUES ('188', '2018', null, null, '1', '10', '12');
INSERT INTO `quantify` VALUES ('189', '2018', null, null, '1', '10', '13');
INSERT INTO `quantify` VALUES ('190', '2018', null, null, '1', '10', '14');
INSERT INTO `quantify` VALUES ('191', '2018', null, null, '1', '10', '15');
INSERT INTO `quantify` VALUES ('192', '2018', null, null, '1', '10', '16');
INSERT INTO `quantify` VALUES ('193', '2018', null, null, '1', '10', '69');
INSERT INTO `quantify` VALUES ('194', '2018', '2', '2', '2', '1', '17');
INSERT INTO `quantify` VALUES ('195', '2018', '2', '2', '2', '1', '18');
INSERT INTO `quantify` VALUES ('196', '2018', '2', '2', '2', '1', '19');
INSERT INTO `quantify` VALUES ('197', '2018', '2', '2', '2', '1', '20');
INSERT INTO `quantify` VALUES ('198', '2018', '2', '2', '2', '1', '21');
INSERT INTO `quantify` VALUES ('199', '2018', '2', '2', '2', '1', '22');
INSERT INTO `quantify` VALUES ('200', '2018', '2', '2', '2', '1', '23');
INSERT INTO `quantify` VALUES ('201', '2018', '2', '2', '2', '1', '24');
INSERT INTO `quantify` VALUES ('202', '2018', '2', '2', '2', '1', '25');
INSERT INTO `quantify` VALUES ('203', '2018', '2', '2', '2', '1', '26');
INSERT INTO `quantify` VALUES ('204', '2018', '2', '2', '2', '1', '27');
INSERT INTO `quantify` VALUES ('205', '2018', '2', '2', '2', '1', '28');
INSERT INTO `quantify` VALUES ('206', '2018', '2', '2', '2', '1', '29');
INSERT INTO `quantify` VALUES ('207', '2018', '2', '2', '2', '1', '30');
INSERT INTO `quantify` VALUES ('208', '2018', '2', '2', '2', '1', '31');
INSERT INTO `quantify` VALUES ('209', '2018', '2', '2', '2', '1', '32');
INSERT INTO `quantify` VALUES ('210', '2018', '2', '2', '2', '1', '33');
INSERT INTO `quantify` VALUES ('211', '2018', '2', '2', '2', '1', '34');
INSERT INTO `quantify` VALUES ('212', '2018', '2', '2', '2', '1', '35');
INSERT INTO `quantify` VALUES ('213', '2018', '2', '2', '2', '1', '36');
INSERT INTO `quantify` VALUES ('214', '2018', '2', '2', '2', '1', '37');
INSERT INTO `quantify` VALUES ('215', '2018', '2', '2', '2', '1', '38');
INSERT INTO `quantify` VALUES ('216', '2018', '2', '2', '2', '1', '39');
INSERT INTO `quantify` VALUES ('217', '2018', '2', '2', '2', '1', '40');
INSERT INTO `quantify` VALUES ('218', '2018', '2', '2', '2', '1', '41');
INSERT INTO `quantify` VALUES ('219', '2018', '2', '2', '2', '1', '42');
INSERT INTO `quantify` VALUES ('220', '2018', '2', '2', '2', '1', '43');
INSERT INTO `quantify` VALUES ('221', '2018', '2', '2', '2', '1', '44');
INSERT INTO `quantify` VALUES ('222', '2018', '2', '2', '2', '1', '45');
INSERT INTO `quantify` VALUES ('223', '2018', '2', '2', '2', '1', '46');
INSERT INTO `quantify` VALUES ('224', '2018', '2', '2', '2', '1', '47');
INSERT INTO `quantify` VALUES ('225', '2018', '2', '2', '2', '1', '48');
INSERT INTO `quantify` VALUES ('226', '2018', '2', '2', '2', '1', '49');
INSERT INTO `quantify` VALUES ('227', '2018', '2', '2', '2', '1', '50');
INSERT INTO `quantify` VALUES ('228', '2018', '2', '2', '2', '1', '51');
INSERT INTO `quantify` VALUES ('229', '2018', '2', '2', '2', '1', '54');
INSERT INTO `quantify` VALUES ('230', '2018', '2', '2', '2', '1', '70');

-- ----------------------------
-- Table structure for quantifygrade
-- ----------------------------
DROP TABLE IF EXISTS `quantifygrade`;
CREATE TABLE `quantifygrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(255) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `sumGrade` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantifygrade
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(20) NOT NULL,
  `rolename` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'user');

-- ----------------------------
-- Table structure for sumgrade
-- ----------------------------
DROP TABLE IF EXISTS `sumgrade`;
CREATE TABLE `sumgrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitid` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `sumgrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sumgrade
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roleId` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `roleId` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '组长', '123', null, null, '2');
INSERT INTO `user` VALUES ('2', '123', '胡部长', '123', null, null, '1');
INSERT INTO `user` VALUES ('3', '123', '组长1', '123', null, null, '2');
INSERT INTO `user` VALUES ('4', '123', '组长2', '123', null, null, '2');
