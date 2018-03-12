/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:37:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `state`
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `staId` bigint(20) NOT NULL AUTO_INCREMENT,
  `staName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES ('1', '已保存');
INSERT INTO `state` VALUES ('2', '已提交');
INSERT INTO `state` VALUES ('3', '形式审核未通过');
INSERT INTO `state` VALUES ('4', '形式审核通过');
INSERT INTO `state` VALUES ('5', '部门审核未通过');
INSERT INTO `state` VALUES ('6', '部门审核通过');
