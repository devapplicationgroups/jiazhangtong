/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : jzt

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2014-05-10 12:20:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jzt_citys`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_citys`;
CREATE TABLE `jzt_citys` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市id',
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省份id',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '城市名称',
  `initial` varchar(45) DEFAULT '' COMMENT '城市缩写',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='城市表';

-- ----------------------------
-- Records of jzt_citys
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_classes`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_classes`;
CREATE TABLE `jzt_classes` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT '0' COMMENT '省份id',
  `city_id` int(11) DEFAULT '0' COMMENT '城市id',
  `school_id` int(11) DEFAULT '0' COMMENT '学校id',
  `name` varchar(45) DEFAULT '' COMMENT '班级名称',
  `grade` varchar(45) DEFAULT '' COMMENT '年级',
  `year` int(45) DEFAULT '0' COMMENT '年份',
  `semester` varchar(45) DEFAULT '' COMMENT '学期',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='班级表';

-- ----------------------------
-- Records of jzt_classes
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_provinces`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_provinces`;
CREATE TABLE `jzt_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '省份名称',
  `initial` varchar(45) DEFAULT '' COMMENT '省份缩写',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='省份表';

-- ----------------------------
-- Records of jzt_provinces
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_schools`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_schools`;
CREATE TABLE `jzt_schools` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT '0' COMMENT '省份id',
  `city_id` int(11) DEFAULT '0' COMMENT '城市id',
  `name` varchar(45) DEFAULT '' COMMENT '学校名称',
  `master_id` int(11) DEFAULT '0' COMMENT '校长id',
  `master_name` varchar(45) DEFAULT '' COMMENT '校长名字',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学校表';

-- ----------------------------
-- Records of jzt_schools
-- ----------------------------
