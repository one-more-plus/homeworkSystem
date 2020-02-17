/*
Navicat MySQL Data Transfer

Source Server         : DB
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wms

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-08 12:23:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `checkwork`
-- ----------------------------
DROP TABLE IF EXISTS `checkwork`;
CREATE TABLE `checkwork` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_s_account` varchar(10) DEFAULT NULL,
  `ch_c_id` varchar(10) DEFAULT NULL,
  `ch_w_id` int(11) DEFAULT NULL,
  `ch_score` int(11) DEFAULT NULL,
  `ch_mark` varchar(100) DEFAULT NULL,
  `ch_checkTime` datetime DEFAULT NULL,
  `ch_upTime` datetime DEFAULT NULL,
  `ch_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkwork
-- ----------------------------
INSERT INTO `checkwork` VALUES ('1', '14201103', '142011', '2', '0', null, null, '2019-12-06 00:00:00', 'D:\\BackUp');
INSERT INTO `checkwork` VALUES ('2', '14201104', '142011', '2', '0', null, null, '2019-12-06 00:00:00', 'D:\\BackUp');
INSERT INTO `checkwork` VALUES ('3', '14201105', '142011', '2', '0', null, null, '2019-12-06 00:00:00', 'D:\\BackUp');
INSERT INTO `checkwork` VALUES ('4', '14201106', '142011', '2', '100', 'good,很好，不错', '2019-12-06 00:00:00', '2019-12-06 00:00:00', 'D:\\BackUp');
INSERT INTO `checkwork` VALUES ('5', '14201107', '142011', '2', '0', null, null, '2019-12-06 00:00:00', 'D:\\BackUp');
INSERT INTO `checkwork` VALUES ('6', '14201101', '142011', '6', '99', '王同学完成的非常好，值得奖励', '2019-12-06 19:37:12', '2019-12-06 00:00:00', 'F:\\');
INSERT INTO `checkwork` VALUES ('7', '14201101', '142011', '7', '87', '完成的还是不错的哦', '2019-12-06 19:56:06', '2019-12-06 19:55:00', 'F:\\');

-- ----------------------------
-- Table structure for `clazz`
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(10) DEFAULT NULL,
  `c_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES ('1', '142011', '15');
INSERT INTO `clazz` VALUES ('2', '142012', '3');
INSERT INTO `clazz` VALUES ('3', '142013', '3');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '软件工程', '2');
INSERT INTO `course` VALUES ('2', '数据结构', '2');
INSERT INTO `course` VALUES ('3', '软件建模', '2');
INSERT INTO `course` VALUES ('4', 'web网络编程', '2');
INSERT INTO `course` VALUES ('5', '操作系统', '2');
INSERT INTO `course` VALUES ('6', 'Android', '2');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_account` varchar(10) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `m_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `manager` VALUES ('2', '1111', '张琦', 'admin');
INSERT INTO `manager` VALUES ('3', '2222', '何昶源', 'admin');
INSERT INTO `manager` VALUES ('4', '3333', '任孟凯', 'admin');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_title` varchar(20) DEFAULT NULL,
  `nt_content` varchar(500) DEFAULT NULL,
  `nt_time` datetime DEFAULT NULL,
  `nt_t_account` varchar(10) DEFAULT NULL,
  `nt_c_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '调课通知', '明天的课星期六补', '2019-12-06 00:00:00', '140001', '142011');
INSERT INTO `notice` VALUES ('2', '调课通知', '明天的课星期六补', '2019-12-06 00:00:00', '140001', '142012');
INSERT INTO `notice` VALUES ('3', '调课通知', '明天的课星期六补', '2019-12-06 00:00:00', '140001', '142013');
INSERT INTO `notice` VALUES ('4', '调课通知3', '明天的课星期日补', '2019-12-06 00:00:00', '140003', '142011');
INSERT INTO `notice` VALUES ('5', '调课通知3', '明天的课星期日补', '2019-12-06 00:00:00', '140003', '142012');
INSERT INTO `notice` VALUES ('6', '油炸小波', '油炸小波开始啦', '2019-12-06 00:00:00', '140001', '142011');
INSERT INTO `notice` VALUES ('7', '好饿啊', '好饿啊，还没有吃饭，哎', '2019-12-06 00:00:00', '140001', '142011');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_account` varchar(10) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(2) DEFAULT NULL,
  `s_c_id` varchar(10) DEFAULT NULL,
  `s_password` varchar(20) DEFAULT NULL,
  `s_dept` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '14201101', '油炸小波', '女', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('2', '14201102', '赵雯楚', '女', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('3', '14201103', '李嘉丽', '女', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('4', '14201104', '廖美欢', '女', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('5', '14201105', '卢超素', '女', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('6', '14201106', '张琦', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('7', '14201107', '何昶源', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('8', '14201108', '王启宁', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('9', '14201109', '任孟凯', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('10', '14201110', '孙明峰', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('11', '14201111', '崔平平', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('12', '14201112', '高晨阳', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('13', '14201113', '胡烨', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('14', '14201114', '黄帅英', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('15', '14201115', '廖亮', '男', '142011', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('16', '14201201', '陆亦可', '女', '142012', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('17', '14201202', '侯亮平', '男', '142012', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('18', '14201203', '沙瑞金', '男', '142012', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('19', '14201301', '高小琴', '女', '142013', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('20', '14201302', '李达康', '男', '142013', 'cccccc', '软件学院');
INSERT INTO `student` VALUES ('21', '14201303', '易学习', '男', '142013', 'cccccc', '软件学院');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_account` varchar(10) DEFAULT NULL,
  `t_name` varchar(20) DEFAULT NULL,
  `t_sex` varchar(2) DEFAULT NULL,
  `t_dept` varchar(20) DEFAULT NULL,
  `t_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '140001', '舒坚', '男', '软件学院', 'bbbbbb');
INSERT INTO `teacher` VALUES ('2', '140002', '严赢富', '男', '软件学院', 'bbbbbb');
INSERT INTO `teacher` VALUES ('3', '140003', '罗海平', '男', '软件学院', 'bbbbbb');
INSERT INTO `teacher` VALUES ('4', '140004', '梁旗军', '男', '软件学院', 'bbbbbb');
INSERT INTO `teacher` VALUES ('5', '140005', '苏曦', '男', '软件学院', 'bbbbbb');
INSERT INTO `teacher` VALUES ('6', '140006', '刘琳岚', '女', '信工学院', 'bbbbbb');

-- ----------------------------
-- Table structure for `work`
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_title` varchar(50) DEFAULT NULL,
  `w_content` varchar(500) DEFAULT NULL,
  `w_deadline` varchar(30) DEFAULT NULL,
  `w_course` varchar(20) DEFAULT NULL,
  `w_t_account` varchar(10) DEFAULT NULL,
  `w_c_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('1', '操作系统课后作业', '把书抄十遍！！！！！！！！！', '2019-12-31', '操作系统', '140003', '142011');
INSERT INTO `work` VALUES ('2', '数据结构课后作业', '把书抄二十遍！！！！！！！！！', '2019-12-31', '数据结构', '140006', '142013');
INSERT INTO `work` VALUES ('3', '软件工程后作业', '没作业！！！！！！！！！', '2019-12-31', '软件工程', '140001', '142011');
INSERT INTO `work` VALUES ('4', 'UML课后作业', '把书抄五十遍！！！', '2019-12-31', '软件建模', '140002', '142012');
INSERT INTO `work` VALUES ('5', '操作系统课后作业', '把书抄十遍！！！！！！！！！', '2019-12-31', '操作系统', '140003', '142011');
INSERT INTO `work` VALUES ('6', '油炸小波作业', '请大家及时提交作业', '2019-12-31', '软件工程', '140001', '142011');
INSERT INTO `work` VALUES ('7', '好饿的作业', '请大家早点点一次外卖', '2019-12-31', '软件工程', '140001', '142011');
