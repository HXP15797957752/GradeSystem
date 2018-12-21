/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : gradesystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-21 13:03:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cadre
-- ----------------------------
DROP TABLE IF EXISTS `cadre`;
CREATE TABLE `cadre` (
  `cadreID` int(10) NOT NULL AUTO_INCREMENT,
  `salaryID` int(60) NOT NULL,
  `cadreName` varchar(100) NOT NULL,
  `position` varchar(255) NOT NULL,
  `rank` int(100) NOT NULL COMMENT '0表示正处级，1表示副处级',
  `ofDepartment` int(20) NOT NULL,
  PRIMARY KEY (`cadreID`),
  KEY `ofDepartment` (`ofDepartment`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cadre
-- ----------------------------
INSERT INTO `cadre` VALUES ('33', '1996', '陈文新', '江西农大党办校办主任', '0', '97');
INSERT INTO `cadre` VALUES ('34', '1997', '殷  青', '江西农大党务政务督查室主任', '0', '97');
INSERT INTO `cadre` VALUES ('35', '1998', '黎  敏', '江西农大纪委副书记、监察室主任', '0', '17');
INSERT INTO `cadre` VALUES ('36', '1999', '郭庆舜', '江西农大党委组织部部长', '0', '88');
INSERT INTO `cadre` VALUES ('37', '2000', '彭小波', '江西农大机关党委常务副书记', '0', '88');
INSERT INTO `cadre` VALUES ('38', '2001', '袁良凤', '江西农大党校常务副校长', '0', '88');
INSERT INTO `cadre` VALUES ('39', '2002', '杨  峰', '江西农大党委宣传部部长', '0', '89');
INSERT INTO `cadre` VALUES ('40', '2003', '黎  瑛', '江西农大党委统战部部长', '0', '90');
INSERT INTO `cadre` VALUES ('41', '2004', '黄小珊', '江西农大离退休工作处处长、离退休党总支书记兼党委组织部副部长', '0', '96');
INSERT INTO `cadre` VALUES ('42', '2005', '桂华菊', '江西农大工会主席', '0', '92');
INSERT INTO `cadre` VALUES ('43', '2006', '李剑富', '江西农大学工部部长、学工处处长', '0', '93');
INSERT INTO `cadre` VALUES ('44', '2007', '徐  峰', '江西农大大学生资助管理中心主任(正处级)', '0', '93');
INSERT INTO `cadre` VALUES ('45', '2008', '高  鹏', '共青团江西农大委员会书记', '0', '94');
INSERT INTO `cadre` VALUES ('46', '2009', '魏洪义', '江西农大教务处处长', '0', '105');
INSERT INTO `cadre` VALUES ('47', '2010', '黄世传', '江西农大教学督导组组长（参加教务处测评会）', '0', '105');
INSERT INTO `cadre` VALUES ('48', '2011', '游金明', '江西农大科技处处长、新农村发展研究院副院长', '0', '98');
INSERT INTO `cadre` VALUES ('49', '2012', '黄占旺', '江西农大农业技术培训推广中心主任', '0', '98');
INSERT INTO `cadre` VALUES ('50', '2013', '熊红华', '江西农大研究生院党总支书记', '0', '107');
INSERT INTO `cadre` VALUES ('51', '2014', '左辉群', '江西农大招生就业处处长', '0', '95');
INSERT INTO `cadre` VALUES ('52', '2015', '黄维柳', '江西农大人事处处长', '0', '100');
INSERT INTO `cadre` VALUES ('53', '2016', '贺一松', '江西农大财务处处长', '0', '101');
INSERT INTO `cadre` VALUES ('54', '2017', '汤雄杰', '江西农大保卫处处长', '0', '102');
INSERT INTO `cadre` VALUES ('55', '2018', '张  露', '江西农大国际交流处处长', '0', '103');
INSERT INTO `cadre` VALUES ('56', '2019', '李  峰', '江西农大产业处处长兼产业党委副书记', '0', '104');
INSERT INTO `cadre` VALUES ('57', '2020', '张宏玉', '江西农大资产与实验室管理处处长', '0', '108');
INSERT INTO `cadre` VALUES ('58', '2021', '涂建平', '江西农大基本建设处处长', '0', '115');
INSERT INTO `cadre` VALUES ('59', '2022', '姜  伟', '江西农大继续教育学院党总支书记', '0', '119');
INSERT INTO `cadre` VALUES ('60', '2023', '余清华', '江西农大继续教育学院院长', '0', '119');
INSERT INTO `cadre` VALUES ('61', '2024', '邱亲材', '江西农大管理干部学院院长兼继续教育学院副院长', '0', '119');
INSERT INTO `cadre` VALUES ('62', '2025', '朱小玉', '江西农大校友工作办公室主任', '0', '113');
INSERT INTO `cadre` VALUES ('63', '2026', '刘正和', '江西农大农业科技园管委会党支部书记', '0', '112');
INSERT INTO `cadre` VALUES ('64', '2027', '邓光华', '江西农大农业科技园管委员会主任', '0', '112');
INSERT INTO `cadre` VALUES ('65', '2028', '翁贞林', '江西农大期刊社社长', '0', '117');
INSERT INTO `cadre` VALUES ('66', '2029', '熊龙彪', '江西农大档案馆馆长', '0', '118');
INSERT INTO `cadre` VALUES ('67', '2030', '颜玄洲', '江西农大图书馆馆长', '0', '116');
INSERT INTO `cadre` VALUES ('68', '2031', '郑  瑜', '江西农大图书馆党支部书记兼副馆长', '0', '116');
INSERT INTO `cadre` VALUES ('69', '2032', '曾卫明', '江西农大信息中心主任', '0', '110');
INSERT INTO `cadre` VALUES ('70', '2033', '蔡海生', '江西农大高等教育研究所所长', '0', '106');
INSERT INTO `cadre` VALUES ('71', '2034', '朱述斌', '江西农大新农村发展研究院执行院长', '0', '99');
INSERT INTO `cadre` VALUES ('72', '2035', '陈美球', '江西农大MPA教育中心主任', '0', '109');
INSERT INTO `cadre` VALUES ('73', '2036', '宋  军', '江西农大招标与采购中心主任', '0', '111');
INSERT INTO `cadre` VALUES ('76', '2039', '黄华古', '江西农大附中校长、党支部书记', '0', '136');
INSERT INTO `cadre` VALUES ('77', '2040', '方加海', '江西农大农学院党委书记', '0', '1');
INSERT INTO `cadre` VALUES ('78', '2041', '黄国勤', '江西农大生态科学研究所所长', '0', '1');
INSERT INTO `cadre` VALUES ('79', '2042', '周水平', '江西农大园林与艺术学院党委书记', '0', '73');
INSERT INTO `cadre` VALUES ('80', '2043', '杨光耀', '江西农大园林与艺术学院院长', '0', '73');
INSERT INTO `cadre` VALUES ('81', '2044', '王宗德', '江西农大植物天然产物与林产化工研究所所长(正处级)', '0', '73');
INSERT INTO `cadre` VALUES ('82', '2045', '陆  伟', '江西农大动物科学技术学院党委书记兼副院长', '0', '76');
INSERT INTO `cadre` VALUES ('83', '2046', '胡国良', '动物科学技术学院院长、动物群发性疾病监测和防治研究所所长', '0', '76');
INSERT INTO `cadre` VALUES ('84', '2047', '瞿明仁', '江西省动物营养重点实验室主任', '0', '76');
INSERT INTO `cadre` VALUES ('85', '2048', '任  军', '江西农大动物生物技术重点实验室副主任(正处级)', '0', '76');
INSERT INTO `cadre` VALUES ('86', '2049', '周艺萍', '江西农大计算机与信息工程学院党委书记', '0', '80');
INSERT INTO `cadre` VALUES ('87', '2050', '王映龙', '江西农大计算机与信息工程学院院长', '0', '80');
INSERT INTO `cadre` VALUES ('88', '2051', '王  兰', '江西农大软件学院党委书记', '0', '84');
INSERT INTO `cadre` VALUES ('89', '2052', '赵应丁', '江西农大软件学院院长', '0', '84');
INSERT INTO `cadre` VALUES ('90', '2053', '郭如良', '江西农大经济管理学院党委书记', '0', '78');
INSERT INTO `cadre` VALUES ('91', '2054', '陈昭玖', '江西农大“三农”问题研究中心主任', '0', '78');
INSERT INTO `cadre` VALUES ('92', '2055', '郭  旭', '江西农大国土资源与环境学院党委书记', '0', '77');
INSERT INTO `cadre` VALUES ('93', '2056', '李保同', '江西农大国土资源与环境学院院长', '0', '77');
INSERT INTO `cadre` VALUES ('94', '2057', '黄国清', '江西农大职业师范(技术)学院党委书记', '0', '85');
INSERT INTO `cadre` VALUES ('95', '2058', '张继河', '江西农大职业师范(技术)学院院长', '0', '85');
INSERT INTO `cadre` VALUES ('96', '2059', '郭锦墉', '江西农大人文与公共管理学院党委书记', '0', '81');
INSERT INTO `cadre` VALUES ('97', '2060', '宋秉斌', '江西农大人文与公共管理学院院长', '0', '81');
INSERT INTO `cadre` VALUES ('98', '2061', '魏  毅', '江西农大马克思主义（政治）学院党总支书记', '0', '82');
INSERT INTO `cadre` VALUES ('99', '2062', '刘汉一', '江西农大马克思主义（政治）学院院长', '0', '82');
INSERT INTO `cadre` VALUES ('100', '2063', '周  阳', '江西农大理学院党委书记', '0', '86');
INSERT INTO `cadre` VALUES ('101', '2064', '王义华', '江西农大理学院院长', '0', '86');
INSERT INTO `cadre` VALUES ('102', '2065', '范  云', '江西农大食品科学与工程学院党委书记', '0', '79');
INSERT INTO `cadre` VALUES ('103', '2066', '王文君', '江西农大食品科学与工程学院院长', '0', '79');
INSERT INTO `cadre` VALUES ('104', '2067', '徐明生', '江西省天然产物与功能食品重点实验室主任', '0', '79');
INSERT INTO `cadre` VALUES ('105', '2068', '廖明祥', '江西农大生物科学与工程学院党委书记', '0', '75');
INSERT INTO `cadre` VALUES ('106', '2069', '吴晓玉', '江西农大生物科学与工程学院院长', '0', '75');
INSERT INTO `cadre` VALUES ('107', '2070', '霍光华', '江西农大生物资源保护与利用研究所所长', '0', '75');
INSERT INTO `cadre` VALUES ('108', '2071', '肖友群', '江西农大外国语学院党委书记', '0', '83');
INSERT INTO `cadre` VALUES ('109', '2072', '吴伟萍', '江西农大外国语学院院长', '0', '83');
INSERT INTO `cadre` VALUES ('111', '2074', '胡永升', '江西农大党办校办副主任', '1', '97');
INSERT INTO `cadre` VALUES ('112', '2075', '曹明星', '江西农大党办校办副主任', '1', '97');
INSERT INTO `cadre` VALUES ('113', '2076', '胡永华', '江西农大纪委（监察、审计）综合办公室主任', '1', '17');
INSERT INTO `cadre` VALUES ('114', '2077', '聂  清', '江西农大审计处副处长', '1', '17');
INSERT INTO `cadre` VALUES ('115', '2078', '廖述香', '江西农大党委组织部副处级组织员', '1', '88');
INSERT INTO `cadre` VALUES ('116', '2079', '郭光华', '江西农大党校副校长', '1', '88');
INSERT INTO `cadre` VALUES ('117', '2080', '朱晓东', '江西农大党委宣传部副部长', '1', '89');
INSERT INTO `cadre` VALUES ('118', '2081', '刘厚彪', '江西农大离退休工作处副处长', '1', '96');
INSERT INTO `cadre` VALUES ('119', '2082', '阮明华', '江西农大工会副主席', '1', '92');
INSERT INTO `cadre` VALUES ('120', '2083', '黄新志', '江西农大学工处副处长', '1', '93');
INSERT INTO `cadre` VALUES ('121', '2084', '郭军海', '共青团江西农大委员会副书记', '1', '94');
INSERT INTO `cadre` VALUES ('122', '2085', '黄  波', '江西农大教务处副处长', '1', '105');
INSERT INTO `cadre` VALUES ('123', '2086', '彭齐东', '江西农大研究生院副院长', '1', '107');
INSERT INTO `cadre` VALUES ('124', '2087', '周红燕', '江西农大研究生院党总支副书记', '1', '107');
INSERT INTO `cadre` VALUES ('125', '2088', '张高亮', '江西农大招生就业处副处长', '1', '95');
INSERT INTO `cadre` VALUES ('126', '2089', '黄莉萍', '江西农大财务处副处长', '1', '101');
INSERT INTO `cadre` VALUES ('127', '2090', '郭安平', '江西农大农业科技园管委会副主任（在保卫处履职，参加保卫处测评会）', '1', '102');
INSERT INTO `cadre` VALUES ('128', '2091', '万江文', '江西农大后勤与校园管理处副处长', '1', '114');
INSERT INTO `cadre` VALUES ('129', '2092', '邹建民', '江西农大产业处副处长', '1', '104');
INSERT INTO `cadre` VALUES ('130', '2093', '钟远东', '江西农大产业处副处长', '1', '104');
INSERT INTO `cadre` VALUES ('131', '2094', '尹生良', '江西农大资产与实验室管理处副处长', '1', '108');
INSERT INTO `cadre` VALUES ('132', '2095', '刘民高', '江西农大基本建设处副处长', '1', '115');
INSERT INTO `cadre` VALUES ('133', '2096', '张水发', '江西农大继续教育学院副院长', '1', '119');
INSERT INTO `cadre` VALUES ('134', '2097', '周建伟', '江西农大继续教育学院副院长', '1', '119');
INSERT INTO `cadre` VALUES ('135', '2098', '万  洁', '江西农大校友工作办公室副主任', '1', '113');
INSERT INTO `cadre` VALUES ('136', '2099', '吴才君', '江西农大农业科技园管委会副主任', '1', '112');
INSERT INTO `cadre` VALUES ('137', '2100', '李祚兴', '江西农大农业科技园管委会副主任', '1', '112');
INSERT INTO `cadre` VALUES ('138', '2101', '李力民', '江西农大期刊社副社长', '1', '117');
INSERT INTO `cadre` VALUES ('139', '2102', '周  超', '江西农大信息中心副主任', '1', '110');
INSERT INTO `cadre` VALUES ('140', '2103', '柳  军', '江西农大信息中心副主任', '1', '110');
INSERT INTO `cadre` VALUES ('141', '2104', '宁  飔', '江西农大高等教育研究所副所长', '1', '106');
INSERT INTO `cadre` VALUES ('142', '2105', '吴南生', '江西农大新农村发展研究院副院长', '1', '99');
INSERT INTO `cadre` VALUES ('144', '2107', '肖意风', '江西农大农学院党委副书记', '1', '1');
INSERT INTO `cadre` VALUES ('145', '2108', '刘  勇', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('146', '2109', '朱昌兰', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('147', '2110', '曾勇军', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('148', '2111', '谢国强', '江西农大作物生理生态与遗传育种重点实验室副主任', '1', '1');
INSERT INTO `cadre` VALUES ('149', '2112', '王建胜', '江西农大园林与艺术学院党委副书记', '1', '73');
INSERT INTO `cadre` VALUES ('150', '2113', '夏庆林', '江西农大园林与艺术学院副院长', '1', '73');
INSERT INTO `cadre` VALUES ('151', '2114', '刘纯青', '江西农大园林与艺术学院副院长', '1', '73');
INSERT INTO `cadre` VALUES ('152', '2115', '曹华斌', '江西农大动物科学技术学院副院长', '1', '76');
INSERT INTO `cadre` VALUES ('153', '2116', '肖石军', '江西农大动物生物技术重点实验室副主任', '1', '76');
INSERT INTO `cadre` VALUES ('154', '2117', '李  琳', '江西农大江西省饲料科学研究所副所长(副处级)', '1', '76');
INSERT INTO `cadre` VALUES ('155', '2118', '艾施荣', '江西农大工学院党委副书记', '1', '74');
INSERT INTO `cadre` VALUES ('156', '2119', '刘仁鑫', '江西农大工学院副院长', '1', '74');
INSERT INTO `cadre` VALUES ('157', '2120', '张庐陵', '江西农大工学院副院长', '1', '74');
INSERT INTO `cadre` VALUES ('158', '2121', '彭泰中', '江西农大计算机与信息工程学院党委副书记', '1', '80');
INSERT INTO `cadre` VALUES ('159', '2122', '裴  红', '江西农大计算机与信息工程学院副院长', '1', '80');
INSERT INTO `cadre` VALUES ('160', '2123', '唐建军', '江西农大计算机与信息工程学院副院长', '1', '80');
INSERT INTO `cadre` VALUES ('161', '2124', '戴仕明', '江西农大软件学院副院长', '1', '84');
INSERT INTO `cadre` VALUES ('162', '2125', '刘庆言', '江西农大经济管理学院党委副书记', '1', '78');
INSERT INTO `cadre` VALUES ('163', '2126', '胡  凯', '江西农大经济管理学院副院长', '1', '78');
INSERT INTO `cadre` VALUES ('164', '2127', '赵  刚', '江西农大国土资源与环境学院党委副书记', '1', '77');
INSERT INTO `cadre` VALUES ('165', '2128', '周春火', '江西农大国土资源与环境学院副院长', '1', '77');
INSERT INTO `cadre` VALUES ('166', '2129', '刘志兵', '江西农大职业师范(技术)学院党委副书记', '1', '85');
INSERT INTO `cadre` VALUES ('167', '2130', '苏力华', '江西农大职业师范(技术)学院副院长兼职教基地常务副主任', '1', '85');
INSERT INTO `cadre` VALUES ('168', '2131', '刘善军', '江西农大职业师范(技术)学院副院长', '1', '85');
INSERT INTO `cadre` VALUES ('169', '2132', '王志发', '江西农大人文与公共管理学院党委副书记', '1', '81');
INSERT INTO `cadre` VALUES ('170', '2133', '黄少峰', '江西农大人文与公共管理学院副院长', '1', '81');
INSERT INTO `cadre` VALUES ('171', '2134', '李道和', '江西农大人文与公共管理学院副院长', '1', '81');
INSERT INTO `cadre` VALUES ('172', '2135', '姜木枝', '江西农大马克思主义（政治）学院副院长', '1', '82');
INSERT INTO `cadre` VALUES ('173', '2136', '付庆文', '江西农大马克思主义（政治）学院副院长', '1', '82');
INSERT INTO `cadre` VALUES ('174', '2137', '周国平', '江西农大理学院党委副书记', '1', '86');
INSERT INTO `cadre` VALUES ('175', '2138', '黄长干', '江西农大理学院副院长', '1', '86');
INSERT INTO `cadre` VALUES ('176', '2139', '邱新兰', '江西农大理学院副院长', '1', '86');
INSERT INTO `cadre` VALUES ('177', '2140', '胡  丹', '江西农大食品科学与工程学院党委副书记', '1', '79');
INSERT INTO `cadre` VALUES ('178', '2141', '吴国平', '江西农大食品科学与工程学院副院长', '1', '79');
INSERT INTO `cadre` VALUES ('179', '2142', '罗志华', '江西农大生物科学与工程学院党委副书记', '1', '75');
INSERT INTO `cadre` VALUES ('180', '2143', '刘卫东', '江西农大生物科学与工程学院副院长', '1', '75');
INSERT INTO `cadre` VALUES ('185', '2037', '杨秀江', '江西农大后勤服务集团党总支书记、副总经理', '0', '138');
INSERT INTO `cadre` VALUES ('186', '2038', '吴文军', '江西农大后勤服务集团总经理', '0', '138');
INSERT INTO `cadre` VALUES ('187', '2073', '潘金发', '江西农大武装部部长兼军体部党支部书记、军体部主任', '0', '140');
INSERT INTO `cadre` VALUES ('188', '2106', '孙剑华', '江西农大后勤服务集团副总经理', '1', '138');
INSERT INTO `cadre` VALUES ('189', '2144', '肖  明', '江西农大外国语学院党委副书记', '1', '83');
INSERT INTO `cadre` VALUES ('190', '2145', '席艳辉', '江西农大军事体育部副主任', '1', '140');
INSERT INTO `cadre` VALUES ('191', '2146', '王军华', '江西农大后勤服务集团副总经理', '1', '138');
INSERT INTO `cadre` VALUES ('192', '2147', '张瑞增', '江西农大后勤服务集团副总经理', '1', '138');

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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cadre_year_score
-- ----------------------------
INSERT INTO `cadre_year_score` VALUES ('83', '2018', '33', '陈文新', '0000000000', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('84', '2018', '34', '殷  青', '0000000000', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('85', '2018', '35', '黎  敏', '0000000000', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('86', '2018', '36', '郭庆舜', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('87', '2018', '37', '彭小波', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('88', '2018', '38', '袁良凤', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('89', '2018', '39', '杨  峰', '0000000000', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('90', '2018', '40', '黎  瑛', '0000000000', '统战部', '0');
INSERT INTO `cadre_year_score` VALUES ('91', '2018', '41', '黄小珊', '0000000000', '离退休工作处', '0');
INSERT INTO `cadre_year_score` VALUES ('92', '2018', '42', '桂华菊', '0000000000', '工会', '0');
INSERT INTO `cadre_year_score` VALUES ('93', '2018', '43', '李剑富', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('94', '2018', '44', '徐  峰', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('95', '2018', '45', '高  鹏', '0000000000', '团委', '0');
INSERT INTO `cadre_year_score` VALUES ('96', '2018', '46', '魏洪义', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('97', '2018', '47', '黄世传', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('98', '2018', '48', '游金明', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('99', '2018', '49', '黄占旺', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('100', '2018', '50', '熊红华', '0000000000', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('101', '2018', '51', '左辉群', '0000000000', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('102', '2018', '52', '黄维柳', '0000000000', '人事处', '0');
INSERT INTO `cadre_year_score` VALUES ('103', '2018', '53', '贺一松', '0000000000', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('104', '2018', '54', '汤雄杰', '0000000000', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('105', '2018', '55', '张  露', '0000000000', '国际交流处', '0');
INSERT INTO `cadre_year_score` VALUES ('106', '2018', '56', '李  峰', '0000000000', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('107', '2018', '57', '张宏玉', '0000000000', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('108', '2018', '58', '涂建平', '0000000000', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('109', '2018', '59', '姜  伟', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('110', '2018', '60', '余清华', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('111', '2018', '61', '邱亲材', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('112', '2018', '62', '朱小玉', '0000000000', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('113', '2018', '63', '刘正和', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('114', '2018', '64', '邓光华', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('115', '2018', '65', '翁贞林', '0000000000', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('116', '2018', '66', '熊龙彪', '0000000000', '档案馆', '0');
INSERT INTO `cadre_year_score` VALUES ('117', '2018', '67', '颜玄洲', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('118', '2018', '68', '郑  瑜', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('119', '2018', '69', '曾卫明', '0000000000', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('120', '2018', '70', '蔡海生', '0000000000', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('121', '2018', '71', '朱述斌', '0000000000', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('122', '2018', '72', '陈美球', '0000000000', 'MPA教育中心', '0');
INSERT INTO `cadre_year_score` VALUES ('123', '2018', '73', '宋  军', '0000000000', '招标与采购中心', '0');
INSERT INTO `cadre_year_score` VALUES ('124', '2018', '77', '方加海', '0000000000', '农学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('125', '2018', '78', '黄国勤', '0000000000', '农学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('126', '2018', '79', '周水平', '0000000000', '林学院（园林与艺术学院）', '1.98');
INSERT INTO `cadre_year_score` VALUES ('127', '2018', '80', '杨光耀', '0000000000', '林学院（园林与艺术学院）', '1.98');
INSERT INTO `cadre_year_score` VALUES ('128', '2018', '81', '王宗德', '0000000000', '林学院（园林与艺术学院）', '1.98');
INSERT INTO `cadre_year_score` VALUES ('129', '2018', '82', '陆  伟', '0000000000', '动物科学技术学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('130', '2018', '83', '胡国良', '0000000000', '动物科学技术学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('131', '2018', '84', '瞿明仁', '0000000000', '动物科学技术学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('132', '2018', '85', '任  军', '0000000000', '动物科学技术学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('133', '2018', '86', '周艺萍', '0000000000', '计算机与信息工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('134', '2018', '87', '王映龙', '0000000000', '计算机与信息工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('135', '2018', '88', '王  兰', '0000000000', '软件学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('136', '2018', '89', '赵应丁', '0000000000', '软件学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('137', '2018', '90', '郭如良', '0000000000', '经济管理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('138', '2018', '91', '陈昭玖', '0000000000', '经济管理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('139', '2018', '92', '郭  旭', '0000000000', '国土资源与环境学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('140', '2018', '93', '李保同', '0000000000', '国土资源与环境学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('141', '2018', '94', '黄国清', '0000000000', '职业师范（技术）学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('142', '2018', '95', '张继河', '0000000000', '职业师范（技术）学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('143', '2018', '96', '郭锦墉', '0000000000', '人文与公共管理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('144', '2018', '97', '宋秉斌', '0000000000', '人文与公共管理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('145', '2018', '98', '魏  毅', '0000000000', '马克思主义（政治）学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('146', '2018', '99', '刘汉一', '0000000000', '马克思主义（政治）学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('147', '2018', '100', '周  阳', '0000000000', '理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('148', '2018', '101', '王义华', '0000000000', '理学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('149', '2018', '102', '范  云', '0000000000', '食品科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('150', '2018', '103', '王文君', '0000000000', '食品科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('151', '2018', '104', '徐明生', '0000000000', '食品科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('152', '2018', '105', '廖明祥', '0000000000', '生物科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('153', '2018', '106', '吴晓玉', '0000000000', '生物科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('154', '2018', '107', '霍光华', '0000000000', '生物科学与工程学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('155', '2018', '108', '肖友群', '0000000000', '外国语学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('156', '2018', '109', '吴伟萍', '0000000000', '外国语学院', '1.98');
INSERT INTO `cadre_year_score` VALUES ('157', '2018', '111', '胡永升', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('158', '2018', '112', '曹明星', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('159', '2018', '113', '胡永华', '0000000001', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('160', '2018', '114', '聂  清', '0000000001', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('161', '2018', '115', '廖述香', '0000000001', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('162', '2018', '116', '郭光华', '0000000001', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('163', '2018', '117', '朱晓东', '0000000001', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('164', '2018', '118', '刘厚彪', '0000000001', '离退休工作处', '0');
INSERT INTO `cadre_year_score` VALUES ('165', '2018', '119', '阮明华', '0000000001', '工会', '0');
INSERT INTO `cadre_year_score` VALUES ('166', '2018', '120', '黄新志', '0000000001', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('167', '2018', '121', '郭军海', '0000000001', '团委', '0');
INSERT INTO `cadre_year_score` VALUES ('168', '2018', '122', '黄  波', '0000000001', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('169', '2018', '123', '彭齐东', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('170', '2018', '124', '周红燕', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('171', '2018', '125', '张高亮', '0000000001', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('172', '2018', '126', '黄莉萍', '0000000001', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('173', '2018', '127', '郭安平', '0000000001', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('174', '2018', '128', '万江文', '0000000001', '后勤与校园管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('175', '2018', '129', '邹建民', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('176', '2018', '130', '钟远东', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('177', '2018', '131', '尹生良', '0000000001', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('178', '2018', '132', '刘民高', '0000000001', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('179', '2018', '133', '张水发', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('180', '2018', '134', '周建伟', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('181', '2018', '135', '万  洁', '0000000001', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('182', '2018', '136', '吴才君', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('183', '2018', '137', '李祚兴', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('184', '2018', '138', '李力民', '0000000001', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('185', '2018', '139', '周  超', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('186', '2018', '140', '柳  军', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('187', '2018', '141', '宁  飔', '0000000001', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('188', '2018', '142', '吴南生', '0000000001', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('189', '2018', '144', '肖意风', '0000000001', '农学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('190', '2018', '145', '刘  勇', '0000000001', '农学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('191', '2018', '146', '朱昌兰', '0000000001', '农学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('192', '2018', '147', '曾勇军', '0000000001', '农学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('193', '2018', '148', '谢国强', '0000000001', '农学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('194', '2018', '149', '王建胜', '0000000001', '林学院（园林与艺术学院）', '2.64');
INSERT INTO `cadre_year_score` VALUES ('195', '2018', '150', '夏庆林', '0000000001', '林学院（园林与艺术学院）', '2.64');
INSERT INTO `cadre_year_score` VALUES ('196', '2018', '151', '刘纯青', '0000000001', '林学院（园林与艺术学院）', '2.64');
INSERT INTO `cadre_year_score` VALUES ('197', '2018', '152', '曹华斌', '0000000001', '动物科学技术学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('198', '2018', '153', '肖石军', '0000000001', '动物科学技术学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('199', '2018', '154', '李  琳', '0000000001', '动物科学技术学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('200', '2018', '155', '艾施荣', '0000000001', '工学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('201', '2018', '156', '刘仁鑫', '0000000001', '工学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('202', '2018', '157', '张庐陵', '0000000001', '工学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('203', '2018', '158', '彭泰中', '0000000001', '计算机与信息工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('204', '2018', '159', '裴  红', '0000000001', '计算机与信息工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('205', '2018', '160', '唐建军', '0000000001', '计算机与信息工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('206', '2018', '161', '戴仕明', '0000000001', '软件学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('207', '2018', '162', '刘庆言', '0000000001', '经济管理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('208', '2018', '163', '胡  凯', '0000000001', '经济管理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('209', '2018', '164', '赵  刚', '0000000001', '国土资源与环境学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('210', '2018', '165', '周春火', '0000000001', '国土资源与环境学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('211', '2018', '166', '刘志兵', '0000000001', '职业师范（技术）学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('212', '2018', '167', '苏力华', '0000000001', '职业师范（技术）学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('213', '2018', '168', '刘善军', '0000000001', '职业师范（技术）学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('214', '2018', '169', '王志发', '0000000001', '人文与公共管理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('215', '2018', '170', '黄少峰', '0000000001', '人文与公共管理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('216', '2018', '171', '李道和', '0000000001', '人文与公共管理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('217', '2018', '172', '姜木枝', '0000000001', '马克思主义（政治）学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('218', '2018', '173', '付庆文', '0000000001', '马克思主义（政治）学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('219', '2018', '174', '周国平', '0000000001', '理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('220', '2018', '175', '黄长干', '0000000001', '理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('221', '2018', '176', '邱新兰', '0000000001', '理学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('222', '2018', '177', '胡  丹', '0000000001', '食品科学与工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('223', '2018', '178', '吴国平', '0000000001', '食品科学与工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('224', '2018', '179', '罗志华', '0000000001', '生物科学与工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('225', '2018', '180', '刘卫东', '0000000001', '生物科学与工程学院', '2.64');
INSERT INTO `cadre_year_score` VALUES ('226', '2018', '181', '肖  明', '0000000001', '外国语学院', '2.64');

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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

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
INSERT INTO `department` VALUES ('117', '期刊社', '2', null);
INSERT INTO `department` VALUES ('118', '档案馆', '2', null);
INSERT INTO `department` VALUES ('119', '继续教育学院（管理干部学院）', '2', null);
INSERT INTO `department` VALUES ('136', '附中', '1', null);
INSERT INTO `department` VALUES ('138', '后勤服务集团', '2', null);
INSERT INTO `department` VALUES ('140', '军体部（武装部）', '1', null);

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
  PRIMARY KEY (`id`,`year`,`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_year_score
-- ----------------------------
INSERT INTO `department_year_score` VALUES ('1', '0000002018', '0000000001', '农学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('2', '0000002018', '0000000073', '林学院（园林与艺术学院）', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('3', '0000002018', '0000000074', '工学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('4', '0000002018', '0000000075', '生物科学与工程学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('5', '0000002018', '0000000076', '动物科学技术学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('6', '0000002018', '0000000077', '国土资源与环境学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('7', '0000002018', '0000000078', '经济管理学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('8', '0000002018', '0000000079', '食品科学与工程学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('9', '0000002018', '0000000080', '计算机与信息工程学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('10', '0000002018', '0000000081', '人文与公共管理学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('11', '0000002018', '0000000082', '马克思主义（政治）学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('12', '0000002018', '0000000083', '外国语学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('13', '0000002018', '0000000084', '软件学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('14', '0000002018', '0000000085', '职业师范（技术）学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('15', '0000002018', '0000000086', '理学院', '00000000000000000006.6');
INSERT INTO `department_year_score` VALUES ('16', '0000002018', '0000000136', '附中', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('17', '0000002017', '0000000001', '农学院', '00000000000000000008.4');
INSERT INTO `department_year_score` VALUES ('18', '0000002017', '0000000073', '林学院（园林与艺术学院）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('19', '0000002017', '0000000074', '工学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('20', '0000002017', '0000000075', '生物科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('21', '0000002017', '0000000076', '动物科学技术学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('22', '0000002017', '0000000077', '国土资源与环境学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('23', '0000002017', '0000000078', '经济管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('24', '0000002017', '0000000079', '食品科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('25', '0000002017', '0000000080', '计算机与信息工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('26', '0000002017', '0000000081', '人文与公共管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('27', '0000002017', '0000000082', '马克思主义（政治）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('28', '0000002017', '0000000083', '外国语学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('29', '0000002017', '0000000084', '软件学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('30', '0000002017', '0000000085', '职业师范（技术）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('31', '0000002017', '0000000086', '理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('32', '0000002017', '0000000136', '附中', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('33', '0000002019', '0000000001', '农学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('34', '0000002019', '0000000073', '林学院（园林与艺术学院）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('35', '0000002019', '0000000074', '工学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('36', '0000002019', '0000000075', '生物科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('37', '0000002019', '0000000076', '动物科学技术学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('38', '0000002019', '0000000077', '国土资源与环境学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('39', '0000002019', '0000000078', '经济管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('40', '0000002019', '0000000079', '食品科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('41', '0000002019', '0000000080', '计算机与信息工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('42', '0000002019', '0000000081', '人文与公共管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('43', '0000002019', '0000000082', '马克思主义（政治）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('44', '0000002019', '0000000083', '外国语学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('45', '0000002019', '0000000084', '软件学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('46', '0000002019', '0000000085', '职业师范（技术）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('47', '0000002019', '0000000086', '理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('48', '0000002019', '0000000136', '附中', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('49', '0000002018', '0000000017', '纪委（监察、审计）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('50', '0000002018', '0000000088', '组织部（机关党委、党校）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('51', '0000002018', '0000000089', '宣传部', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('52', '0000002018', '0000000090', '统战部', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('53', '0000002018', '0000000092', '工会', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('54', '0000002018', '0000000093', '学工部（处、大学生资助管理中心）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('55', '0000002018', '0000000094', '团委', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('56', '0000002018', '0000000095', '招生就业处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('57', '0000002018', '0000000096', '离退休工作处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('58', '0000002018', '0000000097', '党办校办（党务政务督查室）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('59', '0000002018', '0000000098', '科技处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('60', '0000002018', '0000000099', '新农村发展研究院', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('61', '0000002018', '0000000100', '人事处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('62', '0000002018', '0000000101', '财务处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('63', '0000002018', '0000000102', '保卫处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('64', '0000002018', '0000000103', '国际交流处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('65', '0000002018', '0000000104', '产业处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('66', '0000002018', '0000000105', '教务处（教学督导组）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('67', '0000002018', '0000000106', '高教所', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('68', '0000002018', '0000000107', '研究生院', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('69', '0000002018', '0000000108', '资产与实验室管理处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('70', '0000002018', '0000000109', 'MPA教育中心', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('71', '0000002018', '0000000110', '信息中心', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('72', '0000002018', '0000000111', '招标与采购中心', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('73', '0000002018', '0000000112', '农业科技园', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('74', '0000002018', '0000000113', '校友工作办公室', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('75', '0000002018', '0000000114', '后勤与校园管理处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('76', '0000002018', '0000000115', '基本建设处', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('77', '0000002018', '0000000116', '图书馆', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('78', '0000002018', '0000000117', '期刊社', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('79', '0000002018', '0000000118', '档案馆', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('80', '0000002018', '0000000119', '继续教育学院（管理干部学院）', '00000000000000000004.8');
INSERT INTO `department_year_score` VALUES ('81', '0000002018', '0000000138', '后勤服务集团', '0000000000000000000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
INSERT INTO `qoption` VALUES ('18', '积分');

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
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantify
-- ----------------------------
INSERT INTO `quantify` VALUES ('1', '2018', '1', '1', '1', '1', '1');
INSERT INTO `quantify` VALUES ('2', '2018', '1', '1', '1', '2', '1');
INSERT INTO `quantify` VALUES ('3', '2018', '1', '1', '1', '3', '1');
INSERT INTO `quantify` VALUES ('4', '2018', '1', '1', '1', '4', '1');
INSERT INTO `quantify` VALUES ('5', '2018', '1', '1', '1', '5', '1');
INSERT INTO `quantify` VALUES ('6', '2018', '1', '1', '1', '6', '1');
INSERT INTO `quantify` VALUES ('7', '2018', '1', null, '1', '7', '1');
INSERT INTO `quantify` VALUES ('8', '2018', '1', null, '1', '8', '1');
INSERT INTO `quantify` VALUES ('9', '2018', '1', null, '1', '9', '1');
INSERT INTO `quantify` VALUES ('10', '2018', '2', '1', '2', '10', '17');
INSERT INTO `quantify` VALUES ('11', '2018', '2', '1', '2', '7', '17');
INSERT INTO `quantify` VALUES ('12', '2018', '2', '1', '2', '8', '17');
INSERT INTO `quantify` VALUES ('13', '2018', '2', '1', '2', '9', '17');
INSERT INTO `quantify` VALUES ('177', '2018', '1', null, '1', '10', '1');
INSERT INTO `quantify` VALUES ('255', '2018', '1', '1', '1', '1', '73');
INSERT INTO `quantify` VALUES ('256', '2018', '1', '1', '1', '2', '73');
INSERT INTO `quantify` VALUES ('257', '2018', '1', '1', '1', '3', '73');
INSERT INTO `quantify` VALUES ('258', '2018', '1', '1', '1', '4', '73');
INSERT INTO `quantify` VALUES ('259', '2018', '1', '1', '1', '5', '73');
INSERT INTO `quantify` VALUES ('260', '2018', '1', '1', '1', '6', '73');
INSERT INTO `quantify` VALUES ('261', '2018', '1', null, '1', '7', '73');
INSERT INTO `quantify` VALUES ('262', '2018', '1', null, '1', '8', '73');
INSERT INTO `quantify` VALUES ('263', '2018', '1', null, '1', '9', '73');
INSERT INTO `quantify` VALUES ('264', '2018', '1', null, '1', '10', '73');
INSERT INTO `quantify` VALUES ('266', '2018', '1', '1', '1', '1', '74');
INSERT INTO `quantify` VALUES ('267', '2018', '1', '1', '1', '2', '74');
INSERT INTO `quantify` VALUES ('268', '2018', '1', '1', '1', '3', '74');
INSERT INTO `quantify` VALUES ('269', '2018', '1', '1', '1', '4', '74');
INSERT INTO `quantify` VALUES ('270', '2018', '1', '1', '1', '5', '74');
INSERT INTO `quantify` VALUES ('271', '2018', '1', '1', '1', '6', '74');
INSERT INTO `quantify` VALUES ('272', '2018', '1', null, '1', '7', '74');
INSERT INTO `quantify` VALUES ('273', '2018', '1', null, '1', '8', '74');
INSERT INTO `quantify` VALUES ('274', '2018', '1', null, '1', '9', '74');
INSERT INTO `quantify` VALUES ('275', '2018', '1', null, '1', '10', '74');
INSERT INTO `quantify` VALUES ('277', '2018', '1', '1', '1', '1', '75');
INSERT INTO `quantify` VALUES ('278', '2018', '1', '1', '1', '2', '75');
INSERT INTO `quantify` VALUES ('279', '2018', '1', '1', '1', '3', '75');
INSERT INTO `quantify` VALUES ('280', '2018', '1', '1', '1', '4', '75');
INSERT INTO `quantify` VALUES ('281', '2018', '1', '1', '1', '5', '75');
INSERT INTO `quantify` VALUES ('282', '2018', '1', '1', '1', '6', '75');
INSERT INTO `quantify` VALUES ('283', '2018', '1', null, '1', '7', '75');
INSERT INTO `quantify` VALUES ('284', '2018', '1', null, '1', '8', '75');
INSERT INTO `quantify` VALUES ('285', '2018', '1', null, '1', '9', '75');
INSERT INTO `quantify` VALUES ('286', '2018', '1', null, '1', '10', '75');
INSERT INTO `quantify` VALUES ('288', '2018', '1', '1', '1', '1', '76');
INSERT INTO `quantify` VALUES ('289', '2018', '1', '1', '1', '2', '76');
INSERT INTO `quantify` VALUES ('290', '2018', '1', '1', '1', '3', '76');
INSERT INTO `quantify` VALUES ('291', '2018', '1', '1', '1', '4', '76');
INSERT INTO `quantify` VALUES ('292', '2018', '1', '1', '1', '5', '76');
INSERT INTO `quantify` VALUES ('293', '2018', '1', '1', '1', '6', '76');
INSERT INTO `quantify` VALUES ('294', '2018', '1', null, '1', '7', '76');
INSERT INTO `quantify` VALUES ('295', '2018', '1', null, '1', '8', '76');
INSERT INTO `quantify` VALUES ('296', '2018', '1', null, '1', '9', '76');
INSERT INTO `quantify` VALUES ('297', '2018', '1', null, '1', '10', '76');
INSERT INTO `quantify` VALUES ('299', '2018', '1', '1', '1', '1', '77');
INSERT INTO `quantify` VALUES ('300', '2018', '1', '1', '1', '2', '77');
INSERT INTO `quantify` VALUES ('301', '2018', '1', '1', '1', '3', '77');
INSERT INTO `quantify` VALUES ('302', '2018', '1', '1', '1', '4', '77');
INSERT INTO `quantify` VALUES ('303', '2018', '1', '1', '1', '5', '77');
INSERT INTO `quantify` VALUES ('304', '2018', '1', '1', '1', '6', '77');
INSERT INTO `quantify` VALUES ('305', '2018', '1', null, '1', '7', '77');
INSERT INTO `quantify` VALUES ('306', '2018', '1', null, '1', '8', '77');
INSERT INTO `quantify` VALUES ('307', '2018', '1', null, '1', '9', '77');
INSERT INTO `quantify` VALUES ('308', '2018', '1', null, '1', '10', '77');
INSERT INTO `quantify` VALUES ('310', '2018', '1', '1', '1', '1', '78');
INSERT INTO `quantify` VALUES ('311', '2018', '1', '1', '1', '2', '78');
INSERT INTO `quantify` VALUES ('312', '2018', '1', '1', '1', '3', '78');
INSERT INTO `quantify` VALUES ('313', '2018', '1', '1', '1', '4', '78');
INSERT INTO `quantify` VALUES ('314', '2018', '1', '1', '1', '5', '78');
INSERT INTO `quantify` VALUES ('315', '2018', '1', '1', '1', '6', '78');
INSERT INTO `quantify` VALUES ('316', '2018', '1', null, '1', '7', '78');
INSERT INTO `quantify` VALUES ('317', '2018', '1', null, '1', '8', '78');
INSERT INTO `quantify` VALUES ('318', '2018', '1', null, '1', '9', '78');
INSERT INTO `quantify` VALUES ('319', '2018', '1', null, '1', '10', '78');
INSERT INTO `quantify` VALUES ('321', '2018', '1', '1', '1', '1', '79');
INSERT INTO `quantify` VALUES ('322', '2018', '1', '1', '1', '2', '79');
INSERT INTO `quantify` VALUES ('323', '2018', '1', '1', '1', '3', '79');
INSERT INTO `quantify` VALUES ('324', '2018', '1', '1', '1', '4', '79');
INSERT INTO `quantify` VALUES ('325', '2018', '1', '1', '1', '5', '79');
INSERT INTO `quantify` VALUES ('326', '2018', '1', '1', '1', '6', '79');
INSERT INTO `quantify` VALUES ('327', '2018', '1', null, '1', '7', '79');
INSERT INTO `quantify` VALUES ('328', '2018', '1', null, '1', '8', '79');
INSERT INTO `quantify` VALUES ('329', '2018', '1', null, '1', '9', '79');
INSERT INTO `quantify` VALUES ('330', '2018', '1', null, '1', '10', '79');
INSERT INTO `quantify` VALUES ('332', '2018', '1', '1', '1', '1', '80');
INSERT INTO `quantify` VALUES ('333', '2018', '1', '1', '1', '2', '80');
INSERT INTO `quantify` VALUES ('334', '2018', '1', '1', '1', '3', '80');
INSERT INTO `quantify` VALUES ('335', '2018', '1', '1', '1', '4', '80');
INSERT INTO `quantify` VALUES ('336', '2018', '1', '1', '1', '5', '80');
INSERT INTO `quantify` VALUES ('337', '2018', '1', '1', '1', '6', '80');
INSERT INTO `quantify` VALUES ('338', '2018', '1', null, '1', '7', '80');
INSERT INTO `quantify` VALUES ('339', '2018', '1', null, '1', '8', '80');
INSERT INTO `quantify` VALUES ('340', '2018', '1', null, '1', '9', '80');
INSERT INTO `quantify` VALUES ('341', '2018', '1', null, '1', '10', '80');
INSERT INTO `quantify` VALUES ('343', '2018', '1', '1', '1', '1', '81');
INSERT INTO `quantify` VALUES ('344', '2018', '1', '1', '1', '2', '81');
INSERT INTO `quantify` VALUES ('345', '2018', '1', '1', '1', '3', '81');
INSERT INTO `quantify` VALUES ('346', '2018', '1', '1', '1', '4', '81');
INSERT INTO `quantify` VALUES ('347', '2018', '1', '1', '1', '5', '81');
INSERT INTO `quantify` VALUES ('348', '2018', '1', '1', '1', '6', '81');
INSERT INTO `quantify` VALUES ('349', '2018', '1', null, '1', '7', '81');
INSERT INTO `quantify` VALUES ('350', '2018', '1', null, '1', '8', '81');
INSERT INTO `quantify` VALUES ('351', '2018', '1', null, '1', '9', '81');
INSERT INTO `quantify` VALUES ('352', '2018', '1', null, '1', '10', '81');
INSERT INTO `quantify` VALUES ('354', '2018', '1', '1', '1', '1', '82');
INSERT INTO `quantify` VALUES ('355', '2018', '1', '1', '1', '2', '82');
INSERT INTO `quantify` VALUES ('356', '2018', '1', '1', '1', '3', '82');
INSERT INTO `quantify` VALUES ('357', '2018', '1', '1', '1', '4', '82');
INSERT INTO `quantify` VALUES ('358', '2018', '1', '1', '1', '5', '82');
INSERT INTO `quantify` VALUES ('359', '2018', '1', '1', '1', '6', '82');
INSERT INTO `quantify` VALUES ('360', '2018', '1', null, '1', '7', '82');
INSERT INTO `quantify` VALUES ('361', '2018', '1', null, '1', '8', '82');
INSERT INTO `quantify` VALUES ('362', '2018', '1', null, '1', '9', '82');
INSERT INTO `quantify` VALUES ('363', '2018', '1', null, '1', '10', '82');
INSERT INTO `quantify` VALUES ('365', '2018', '1', '1', '1', '1', '83');
INSERT INTO `quantify` VALUES ('366', '2018', '1', '1', '1', '2', '83');
INSERT INTO `quantify` VALUES ('367', '2018', '1', '1', '1', '3', '83');
INSERT INTO `quantify` VALUES ('368', '2018', '1', '1', '1', '4', '83');
INSERT INTO `quantify` VALUES ('369', '2018', '1', '1', '1', '5', '83');
INSERT INTO `quantify` VALUES ('370', '2018', '1', '1', '1', '6', '83');
INSERT INTO `quantify` VALUES ('371', '2018', '1', null, '1', '7', '83');
INSERT INTO `quantify` VALUES ('372', '2018', '1', null, '1', '8', '83');
INSERT INTO `quantify` VALUES ('373', '2018', '1', null, '1', '9', '83');
INSERT INTO `quantify` VALUES ('374', '2018', '1', null, '1', '10', '83');
INSERT INTO `quantify` VALUES ('376', '2018', '1', '1', '1', '1', '84');
INSERT INTO `quantify` VALUES ('377', '2018', '1', '1', '1', '2', '84');
INSERT INTO `quantify` VALUES ('378', '2018', '1', '1', '1', '3', '84');
INSERT INTO `quantify` VALUES ('379', '2018', '1', '1', '1', '4', '84');
INSERT INTO `quantify` VALUES ('380', '2018', '1', '1', '1', '5', '84');
INSERT INTO `quantify` VALUES ('381', '2018', '1', '1', '1', '6', '84');
INSERT INTO `quantify` VALUES ('382', '2018', '1', null, '1', '7', '84');
INSERT INTO `quantify` VALUES ('383', '2018', '1', null, '1', '8', '84');
INSERT INTO `quantify` VALUES ('384', '2018', '1', null, '1', '9', '84');
INSERT INTO `quantify` VALUES ('385', '2018', '1', null, '1', '10', '84');
INSERT INTO `quantify` VALUES ('387', '2018', '1', '1', '1', '1', '85');
INSERT INTO `quantify` VALUES ('388', '2018', '1', '1', '1', '2', '85');
INSERT INTO `quantify` VALUES ('389', '2018', '1', '1', '1', '3', '85');
INSERT INTO `quantify` VALUES ('390', '2018', '1', '1', '1', '4', '85');
INSERT INTO `quantify` VALUES ('391', '2018', '1', '1', '1', '5', '85');
INSERT INTO `quantify` VALUES ('392', '2018', '1', '1', '1', '6', '85');
INSERT INTO `quantify` VALUES ('393', '2018', '1', null, '1', '7', '85');
INSERT INTO `quantify` VALUES ('394', '2018', '1', null, '1', '8', '85');
INSERT INTO `quantify` VALUES ('395', '2018', '1', null, '1', '9', '85');
INSERT INTO `quantify` VALUES ('396', '2018', '1', null, '1', '10', '85');
INSERT INTO `quantify` VALUES ('398', '2018', '1', '1', '1', '1', '86');
INSERT INTO `quantify` VALUES ('399', '2018', '1', '1', '1', '2', '86');
INSERT INTO `quantify` VALUES ('400', '2018', '1', '1', '1', '3', '86');
INSERT INTO `quantify` VALUES ('401', '2018', '1', '1', '1', '4', '86');
INSERT INTO `quantify` VALUES ('402', '2018', '1', '1', '1', '5', '86');
INSERT INTO `quantify` VALUES ('403', '2018', '1', '1', '1', '6', '86');
INSERT INTO `quantify` VALUES ('404', '2018', '1', null, '1', '7', '86');
INSERT INTO `quantify` VALUES ('405', '2018', '1', null, '1', '8', '86');
INSERT INTO `quantify` VALUES ('406', '2018', '1', null, '1', '9', '86');
INSERT INTO `quantify` VALUES ('407', '2018', '1', null, '1', '10', '86');
INSERT INTO `quantify` VALUES ('421', '2018', '2', '1', '2', '7', '88');
INSERT INTO `quantify` VALUES ('422', '2018', '2', '1', '2', '8', '88');
INSERT INTO `quantify` VALUES ('423', '2018', '2', '1', '2', '9', '88');
INSERT INTO `quantify` VALUES ('424', '2018', '2', '1', '2', '10', '88');
INSERT INTO `quantify` VALUES ('427', '2018', '2', '1', '2', '7', '89');
INSERT INTO `quantify` VALUES ('428', '2018', '2', '1', '2', '8', '89');
INSERT INTO `quantify` VALUES ('429', '2018', '2', '1', '2', '9', '89');
INSERT INTO `quantify` VALUES ('430', '2018', '2', '1', '2', '10', '89');
INSERT INTO `quantify` VALUES ('433', '2018', '2', '1', '2', '7', '90');
INSERT INTO `quantify` VALUES ('434', '2018', '2', '1', '2', '8', '90');
INSERT INTO `quantify` VALUES ('435', '2018', '2', '1', '2', '9', '90');
INSERT INTO `quantify` VALUES ('436', '2018', '2', '1', '2', '10', '90');
INSERT INTO `quantify` VALUES ('445', '2018', '2', '1', '2', '7', '92');
INSERT INTO `quantify` VALUES ('446', '2018', '2', '1', '2', '8', '92');
INSERT INTO `quantify` VALUES ('447', '2018', '2', '1', '2', '9', '92');
INSERT INTO `quantify` VALUES ('448', '2018', '2', '1', '2', '10', '92');
INSERT INTO `quantify` VALUES ('451', '2018', '2', '1', '2', '7', '93');
INSERT INTO `quantify` VALUES ('452', '2018', '2', '1', '2', '8', '93');
INSERT INTO `quantify` VALUES ('453', '2018', '2', '1', '2', '9', '93');
INSERT INTO `quantify` VALUES ('454', '2018', '2', '1', '2', '10', '93');
INSERT INTO `quantify` VALUES ('457', '2018', '2', '1', '2', '7', '94');
INSERT INTO `quantify` VALUES ('458', '2018', '2', '1', '2', '8', '94');
INSERT INTO `quantify` VALUES ('459', '2018', '2', '1', '2', '9', '94');
INSERT INTO `quantify` VALUES ('460', '2018', '2', '1', '2', '10', '94');
INSERT INTO `quantify` VALUES ('463', '2018', '2', '1', '2', '7', '95');
INSERT INTO `quantify` VALUES ('464', '2018', '2', '1', '2', '8', '95');
INSERT INTO `quantify` VALUES ('465', '2018', '2', '1', '2', '9', '95');
INSERT INTO `quantify` VALUES ('466', '2018', '2', '1', '2', '10', '95');
INSERT INTO `quantify` VALUES ('469', '2018', '2', '1', '2', '7', '96');
INSERT INTO `quantify` VALUES ('470', '2018', '2', '1', '2', '8', '96');
INSERT INTO `quantify` VALUES ('471', '2018', '2', '1', '2', '9', '96');
INSERT INTO `quantify` VALUES ('472', '2018', '2', '1', '2', '10', '96');
INSERT INTO `quantify` VALUES ('475', '2018', '2', '1', '2', '7', '97');
INSERT INTO `quantify` VALUES ('476', '2018', '2', '1', '2', '8', '97');
INSERT INTO `quantify` VALUES ('477', '2018', '2', '1', '2', '9', '97');
INSERT INTO `quantify` VALUES ('478', '2018', '2', '1', '2', '10', '97');
INSERT INTO `quantify` VALUES ('481', '2018', '2', '1', '2', '7', '98');
INSERT INTO `quantify` VALUES ('482', '2018', '2', '1', '2', '8', '98');
INSERT INTO `quantify` VALUES ('483', '2018', '2', '1', '2', '9', '98');
INSERT INTO `quantify` VALUES ('484', '2018', '2', '1', '2', '10', '98');
INSERT INTO `quantify` VALUES ('487', '2018', '2', '1', '2', '7', '99');
INSERT INTO `quantify` VALUES ('488', '2018', '2', '1', '2', '8', '99');
INSERT INTO `quantify` VALUES ('489', '2018', '2', '1', '2', '9', '99');
INSERT INTO `quantify` VALUES ('490', '2018', '2', '1', '2', '10', '99');
INSERT INTO `quantify` VALUES ('493', '2018', '2', '1', '2', '7', '100');
INSERT INTO `quantify` VALUES ('494', '2018', '2', '1', '2', '8', '100');
INSERT INTO `quantify` VALUES ('495', '2018', '2', '1', '2', '9', '100');
INSERT INTO `quantify` VALUES ('496', '2018', '2', '1', '2', '10', '100');
INSERT INTO `quantify` VALUES ('499', '2018', '2', '1', '2', '7', '101');
INSERT INTO `quantify` VALUES ('500', '2018', '2', '1', '2', '8', '101');
INSERT INTO `quantify` VALUES ('501', '2018', '2', '1', '2', '9', '101');
INSERT INTO `quantify` VALUES ('502', '2018', '2', '1', '2', '10', '101');
INSERT INTO `quantify` VALUES ('505', '2018', '2', '1', '2', '7', '102');
INSERT INTO `quantify` VALUES ('506', '2018', '2', '1', '2', '8', '102');
INSERT INTO `quantify` VALUES ('507', '2018', '2', '1', '2', '9', '102');
INSERT INTO `quantify` VALUES ('508', '2018', '2', '1', '2', '10', '102');
INSERT INTO `quantify` VALUES ('511', '2018', '2', '1', '2', '7', '103');
INSERT INTO `quantify` VALUES ('512', '2018', '2', '1', '2', '8', '103');
INSERT INTO `quantify` VALUES ('513', '2018', '2', '1', '2', '9', '103');
INSERT INTO `quantify` VALUES ('514', '2018', '2', '1', '2', '10', '103');
INSERT INTO `quantify` VALUES ('517', '2018', '2', '1', '2', '7', '104');
INSERT INTO `quantify` VALUES ('518', '2018', '2', '1', '2', '8', '104');
INSERT INTO `quantify` VALUES ('519', '2018', '2', '1', '2', '9', '104');
INSERT INTO `quantify` VALUES ('520', '2018', '2', '1', '2', '10', '104');
INSERT INTO `quantify` VALUES ('523', '2018', '2', '1', '2', '7', '105');
INSERT INTO `quantify` VALUES ('524', '2018', '2', '1', '2', '8', '105');
INSERT INTO `quantify` VALUES ('525', '2018', '2', '1', '2', '9', '105');
INSERT INTO `quantify` VALUES ('526', '2018', '2', '1', '2', '10', '105');
INSERT INTO `quantify` VALUES ('529', '2018', '2', '1', '2', '7', '106');
INSERT INTO `quantify` VALUES ('530', '2018', '2', '1', '2', '8', '106');
INSERT INTO `quantify` VALUES ('531', '2018', '2', '1', '2', '9', '106');
INSERT INTO `quantify` VALUES ('532', '2018', '2', '1', '2', '10', '106');
INSERT INTO `quantify` VALUES ('535', '2018', '2', '1', '2', '7', '107');
INSERT INTO `quantify` VALUES ('536', '2018', '2', '1', '2', '8', '107');
INSERT INTO `quantify` VALUES ('537', '2018', '2', '1', '2', '9', '107');
INSERT INTO `quantify` VALUES ('538', '2018', '2', '1', '2', '10', '107');
INSERT INTO `quantify` VALUES ('541', '2018', '2', '1', '2', '7', '108');
INSERT INTO `quantify` VALUES ('542', '2018', '2', '1', '2', '8', '108');
INSERT INTO `quantify` VALUES ('543', '2018', '2', '1', '2', '9', '108');
INSERT INTO `quantify` VALUES ('544', '2018', '2', '1', '2', '10', '108');
INSERT INTO `quantify` VALUES ('547', '2018', '2', '1', '2', '7', '109');
INSERT INTO `quantify` VALUES ('548', '2018', '2', '1', '2', '8', '109');
INSERT INTO `quantify` VALUES ('549', '2018', '2', '1', '2', '9', '109');
INSERT INTO `quantify` VALUES ('550', '2018', '2', '1', '2', '10', '109');
INSERT INTO `quantify` VALUES ('553', '2018', '2', '1', '2', '7', '110');
INSERT INTO `quantify` VALUES ('554', '2018', '2', '1', '2', '8', '110');
INSERT INTO `quantify` VALUES ('555', '2018', '2', '1', '2', '9', '110');
INSERT INTO `quantify` VALUES ('556', '2018', '2', '1', '2', '10', '110');
INSERT INTO `quantify` VALUES ('559', '2018', '2', '1', '2', '7', '111');
INSERT INTO `quantify` VALUES ('560', '2018', '2', '1', '2', '8', '111');
INSERT INTO `quantify` VALUES ('561', '2018', '2', '1', '2', '9', '111');
INSERT INTO `quantify` VALUES ('562', '2018', '2', '1', '2', '10', '111');
INSERT INTO `quantify` VALUES ('565', '2018', '2', '1', '2', '7', '112');
INSERT INTO `quantify` VALUES ('566', '2018', '2', '1', '2', '8', '112');
INSERT INTO `quantify` VALUES ('567', '2018', '2', '1', '2', '9', '112');
INSERT INTO `quantify` VALUES ('568', '2018', '2', '1', '2', '10', '112');
INSERT INTO `quantify` VALUES ('571', '2018', '2', '1', '2', '7', '113');
INSERT INTO `quantify` VALUES ('572', '2018', '2', '1', '2', '8', '113');
INSERT INTO `quantify` VALUES ('573', '2018', '2', '1', '2', '9', '113');
INSERT INTO `quantify` VALUES ('574', '2018', '2', '1', '2', '10', '113');
INSERT INTO `quantify` VALUES ('577', '2018', '2', '1', '2', '7', '114');
INSERT INTO `quantify` VALUES ('578', '2018', '2', '1', '2', '8', '114');
INSERT INTO `quantify` VALUES ('579', '2018', '2', '1', '2', '9', '114');
INSERT INTO `quantify` VALUES ('580', '2018', '2', '1', '2', '10', '114');
INSERT INTO `quantify` VALUES ('583', '2018', '2', '1', '2', '7', '115');
INSERT INTO `quantify` VALUES ('584', '2018', '2', '1', '2', '8', '115');
INSERT INTO `quantify` VALUES ('585', '2018', '2', '1', '2', '9', '115');
INSERT INTO `quantify` VALUES ('586', '2018', '2', '1', '2', '10', '115');
INSERT INTO `quantify` VALUES ('589', '2018', '2', '1', '2', '7', '116');
INSERT INTO `quantify` VALUES ('590', '2018', '2', '1', '2', '8', '116');
INSERT INTO `quantify` VALUES ('591', '2018', '2', '1', '2', '9', '116');
INSERT INTO `quantify` VALUES ('592', '2018', '2', '1', '2', '10', '116');
INSERT INTO `quantify` VALUES ('595', '2018', '2', '1', '2', '7', '117');
INSERT INTO `quantify` VALUES ('596', '2018', '2', '1', '2', '8', '117');
INSERT INTO `quantify` VALUES ('597', '2018', '2', '1', '2', '9', '117');
INSERT INTO `quantify` VALUES ('598', '2018', '2', '1', '2', '10', '117');
INSERT INTO `quantify` VALUES ('601', '2018', '2', '1', '2', '7', '118');
INSERT INTO `quantify` VALUES ('602', '2018', '2', '1', '2', '8', '118');
INSERT INTO `quantify` VALUES ('603', '2018', '2', '1', '2', '9', '118');
INSERT INTO `quantify` VALUES ('604', '2018', '2', '1', '2', '10', '118');
INSERT INTO `quantify` VALUES ('607', '2018', '2', '1', '2', '7', '119');
INSERT INTO `quantify` VALUES ('608', '2018', '2', '1', '2', '8', '119');
INSERT INTO `quantify` VALUES ('609', '2018', '2', '1', '2', '9', '119');
INSERT INTO `quantify` VALUES ('610', '2018', '2', '1', '2', '10', '119');
INSERT INTO `quantify` VALUES ('812', '2018', '0', '1', '1', '1', '136');
INSERT INTO `quantify` VALUES ('813', '2018', '0', '1', '1', '2', '136');
INSERT INTO `quantify` VALUES ('814', '2018', '0', '1', '1', '3', '136');
INSERT INTO `quantify` VALUES ('815', '2018', '0', '1', '1', '4', '136');
INSERT INTO `quantify` VALUES ('816', '2018', '0', '1', '1', '5', '136');
INSERT INTO `quantify` VALUES ('817', '2018', '0', '1', '1', '6', '136');
INSERT INTO `quantify` VALUES ('818', '2018', '0', null, '1', '7', '136');
INSERT INTO `quantify` VALUES ('819', '2018', '0', null, '1', '8', '136');
INSERT INTO `quantify` VALUES ('820', '2018', '0', null, '1', '9', '136');
INSERT INTO `quantify` VALUES ('821', '2018', '0', null, '1', '10', '136');
INSERT INTO `quantify` VALUES ('832', '2018', '0', '0', '2', '7', '138');
INSERT INTO `quantify` VALUES ('833', '2018', '0', '0', '2', '8', '138');
INSERT INTO `quantify` VALUES ('834', '2018', '0', '0', '2', '9', '138');
INSERT INTO `quantify` VALUES ('835', '2018', '0', '0', '2', '10', '138');
INSERT INTO `quantify` VALUES ('852', '2018', '0', '0', '2', '18', '17');
INSERT INTO `quantify` VALUES ('853', '2018', '0', '0', '2', '18', '88');
INSERT INTO `quantify` VALUES ('854', '2018', '0', '0', '2', '18', '89');
INSERT INTO `quantify` VALUES ('855', '2018', '0', '0', '2', '18', '90');
INSERT INTO `quantify` VALUES ('856', '2018', '0', '0', '2', '18', '92');
INSERT INTO `quantify` VALUES ('857', '2018', '0', '0', '2', '18', '93');
INSERT INTO `quantify` VALUES ('858', '2018', '0', '0', '2', '18', '94');
INSERT INTO `quantify` VALUES ('859', '2018', '0', '0', '2', '18', '95');
INSERT INTO `quantify` VALUES ('860', '2018', '0', '0', '2', '18', '96');
INSERT INTO `quantify` VALUES ('861', '2018', '0', '0', '2', '18', '97');
INSERT INTO `quantify` VALUES ('862', '2018', '0', '0', '2', '18', '98');
INSERT INTO `quantify` VALUES ('863', '2018', '0', '0', '2', '18', '99');
INSERT INTO `quantify` VALUES ('864', '2018', '0', '0', '2', '18', '100');
INSERT INTO `quantify` VALUES ('865', '2018', '0', '0', '2', '18', '101');
INSERT INTO `quantify` VALUES ('866', '2018', '0', '0', '2', '18', '102');
INSERT INTO `quantify` VALUES ('867', '2018', '0', '0', '2', '18', '103');
INSERT INTO `quantify` VALUES ('868', '2018', '0', '0', '2', '18', '104');
INSERT INTO `quantify` VALUES ('869', '2018', '0', '0', '2', '18', '105');
INSERT INTO `quantify` VALUES ('870', '2018', '0', '0', '2', '18', '106');
INSERT INTO `quantify` VALUES ('871', '2018', '0', '0', '2', '18', '107');
INSERT INTO `quantify` VALUES ('872', '2018', '0', '0', '2', '18', '108');
INSERT INTO `quantify` VALUES ('873', '2018', '0', '0', '2', '18', '109');
INSERT INTO `quantify` VALUES ('874', '2018', '0', '0', '2', '18', '110');
INSERT INTO `quantify` VALUES ('875', '2018', '0', '0', '2', '18', '111');
INSERT INTO `quantify` VALUES ('876', '2018', '0', '0', '2', '18', '112');
INSERT INTO `quantify` VALUES ('877', '2018', '0', '0', '2', '18', '113');
INSERT INTO `quantify` VALUES ('878', '2018', '0', '0', '2', '18', '114');
INSERT INTO `quantify` VALUES ('879', '2018', '0', '0', '2', '18', '115');
INSERT INTO `quantify` VALUES ('880', '2018', '0', '0', '2', '18', '116');
INSERT INTO `quantify` VALUES ('881', '2018', '0', '0', '2', '18', '117');
INSERT INTO `quantify` VALUES ('882', '2018', '0', '0', '2', '18', '118');
INSERT INTO `quantify` VALUES ('883', '2018', '0', '0', '2', '18', '119');
INSERT INTO `quantify` VALUES ('884', '2018', '0', '0', '2', '18', '138');
INSERT INTO `quantify` VALUES ('895', '2018', '0', '0', '1', '1', '140');
INSERT INTO `quantify` VALUES ('896', '2018', '0', '0', '1', '2', '140');
INSERT INTO `quantify` VALUES ('897', '2018', '0', '0', '1', '3', '140');
INSERT INTO `quantify` VALUES ('898', '2018', '0', '0', '1', '4', '140');
INSERT INTO `quantify` VALUES ('899', '2018', '0', '0', '1', '5', '140');
INSERT INTO `quantify` VALUES ('900', '2018', '0', '0', '1', '6', '140');
INSERT INTO `quantify` VALUES ('901', '2018', '0', '0', '1', '7', '140');
INSERT INTO `quantify` VALUES ('902', '2018', '0', '0', '1', '8', '140');
INSERT INTO `quantify` VALUES ('903', '2018', '0', '0', '1', '9', '140');
INSERT INTO `quantify` VALUES ('904', '2018', '0', '0', '1', '10', '140');

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
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

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
INSERT INTO `quantifygrade` VALUES ('392', '2018', '117', '12', '期刊社');
INSERT INTO `quantifygrade` VALUES ('393', '2018', '118', '12', '档案馆');
INSERT INTO `quantifygrade` VALUES ('394', '2018', '119', '12', '继续教育学院（管理干部学院）');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '201801', '123', null, null, '2');
INSERT INTO `user` VALUES ('2', '123', '201800', '123', null, null, '1');
INSERT INTO `user` VALUES ('3', '123', '201802', '123', null, null, '2');
INSERT INTO `user` VALUES ('4', '123', '201803', '123', null, null, '2');
INSERT INTO `user` VALUES ('5', '123', '201804', '123', null, null, '2');
INSERT INTO `user` VALUES ('6', '123', '201805', '123', null, null, '2');
INSERT INTO `user` VALUES ('7', '123', '201806', '123', null, null, '2');
INSERT INTO `user` VALUES ('8', '123', '201807', '123', null, null, '2');
INSERT INTO `user` VALUES ('9', '123', '201808', '123', null, null, '2');
INSERT INTO `user` VALUES ('10', '123', '201809', '123', null, null, '2');

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
  `sum` double(50,3) DEFAULT NULL COMMENT '最后总分',
  PRIMARY KEY (`voteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_cadre
-- ----------------------------

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
  `sum` double(50,3) DEFAULT NULL,
  PRIMARY KEY (`voteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_department
-- ----------------------------

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
INSERT INTO `vote_type` VALUES ('1', '单位内部对单位', '0.00');
INSERT INTO `vote_type` VALUES ('2', '单位内部对正职', '0.00');
INSERT INTO `vote_type` VALUES ('3', '单位内部对副职', '0.00');
INSERT INTO `vote_type` VALUES ('4', '正职对副职', '0.00');
INSERT INTO `vote_type` VALUES ('5', '学校民主对单位', '0.00');
INSERT INTO `vote_type` VALUES ('6', '学校民主对正职', '0.00');
INSERT INTO `vote_type` VALUES ('7', '校领导对单位', '0.00');
INSERT INTO `vote_type` VALUES ('8', '校领导对正职', '0.00');
