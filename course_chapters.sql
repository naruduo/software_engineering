/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : software_engineering

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2019-06-02 16:10:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course_chapters`
-- ----------------------------
DROP TABLE IF EXISTS `course_chapters`;
CREATE TABLE `course_chapters` (
  `unit_id` int(10) NOT NULL,
  `unit_name` varchar(15) NOT NULL,
  `unit_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`unit_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course_chapters
-- ----------------------------
INSERT INTO `course_chapters` VALUES ('10001', '第一章', '软件工程概述');
INSERT INTO `course_chapters` VALUES ('10002', '第二章', '需求分析');
INSERT INTO `course_chapters` VALUES ('10003', '第三章', '风险管理');
INSERT INTO `course_chapters` VALUES ('10004', '第四章', '软件测试');
