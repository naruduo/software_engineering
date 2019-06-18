/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : software_engineering

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-08 15:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `puzzle`
-- ----------------------------
DROP TABLE IF EXISTS `puzzle`;
CREATE TABLE `puzzle` (
  `puzzle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `puzzler_id` int(10) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`puzzle_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1211804850 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of puzzle
-- ----------------------------
INSERT INTO `puzzle` VALUES ('63', '123456', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('64', '123456', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('65', '123456', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('66', '123456', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('67', '123456', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('68', '1234567', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('69', '12345670', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('70', '123456701', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('71', '123456701', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('72', '123456702', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('73', '1234567023', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('74', '12345670234', '221600325', '2019-06-07');
INSERT INTO `puzzle` VALUES ('1211256401', '这道题为什么错了？', '221600324', '2019-02-19');
INSERT INTO `puzzle` VALUES ('1211274830', '软件生存周期过程的概念测试第5题怎么不对？', '221600324', '2019-02-19');
INSERT INTO `puzzle` VALUES ('1211281825', '软件生存周期过程的概念', '221600324', '2019-02-19');
INSERT INTO `puzzle` VALUES ('1211281948', '敏捷开发、统一过程、极限编程、Scrum', '221600324', '2019-02-20');
INSERT INTO `puzzle` VALUES ('1211285046', '软件工程概念的提出是为了解决（）', '221600324', '2019-02-25');
INSERT INTO `puzzle` VALUES ('1211290841', '提交答案后，成绩在第二天无法查询', '221600324', '2019-02-25');
INSERT INTO `puzzle` VALUES ('1211304451', '软件工程课程的学习需要在精通一种语言之后学习吗？', '221600324', '2019-02-26');
INSERT INTO `puzzle` VALUES ('1211326538', '适合什么大几学习', '221600324', '2019-02-27');
INSERT INTO `puzzle` VALUES ('1211345374', '老师 概念模型不属于软件模型吗', '221600324', '2019-03-02');
INSERT INTO `puzzle` VALUES ('1211348460', '请问这个课用的是哪本书。？', '221600324', '2019-03-02');
INSERT INTO `puzzle` VALUES ('1211353230', '请问这门课会讲如何编程吗', '221600324', '2019-03-02');
INSERT INTO `puzzle` VALUES ('1211392535', '软件开发映射', '221600324', '2019-03-08');
INSERT INTO `puzzle` VALUES ('1211422342', '数据字典中定义数据结构这里有疑问？', '221600324', '2019-03-13');
INSERT INTO `puzzle` VALUES ('1211427249', '引入文件和零层数据流图如何形成这里没有理解', '221600324', '2019-03-13');
INSERT INTO `puzzle` VALUES ('1211463230', '作用域，控制阈，耦合怎么更好理解呢，希望老师能帮忙再解释下？', '221600324', '2019-03-17');
INSERT INTO `puzzle` VALUES ('1211496240', 'undo功能是什么？', '221600324', '2019-03-20');
INSERT INTO `puzzle` VALUES ('1211503076', '聚合关系与组合关系的映射策略', '221600324', '2019-03-19');
INSERT INTO `puzzle` VALUES ('1211538375', '数据抽象术语', '221600324', '2019-03-25');
INSERT INTO `puzzle` VALUES ('1211614867', '课程实践的图片加载不出来', '221600324', '2019-04-02');
INSERT INTO `puzzle` VALUES ('1211630061', '老师，公告也加载不出来图片', '221600324', '2019-04-03');
INSERT INTO `puzzle` VALUES ('1211630520', '关于构件，制品和节点', '221600324', '2019-04-04');
INSERT INTO `puzzle` VALUES ('1211634539', '接口如何提高了复用性？', '221600324', '2019-04-04');
INSERT INTO `puzzle` VALUES ('1211681066', '学习进度', '221600324', '2019-04-11');
INSERT INTO `puzzle` VALUES ('1211749493', '软件是简单系统还是复杂系统？', '221600324', '2019-04-19');
INSERT INTO `puzzle` VALUES ('1211751936', '老师都用什么软件绘制DFD或者UML各种图？', '221600324', '2019-04-17');
INSERT INTO `puzzle` VALUES ('1211762944', '老师能推荐一些好的课外资源嘛？', '221600324', '2019-04-17');
INSERT INTO `puzzle` VALUES ('1211773532', '软件工程中的质量金三角', '221600324', '2019-04-22');
INSERT INTO `puzzle` VALUES ('1211804849', '课程图片加载不出的原因分析', '221600324', '2019-04-25');
