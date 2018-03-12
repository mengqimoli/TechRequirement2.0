/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:36:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `perId` bigint(20) NOT NULL AUTO_INCREMENT,
  `perName` varchar(255) DEFAULT NULL,
  `perText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`perId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '管理人员', '拥有所有权限');
INSERT INTO `permission` VALUES ('2', '需求征集', '可填写，保存并提交征集表');
INSERT INTO `permission` VALUES ('3', '需求管理', '可查看自己机构所填的征集表以及状态');
INSERT INTO `permission` VALUES ('4', '用户信息', '可查看自己的相关信息,并且进行修改');
INSERT INTO `permission` VALUES ('5', '修改密码', '用户可修改自己并符合规则的密码');
INSERT INTO `permission` VALUES ('6', '形式审核', '可查看用户填报的征集表并进行形式审核,统计查询');
INSERT INTO `permission` VALUES ('7', '部门审核', '可查看用户填报的征集表并进行相应部门的审核,统计查询');
INSERT INTO `permission` VALUES ('8', '统计查询', '用户可以按综合索引条件查询统计征集表');
