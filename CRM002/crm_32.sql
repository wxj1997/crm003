/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : crm_32

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-02-16 15:04:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(64) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(64) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '客户行业', '教育培训 ', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('10', '003', '公司性质', '民企', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('12', '004', '年营业额', '1-10万', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('13', '004', '年营业额', '10-20万', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('14', '004', '年营业额', '20-50万', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('15', '004', '年营业额', '50-100万', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('16', '004', '年营业额', '100-500万', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('17', '004', '年营业额', '500-1000万', null, '6', '1', null);
INSERT INTO `base_dict` VALUES ('18', '005', '客户状态', '基础客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('19', '005', '客户状态', '潜在客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '客户行业', '电子商务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('20', '005', '客户状态', '成功客户', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('21', '005', '客户状态', '无效客户', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('22', '006', '客户级别', '普通客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('23', '006', '客户级别', 'VIP客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('24', '007', '商机状态', '意向客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('25', '007', '商机状态', '初步沟通', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('26', '007', '商机状态', '深度沟通', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('27', '007', '商机状态', '签订合同', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '客户行业', '对外贸易', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('30', '008', '商机类型', '新业务', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('31', '008', '商机类型', '现有业务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('32', '009', '商机来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('33', '009', '商机来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('34', '009', '商机来源', '推广活动', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '客户行业', '酒店旅游', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '客户行业', '房地产', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '002', '客户信息来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('7', '002', '客户信息来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('8', '003', '公司性质', '合资', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('9', '003', '公司性质', '国企', null, '2', '1', null);

-- ----------------------------
-- Table structure for cst_customer
-- ----------------------------
DROP TABLE IF EXISTS `cst_customer`;
CREATE TABLE `cst_customer` (
  `cust_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_source` varchar(255) DEFAULT NULL,
  `cust_industry` varchar(255) DEFAULT NULL,
  `cust_level` varchar(255) DEFAULT NULL,
  `cust_linkman` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `cust_mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `FKeh5g36duab8g1h051pdjfwcgd` (`cust_source`),
  KEY `FK2xhr3arwp3tkuae1da4lqv352` (`cust_industry`),
  KEY `FKrty52nvbjg1echf0se39eng49` (`cust_level`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_customer
-- ----------------------------
INSERT INTO `cst_customer` VALUES ('1', '传智播客', '33', '1', '23', null, '1234', '123');
INSERT INTO `cst_customer` VALUES ('2', '黑马程序员', null, '2', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('3', '百度', null, '3', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('4', '腾讯', null, '4', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('5', '阿里巴巴', null, '5', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('6', '华为', null, '4', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('7', '联想', null, '3', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('8', '神舟', null, '2', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('9', '360', null, '1', null, null, null, null);
INSERT INTO `cst_customer` VALUES ('10', '快播', null, '2', null, null, null, null);

-- ----------------------------
-- Table structure for cst_linkman
-- ----------------------------
DROP TABLE IF EXISTS `cst_linkman`;
CREATE TABLE `cst_linkman` (
  `lkm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lkm_gender` char(1) DEFAULT NULL,
  `lkm_name` varchar(255) DEFAULT NULL,
  `lkm_phone` varchar(255) DEFAULT NULL,
  `lkm_email` varchar(255) DEFAULT NULL,
  `lkm_qq` varchar(255) DEFAULT NULL,
  `lkm_mobile` varchar(255) DEFAULT NULL,
  `lkm_memo` varchar(255) DEFAULT NULL,
  `lkm_position` varchar(255) DEFAULT NULL,
  `lkm_cust_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lkm_id`),
  KEY `FKh9yp1nql5227xxcopuxqx2e7q` (`lkm_cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_linkman
-- ----------------------------
INSERT INTO `cst_linkman` VALUES ('1', '1', '东哥', '110', null, null, '110', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('2', '1', '悦哥', '110', null, null, '110', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('3', '1', '刘哥', '110', null, null, '110', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('4', '1', '强弟', '110', null, null, '120', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('5', '1', '勇弟', '150', null, null, '150', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('6', '1', '郝弟', '110', null, null, '120', null, null, '1');
INSERT INTO `cst_linkman` VALUES ('7', '1', '魏晰杰', '158', null, null, '158', null, null, '2');
INSERT INTO `cst_linkman` VALUES ('8', '1', '李彦宏', '123', null, null, '123', null, null, '3');
INSERT INTO `cst_linkman` VALUES ('9', null, '李彦宏', '', null, null, '', null, null, null);
INSERT INTO `cst_linkman` VALUES ('10', null, '李彦宏', '', null, null, '', null, null, null);
INSERT INTO `cst_linkman` VALUES ('11', null, '', '123', null, null, '', null, null, null);

-- ----------------------------
-- Table structure for sale_visit
-- ----------------------------
DROP TABLE IF EXISTS `sale_visit`;
CREATE TABLE `sale_visit` (
  `visit_id` varchar(255) NOT NULL,
  `visit_interviewee` varchar(255) DEFAULT NULL,
  `visit_addr` varchar(255) DEFAULT NULL,
  `visit_detail` varchar(255) DEFAULT NULL,
  `visit_time` datetime DEFAULT NULL,
  `visit_nexttime` datetime DEFAULT NULL,
  `visit_cust_id` bigint(20) DEFAULT NULL,
  `visit_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `FKgr4aivocixwcvkwxcmc0b4css` (`visit_cust_id`),
  KEY `FKc92iepd26mixxfiris92hccjx` (`visit_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_visit
-- ----------------------------
INSERT INTO `sale_visit` VALUES ('dghxfgx', '杰哥帅', '天中', '很好', '2019-02-10 00:00:00', '2019-02-16 00:00:00', '3', '2');
INSERT INTO `sale_visit` VALUES ('4028358168ae2e6b0168ae3a04a00008', '杰哥尔', '修正大楼', '融洽', '2019-02-07 00:00:00', '2019-02-08 00:00:00', '3', '2');
INSERT INTO `sale_visit` VALUES ('4028358168ae2e6b0168ae3dd05f000a', '马云', '杭州', '融洽', '2019-02-22 00:00:00', '2019-02-20 00:00:00', '5', '2');
INSERT INTO `sale_visit` VALUES ('4028358168ae2e6b0168ae461faf000b', '为袭击', '修正大楼', '漂亮', '2019-02-24 00:00:00', '2019-02-24 00:00:00', '6', '2');
INSERT INTO `sale_visit` VALUES ('4028358168ae7ab70168ae7d44990000', '杰哥', '天中', '漂亮', '2019-02-08 00:00:00', '2019-02-22 00:00:00', '4', '2');
INSERT INTO `sale_visit` VALUES ('4028358168ae88c30168ae8d8e760000', '为袭击', 'fdbx', '很好', '2019-02-01 00:00:00', '2019-02-01 00:00:00', '2', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_state` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'hanmeimei', '韩梅梅', '81dc9bdb52d04dc20036dbd8313ed055', null);
INSERT INTO `sys_user` VALUES ('2', 'tom', '汤姆', '81dc9bdb52d04dc20036dbd8313ed055', null);
INSERT INTO `sys_user` VALUES ('3', 'wxj', '魏晰杰', '81dc9bdb52d04dc20036dbd8313ed055', null);
