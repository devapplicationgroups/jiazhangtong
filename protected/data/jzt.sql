/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : jzt

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2014-05-10 19:36:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jzt_bulletins`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_bulletins`;
CREATE TABLE `jzt_bulletins` (
  `bulletin_id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` int(11) DEFAULT '0' COMMENT '发起人id',
  `school_id` int(11) DEFAULT '0' COMMENT '学校id',
  `class_id` int(11) DEFAULT '0' COMMENT '班级id',
  `content_id` int(11) DEFAULT '0' COMMENT '内容id',
  `time` int(11) DEFAULT '0' COMMENT '发送时间',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`bulletin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='公告表';

-- ----------------------------
-- Records of jzt_bulletins
-- ----------------------------

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
  `semester` varchar(45) DEFAULT '0' COMMENT '学期',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='班级表';

-- ----------------------------
-- Records of jzt_classes
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_courses`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_courses`;
CREATE TABLE `jzt_courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '课程名称',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='课程表';

-- ----------------------------
-- Records of jzt_courses
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_dialogues`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_dialogues`;
CREATE TABLE `jzt_dialogues` (
  `dialogue_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT '0' COMMENT '班级id',
  `from_people_id` int(11) DEFAULT '0' COMMENT '发送人id',
  `receive_people_id` int(11) DEFAULT '0' COMMENT '班级人员id',
  `content_id` int(11) DEFAULT '0' COMMENT '内容id',
  `time` int(11) DEFAULT '0' COMMENT '发送时间',
  `is_receive_ok` tinyint(4) DEFAULT '0' COMMENT '是否成功接收（0：否；1：是）',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`dialogue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='对话表';

-- ----------------------------
-- Records of jzt_dialogues
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_long_content`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_long_content`;
CREATE TABLE `jzt_long_content` (
  `long_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `long_content` text COMMENT '内容',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`long_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='长内容表';

-- ----------------------------
-- Records of jzt_long_content
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_people_class_map`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_people_class_map`;
CREATE TABLE `jzt_people_class_map` (
  `people_class_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` int(11) DEFAULT '0' COMMENT '人物id',
  `school_id` int(11) DEFAULT '0' COMMENT '学校id',
  `class_id` int(11) DEFAULT '0' COMMENT '班级id',
  `course_id` int(11) DEFAULT '0' COMMENT '课程id',
  `role` tinyint(4) DEFAULT '0' COMMENT '角色（0：学生；1教师；）',
  `is_active` tinyint(4) DEFAULT '0' COMMENT '是否当前有效（0：无效；1：有效）',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_class_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='人员班级关系表';

-- ----------------------------
-- Records of jzt_people_class_map
-- ----------------------------

-- ----------------------------
-- Table structure for `jzt_peoples`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_peoples`;
CREATE TABLE `jzt_peoples` (
  `people_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT '' COMMENT '姓名',
  `sex` tinyint(1) unsigned DEFAULT '0' COMMENT '性别（0：女；1：男）',
  `identity_number` varchar(45) DEFAULT '' COMMENT '身份证号',
  `province_id` int(11) DEFAULT '0' COMMENT '省份id',
  `city_id` int(11) DEFAULT '0' COMMENT '城市id',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='人员表';

-- ----------------------------
-- Records of jzt_peoples
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省份表';

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

-- ----------------------------
-- Table structure for `jzt_scores`
-- ----------------------------
DROP TABLE IF EXISTS `jzt_scores`;
CREATE TABLE `jzt_scores` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(45) DEFAULT '' COMMENT '考试名称（如：期末考试）',
  `people_class_map_id` int(11) DEFAULT '0' COMMENT '班级人员id',
  `people_id` int(11) DEFAULT '0' COMMENT '人员id',
  `course_id` int(11) DEFAULT '0' COMMENT '科目id',
  `score` varchar(11) DEFAULT '0' COMMENT '分数',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分数表';

-- ----------------------------
-- Records of jzt_scores
-- ----------------------------
