/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : gradesystem

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-12-19 19:20:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cadre
-- ----------------------------
DROP TABLE IF EXISTS `cadre`;
CREATE TABLE `cadre` (
  `cadreID` int(10) NOT NULL,
  `salaryID` int(50) NOT NULL,
  `cadreName` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `rank` int(20) NOT NULL COMMENT '0表示正处级，1表示副处级',
  `ofDepartment` int(10) NOT NULL,
  PRIMARY KEY (`cadreID`),
  KEY `ofDepartment` (`ofDepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cadre
-- ----------------------------
INSERT INTO `cadre` VALUES ('1', '20162158', '黄小平', '党委书记', '0', '18');
INSERT INTO `cadre` VALUES ('2', '20169999', '戴仕明', '院长', '0', '17');
INSERT INTO `cadre` VALUES ('3', '201621585', '周水平', '党委书记', '0', '1');
INSERT INTO `cadre` VALUES ('4', '20168999', '杨君', '副院长', '0', '2');
INSERT INTO `cadre` VALUES ('5', '20165454', '李想', '副处长', '1', '1');
INSERT INTO `cadre` VALUES ('6', '2016882', '吴欣欣', '主任', '1', '1');

-- ----------------------------
-- Table structure for cadre_year_score
-- ----------------------------
DROP TABLE IF EXISTS `cadre_year_score`;
CREATE TABLE `cadre_year_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `cadreID` int(11) NOT NULL,
  `cadreName` varchar(255) NOT NULL,
  `rank` int(10) unsigned zerofill NOT NULL COMMENT '0为正处级 1为副处级',
  `departmentName` varchar(255) NOT NULL,
  `yearScore` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cadre_year_score
-- ----------------------------
INSERT INTO `cadre_year_score` VALUES ('9', '2018', '1', '黄某', '0000000000', '组织部（机关党委、党校）', '16.7');
INSERT INTO `cadre_year_score` VALUES ('10', '2018', '2', '戴仕明', '0000000000', '纪委（监察、审计）', '15');
INSERT INTO `cadre_year_score` VALUES ('11', '2018', '3', '周水平', '0000000000', '农学院', '19.95');
INSERT INTO `cadre_year_score` VALUES ('12', '2018', '4', '杨君', '0000000000', '林学院（园林与艺术学院）', '10.25');
INSERT INTO `cadre_year_score` VALUES ('13', '2018', '5', '李想', '0000000001', '农学院', '13.25');
INSERT INTO `cadre_year_score` VALUES ('14', '2018', '6', '吴欣欣', '0000000001', '农学院', '6.5');
INSERT INTO `cadre_year_score` VALUES ('15', '2018', '5', '李想', '0000000001', '农学院', '13.25');
INSERT INTO `cadre_year_score` VALUES ('16', '2018', '6', '吴欣欣', '0000000001', '农学院', '6.5');
INSERT INTO `cadre_year_score` VALUES ('17', '2018', '1', '黄某', '0000000000', '组织部（机关党委、党校）', '16.7');
INSERT INTO `cadre_year_score` VALUES ('18', '2018', '2', '戴仕明', '0000000000', '纪委（监察、审计）', '15');
INSERT INTO `cadre_year_score` VALUES ('19', '2018', '3', '周水平', '0000000000', '农学院', '19.95');
INSERT INTO `cadre_year_score` VALUES ('20', '2018', '4', '杨君', '0000000000', '林学院（园林与艺术学院）', '10.25');
INSERT INTO `cadre_year_score` VALUES ('21', '2018', '1', '黄某', '0000000000', '组织部（机关党委、党校）', '22.1');
INSERT INTO `cadre_year_score` VALUES ('22', '2018', '2', '戴仕明', '0000000000', '纪委（监察、审计）', '15');
INSERT INTO `cadre_year_score` VALUES ('23', '2018', '3', '周水平', '0000000000', '农学院', '19.95');
INSERT INTO `cadre_year_score` VALUES ('24', '2018', '4', '杨君', '0000000000', '林学院（园林与艺术学院）', '10.25');
INSERT INTO `cadre_year_score` VALUES ('25', '2018', '5', '李想', '0000000001', '农学院', '14');
INSERT INTO `cadre_year_score` VALUES ('26', '2018', '6', '吴欣欣', '0000000001', '农学院', '7.1');
INSERT INTO `cadre_year_score` VALUES ('27', '2018', '5', '李想', '0000000001', '农学院', '14');
INSERT INTO `cadre_year_score` VALUES ('28', '2018', '6', '吴欣欣', '0000000001', '农学院', '7.1');

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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '农学院', '1', '组长2');
INSERT INTO `department` VALUES ('17', '纪委（监察、审计）', '2', null);
INSERT INTO `department` VALUES ('73', '林学院（园林与艺术学院）', '1', null);
INSERT INTO `department` VALUES ('74', '工学院', '1', null);
INSERT INTO `department` VALUES ('75', '生物科学与工程学院', '1', null);
INSERT INTO `department` VALUES ('76', '动物科学技术学院', '1', null);
INSERT INTO `department` VALUES ('77', '国土资源与环境学院', '1', null);
INSERT INTO `department` VALUES ('78', '经济管理学院', '1', null);
INSERT INTO `department` VALUES ('79', '食品科学与工程学院', '1', null);
INSERT INTO `department` VALUES ('80', '计算机与信息工程学院', '1', null);
INSERT INTO `department` VALUES ('81', '人文与公共管理学院', '1', null);
INSERT INTO `department` VALUES ('82', '马克思主义（政治）学院', '1', null);
INSERT INTO `department` VALUES ('83', '外国语学院', '1', null);
INSERT INTO `department` VALUES ('84', '软件学院', '1', null);
INSERT INTO `department` VALUES ('85', '职业师范（技术）学院', '1', null);
INSERT INTO `department` VALUES ('86', '理学院', '1', null);
INSERT INTO `department` VALUES ('87', '军体部（武装部）', '1', null);
INSERT INTO `department` VALUES ('88', '组织部（机关党委、党校）', '2', null);
INSERT INTO `department` VALUES ('89', '宣传部', '2', null);
INSERT INTO `department` VALUES ('90', '统战部', '2', null);
INSERT INTO `department` VALUES ('92', '工会', '2', null);
INSERT INTO `department` VALUES ('93', '学工部（处、大学生资助管理中心）', '2', null);
INSERT INTO `department` VALUES ('94', '团委', '2', null);
INSERT INTO `department` VALUES ('95', '招生就业处', '2', null);
INSERT INTO `department` VALUES ('96', '离退休工作处', '2', null);
INSERT INTO `department` VALUES ('97', '党办校办（党务政务督查室）', '2', null);
INSERT INTO `department` VALUES ('98', '科技处', '2', null);
INSERT INTO `department` VALUES ('99', '新农村发展研究院', '2', null);
INSERT INTO `department` VALUES ('100', '人事处', '2', null);
INSERT INTO `department` VALUES ('101', '财务处', '2', null);
INSERT INTO `department` VALUES ('102', '保卫处', '2', null);
INSERT INTO `department` VALUES ('103', '国际交流处', '2', null);
INSERT INTO `department` VALUES ('104', '产业处', '2', null);
INSERT INTO `department` VALUES ('105', '教务处（教学督导组）', '2', null);
INSERT INTO `department` VALUES ('106', '高教所', '2', null);
INSERT INTO `department` VALUES ('107', '研究生院', '2', null);
INSERT INTO `department` VALUES ('108', '资产与实验室管理处', '2', null);
INSERT INTO `department` VALUES ('109', 'MPA教育中心', '2', null);
INSERT INTO `department` VALUES ('110', '信息中心', '2', null);
INSERT INTO `department` VALUES ('111', '招标与采购中心', '2', null);
INSERT INTO `department` VALUES ('112', '农业科技园', '2', null);
INSERT INTO `department` VALUES ('113', '校友工作办公室', '2', null);
INSERT INTO `department` VALUES ('114', '后勤与校园管理处', '2', null);
INSERT INTO `department` VALUES ('115', '基本建设处', '2', null);
INSERT INTO `department` VALUES ('116', '图书馆', '2', null);
INSERT INTO `department` VALUES ('117', '刊社', '2', null);
INSERT INTO `department` VALUES ('118', '档案馆', '2', null);
INSERT INTO `department` VALUES ('119', '继续教育学院（管理干部学院）', '2', null);
INSERT INTO `department` VALUES ('120', '后勤服务集团', '2', null);
INSERT INTO `department` VALUES ('121', '附中', '2', null);
INSERT INTO `department` VALUES ('122', '医院', '2', null);

-- ----------------------------
-- Table structure for department_year_score
-- ----------------------------
DROP TABLE IF EXISTS `department_year_score`;
CREATE TABLE `department_year_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(10) unsigned zerofill NOT NULL,
  `departmentID` int(10) unsigned zerofill NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `yearScore` double unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_year_score
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
INSERT INTO `qoption` VALUES ('17', '12');

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
) ENGINE=InnoDB AUTO_INCREMENT=630 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantify
-- ----------------------------
INSERT INTO `quantify` VALUES ('1', '2018', '1', '1', '1', '1', '1');
INSERT INTO `quantify` VALUES ('2', '2018', '1', '1', '1', '2', '1');
INSERT INTO `quantify` VALUES ('3', '2018', '1', '1', '1', '3', '1');
INSERT INTO `quantify` VALUES ('4', '2018', '1', '1', '1', '4', '1');
INSERT INTO `quantify` VALUES ('5', '2018', '1', '1', '1', '5', '1');
INSERT INTO `quantify` VALUES ('6', '2018', '1', '1', '1', '6', '1');
INSERT INTO `quantify` VALUES ('7', '2018', '1', '1', '1', '7', '1');
INSERT INTO `quantify` VALUES ('8', '2018', '1', '1', '1', '8', '1');
INSERT INTO `quantify` VALUES ('9', '2018', '1', '1', '1', '9', '1');
INSERT INTO `quantify` VALUES ('10', '2018', '2', '1', '2', '10', '17');
INSERT INTO `quantify` VALUES ('11', '2018', '2', '1', '2', '7', '17');
INSERT INTO `quantify` VALUES ('12', '2018', '2', '1', '2', '8', '17');
INSERT INTO `quantify` VALUES ('13', '2018', '2', '1', '2', '9', '17');
INSERT INTO `quantify` VALUES ('177', '2018', '1', '1', '1', '10', '1');
INSERT INTO `quantify` VALUES ('194', '2018', '2', '1', '2', '1', '17');
INSERT INTO `quantify` VALUES ('253', '2018', '2', '1', '2', '17', '17');
INSERT INTO `quantify` VALUES ('254', '2018', '1', '1', '1', '17', '1');
INSERT INTO `quantify` VALUES ('255', '2018', '1', '1', '1', '1', '73');
INSERT INTO `quantify` VALUES ('256', '2018', '1', '1', '1', '2', '73');
INSERT INTO `quantify` VALUES ('257', '2018', '1', '1', '1', '3', '73');
INSERT INTO `quantify` VALUES ('258', '2018', '1', '1', '1', '4', '73');
INSERT INTO `quantify` VALUES ('259', '2018', '1', '1', '1', '5', '73');
INSERT INTO `quantify` VALUES ('260', '2018', '1', '1', '1', '6', '73');
INSERT INTO `quantify` VALUES ('261', '2018', '1', '1', '1', '7', '73');
INSERT INTO `quantify` VALUES ('262', '2018', '1', '1', '1', '8', '73');
INSERT INTO `quantify` VALUES ('263', '2018', '1', '1', '1', '9', '73');
INSERT INTO `quantify` VALUES ('264', '2018', '1', '1', '1', '10', '73');
INSERT INTO `quantify` VALUES ('265', '2018', '1', '1', '1', '17', '73');
INSERT INTO `quantify` VALUES ('266', '2018', '1', '1', '1', '1', '74');
INSERT INTO `quantify` VALUES ('267', '2018', '1', '1', '1', '2', '74');
INSERT INTO `quantify` VALUES ('268', '2018', '1', '1', '1', '3', '74');
INSERT INTO `quantify` VALUES ('269', '2018', '1', '1', '1', '4', '74');
INSERT INTO `quantify` VALUES ('270', '2018', '1', '1', '1', '5', '74');
INSERT INTO `quantify` VALUES ('271', '2018', '1', '1', '1', '6', '74');
INSERT INTO `quantify` VALUES ('272', '2018', '1', '1', '1', '7', '74');
INSERT INTO `quantify` VALUES ('273', '2018', '1', '1', '1', '8', '74');
INSERT INTO `quantify` VALUES ('274', '2018', '1', '1', '1', '9', '74');
INSERT INTO `quantify` VALUES ('275', '2018', '1', '1', '1', '10', '74');
INSERT INTO `quantify` VALUES ('276', '2018', '1', '1', '1', '17', '74');
INSERT INTO `quantify` VALUES ('277', '2018', '1', '1', '1', '1', '75');
INSERT INTO `quantify` VALUES ('278', '2018', '1', '1', '1', '2', '75');
INSERT INTO `quantify` VALUES ('279', '2018', '1', '1', '1', '3', '75');
INSERT INTO `quantify` VALUES ('280', '2018', '1', '1', '1', '4', '75');
INSERT INTO `quantify` VALUES ('281', '2018', '1', '1', '1', '5', '75');
INSERT INTO `quantify` VALUES ('282', '2018', '1', '1', '1', '6', '75');
INSERT INTO `quantify` VALUES ('283', '2018', '1', '1', '1', '7', '75');
INSERT INTO `quantify` VALUES ('284', '2018', '1', '1', '1', '8', '75');
INSERT INTO `quantify` VALUES ('285', '2018', '1', '1', '1', '9', '75');
INSERT INTO `quantify` VALUES ('286', '2018', '1', '1', '1', '10', '75');
INSERT INTO `quantify` VALUES ('287', '2018', '1', '1', '1', '17', '75');
INSERT INTO `quantify` VALUES ('288', '2018', '1', '1', '1', '1', '76');
INSERT INTO `quantify` VALUES ('289', '2018', '1', '1', '1', '2', '76');
INSERT INTO `quantify` VALUES ('290', '2018', '1', '1', '1', '3', '76');
INSERT INTO `quantify` VALUES ('291', '2018', '1', '1', '1', '4', '76');
INSERT INTO `quantify` VALUES ('292', '2018', '1', '1', '1', '5', '76');
INSERT INTO `quantify` VALUES ('293', '2018', '1', '1', '1', '6', '76');
INSERT INTO `quantify` VALUES ('294', '2018', '1', '1', '1', '7', '76');
INSERT INTO `quantify` VALUES ('295', '2018', '1', '1', '1', '8', '76');
INSERT INTO `quantify` VALUES ('296', '2018', '1', '1', '1', '9', '76');
INSERT INTO `quantify` VALUES ('297', '2018', '1', '1', '1', '10', '76');
INSERT INTO `quantify` VALUES ('298', '2018', '1', '1', '1', '17', '76');
INSERT INTO `quantify` VALUES ('299', '2018', '1', '1', '1', '1', '77');
INSERT INTO `quantify` VALUES ('300', '2018', '1', '1', '1', '2', '77');
INSERT INTO `quantify` VALUES ('301', '2018', '1', '1', '1', '3', '77');
INSERT INTO `quantify` VALUES ('302', '2018', '1', '1', '1', '4', '77');
INSERT INTO `quantify` VALUES ('303', '2018', '1', '1', '1', '5', '77');
INSERT INTO `quantify` VALUES ('304', '2018', '1', '1', '1', '6', '77');
INSERT INTO `quantify` VALUES ('305', '2018', '1', '1', '1', '7', '77');
INSERT INTO `quantify` VALUES ('306', '2018', '1', '1', '1', '8', '77');
INSERT INTO `quantify` VALUES ('307', '2018', '1', '1', '1', '9', '77');
INSERT INTO `quantify` VALUES ('308', '2018', '1', '1', '1', '10', '77');
INSERT INTO `quantify` VALUES ('309', '2018', '1', '1', '1', '17', '77');
INSERT INTO `quantify` VALUES ('310', '2018', '1', '1', '1', '1', '78');
INSERT INTO `quantify` VALUES ('311', '2018', '1', '1', '1', '2', '78');
INSERT INTO `quantify` VALUES ('312', '2018', '1', '1', '1', '3', '78');
INSERT INTO `quantify` VALUES ('313', '2018', '1', '1', '1', '4', '78');
INSERT INTO `quantify` VALUES ('314', '2018', '1', '1', '1', '5', '78');
INSERT INTO `quantify` VALUES ('315', '2018', '1', '1', '1', '6', '78');
INSERT INTO `quantify` VALUES ('316', '2018', '1', '1', '1', '7', '78');
INSERT INTO `quantify` VALUES ('317', '2018', '1', '1', '1', '8', '78');
INSERT INTO `quantify` VALUES ('318', '2018', '1', '1', '1', '9', '78');
INSERT INTO `quantify` VALUES ('319', '2018', '1', '1', '1', '10', '78');
INSERT INTO `quantify` VALUES ('320', '2018', '1', '1', '1', '17', '78');
INSERT INTO `quantify` VALUES ('321', '2018', '1', '1', '1', '1', '79');
INSERT INTO `quantify` VALUES ('322', '2018', '1', '1', '1', '2', '79');
INSERT INTO `quantify` VALUES ('323', '2018', '1', '1', '1', '3', '79');
INSERT INTO `quantify` VALUES ('324', '2018', '1', '1', '1', '4', '79');
INSERT INTO `quantify` VALUES ('325', '2018', '1', '1', '1', '5', '79');
INSERT INTO `quantify` VALUES ('326', '2018', '1', '1', '1', '6', '79');
INSERT INTO `quantify` VALUES ('327', '2018', '1', '1', '1', '7', '79');
INSERT INTO `quantify` VALUES ('328', '2018', '1', '1', '1', '8', '79');
INSERT INTO `quantify` VALUES ('329', '2018', '1', '1', '1', '9', '79');
INSERT INTO `quantify` VALUES ('330', '2018', '1', '1', '1', '10', '79');
INSERT INTO `quantify` VALUES ('331', '2018', '1', '1', '1', '17', '79');
INSERT INTO `quantify` VALUES ('332', '2018', '1', '1', '1', '1', '80');
INSERT INTO `quantify` VALUES ('333', '2018', '1', '1', '1', '2', '80');
INSERT INTO `quantify` VALUES ('334', '2018', '1', '1', '1', '3', '80');
INSERT INTO `quantify` VALUES ('335', '2018', '1', '1', '1', '4', '80');
INSERT INTO `quantify` VALUES ('336', '2018', '1', '1', '1', '5', '80');
INSERT INTO `quantify` VALUES ('337', '2018', '1', '1', '1', '6', '80');
INSERT INTO `quantify` VALUES ('338', '2018', '1', '1', '1', '7', '80');
INSERT INTO `quantify` VALUES ('339', '2018', '1', '1', '1', '8', '80');
INSERT INTO `quantify` VALUES ('340', '2018', '1', '1', '1', '9', '80');
INSERT INTO `quantify` VALUES ('341', '2018', '1', '1', '1', '10', '80');
INSERT INTO `quantify` VALUES ('342', '2018', '1', '1', '1', '17', '80');
INSERT INTO `quantify` VALUES ('343', '2018', '1', '1', '1', '1', '81');
INSERT INTO `quantify` VALUES ('344', '2018', '1', '1', '1', '2', '81');
INSERT INTO `quantify` VALUES ('345', '2018', '1', '1', '1', '3', '81');
INSERT INTO `quantify` VALUES ('346', '2018', '1', '1', '1', '4', '81');
INSERT INTO `quantify` VALUES ('347', '2018', '1', '1', '1', '5', '81');
INSERT INTO `quantify` VALUES ('348', '2018', '1', '1', '1', '6', '81');
INSERT INTO `quantify` VALUES ('349', '2018', '1', '1', '1', '7', '81');
INSERT INTO `quantify` VALUES ('350', '2018', '1', '1', '1', '8', '81');
INSERT INTO `quantify` VALUES ('351', '2018', '1', '1', '1', '9', '81');
INSERT INTO `quantify` VALUES ('352', '2018', '1', '1', '1', '10', '81');
INSERT INTO `quantify` VALUES ('353', '2018', '1', '1', '1', '17', '81');
INSERT INTO `quantify` VALUES ('354', '2018', '1', '1', '1', '1', '82');
INSERT INTO `quantify` VALUES ('355', '2018', '1', '1', '1', '2', '82');
INSERT INTO `quantify` VALUES ('356', '2018', '1', '1', '1', '3', '82');
INSERT INTO `quantify` VALUES ('357', '2018', '1', '1', '1', '4', '82');
INSERT INTO `quantify` VALUES ('358', '2018', '1', '1', '1', '5', '82');
INSERT INTO `quantify` VALUES ('359', '2018', '1', '1', '1', '6', '82');
INSERT INTO `quantify` VALUES ('360', '2018', '1', '1', '1', '7', '82');
INSERT INTO `quantify` VALUES ('361', '2018', '1', '1', '1', '8', '82');
INSERT INTO `quantify` VALUES ('362', '2018', '1', '1', '1', '9', '82');
INSERT INTO `quantify` VALUES ('363', '2018', '1', '1', '1', '10', '82');
INSERT INTO `quantify` VALUES ('364', '2018', '1', '1', '1', '17', '82');
INSERT INTO `quantify` VALUES ('365', '2018', '1', '1', '1', '1', '83');
INSERT INTO `quantify` VALUES ('366', '2018', '1', '1', '1', '2', '83');
INSERT INTO `quantify` VALUES ('367', '2018', '1', '1', '1', '3', '83');
INSERT INTO `quantify` VALUES ('368', '2018', '1', '1', '1', '4', '83');
INSERT INTO `quantify` VALUES ('369', '2018', '1', '1', '1', '5', '83');
INSERT INTO `quantify` VALUES ('370', '2018', '1', '1', '1', '6', '83');
INSERT INTO `quantify` VALUES ('371', '2018', '1', '1', '1', '7', '83');
INSERT INTO `quantify` VALUES ('372', '2018', '1', '1', '1', '8', '83');
INSERT INTO `quantify` VALUES ('373', '2018', '1', '1', '1', '9', '83');
INSERT INTO `quantify` VALUES ('374', '2018', '1', '1', '1', '10', '83');
INSERT INTO `quantify` VALUES ('375', '2018', '1', '1', '1', '17', '83');
INSERT INTO `quantify` VALUES ('376', '2018', '1', '1', '1', '1', '84');
INSERT INTO `quantify` VALUES ('377', '2018', '1', '1', '1', '2', '84');
INSERT INTO `quantify` VALUES ('378', '2018', '1', '1', '1', '3', '84');
INSERT INTO `quantify` VALUES ('379', '2018', '1', '1', '1', '4', '84');
INSERT INTO `quantify` VALUES ('380', '2018', '1', '1', '1', '5', '84');
INSERT INTO `quantify` VALUES ('381', '2018', '1', '1', '1', '6', '84');
INSERT INTO `quantify` VALUES ('382', '2018', '1', '1', '1', '7', '84');
INSERT INTO `quantify` VALUES ('383', '2018', '1', '1', '1', '8', '84');
INSERT INTO `quantify` VALUES ('384', '2018', '1', '1', '1', '9', '84');
INSERT INTO `quantify` VALUES ('385', '2018', '1', '1', '1', '10', '84');
INSERT INTO `quantify` VALUES ('386', '2018', '1', '1', '1', '17', '84');
INSERT INTO `quantify` VALUES ('387', '2018', '1', '1', '1', '1', '85');
INSERT INTO `quantify` VALUES ('388', '2018', '1', '1', '1', '2', '85');
INSERT INTO `quantify` VALUES ('389', '2018', '1', '1', '1', '3', '85');
INSERT INTO `quantify` VALUES ('390', '2018', '1', '1', '1', '4', '85');
INSERT INTO `quantify` VALUES ('391', '2018', '1', '1', '1', '5', '85');
INSERT INTO `quantify` VALUES ('392', '2018', '1', '1', '1', '6', '85');
INSERT INTO `quantify` VALUES ('393', '2018', '1', '1', '1', '7', '85');
INSERT INTO `quantify` VALUES ('394', '2018', '1', '1', '1', '8', '85');
INSERT INTO `quantify` VALUES ('395', '2018', '1', '1', '1', '9', '85');
INSERT INTO `quantify` VALUES ('396', '2018', '1', '1', '1', '10', '85');
INSERT INTO `quantify` VALUES ('397', '2018', '1', '1', '1', '17', '85');
INSERT INTO `quantify` VALUES ('398', '2018', '1', '1', '1', '1', '86');
INSERT INTO `quantify` VALUES ('399', '2018', '1', '1', '1', '2', '86');
INSERT INTO `quantify` VALUES ('400', '2018', '1', '1', '1', '3', '86');
INSERT INTO `quantify` VALUES ('401', '2018', '1', '1', '1', '4', '86');
INSERT INTO `quantify` VALUES ('402', '2018', '1', '1', '1', '5', '86');
INSERT INTO `quantify` VALUES ('403', '2018', '1', '1', '1', '6', '86');
INSERT INTO `quantify` VALUES ('404', '2018', '1', '1', '1', '7', '86');
INSERT INTO `quantify` VALUES ('405', '2018', '1', '1', '1', '8', '86');
INSERT INTO `quantify` VALUES ('406', '2018', '1', '1', '1', '9', '86');
INSERT INTO `quantify` VALUES ('407', '2018', '1', '1', '1', '10', '86');
INSERT INTO `quantify` VALUES ('408', '2018', '1', '1', '1', '17', '86');
INSERT INTO `quantify` VALUES ('409', '2018', '1', '1', '1', '1', '87');
INSERT INTO `quantify` VALUES ('410', '2018', '1', '1', '1', '2', '87');
INSERT INTO `quantify` VALUES ('411', '2018', '1', '1', '1', '3', '87');
INSERT INTO `quantify` VALUES ('412', '2018', '1', '1', '1', '4', '87');
INSERT INTO `quantify` VALUES ('413', '2018', '1', '1', '1', '5', '87');
INSERT INTO `quantify` VALUES ('414', '2018', '1', '1', '1', '6', '87');
INSERT INTO `quantify` VALUES ('415', '2018', '1', '1', '1', '7', '87');
INSERT INTO `quantify` VALUES ('416', '2018', '1', '1', '1', '8', '87');
INSERT INTO `quantify` VALUES ('417', '2018', '1', '1', '1', '9', '87');
INSERT INTO `quantify` VALUES ('418', '2018', '1', '1', '1', '10', '87');
INSERT INTO `quantify` VALUES ('419', '2018', '1', '1', '1', '17', '87');
INSERT INTO `quantify` VALUES ('420', '2018', '2', '1', '2', '1', '88');
INSERT INTO `quantify` VALUES ('421', '2018', '2', '1', '2', '7', '88');
INSERT INTO `quantify` VALUES ('422', '2018', '2', '1', '2', '8', '88');
INSERT INTO `quantify` VALUES ('423', '2018', '2', '1', '2', '9', '88');
INSERT INTO `quantify` VALUES ('424', '2018', '2', '1', '2', '10', '88');
INSERT INTO `quantify` VALUES ('425', '2018', '2', '1', '2', '17', '88');
INSERT INTO `quantify` VALUES ('426', '2018', '2', '1', '2', '1', '89');
INSERT INTO `quantify` VALUES ('427', '2018', '2', '1', '2', '7', '89');
INSERT INTO `quantify` VALUES ('428', '2018', '2', '1', '2', '8', '89');
INSERT INTO `quantify` VALUES ('429', '2018', '2', '1', '2', '9', '89');
INSERT INTO `quantify` VALUES ('430', '2018', '2', '1', '2', '10', '89');
INSERT INTO `quantify` VALUES ('431', '2018', '2', '1', '2', '17', '89');
INSERT INTO `quantify` VALUES ('432', '2018', '2', '1', '2', '1', '90');
INSERT INTO `quantify` VALUES ('433', '2018', '2', '1', '2', '7', '90');
INSERT INTO `quantify` VALUES ('434', '2018', '2', '1', '2', '8', '90');
INSERT INTO `quantify` VALUES ('435', '2018', '2', '1', '2', '9', '90');
INSERT INTO `quantify` VALUES ('436', '2018', '2', '1', '2', '10', '90');
INSERT INTO `quantify` VALUES ('437', '2018', '2', '1', '2', '17', '90');
INSERT INTO `quantify` VALUES ('444', '2018', '2', '1', '2', '1', '92');
INSERT INTO `quantify` VALUES ('445', '2018', '2', '1', '2', '7', '92');
INSERT INTO `quantify` VALUES ('446', '2018', '2', '1', '2', '8', '92');
INSERT INTO `quantify` VALUES ('447', '2018', '2', '1', '2', '9', '92');
INSERT INTO `quantify` VALUES ('448', '2018', '2', '1', '2', '10', '92');
INSERT INTO `quantify` VALUES ('449', '2018', '2', '1', '2', '17', '92');
INSERT INTO `quantify` VALUES ('450', '2018', '2', '1', '2', '1', '93');
INSERT INTO `quantify` VALUES ('451', '2018', '2', '1', '2', '7', '93');
INSERT INTO `quantify` VALUES ('452', '2018', '2', '1', '2', '8', '93');
INSERT INTO `quantify` VALUES ('453', '2018', '2', '1', '2', '9', '93');
INSERT INTO `quantify` VALUES ('454', '2018', '2', '1', '2', '10', '93');
INSERT INTO `quantify` VALUES ('455', '2018', '2', '1', '2', '17', '93');
INSERT INTO `quantify` VALUES ('456', '2018', '2', '1', '2', '1', '94');
INSERT INTO `quantify` VALUES ('457', '2018', '2', '1', '2', '7', '94');
INSERT INTO `quantify` VALUES ('458', '2018', '2', '1', '2', '8', '94');
INSERT INTO `quantify` VALUES ('459', '2018', '2', '1', '2', '9', '94');
INSERT INTO `quantify` VALUES ('460', '2018', '2', '1', '2', '10', '94');
INSERT INTO `quantify` VALUES ('461', '2018', '2', '1', '2', '17', '94');
INSERT INTO `quantify` VALUES ('462', '2018', '2', '1', '2', '1', '95');
INSERT INTO `quantify` VALUES ('463', '2018', '2', '1', '2', '7', '95');
INSERT INTO `quantify` VALUES ('464', '2018', '2', '1', '2', '8', '95');
INSERT INTO `quantify` VALUES ('465', '2018', '2', '1', '2', '9', '95');
INSERT INTO `quantify` VALUES ('466', '2018', '2', '1', '2', '10', '95');
INSERT INTO `quantify` VALUES ('467', '2018', '2', '1', '2', '17', '95');
INSERT INTO `quantify` VALUES ('468', '2018', '2', '1', '2', '1', '96');
INSERT INTO `quantify` VALUES ('469', '2018', '2', '1', '2', '7', '96');
INSERT INTO `quantify` VALUES ('470', '2018', '2', '1', '2', '8', '96');
INSERT INTO `quantify` VALUES ('471', '2018', '2', '1', '2', '9', '96');
INSERT INTO `quantify` VALUES ('472', '2018', '2', '1', '2', '10', '96');
INSERT INTO `quantify` VALUES ('473', '2018', '2', '1', '2', '17', '96');
INSERT INTO `quantify` VALUES ('474', '2018', '2', '1', '2', '1', '97');
INSERT INTO `quantify` VALUES ('475', '2018', '2', '1', '2', '7', '97');
INSERT INTO `quantify` VALUES ('476', '2018', '2', '1', '2', '8', '97');
INSERT INTO `quantify` VALUES ('477', '2018', '2', '1', '2', '9', '97');
INSERT INTO `quantify` VALUES ('478', '2018', '2', '1', '2', '10', '97');
INSERT INTO `quantify` VALUES ('479', '2018', '2', '1', '2', '17', '97');
INSERT INTO `quantify` VALUES ('480', '2018', '2', '1', '2', '1', '98');
INSERT INTO `quantify` VALUES ('481', '2018', '2', '1', '2', '7', '98');
INSERT INTO `quantify` VALUES ('482', '2018', '2', '1', '2', '8', '98');
INSERT INTO `quantify` VALUES ('483', '2018', '2', '1', '2', '9', '98');
INSERT INTO `quantify` VALUES ('484', '2018', '2', '1', '2', '10', '98');
INSERT INTO `quantify` VALUES ('485', '2018', '2', '1', '2', '17', '98');
INSERT INTO `quantify` VALUES ('486', '2018', '2', '1', '2', '1', '99');
INSERT INTO `quantify` VALUES ('487', '2018', '2', '1', '2', '7', '99');
INSERT INTO `quantify` VALUES ('488', '2018', '2', '1', '2', '8', '99');
INSERT INTO `quantify` VALUES ('489', '2018', '2', '1', '2', '9', '99');
INSERT INTO `quantify` VALUES ('490', '2018', '2', '1', '2', '10', '99');
INSERT INTO `quantify` VALUES ('491', '2018', '2', '1', '2', '17', '99');
INSERT INTO `quantify` VALUES ('492', '2018', '2', '1', '2', '1', '100');
INSERT INTO `quantify` VALUES ('493', '2018', '2', '1', '2', '7', '100');
INSERT INTO `quantify` VALUES ('494', '2018', '2', '1', '2', '8', '100');
INSERT INTO `quantify` VALUES ('495', '2018', '2', '1', '2', '9', '100');
INSERT INTO `quantify` VALUES ('496', '2018', '2', '1', '2', '10', '100');
INSERT INTO `quantify` VALUES ('497', '2018', '2', '1', '2', '17', '100');
INSERT INTO `quantify` VALUES ('498', '2018', '2', '1', '2', '1', '101');
INSERT INTO `quantify` VALUES ('499', '2018', '2', '1', '2', '7', '101');
INSERT INTO `quantify` VALUES ('500', '2018', '2', '1', '2', '8', '101');
INSERT INTO `quantify` VALUES ('501', '2018', '2', '1', '2', '9', '101');
INSERT INTO `quantify` VALUES ('502', '2018', '2', '1', '2', '10', '101');
INSERT INTO `quantify` VALUES ('503', '2018', '2', '1', '2', '17', '101');
INSERT INTO `quantify` VALUES ('504', '2018', '2', '1', '2', '1', '102');
INSERT INTO `quantify` VALUES ('505', '2018', '2', '1', '2', '7', '102');
INSERT INTO `quantify` VALUES ('506', '2018', '2', '1', '2', '8', '102');
INSERT INTO `quantify` VALUES ('507', '2018', '2', '1', '2', '9', '102');
INSERT INTO `quantify` VALUES ('508', '2018', '2', '1', '2', '10', '102');
INSERT INTO `quantify` VALUES ('509', '2018', '2', '1', '2', '17', '102');
INSERT INTO `quantify` VALUES ('510', '2018', '2', '1', '2', '1', '103');
INSERT INTO `quantify` VALUES ('511', '2018', '2', '1', '2', '7', '103');
INSERT INTO `quantify` VALUES ('512', '2018', '2', '1', '2', '8', '103');
INSERT INTO `quantify` VALUES ('513', '2018', '2', '1', '2', '9', '103');
INSERT INTO `quantify` VALUES ('514', '2018', '2', '1', '2', '10', '103');
INSERT INTO `quantify` VALUES ('515', '2018', '2', '1', '2', '17', '103');
INSERT INTO `quantify` VALUES ('516', '2018', '2', '1', '2', '1', '104');
INSERT INTO `quantify` VALUES ('517', '2018', '2', '1', '2', '7', '104');
INSERT INTO `quantify` VALUES ('518', '2018', '2', '1', '2', '8', '104');
INSERT INTO `quantify` VALUES ('519', '2018', '2', '1', '2', '9', '104');
INSERT INTO `quantify` VALUES ('520', '2018', '2', '1', '2', '10', '104');
INSERT INTO `quantify` VALUES ('521', '2018', '2', '1', '2', '17', '104');
INSERT INTO `quantify` VALUES ('522', '2018', '2', '1', '2', '1', '105');
INSERT INTO `quantify` VALUES ('523', '2018', '2', '1', '2', '7', '105');
INSERT INTO `quantify` VALUES ('524', '2018', '2', '1', '2', '8', '105');
INSERT INTO `quantify` VALUES ('525', '2018', '2', '1', '2', '9', '105');
INSERT INTO `quantify` VALUES ('526', '2018', '2', '1', '2', '10', '105');
INSERT INTO `quantify` VALUES ('527', '2018', '2', '1', '2', '17', '105');
INSERT INTO `quantify` VALUES ('528', '2018', '2', '1', '2', '1', '106');
INSERT INTO `quantify` VALUES ('529', '2018', '2', '1', '2', '7', '106');
INSERT INTO `quantify` VALUES ('530', '2018', '2', '1', '2', '8', '106');
INSERT INTO `quantify` VALUES ('531', '2018', '2', '1', '2', '9', '106');
INSERT INTO `quantify` VALUES ('532', '2018', '2', '1', '2', '10', '106');
INSERT INTO `quantify` VALUES ('533', '2018', '2', '1', '2', '17', '106');
INSERT INTO `quantify` VALUES ('534', '2018', '2', '1', '2', '1', '107');
INSERT INTO `quantify` VALUES ('535', '2018', '2', '1', '2', '7', '107');
INSERT INTO `quantify` VALUES ('536', '2018', '2', '1', '2', '8', '107');
INSERT INTO `quantify` VALUES ('537', '2018', '2', '1', '2', '9', '107');
INSERT INTO `quantify` VALUES ('538', '2018', '2', '1', '2', '10', '107');
INSERT INTO `quantify` VALUES ('539', '2018', '2', '1', '2', '17', '107');
INSERT INTO `quantify` VALUES ('540', '2018', '2', '1', '2', '1', '108');
INSERT INTO `quantify` VALUES ('541', '2018', '2', '1', '2', '7', '108');
INSERT INTO `quantify` VALUES ('542', '2018', '2', '1', '2', '8', '108');
INSERT INTO `quantify` VALUES ('543', '2018', '2', '1', '2', '9', '108');
INSERT INTO `quantify` VALUES ('544', '2018', '2', '1', '2', '10', '108');
INSERT INTO `quantify` VALUES ('545', '2018', '2', '1', '2', '17', '108');
INSERT INTO `quantify` VALUES ('546', '2018', '2', '1', '2', '1', '109');
INSERT INTO `quantify` VALUES ('547', '2018', '2', '1', '2', '7', '109');
INSERT INTO `quantify` VALUES ('548', '2018', '2', '1', '2', '8', '109');
INSERT INTO `quantify` VALUES ('549', '2018', '2', '1', '2', '9', '109');
INSERT INTO `quantify` VALUES ('550', '2018', '2', '1', '2', '10', '109');
INSERT INTO `quantify` VALUES ('551', '2018', '2', '1', '2', '17', '109');
INSERT INTO `quantify` VALUES ('552', '2018', '2', '1', '2', '1', '110');
INSERT INTO `quantify` VALUES ('553', '2018', '2', '1', '2', '7', '110');
INSERT INTO `quantify` VALUES ('554', '2018', '2', '1', '2', '8', '110');
INSERT INTO `quantify` VALUES ('555', '2018', '2', '1', '2', '9', '110');
INSERT INTO `quantify` VALUES ('556', '2018', '2', '1', '2', '10', '110');
INSERT INTO `quantify` VALUES ('557', '2018', '2', '1', '2', '17', '110');
INSERT INTO `quantify` VALUES ('558', '2018', '2', '1', '2', '1', '111');
INSERT INTO `quantify` VALUES ('559', '2018', '2', '1', '2', '7', '111');
INSERT INTO `quantify` VALUES ('560', '2018', '2', '1', '2', '8', '111');
INSERT INTO `quantify` VALUES ('561', '2018', '2', '1', '2', '9', '111');
INSERT INTO `quantify` VALUES ('562', '2018', '2', '1', '2', '10', '111');
INSERT INTO `quantify` VALUES ('563', '2018', '2', '1', '2', '17', '111');
INSERT INTO `quantify` VALUES ('564', '2018', '2', '1', '2', '1', '112');
INSERT INTO `quantify` VALUES ('565', '2018', '2', '1', '2', '7', '112');
INSERT INTO `quantify` VALUES ('566', '2018', '2', '1', '2', '8', '112');
INSERT INTO `quantify` VALUES ('567', '2018', '2', '1', '2', '9', '112');
INSERT INTO `quantify` VALUES ('568', '2018', '2', '1', '2', '10', '112');
INSERT INTO `quantify` VALUES ('569', '2018', '2', '1', '2', '17', '112');
INSERT INTO `quantify` VALUES ('570', '2018', '2', '1', '2', '1', '113');
INSERT INTO `quantify` VALUES ('571', '2018', '2', '1', '2', '7', '113');
INSERT INTO `quantify` VALUES ('572', '2018', '2', '1', '2', '8', '113');
INSERT INTO `quantify` VALUES ('573', '2018', '2', '1', '2', '9', '113');
INSERT INTO `quantify` VALUES ('574', '2018', '2', '1', '2', '10', '113');
INSERT INTO `quantify` VALUES ('575', '2018', '2', '1', '2', '17', '113');
INSERT INTO `quantify` VALUES ('576', '2018', '2', '1', '2', '1', '114');
INSERT INTO `quantify` VALUES ('577', '2018', '2', '1', '2', '7', '114');
INSERT INTO `quantify` VALUES ('578', '2018', '2', '1', '2', '8', '114');
INSERT INTO `quantify` VALUES ('579', '2018', '2', '1', '2', '9', '114');
INSERT INTO `quantify` VALUES ('580', '2018', '2', '1', '2', '10', '114');
INSERT INTO `quantify` VALUES ('581', '2018', '2', '1', '2', '17', '114');
INSERT INTO `quantify` VALUES ('582', '2018', '2', '1', '2', '1', '115');
INSERT INTO `quantify` VALUES ('583', '2018', '2', '1', '2', '7', '115');
INSERT INTO `quantify` VALUES ('584', '2018', '2', '1', '2', '8', '115');
INSERT INTO `quantify` VALUES ('585', '2018', '2', '1', '2', '9', '115');
INSERT INTO `quantify` VALUES ('586', '2018', '2', '1', '2', '10', '115');
INSERT INTO `quantify` VALUES ('587', '2018', '2', '1', '2', '17', '115');
INSERT INTO `quantify` VALUES ('588', '2018', '2', '1', '2', '1', '116');
INSERT INTO `quantify` VALUES ('589', '2018', '2', '1', '2', '7', '116');
INSERT INTO `quantify` VALUES ('590', '2018', '2', '1', '2', '8', '116');
INSERT INTO `quantify` VALUES ('591', '2018', '2', '1', '2', '9', '116');
INSERT INTO `quantify` VALUES ('592', '2018', '2', '1', '2', '10', '116');
INSERT INTO `quantify` VALUES ('593', '2018', '2', '1', '2', '17', '116');
INSERT INTO `quantify` VALUES ('594', '2018', '2', '1', '2', '1', '117');
INSERT INTO `quantify` VALUES ('595', '2018', '2', '1', '2', '7', '117');
INSERT INTO `quantify` VALUES ('596', '2018', '2', '1', '2', '8', '117');
INSERT INTO `quantify` VALUES ('597', '2018', '2', '1', '2', '9', '117');
INSERT INTO `quantify` VALUES ('598', '2018', '2', '1', '2', '10', '117');
INSERT INTO `quantify` VALUES ('599', '2018', '2', '1', '2', '17', '117');
INSERT INTO `quantify` VALUES ('600', '2018', '2', '1', '2', '1', '118');
INSERT INTO `quantify` VALUES ('601', '2018', '2', '1', '2', '7', '118');
INSERT INTO `quantify` VALUES ('602', '2018', '2', '1', '2', '8', '118');
INSERT INTO `quantify` VALUES ('603', '2018', '2', '1', '2', '9', '118');
INSERT INTO `quantify` VALUES ('604', '2018', '2', '1', '2', '10', '118');
INSERT INTO `quantify` VALUES ('605', '2018', '2', '1', '2', '17', '118');
INSERT INTO `quantify` VALUES ('606', '2018', '2', '1', '2', '1', '119');
INSERT INTO `quantify` VALUES ('607', '2018', '2', '1', '2', '7', '119');
INSERT INTO `quantify` VALUES ('608', '2018', '2', '1', '2', '8', '119');
INSERT INTO `quantify` VALUES ('609', '2018', '2', '1', '2', '9', '119');
INSERT INTO `quantify` VALUES ('610', '2018', '2', '1', '2', '10', '119');
INSERT INTO `quantify` VALUES ('611', '2018', '2', '1', '2', '17', '119');
INSERT INTO `quantify` VALUES ('612', '2018', '2', '1', '2', '1', '120');
INSERT INTO `quantify` VALUES ('613', '2018', '2', '1', '2', '7', '120');
INSERT INTO `quantify` VALUES ('614', '2018', '2', '1', '2', '8', '120');
INSERT INTO `quantify` VALUES ('615', '2018', '2', '1', '2', '9', '120');
INSERT INTO `quantify` VALUES ('616', '2018', '2', '1', '2', '10', '120');
INSERT INTO `quantify` VALUES ('617', '2018', '2', '1', '2', '17', '120');
INSERT INTO `quantify` VALUES ('618', '2018', '2', '1', '2', '1', '121');
INSERT INTO `quantify` VALUES ('619', '2018', '2', '1', '2', '7', '121');
INSERT INTO `quantify` VALUES ('620', '2018', '2', '1', '2', '8', '121');
INSERT INTO `quantify` VALUES ('621', '2018', '2', '1', '2', '9', '121');
INSERT INTO `quantify` VALUES ('622', '2018', '2', '1', '2', '10', '121');
INSERT INTO `quantify` VALUES ('623', '2018', '2', '1', '2', '17', '121');
INSERT INTO `quantify` VALUES ('624', '2018', '2', '1', '2', '1', '122');
INSERT INTO `quantify` VALUES ('625', '2018', '2', '1', '2', '7', '122');
INSERT INTO `quantify` VALUES ('626', '2018', '2', '1', '2', '8', '122');
INSERT INTO `quantify` VALUES ('627', '2018', '2', '1', '2', '9', '122');
INSERT INTO `quantify` VALUES ('628', '2018', '2', '1', '2', '10', '122');
INSERT INTO `quantify` VALUES ('629', '2018', '2', '1', '2', '17', '122');

-- ----------------------------
-- Table structure for quantifygrade
-- ----------------------------
DROP TABLE IF EXISTS `quantifygrade`;
CREATE TABLE `quantifygrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `sumGrade` double(255,0) DEFAULT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantifygrade
-- ----------------------------
INSERT INTO `quantifygrade` VALUES ('1', '2017', '1', '14', '农学院');
INSERT INTO `quantifygrade` VALUES ('344', '2018', '1', '11', '农学院');
INSERT INTO `quantifygrade` VALUES ('346', '2018', '17', '12', '纪委（监察、审计）');
INSERT INTO `quantifygrade` VALUES ('349', '2018', '73', '11', '林学院（园林与艺术学院）');
INSERT INTO `quantifygrade` VALUES ('350', '2018', '74', '11', '工学院');
INSERT INTO `quantifygrade` VALUES ('351', '2018', '75', '11', '生物科学与工程学院');
INSERT INTO `quantifygrade` VALUES ('352', '2018', '76', '11', '动物科学技术学院');
INSERT INTO `quantifygrade` VALUES ('353', '2018', '77', '11', '国土资源与环境学院');
INSERT INTO `quantifygrade` VALUES ('354', '2018', '78', '11', '经济管理学院');
INSERT INTO `quantifygrade` VALUES ('355', '2018', '79', '11', '食品科学与工程学院');
INSERT INTO `quantifygrade` VALUES ('356', '2018', '80', '11', '计算机与信息工程学院');
INSERT INTO `quantifygrade` VALUES ('357', '2018', '81', '11', '人文与公共管理学院');
INSERT INTO `quantifygrade` VALUES ('358', '2018', '82', '11', '马克思主义（政治）学院');
INSERT INTO `quantifygrade` VALUES ('359', '2018', '83', '11', '外国语学院');
INSERT INTO `quantifygrade` VALUES ('360', '2018', '84', '11', '软件学院');
INSERT INTO `quantifygrade` VALUES ('361', '2018', '85', '11', '职业师范（技术）学院');
INSERT INTO `quantifygrade` VALUES ('362', '2018', '86', '11', '理学院');
INSERT INTO `quantifygrade` VALUES ('363', '2018', '87', '11', '军体部（武装部）');
INSERT INTO `quantifygrade` VALUES ('364', '2018', '88', '12', '组织部（机关党委、党校）');
INSERT INTO `quantifygrade` VALUES ('365', '2018', '89', '12', '宣传部');
INSERT INTO `quantifygrade` VALUES ('366', '2018', '90', '12', '统战部');
INSERT INTO `quantifygrade` VALUES ('367', '2018', '92', '12', '工会');
INSERT INTO `quantifygrade` VALUES ('368', '2018', '93', '12', '学工部（处、大学生资助管理中心）');
INSERT INTO `quantifygrade` VALUES ('369', '2018', '94', '12', '团委');
INSERT INTO `quantifygrade` VALUES ('370', '2018', '95', '12', '招生就业处');
INSERT INTO `quantifygrade` VALUES ('371', '2018', '96', '12', '离退休工作处');
INSERT INTO `quantifygrade` VALUES ('372', '2018', '97', '12', '党办校办（党务政务督查室）');
INSERT INTO `quantifygrade` VALUES ('373', '2018', '98', '12', '科技处');
INSERT INTO `quantifygrade` VALUES ('374', '2018', '99', '12', '新农村发展研究院');
INSERT INTO `quantifygrade` VALUES ('375', '2018', '100', '12', '人事处');
INSERT INTO `quantifygrade` VALUES ('376', '2018', '101', '12', '财务处');
INSERT INTO `quantifygrade` VALUES ('377', '2018', '102', '12', '保卫处');
INSERT INTO `quantifygrade` VALUES ('378', '2018', '103', '12', '国际交流处');
INSERT INTO `quantifygrade` VALUES ('379', '2018', '104', '12', '产业处');
INSERT INTO `quantifygrade` VALUES ('380', '2018', '105', '12', '教务处（教学督导组）');
INSERT INTO `quantifygrade` VALUES ('381', '2018', '106', '12', '高教所');
INSERT INTO `quantifygrade` VALUES ('382', '2018', '107', '12', '研究生院');
INSERT INTO `quantifygrade` VALUES ('383', '2018', '108', '12', '资产与实验室管理处');
INSERT INTO `quantifygrade` VALUES ('384', '2018', '109', '12', 'MPA教育中心');
INSERT INTO `quantifygrade` VALUES ('385', '2018', '110', '12', '信息中心');
INSERT INTO `quantifygrade` VALUES ('386', '2018', '111', '12', '招标与采购中心');
INSERT INTO `quantifygrade` VALUES ('387', '2018', '112', '12', '农业科技园');
INSERT INTO `quantifygrade` VALUES ('388', '2018', '113', '12', '校友工作办公室');
INSERT INTO `quantifygrade` VALUES ('389', '2018', '114', '12', '后勤与校园管理处');
INSERT INTO `quantifygrade` VALUES ('390', '2018', '115', '12', '基本建设处');
INSERT INTO `quantifygrade` VALUES ('391', '2018', '116', '12', '图书馆');
INSERT INTO `quantifygrade` VALUES ('392', '2018', '117', '12', '刊社');
INSERT INTO `quantifygrade` VALUES ('393', '2018', '118', '12', '档案馆');
INSERT INTO `quantifygrade` VALUES ('394', '2018', '119', '12', '继续教育学院（管理干部学院）');
INSERT INTO `quantifygrade` VALUES ('395', '2018', '120', '12', '后勤服务集团');
INSERT INTO `quantifygrade` VALUES ('396', '2018', '121', '12', '附中');
INSERT INTO `quantifygrade` VALUES ('397', '2018', '122', '12', '医院');

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

-- ----------------------------
-- Table structure for vote_cadre
-- ----------------------------
DROP TABLE IF EXISTS `vote_cadre`;
CREATE TABLE `vote_cadre` (
  `voteID` int(50) NOT NULL AUTO_INCREMENT,
  `year` int(20) NOT NULL,
  `cadreID` int(50) NOT NULL,
  `cadreName` varchar(50) NOT NULL,
  `type` int(10) NOT NULL,
  `good` int(20) unsigned zerofill DEFAULT NULL,
  `lessGood` int(20) unsigned zerofill DEFAULT NULL,
  `common` int(20) unsigned zerofill DEFAULT NULL,
  `bad` int(20) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`voteID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_cadre
-- ----------------------------
INSERT INTO `vote_cadre` VALUES ('1', '2018', '1', '黄小平', '8', '00000000000000000003', '00000000000000000001', '00000000000000000000', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('2', '2018', '2', '戴仕明', '8', '00000000000000000002', '00000000000000000001', '00000000000000000001', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('3', '2018', '3', '周水平', '8', '00000000000000000004', '00000000000000000000', '00000000000000000002', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('4', '2018', '4', '杨君', '8', '00000000000000000003', '00000000000000000002', '00000000000000000000', '00000000000000000002');
INSERT INTO `vote_cadre` VALUES ('5', '2018', '3', '周水平', '6', '00000000000000000002', '00000000000000000000', '00000000000000000001', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('6', '2018', '4', '杨君', '6', '00000000000000000002', '00000000000000000001', '00000000000000000001', '00000000000000000000');
INSERT INTO `vote_cadre` VALUES ('7', '2018', '1', '黄小平', '6', '00000000000000000001', '00000000000000000000', '00000000000000000001', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('8', '2018', '2', '戴仕明', '6', '00000000000000000001', '00000000000000000001', '00000000000000000000', '00000000000000000001');
INSERT INTO `vote_cadre` VALUES ('9', '2018', '5', '李想', '3', '00000000000000000003', '00000000000000000001', '00000000000000000000', '00000000000000000002');
INSERT INTO `vote_cadre` VALUES ('10', '2018', '6', '吴欣欣', '3', '00000000000000000002', '00000000000000000001', '00000000000000000000', '00000000000000000002');
INSERT INTO `vote_cadre` VALUES ('11', '2018', '3', '周水平', '2', '00000000000000000004', '00000000000000000001', '00000000000000000001', '00000000000000000002');
INSERT INTO `vote_cadre` VALUES ('12', '2018', '5', '李想', '4', '00000000000000000001', '00000000000000000000', '00000000000000000001', '00000000000000000000');
INSERT INTO `vote_cadre` VALUES ('13', '2018', '6', '吴欣欣', '4', '00000000000000000001', '00000000000000000000', '00000000000000000001', '00000000000000000000');

-- ----------------------------
-- Table structure for vote_department
-- ----------------------------
DROP TABLE IF EXISTS `vote_department`;
CREATE TABLE `vote_department` (
  `voteID` int(50) NOT NULL AUTO_INCREMENT,
  `year` int(20) NOT NULL,
  `departmentID` int(50) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `type` int(10) NOT NULL,
  `good` int(20) unsigned zerofill DEFAULT NULL,
  `lessGood` int(20) unsigned zerofill DEFAULT NULL,
  `common` int(20) unsigned zerofill DEFAULT NULL,
  `bad` int(20) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`voteID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_department
-- ----------------------------
INSERT INTO `vote_department` VALUES ('9', '2018', '1', '农学院', '7', '00000000000000000006', '00000000000000000002', '00000000000000000000', '00000000000000000001');
INSERT INTO `vote_department` VALUES ('10', '2018', '2', '林学院（园林与艺术学院）', '7', '00000000000000000004', '00000000000000000004', '00000000000000000000', '00000000000000000001');
INSERT INTO `vote_department` VALUES ('11', '2018', '3', '工学院', '7', '00000000000000000004', '00000000000000000001', '00000000000000000002', '00000000000000000002');
INSERT INTO `vote_department` VALUES ('12', '2018', '4', '生物科学与工程学院', '7', '00000000000000000003', '00000000000000000001', '00000000000000000000', '00000000000000000004');
INSERT INTO `vote_department` VALUES ('13', '2018', '1', '农学院', '5', '00000000000000000003', '00000000000000000003', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('14', '2018', '2', '林学院（园林与艺术学院）', '5', '00000000000000000003', '00000000000000000003', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('15', '2018', '3', '工学院', '5', '00000000000000000003', '00000000000000000001', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('16', '2018', '4', '生物科学与工程学院', '5', '00000000000000000003', '00000000000000000001', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('17', '2018', '17', '纪委（监察、审计）', '5', '00000000000000000003', '00000000000000000000', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('18', '2018', '18', '组织部（机关党委、党校）', '5', '00000000000000000002', '00000000000000000001', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('19', '2018', '19', '宣传部', '5', '00000000000000000002', '00000000000000000000', '00000000000000000001', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('20', '2018', '6', '国土资源与环境学院', '1', '00000000000000000001', null, null, null);
INSERT INTO `vote_department` VALUES ('21', '2018', '15', '理学院', '5', '00000000000000000001', '00000000000000000001', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('22', '2018', '16', '军体部（武装部）', '5', '00000000000000000002', '00000000000000000000', '00000000000000000000', '00000000000000000000');
INSERT INTO `vote_department` VALUES ('23', '2018', '20', '统战部', '5', '00000000000000000001', null, null, null);
INSERT INTO `vote_department` VALUES ('24', '2018', '4', '生物科学与工程学院', '1', null, '00000000000000000001', null, null);
INSERT INTO `vote_department` VALUES ('25', '2018', '1', '农学院', '1', '00000000000000000001', '00000000000000000000', '00000000000000000001', '00000000000000000003');

-- ----------------------------
-- Table structure for vote_type
-- ----------------------------
DROP TABLE IF EXISTS `vote_type`;
CREATE TABLE `vote_type` (
  `voteTypeID` int(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `ratio` double(20,2) DEFAULT NULL,
  PRIMARY KEY (`voteTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_type
-- ----------------------------
INSERT INTO `vote_type` VALUES ('1', '单位内部对单位', '0.20');
INSERT INTO `vote_type` VALUES ('2', '单位内部对正职', '0.30');
INSERT INTO `vote_type` VALUES ('3', '单位内部对副职', '0.50');
INSERT INTO `vote_type` VALUES ('4', '正职对副职', '0.10');
INSERT INTO `vote_type` VALUES ('5', '学校民主对单位', '0.10');
INSERT INTO `vote_type` VALUES ('6', '学校民主对正职', '0.20');
INSERT INTO `vote_type` VALUES ('7', '校领导对单位', '0.10');
INSERT INTO `vote_type` VALUES ('8', '校领导对正职', '0.20');
