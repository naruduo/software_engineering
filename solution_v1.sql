/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : software_engineering

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-08 15:49:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `solution`
-- ----------------------------
DROP TABLE IF EXISTS `solution`;
CREATE TABLE `solution` (
  `solution_id` int(10) unsigned NOT NULL,
  `puzzle_id` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `soluer_id` int(10) unsigned NOT NULL,
  `time` date NOT NULL,
  `like_freq` int(10) unsigned NOT NULL,
  PRIMARY KEY (`solution_id`) USING BTREE,
  KEY `puzzle_id` (`puzzle_id`) USING BTREE,
  CONSTRAINT `puzzle_id` FOREIGN KEY (`puzzle_id`) REFERENCES `puzzle` (`puzzle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of solution
-- ----------------------------
INSERT INTO `solution` VALUES ('3', '1211630520', '这些概念你可以这样理解，节点通常是一种计算资源，比如我们说的分布式节点；制品你可以理解为我们产生的实际存在的东西，比如一些脚本，动态库；构件你可以理解成类似模块，通过接口和其他部分连接。这样接口相同个构件可以互相替换。', '221600324', '2019-04-06', '2');
INSERT INTO `solution` VALUES ('9', '1211290841', '同学你好：', '221600324', '2019-02-26', '0');
INSERT INTO `solution` VALUES ('14', '1211496240', '同学你好：', '221600324', '2019-03-20', '1');
INSERT INTO `solution` VALUES ('35', '1211285046', '不过这道题答案要求精确的文字匹配，同学你的答案最后多输进去一个点没有匹配，请你再好好检查一下答案吧。', '221600324', '2019-02-26', '0');
INSERT INTO `solution` VALUES ('44', '1211749493', '我基本同意你这次的看法，我想补充的是传统的软件工程方法的提出旨在用系统化、工程化的开发方法解决复杂软件开发中的软件危机问题，以提高软件开发的效率和质量，降低软件开发的成本。随着人工智能、大数据方法和技术的逐步成熟和推广使用，未来的软件开发将融入更多的这些技术的支持，也许未来能实现真正意义上的智能化的软件开发，也能开发出真正的智能软件。这些都是探讨性、开放性的研究课题，需要我们大家的努力。', '221600324', '2019-04-21', '1');
INSERT INTO `solution` VALUES ('65', '1211496240', '人机交互界面设计中，需要提供Undo功能，是因为用户的操作错误无法避免，对于基本的操作需要为用户提供恢复功能。', '221600324', '2019-03-21', '0');
INSERT INTO `solution` VALUES ('66', '1211773532', '很高兴你在学习中不断有收获。', '221600324', '2019-04-23', '0');
INSERT INTO `solution` VALUES ('69', '1211285046', '谢谢老师', '221600324', '2019-03-06', '0');
INSERT INTO `solution` VALUES ('72', '1211463230', '同学你好：', '221600324', '2019-03-18', '1');
INSERT INTO `solution` VALUES ('74', '1211804849', '之前似乎是引用了外链，现在重新上传了一下图片，应该解决了~', '221600324', '2019-04-25', '0');
INSERT INTO `solution` VALUES ('82', '1211256401', '谢谢老师~~', '221600324', '2019-02-25', '0');
INSERT INTO `solution` VALUES ('83', '1211630061', '同学你好~我们换了几个同学尝试了一下都可以看到公告中的图片，你可以刷新一下浏览器的缓存，或者使用电脑的chrome浏览器尝试一下？', '221600324', '2019-04-03', '0');
INSERT INTO `solution` VALUES ('84', '1211630061', '网速加载过慢。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('85', '1211503076', '你好，建议你从聚合关系和组合关系的概念内涵出发思考：', '221600324', '2019-03-20', '0');
INSERT INTO `solution` VALUES ('86', '1211614867', '同学你好，由于课程网站图片缓存会不定时失效，导致课程建设初上传的图片现在可能无法加载，并且已发布的内容无法做修改，我们在公告中重新发布了一下第一次、第二次课程实践的内容，可以去参考一下~', '1001', '2019-04-03', '1');
INSERT INTO `solution` VALUES ('87', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('88', '1211614867', '你好，由于课程网站总是不时更新缓存，造成图片有时实效，助教会尽快重新加载这些图片。', '221600324', '2019-04-03', '0');
INSERT INTO `solution` VALUES ('89', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('90', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('91', '1211427249', '在对顶层数据流图“自顶向下，逐步求精”的过程中，即对加工（功能）进行分解，逐步形成0层、1层等的数据流图。由顶层生成0层数据流图时，先将顶层唯一的加工按照功能分解为0层的若干个加工，然后将顶层的输入流和输出流分派到0层数据流图的相应的加工上，在0层数据流图各加工建立合理的关联，一般引入数据存储，使整个0层的加工能连接在一起，形成一个“整体”。而此处的数据存储一般是存储数据的文件或数据库。', '221600324', '2019-03-14', '1');
INSERT INTO `solution` VALUES ('92', '1211762944', '你好，业界的软件开发项目资料属于企业业务机密，一般不公开，所以我们无法提供这样的工程资料。本MOOC已提供了结构化方法（分析和设计）的案例补充材料，也提供了面向对象分析的案例补充材料。你可以认真看一下。', '221600324', '2019-04-18', '1');
INSERT INTO `solution` VALUES ('93', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('94', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('95', '1211614867', '可能是网速过慢的原因。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('96', '1211256401', '因为。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('97', '1211285046', '同学你的答案是正确的', '221600324', '2019-02-26', '0');
INSERT INTO `solution` VALUES ('98', '1211256401', '因为。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('99', '1211348460', '你好，在课程介绍里已经列出了这门课的主教材和主要参考书，当然这门课的参考资料很多，我在介绍每一知识点时如果引用了其他参考书，我会列出。', '221600324', '2019-03-03', '1');
INSERT INTO `solution` VALUES ('100', '1211256401', '因为。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('101', '1211614867', '网速太慢。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('102', '1211614867', '网速太慢。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('103', '1211614867', '网速太慢。。。', '221600324', '2019-06-08', '0');
INSERT INTO `solution` VALUES ('104', '1211614867', '网速问题', '221600324', '2019-06-08', '0');
