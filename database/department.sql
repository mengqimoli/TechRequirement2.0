/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:36:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `deptId` bigint(20) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '办公室');
INSERT INTO `department` VALUES ('2', '人事处');
INSERT INTO `department` VALUES ('3', '机关党委');
INSERT INTO `department` VALUES ('4', '政策法规处');
INSERT INTO `department` VALUES ('5', '计划财务处');
INSERT INTO `department` VALUES ('6', '平台与基础处');
INSERT INTO `department` VALUES ('7', '国际合作处');
INSERT INTO `department` VALUES ('8', '高新技术处');
INSERT INTO `department` VALUES ('9', '社会发展处');
INSERT INTO `department` VALUES ('10', '成果与市场处');
INSERT INTO `department` VALUES ('11', '监察室');
INSERT INTO `department` VALUES ('12', '离退休干部处');
INSERT INTO `department` VALUES ('13', '知识产权局');
INSERT INTO `department` VALUES ('14', '半干旱中心');
INSERT INTO `department` VALUES ('15', '山办');
INSERT INTO `department` VALUES ('16', '机关服务中心');
INSERT INTO `department` VALUES ('17', '科技研发中心');
INSERT INTO `department` VALUES ('18', '科技情报研究院');
INSERT INTO `department` VALUES ('19', '器材公司');
INSERT INTO `department` VALUES ('20', '基金办');
INSERT INTO `department` VALUES ('21', '档案馆');
INSERT INTO `department` VALUES ('22', '科技管理信息中心');
INSERT INTO `department` VALUES ('23', '科技投资中心');
INSERT INTO `department` VALUES ('24', '成果转换中心');
INSERT INTO `department` VALUES ('25', '中小企业创新资金管理中心');
INSERT INTO `department` VALUES ('26', '对外交流中心');
