/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : rongyitui

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-06-30 18:45:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for officialtask
-- ----------------------------
DROP TABLE IF EXISTS `officialtask`;
CREATE TABLE `officialtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allmoney` decimal(19,2) DEFAULT NULL,
  `approvaltime` varchar(255) DEFAULT NULL,
  `completenumber` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `examine` int(11) NOT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `receiveCount` int(11) NOT NULL,
  `singmoney` decimal(19,2) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `specialnumber` int(11) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `taskimg` varchar(255) DEFAULT NULL,
  `tasktype` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `recommend` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of officialtask
-- ----------------------------

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
-- Table structure for usertask
-- ----------------------------
DROP TABLE IF EXISTS `usertask`;
CREATE TABLE `usertask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allmoney` decimal(19,2) DEFAULT NULL,
  `approvaltime` varchar(255) DEFAULT NULL,
  `completenumber` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `examine` int(11) NOT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `receiveCount` int(11) NOT NULL,
  `singmoney` decimal(19,2) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `specialnumber` int(11) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `taskimg` varchar(255) DEFAULT NULL,
  `tasktype` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_muxhuhc99ja55i53apbcpdhxr` (`userid`),
  CONSTRAINT `FK_muxhuhc99ja55i53apbcpdhxr` FOREIGN KEY (`userid`) REFERENCES `webuser` (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertask
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webuser
-- ----------------------------
