/*
 Navicat Premium Data Transfer

 Source Server         : hibernate
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : software_engineering

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 01/06/2019 22:04:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `hw_id` int(10) NOT NULL AUTO_INCREMENT,
  `hw_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_id` int(10) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release_time` datetime(0) NULL,
  `deadline` datetime(0) NULL,
  PRIMARY KEY (`hw_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (17, NULL, 1001, '17-项目验收计划.pdf', '2019-05-18 16:23:13', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (25, NULL, 1003, '第11章.pdf', '2019-05-18 16:37:12', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (27, NULL, 1003, '第7章.pdf', '2019-05-18 16:37:31', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (32, '第一章', 1001, '第16章.pdf', '2019-05-19 13:41:48', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (34, '他妈的快点交', 1002, '第11章.pdf', '2019-05-19 16:28:12', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (35, '快他妈的叫啊', 1002, '第17章.pdf', '2019-05-19 16:28:45', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (36, '第一章课程作业', 1001, '第12组_开题报告.doc', '2019-05-22 15:06:57', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (37, '他妈的快点叫', 1002, '第12组_系统模块开发卷宗.doc', '2019-05-22 15:08:08', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (38, '他妈的快点家属都', 1002, '第12组_软件需求规格说明书.doc', '2019-05-22 15:08:18', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (39, '他妈的快点家属都', 1002, '软件需求规格说明书3.doc', '2019-05-22 15:08:44', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (40, '他妈的好i圣诞节哦', 1002, '软件工程思想（林锐）.pdf', '2019-05-22 15:09:01', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (44, '我了耳草', 1002, '-480第12组_系统模块开发卷宗.doc', '2019-05-22 16:12:18', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (45, '我了耳草按时的课件撒', 1002, '-480第12组_系统模块开发卷宗.doc', '2019-05-22 16:13:56', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (46, '我了耳草按时的课件撒', 1002, '1558512899177第12组_系统模块开发卷宗.doc', '2019-05-22 16:15:06', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (47, '编辑作业', 1002, '1558513124134第12组_用户手册.doc', '2019-05-22 16:18:44', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (48, '编辑作业', 1002, '1558513169676第12组_用户手册.doc', '2019-05-22 16:19:30', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (49, '编辑作业', 1002, '1558513424973第12组_用户手册.doc', '2019-05-22 16:23:52', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (50, '编辑作业', 1002, '1558513674789第12组_用户手册.doc', '2019-05-22 16:27:55', '2018-12-30 00:00:00');
INSERT INTO `homework` VALUES (51, '你他妈的来呀', 1002, '1558514410681第12组_系统模块开发卷宗.doc', '2019-05-22 16:40:11', '2019-05-31 00:00:00');
INSERT INTO `homework` VALUES (52, '你他妈的来呀', 1002, '1558514464959第12组_系统模块开发卷宗.doc', '2019-05-22 16:41:05', '2019-05-28 00:00:00');
INSERT INTO `homework` VALUES (53, 'CLEAR', 1002, '1558530666949第12组_软件需求规格说明书.doc', '2019-05-22 21:11:07', '2019-05-13 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
