/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:37:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '部门审核员');
INSERT INTO `role` VALUES ('3', '形式审核员');
INSERT INTO `role` VALUES ('4', '普通用户');
