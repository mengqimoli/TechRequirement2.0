/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : techrequirement

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-12-27 11:37:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `requirement`
-- ----------------------------
DROP TABLE IF EXISTS `requirement`;
CREATE TABLE `requirement` (
  `sta_Id` bigint(20) DEFAULT NULL,
  `user_Id` bigint(20) NOT NULL,
  `reqId` bigint(20) NOT NULL AUTO_INCREMENT,
  `reqNum` varchar(20) NOT NULL,
  `reqXSSH` int(11) DEFAULT NULL,
  `reqXSSHYJ` varchar(255) DEFAULT NULL,
  `reqBMSH` int(11) DEFAULT NULL,
  `reqBMSHYJ` varchar(255) DEFAULT NULL,
  `dept_Id` bigint(20) DEFAULT NULL,
  `put_Id` bigint(20) DEFAULT NULL,
  `area_Id` bigint(20) DEFAULT NULL,
  `reqJGMC` varchar(255) DEFAULT NULL,
  `reqTXDZ` varchar(255) DEFAULT NULL,
  `reqDWWZ` varchar(255) DEFAULT NULL,
  `reqDZYX` varchar(255) DEFAULT NULL,
  `reqFRDB` varchar(255) DEFAULT NULL,
  `reqYZBM` varchar(255) DEFAULT NULL,
  `reqLXR` varchar(255) DEFAULT NULL,
  `reqGDDH` varchar(255) DEFAULT NULL,
  `reqYDDH` varchar(255) DEFAULT NULL,
  `reqCZ` varchar(255) DEFAULT NULL,
  `reqJGSX` varchar(255) DEFAULT NULL,
  `reqJGJJ` text,
  `reqJSXQMC` varchar(255) DEFAULT NULL,
  `reqQSXQNF` int(11) DEFAULT NULL,
  `reqJZXQNF` int(11) DEFAULT NULL,
  `reqJSXQGS` text,
  `reqJSXQGS1` text,
  `reqJSXQGS2` text,
  `reqGJZ` varchar(255) DEFAULT NULL,
  `reqYJLX` varchar(255) DEFAULT NULL,
  `reqXKFL` varchar(255) DEFAULT NULL,
  `reqXQJSSSLY` varchar(255) DEFAULT NULL,
  `reqQTJSMS` varchar(255) DEFAULT NULL,
  `reqXQJSYYHY` varchar(255) DEFAULT NULL,
  `reqJSXQHZMS` varchar(255) DEFAULT NULL,
  `reqHZYXDW` varchar(255) DEFAULT NULL,
  `reqJHZTZ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reqId`),
  KEY `user_Id` (`user_Id`),
  KEY `dept_Id` (`dept_Id`),
  KEY `put_Id` (`put_Id`),
  KEY `area_Id` (`area_Id`),
  KEY `sta_Id` (`sta_Id`),
  CONSTRAINT `requirement_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `user` (`userId`),
  CONSTRAINT `requirement_ibfk_2` FOREIGN KEY (`dept_Id`) REFERENCES `department` (`deptId`),
  CONSTRAINT `requirement_ibfk_3` FOREIGN KEY (`put_Id`) REFERENCES `putunder` (`putId`),
  CONSTRAINT `requirement_ibfk_4` FOREIGN KEY (`area_Id`) REFERENCES `area` (`areaId`),
  CONSTRAINT `requirement_ibfk_5` FOREIGN KEY (`sta_Id`) REFERENCES `state` (`staId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of requirement
