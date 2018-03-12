/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:37:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_Id` bigint(20) NOT NULL,
  `permission_Id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_Id`,`permission_Id`),
  KEY `permission_Id` (`permission_Id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_Id`) REFERENCES `role` (`roleId`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_Id`) REFERENCES `permission` (`perId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('4', '2');
INSERT INTO `role_permission` VALUES ('4', '3');
INSERT INTO `role_permission` VALUES ('4', '4');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('3', '5');
INSERT INTO `role_permission` VALUES ('4', '5');
INSERT INTO `role_permission` VALUES ('3', '6');
INSERT INTO `role_permission` VALUES ('2', '7');
INSERT INTO `role_permission` VALUES ('2', '8');
INSERT INTO `role_permission` VALUES ('3', '8');
