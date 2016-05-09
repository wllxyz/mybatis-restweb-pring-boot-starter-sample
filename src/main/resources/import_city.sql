/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机数据库
Source Server Version : 50709
Source Host           : 192.168.99.110:3306
Source Database       : deltamath

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-05-09 14:55:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'San Francisco', 'CA', 'US');
INSERT INTO `city` VALUES ('2', 'Hang Zhou', 'Zhe Jiang', 'China');

