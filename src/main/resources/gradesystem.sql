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
INSERT INTO `cadre` VALUES ('1', '1996', '陈文新', '江西农大党办校办主任', '0', '26');
INSERT INTO `cadre` VALUES ('2', '1997', '殷  青', '江西农大党务政务督查室主任', '0', '26');
INSERT INTO `cadre` VALUES ('3', '1998', '黎  敏', '江西农大纪委副书记、监察室主任', '0', '17');
INSERT INTO `cadre` VALUES ('4', '1999', '郭庆舜', '江西农大党委组织部部长', '0', '18');
INSERT INTO `cadre` VALUES ('5', '2000', '彭小波', '江西农大机关党委常务副书记', '0', '18');
INSERT INTO `cadre` VALUES ('6', '2001', '袁良凤', '江西农大党校常务副校长', '0', '18');
INSERT INTO `cadre` VALUES ('7', '2002', '杨  峰', '江西农大党委宣传部部长', '0', '19');
INSERT INTO `cadre` VALUES ('8', '2003', '黎  瑛', '江西农大党委统战部部长', '0', '20');
INSERT INTO `cadre` VALUES ('9', '2004', '黄小珊', '江西农大离退休工作处处长、离退休党总支书记兼党委组织部副部长', '0', '25');
INSERT INTO `cadre` VALUES ('10', '2005', '桂华菊', '江西农大工会主席', '0', '21');
INSERT INTO `cadre` VALUES ('11', '2006', '李剑富', '江西农大学工部部长、学工处处长', '0', '22');
INSERT INTO `cadre` VALUES ('12', '2007', '徐  峰', '江西农大大学生资助管理中心主任(正处级)', '0', '22');
INSERT INTO `cadre` VALUES ('13', '2008', '高  鹏', '共青团江西农大委员会书记', '0', '23');
INSERT INTO `cadre` VALUES ('14', '2009', '魏洪义', '江西农大教务处处长', '0', '34');
INSERT INTO `cadre` VALUES ('15', '2010', '黄世传', '江西农大教学督导组组长（参加教务处测评会）', '0', '34');
INSERT INTO `cadre` VALUES ('16', '2011', '游金明', '江西农大科技处处长、新农村发展研究院副院长', '0', '27');
INSERT INTO `cadre` VALUES ('17', '2012', '黄占旺', '江西农大农业技术培训推广中心主任', '0', '27');
INSERT INTO `cadre` VALUES ('18', '2013', '熊红华', '江西农大研究生院党总支书记', '0', '36');
INSERT INTO `cadre` VALUES ('19', '2014', '左辉群', '江西农大招生就业处处长', '0', '24');
INSERT INTO `cadre` VALUES ('20', '2015', '黄维柳', '江西农大人事处处长', '0', '29');
INSERT INTO `cadre` VALUES ('21', '2016', '贺一松', '江西农大财务处处长', '0', '30');
INSERT INTO `cadre` VALUES ('22', '2017', '汤雄杰', '江西农大保卫处处长', '0', '31');
INSERT INTO `cadre` VALUES ('23', '2018', '张  露', '江西农大国际交流处处长', '0', '32');
INSERT INTO `cadre` VALUES ('24', '2019', '李  峰', '江西农大产业处处长兼产业党委副书记', '0', '33');
INSERT INTO `cadre` VALUES ('25', '2020', '张宏玉', '江西农大资产与实验室管理处处长', '0', '37');
INSERT INTO `cadre` VALUES ('26', '2021', '涂建平', '江西农大基本建设处处长', '0', '44');
INSERT INTO `cadre` VALUES ('27', '2022', '姜  伟', '江西农大继续教育学院党总支书记', '0', '48');
INSERT INTO `cadre` VALUES ('28', '2023', '余清华', '江西农大继续教育学院院长', '0', '48');
INSERT INTO `cadre` VALUES ('29', '2024', '邱亲材', '江西农大管理干部学院院长兼继续教育学院副院长', '0', '48');
INSERT INTO `cadre` VALUES ('30', '2025', '朱小玉', '江西农大校友工作办公室主任', '0', '42');
INSERT INTO `cadre` VALUES ('31', '2026', '刘正和', '江西农大农业科技园管委会党支部书记', '0', '41');
INSERT INTO `cadre` VALUES ('32', '2027', '邓光华', '江西农大农业科技园管委员会主任', '0', '41');
INSERT INTO `cadre` VALUES ('33', '2028', '翁贞林', '江西农大期刊社社长', '0', '46');
INSERT INTO `cadre` VALUES ('34', '2029', '熊龙彪', '江西农大档案馆馆长', '0', '47');
INSERT INTO `cadre` VALUES ('35', '2030', '颜玄洲', '江西农大图书馆馆长', '0', '45');
INSERT INTO `cadre` VALUES ('36', '2031', '郑  瑜', '江西农大图书馆党支部书记兼副馆长', '0', '45');
INSERT INTO `cadre` VALUES ('37', '2032', '曾卫明', '江西农大信息中心主任', '0', '39');
INSERT INTO `cadre` VALUES ('38', '2033', '蔡海生', '江西农大高等教育研究所所长', '0', '35');
INSERT INTO `cadre` VALUES ('39', '2034', '朱述斌', '江西农大新农村发展研究院执行院长', '0', '28');
INSERT INTO `cadre` VALUES ('40', '2035', '陈美球', '江西农大MPA教育中心主任', '0', '38');
INSERT INTO `cadre` VALUES ('41', '2036', '宋  军', '江西农大招标与采购中心主任', '0', '40');
INSERT INTO `cadre` VALUES ('42', '2037', '杨秀江', '江西农大后勤服务集团党总支书记、副总经理', '0', '49');
INSERT INTO `cadre` VALUES ('43', '2038', '吴文军', '江西农大后勤服务集团总经理', '0', '49');
INSERT INTO `cadre` VALUES ('44', '2039', '黄华古', '江西农大附中校长、党支部书记', '0', '50');
INSERT INTO `cadre` VALUES ('45', '2040', '方加海', '江西农大农学院党委书记', '0', '1');
INSERT INTO `cadre` VALUES ('46', '2041', '黄国勤', '江西农大生态科学研究所所长', '0', '1');
INSERT INTO `cadre` VALUES ('47', '2042', '周水平', '江西农大园林与艺术学院党委书记', '0', '2');
INSERT INTO `cadre` VALUES ('48', '2043', '杨光耀', '江西农大园林与艺术学院院长', '0', '2');
INSERT INTO `cadre` VALUES ('49', '2044', '王宗德', '江西农大植物天然产物与林产化工研究所所长(正处级)', '0', '2');
INSERT INTO `cadre` VALUES ('50', '2045', '陆  伟', '江西农大动物科学技术学院党委书记兼副院长', '0', '5');
INSERT INTO `cadre` VALUES ('51', '2046', '胡国良', '动物科学技术学院院长、动物群发性疾病监测和防治研究所所长', '0', '5');
INSERT INTO `cadre` VALUES ('52', '2047', '瞿明仁', '江西省动物营养重点实验室主任', '0', '5');
INSERT INTO `cadre` VALUES ('53', '2048', '任  军', '江西农大动物生物技术重点实验室副主任(正处级)', '0', '5');
INSERT INTO `cadre` VALUES ('54', '2049', '周艺萍', '江西农大计算机与信息工程学院党委书记', '0', '9');
INSERT INTO `cadre` VALUES ('55', '2050', '王映龙', '江西农大计算机与信息工程学院院长', '0', '9');
INSERT INTO `cadre` VALUES ('56', '2051', '王  兰', '江西农大软件学院党委书记', '0', '13');
INSERT INTO `cadre` VALUES ('57', '2052', '赵应丁', '江西农大软件学院院长', '0', '13');
INSERT INTO `cadre` VALUES ('58', '2053', '郭如良', '江西农大经济管理学院党委书记', '0', '7');
INSERT INTO `cadre` VALUES ('59', '2054', '陈昭玖', '江西农大“三农”问题研究中心主任', '0', '7');
INSERT INTO `cadre` VALUES ('60', '2055', '郭  旭', '江西农大国土资源与环境学院党委书记', '0', '6');
INSERT INTO `cadre` VALUES ('61', '2056', '李保同', '江西农大国土资源与环境学院院长', '0', '6');
INSERT INTO `cadre` VALUES ('62', '2057', '黄国清', '江西农大职业师范(技术)学院党委书记', '0', '14');
INSERT INTO `cadre` VALUES ('63', '2058', '张继河', '江西农大职业师范(技术)学院院长', '0', '14');
INSERT INTO `cadre` VALUES ('64', '2059', '郭锦墉', '江西农大人文与公共管理学院党委书记', '0', '10');
INSERT INTO `cadre` VALUES ('65', '2060', '宋秉斌', '江西农大人文与公共管理学院院长', '0', '10');
INSERT INTO `cadre` VALUES ('66', '2061', '魏  毅', '江西农大马克思主义（政治）学院党总支书记', '0', '11');
INSERT INTO `cadre` VALUES ('67', '2062', '刘汉一', '江西农大马克思主义（政治）学院院长', '0', '11');
INSERT INTO `cadre` VALUES ('68', '2063', '周  阳', '江西农大理学院党委书记', '0', '15');
INSERT INTO `cadre` VALUES ('69', '2064', '王义华', '江西农大理学院院长', '0', '15');
INSERT INTO `cadre` VALUES ('70', '2065', '范  云', '江西农大食品科学与工程学院党委书记', '0', '8');
INSERT INTO `cadre` VALUES ('71', '2066', '王文君', '江西农大食品科学与工程学院院长', '0', '8');
INSERT INTO `cadre` VALUES ('72', '2067', '徐明生', '江西省天然产物与功能食品重点实验室主任', '0', '8');
INSERT INTO `cadre` VALUES ('73', '2068', '廖明祥', '江西农大生物科学与工程学院党委书记', '0', '4');
INSERT INTO `cadre` VALUES ('74', '2069', '吴晓玉', '江西农大生物科学与工程学院院长', '0', '4');
INSERT INTO `cadre` VALUES ('75', '2070', '霍光华', '江西农大生物资源保护与利用研究所所长', '0', '4');
INSERT INTO `cadre` VALUES ('76', '2071', '肖友群', '江西农大外国语学院党委书记', '0', '12');
INSERT INTO `cadre` VALUES ('77', '2072', '吴伟萍', '江西农大外国语学院院长', '0', '12');
INSERT INTO `cadre` VALUES ('78', '2073', '潘金发', '江西农大武装部部长兼军体部党支部书记、军体部主任', '0', '16');
INSERT INTO `cadre` VALUES ('79', '2074', '胡永升', '江西农大党办校办副主任', '1', '26');
INSERT INTO `cadre` VALUES ('80', '2075', '曹明星', '江西农大党办校办副主任', '1', '26');
INSERT INTO `cadre` VALUES ('81', '2076', '胡永华', '江西农大纪委（监察、审计）综合办公室主任', '1', '17');
INSERT INTO `cadre` VALUES ('82', '2077', '聂  清', '江西农大审计处副处长', '1', '17');
INSERT INTO `cadre` VALUES ('83', '2078', '廖述香', '江西农大党委组织部副处级组织员', '1', '18');
INSERT INTO `cadre` VALUES ('84', '2079', '郭光华', '江西农大党校副校长', '1', '18');
INSERT INTO `cadre` VALUES ('85', '2080', '朱晓东', '江西农大党委宣传部副部长', '1', '19');
INSERT INTO `cadre` VALUES ('86', '2081', '刘厚彪', '江西农大离退休工作处副处长', '1', '25');
INSERT INTO `cadre` VALUES ('87', '2082', '阮明华', '江西农大工会副主席', '1', '21');
INSERT INTO `cadre` VALUES ('88', '2083', '黄新志', '江西农大学工处副处长', '1', '22');
INSERT INTO `cadre` VALUES ('89', '2084', '郭军海', '共青团江西农大委员会副书记', '1', '23');
INSERT INTO `cadre` VALUES ('90', '2085', '黄  波', '江西农大教务处副处长', '1', '34');
INSERT INTO `cadre` VALUES ('91', '2086', '彭齐东', '江西农大研究生院副院长', '1', '36');
INSERT INTO `cadre` VALUES ('92', '2087', '周红燕', '江西农大研究生院党总支副书记', '1', '36');
INSERT INTO `cadre` VALUES ('93', '2088', '张高亮', '江西农大招生就业处副处长', '1', '24');
INSERT INTO `cadre` VALUES ('94', '2089', '黄莉萍', '江西农大财务处副处长', '1', '30');
INSERT INTO `cadre` VALUES ('95', '2090', '郭安平', '江西农大农业科技园管委会副主任（在保卫处履职，参加保卫处测评会）', '1', '31');
INSERT INTO `cadre` VALUES ('96', '2091', '万江文', '江西农大后勤与校园管理处副处长', '1', '43');
INSERT INTO `cadre` VALUES ('97', '2092', '邹建民', '江西农大产业处副处长', '1', '33');
INSERT INTO `cadre` VALUES ('98', '2093', '钟远东', '江西农大产业处副处长', '1', '33');
INSERT INTO `cadre` VALUES ('99', '2094', '尹生良', '江西农大资产与实验室管理处副处长', '1', '37');
INSERT INTO `cadre` VALUES ('100', '2095', '刘民高', '江西农大基本建设处副处长', '1', '44');
INSERT INTO `cadre` VALUES ('101', '2096', '张水发', '江西农大继续教育学院副院长', '1', '48');
INSERT INTO `cadre` VALUES ('102', '2097', '周建伟', '江西农大继续教育学院副院长', '1', '48');
INSERT INTO `cadre` VALUES ('103', '2098', '万  洁', '江西农大校友工作办公室副主任', '1', '42');
INSERT INTO `cadre` VALUES ('104', '2099', '吴才君', '江西农大农业科技园管委会副主任', '1', '41');
INSERT INTO `cadre` VALUES ('105', '2100', '李祚兴', '江西农大农业科技园管委会副主任', '1', '41');
INSERT INTO `cadre` VALUES ('106', '2101', '李力民', '江西农大期刊社副社长', '1', '46');
INSERT INTO `cadre` VALUES ('107', '2102', '周  超', '江西农大信息中心副主任', '1', '39');
INSERT INTO `cadre` VALUES ('108', '2103', '柳  军', '江西农大信息中心副主任', '1', '39');
INSERT INTO `cadre` VALUES ('109', '2104', '宁  飔', '江西农大高等教育研究所副所长', '1', '35');
INSERT INTO `cadre` VALUES ('110', '2105', '吴南生', '江西农大新农村发展研究院副院长', '1', '28');
INSERT INTO `cadre` VALUES ('111', '2106', '孙剑华', '江西农大后勤服务集团副总经理', '1', '49');
INSERT INTO `cadre` VALUES ('112', '2107', '肖意风', '江西农大农学院党委副书记', '1', '1');
INSERT INTO `cadre` VALUES ('113', '2108', '刘  勇', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('114', '2109', '朱昌兰', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('115', '2110', '曾勇军', '江西农大农学院副院长', '1', '1');
INSERT INTO `cadre` VALUES ('116', '2111', '谢国强', '江西农大作物生理生态与遗传育种重点实验室副主任', '1', '1');
INSERT INTO `cadre` VALUES ('117', '2112', '王建胜', '江西农大园林与艺术学院党委副书记', '1', '2');
INSERT INTO `cadre` VALUES ('118', '2113', '夏庆林', '江西农大园林与艺术学院副院长', '1', '2');
INSERT INTO `cadre` VALUES ('119', '2114', '刘纯青', '江西农大园林与艺术学院副院长', '1', '2');
INSERT INTO `cadre` VALUES ('120', '2115', '曹华斌', '江西农大动物科学技术学院副院长', '1', '5');
INSERT INTO `cadre` VALUES ('121', '2116', '肖石军', '江西农大动物生物技术重点实验室副主任', '1', '5');
INSERT INTO `cadre` VALUES ('122', '2117', '李  琳', '江西农大江西省饲料科学研究所副所长(副处级)', '1', '5');
INSERT INTO `cadre` VALUES ('123', '2118', '艾施荣', '江西农大工学院党委副书记', '1', '3');
INSERT INTO `cadre` VALUES ('124', '2119', '刘仁鑫', '江西农大工学院副院长', '1', '3');
INSERT INTO `cadre` VALUES ('125', '2120', '张庐陵', '江西农大工学院副院长', '1', '3');
INSERT INTO `cadre` VALUES ('126', '2121', '彭泰中', '江西农大计算机与信息工程学院党委副书记', '1', '9');
INSERT INTO `cadre` VALUES ('127', '2122', '裴  红', '江西农大计算机与信息工程学院副院长', '1', '9');
INSERT INTO `cadre` VALUES ('128', '2123', '唐建军', '江西农大计算机与信息工程学院副院长', '1', '9');
INSERT INTO `cadre` VALUES ('129', '2124', '戴仕明', '江西农大软件学院副院长', '1', '13');
INSERT INTO `cadre` VALUES ('130', '2125', '刘庆言', '江西农大经济管理学院党委副书记', '1', '7');
INSERT INTO `cadre` VALUES ('131', '2126', '胡  凯', '江西农大经济管理学院副院长', '1', '7');
INSERT INTO `cadre` VALUES ('132', '2127', '赵  刚', '江西农大国土资源与环境学院党委副书记', '1', '6');
INSERT INTO `cadre` VALUES ('133', '2128', '周春火', '江西农大国土资源与环境学院副院长', '1', '6');
INSERT INTO `cadre` VALUES ('134', '2129', '刘志兵', '江西农大职业师范(技术)学院党委副书记', '1', '14');
INSERT INTO `cadre` VALUES ('135', '2130', '苏力华', '江西农大职业师范(技术)学院副院长兼职教基地常务副主任', '1', '14');
INSERT INTO `cadre` VALUES ('136', '2131', '刘善军', '江西农大职业师范(技术)学院副院长', '1', '14');
INSERT INTO `cadre` VALUES ('137', '2132', '王志发', '江西农大人文与公共管理学院党委副书记', '1', '10');
INSERT INTO `cadre` VALUES ('138', '2133', '黄少峰', '江西农大人文与公共管理学院副院长', '1', '10');
INSERT INTO `cadre` VALUES ('139', '2134', '李道和', '江西农大人文与公共管理学院副院长', '1', '10');
INSERT INTO `cadre` VALUES ('140', '2135', '姜木枝', '江西农大马克思主义（政治）学院副院长', '1', '11');
INSERT INTO `cadre` VALUES ('141', '2136', '付庆文', '江西农大马克思主义（政治）学院副院长', '1', '11');
INSERT INTO `cadre` VALUES ('142', '2137', '周国平', '江西农大理学院党委副书记', '1', '15');
INSERT INTO `cadre` VALUES ('143', '2138', '黄长干', '江西农大理学院副院长', '1', '15');
INSERT INTO `cadre` VALUES ('144', '2139', '邱新兰', '江西农大理学院副院长', '1', '15');
INSERT INTO `cadre` VALUES ('145', '2140', '胡  丹', '江西农大食品科学与工程学院党委副书记', '1', '8');
INSERT INTO `cadre` VALUES ('146', '2141', '吴国平', '江西农大食品科学与工程学院副院长', '1', '8');
INSERT INTO `cadre` VALUES ('147', '2142', '罗志华', '江西农大生物科学与工程学院党委副书记', '1', '4');
INSERT INTO `cadre` VALUES ('148', '2143', '刘卫东', '江西农大生物科学与工程学院副院长', '1', '4');
INSERT INTO `cadre` VALUES ('149', '2144', '肖  明', '江西农大外国语学院党委副书记', '1', '12');
INSERT INTO `cadre` VALUES ('150', '2145', '席艳辉', '江西农大军事体育部副主任', '1', '16');
INSERT INTO `cadre` VALUES ('151', '2146', '王军华', '江西农大后勤服务集团副总经理', '1', '49');
INSERT INTO `cadre` VALUES ('152', '2147', '张瑞增', '江西农大后勤服务集团副总经理', '1', '49');


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
INSERT INTO `cadre_year_score` VALUES ('9', '2018', '1', '黄某', '0000000000', '组织部（机关党委、党校）', '28.2');
INSERT INTO `cadre_year_score` VALUES ('10', '2018', '2', '戴仕明', '0000000000', '纪委（监察、审计）', '18.4');
INSERT INTO `cadre_year_score` VALUES ('11', '2018', '3', '周水平', '0000000000', '农学院', '36.135');
INSERT INTO `cadre_year_score` VALUES ('12', '2018', '4', '杨君', '0000000000', '林学院（园林与艺术学院）', '17.129');
INSERT INTO `cadre_year_score` VALUES ('13', '2018', '5', '李想', '0000000001', '农学院', '1.479');
INSERT INTO `cadre_year_score` VALUES ('14', '2018', '6', '吴欣欣', '0000000001', '农学院', '1.479');
INSERT INTO `cadre_year_score` VALUES ('41', '2018', '8', 'As178', '0000000000', '软件学院', '2.354');
INSERT INTO `cadre_year_score` VALUES ('42', '2018', '9', '王鑫', '0000000001', '医院', '0');
INSERT INTO `cadre_year_score` VALUES ('43', '2018', '79', '胡永升', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('44', '2018', '80', '曹明星', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('45', '2018', '81', '胡永华', '0000000001', '纪委（监察、审计）', '4.58');
INSERT INTO `cadre_year_score` VALUES ('46', '2018', '82', '聂  清', '0000000001', '纪委（监察、审计）', '4.58');
INSERT INTO `cadre_year_score` VALUES ('47', '2018', '83', '廖述香', '0000000001', '组织部（机关党委、党校）', '1.972');
INSERT INTO `cadre_year_score` VALUES ('48', '2018', '84', '郭光华', '0000000001', '组织部（机关党委、党校）', '1.972');
INSERT INTO `cadre_year_score` VALUES ('49', '2018', '85', '朱晓东', '0000000001', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('50', '2018', '86', '刘厚彪', '0000000001', '离退休工作处', '0');
INSERT INTO `cadre_year_score` VALUES ('51', '2018', '87', '阮明华', '0000000001', '工会', '0.072');
INSERT INTO `cadre_year_score` VALUES ('52', '2018', '88', '黄新志', '0000000001', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('53', '2018', '89', '郭军海', '0000000001', '团委', '0.072');
INSERT INTO `cadre_year_score` VALUES ('54', '2018', '90', '黄  波', '0000000001', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('55', '2018', '91', '彭齐东', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('56', '2018', '92', '周红燕', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('57', '2018', '93', '张高亮', '0000000001', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('58', '2018', '94', '黄莉萍', '0000000001', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('59', '2018', '95', '郭安平', '0000000001', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('60', '2018', '96', '万江文', '0000000001', '后勤与校园管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('61', '2018', '97', '邹建民', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('62', '2018', '98', '钟远东', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('63', '2018', '99', '尹生良', '0000000001', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('64', '2018', '100', '刘民高', '0000000001', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('65', '2018', '101', '张水发', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('66', '2018', '102', '周建伟', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('67', '2018', '103', '万  洁', '0000000001', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('68', '2018', '104', '吴才君', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('69', '2018', '105', '李祚兴', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('70', '2018', '106', '李力民', '0000000001', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('71', '2018', '107', '周  超', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('72', '2018', '108', '柳  军', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('73', '2018', '109', '宁  飔', '0000000001', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('74', '2018', '110', '吴南生', '0000000001', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('75', '2018', '111', '孙剑华', '0000000001', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('76', '2018', '112', '肖意风', '0000000001', '农学院', '25.56');
INSERT INTO `cadre_year_score` VALUES ('77', '2018', '113', '刘  勇', '0000000001', '农学院', '25.56');
INSERT INTO `cadre_year_score` VALUES ('78', '2018', '114', '朱昌兰', '0000000001', '农学院', '25.56');
INSERT INTO `cadre_year_score` VALUES ('79', '2018', '115', '曾勇军', '0000000001', '农学院', '25.56');
INSERT INTO `cadre_year_score` VALUES ('80', '2018', '116', '谢国强', '0000000001', '农学院', '25.56');
INSERT INTO `cadre_year_score` VALUES ('81', '2018', '117', '王建胜', '0000000001', '林学院（园林与艺术学院）', '5.14');
INSERT INTO `cadre_year_score` VALUES ('82', '2018', '118', '夏庆林', '0000000001', '林学院（园林与艺术学院）', '5.14');
INSERT INTO `cadre_year_score` VALUES ('83', '2018', '119', '刘纯青', '0000000001', '林学院（园林与艺术学院）', '5.14');
INSERT INTO `cadre_year_score` VALUES ('84', '2018', '120', '曹华斌', '0000000001', '动物科学技术学院', '0.024');
INSERT INTO `cadre_year_score` VALUES ('85', '2018', '121', '肖石军', '0000000001', '动物科学技术学院', '0.024');
INSERT INTO `cadre_year_score` VALUES ('86', '2018', '122', '李  琳', '0000000001', '动物科学技术学院', '0.024');
INSERT INTO `cadre_year_score` VALUES ('87', '2018', '123', '艾施荣', '0000000001', '工学院', '1.02');
INSERT INTO `cadre_year_score` VALUES ('88', '2018', '124', '刘仁鑫', '0000000001', '工学院', '1.02');
INSERT INTO `cadre_year_score` VALUES ('89', '2018', '125', '张庐陵', '0000000001', '工学院', '1.02');
INSERT INTO `cadre_year_score` VALUES ('90', '2018', '126', '彭泰中', '0000000001', '计算机与信息工程学院', '0.54');
INSERT INTO `cadre_year_score` VALUES ('91', '2018', '127', '裴  红', '0000000001', '计算机与信息工程学院', '0.54');
INSERT INTO `cadre_year_score` VALUES ('92', '2018', '128', '唐建军', '0000000001', '计算机与信息工程学院', '0.54');
INSERT INTO `cadre_year_score` VALUES ('93', '2018', '129', '戴仕明', '0000000001', '软件学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('94', '2018', '130', '刘庆言', '0000000001', '经济管理学院', '0.6');
INSERT INTO `cadre_year_score` VALUES ('95', '2018', '131', '胡  凯', '0000000001', '经济管理学院', '0.6');
INSERT INTO `cadre_year_score` VALUES ('96', '2018', '132', '赵  刚', '0000000001', '国土资源与环境学院', '0.54');
INSERT INTO `cadre_year_score` VALUES ('97', '2018', '133', '周春火', '0000000001', '国土资源与环境学院', '0.54');
INSERT INTO `cadre_year_score` VALUES ('98', '2018', '134', '刘志兵', '0000000001', '职业师范（技术）学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('99', '2018', '135', '苏力华', '0000000001', '职业师范（技术）学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('100', '2018', '136', '刘善军', '0000000001', '职业师范（技术）学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('101', '2018', '137', '王志发', '0000000001', '人文与公共管理学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('102', '2018', '138', '黄少峰', '0000000001', '人文与公共管理学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('103', '2018', '139', '李道和', '0000000001', '人文与公共管理学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('104', '2018', '140', '姜木枝', '0000000001', '马克思主义（政治）学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('105', '2018', '141', '付庆文', '0000000001', '马克思主义（政治）学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('106', '2018', '142', '周国平', '0000000001', '理学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('107', '2018', '143', '黄长干', '0000000001', '理学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('108', '2018', '144', '邱新兰', '0000000001', '理学院', '0.016');
INSERT INTO `cadre_year_score` VALUES ('109', '2018', '145', '胡  丹', '0000000001', '食品科学与工程学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('110', '2018', '146', '吴国平', '0000000001', '食品科学与工程学院', '0.03');
INSERT INTO `cadre_year_score` VALUES ('111', '2018', '147', '罗志华', '0000000001', '生物科学与工程学院', '0.66');
INSERT INTO `cadre_year_score` VALUES ('112', '2018', '148', '刘卫东', '0000000001', '生物科学与工程学院', '0.66');
INSERT INTO `cadre_year_score` VALUES ('113', '2018', '149', '肖  明', '0000000001', '外国语学院', '0.036');
INSERT INTO `cadre_year_score` VALUES ('114', '2018', '150', '席艳辉', '0000000001', '军体部（武装部）', '0.516');
INSERT INTO `cadre_year_score` VALUES ('115', '2018', '151', '王军华', '0000000001', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('116', '2018', '152', '张瑞增', '0000000001', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('117', '2018', '7', '杨  峰', '0000000000', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('118', '2018', '10', '桂华菊', '0000000000', '工会', '0.054');
INSERT INTO `cadre_year_score` VALUES ('119', '2018', '11', '李剑富', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('120', '2018', '12', '徐  峰', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('121', '2018', '13', '高  鹏', '0000000000', '团委', '0.054');
INSERT INTO `cadre_year_score` VALUES ('122', '2018', '14', '魏洪义', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('123', '2018', '15', '黄世传', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('124', '2018', '16', '游金明', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('125', '2018', '17', '黄占旺', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('126', '2018', '18', '熊红华', '0000000000', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('127', '2018', '19', '左辉群', '0000000000', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('128', '2018', '20', '黄维柳', '0000000000', '人事处', '0');
INSERT INTO `cadre_year_score` VALUES ('129', '2018', '21', '贺一松', '0000000000', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('130', '2018', '22', '汤雄杰', '0000000000', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('131', '2018', '23', '张  露', '0000000000', '国际交流处', '0');
INSERT INTO `cadre_year_score` VALUES ('132', '2018', '24', '李  峰', '0000000000', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('133', '2018', '25', '张宏玉', '0000000000', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('134', '2018', '26', '涂建平', '0000000000', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('135', '2018', '27', '姜  伟', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('136', '2018', '28', '余清华', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('137', '2018', '29', '邱亲材', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('138', '2018', '30', '朱小玉', '0000000000', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('139', '2018', '31', '刘正和', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('140', '2018', '32', '邓光华', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('141', '2018', '33', '翁贞林', '0000000000', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('142', '2018', '34', '熊龙彪', '0000000000', '档案馆', '0');
INSERT INTO `cadre_year_score` VALUES ('143', '2018', '35', '颜玄洲', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('144', '2018', '36', '郑  瑜', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('145', '2018', '37', '曾卫明', '0000000000', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('146', '2018', '38', '蔡海生', '0000000000', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('147', '2018', '39', '朱述斌', '0000000000', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('148', '2018', '40', '陈美球', '0000000000', 'MPA教育中心', '0');
INSERT INTO `cadre_year_score` VALUES ('149', '2018', '41', '宋  军', '0000000000', '招标与采购中心', '0');
INSERT INTO `cadre_year_score` VALUES ('150', '2018', '42', '杨秀江', '0000000000', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('151', '2018', '43', '吴文军', '0000000000', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('152', '2018', '44', '黄华古', '0000000000', '附中', '0');
INSERT INTO `cadre_year_score` VALUES ('153', '2018', '45', '方加海', '0000000000', '农学院', '19.17');
INSERT INTO `cadre_year_score` VALUES ('154', '2018', '46', '黄国勤', '0000000000', '农学院', '19.17');
INSERT INTO `cadre_year_score` VALUES ('155', '2018', '47', '周水平', '0000000000', '林学院（园林与艺术学院）', '3.855');
INSERT INTO `cadre_year_score` VALUES ('156', '2018', '48', '杨光耀', '0000000000', '林学院（园林与艺术学院）', '3.855');
INSERT INTO `cadre_year_score` VALUES ('157', '2018', '49', '王宗德', '0000000000', '林学院（园林与艺术学院）', '3.855');
INSERT INTO `cadre_year_score` VALUES ('158', '2018', '50', '陆  伟', '0000000000', '动物科学技术学院', '0.018');
INSERT INTO `cadre_year_score` VALUES ('159', '2018', '51', '胡国良', '0000000000', '动物科学技术学院', '0.018');
INSERT INTO `cadre_year_score` VALUES ('160', '2018', '52', '瞿明仁', '0000000000', '动物科学技术学院', '0.018');
INSERT INTO `cadre_year_score` VALUES ('161', '2018', '53', '任  军', '0000000000', '动物科学技术学院', '0.018');
INSERT INTO `cadre_year_score` VALUES ('162', '2018', '54', '周艺萍', '0000000000', '计算机与信息工程学院', '0.405');
INSERT INTO `cadre_year_score` VALUES ('163', '2018', '55', '王映龙', '0000000000', '计算机与信息工程学院', '0.405');
INSERT INTO `cadre_year_score` VALUES ('164', '2018', '56', '王  兰', '0000000000', '软件学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('165', '2018', '57', '赵应丁', '0000000000', '软件学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('166', '2018', '58', '郭如良', '0000000000', '经济管理学院', '0.45');
INSERT INTO `cadre_year_score` VALUES ('167', '2018', '59', '陈昭玖', '0000000000', '经济管理学院', '0.45');
INSERT INTO `cadre_year_score` VALUES ('168', '2018', '60', '郭  旭', '0000000000', '国土资源与环境学院', '0.405');
INSERT INTO `cadre_year_score` VALUES ('169', '2018', '61', '李保同', '0000000000', '国土资源与环境学院', '0.405');
INSERT INTO `cadre_year_score` VALUES ('170', '2018', '62', '黄国清', '0000000000', '职业师范（技术）学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('171', '2018', '63', '张继河', '0000000000', '职业师范（技术）学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('172', '2018', '64', '郭锦墉', '0000000000', '人文与公共管理学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('173', '2018', '65', '宋秉斌', '0000000000', '人文与公共管理学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('174', '2018', '66', '魏  毅', '0000000000', '马克思主义（政治）学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('175', '2018', '67', '刘汉一', '0000000000', '马克思主义（政治）学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('176', '2018', '68', '周  阳', '0000000000', '理学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('177', '2018', '69', '王义华', '0000000000', '理学院', '0.012');
INSERT INTO `cadre_year_score` VALUES ('178', '2018', '70', '范  云', '0000000000', '食品科学与工程学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('179', '2018', '71', '王文君', '0000000000', '食品科学与工程学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('180', '2018', '72', '徐明生', '0000000000', '食品科学与工程学院', '0.022');
INSERT INTO `cadre_year_score` VALUES ('181', '2018', '73', '廖明祥', '0000000000', '生物科学与工程学院', '0.495');
INSERT INTO `cadre_year_score` VALUES ('182', '2018', '74', '吴晓玉', '0000000000', '生物科学与工程学院', '0.495');
INSERT INTO `cadre_year_score` VALUES ('183', '2018', '75', '霍光华', '0000000000', '生物科学与工程学院', '0.495');
INSERT INTO `cadre_year_score` VALUES ('184', '2018', '76', '肖友群', '0000000000', '外国语学院', '0.027');
INSERT INTO `cadre_year_score` VALUES ('185', '2018', '77', '吴伟萍', '0000000000', '外国语学院', '0.027');
INSERT INTO `cadre_year_score` VALUES ('186', '2018', '78', '潘金发', '0000000000', '军体部（武装部）', '0.387');
INSERT INTO `cadre_year_score` VALUES ('187', '2017', '1', '陈文新', '0000000000', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('188', '2017', '2', '殷  青', '0000000000', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('189', '2017', '3', '黎  敏', '0000000000', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('190', '2017', '4', '郭庆舜', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('191', '2017', '5', '彭小波', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('192', '2017', '6', '袁良凤', '0000000000', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('193', '2017', '7', '杨  峰', '0000000000', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('194', '2017', '8', '黎  瑛', '0000000000', '统战部', '0');
INSERT INTO `cadre_year_score` VALUES ('195', '2017', '9', '黄小珊', '0000000000', '离退休工作处', '0');
INSERT INTO `cadre_year_score` VALUES ('196', '2017', '10', '桂华菊', '0000000000', '工会', '0');
INSERT INTO `cadre_year_score` VALUES ('197', '2017', '11', '李剑富', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('198', '2017', '12', '徐  峰', '0000000000', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('199', '2017', '13', '高  鹏', '0000000000', '团委', '0');
INSERT INTO `cadre_year_score` VALUES ('200', '2017', '14', '魏洪义', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('201', '2017', '15', '黄世传', '0000000000', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('202', '2017', '16', '游金明', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('203', '2017', '17', '黄占旺', '0000000000', '科技处', '0');
INSERT INTO `cadre_year_score` VALUES ('204', '2017', '18', '熊红华', '0000000000', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('205', '2017', '19', '左辉群', '0000000000', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('206', '2017', '20', '黄维柳', '0000000000', '人事处', '0');
INSERT INTO `cadre_year_score` VALUES ('207', '2017', '21', '贺一松', '0000000000', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('208', '2017', '22', '汤雄杰', '0000000000', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('209', '2017', '23', '张  露', '0000000000', '国际交流处', '0');
INSERT INTO `cadre_year_score` VALUES ('210', '2017', '24', '李  峰', '0000000000', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('211', '2017', '25', '张宏玉', '0000000000', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('212', '2017', '26', '涂建平', '0000000000', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('213', '2017', '27', '姜  伟', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('214', '2017', '28', '余清华', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('215', '2017', '29', '邱亲材', '0000000000', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('216', '2017', '30', '朱小玉', '0000000000', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('217', '2017', '31', '刘正和', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('218', '2017', '32', '邓光华', '0000000000', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('219', '2017', '33', '翁贞林', '0000000000', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('220', '2017', '34', '熊龙彪', '0000000000', '档案馆', '0');
INSERT INTO `cadre_year_score` VALUES ('221', '2017', '35', '颜玄洲', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('222', '2017', '36', '郑  瑜', '0000000000', '图书馆', '0');
INSERT INTO `cadre_year_score` VALUES ('223', '2017', '37', '曾卫明', '0000000000', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('224', '2017', '38', '蔡海生', '0000000000', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('225', '2017', '39', '朱述斌', '0000000000', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('226', '2017', '40', '陈美球', '0000000000', 'MPA教育中心', '0');
INSERT INTO `cadre_year_score` VALUES ('227', '2017', '41', '宋  军', '0000000000', '招标与采购中心', '0');
INSERT INTO `cadre_year_score` VALUES ('228', '2017', '42', '杨秀江', '0000000000', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('229', '2017', '43', '吴文军', '0000000000', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('230', '2017', '44', '黄华古', '0000000000', '附中', '0');
INSERT INTO `cadre_year_score` VALUES ('231', '2017', '45', '方加海', '0000000000', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('232', '2017', '46', '黄国勤', '0000000000', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('233', '2017', '47', '周水平', '0000000000', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('234', '2017', '48', '杨光耀', '0000000000', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('235', '2017', '49', '王宗德', '0000000000', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('236', '2017', '50', '陆  伟', '0000000000', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('237', '2017', '51', '胡国良', '0000000000', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('238', '2017', '52', '瞿明仁', '0000000000', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('239', '2017', '53', '任  军', '0000000000', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('240', '2017', '54', '周艺萍', '0000000000', '计算机与信息工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('241', '2017', '55', '王映龙', '0000000000', '计算机与信息工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('242', '2017', '56', '王  兰', '0000000000', '软件学院', '0');
INSERT INTO `cadre_year_score` VALUES ('243', '2017', '57', '赵应丁', '0000000000', '软件学院', '0');
INSERT INTO `cadre_year_score` VALUES ('244', '2017', '58', '郭如良', '0000000000', '经济管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('245', '2017', '59', '陈昭玖', '0000000000', '经济管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('246', '2017', '60', '郭  旭', '0000000000', '国土资源与环境学院', '0');
INSERT INTO `cadre_year_score` VALUES ('247', '2017', '61', '李保同', '0000000000', '国土资源与环境学院', '0');
INSERT INTO `cadre_year_score` VALUES ('248', '2017', '62', '黄国清', '0000000000', '职业师范（技术）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('249', '2017', '63', '张继河', '0000000000', '职业师范（技术）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('250', '2017', '64', '郭锦墉', '0000000000', '人文与公共管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('251', '2017', '65', '宋秉斌', '0000000000', '人文与公共管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('252', '2017', '66', '魏  毅', '0000000000', '马克思主义（政治）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('253', '2017', '67', '刘汉一', '0000000000', '马克思主义（政治）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('254', '2017', '68', '周  阳', '0000000000', '理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('255', '2017', '69', '王义华', '0000000000', '理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('256', '2017', '70', '范  云', '0000000000', '食品科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('257', '2017', '71', '王文君', '0000000000', '食品科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('258', '2017', '72', '徐明生', '0000000000', '食品科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('259', '2017', '73', '廖明祥', '0000000000', '生物科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('260', '2017', '74', '吴晓玉', '0000000000', '生物科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('261', '2017', '75', '霍光华', '0000000000', '生物科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('262', '2017', '76', '肖友群', '0000000000', '外国语学院', '0');
INSERT INTO `cadre_year_score` VALUES ('263', '2017', '77', '吴伟萍', '0000000000', '外国语学院', '0');
INSERT INTO `cadre_year_score` VALUES ('264', '2017', '78', '潘金发', '0000000000', '军体部（武装部）', '0');
INSERT INTO `cadre_year_score` VALUES ('265', '2017', '79', '胡永升', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('266', '2017', '80', '曹明星', '0000000001', '党办校办（党务政务督查室）', '0');
INSERT INTO `cadre_year_score` VALUES ('267', '2017', '81', '胡永华', '0000000001', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('268', '2017', '82', '聂  清', '0000000001', '纪委（监察、审计）', '0');
INSERT INTO `cadre_year_score` VALUES ('269', '2017', '83', '廖述香', '0000000001', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('270', '2017', '84', '郭光华', '0000000001', '组织部（机关党委、党校）', '0');
INSERT INTO `cadre_year_score` VALUES ('271', '2017', '85', '朱晓东', '0000000001', '宣传部', '0');
INSERT INTO `cadre_year_score` VALUES ('272', '2017', '86', '刘厚彪', '0000000001', '离退休工作处', '0');
INSERT INTO `cadre_year_score` VALUES ('273', '2017', '87', '阮明华', '0000000001', '工会', '0');
INSERT INTO `cadre_year_score` VALUES ('274', '2017', '88', '黄新志', '0000000001', '学工部（处、大学生资助管理中心）', '0');
INSERT INTO `cadre_year_score` VALUES ('275', '2017', '89', '郭军海', '0000000001', '团委', '0');
INSERT INTO `cadre_year_score` VALUES ('276', '2017', '90', '黄  波', '0000000001', '教务处（教学督导组）', '0');
INSERT INTO `cadre_year_score` VALUES ('277', '2017', '91', '彭齐东', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('278', '2017', '92', '周红燕', '0000000001', '研究生院', '0');
INSERT INTO `cadre_year_score` VALUES ('279', '2017', '93', '张高亮', '0000000001', '招生就业处', '0');
INSERT INTO `cadre_year_score` VALUES ('280', '2017', '94', '黄莉萍', '0000000001', '财务处', '0');
INSERT INTO `cadre_year_score` VALUES ('281', '2017', '95', '郭安平', '0000000001', '保卫处', '0');
INSERT INTO `cadre_year_score` VALUES ('282', '2017', '96', '万江文', '0000000001', '后勤与校园管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('283', '2017', '97', '邹建民', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('284', '2017', '98', '钟远东', '0000000001', '产业处', '0');
INSERT INTO `cadre_year_score` VALUES ('285', '2017', '99', '尹生良', '0000000001', '资产与实验室管理处', '0');
INSERT INTO `cadre_year_score` VALUES ('286', '2017', '100', '刘民高', '0000000001', '基本建设处', '0');
INSERT INTO `cadre_year_score` VALUES ('287', '2017', '101', '张水发', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('288', '2017', '102', '周建伟', '0000000001', '继续教育学院（管理干部学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('289', '2017', '103', '万  洁', '0000000001', '校友工作办公室', '0');
INSERT INTO `cadre_year_score` VALUES ('290', '2017', '104', '吴才君', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('291', '2017', '105', '李祚兴', '0000000001', '农业科技园', '0');
INSERT INTO `cadre_year_score` VALUES ('292', '2017', '106', '李力民', '0000000001', '期刊社', '0');
INSERT INTO `cadre_year_score` VALUES ('293', '2017', '107', '周  超', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('294', '2017', '108', '柳  军', '0000000001', '信息中心', '0');
INSERT INTO `cadre_year_score` VALUES ('295', '2017', '109', '宁  飔', '0000000001', '高教所', '0');
INSERT INTO `cadre_year_score` VALUES ('296', '2017', '110', '吴南生', '0000000001', '新农村发展研究院', '0');
INSERT INTO `cadre_year_score` VALUES ('297', '2017', '111', '孙剑华', '0000000001', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('298', '2017', '112', '肖意风', '0000000001', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('299', '2017', '113', '刘  勇', '0000000001', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('300', '2017', '114', '朱昌兰', '0000000001', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('301', '2017', '115', '曾勇军', '0000000001', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('302', '2017', '116', '谢国强', '0000000001', '农学院', '0');
INSERT INTO `cadre_year_score` VALUES ('303', '2017', '117', '王建胜', '0000000001', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('304', '2017', '118', '夏庆林', '0000000001', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('305', '2017', '119', '刘纯青', '0000000001', '林学院（园林与艺术学院）', '0');
INSERT INTO `cadre_year_score` VALUES ('306', '2017', '120', '曹华斌', '0000000001', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('307', '2017', '121', '肖石军', '0000000001', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('308', '2017', '122', '李  琳', '0000000001', '动物科学技术学院', '0');
INSERT INTO `cadre_year_score` VALUES ('309', '2017', '123', '艾施荣', '0000000001', '工学院', '0');
INSERT INTO `cadre_year_score` VALUES ('310', '2017', '124', '刘仁鑫', '0000000001', '工学院', '0');
INSERT INTO `cadre_year_score` VALUES ('311', '2017', '125', '张庐陵', '0000000001', '工学院', '0');
INSERT INTO `cadre_year_score` VALUES ('312', '2017', '126', '彭泰中', '0000000001', '计算机与信息工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('313', '2017', '127', '裴  红', '0000000001', '计算机与信息工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('314', '2017', '128', '唐建军', '0000000001', '计算机与信息工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('315', '2017', '129', '戴仕明', '0000000001', '软件学院', '0');
INSERT INTO `cadre_year_score` VALUES ('316', '2017', '130', '刘庆言', '0000000001', '经济管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('317', '2017', '131', '胡  凯', '0000000001', '经济管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('318', '2017', '132', '赵  刚', '0000000001', '国土资源与环境学院', '0');
INSERT INTO `cadre_year_score` VALUES ('319', '2017', '133', '周春火', '0000000001', '国土资源与环境学院', '0');
INSERT INTO `cadre_year_score` VALUES ('320', '2017', '134', '刘志兵', '0000000001', '职业师范（技术）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('321', '2017', '135', '苏力华', '0000000001', '职业师范（技术）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('322', '2017', '136', '刘善军', '0000000001', '职业师范（技术）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('323', '2017', '137', '王志发', '0000000001', '人文与公共管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('324', '2017', '138', '黄少峰', '0000000001', '人文与公共管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('325', '2017', '139', '李道和', '0000000001', '人文与公共管理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('326', '2017', '140', '姜木枝', '0000000001', '马克思主义（政治）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('327', '2017', '141', '付庆文', '0000000001', '马克思主义（政治）学院', '0');
INSERT INTO `cadre_year_score` VALUES ('328', '2017', '142', '周国平', '0000000001', '理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('329', '2017', '143', '黄长干', '0000000001', '理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('330', '2017', '144', '邱新兰', '0000000001', '理学院', '0');
INSERT INTO `cadre_year_score` VALUES ('331', '2017', '145', '胡  丹', '0000000001', '食品科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('332', '2017', '146', '吴国平', '0000000001', '食品科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('333', '2017', '147', '罗志华', '0000000001', '生物科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('334', '2017', '148', '刘卫东', '0000000001', '生物科学与工程学院', '0');
INSERT INTO `cadre_year_score` VALUES ('335', '2017', '149', '肖  明', '0000000001', '外国语学院', '0');
INSERT INTO `cadre_year_score` VALUES ('336', '2017', '150', '席艳辉', '0000000001', '军体部（武装部）', '0');
INSERT INTO `cadre_year_score` VALUES ('337', '2017', '151', '王军华', '0000000001', '后勤服务集团', '0');
INSERT INTO `cadre_year_score` VALUES ('338', '2017', '152', '张瑞增', '0000000001', '后勤服务集团', '0');


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
INSERT INTO `department_year_score` VALUES ('34', '0000002018', '0000000002', '林学院（园林与艺术学院）', '0000000000000000012.85');
INSERT INTO `department_year_score` VALUES ('35', '0000002018', '0000000003', '工学院', '0000000000000000002.55');
INSERT INTO `department_year_score` VALUES ('36', '0000002018', '0000000004', '生物科学与工程学院', '0000000000000000001.65');
INSERT INTO `department_year_score` VALUES ('37', '0000002018', '0000000005', '动物科学技术学院', '0000000000000000000.06');
INSERT INTO `department_year_score` VALUES ('38', '0000002018', '0000000006', '国土资源与环境学院', '0000000000000000001.35');
INSERT INTO `department_year_score` VALUES ('39', '0000002018', '0000000007', '经济管理学院', '00000000000000000001.5');
INSERT INTO `department_year_score` VALUES ('40', '0000002018', '0000000008', '食品科学与工程学院', '000000000000000000.075');
INSERT INTO `department_year_score` VALUES ('41', '0000002018', '0000000009', '计算机与信息工程学院', '0000000000000000001.35');
INSERT INTO `department_year_score` VALUES ('42', '0000002018', '0000000010', '人文与公共管理学院', '000000000000000000.075');
INSERT INTO `department_year_score` VALUES ('43', '0000002018', '0000000011', '马克思主义（政治）学院', '000000000000000000.075');
INSERT INTO `department_year_score` VALUES ('44', '0000002018', '0000000012', '外国语学院', '0000000000000000000.09');
INSERT INTO `department_year_score` VALUES ('45', '0000002018', '0000000013', '软件学院', '0000000000000000000.04');
INSERT INTO `department_year_score` VALUES ('46', '0000002018', '0000000014', '职业师范（技术）学院', '0000000000000000000.04');
INSERT INTO `department_year_score` VALUES ('47', '0000002018', '0000000015', '理学院', '0000000000000000000.04');
INSERT INTO `department_year_score` VALUES ('48', '0000002018', '0000000016', '军体部（武装部）', '0000000000000000001.29');
INSERT INTO `department_year_score` VALUES ('49', '0000002018', '0000000017', '纪委（监察、审计）', '0000000000000000011.45');
INSERT INTO `department_year_score` VALUES ('50', '0000002018', '0000000018', '组织部（机关党委、党校）', '0000000000000000004.93');
INSERT INTO `department_year_score` VALUES ('51', '0000002018', '0000000019', '宣传部', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('52', '0000002018', '0000000020', '统战部', '0000000000000000000.18');
INSERT INTO `department_year_score` VALUES ('53', '0000002018', '0000000021', '工会', '0000000000000000000.18');
INSERT INTO `department_year_score` VALUES ('54', '0000002018', '0000000022', '学工部（处、大学生资助管理中心）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('55', '0000002018', '0000000023', '团委', '0000000000000000000.18');
INSERT INTO `department_year_score` VALUES ('56', '0000002018', '0000000024', '招生就业处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('57', '0000002018', '0000000025', '离退休工作处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('58', '0000002018', '0000000026', '党办校办（党务政务督查室）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('59', '0000002018', '0000000027', '科技处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('60', '0000002018', '0000000028', '新农村发展研究院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('61', '0000002018', '0000000029', '人事处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('62', '0000002018', '0000000030', '财务处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('63', '0000002018', '0000000031', '保卫处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('64', '0000002018', '0000000032', '国际交流处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('65', '0000002018', '0000000033', '产业处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('66', '0000002018', '0000000034', '教务处（教学督导组）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('67', '0000002018', '0000000035', '高教所', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('68', '0000002018', '0000000036', '研究生院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('69', '0000002018', '0000000037', '资产与实验室管理处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('70', '0000002018', '0000000038', 'MPA教育中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('71', '0000002018', '0000000039', '信息中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('72', '0000002018', '0000000040', '招标与采购中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('73', '0000002018', '0000000041', '农业科技园', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('74', '0000002018', '0000000042', '校友工作办公室', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('75', '0000002018', '0000000043', '后勤与校园管理处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('76', '0000002018', '0000000044', '基本建设处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('77', '0000002018', '0000000045', '图书馆', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('78', '0000002018', '0000000046', '期刊社', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('79', '0000002018', '0000000047', '档案馆', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('80', '0000002018', '0000000048', '继续教育学院（管理干部学院）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('81', '0000002018', '0000000049', '后勤服务集团', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('82', '0000002018', '0000000050', '附中', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('83', '0000002018', '0000000051', '医院', '0000000000000000000.18');
INSERT INTO `department_year_score` VALUES ('466', '0000002018', '0000000001', '农学院', '00000000000000000063.9');
INSERT INTO `department_year_score` VALUES ('467', '0000002017', '0000000001', '农学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('468', '0000002017', '0000000002', '林学院（园林与艺术学院）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('469', '0000002017', '0000000003', '工学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('470', '0000002017', '0000000004', '生物科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('471', '0000002017', '0000000005', '动物科学技术学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('472', '0000002017', '0000000006', '国土资源与环境学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('473', '0000002017', '0000000007', '经济管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('474', '0000002017', '0000000008', '食品科学与工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('475', '0000002017', '0000000009', '计算机与信息工程学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('476', '0000002017', '0000000010', '人文与公共管理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('477', '0000002017', '0000000011', '马克思主义（政治）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('478', '0000002017', '0000000012', '外国语学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('479', '0000002017', '0000000013', '软件学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('480', '0000002017', '0000000014', '职业师范（技术）学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('481', '0000002017', '0000000015', '理学院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('482', '0000002017', '0000000016', '军体部（武装部）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('483', '0000002017', '0000000017', '纪委（监察、审计）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('484', '0000002017', '0000000018', '组织部（机关党委、党校）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('485', '0000002017', '0000000019', '宣传部', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('486', '0000002017', '0000000020', '统战部', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('487', '0000002017', '0000000021', '工会', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('488', '0000002017', '0000000022', '学工部（处、大学生资助管理中心）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('489', '0000002017', '0000000023', '团委', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('490', '0000002017', '0000000024', '招生就业处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('491', '0000002017', '0000000025', '离退休工作处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('492', '0000002017', '0000000026', '党办校办（党务政务督查室）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('493', '0000002017', '0000000027', '科技处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('494', '0000002017', '0000000028', '新农村发展研究院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('495', '0000002017', '0000000029', '人事处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('496', '0000002017', '0000000030', '财务处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('497', '0000002017', '0000000031', '保卫处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('498', '0000002017', '0000000032', '国际交流处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('499', '0000002017', '0000000033', '产业处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('500', '0000002017', '0000000034', '教务处（教学督导组）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('501', '0000002017', '0000000035', '高教所', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('502', '0000002017', '0000000036', '研究生院', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('503', '0000002017', '0000000037', '资产与实验室管理处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('504', '0000002017', '0000000038', 'MPA教育中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('505', '0000002017', '0000000039', '信息中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('506', '0000002017', '0000000040', '招标与采购中心', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('507', '0000002017', '0000000041', '农业科技园', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('508', '0000002017', '0000000042', '校友工作办公室', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('509', '0000002017', '0000000043', '后勤与校园管理处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('510', '0000002017', '0000000044', '基本建设处', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('511', '0000002017', '0000000045', '图书馆', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('512', '0000002017', '0000000046', '期刊社', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('513', '0000002017', '0000000047', '档案馆', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('514', '0000002017', '0000000048', '继续教育学院（管理干部学院）', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('515', '0000002017', '0000000049', '后勤服务集团', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('516', '0000002017', '0000000050', '附中', '0000000000000000000000');
INSERT INTO `department_year_score` VALUES ('517', '0000002017', '0000000051', '医院', '0000000000000000000000');

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
