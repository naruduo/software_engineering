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

 Date: 01/06/2019 22:05:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for op_detail
-- ----------------------------
DROP TABLE IF EXISTS `op_detail`;
CREATE TABLE `op_detail`  (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `op_time` datetime(0) NULL DEFAULT NULL,
  `op` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `op_filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of op_detail
-- ----------------------------
INSERT INTO `op_detail` VALUES (25, 1001, '2019-05-18 16:17:12', '上传', '立项建议书.docx');
INSERT INTO `op_detail` VALUES (26, 1001, '2019-05-18 16:17:26', '上传', '项目评估报告.docx');
INSERT INTO `op_detail` VALUES (27, 1001, '2019-05-18 16:18:20', '上传', '6-成本计划(4).ppt');
INSERT INTO `op_detail` VALUES (28, 1001, '2019-05-18 16:20:03', '上传', '7-进度计划(3).ppt');
INSERT INTO `op_detail` VALUES (29, 1001, '2019-05-18 16:23:13', '上传', '17-项目验收计划.pdf');
INSERT INTO `op_detail` VALUES (30, 1001, '2019-05-18 16:25:41', '上传', '标书案例.pdf');
INSERT INTO `op_detail` VALUES (31, 1001, '2019-05-18 16:27:31', '上传', '第8章.pdf');
INSERT INTO `op_detail` VALUES (32, 1002, '2019-05-18 16:29:50', '上传', '第17章.pdf');
INSERT INTO `op_detail` VALUES (33, 1002, '2019-05-18 16:29:56', '上传', '第1章.pdf');
INSERT INTO `op_detail` VALUES (35, 1002, '2019-05-18 16:31:10', '上传', '第16章.pdf');
INSERT INTO `op_detail` VALUES (36, 1002, '2019-05-18 16:31:13', '删除', '第1章.pdf');
INSERT INTO `op_detail` VALUES (37, 1002, '2019-05-18 16:31:23', '上传', '第2章.pdf');
INSERT INTO `op_detail` VALUES (38, 1003, '2019-05-18 16:36:46', '上传', '第12章.pdf');
INSERT INTO `op_detail` VALUES (39, 1003, '2019-05-18 16:36:55', '删除', '第12章.pdf');
INSERT INTO `op_detail` VALUES (40, 1003, '2019-05-18 16:37:12', '上传', '第11章.pdf');
INSERT INTO `op_detail` VALUES (41, 1003, '2019-05-18 16:37:21', '上传', '第1章.pdf');
INSERT INTO `op_detail` VALUES (42, 1003, '2019-05-18 16:37:31', '上传', '第7章.pdf');
INSERT INTO `op_detail` VALUES (43, 1003, '2019-05-18 16:37:34', '删除', '第1章.pdf');
INSERT INTO `op_detail` VALUES (44, 1002, '2019-05-18 17:06:28', '下载', '第16章.pdf');
INSERT INTO `op_detail` VALUES (45, 1002, '2019-05-18 17:06:38', '下载', '第2章.pdf');
INSERT INTO `op_detail` VALUES (46, 1002, '2019-05-18 17:07:25', '下载', '第2章.pdf');
INSERT INTO `op_detail` VALUES (47, 1002, '2019-05-18 17:07:43', '上传', '第1章.pdf');
INSERT INTO `op_detail` VALUES (48, 1002, '2019-05-18 17:07:45', '下载', '第1章.pdf');
INSERT INTO `op_detail` VALUES (49, 1002, '2019-05-19 09:36:23', '下载', '第17章.pdf');
INSERT INTO `op_detail` VALUES (50, 1002, '2019-05-19 09:36:31', '删除', '第17章.pdf');
INSERT INTO `op_detail` VALUES (51, 1002, '2019-05-19 10:03:23', '上传', '第12组_软件测试报告.doc');
INSERT INTO `op_detail` VALUES (52, 1002, '2019-05-19 10:03:52', '上传', '第12组_软件测试报告.doc');
INSERT INTO `op_detail` VALUES (53, 1002, '2019-05-19 10:04:30', '上传', '第12组_软件需求规格说明书.doc');
INSERT INTO `op_detail` VALUES (54, 1002, '2019-05-19 10:06:35', '上传', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (55, 1002, '2019-05-19 10:07:02', '删除', '第2章.pdf');
INSERT INTO `op_detail` VALUES (56, 1002, '2019-05-19 10:07:04', '删除', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (57, 1002, '2019-05-19 10:07:05', '删除', '第12组_软件测试报告.doc');
INSERT INTO `op_detail` VALUES (58, 1002, '2019-05-19 10:07:06', '删除', '第1章.pdf');
INSERT INTO `op_detail` VALUES (59, 1002, '2019-05-19 10:07:07', '删除', '第16章.pdf');
INSERT INTO `op_detail` VALUES (60, 1002, '2019-05-19 10:07:08', '删除', '第12组_软件需求规格说明书.doc');
INSERT INTO `op_detail` VALUES (61, 1001, '2019-05-19 13:36:37', '删除', '第8章.pdf');
INSERT INTO `op_detail` VALUES (62, 1001, '2019-05-19 13:37:24', '删除', '立项建议书.docx');
INSERT INTO `op_detail` VALUES (63, 1001, '2019-05-19 13:37:58', '删除', '项目评估报告.docx');
INSERT INTO `op_detail` VALUES (64, 1001, '2019-05-19 13:40:18', '删除', '标书案例.pdf');
INSERT INTO `op_detail` VALUES (65, 1001, '2019-05-19 13:41:22', '删除', '6-成本计划(4).ppt');
INSERT INTO `op_detail` VALUES (66, 1001, '2019-05-19 13:41:26', '删除', '7-进度计划(3).ppt');
INSERT INTO `op_detail` VALUES (67, 1001, '2019-05-19 13:41:48', '上传', '第16章.pdf');
INSERT INTO `op_detail` VALUES (68, 1001, '2019-05-19 13:43:31', '上传', '第7章.pdf');
INSERT INTO `op_detail` VALUES (69, 1001, '2019-05-19 13:43:41', '删除', '第7章.pdf');
INSERT INTO `op_detail` VALUES (70, 1001, '2019-05-19 13:43:43', '下载', '第16章.pdf');
INSERT INTO `op_detail` VALUES (72, 221600224, '2019-05-19 16:23:21', '上传', '第12组_系统规格说明书.doc');
INSERT INTO `op_detail` VALUES (73, 1002, '2019-05-19 16:28:12', '上传', '第11章.pdf');
INSERT INTO `op_detail` VALUES (74, 1002, '2019-05-19 16:28:45', '上传', '第17章.pdf');
INSERT INTO `op_detail` VALUES (75, 221600224, '2019-05-19 16:33:27', '上传', '第8章.pdf');
INSERT INTO `op_detail` VALUES (76, 221600224, '2019-05-19 16:36:35', '上传', '第16章.pdf');
INSERT INTO `op_detail` VALUES (77, 221600224, '2019-05-19 16:43:27', '上传', '第12组_系统规格说明书.doc');
INSERT INTO `op_detail` VALUES (78, 221600224, '2019-05-19 16:44:22', '上传', '软件需求规格说明书3.doc');
INSERT INTO `op_detail` VALUES (79, 221600224, '2019-05-19 16:50:04', '上传', '第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (80, 221600224, '2019-05-19 16:50:20', '上传', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (81, 221600224, '2019-05-19 16:50:20', '删除', '第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (82, 221600224, '2019-05-19 16:56:41', '上传', '第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (83, 221600224, '2019-05-19 17:08:37', '上传', '作业结果_在线学堂_智慧树.html');
INSERT INTO `op_detail` VALUES (84, 221600224, '2019-05-19 17:09:07', '上传', '第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (85, 221600224, '2019-05-19 17:09:07', '删除', '作业结果_在线学堂_智慧树.html');
INSERT INTO `op_detail` VALUES (86, 1002, '2019-05-19 19:53:30', '下载', '221600224/第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (87, 1002, '2019-05-20 10:02:03', '下载', '1002\\Roster.xlsx');
INSERT INTO `op_detail` VALUES (88, 1002, '2019-05-20 10:02:10', '下载', '1002\\Roster.xlsx');
INSERT INTO `op_detail` VALUES (89, 1001, '2019-05-20 18:46:59', '下载', '1001\\Roster.xlsx');
INSERT INTO `op_detail` VALUES (90, 221600224, '2019-05-20 18:48:12', '上传', '第11章.pdf');
INSERT INTO `op_detail` VALUES (91, 1002, '2019-05-20 18:51:38', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (92, 1002, '2019-05-20 19:02:16', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (93, 1002, '2019-05-20 19:02:19', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (94, 1002, '2019-05-20 19:02:19', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (95, 1002, '2019-05-20 19:02:18', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (96, 1002, '2019-05-20 19:02:19', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (97, 1002, '2019-05-20 19:02:19', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (98, 1002, '2019-05-20 19:02:19', '下载', '221600224/第11章.pdf');
INSERT INTO `op_detail` VALUES (99, 1002, '2019-05-20 19:25:35', '下载', '221600224/第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (100, 221600230, '2019-05-20 19:40:11', '上传', '项目评估报告.docx');
INSERT INTO `op_detail` VALUES (101, 1002, '2019-05-20 19:43:35', '下载', '221600230/项目评估报告.docx');
INSERT INTO `op_detail` VALUES (102, 1002, '2019-05-20 20:09:08', '下载', '221600224/第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (103, 221600224, '2019-05-22 09:03:45', '上传', '第12组_软件项目计划.doc');
INSERT INTO `op_detail` VALUES (104, 221600224, '2019-05-22 09:03:45', '删除', '第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (105, 221600224, '2019-05-22 10:17:51', '下载', '1002/第11章.pdf');
INSERT INTO `op_detail` VALUES (106, 221600224, '2019-05-22 10:17:54', '下载', '1002/第17章.pdf');
INSERT INTO `op_detail` VALUES (107, 221600224, '2019-05-22 10:49:53', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (108, 221600224, '2019-05-22 10:57:07', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (109, 221600224, '2019-05-22 11:00:32', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (110, 221600224, '2019-05-22 11:01:01', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (111, 221600224, '2019-05-22 11:02:15', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (112, 221600224, '2019-05-22 11:03:59', '下载', '第11章.pdf');
INSERT INTO `op_detail` VALUES (113, 1001, '2019-05-22 14:48:37', '上传', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (114, 1001, '2019-05-22 15:05:49', '上传', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (115, 1001, '2019-05-22 15:06:57', '上传', '第12组_开题报告.doc');
INSERT INTO `op_detail` VALUES (116, 1002, '2019-05-22 15:08:08', '上传', '第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (117, 1002, '2019-05-22 15:08:18', '上传', '第12组_软件需求规格说明书.doc');
INSERT INTO `op_detail` VALUES (118, 1002, '2019-05-22 15:08:44', '上传', '软件需求规格说明书3.doc');
INSERT INTO `op_detail` VALUES (119, 1002, '2019-05-22 15:09:01', '上传', '软件工程思想（林锐）.pdf');
INSERT INTO `op_detail` VALUES (120, 221600224, '2019-05-22 15:09:41', '下载', '软件需求规格说明书3.doc');
INSERT INTO `op_detail` VALUES (121, 221600224, '2019-05-22 15:24:00', '上传', '-48001 第X组_开题报告2019.doc');
INSERT INTO `op_detail` VALUES (122, 221600224, '2019-05-22 15:24:15', '上传', '-48001 第X组_开题报告2019.doc');
INSERT INTO `op_detail` VALUES (123, 221600224, '2019-05-22 15:24:25', '上传', '-48001 第X组_开题报告2019.doc');
INSERT INTO `op_detail` VALUES (124, 221600224, '2019-05-22 16:08:53', '下载', '软件工程思想（林锐）.pdf');
INSERT INTO `op_detail` VALUES (125, 1002, '2019-05-22 16:12:18', '上传', '-480第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (126, 1002, '2019-05-22 16:13:56', '上传', '-480第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (127, 1002, '2019-05-22 16:14:59', '上传', '1558512899177第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (128, 221600224, '2019-05-22 16:15:57', '下载', '1558512899177第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (129, 1002, '2019-05-22 16:18:44', '上传', '1558513124134第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (130, 1002, '2019-05-22 16:19:30', '上传', '1558513169676第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (131, 1002, '2019-05-22 16:20:05', '上传', '1558513204572第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (132, 1002, '2019-05-22 16:23:23', '上传', '1558513402520第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (133, 1002, '2019-05-22 16:23:30', '上传', '1558513410084第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (134, 1002, '2019-05-22 16:23:45', '上传', '1558513424973第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (135, 1002, '2019-05-22 16:27:55', '上传', '1558513674789第12组_用户手册.doc');
INSERT INTO `op_detail` VALUES (136, 1002, '2019-05-22 16:40:11', '上传', '1558514410681第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (137, 1002, '2019-05-22 16:41:05', '上传', '1558514464959第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (138, 221600224, '2019-05-22 20:23:21', '下载', '-480第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (139, 221600224, '2019-05-22 20:23:25', '下载', '软件工程思想（林锐）.pdf');
INSERT INTO `op_detail` VALUES (140, 221600224, '2019-05-22 20:29:07', '上传', '第12组_软件设计说明书.doc');
INSERT INTO `op_detail` VALUES (141, 1002, '2019-05-22 21:11:07', '上传', '1558530666949第12组_软件需求规格说明书.doc');
INSERT INTO `op_detail` VALUES (142, 221600224, '2019-05-23 10:53:37', '上传', 'Just-Be-Yourself1.jpg');
INSERT INTO `op_detail` VALUES (143, 221600224, '2019-05-23 10:55:08', '上传', '255410.jpg');
INSERT INTO `op_detail` VALUES (144, 221600224, '2019-05-23 10:55:29', '上传', 'blue.jpg');
INSERT INTO `op_detail` VALUES (145, 221600224, '2019-05-23 10:58:37', '上传', 'blue.jpg');
INSERT INTO `op_detail` VALUES (146, 221600224, '2019-05-23 10:58:47', '上传', '255410.jpg');
INSERT INTO `op_detail` VALUES (147, 221600224, '2019-05-23 10:59:54', '上传', 'Just-Be-Yourself1.jpg');
INSERT INTO `op_detail` VALUES (148, 221600224, '2019-05-23 11:01:26', '删除', 'Just-Be-Yourself1.jpg');
INSERT INTO `op_detail` VALUES (149, 221600224, '2019-05-23 11:01:26', '上传', 'Just-Be-Yourself1.jpg');
INSERT INTO `op_detail` VALUES (150, 221600224, '2019-05-23 13:25:16', '上传', '221600224.jpg');
INSERT INTO `op_detail` VALUES (151, 221600224, '2019-05-23 13:26:02', '删除', '221600224.jpg');
INSERT INTO `op_detail` VALUES (152, 221600224, '2019-05-23 13:26:02', '上传', '221600224.jpg');
INSERT INTO `op_detail` VALUES (153, 221600224, '2019-05-23 13:26:18', '删除', '221600224.jpg');
INSERT INTO `op_detail` VALUES (154, 221600224, '2019-05-23 13:26:18', '上传', '221600224.jpg');
INSERT INTO `op_detail` VALUES (155, 221600224, '2019-05-28 21:44:45', '下载', '-480第12组_系统模块开发卷宗.doc');
INSERT INTO `op_detail` VALUES (156, 221600220, '2019-05-30 10:56:47', '下载', '17-项目验收计划.pdf');
INSERT INTO `op_detail` VALUES (157, 221600220, '2019-05-30 10:57:05', '上传', 'ChMkJlv_v7SIEiJzAAbllZ026ScAAtdEwNYaRUABuWt234.jpg');
INSERT INTO `op_detail` VALUES (158, 1001, '2019-05-30 20:48:01', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (159, 1002, '2019-05-30 20:53:40', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (160, 1002, '2019-05-30 20:55:24', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (161, 1002, '2019-05-30 21:03:41', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (162, 1003, '2019-05-30 21:06:54', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (166, 1002, '2019-05-31 16:24:43', '上传', '第6章(1).ppt');
INSERT INTO `op_detail` VALUES (167, 1002, '2019-05-31 16:25:55', '上传', '第1章(1).ppt');
INSERT INTO `op_detail` VALUES (168, 1002, '2019-05-31 16:26:25', '上传', '第5章(1).ppt');
INSERT INTO `op_detail` VALUES (169, 1002, '2019-05-31 16:26:33', '上传', '第5章(1).ppt');
INSERT INTO `op_detail` VALUES (170, 1002, '2019-05-31 16:26:39', '上传', '算法设计与分析复习.doc');
INSERT INTO `op_detail` VALUES (171, 1002, '2019-05-31 16:27:40', '上传', 'Course_1.pdf');
INSERT INTO `op_detail` VALUES (172, 1002, '2019-05-31 16:27:57', '上传', '夏又生人工神经网络homework1.ppt');
INSERT INTO `op_detail` VALUES (173, 1002, '2019-05-31 16:28:03', '上传', 'homework3.pdf');
INSERT INTO `op_detail` VALUES (174, 1002, '2019-05-31 19:20:13', '上传', '221600224林鹏飞.pdf');
INSERT INTO `op_detail` VALUES (175, 1002, '2019-05-31 19:40:27', '下载', 'Course_1.pdf');
INSERT INTO `op_detail` VALUES (176, 1002, '2019-05-31 19:45:00', '下载', '第5章(1).ppt');
INSERT INTO `op_detail` VALUES (177, 1002, '2019-05-31 19:45:04', '下载', '夏又生人工神经网络homework1.ppt');
INSERT INTO `op_detail` VALUES (178, 1002, '2019-05-31 20:10:57', '上传', '第1章(1).ppt');
INSERT INTO `op_detail` VALUES (179, 1002, '2019-05-31 20:11:02', '上传', '第2章(1).ppt');
INSERT INTO `op_detail` VALUES (180, 1002, '2019-05-31 20:11:06', '上传', '第3章(1).ppt');
INSERT INTO `op_detail` VALUES (181, 1002, '2019-05-31 20:11:11', '上传', '第4章(1).ppt');
INSERT INTO `op_detail` VALUES (182, 1002, '2019-05-31 20:11:15', '上传', '第5章(1).ppt');
INSERT INTO `op_detail` VALUES (183, 1002, '2019-05-31 20:11:21', '上传', '第6章(1).ppt');
INSERT INTO `op_detail` VALUES (184, 221600224, '2019-05-31 20:29:35', '下载', '第1章(1).ppt');
INSERT INTO `op_detail` VALUES (185, 1002, '2019-05-31 20:46:50', '下载', 'Roster.xlsx');
INSERT INTO `op_detail` VALUES (186, 1002, '2019-05-31 21:44:10', '下载', '第1章(1).ppt');
INSERT INTO `op_detail` VALUES (187, 221600222, '2019-05-31 23:14:00', '下载', '第6章(1).ppt');
INSERT INTO `op_detail` VALUES (188, 1002, '2019-05-31 23:16:18', '上传', '林鹏飞_简历.pdf');
INSERT INTO `op_detail` VALUES (189, 1002, '2019-05-31 23:16:27', '上传', '《软件工程》课程概述.ppt');
INSERT INTO `op_detail` VALUES (190, 1002, '2019-05-31 23:17:08', '下载', '《软件工程》课程概述.ppt');
INSERT INTO `op_detail` VALUES (191, 221600222, '2019-05-31 23:43:58', '下载', '第4章(1).ppt');
