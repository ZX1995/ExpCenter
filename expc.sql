/*
Navicat MySQL Data Transfer

Source Server         : minic
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : expc

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-05-16 19:45:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', '', null, 'a');

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(255) DEFAULT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `_content` varchar(255) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  `imgUri` varchar(255) DEFAULT NULL,
  `keyWords` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `refSource` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rollLevel` int(11) NOT NULL,
  `stickieLevel` int(11) NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `_time` datetime DEFAULT NULL,
  `_title` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of board
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `fileDir` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tId` int(11) NOT NULL,
  PRIMARY KEY (`fileDir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for navigationitem
-- ----------------------------
DROP TABLE IF EXISTS `navigationitem`;
CREATE TABLE `navigationitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `_content` longtext,
  `createPerson` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navigationitem
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_content` varchar(255) DEFAULT NULL,
  `publishRole` int(11) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `_time` datetime DEFAULT NULL,
  `_title` varchar(255) DEFAULT NULL,
  `cate` varchar(255) DEFAULT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  `imgUri` varchar(255) DEFAULT NULL,
  `keyWords` varchar(255) DEFAULT NULL,
  `refSource` varchar(255) DEFAULT NULL,
  `rollLevel` int(11) NOT NULL,
  `stickieLevel` int(11) NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
