/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : rongyitui

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-06-25 17:49:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test
-- ----------------------------

-- ----------------------------
-- Table structure for webtask
-- ----------------------------
DROP TABLE IF EXISTS `webtask`;
CREATE TABLE `webtask` (
  `ut_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot` bit(1) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `officialCandidates` bit(1) NOT NULL,
  `period` int(11) NOT NULL,
  `receiveCount` int(11) NOT NULL,
  `ut_allmoney` decimal(19,2) DEFAULT NULL,
  `ut_approvaltime` varchar(255) DEFAULT NULL,
  `ut_completenumber` varchar(255) DEFAULT NULL,
  `ut_desc` varchar(255) DEFAULT NULL,
  `ut_description` varchar(255) DEFAULT NULL,
  `ut_endtime` datetime DEFAULT NULL,
  `ut_examine` int(11) NOT NULL,
  `ut_iphone` varchar(255) DEFAULT NULL,
  `ut_number` int(11) NOT NULL,
  `ut_singmoney` decimal(19,2) DEFAULT NULL,
  `ut_special` varchar(255) DEFAULT NULL,
  `ut_specialnumber` int(11) NOT NULL,
  `ut_starttime` datetime DEFAULT NULL,
  `ut_taskimg` varchar(255) DEFAULT NULL,
  `ut_tasktype` int(11) NOT NULL,
  `ut_time` datetime DEFAULT NULL,
  `ut_title` varchar(255) DEFAULT NULL,
  `ut_type` varchar(255) DEFAULT NULL,
  `ut_userid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ut_id`),
  KEY `FK_ld2ovj7b96kr6uxpantkrfau1` (`ut_userid`),
  CONSTRAINT `FK_ld2ovj7b96kr6uxpantkrfau1` FOREIGN KEY (`ut_userid`) REFERENCES `webuser` (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webtask
-- ----------------------------
INSERT INTO `webtask` VALUES ('1', '\0', null, '\0', '0', '0', '1.00', null, null, '任务一', null, null, '0', '130619683201', '1', '1.00', null, '0', null, null, '0', null, '任务一', null, null, null);
INSERT INTO `webtask` VALUES ('2', '', null, '\0', '0', '0', '2.00', null, null, '任务二', null, null, '0', '130619683201', '1', '2.00', null, '0', null, null, '0', null, '任务二', null, null, null);
INSERT INTO `webtask` VALUES ('3', '', null, '\0', '0', '0', '3.00', null, null, '任务三', null, null, '0', '130619683201', '1', '3.00', null, '0', null, null, '0', null, '任务三', null, null, null);
INSERT INTO `webtask` VALUES ('4', '', null, '\0', '0', '0', '4.00', null, null, '任务四', null, null, '0', '130619683201', '1', '4.00', null, '0', null, null, '0', null, '任务四', null, null, null);
INSERT INTO `webtask` VALUES ('5', '', null, '', '0', '0', '5.00', null, null, '任务五', null, null, '0', '130619683201', '1', '5.00', null, '0', null, null, '0', null, '任务五', null, null, null);
INSERT INTO `webtask` VALUES ('6', '', null, '', '0', '0', '6.00', null, null, '任务六', null, null, '0', '130619683201', '1', '6.00', null, '0', null, null, '0', null, '任务六', null, null, null);
INSERT INTO `webtask` VALUES ('7', '', null, '', '0', '0', '7.00', null, null, '任务七', null, null, '0', '130619683201', '1', '7.23', null, '0', null, null, '0', null, '任务七', null, null, '2015-06-24 21:03:05');

-- ----------------------------
-- Table structure for webuser
-- ----------------------------
DROP TABLE IF EXISTS `webuser`;
CREATE TABLE `webuser` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_alipayname` varchar(255) DEFAULT NULL,
  `us_alipaynumber` varchar(255) DEFAULT NULL,
  `us_allexpmoney` decimal(19,2) DEFAULT NULL,
  `us_allincmoney` decimal(19,2) DEFAULT NULL,
  `us_allrecmoney` decimal(19,2) DEFAULT NULL,
  `us_allwitmoney` decimal(19,2) DEFAULT NULL,
  `us_email` varchar(255) DEFAULT NULL,
  `us_frozenmoney` varchar(255) DEFAULT NULL,
  `us_headimg` varchar(255) DEFAULT NULL,
  `us_iphone` varchar(255) DEFAULT NULL,
  `us_isvip` int(11) NOT NULL,
  `us_login` varchar(255) DEFAULT NULL,
  `us_loginip` varchar(255) DEFAULT NULL,
  `us_logintime` datetime DEFAULT NULL,
  `us_money` decimal(19,2) DEFAULT NULL,
  `us_nicknamen` varchar(255) DEFAULT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_regip` varchar(255) DEFAULT NULL,
  `us_regtime` varchar(255) DEFAULT NULL,
  `us_state` varchar(255) DEFAULT NULL,
  `us_tid` int(11) NOT NULL,
  `us_tnumber` int(11) NOT NULL,
  `us_vip_endtime` datetime DEFAULT NULL,
  `us_vip_starttime` datetime DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webuser
-- ----------------------------
INSERT INTO `webuser` VALUES ('1', null, null, null, null, null, null, null, null, null, null, '0', '395822362@qq.com', null, null, null, '123', 'qq395822362', null, null, null, '0', '0', null, null);
