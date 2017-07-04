/*
Navicat MySQL Data Transfer

Source Server         : by_test_db
Source Server Version : 50636
Source Host           : 10.100.1.110:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-07-04 15:30:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c3p0_test
-- ----------------------------
DROP TABLE IF EXISTS `c3p0_test`;
CREATE TABLE `c3p0_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `img_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表自增ID',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号，登陆账号',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `head_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `company_name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `age` int(11) NOT NULL DEFAULT '0',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '性别，0默认，1表示男2表示女',
  `contact_info` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式，QQ，固话等用逗号隔开',
  `open_id` varchar(255) NOT NULL DEFAULT '' COMMENT '微信openID',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登陆时间',
  `last_login_ip` varchar(255) NOT NULL DEFAULT '',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `register_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `register_ip` varchar(255) NOT NULL,
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '用户状态，0：正常，1：禁用',
  `remark` varchar(0) NOT NULL DEFAULT '' COMMENT '个人简介',
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_del` int(1) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '' COMMENT '系统token,app专用',
  `role` smallint(1) NOT NULL DEFAULT '0' COMMENT '0/普通用户1/公司负责人2/项目负责人3/维保人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COMMENT='用户表';
