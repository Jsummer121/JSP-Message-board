/*
Navicat MySQL Data Transfer

Source Server         : summer
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : liuyanban

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2020-12-15 14:57:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO liuyan VALUES ('3', '李玺，你好呀！！！', '19:9');
INSERT INTO liuyan VALUES ('4', '阿尴尬为分割', '19:17');
INSERT INTO liuyan VALUES ('5', '危亮，你好帅。', '22:8');
INSERT INTO liuyan VALUES ('6', '我是危亮爸爸，危亮是我儿子', '13:58');
INSERT INTO liuyan VALUES ('7', '123123', '11:13');
INSERT INTO liuyan VALUES ('8', 'hello', '11:15');
