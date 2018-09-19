/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hbr

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-13 08:40:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '技术部414', '技术部');
INSERT INTO `tb_dept` VALUES ('2', '运营部', '运营部');
INSERT INTO `tb_dept` VALUES ('3', '财务部', '财务部');
INSERT INTO `tb_dept` VALUES ('4', '总办部', '总办部');
INSERT INTO `tb_dept` VALUES ('5', '市场部', '市场部');
INSERT INTO `tb_dept` VALUES ('6', '教学部', '教学部');

-- ----------------------------
-- Table structure for `tb_document`
-- ----------------------------
DROP TABLE IF EXISTS `tb_document`;
CREATE TABLE `tb_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `remark` varchar(300) NOT NULL,
  `create_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_document
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `card_id` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `post_code` varchar(50) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `race` varchar(10) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('2', '2', '1', '杰克', '22', '男', '14012025', '广州', '51001', '22222', '2222@qq.com', '2017-06-07', '汉', '本科', '爬山', null);
INSERT INTO `tb_employee` VALUES ('4', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('5', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('6', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('7', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('8', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('9', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('10', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('11', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('12', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('13', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('14', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('15', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('16', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('17', '1', '8', '爱丽丝', '20', '女', '14012024', '广州天河', '51000', '111111', '1111@qq.com', '2017-06-07', '汉', '本科', '唱歌', '四大天王');
INSERT INTO `tb_employee` VALUES ('18', '1', '4', '罗强强', null, '男', '341223199202017917', '安徽省亳州市涡阳县', '23800', '741830313', '741830313@qq.com', '2017-06-09', '汉族', '研究生', '跑步，撸铁', '2017最具影响人物');
INSERT INTO `tb_employee` VALUES ('21', '4', '9', '罗强强', '20', '男', '341223199202017917', '安徽省亳州市涡阳县', '23800', '14', '741830313@qq.com', '2017-06-11', '汉族', '硕士', '跑步，撸铁', '2017最具影响人物');

-- ----------------------------
-- Table structure for `tb_job`
-- ----------------------------
DROP TABLE IF EXISTS `tb_job`;
CREATE TABLE `tb_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_job
-- ----------------------------
INSERT INTO `tb_job` VALUES ('1', '职员', '职员');
INSERT INTO `tb_job` VALUES ('2', 'Java开发工程师', 'Java开发工程师');
INSERT INTO `tb_job` VALUES ('3', 'Java中级开发工程师', 'Java中级开发工程师');
INSERT INTO `tb_job` VALUES ('4', 'Java高级开发工程师', 'Java高级开发工程师');
INSERT INTO `tb_job` VALUES ('5', '系统管理员', '系统管理员');
INSERT INTO `tb_job` VALUES ('6', '架构师', '架构师');
INSERT INTO `tb_job` VALUES ('7', '主管', '主管');
INSERT INTO `tb_job` VALUES ('8', '经理', '经理');
INSERT INTO `tb_job` VALUES ('9', '总经理', '总经理');

-- ----------------------------
-- Table structure for `tb_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('5', '五一放假通知', '																																		放假三天，注意安全!dsd\r\n															\r\n															', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('6', '五一放假通知', '																																		放假三天，注意安全!\r\n															\r\n															', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('7', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('8', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('12', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('13', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('14', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('15', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('16', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('17', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('18', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('19', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('20', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('21', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('22', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('23', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('24', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('25', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('27', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('28', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('29', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('30', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('31', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('32', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('33', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('34', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('35', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('36', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('37', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('38', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('39', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('40', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('41', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('42', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('43', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('44', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('45', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('46', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');
INSERT INTO `tb_notice` VALUES ('47', '五一放假通知', '放假三天，注意安全!', '2017-06-09', '4');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'admin', '123', '1', '2017-06-07', '超级管理员');
INSERT INTO `tb_user` VALUES ('14', 'lqq', '123456', '1', '2017-06-11', 'qq');
