/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : ewsdb

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-05-29 07:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_equipment
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipment`;
CREATE TABLE `tb_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialNumber` varchar(255) DEFAULT NULL,
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `etype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `estatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productionDate` date DEFAULT NULL,
  `FirstUseTime` date DEFAULT NULL,
  `examinationCycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LastRepairTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equipment
-- ----------------------------
INSERT INTO `tb_equipment` VALUES ('1', 'A0101', 'X射线正电子发射断层扫描仪', '诊断设备类', 'Malfunction', '2015-07-16', '2015-08-15', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('2', 'B1050', '超声诊断设备', '诊断设备类', 'Nolmal', '2017-06-14', '2017-09-01', '10Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('3', 'F0382', '功能检查设备', '诊断设备类', 'Nolmal', '2018-07-20', '2018-08-27', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('4', 'I1325', '内窥镜手术器械控制系统', '诊断设备类', 'Nolmal', '2019-02-08', '2019-02-15', '10Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('5', 'N6572', '核内照射治疗设备', '治疗设备类', 'Nolmal', '2015-05-27', '2015-07-03', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('6', 'S5987', '实验诊断设备', '诊断设备类', 'Nolmal', '2015-07-17', '2015-07-30', '7Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('7', 'N8412', '核胶体治疗装备', '治疗设备类', 'Nolmal', '2018-07-19', '2017-08-15', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('8', 'C4551', '正电子发射型磁共振成像系统', '诊断设备类', 'Nolmal', '2014-03-01', '2014-04-01', '7Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('9', 'H0548', '病房护理设备', '治疗设备类', 'Nolmal', '2017-11-22', '2017-12-08', '3Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('10', 'E1000', '手术设备', '治疗设备类', 'Nolmal', '2016-08-12', '2016-09-09', '1Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('11', 'G1549', '重离子放射治疗系统', '治疗设备类', 'Nolmal', '2015-07-19', '2015-10-09', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('12', 'L1453', '电疗治疗设备', '治疗设备类', 'Nolmal', '2018-03-08', '2018-04-05', '7Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('13', 'L4458', '超声治疗设备', '治疗设备类', 'Nolmal', '2015-06-18', '2015-08-12', '10Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('14', 'K6666', '激光设备—医用激光发生器', '治疗设备类', 'Nolmal', '2012-12-22', '2012-08-11', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('15', 'T0010', '透析治疗设备', '治疗设备类', 'Nolmal', '2018-07-07', '2018-04-12', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('16', 'J1201', '急救设备', '治疗设备类', 'Nolmal', '2018-03-27', '2018-03-30', '1Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('17', 'G5468', '质子放射治疗系统', '治疗设备类', 'Nolmal', '2016-01-16', '2016-02-13', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('18', 'N0857', '核敷贴治疗', '治疗设备类', 'Malfunction', '2017-07-27', '2017-08-09', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('19', 'M4235', '消毒灭菌设备', '辅助设备类', 'Nolmal', '2019-01-18', '2019-02-01', '1Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('20', 'D0575', '制冷设备', '辅助设备类', 'Nolmal', '2019-02-02', '2019-02-08', '7Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('21', 'P3587', '中心吸引及供氧系统', '辅助设备类', 'Nolmal', '2018-01-27', '2018-02-04', '3Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('22', 'Q1787', '空调设备', '辅助设备类', 'Nolmal', '2017-12-15', '2018-01-05', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('23', 'V1872', '制药机械设备', '辅助设备类', 'Nolmal', '2019-02-10', '2019-02-28', '7Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('24', 'O9284', '血库设备', '辅助设备类', 'Nolmal', '2019-03-08', '2019-03-10', '1Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('25', 'W4897', '医用数据处理设备', '辅助设备类', 'Nolmal', '2018-11-23', '2018-12-15', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('26', 'R4890', '医用录像摄影设备', '辅助设备类', 'Nolmal', '2017-11-29', '2018-01-03', '30Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('27', 'A0564', 'X射线计算机断层扫描仪', '诊断设备类', 'Nolmal', '2013-11-09', '2013-12-06', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('28', 'A0001', '直线加速器', '诊断设备类', 'Malfunction', '2015-05-27', '2015-06-24', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('29', 'G1584', '伽玛射线立体定向放射治疗系统', '治疗设备类', 'Nolmal', '2016-11-24', '2016-12-10', '15Days', '2019-05-27 13:37:02');
INSERT INTO `tb_equipment` VALUES ('30', 'C3484', '磁共振成像系统', '诊断设备类', 'Nolmal', '2014-07-16', '2014-07-27', '7Days', '2019-05-27 13:37:02');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `lastLoginTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'laozhang', '96e79218965eb72c92a549dd5a330112', 'abc@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('2', 'zhangxiaoxia', '96e79218965eb72c92a549dd5a330112', 'zhang@qq.com', 'checker', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('3', 'guoyongkang', '96e79218965eb72c92a549dd5a330112', '666@qq.com', 'checker', '2019-05-21', '2019-05-28');
INSERT INTO `tb_user` VALUES ('4', 'a', 'e10adc3949ba59abbe56e057f20f883e', '456@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('5', 'b', 'e10adc3949ba59abbe56e057f20f883e', '123@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('6', 'c', 'e10adc3949ba59abbe56e057f20f883e', '115@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('7', 'd', 'e10adc3949ba59abbe56e057f20f883e', '117@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('8', 'wanmingtao', '96e79218965eb72c92a549dd5a330112', '222@163.com', 'checker', '2019-05-21', '2019-05-28');
INSERT INTO `tb_user` VALUES ('9', 'kaikai', '96e79218965eb72c92a549dd5a330112', '333@qq.com', 'checker', '2019-05-21', '2019-05-28');
INSERT INTO `tb_user` VALUES ('10', 'xiaowangxiao', '96e79218965eb72c92a549dd5a330112', '444@qq.com', 'checker', '2019-05-21', '2019-05-28');
INSERT INTO `tb_user` VALUES ('11', 'liangronghao', '96e79218965eb72c92a549dd5a330112', '555@qq.com', 'checker', '2019-05-21', '2019-05-28');
INSERT INTO `tb_user` VALUES ('12', 'e', 'e10adc3949ba59abbe56e057f20f883e', '421@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('13', 'f', 'e10adc3949ba59abbe56e057f20f883e', '115@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('14', 'g', 'e10adc3949ba59abbe56e057f20f883e', '185@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('15', 'h', 'e10adc3949ba59abbe56e057f20f883e', '489@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('16', 'i', 'e10adc3949ba59abbe56e057f20f883e', '187@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('17', 'j', 'e10adc3949ba59abbe56e057f20f883e', '871@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('18', 'k', 'e10adc3949ba59abbe56e057f20f883e', '498@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('19', 'l', 'e10adc3949ba59abbe56e057f20f883e', '849@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('20', 'm', 'e10adc3949ba59abbe56e057f20f883e', '784@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('21', 'n', 'e10adc3949ba59abbe56e057f20f883e', '176@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('22', 'o', 'e10adc3949ba59abbe56e057f20f883e', '118@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('23', 'p', 'e10adc3949ba59abbe56e057f20f883e', '187@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('24', 'q', 'e10adc3949ba59abbe56e057f20f883e', '154@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('25', 'r', 'e10adc3949ba59abbe56e057f20f883e', '165@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('26', 's', 'e10adc3949ba59abbe56e057f20f883e', '867@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('27', 't', 'e10adc3949ba59abbe56e057f20f883e', '546@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('28', 'u', 'e10adc3949ba59abbe56e057f20f883e', '354@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('29', 'v', 'e10adc3949ba59abbe56e057f20f883e', '681@163.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('30', 'x', 'e10adc3949ba59abbe56e057f20f883e', '579@163.com', 'employee', '2019-05-22', '2019-05-22');
