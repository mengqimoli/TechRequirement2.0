/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:36:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `putunder`
-- ----------------------------
DROP TABLE IF EXISTS `putunder`;
CREATE TABLE `putunder` (
  `putId` bigint(20) NOT NULL AUTO_INCREMENT,
  `putName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`putId`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of putunder
-- ----------------------------
INSERT INTO `putunder` VALUES ('1', '邯郸市科技局');
INSERT INTO `putunder` VALUES ('2', '邢台市科技局');
INSERT INTO `putunder` VALUES ('3', '石家庄市科技局');
INSERT INTO `putunder` VALUES ('4', '保定市科技局');
INSERT INTO `putunder` VALUES ('5', '张家口市科技局');
INSERT INTO `putunder` VALUES ('6', '承德市科技局');
INSERT INTO `putunder` VALUES ('7', '秦皇岛市科技局');
INSERT INTO `putunder` VALUES ('8', '唐山市科技局');
INSERT INTO `putunder` VALUES ('9', '廊坊市科技局');
INSERT INTO `putunder` VALUES ('10', '沧州市科技局');
INSERT INTO `putunder` VALUES ('11', '衡水市科技局');
INSERT INTO `putunder` VALUES ('12', '省科技厅');
INSERT INTO `putunder` VALUES ('13', '省财政厅');
INSERT INTO `putunder` VALUES ('14', '省工业和信息化厅');
INSERT INTO `putunder` VALUES ('15', '省住房和城乡建设厅');
INSERT INTO `putunder` VALUES ('16', '省水利厅');
INSERT INTO `putunder` VALUES ('17', '省计生委');
INSERT INTO `putunder` VALUES ('18', '省食品药品监督管理局');
INSERT INTO `putunder` VALUES ('19', '省质量技术监督局');
INSERT INTO `putunder` VALUES ('20', '省环保厅');
INSERT INTO `putunder` VALUES ('21', '省卫生厅');
INSERT INTO `putunder` VALUES ('22', '省农业厅');
INSERT INTO `putunder` VALUES ('23', '省教育厅');
INSERT INTO `putunder` VALUES ('24', '省林业厅');
INSERT INTO `putunder` VALUES ('25', '省中小企业局');
INSERT INTO `putunder` VALUES ('26', '省交通厅');
INSERT INTO `putunder` VALUES ('27', '省国防科技工业局');
INSERT INTO `putunder` VALUES ('28', '省审计厅');
INSERT INTO `putunder` VALUES ('29', '省文化厅');
INSERT INTO `putunder` VALUES ('30', '省统计局');
INSERT INTO `putunder` VALUES ('31', '省公安厅');
INSERT INTO `putunder` VALUES ('32', '省人力资源和社会保障厅');
INSERT INTO `putunder` VALUES ('33', '省体育局');
INSERT INTO `putunder` VALUES ('34', '省国土资源厅');
INSERT INTO `putunder` VALUES ('35', '省科学院');
INSERT INTO `putunder` VALUES ('36', '省农科院');
INSERT INTO `putunder` VALUES ('37', '省社会科学院');
INSERT INTO `putunder` VALUES ('38', '省气象局');
INSERT INTO `putunder` VALUES ('39', '省地震局');
INSERT INTO `putunder` VALUES ('40', '省民政厅');
INSERT INTO `putunder` VALUES ('41', '省委宣传部');
INSERT INTO `putunder` VALUES ('42', '省委组织部');
INSERT INTO `putunder` VALUES ('43', '省供销合作社 ');
INSERT INTO `putunder` VALUES ('44', '省广播电视局');
INSERT INTO `putunder` VALUES ('45', '省委办公厅');
INSERT INTO `putunder` VALUES ('46', '省政府研究室');
INSERT INTO `putunder` VALUES ('47', '省盐务局');
INSERT INTO `putunder` VALUES ('48', '省档案局');
INSERT INTO `putunder` VALUES ('49', '省物价局');
INSERT INTO `putunder` VALUES ('50', '省人民政府外事办公室');
INSERT INTO `putunder` VALUES ('51', '省政府办公厅');
INSERT INTO `putunder` VALUES ('52', '省信访局');
INSERT INTO `putunder` VALUES ('53', '省妇联');
INSERT INTO `putunder` VALUES ('54', '省法院');
INSERT INTO `putunder` VALUES ('55', '省检察院');
INSERT INTO `putunder` VALUES ('56', '省商务厅');
INSERT INTO `putunder` VALUES ('57', '省发改委');
INSERT INTO `putunder` VALUES ('58', '省国资委');
INSERT INTO `putunder` VALUES ('59', '辛集市科技局');
INSERT INTO `putunder` VALUES ('60', '定州市科技局');
INSERT INTO `putunder` VALUES ('61', '省安全生产监督管理局');
INSERT INTO `putunder` VALUES ('62', '省国家安全厅');
INSERT INTO `putunder` VALUES ('63', '省中医药管理局');
INSERT INTO `putunder` VALUES ('64', '河北出入境检验检疫局');
INSERT INTO `putunder` VALUES ('65', '省科协');
INSERT INTO `putunder` VALUES ('66', '河北钢铁集团有限公司');
INSERT INTO `putunder` VALUES ('67', '石家庄国家高新技术产业开发区');
INSERT INTO `putunder` VALUES ('68', '保定国家高新技术产业开发区');
INSERT INTO `putunder` VALUES ('69', '省总工会');
INSERT INTO `putunder` VALUES ('70', '省旅游局');
INSERT INTO `putunder` VALUES ('71', '省新闻出版广电局');
INSERT INTO `putunder` VALUES ('72', '省社科联');
INSERT INTO `putunder` VALUES ('73', '团省委');
INSERT INTO `putunder` VALUES ('74', '省司法厅');
INSERT INTO `putunder` VALUES ('75', '唐山国家高新技术产业开发区');
INSERT INTO `putunder` VALUES ('76', '燕郊国家高新技术产业开发区');
INSERT INTO `putunder` VALUES ('77', '河北行政学院');
INSERT INTO `putunder` VALUES ('78', '河北省机构编制委员会办公室');
INSERT INTO `putunder` VALUES ('79', '省政府法制办');
INSERT INTO `putunder` VALUES ('80', '中共河北省委党校');
INSERT INTO `putunder` VALUES ('81', '省工商行政管理局');
INSERT INTO `putunder` VALUES ('82', '承德国家高新技术产业开发区');
