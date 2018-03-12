/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:37:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `userZSXM` varchar(255) DEFAULT NULL,
  `userSFZ` varchar(20) DEFAULT NULL,
  `userYX` varchar(255) DEFAULT NULL,
  `userSJ` varchar(20) DEFAULT NULL,
  `userJGDM` varchar(20) DEFAULT NULL,
  `userJGMC` varchar(255) DEFAULT NULL,
  `userYZBM` varchar(20) DEFAULT NULL,
  `department_Id` bigint(20) DEFAULT NULL,
  `putunder_Id` bigint(20) DEFAULT NULL,
  `area_Id` bigint(20) DEFAULT NULL,
  `userDWWZ` varchar(255) DEFAULT NULL,
  `userDZXX` varchar(255) DEFAULT NULL,
  `userFRDB` varchar(255) DEFAULT NULL,
  `userLXR` varchar(255) DEFAULT NULL,
  `userGDDH` varchar(255) DEFAULT NULL,
  `userYDDH` varchar(255) DEFAULT NULL,
  `userCZ` varchar(255) DEFAULT NULL,
  `userJGSX` varchar(255) DEFAULT NULL,
  `userJGJJ` text,
  `userTXDZ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `department_Id` (`department_Id`),
  KEY `putunder_Id` (`putunder_Id`),
  KEY `area_Id` (`area_Id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`department_Id`) REFERENCES `department` (`deptId`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`putunder_Id`) REFERENCES `putunder` (`putId`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`area_Id`) REFERENCES `area` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '111111', '96e79218965eb72c92a549dd5a330112', '', null, '842389033@qq.com', '15230805967', null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '222222', 'e10adc3949ba59abbe56e057f20f883e', null, null, '852449096@qq.com', '15230905997', null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '333333', 'e10adc3949ba59abbe56e057f20f883e', null, null, '862509159@qq.com', '15231006027', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '444444', 'e10adc3949ba59abbe56e057f20f883e', '王艺霖', '513901', '872569222@qq.com', '15231106057', '10000001', '石家庄铁道大学软件工程系', '050043', null, '3', '1', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', 'qweqweqwe');