-- ----------------------------
INSERT INTO `requirement` VALUES ('4', '4', '36', '20170406110001', '0', '', '0', null, '1', '19', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '超级超级技术超级超级技术超级超级技术超级超级技术哈勃望远镜五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号', '2017', '2020', '无', '无', '无', '无, 无, 无, , ', '技术推广与科技服务', ', , ', '电子信息技术, 光机电一体化, 其他技术(注明)', '高铁技术', '交通运输、仓储和邮政业, 铁路运输业, 铁路旅客运输', '合作研发', '河北科技大学', '100');
INSERT INTO `requirement` VALUES ('1', '4', '37', '20170406110002', '0', null, '0', null, null, '3', '1', '石家庄铁道大学软件工程系', '石家庄北二环东路17号', 'http://www.stdu.edu.cn/', '123456789@qq.com', '王岳森', '50043', '王艺霖', '12312312', '12456789322', '123', '高等院校', '阿萨法士大夫撒旦法撒旦法斯蒂芬方格网供热', '超级高铁技术', '2222', '4444', '撒飞洒地方', '凤凰股份', '问其他人', '阿斯顿发放, asdfsadf, , , ', '基础研究', '电子与通信技术, 化学工程基础学科, 化工热力学', '', '', ', , ', '独立研发', '', '3333');
INSERT INTO `requirement` VALUES ('3', '4', '38', '20170406110003', '0', '有点差,不太好', '0', null, null, '18', '1', '石家庄铁道大学软件工程系', '石家庄北二环东路17号', 'http://www.stdu.edu.cn/', '123@qq.com', '12', '50043', '123', '12312312', '12345678910', '123456789', '高等院校', 'dgdsagsgsafsd', '高铁技术之王', '2222', '3333', '杀光大师的撒范德萨', '啥地方撒地方撒地方', '啥地方撒的发生发的', '撒的发生的, 撒地方撒地方, 第三方很愉快, 急复古风格, ', '研究发展与成果应用', ', , ', '光机电一体化, 新材料及应用技术, 先进制造技术, 其他技术(注明)', '高铁技术', '科学研究、技术服务和地质勘查业, 研究与试验发展, 自然科学研究与试验发展', '委托研发', '', '23');
INSERT INTO `requirement` VALUES ('1', '4', '39', '20170406110004', '0', null, '0', null, null, '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '很强高铁技术rsysysty', '2312', '2313', '撒旦法撒旦法斯蒂芬', '电话费贵航股份', '问题沃尔特温特任务同时地方', '阿桑, 环境, 发, 多喝水, ', '生产性活动', ', , ', '电子信息技术, 软件, 新能源与高校节能技术', '', '租赁和商务服务业, 租赁业, 机械设备租赁', '其它', '', '3333');
INSERT INTO `requirement` VALUES ('5', '4', '40', '20170406110005', '0', '差点火候', '0', null, null, '3', '12', '石家庄铁道大学软件工程系', '石家庄北二环东路17号', 'http://www.stdu.edu.cn/', '123@qq.com', 'sdafsdf', '50043', 'safsgdfg', '234234', '12456789322', '1324324', '高等院校', 'jghjghjghjgjg', '月球高铁', '2222', '3333', ' fghgfjsf', 'hfgh', 'gbdfbffhgf', 'hfg, asdfsjghjgj, sahhjgj, , ', '基础研究', '基础医学, 药理学, 基础药理学', '', '', ', , ', '合作研发', '清华大学', '3333');
INSERT INTO `requirement` VALUES ('4', '4', '41', '20170406110006', '0', '', '0', null, '17', '18', '13', '石家庄铁道大学软件工程系', '石家庄北二环东路17号', 'http://www.stdu.edu.cn/', '123@qq.com', '3424', '50043', 'asdfsadf', '234234', '12456789322', '234234', '高等院校', 'asdfsadfasdfsadfg', '火星高铁', '2222', '3333', ' 梵蒂冈第三个', 'sadfsad', 'gdfgsdgh', 'asdfsadf, 郭德纲, 娃儿, , ', '应用研究', ', , ', '电子信息技术, 光机电一体化, 新能源与高校节能技术', '', '文化、体育和娱乐业, 新闻出版业, 新闻业', '委托研发', '', '2222');
INSERT INTO `requirement` VALUES ('6', '4', '42', '20170406110007', '0', '', '0', '', '2', '3', '14', '石家庄铁道大学软件工程系', '石家庄北二环东路17号', 'http://www.stdu.edu.cn/', '123@qq.com', 'egadf', '50043', 'asdfsadf', '324234', '12456789322', '3243', '高等院校', 'sagfgdafg', 'dfgdfgd', '2322', '3333', 'safasdf', 'g', 'dfghfdhfgjh', 'jghjgh, khjkg, , , ', '试验发展', ', , ', '软件, 资源与环境保护新技术, 其他技术(注明)', 'sdgfsdfgdsfg', '教育, 教育, 学前教育', '合作研发', 'sdfgdsfg', '45345');
INSERT INTO `requirement` VALUES ('4', '4', '43', '20170413010008', '0', '', '0', null, '2', '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '超级火星探测技术', '2017', '2020', 're2', '热', '哈热', '是否, 萨德, , , ', '应用研究', ', , ', '光机电一体化, 新能源与高校节能技术', '', '文化、体育和娱乐业, 新闻出版业, 新闻业', '委托研发', '', '2020');
INSERT INTO `requirement` VALUES ('1', '4', '44', '20170413010009', '0', null, '0', null, null, '15', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '哈勃望远镜五号', '2020', '2030', '哈勃', '望穿秋水', '眼睛', '啥地方, 的说法, , , ', '基础研究', '工程与技术科学基础学科, 控制科学与技术, 自动控制应用理论', '', '', ', , ', '独立研发', '', '123');
INSERT INTO `requirement` VALUES ('3', '4', '45', '20170413010010', '0', '不太牛逼', '0', null, null, '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '天河一号', '2018', '2020', '请问', '确定是否', '手动阀', 'asd, 啥地方, , , ', '生产性活动', ', , ', '光机电一体化, 新能源与高校节能技术', '', '教育, 教育, 学前教育', '其它', '', '321');
INSERT INTO `requirement` VALUES ('4', '4', '46', '20170413010011', '0', '可以不错', '0', null, '2', '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '嫦娥五号', '2017', '2018', '请问', '啥地方', '规划', '20, 的, , , ', '研究发展与成果应用', ', , ', '光机电一体化, 软件, 其他技术(注明)', 'asdfsadf', '水利、环境和公共设施管理业, 水利管理业, 防洪管理', '委托研发', '', '51.5');
INSERT INTO `requirement` VALUES ('4', '4', '48', '20170418070012', '0', '', '0', null, '25', '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '超级超级技术超级超级技术超级超级技术超级超级技术哈勃望远镜五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号嫦娥五号', '2017', '2018', '沙发的说法', '而武器二', '法规和规范', '发的, asdfsadf, , , ', '基础研究', '基础医学, 病理学, 病理生物学', '', '', ', , ', '委托研发', '', '201');
INSERT INTO `requirement` VALUES ('2', '4', '49', '20170418070013', '0', null, '0', null, null, '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '天宫五号', '2019', '2020', '全额无无群', '十多个大三', '申达股份', '电饭锅, 发鬼地方个, sdfsdf, , ', '基础研究', '物理学, 概率论, 几何概率', '', '', ', , ', '委托研发', '', '132');
INSERT INTO `requirement` VALUES ('4', '4', '50', '20170418070014', '0', '', '0', null, '22', '3', '1', '石家庄铁道大学软件工程系', 'qweqweqwe', 'http://www.stdu.edu.cn/', 'qweqeqe@qq.com', 'sdfsadf', '050043', 'asdfsdfasdfasf', '12312', '11111111111', '3123', '高等院校', '是否adf啥地方搜狗梵蒂冈的啥地方发过火', '嫦娥三号', '2020', '2022', '啥地方', '好', '的双方各', '大商股份, 申达股份, , , ', '基础研究', '预防医学与公共卫生学, 基础医学', '', '', ', , ', '独立研发', '', '111');
INSERT INTO `requirement` VALUES ('1', '375', '51', '20170503090015', '0', null, '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程1', '2020', '2022', 'asdrg', 'dfgf', 'dgdgd', 'g, dfg, dg, , ', '基础研究', '物理学, 数理统计学, 抽样理论', '', '', ', , ', '独立研发', '', '234');
INSERT INTO `requirement` VALUES ('1', '375', '52', '20170503090016', '0', null, '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程2', '2018', '2020', '蛋糕店关闭', '积分工会', 'HKBV', 'DAF, SDF, SADF, , ', '应用研究', ', , ', '电子信息技术, 新能源与高校节能技术', '', '文化、体育和娱乐业, 新闻出版业, 新闻业', '委托研发', '', '12');
INSERT INTO `requirement` VALUES ('3', '375', '53', '20170503090017', '0', '差得远', '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程3', '2017', '2020', '撒个三大沙发', '规范化积分工会  ', '工会经费供货商好', '打发, 对方如果, , , ', '试验发展', ', , ', '新材料及应用技术, 先进制造技术, 现代农业技术', '', '公共管理和社会组织, 中国共产党机关', '合作研发', '啊搜地方', '143');
INSERT INTO `requirement` VALUES ('2', '375', '54', '20170503090018', '0', null, '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程04', '2018', '2020', '个人的身份', 'dsfgfdg', 'wrgerg', 'sadf, sdf, , , ', '研究发展与成果应用', ', , ', '生物制药技术, 资源与环境保护新技术, 其他技术(注明)', 'asdf', '电力、燃气及水的生产和供应业, 化学纤维制造业, 纤维素纤维原料及纤维制造', '其它', '', '23432');
INSERT INTO `requirement` VALUES ('2', '375', '55', '20170503090019', '0', null, '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程005', '2018', '2020', '沙发斯蒂芬', '丧失的方法 ', '电饭锅电饭锅', '分数, 和, 我, , ', '技术推广与科技服务', ', , ', '电子信息技术, 光机电一体化, 其他技术(注明)', '啊搜地方', '水利、环境和公共设施管理业, 公共设施管理业, 市政公共设施管理', '独立研发', '', '1212');
INSERT INTO `requirement` VALUES ('5', '375', '56', '20170503090020', '0', '', '0', '小子还不行啊', '3', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程006', '2018', '2020', '撒范德萨', '二恶烷若', '隔热', '3324, 234, 电饭锅, , ', '生产性活动', ', , ', '软件, 现代农业技术, 新能源与高校节能技术', '', '教育, 教育, 学前教育', '委托研发', '', '34234');
INSERT INTO `requirement` VALUES ('5', '375', '57', '20170503090021', '0', '', '0', '可惜了就是不让你过', '2', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程007', '2018', '2022', '萨德尔', '人', '的话题浩特', '顺风耳, 额外热若, 拉开了健康, , ', '基础研究', '临床医学, 病理学, 病理生物学', '', '', ', , ', '合作研发', ' 方法与人', '687');
INSERT INTO `requirement` VALUES ('5', '375', '58', '20170503090022', '0', '', '0', '就是不让过', '1', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程0088', '2020', '2022', '深啡网', '了他和她', '任何人', '啊搜地方, 娃儿, 4替换, , ', '应用研究', ', , ', '光机电一体化, 新能源与高校节能技术', '', '水利、环境和公共设施管理业, 水利管理业, 防洪管理', '其它', '', '345');
INSERT INTO `requirement` VALUES ('6', '375', '59', '20170503090023', '0', '', '0', '', '3', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程0099', '2020', '2023', '撒地方撒地方', '邘', '规划局规划局', '隔热, 儿童, , , ', '试验发展', ', , ', '生物制药技术, 资源与环境保护新技术', '', '农、林、牧、渔业, 畜牧业', '独立研发', '', '46456');
INSERT INTO `requirement` VALUES ('6', '375', '60', '20170503090024', '0', '', '0', '', '2', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程00101', '2019', '2024', '发', '规范', '贵航股份', '撒打发大师傅挨个 , 个电饭锅电饭锅 , , , ', '研究发展与成果应用', ', , ', '生物制药技术, 其他技术(注明)', '撒打发', '电力、燃气及水的生产和供应业, 农副食品加工业, 谷物磨制', '委托研发', '', '234234');
INSERT INTO `requirement` VALUES ('3', '375', '61', '20170503090025', '0', '差一点点就通过了加油哦', '0', null, null, '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程001022', '2025', '2026', '鹅鹅鹅去', '他哥哥', 'as顾问费', ' 我, 如果让他 , 有 , , ', '基础研究', '预防医学与公共卫生学, 基础医学', '', '', ', , ', '独立研发', '', '3234');
INSERT INTO `requirement` VALUES ('6', '375', '62', '20170503090026', '0', '', '0', '', '1', '1', '4', '石铁大软工', 'sadfasdf', 'http://www.uestc.edu.cn/', 'sadfsadfa@qq.com', 'sadfasdf', '050043sadfs', 'adfsafsadf', '234234', '12345678910', '2342', '研究机构', 'sadfasdf', '石铁大软件工程0010313', '2027', '2029', '沙发的说法额', '而国外', '天津体育', '3温热, 软工, 的三分, , ', '生产性活动', ', , ', '电子信息技术, 新材料及应用技术, 新能源与高校节能技术', '', '信息传输、计算机服务和软件业, 电信和其他信息传输服务业, 电信', '委托研发', '', '1234');
