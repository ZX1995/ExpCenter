/*
Navicat MySQL Data Transfer

Source Server         : minic
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : expc

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-05-25 19:58:27
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
INSERT INTO `admin` VALUES ('b', null, null, null);
INSERT INTO `admin` VALUES ('c', null, null, null);

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
-- Table structure for navgroup
-- ----------------------------
DROP TABLE IF EXISTS `navgroup`;
CREATE TABLE `navgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navgroup
-- ----------------------------

-- ----------------------------
-- Table structure for navitem
-- ----------------------------
DROP TABLE IF EXISTS `navitem`;
CREATE TABLE `navitem` (
  `id` char(255) NOT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `_content` longtext,
  `createPerson` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `reqUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navitem
-- ----------------------------
INSERT INTO `navitem` VALUES ('010100', null, null, '<p>test</p>', null, '2016-05-02 18:55:52', '中心简介', 'remark', null, null, null);
INSERT INTO `navitem` VALUES ('010200', null, null, 'test2', null, null, '', null, null, null, null);
INSERT INTO `navitem` VALUES ('010300', null, null, 'test3', null, null, '', null, null, null, null);
INSERT INTO `navitem` VALUES ('010400', null, null, 'test4', null, null, '', null, null, null, null);
INSERT INTO `navitem` VALUES ('010500', null, null, 'test5', null, null, null, null, null, null, null);
INSERT INTO `navitem` VALUES ('010600', null, null, 'test6', null, null, null, null, null, null, null);
INSERT INTO `navitem` VALUES ('010700', null, null, '', null, null, null, null, null, null, '/cVideo.jsp');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '李丽丽', '2016-05-16 21:48:11', '15级线性代数与解析几何上机安排', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('2', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '李白', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('3', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('4', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('5', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('6', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('7', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('8', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('9', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('10', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('11', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);

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