INSERT INTO `user` VALUES ('5', '555555', 'e10adc3949ba59abbe56e057f20f883e', null, null, '882629285@qq.com', '15231206087', null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', '666666', 'e10adc3949ba59abbe56e057f20f883e', null, null, '892689348@qq.com', '15231306117', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'bgsshyuan', null, '', '', '902749411@qq.com', '15231406147', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', 'rscshyuan', null, null, null, '912809474@qq.com', '15231506177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9', 'jgdwshyuan', null, null, null, '922869537@qq.com', '15231606207', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', 'zcfgcshyuan', null, null, null, '932929600@qq.com', '15231706237', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('11', 'jhcwcshyuan', null, null, null, '942989663@qq.com', '15231806267', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', 'ptyjccshyuan', null, null, null, '953049726@qq.com', '15231906297', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', 'gjhzcshyuan', null, null, null, '963109789@qq.com', '15232006327', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', 'gxjscshyuan', null, null, null, '973169852@qq.com', '15232106357', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('15', 'nckjcshyuan', null, null, null, '983229915@qq.com', '15232206387', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', 'shfzcshyuan', null, null, null, '993289978@qq.com', '15232306417', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', 'cgysccshyuan', null, null, null, '1003350041@qq.com', '15232406447', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', 'jcsshyuan', null, null, null, '1013410104@qq.com', '15232506477', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', 'ltxgbcshyuan', null, null, null, '1023470167@qq.com', '15232606507', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', 'zscqjshyuan', null, null, null, '1033530230@qq.com', '15232706537', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', 'bghzxshyuan', null, null, null, '1043590293@qq.com', '15232806567', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('22', 'sbshyuan', null, null, null, '1053650356@qq.com', '15232906597', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('23', 'jgfwzxshyuan', null, null, null, '1063710419@qq.com', '15233006627', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('24', 'kjyfzxshyuan', null, null, null, '1073770482@qq.com', '15233106657', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', 'kjqbyjyshyuan', null, null, null, '1083830545@qq.com', '15233206687', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('26', 'qcgsshyuan', null, null, null, '1093890608@qq.com', '15233306717', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('27', 'jjbshyuan', null, null, null, '1103950671@qq.com', '15233406747', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('28', 'dagshyuan', null, null, null, '1114010734@qq.com', '15233506777', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('29', 'kjglxxzxshyuan', null, null, null, '1124070797@qq.com', '15233606807', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('30', 'kjtzzxshyuan', null, null, null, '1134130860@qq.com', '15233706837', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('31', 'cgzhzxshyuan', null, null, null, '1144190923@qq.com', '15233806867', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('32', 'zxqyshyuan', null, null, null, '1154250986@qq.com', '15233906897', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('33', 'dwjlzxshyuan', null, null, null, '1164311049@qq.com', '15234006927', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('34', '343434', null, null, null, '1174371112@qq.com', '15234106957', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('35', '353535', null, null, null, '1184431175@qq.com', '15234206987', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('36', '363636', null, null, null, '1194491238@qq.com', '15234307017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('37', '373737', null, null, null, '1204551301@qq.com', '15234407047', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('38', '383838', null, null, null, '1214611364@qq.com', '15234507077', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('39', '393939', null, null, null, '1224671427@qq.com', '15234607107', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('100', '123456', null, null, null, '1234731490@qq.com', '15234707137', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('101', '123457', null, null, null, '1244791553@qq.com', '15234807167', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('102', '123458', null, null, null, '1254851616@qq.com', '15234907197', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('103', '123459', null, null, null, '1264911679@qq.com', '15235007227', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('104', '123460', null, null, null, '1274971742@qq.com', '15235107257', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('105', '123461', null, null, null, '1285031805@qq.com', '15235207287', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('106', '123462', null, null, null, '1295091868@qq.com', '15235307317', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('107', '123463', null, null, null, '1305151931@qq.com', '15235407347', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('108', '123464', null, null, null, '1315211994@qq.com', '15235507377', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('109', '123465', null, null, null, '1325272057@qq.com', '15235607407', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('110', '123466', null, null, null, '1335332120@qq.com', '15235707437', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('111', '123467', null, null, null, '1345392183@qq.com', '15235807467', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('112', '123468', null, null, null, '1355452246@qq.com', '15235907497', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('113', '123469', null, null, null, '1365512309@qq.com', '15236007527', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('114', '123470', null, null, null, '1375572372@qq.com', '15236107557', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('115', '123471', null, null, null, '1385632435@qq.com', '15236207587', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('116', '123472', null, null, null, '1395692498@qq.com', '15236307617', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('117', '123473', null, null, null, '1405752561@qq.com', '15236407647', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('118', '123474', null, null, null, '1415812624@qq.com', '15236507677', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('119', '123475', null, null, null, '1425872687@qq.com', '15236607707', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('120', '123476', null, null, null, '1435932750@qq.com', '15236707737', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('121', '123477', null, null, null, '1445992813@qq.com', '15236807767', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('122', '123478', null, null, null, '1456052876@qq.com', '15236907797', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('123', '123479', null, null, null, '1466112939@qq.com', '15237007827', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('124', '123480', null, null, null, '1476173002@qq.com', '15237107857', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('125', '123481', null, null, null, '1486233065@qq.com', '15237207887', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('126', '123482', null, null, null, '1496293128@qq.com', '15237307917', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('127', '123483', null, null, null, '1506353191@qq.com', '15237407947', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('128', '123484', null, null, null, '1516413254@qq.com', '15237507977', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('129', '123485', null, null, null, '1526473317@qq.com', '15237608007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('130', '123486', null, null, null, '1536533380@qq.com', '15237708037', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('131', '123487', null, null, null, '1546593443@qq.com', '15237808067', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('132', '123488', null, null, null, '1556653506@qq.com', '15237908097', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('133', '123489', null, null, null, '1566713569@qq.com', '15238008127', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('134', '123490', null, null, null, '1576773632@qq.com', '15238108157', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('135', '123491', null, null, null, '1586833695@qq.com', '15238208187', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('136', '123492', null, null, null, '1596893758@qq.com', '15238308217', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('137', '123493', null, null, null, '1606953821@qq.com', '15238408247', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('138', '123494', null, null, null, '1617013884@qq.com', '15238508277', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('139', '123495', null, null, null, '1627073947@qq.com', '15238608307', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('140', '123496', null, null, null, '1637134010@qq.com', '15238708337', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('141', '123497', null, null, null, '1647194073@qq.com', '15238808367', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('142', '234567', null, null, null, '1657254136@qq.com', '15238908397', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('143', '234569', null, null, null, '1667314199@qq.com', '15239008427', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('144', '234571', null, null, null, '1677374262@qq.com', '15239108457', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('145', '234573', null, null, null, '1687434325@qq.com', '15239208487', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('146', '234575', null, null, null, '1697494388@qq.com', '15239308517', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('147', '234577', null, null, null, '1707554451@qq.com', '15239408547', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('148', '234579', null, null, null, '1717614514@qq.com', '15239508577', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('149', '234581', null, null, null, '1727674577@qq.com', '15239608607', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('150', '234583', null, null, null, '1737734640@qq.com', '15239708637', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('151', '234585', null, null, null, '1747794703@qq.com', '15239808667', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('152', '234587', null, null, null, '1757854766@qq.com', '15239908697', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('153', '234589', null, null, null, '1767914829@qq.com', '15240008727', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('154', '234591', null, null, null, '1777974892@qq.com', '15240108757', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('155', '234593', null, null, null, '1788034955@qq.com', '15240208787', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('156', '234595', null, null, null, '1798095018@qq.com', '15240308817', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('157', '234597', null, null, null, '1808155081@qq.com', '15240408847', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('158', '234599', null, null, null, '1818215144@qq.com', '15240508877', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('159', '234601', null, null, null, '1828275207@qq.com', '15240608907', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('160', '234603', null, null, null, '1838335270@qq.com', '15240708937', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('161', '234605', null, null, null, '1848395333@qq.com', '15240808967', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('162', '234607', null, null, null, '1858455396@qq.com', '15240908997', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('163', '234609', null, null, null, '1868515459@qq.com', '15241009027', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('164', '234611', null, null, null, '1878575522@qq.com', '15241109057', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('165', '234613', null, null, null, '1888635585@qq.com', '15241209087', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('166', '234615', null, null, null, '1898695648@qq.com', '15241309117', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('167', '234617', null, null, null, '1908755711@qq.com', '15241409147', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('168', '234619', null, null, null, '1918815774@qq.com', '15241509177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('169', '234621', null, null, null, '1928875837@qq.com', '15241609207', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('170', '234623', null, null, null, '1938935900@qq.com', '15241709237', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('171', '234625', null, null, null, '1948995963@qq.com', '15241809267', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('172', '234627', null, null, null, '1959056026@qq.com', '15241909297', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('173', '234629', null, null, null, '1969116089@qq.com', '15242009327', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('174', '234631', null, null, null, '1979176152@qq.com', '15242109357', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('175', '234633', null, null, null, '1989236215@qq.com', '15242209387', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('176', '234635', null, null, null, '1999296278@qq.com', '15242309417', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('177', '234637', null, null, null, '2009356341@qq.com', '15242409447', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('178', '234639', null, null, null, '2019416404@qq.com', '15242509477', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('179', '234641', null, null, null, '2029476467@qq.com', '15242609507', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('180', '234643', null, null, null, '2039536530@qq.com', '15242709537', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('181', '234645', null, null, null, '2049596593@qq.com', '15242809567', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('182', '234647', null, null, null, '2059656656@qq.com', '15242909597', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('183', '234649', null, null, null, '2069716719@qq.com', '15243009627', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('184', '234651', null, null, null, '2079776782@qq.com', '15243109657', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('185', '234653', null, null, null, '2089836845@qq.com', '15243209687', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('186', '234655', null, null, null, '2099896908@qq.com', '15243309717', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('187', '234657', null, null, null, '2109956971@qq.com', '15243409747', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('188', '234659', null, null, null, '2120017034@qq.com', '15243509777', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('189', '234661', null, null, null, '2130077097@qq.com', '15243609807', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('190', '234663', null, null, null, '2140137160@qq.com', '15243709837', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('191', '234665', null, null, null, '2150197223@qq.com', '15243809867', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('192', '234667', null, null, null, '2160257286@qq.com', '15243909897', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('193', '234669', null, null, null, '2170317349@qq.com', '15244009927', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('194', '234671', null, null, null, '2180377412@qq.com', '15244109957', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('195', '234673', null, null, null, '2190437475@qq.com', '15244209987', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('196', '234675', null, null, null, '2200497538@qq.com', '15244310017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('197', '234677', null, null, null, '2210557601@qq.com', '15244410047', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('198', '234679', null, null, null, '2220617664@qq.com', '15244510077', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('199', '234681', null, null, null, '2230677727@qq.com', '15244610107', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('200', '234683', null, null, null, '2240737790@qq.com', '15244710137', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('201', '234685', null, null, null, '2250797853@qq.com', '15244810167', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('202', '234687', null, null, null, '2260857916@qq.com', '15244910197', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('203', '234689', null, null, null, '2270917979@qq.com', '15245010227', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('204', '234691', null, null, null, '2280978042@qq.com', '15245110257', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('205', '234693', null, null, null, '2291038105@qq.com', '15245210287', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('206', '234695', null, null, null, '2301098168@qq.com', '15245310317', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('207', '234697', null, null, null, '2311158231@qq.com', '15245410347', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('208', '234699', null, null, null, '2321218294@qq.com', '15245510377', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('209', '234701', null, null, null, '2331278357@qq.com', '15245610407', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('210', '234703', null, null, null, '2341338420@qq.com', '15245710437', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('211', '234705', null, null, null, '2351398483@qq.com', '15245810467', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('212', '234707', null, null, null, '2361458546@qq.com', '15245910497', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('213', '234709', null, null, null, '2371518609@qq.com', '15246010527', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('214', '234711', null, null, null, '2381578672@qq.com', '15246110557', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('215', '234713', null, null, null, '2391638735@qq.com', '15246210587', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('216', '234715', null, null, null, '2401698798@qq.com', '15246310617', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('217', '234717', null, null, null, '2411758861@qq.com', '15246410647', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('218', '234719', null, null, null, '2421818924@qq.com', '15246510677', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('219', '234721', null, null, null, '2431878987@qq.com', '15246610707', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('220', '234723', null, null, null, '2441939050@qq.com', '15246710737', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('221', '234725', null, null, null, '2451999113@qq.com', '15246810767', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('222', '234727', null, null, null, '2462059176@qq.com', '15246910797', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('223', '234729', null, null, null, '2472119239@qq.com', '15247010827', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('224', '234731', null, null, null, '2482179302@qq.com', '15247110857', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('225', '234733', null, null, null, '2492239365@qq.com', '15247210887', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('226', '234735', null, null, null, '2502299428@qq.com', '15247310917', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('227', '234737', null, null, null, '2512359491@qq.com', '15247410947', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('228', '234739', null, null, null, '2522419554@qq.com', '15247510977', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('229', '234741', null, null, null, '2532479617@qq.com', '15247611007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('230', '234743', null, null, null, '2542539680@qq.com', '15247711037', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('231', '234745', null, null, null, '2552599743@qq.com', '15247811067', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('232', '234747', null, null, null, '2562659806@qq.com', '15247911097', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('233', '234749', null, null, null, '2572719869@qq.com', '15248011127', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('234', '234751', null, null, null, '2582779932@qq.com', '15248111157', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('235', '234753', null, null, null, '2592839995@qq.com', '15248211187', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('236', '234755', null, null, null, '2602900058@qq.com', '15248311217', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('237', '234757', null, null, null, '2612960121@qq.com', '15248411247', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('238', '234759', null, null, null, '2623020184@qq.com', '15248511277', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('239', '234761', null, null, null, '2633080247@qq.com', '15248611307', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('240', '234763', null, null, null, '2643140310@qq.com', '15248711337', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('241', '234765', null, null, null, '2653200373@qq.com', '15248811367', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('242', '234767', null, null, null, '2663260436@qq.com', '15248911397', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('243', '234769', null, null, null, '2673320499@qq.com', '15249011427', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('244', '234771', null, null, null, '2683380562@qq.com', '15249111457', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('245', '234773', null, null, null, '2693440625@qq.com', '15249211487', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('246', '234775', null, null, null, '2703500688@qq.com', '15249311517', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('247', '234777', null, null, null, '2713560751@qq.com', '15249411547', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('248', '234779', null, null, null, '2723620814@qq.com', '15249511577', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('249', '234781', null, null, null, '2733680877@qq.com', '15249611607', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('250', '234783', null, null, null, '2743740940@qq.com', '15249711637', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('251', '234785', null, null, null, '2753801003@qq.com', '15249811667', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('252', '234787', null, null, null, '2763861066@qq.com', '15249911697', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('253', '234789', null, null, null, '2773921129@qq.com', '15250011727', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('254', '234791', null, null, null, '2783981192@qq.com', '15250111757', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('255', '234793', null, null, null, '2794041255@qq.com', '15250211787', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('256', '234795', null, null, null, '2804101318@qq.com', '15250311817', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('257', '234797', null, null, null, '2814161381@qq.com', '15250411847', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('258', '234799', null, null, null, '2824221444@qq.com', '15250511877', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('259', '234801', null, null, null, '2834281507@qq.com', '15250611907', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('260', '234803', null, null, null, '2844341570@qq.com', '15250711937', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('261', '234805', null, null, null, '2854401633@qq.com', '15250811967', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('262', '234807', null, null, null, '2864461696@qq.com', '15250911997', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('263', '234809', null, null, null, '2874521759@qq.com', '15251012027', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('264', '234811', null, null, null, '2884581822@qq.com', '15251112057', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('265', '234813', null, null, null, '2894641885@qq.com', '15251212087', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('266', '234815', null, null, null, '2904701948@qq.com', '15251312117', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('267', '234817', null, null, null, '2914762011@qq.com', '15251412147', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('268', '234819', null, null, null, '2924822074@qq.com', '15251512177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('269', '234821', null, null, null, '2934882137@qq.com', '15251612207', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('270', '234823', null, null, null, '2944942200@qq.com', '15251712237', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('271', '234825', null, null, null, '2955002263@qq.com', '15251812267', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('272', '234827', null, null, null, '2965062326@qq.com', '15251912297', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('273', '234829', null, null, null, '2975122389@qq.com', '15252012327', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('274', '234831', null, null, null, '2985182452@qq.com', '15252112357', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('275', '234833', null, null, null, '1299724781@qq.com', '15252212387', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('276', '234835', null, null, null, '1289664718@qq.com', '15252312417', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('277', '234837', null, null, null, '1279604655@qq.com', '15252412447', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('278', '234839', null, null, null, '1269544592@qq.com', '15252512477', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('279', '234841', null, null, null, '1259484529@qq.com', '15252612507', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('280', '234843', null, null, null, '1249424466@qq.com', '15252712537', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('281', '234845', null, null, null, '1239364403@qq.com', '15252812567', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('282', '234847', null, null, null, '1229304340@qq.com', '15252912597', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('283', '234849', null, null, null, '1219244277@qq.com', '15253012627', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('284', '234851', null, null, null, '1209184214@qq.com', '15253112657', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('285', '234853', null, null, null, '1199124151@qq.com', '15253212687', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('286', '234855', null, null, null, '1189064088@qq.com', '15253312717', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('287', '234857', null, null, null, '1179004025@qq.com', '15253412747', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('288', '234859', null, null, null, '1168943962@qq.com', '15253512777', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('289', '234861', null, null, null, '1158883899@qq.com', '15253612807', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('290', '234863', null, null, null, '1148823836@qq.com', '15253712837', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('291', '234865', null, null, null, '1138763773@qq.com', '15253812867', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('292', '234867', null, null, null, '1128703710@qq.com', '15253912897', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('293', '234869', null, null, null, '1118643647@qq.com', '15254012927', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('294', '234871', null, null, null, '1108583584@qq.com', '15254112957', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('295', '234873', null, null, null, '1098523521@qq.com', '15254212987', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('296', '234875', null, null, null, '1088463458@qq.com', '15254313017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('297', '234877', null, null, null, '1078403395@qq.com', '15254413047', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('298', '234879', null, null, null, '1068343332@qq.com', '15254513077', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('299', '234881', null, null, null, '1058283269@qq.com', '15254613107', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('300', '234883', null, null, null, '1048223206@qq.com', '15254713137', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('301', '234885', null, null, null, '1038163143@qq.com', '15254813167', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('302', '234887', null, null, null, '1028103080@qq.com', '15254913197', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('303', '234889', null, null, null, '1018043017@qq.com', '15255013227', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('304', '234891', null, null, null, '1007982954@qq.com', '15255113257', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('305', '234893', null, null, null, '997922891@qq.com', '15255213287', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('306', '234895', null, null, null, '987862828@qq.com', '15255313317', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('307', '234897', null, null, null, '977802765@qq.com', '15255413347', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('308', '234899', null, null, null, '967742702@qq.com', '15255513377', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('309', '234901', null, null, null, '957682639@qq.com', '15255613407', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('310', '234903', null, null, null, '947622576@qq.com', '15255713437', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('311', '234905', null, null, null, '937562513@qq.com', '15255813467', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('312', '234907', null, null, null, '927502450@qq.com', '15255913497', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('313', '234909', null, null, null, '917442387@qq.com', '15256013527', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('314', '234911', null, null, null, '907382324@qq.com', '15256113557', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('315', '234913', null, null, null, '897322261@qq.com', '15256213587', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('316', '234915', null, null, null, '887262198@qq.com', '15256313617', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('317', '234917', null, null, null, '877202135@qq.com', '15256413647', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('318', '234919', null, null, null, '867142072@qq.com', '15256513677', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('319', '234921', null, null, null, '857082009@qq.com', '15256613707', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('320', '234923', null, null, null, '847021946@qq.com', '15256713737', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('321', '234925', null, null, null, '836961883@qq.com', '15256813767', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('322', '234927', null, null, null, '826901820@qq.com', '15256913797', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('323', '234929', null, null, null, '816841757@qq.com', '15257013827', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('324', '234931', null, null, null, '806781694@qq.com', '15257113857', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('325', '234933', null, null, null, '796721631@qq.com', '15257213887', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('326', '234935', null, null, null, '786661568@qq.com', '15257313917', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('327', '234937', null, null, null, '776601505@qq.com', '15257413947', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('328', '234939', null, null, null, '766541442@qq.com', '15257513977', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('329', '234941', null, null, null, '756481379@qq.com', '15257614007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('330', '234943', null, null, null, '746421316@qq.com', '15257714037', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('331', '234945', null, null, null, '736361253@qq.com', '15257814067', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('332', '234947', null, null, null, '726301190@qq.com', '15257914097', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('333', '234949', null, null, null, '716241127@qq.com', '15258014127', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('334', '234951', null, null, null, '706181064@qq.com', '15258114157', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('335', '234953', null, null, null, '696121001@qq.com', '15258214187', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('336', '234955', null, null, null, '686060938@qq.com', '15258314217', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('337', '234957', null, null, null, '676000875@qq.com', '15258414247', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('338', '234959', null, null, null, '665940812@qq.com', '15258514277', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('339', '234961', null, null, null, '655880749@qq.com', '15258614307', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('340', '234963', null, null, null, '645820686@qq.com', '15258714337', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('341', '234965', null, null, null, '635760623@qq.com', '15258814367', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('342', '234967', null, null, null, '625700560@qq.com', '15258914397', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('343', '234969', null, null, null, '615640497@qq.com', '15259014427', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('344', '234971', null, null, null, '605580434@qq.com', '15259114457', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('345', '234973', null, null, null, '595520371@qq.com', '15259214487', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('346', '234975', null, null, null, '585460308@qq.com', '15259314517', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('347', '234977', null, null, null, '575400245@qq.com', '15259414547', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('348', '234979', null, null, null, '565340182@qq.com', '15259514577', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('349', '234981', null, null, null, '555280119@qq.com', '15259614607', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('350', '234983', null, null, null, '545220056@qq.com', '15259714637', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('351', '234985', null, null, null, '535159993@qq.com', '15259814667', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('352', '234987', null, null, null, '525099930@qq.com', '15259914697', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('353', '234989', null, null, null, '515039867@qq.com', '15260014727', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('354', '234991', null, null, null, '504979804@qq.com', '15260114757', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('355', '234993', null, null, null, '494919741@qq.com', '15260214787', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('356', '234995', null, null, null, '484859678@qq.com', '15260314817', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('357', '234997', null, null, null, '474799615@qq.com', '15260414847', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('358', '234999', null, null, null, '464739552@qq.com', '15260514877', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('359', '235001', null, null, null, '454679489@qq.com', '15260614907', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('360', '235003', null, null, null, '444619426@qq.com', '15260714937', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('361', '235005', null, null, null, '434559363@qq.com', '15260814967', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('362', '235007', null, null, null, '424499300@qq.com', '15260914997', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('363', '235009', null, null, null, '414439237@qq.com', '15261015027', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('364', '235011', null, null, null, '404379174@qq.com', '15261115057', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('365', '235013', null, null, null, '394319111@qq.com', '15261215087', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('366', '235015', null, null, null, '384259048@qq.com', '15261315117', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('367', '235017', null, null, null, '374198985@qq.com', '15261415147', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('368', '235019', null, null, null, '364138922@qq.com', '15261515177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('369', '235021', null, null, null, '354078859@qq.com', '15261615207', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('370', '235023', null, null, null, '344018796@qq.com', '15261715237', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('371', '235025', null, null, null, '333958733@qq.com', '15261815267', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('372', '235027', null, null, null, '323898670@qq.com', '15261915297', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('373', '235029', null, null, null, '313838607@qq.com', '15262015327', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('374', '235031', null, null, null, '303778544@qq.com', '15262115357', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('375', 'wangyilin', '96e79218965eb72c92a549dd5a330112', '王渊冉', '123123123123123123', '12345678@qq.com', '12345678910', '000001', '石铁大软工', '050043sadfs', null, '1', '4', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', 'sadfasdf');
INSERT INTO `user` VALUES ('376', '123123123', 'f5bb0c8de146c67b44babbf4e6584cc0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('377', 'wangyuanran', 'b0e8f0875ee4bbc17119b276827ccb20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('378', 'wangyi', '40c7bc25c943b9e8977636aafe5d69e9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('379', 'wangancheng', 'aadc4175f00cafad234f7ee80aaa5b16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('380', 'liyang', '84360a977c722d6ac7b3c8be5e07219c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('381', 'chenchang', '695c24ac4e89c15ada8c76dfb988fc5f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
