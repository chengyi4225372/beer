/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : beer

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-28 18:18:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_about`
-- ----------------------------
DROP TABLE IF EXISTS `tp_about`;
CREATE TABLE `tp_about` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_about
-- ----------------------------
INSERT INTO `tp_about` VALUES ('3', '', '企业简介');
INSERT INTO `tp_about` VALUES ('4', '', ' 发展历程 ');
INSERT INTO `tp_about` VALUES ('5', '', '酒类动态 ');
INSERT INTO `tp_about` VALUES ('6', '', '商务合作');

-- ----------------------------
-- Table structure for `tp_attr`
-- ----------------------------
DROP TABLE IF EXISTS `tp_attr`;
CREATE TABLE `tp_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '属性标题',
  `img` varchar(255) NOT NULL COMMENT '属性图',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `info_id` int(10) unsigned NOT NULL COMMENT '关联商品详情id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_bai`
-- ----------------------------
DROP TABLE IF EXISTS `tp_bai`;
CREATE TABLE `tp_bai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `is_deleted` int(255) DEFAULT '0',
  `lan` varchar(200) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bai
-- ----------------------------
INSERT INTO `tp_bai` VALUES ('40', '11', '突发|茅台经销商减少533家，一季度净利112.21亿元同比增32%！', '2019-05-20/5ce26801a0944.jpg', '发四个大字', '2019-05-20 16:40:38', '1', '0', '15', '赌鬼的');
INSERT INTO `tp_bai` VALUES ('41', '10', '发斯蒂芬是', '2019-05-20/5ce26826b8522.jpg', '发DVD是', '2019-05-20 16:41:13', '1', '0', '12', '');
INSERT INTO `tp_bai` VALUES ('42', '10', '辅导班播放的', '2019-05-20/5ce2683d3e3d7.jpg', '发GV发的是仿', '2019-05-20 16:41:39', '1', '0', '15', '翻滚吧不分高低');
INSERT INTO `tp_bai` VALUES ('43', '9', '哈哈哈', '2019-05-20/5ce26859cd194.jpg', '反反复复付付付', '2019-05-20 16:42:07', '1', '0', '58', '凤飞飞');
INSERT INTO `tp_bai` VALUES ('44', '12', '袁仁国被免去贵州省政协全部职务！', '2019-05-23/5ce6524a93387.jpg', '&lt;span style=&quot;background-color:#F5F5F5;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;源自澎湃新闻、动静贵州&lt;/span&gt;&lt;br /&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;值得注意的是，自2018年5月份袁仁国离职后，茅台高层亦进行更换。新高层的到来，让茅台集团能否实现营收千亿目标备受市场关注。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;原标题：袁仁国被免去贵州省政协委员等职务&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;关于免去袁仁国同志政协第十二届贵州省委员会常务委员、经济委员会副主任、省政协委员职务的决定&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;（2019年5月5日政协第十二届贵州省委员会常务委员会第十次会议通过）&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;政协第十二届贵州省委员会常务委员会第十次会议决定，免去袁仁国同志政协第十二届贵州省委员会常务委员、经济委员会副主任、省政协委员职务。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;&amp;emsp;另据北京青年报报道：茅台原董事长袁仁国被免去贵州省政协委员等职务&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:center;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;&lt;img src=&quot;http://www.daqianchao.com/uploads/allimg/190509/3-1Z50Z929255C.jpg&quot; width=&quot;644&quot; height=&quot;427&quot; class=&quot;&quot; style=&quot;height:auto;&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\n&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:center;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;（袁仁国 图/视觉中国）&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;简历&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;1975年—1991年3月，贵州茅台酒厂参加工作，历任办公室秘书、办公室副主任、车间主任、支部书记、厂长助理等职务；&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;1991年3月—1997年1月，贵州茅台酒厂副厂长、党委委员；&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;1997年1月—1998年4月，中国贵州茅台酒厂（集团）有限责任公司董事、副总经理、党委委员；&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;1998年4月—2000 年12月，中国贵州茅台酒厂（集团）有限责任公司党委副书记、副董事长，贵州茅台酒股份有限公司总经理；&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;2000年12月—2011年10月，中国贵州茅台酒厂有限责任公司副董事长、党委副书记、总经理，兼任贵州茅台酒股份有限公司董事长、贵州茅台酒销售有限公司董事长。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;2011年10月，中国贵州茅台酒厂（集团）有限责任公司董事长、党委副书记、总经理，贵州茅台酒股份有限公司董事长。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;2017年1月6日，贵州人大网站引用贵州日报消息，在1月5日贵州省第十二届人民代表大会常务委员会第二十六次会议上，袁仁国被任命为贵州省第十二届人民代表大会财政经济委员会副主任委员。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;2018年2月，任贵州省政协经济委员会副主任委员。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;2018年5月，袁仁国不再担任贵州茅台公司控股股东中国贵州茅台酒厂（集团）有限责任公司董事长、董事、法定代表人及董事会相关职务。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;color:#333333;font-size:17px;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;color:#888888;font-family:微软雅黑;font-size:16px;line-height:25.6px;&quot;&gt;贵州省政协第八、十届委员会委员，贵州省第九届、第十届党代会代表，贵州省第十届人大代表，中共贵州省第十、十一届委员会委员，第十、十二届全国人大代表，中共第十七次全国代表大会代表。&lt;/span&gt;\n&lt;/p&gt;', '2019-05-23 15:57:11', '1', '0', '255', '如果VR飞天狗VB水电费');
INSERT INTO `tp_bai` VALUES ('45', '12', '五粮液集团华东市场一高管被检方决定逮捕', '2019-05-23/5ce652786cc16.jpg', '发广告方法v', '2019-05-23 15:57:50', '1', '0', '25', '方便是地方对比');

-- ----------------------------
-- Table structure for `tp_bai_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_bai_cates`;
CREATE TABLE `tp_bai_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bai_cates
-- ----------------------------
INSERT INTO `tp_bai_cates` VALUES ('11', '相关问题', '0');
INSERT INTO `tp_bai_cates` VALUES ('9', '白酒知识', '0');
INSERT INTO `tp_bai_cates` VALUES ('10', '香型种类', '0');
INSERT INTO `tp_bai_cates` VALUES ('12', '酒业新闻', '0');

-- ----------------------------
-- Table structure for `tp_banner`
-- ----------------------------
DROP TABLE IF EXISTS `tp_banner`;
CREATE TABLE `tp_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL COMMENT '图片路径',
  `url` varchar(200) NOT NULL COMMENT '图片跳转地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发布时间',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `info` varchar(200) NOT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_banner
-- ----------------------------
INSERT INTO `tp_banner` VALUES ('2', '2019-05-21/5ce36b95b8919.jpg', 'index/index.html', '2019-05-27 16:38:13', 'nihaoma 222', 'dsdfdfdffvsdfsdfdssdf3333');
INSERT INTO `tp_banner` VALUES ('3', '2019-05-21/5ce36c0daa1a4.jpg', 'index/index.html', '2019-05-27 16:38:15', '', '');

-- ----------------------------
-- Table structure for `tp_cases`
-- ----------------------------
DROP TABLE IF EXISTS `tp_cases`;
CREATE TABLE `tp_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `cover` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `is_deleted` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cases
-- ----------------------------
INSERT INTO `tp_cases` VALUES ('1', '和平宣言', '外媒称，韩国总统府青瓦台6月5日对特朗普和朝鲜最高领导人金正恩即将举行的峰会表示欢迎，称韩国衷心希望这次历史性会晤取得成功。', '外媒称，韩国总统府青瓦台6月5日对特朗普和朝鲜最高领导人金正恩即将举行的峰会表示欢迎，称韩国衷心希望这次历史性会晤取得成功。\n\n据韩联社6月5日报道，在白宫发布朝美峰会将于12日上午9点举行的消息的几个小时后，青瓦台便发表简短声明说：“我国政府希望朝美峰会取得成功。”\n\n青瓦台强调，韩国将继续谋求正式结束战争，但这取决于朝美峰会成功与否。声明说：“其他问题——如终战宣言——将由韩国、朝鲜和美国在国际社会的密切合作下进行。”', '2018-06-14/5b221b39a99ee.png', '2018-06-13 09:42:16', '1', '0');
INSERT INTO `tp_cases` VALUES ('2', '云南省办理中央环境保护督察', '截止目前共计接收到中央第六环保督察组五批次共计255件交办件,涉及大气、噪声、土壤、辐射、水污染和生态破坏等环境问题。各有关地方和部门正在办理当中。', '昆明信息港讯中央第六环境保护督察组于6月5日进驻云南省开展环境保护督察“回头看”工作,并向社会公开了受理群众投诉举报我省环境问题的电话和邮政信箱,这一举措得到了广大人民群众的积极响应,6月5日以来,陆续收到全省各地群众的投诉举报。按照“每天一汇总,每天一转办”的工作制度。6月9日21:30,督察组向我省交办第五批群众举报投诉环境问题62件(含来信举报11件)。当日22:36,云南省环境保护督察工作领导小组办公室已将“回头看”督察组交办我省的第五批62个环境问题全部移交相关州(市)进行办理', '2018-06-15/5b23159673586.png', '2018-06-13 09:42:19', '1', '0');
INSERT INTO `tp_cases` VALUES ('3', '地素时尚周二申购', '晨报讯6月12日，地素时尚股份有限公司IPO申购', '晨报讯6月12日，地素时尚股份有限公司IPO申购。公司此次发行6100万股，申购价格27.52元，发行市盈率22.99倍，拟募集资金15.82亿元。其中网上发行1830万股，申购代码为732587，单一账户申购上限1.8万股。如无意外，A股又将迎来一只时装股。不过，目前公司尚有两起案件未完全“了结”，其实际控制人马瑞敏的前夫钱维6月5日再次举报地素时尚涉嫌“带病上市”。&lt;img src=&quot;/Uploads/2018-06-13/5b20b37e522b0.png&quot; alt=&quot;&quot; /&gt;', '2018-06-13/5b20b3a840ff5.png', '2018-06-13 09:42:39', '0', '1');

-- ----------------------------
-- Table structure for `tp_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_cates`;
CREATE TABLE `tp_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cates_one` varchar(255) NOT NULL COMMENT '一级分类名称',
  `cates_two` varchar(255) DEFAULT NULL COMMENT '二级分类名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联父级id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cates
-- ----------------------------
INSERT INTO `tp_cates` VALUES ('1', 'Vaporizer', null, '0', '2019-05-15 11:03:02');
INSERT INTO `tp_cates` VALUES ('8', '', 'Concentrate', '1', '2019-05-15 15:37:30');
INSERT INTO `tp_cates` VALUES ('9', 'Terpenes', null, '0', '2019-05-15 15:37:51');
INSERT INTO `tp_cates` VALUES ('10', '', 'Blends', '9', '2019-05-15 15:38:20');
INSERT INTO `tp_cates` VALUES ('11', 'Packaging', null, '0', '2019-05-15 15:38:51');
INSERT INTO `tp_cates` VALUES ('12', 'Accessories', null, '0', '2019-05-15 15:39:04');

-- ----------------------------
-- Table structure for `tp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `tp_comments`;
CREATE TABLE `tp_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_comments
-- ----------------------------
INSERT INTO `tp_comments` VALUES ('1', '管理员', 'admin@qq.com', '1', '138241xxxx', '我的留言是XX', '深圳', '0', null);
INSERT INTO `tp_comments` VALUES ('2', '2', null, '1', null, null, null, '1', null);
INSERT INTO `tp_comments` VALUES ('3', '3', '', '1', '', '1', '', '1', '2018-06-14 11:59:02');
INSERT INTO `tp_comments` VALUES ('4', '333', '', '1', '', '333', '', '1', '2018-06-14 11:59:23');
INSERT INTO `tp_comments` VALUES ('5', '33', '', '1', '', '44', '', '1', '2018-06-14 12:00:07');
INSERT INTO `tp_comments` VALUES ('6', '测试用户', 'test@qq.com', '1', '138241xxx1', '留言内容', '', '0', '2018-06-14 12:02:08');
INSERT INTO `tp_comments` VALUES ('7', '123', '33', '1', '123', '444', '22', '1', '2018-06-14 12:04:30');
INSERT INTO `tp_comments` VALUES ('8', 'f2e', '', '1', '13824122222', 'adf', '', '1', '2018-06-14 17:20:48');

-- ----------------------------
-- Table structure for `tp_contact`
-- ----------------------------
DROP TABLE IF EXISTS `tp_contact`;
CREATE TABLE `tp_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `names` varchar(100) NOT NULL COMMENT '用户名',
  `email` char(50) DEFAULT NULL COMMENT '邮箱地址',
  `tel` char(20) DEFAULT NULL,
  `content` text COMMENT '备注信息',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_custom`
-- ----------------------------
DROP TABLE IF EXISTS `tp_custom`;
CREATE TABLE `tp_custom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` text,
  `value` text,
  `is_deleted` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_custom
-- ----------------------------
INSERT INTO `tp_custom` VALUES ('1', 'site_name', 'Think PHP', '1');
INSERT INTO `tp_custom` VALUES ('2', 'copyright', '2017-2018 by Smile', '1');
INSERT INTO `tp_custom` VALUES ('8', 'hm', '我的衣服2', '1');
INSERT INTO `tp_custom` VALUES ('9', 'hm2', '我的衣服', '1');
INSERT INTO `tp_custom` VALUES ('10', '成都烟酒回收', 'http://www.cdyjcchs.com/', '0');
INSERT INTO `tp_custom` VALUES ('11', '创业网', 'https://www.9988.so/', '0');

-- ----------------------------
-- Table structure for `tp_ding`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ding`;
CREATE TABLE `tp_ding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `lan` int(10) unsigned DEFAULT NULL COMMENT '阅读数',
  `desc` varchar(255) DEFAULT NULL COMMENT '简介',
  `is_deleted` varchar(200) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ding
-- ----------------------------
INSERT INTO `tp_ding` VALUES ('34', '10', '个性化定制酒为什么受到越来越多人的喜爱？', '的是否收费', '2019-05-20 16:13:50', '1', '15', '发的方法是', '0');
INSERT INTO `tp_ding` VALUES ('35', '9', '喝酒脸会白会红你知道是为什么吗？', '&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;font-size:16px;&quot;&gt;&amp;nbsp; 在酒桌上，我们常常会遇到这类人，他们看着似乎挺能喝酒，但是当大量喝酒后，脸会容易变白，而且是越喝越白。在没有达到那个临界点之前，他们往往很能喝，但是一旦达到那个点，他们就容易烂醉如泥。亦或者有些人只要稍微喝一点酒，就很容易脸红。而且很多人认为脸红是因为酒精所导致，这到底是为什么呢？&lt;/span&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;text-align:center;&quot;&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;img src=&quot;http://www.daqianchao.com/uploads/allimg/171205/thumb_397_315_1_3-1G20514231L56.jpg&quot; width=&quot;395&quot; height=&quot;313&quot; alt=&quot;喝酒脸会白会红你知道是为什么吗？&quot; class=&quot;&quot; style=&quot;height:auto;&quot; /&gt;&lt;/span&gt;&lt;br /&gt;\n&amp;nbsp;\n&lt;/div&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 喝酒容易脸白的人是因为他们身体内缺乏乙醇脱氢酶和乙醛脱氢酶两种活性酶，或者说这两种酶不活跃。因为这两种酶的缺乏，所以这类人喝入体内的酒精是靠体液进行稀释的。细心地朋友可能会发现，在喝酒脸白的人中，个头越大感觉越能喝酒。如果是脸越喝越白型的人，喝酒时不要超过半斤，不然有急性酒精中毒的可能性&lt;br /&gt;\n。&amp;nbsp;&lt;/span&gt;\n&lt;/div&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;text-align:center;&quot;&gt;\n	&lt;img src=&quot;http://www.daqianchao.com/uploads/allimg/171205/thumb_558_388_1_3-1G205142341515.jpg&quot; width=&quot;395&quot; height=&quot;275&quot; alt=&quot;喝酒脸会白会红你知道是为什么吗？&quot; class=&quot;loading&quot; style=&quot;height:auto;&quot; /&gt;&amp;nbsp;\n&lt;/div&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;\n	&lt;div style=&quot;padding:0px;margin:0px;&quot;&gt;\n		&lt;span style=&quot;font-size:16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 喝酒脸红是因为脸部的毛细血管扩张的效果，这才是 喝酒脸红 的根本原因。而毛细血管扩张则是因为乙醛。乙醛从哪里来呢？那就不得不提两种重要的酶——乙醇脱氢酶和乙醛脱氢酶。喝酒脸红的人体内含有的是高活性的乙醇脱氢酶，它能够非常快速的将喝入体内的酒精，也就是乙醇，转化成乙醛，而他们体内的乙醛脱氢酶含量较少或者活性较低，导致累积的乙醛而迟迟不能代谢，从而使人涨红了脸。&lt;/span&gt;\n	&lt;/div&gt;\n	&lt;div style=&quot;padding:0px;margin:0px;&quot;&gt;\n		&lt;span style=&quot;font-size:16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 而且特别值得一提的是，喝酒脸红的人其实不容易伤肝脏，一是他们本身的原因，还有就是对于脸红的人，大家都不会一直劝酒。不过值得警惕的是，喝酒脸红的人长期喝酒的话，患食道癌的几率要比旁人大。&lt;a href=&quot;http://www.daqianchao.com/&quot;&gt;大黔朝酒业&lt;/a&gt;提醒您，适宜饮酒有益健康，切勿过量饮酒哦！&lt;/span&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;\n	&amp;nbsp;\n&lt;/div&gt;', '2019-05-20 16:15:06', '1', '45', '发过的', '0');

-- ----------------------------
-- Table structure for `tp_ding_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ding_cates`;
CREATE TABLE `tp_ding_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ding_cates
-- ----------------------------
INSERT INTO `tp_ding_cates` VALUES ('10', '常见问题', '0');
INSERT INTO `tp_ding_cates` VALUES ('9', '定制酒咨询', '0');

-- ----------------------------
-- Table structure for `tp_good`
-- ----------------------------
DROP TABLE IF EXISTS `tp_good`;
CREATE TABLE `tp_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `is_deleted` int(255) DEFAULT '0',
  `lan` varchar(50) DEFAULT NULL COMMENT '阅读数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_good
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods`;
CREATE TABLE `tp_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `is_deleted` int(255) DEFAULT '0',
  `lan` varchar(50) DEFAULT NULL COMMENT '阅读数',
  `xiang` varchar(200) DEFAULT NULL,
  `han` varchar(200) DEFAULT NULL,
  `du` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `fun` varchar(200) DEFAULT NULL,
  `chang` varchar(200) DEFAULT NULL,
  `yuan` varchar(200) DEFAULT NULL COMMENT '原料',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_goods
-- ----------------------------
INSERT INTO `tp_goods` VALUES ('42', '5', '酒醅原浆窖泥封坛酒', '2019-05-25/5ce8fbb495db1.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fbd0373f6.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:24:49', '1', '0', null, '酱香型', ' 6瓶/件，500ML/1瓶', '53%', '贵州省仁怀市茅台镇名酒园', ' 封藏', ' 任何场所', null);
INSERT INTO `tp_goods` VALUES ('43', '6', '原浆典藏定制酒', '2019-05-25/5ce8fc0489ee8.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fc0e418be.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:26:01', '1', '0', null, ' 酱香型', '优质高粱、优质小麦、水', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 洞藏', ' 任何场所', null);
INSERT INTO `tp_goods` VALUES ('44', '7', '原浆定制酒', '2019-05-25/5ce8fc36ca308.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fc3f25b55.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:29:08', '1', '0', null, ' 酱香型', ' 6瓶/件，500ML/1瓶', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 洞藏', ' 任何场所', null);
INSERT INTO `tp_goods` VALUES ('47', '5', '原浆典藏定制酒', '2019-05-25/5ce8fdc30c9b4.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fdccb5156.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:33:17', '1', '0', null, ' 酱香型', ' 6瓶/件，500ML/1瓶', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 封藏', ' 任何场所', null);

-- ----------------------------
-- Table structure for `tp_goods_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_cates`;
CREATE TABLE `tp_goods_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_goods_cates
-- ----------------------------
INSERT INTO `tp_goods_cates` VALUES ('6', '洞藏精品', '0');
INSERT INTO `tp_goods_cates` VALUES ('5', '黔朝酿', '0');
INSERT INTO `tp_goods_cates` VALUES ('7', '藏剑酒楼', '0');

-- ----------------------------
-- Table structure for `tp_good_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_good_cates`;
CREATE TABLE `tp_good_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_good_cates
-- ----------------------------
INSERT INTO `tp_good_cates` VALUES ('10', '合作案例', '0');
INSERT INTO `tp_good_cates` VALUES ('11', '常见问题', '0');

-- ----------------------------
-- Table structure for `tp_infos`
-- ----------------------------
DROP TABLE IF EXISTS `tp_infos`;
CREATE TABLE `tp_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `content` text COMMENT '商品描述',
  `mid` int(10) unsigned NOT NULL COMMENT '商品品牌id',
  `cates_id` int(10) unsigned DEFAULT NULL COMMENT '商品分类一级',
  `cates_two_id` int(10) unsigned DEFAULT NULL COMMENT '商品分类二级',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_infos
-- ----------------------------
INSERT INTO `tp_infos` VALUES ('1', '2019-05-15/5cdbd1f017cb3.png', 'AVD® Slim 350mAh Draw Activated Battery - Multiple Colours Available - Qty 100', '&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;&quot;&gt;\n	This draw activated battery offers draw activation, and a carburetor for airflow control making it easy to vape on the-go. Smart Pulse Technology prevents overheating and ensures consistent flavour, allowing for optimal vapor experience and a hassle-free operation.&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;&quot;&gt;\n	Vapor companies have come a long way from the earlier years of vaporizers. They include major features in small compact sizes. Give AVD a go and see for yourself!\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;&quot;&gt;\n	&lt;span style=&quot;font-weight:700;&quot;&gt;Features&lt;/span&gt;:&lt;br /&gt;\n- Simple draw activation&lt;br /&gt;\n- Haptic feedback feature coming soon&lt;br /&gt;\n- Carburetor for airflow control&lt;br /&gt;\n- Smart Pulse Technology - prevents overheating and ensures consistent flavour&lt;br /&gt;\n- Short- circuit protection&lt;br /&gt;\n- Overcharge protection&lt;br /&gt;\n- Compatible with 510-thread cartridges&lt;br /&gt;\n- Supports atomizers with resistance range of 1.4-2.2 Ohm&amp;nbsp;&lt;br /&gt;\n- Compatible with VapeSocket&lt;br /&gt;\n- 6 months warranty&lt;br /&gt;\n- Less than 1% defect rate\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;&quot;&gt;\n	&lt;span style=&quot;font-weight:700;&quot;&gt;Specification&lt;/span&gt;:&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n- Voltage Setting: 3.3V&lt;br /&gt;\n- Size: 75 x 10.5MM&lt;br /&gt;\n- Capacity: 350mAh\n&lt;/p&gt;', '4', '9', null, '2019-05-15 17:49:51');

-- ----------------------------
-- Table structure for `tp_message`
-- ----------------------------
DROP TABLE IF EXISTS `tp_message`;
CREATE TABLE `tp_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `wei` varchar(50) DEFAULT NULL,
  `tel` char(20) DEFAULT NULL,
  `info` text,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_message
-- ----------------------------
INSERT INTO `tp_message` VALUES ('2', '张无忌', '到底是', '18675326699', 'defdsdsvfsdvdfvffvfvdfvdf', '0000-00-00 00:00:00');
INSERT INTO `tp_message` VALUES ('3', '张无忌', '到底是', 'fdsgdfgf', 'gchjfhjjhcnfg', '2019-05-21 10:37:49');

-- ----------------------------
-- Table structure for `tp_models`
-- ----------------------------
DROP TABLE IF EXISTS `tp_models`;
CREATE TABLE `tp_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `models` varchar(100) NOT NULL COMMENT '产品品牌名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_models
-- ----------------------------
INSERT INTO `tp_models` VALUES ('1', 'AVD®', '2019-05-15 09:59:17');
INSERT INTO `tp_models` VALUES ('3', 'Batteries', '2019-05-15 10:03:17');
INSERT INTO `tp_models` VALUES ('4', 'Cartridges', '2019-05-15 17:43:29');
INSERT INTO `tp_models` VALUES ('5', 'CCELL®', '2019-05-15 10:04:04');

-- ----------------------------
-- Table structure for `tp_moves`
-- ----------------------------
DROP TABLE IF EXISTS `tp_moves`;
CREATE TABLE `tp_moves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_deleted` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moves
-- ----------------------------
INSERT INTO `tp_moves` VALUES ('44', '公司简介', '&lt;p style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#FFFFFF;font-size:16px;&quot;&gt;\n	&amp;emsp;贵州大黔朝酒业有限公司成立于1995年 8 月，注册资金120万。公司以“质量第一、产量服从质量、成本服从质量、效益服从质量、发展服从质量”为宗旨，产品面向全国市场。\n&lt;/p&gt;\n&lt;br /&gt;\n&lt;p style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#FFFFFF;font-size:16px;&quot;&gt;\n	&amp;emsp;&amp;emsp;我公司投入巨资在中国酒都——仁怀市茅台镇上坪村倾力打造酱香型白酒生产基地，基地占地面积约300亩，年基酒生产能力4500吨，基酒储存能力15000吨。公司所有产品完全按照茅台镇传统的生产工艺要求，严格按照节气，端午采曲，重阳投料，全年分两次投料，同一批料要经九次蒸煮，加曲，堆积发酵。一年一个生产周期。在此期间内，经高温制曲，高温堆积，高温入池，高温接酒，低糖化制曲，低水份入池，低出酒量， 低酒精浓度等工艺，保证了茅台镇正宗的制酒工艺，使酒的品质极优，酒体香而不艳，低而不淡，丰满醇厚，回味悠长，空杯留香，且饮后不上头，不口干，为白酒中的珍品。\n&lt;/p&gt;\n&lt;br /&gt;\n&lt;br /&gt;\n&lt;p style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#FFFFFF;font-size:16px;&quot;&gt;\n	&amp;emsp;&amp;emsp;贵州大黔朝酒业有限公司极力打造的 “大黔朝”洞藏老坛酒，采用茅台镇本地糯高粱、小麦、水为原料，秉承贵州茅台千年传统酿造工艺，经九次蒸煮、八次发酵、七次蒸馏取酒，整整一年生产周期精心酿制而成。然后调酒大师根据各轮次酒不同特征，按不同比例进行大盘勾，这种粹取了七轮次酒之精华的原浆酒，在茅台镇用千斤、两千斤陶坛首先储存于通风、避光、清洁、常温条件下，经受自然界四季温差变化，酒体与茅台镇特殊的自然环境中丰富的微生物群、氧气发生吐纳作用，不断的醇化老熟达三年以上，再进行精勾细调，并以特殊的香纸封坛工艺装在1斤至5斤不等的各种规格的小陶坛中，储存于常年10°C恒温的山洞里又五年，由动态储藏转为静态储藏，酒体内各种酸、酯、醇等有机成分更加协调平衡，口感更加爽口，绵柔。\n&lt;/p&gt;\n&lt;br /&gt;\n&lt;p style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#FFFFFF;font-size:16px;&quot;&gt;\n	&amp;emsp;&amp;emsp;大黔朝洞藏老坛酒可谓吸大自然之灵气，沉淀岁月之风华，一年一个变化，品质更加上乘，更适合成功人士、大师名人、企业财团等珍藏，升华新的价值，享受高品位人生。 是商界有识之士投资的理想项目，并特别适合单位团购、会议招待、商务庆典等使用，是饮酒朋友的最佳选择。\n&lt;/p&gt;', '2019-05-20 17:16:10', '0');
INSERT INTO `tp_moves` VALUES ('45', '联系我们', '&lt;img src=&quot;http://api.map.baidu.com/staticimage?center=121.473704%2C31.230393&amp;zoom=12&amp;width=558&amp;height=360&amp;markers=121.473704%2C31.230393&amp;markerStyles=l%2CA&quot; alt=&quot;&quot; /&gt;', '2019-05-20 17:30:55', '1');

-- ----------------------------
-- Table structure for `tp_news`
-- ----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `desc` varchar(255) DEFAULT NULL,
  `is_deleted` int(255) DEFAULT '0',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `lan` int(10) unsigned DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_news
-- ----------------------------
INSERT INTO `tp_news` VALUES ('29', '风水分类', '2019-05-20/5ce2400eb5274.jpg', '鼎折覆餗高凤飞飞', '2019-05-20 13:45:46', null, '1', '的范德萨发', '1', '1', null);
INSERT INTO `tp_news` VALUES ('30', '你是属', '2019-05-20/5ce2409412c86.jpg', '是仿比方说刚发的', '2019-05-20 13:52:24', null, '1', '基本上大V表达方式吧', '0', '1', null);
INSERT INTO `tp_news` VALUES ('31', '不是 ', '2019-05-20/5ce240b3a4ac0.jpg', '哥繁哥更方便', '2019-05-20 13:52:55', null, '1', '解决吧都是包的', '0', '2', null);
INSERT INTO `tp_news` VALUES ('32', '环境设计好多事', '2019-05-20/5ce24362eb626.jpg', '发个梵蒂冈的施工方管', '2019-05-20 14:04:21', null, '1', '看看比较大巴上刊登  ', '0', '4', null);
INSERT INTO `tp_news` VALUES ('33', '什么是凤香型白酒', '2019-05-27/5ceb585277a52.jpg', '&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;font-size:16px;&quot;&gt;如今的市场上酒的种类繁多，比如说红酒、啤酒、&lt;strong&gt;白酒&lt;/strong&gt;等等，但是喝白酒和啤酒的人占大多数。啤酒的种类也有很多，比如说燕京、雪花、乐堡等等，白酒的种类也是有很多，比如说&lt;a href=&quot;http://www.daqianchao.com/baijiu/xiangxing/1837.html&quot; target=&quot;_blank&quot;&gt;酱香型&lt;/a&gt;、&lt;a href=&quot;http://www.daqianchao.com/baijiu/xiangxing/1838.html&quot; target=&quot;_blank&quot;&gt;浓香型&lt;/a&gt;、&lt;a href=&quot;http://www.daqianchao.com/baijiu/xiangxing/1840.html&quot; target=&quot;_blank&quot;&gt;清香型&lt;/a&gt;、凤香型等等。白酒的类型有很多，可能大家最熟悉的就是酱香型白酒，那今天我们来说说什么是凤香型白酒。&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;&lt;/span&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;text-align:center;&quot;&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;img src=&quot;http://www.daqianchao.com/uploads/171212/6-1G212162455544.jpg&quot; width=&quot;450&quot; height=&quot;450&quot; alt=&quot;凤香型白酒&quot; class=&quot;&quot; style=&quot;height:auto;&quot; /&gt;&lt;/span&gt;\n&lt;/div&gt;\n&lt;br /&gt;\n&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;font-size:16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这种香型的白酒，以高粱为原料，是以大麦和豌豆制成的中温人曲和酵母为糖比发酵剂，采用续馇配料，土窖发酵并且窖龄不超过一年，酒海容器贮存等酿造工艺酿制而成。其主体香味成份是乙酸乙酯、己酸乙酯和异戊醇为主，酒质特点为无色，清澈透明，醇香秀雅，甘润挺爽，诸味谐调。尾净悠长。即清而不淡，浓而不酽，融清香、浓香优点于一体。&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;&lt;/span&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;text-align:center;&quot;&gt;\n	&lt;br /&gt;\n&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;img src=&quot;http://www.daqianchao.com/uploads/allimg/171212/thumb_741_453_1_6-1G212162612259.jpg&quot; width=&quot;450&quot; height=&quot;275&quot; alt=&quot;豌豆&quot; class=&quot;&quot; style=&quot;height:auto;&quot; /&gt;&lt;/span&gt;\n&lt;/div&gt;\n&lt;br /&gt;\n&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;font-size:16px;&quot;&gt;&amp;nbsp;西凤酒产于陕西省凤翔县柳林镇西凤酒厂,曾四次被评为国家名酒 西凤酒是我国最古老的历史文化名酒之一。并且有人在其酿造工艺方面进行全面、深入的分析、化验和总结，证明西凤酒在发酵容器、发酵周期、制曲工艺、蒸馏方式、贮存容器、贮存时间、勾兑比例等许多方面与其他香型白酒的香味特征都有着明显的区别，从而为西凤酒的立型奠定了工艺基础。 并且还证明了西西凤酒既不是清香型酒，也不是浓香型酒，其风格别具一格，所以称之为“凤香型”。&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;&quot;&gt;&lt;/span&gt;\n&lt;div style=&quot;padding:0px;margin:0px;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;font-size:14px;background-color:#F5F5F5;text-align:center;&quot;&gt;\n	&lt;br /&gt;\n&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;img src=&quot;http://www.daqianchao.com/uploads/allimg/171212/6-1G212162G5294.jpg&quot; width=&quot;450&quot; height=&quot;338&quot; class=&quot;&quot; style=&quot;height:auto;&quot; /&gt;&lt;/span&gt;\n&lt;/div&gt;\n&lt;br /&gt;\n&lt;span style=&quot;color:#666666;font-family:-apple-system, system-ui, BlinkMacSystemFont, &amp;quot;background-color:#F5F5F5;font-size:16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;看了以上这些，相信你对凤香型白酒也有了一定的了解。以上这些就是凤香型白酒的酿造工艺以及一些独特的特点。市场上一般不了解酒的人都不会购买凤香型的白酒，甚至有的根本不知道有这一香型的白酒。了解以上这些，就代表你对白酒有了更深一步的了解。&lt;/span&gt;', '2019-05-27 11:24:19', null, '1', '如今的市场上酒的种类繁多，比如说红酒、啤酒、白酒等等，但是喝白酒和啤酒的人占大多数。啤酒的种类也有很多，比如说燕京、雪花、乐堡等等，白酒的种类也是有很多，比如说酱香型、浓香型、清香型、凤香型等等。白酒的类型有很多，可能大家最熟悉的就是酱香型白酒，那今天我们来说说什么是凤香型白酒。', '0', '5', null);
INSERT INTO `tp_news` VALUES ('34', '什么是凤香型白酒', '2019-05-27/5ceb5aaa4bd9b.jpg', 'fvdsdsdsgbgbgbgbgbgbgbgbgbgbgbgbgbgbgb&lt;img src=&quot;/Uploads/2019-05-27/5ceb5ab4a1daf.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-27 11:34:14', null, '1', 'gdgfbfs ', '0', '6', '15');

-- ----------------------------
-- Table structure for `tp_new_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_new_cates`;
CREATE TABLE `tp_new_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_new_cates
-- ----------------------------
INSERT INTO `tp_new_cates` VALUES ('1', '媒体焦点', '0');
INSERT INTO `tp_new_cates` VALUES ('4', '动态视频', '0');
INSERT INTO `tp_new_cates` VALUES ('5', '公司新闻', '0');
INSERT INTO `tp_new_cates` VALUES ('6', '活动动态', '0');

-- ----------------------------
-- Table structure for `tp_privacy`
-- ----------------------------
DROP TABLE IF EXISTS `tp_privacy`;
CREATE TABLE `tp_privacy` (
  `content` text,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_privacy
-- ----------------------------
INSERT INTO `tp_privacy` VALUES ('&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;u&gt;&lt;span&gt;PRIVACY POLICY STATEMENT&lt;/span&gt;&lt;/u&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Cannary Cannabis Packaging (the “Provider”) wants you to understand how we use the information you provide to us. We believe that you should have the right to approve the use of that information. As technology changes, it will become necessary for the Provider to make changes to its privacy policy and procedures. All such changes will be posted to this site.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;How We Gather Information&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Our site\'s registration form requires users to give us contact information (including without limitation name, email, and postal address), unique identifiers (like their social insurance number), and demographic information (like their postal code, age, or income level). Contact information from the registration forms is used to provide information about our company. The customer\'s contact information is also used to get in touch with the customer when necessary. Unique identifiers (such as social security numbers) are collected from Web site visitors for use as account numbers in our record system.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Demographic and profile data is also collected at our site. We use this data to tailor our visitor\'s experience at our site showing them content that we think they might be interested in, and displaying the content according to their preferences. We also use this data to send host sites their royalty payments. This data is not available for sale to any outside entity.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Additionally, users should be aware that when they voluntarily disclose personally identifiable information (e.g., user name, e-mail address) on non-secure areas of the Provider’s site, that information, along with any substantive information disclosed in the user\'s communication, can be collected and correlated and used by third parties and may result in unsolicited messages from other posters or third parties. Such activities are beyond the control of the Provider.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;We work closely with our affiliates, and in some cases, we offer services or sell documents jointly with these affiliates. If you purchase documents or services that are provided jointly by the Provider and one of its affiliates, we share our customer information with that affiliate with respect to your purchase.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;We also employ agents to fulfill other functions on our behalf, such as providing marketing assistance, analyzing data, preparing and maintaining site content, processing credit card payments and providing customer service. These agents have access to customer information as required in order to help them perform their functions on our behalf, but they are not allowed to use that information for any other purpose.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;We receive and store certain information whenever you visit our website. We use your IP address to help diagnose problems with our server and to administer our Website and to help identify you. Your IP address is also used to gather broad demographic information and for other purposes. Any information you voluntarily provide to us is used for such purposes as customizing your shopping experience, allowing us to respond to your requests and comments, and improving our website.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;The Provider reserves the right to perform statistical analyses of user behavior and characteristics in order to measure interest in and use of the various areas of our site(s) and to inform advertisers of such information as well as the number of users that have been exposed to or clicked on their advertising banners. The Provider will provide only aggregated data from these analyses to third parties. Also, you should be aware that the Provider may sometimes permit third parties to offer subscription and/or registration-based services through a Provider site. The Provider is not responsible for any actions or policies of such third parties and you should check the applicable privacy policy of such third party when providing personally identifiable information.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;Information Gathered from Minors&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Our products are targeted at individuals over the age of majority (18).&amp;nbsp; Customers purchasing goods or services on the Provider’s site(s) must be at least 18 years of age.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;How We Use this Information&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;The Provider uses your email address to send you news about or updates to the Provider’s site(s), to forward special offers or ads from our affiliates and to respond to customer service issues or comments and questions received from you. Upon request, the Provider will allow any user to “opt out” of further promotional contacts at any time. If you do not wish to receive notification of special offers or news and/or updates to our site(s), please contact the Provider in writing or via e-mail.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Credit card or other financial information that is collected is used for billing and payment purposes for products and services you have ordered through the Provider’s site(s), and is submitted to the appropriate financial institution in order to process your credit card transaction, and will not be provided to any other person or party. All other private information submitted by you is confidential. You can update or delete your private information at any time by contacting the Provider. However, it may be impossible to delete a user’s information without some residual information being left in our customer database due to backups and records of deletions.&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Information submitted by our affiliates is used for the purposes of maintaining the business relationship between the Provider and its affiliates and will not be provided to any third party. Our affiliates are not provided with any access to private information you have provided to us, whether or not such information was provided in connection with the purchase of goods or services from an affiliate’s site.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;Use of Cookies&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;You should be aware that non-personal information and data may be automatically collected through the standard operation of the Provider’s internet servers or through the use of “cookies.” “Cookies” are small text files a web site can use to recognize repeat users, facilitate the user’s ongoing access to and use of the site and allow a site to track usage behavior and compile aggregate data that will allow content improvements and targeted advertising. Cookies are not programs that come onto a user’s system and damage files. Generally, cookies work by assigning a unique number to the user that has no meaning outside the assigning site. Users should be aware that the Provider cannot control the use of cookies or the resulting information by advertisers or third parties hosting data for the Provider. If a user does not want information collected through the use of cookies, there is a simple procedure in most browsers that allow the user to deny or accept the cookie feature; however, users should note that cookies may be necessary to provide the user with certain features (e.g., customized delivery of information) available on the Provider’s Site.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;Transfer of Customer Information&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;Customer information is a valuable business asset. If for any reason the Provider transfers or divests itself of its business assets, our customer information will be transferred as one of the business assets.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;Release of Information When Required&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;The Provider will release customer information to the appropriate authorities if we are required to do so by law. &amp;nbsp;The Provider will also release such information if we feel it is necessary in order to protect our rights or the rights of our customers, affiliates, partners, or any other party, and for purposes of protection from fraud and credit risk.&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;Security&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;This site has security measures in place to protect the loss, misuse, and alteration of the information under our control.&lt;/span&gt;&lt;span&gt;&amp;nbsp;&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;font-size:20px;font-family:Lato, sans-serif;color:#1E202B;background-color:#FFFFFF;font-weight:500 !important;&quot;&gt;\n	&lt;span&gt;How to Contact Us&lt;/span&gt;\n&lt;/h2&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;If you have any questions about this privacy statement, the practices of this site, or your dealings with this Web site, you can contact the Provider. Any dispute arising between you and the Provider with respect to privacy is subject to the terms and conditions of use and this privacy statement, including limitations on damages, arbitration, and application of the laws of British Columbia (Judicial District of Kelowna).&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#1E202B;font-family:Lato, sans-serif;font-size:13px;background-color:#FFFFFF;&quot;&gt;\n	&lt;span&gt;The foregoing policies are effective as of October 23, 2018. The Provider reserves the right to change this policy at any time by notifying users of the existence of a new privacy statement. This statement and the policies outlined herein are not intended to and do not create any contractual or other legal rights in or on behalf of any party.&lt;/span&gt;\n&lt;/p&gt;', '1');

-- ----------------------------
-- Table structure for `tp_protuct`
-- ----------------------------
DROP TABLE IF EXISTS `tp_protuct`;
CREATE TABLE `tp_protuct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `is_show` varchar(255) DEFAULT '1',
  `is_deleted` int(255) DEFAULT '0',
  `lan` varchar(50) DEFAULT NULL COMMENT '阅读数',
  `xiang` varchar(200) DEFAULT NULL,
  `han` varchar(200) DEFAULT NULL,
  `du` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `fun` varchar(200) DEFAULT NULL,
  `chang` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_protuct
-- ----------------------------
INSERT INTO `tp_protuct` VALUES ('43', '6', '原浆典藏定制酒', '2019-05-25/5ce8fc0489ee8.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fc0e418be.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:26:01', '1', '0', null, ' 酱香型', '优质高粱、优质小麦、水', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 洞藏', ' 任何场所');
INSERT INTO `tp_protuct` VALUES ('44', '7', '原浆定制酒', '2019-05-25/5ce8fc36ca308.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fc3f25b55.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:29:08', '1', '0', null, ' 酱香型', ' 6瓶/件，500ML/1瓶', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 洞藏', ' 任何场所');
INSERT INTO `tp_protuct` VALUES ('45', '8', '原浆典藏散酒酒', '2019-05-25/5ce8fce78e638.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fcef097e1.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:30:37', '1', '0', null, ' 酱香型', '优质高粱、优质小麦、水', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 封藏', ' 任何场所');
INSERT INTO `tp_protuct` VALUES ('46', '9', '原浆典藏定制酒', '2019-05-25/5ce9047b7112f.jpg', '&lt;img src=&quot;/Uploads/2019-05-25/5ce8fd57a2845.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-25 16:31:20', '1', '0', null, ' 酱香型', '优质高粱、优质小麦、水', '53%', ' 贵州省仁怀市茅台镇名酒园', ' 洞藏', ' 任何场所');

-- ----------------------------
-- Table structure for `tp_protuct_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_protuct_cates`;
CREATE TABLE `tp_protuct_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_protuct_cates
-- ----------------------------
INSERT INTO `tp_protuct_cates` VALUES ('6', '酱香定制酒', '0');
INSERT INTO `tp_protuct_cates` VALUES ('7', '茅台镇散酒', '0');
INSERT INTO `tp_protuct_cates` VALUES ('8', '茅台镇原浆酒', '0');
INSERT INTO `tp_protuct_cates` VALUES ('9', '白酒知识', '0');

-- ----------------------------
-- Table structure for `tp_sbeer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_sbeer`;
CREATE TABLE `tp_sbeer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sbeer
-- ----------------------------
INSERT INTO `tp_sbeer` VALUES ('1', '', '一号散酒');
INSERT INTO `tp_sbeer` VALUES ('2', '', '二号散酒');
INSERT INTO `tp_sbeer` VALUES ('3', '', '三号散酒');
INSERT INTO `tp_sbeer` VALUES ('4', '', '四号散酒');
INSERT INTO `tp_sbeer` VALUES ('5', '', '五号散酒');
INSERT INTO `tp_sbeer` VALUES ('6', '', '六号散酒');
INSERT INTO `tp_sbeer` VALUES ('7', '', '大桶散装白酒 ');
INSERT INTO `tp_sbeer` VALUES ('8', '', '小瓶散装白酒 ');
INSERT INTO `tp_sbeer` VALUES ('9', '', '大坛散装白酒');
INSERT INTO `tp_sbeer` VALUES ('10', '', '一斤散酒 ');
INSERT INTO `tp_sbeer` VALUES ('11', '', '两斤散酒 ');
INSERT INTO `tp_sbeer` VALUES ('12', '', '三斤散酒');

-- ----------------------------
-- Table structure for `tp_service`
-- ----------------------------
DROP TABLE IF EXISTS `tp_service`;
CREATE TABLE `tp_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztitle` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service
-- ----------------------------
INSERT INTO `tp_service` VALUES ('1', '白酒招商', '招商政策', '第三方的VB', '#', '2019-05-23/5ce64ce19e2ae.jpg');
INSERT INTO `tp_service` VALUES ('2', '散酒加盟', '散酒加盟', '的方式刚发的', '#', '2019-05-23/5ce64d3f5645f.jpg');
INSERT INTO `tp_service` VALUES ('3', '定制酒', '定制酒', '的地方第三方', '#', '2019-05-23/5ce64d688a66c.jpg');
INSERT INTO `tp_service` VALUES ('4', '零售产品', '零售产品', '多少的发送GV发GV是的北师大', '#', '2019-05-23/5ce64ec348b97.jpg');
INSERT INTO `tp_service` VALUES ('5', '定制案例', '定制案例', 'dsfsdfsfff第三方士大夫', '#', '2019-05-23/5ce64f0b6252b.jpg');
INSERT INTO `tp_service` VALUES ('6', 'oem贴牌', 'oem贴牌', '非官方的施工方第三个', '#', '2019-05-23/5ce64f22ca593.jpg');
INSERT INTO `tp_service` VALUES ('7', '婚宴定制酒', '婚宴定制酒', '发广告的步伐', '#', '2019-05-23/5ce64f3f471fb.jpg');
INSERT INTO `tp_service` VALUES ('8', '招商流程', '招商流程', '风格是打个比方', '#', '2019-05-23/5ce64f54e8062.jpg');
INSERT INTO `tp_service` VALUES ('9', '我们的客户', '我们的客户', '发GV办公室动不动 ', '#', '2019-05-23/5ce64f673b205.jpg');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `desc` text,
  `footer_js` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('1', '电子烟', 'think ', 'This is a templete', '&lt;script&gt;\nvar _hmt = _hmt || [];\n(function() {\n  var hm = document.createElement(&quot;script&quot;);\n  hm.src = &quot;https://hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911&quot;;\n  var s = document.getElementsByTagName(&quot;script&quot;)[0];\n  s.parentNode.insertBefore(hm, s)})();\n&lt;/script&gt;');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', '0192023a7bbd73250516f069df18b500', 'admin', 'admin@qq.com', '2018-06-13 14:38:10', '1', '0');
INSERT INTO `tp_user` VALUES ('27', '202cb962ac59075b964b07152d234b70', 'guest', null, '2018-06-14 17:14:02', '1', '0');
INSERT INTO `tp_user` VALUES ('30', '5888e6252d5752ccbc587119101bde54', 'test', null, '2019-05-16 10:55:48', '1', '0');

-- ----------------------------
-- Table structure for `tp_white`
-- ----------------------------
DROP TABLE IF EXISTS `tp_white`;
CREATE TABLE `tp_white` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '关联id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `lan` varchar(50) DEFAULT NULL COMMENT '阅读数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_white
-- ----------------------------
INSERT INTO `tp_white` VALUES ('44', '13', '茅台镇贵宾酒', '2019-05-28/5cecfa5172c73.jpg', '&lt;img src=&quot;/Uploads/2019-05-28/5cecfa5920fbf.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-28 17:11:56', '801');
INSERT INTO `tp_white` VALUES ('43', '12', '茅台镇贵宾酒', '2019-05-28/5cecfa0c95acc.jpg', '&lt;p&gt;\n	&lt;img src=&quot;/Uploads/2019-05-28/5cecfa14219a4.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/Uploads/2019-05-28/5cecfa26af180.jpg&quot; alt=&quot;&quot; /&gt;\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n&lt;/p&gt;', '2019-05-28 17:06:48', '80');
INSERT INTO `tp_white` VALUES ('45', '14', '茅台镇贵宾酒', '2019-05-28/5cecfa69b0a2b.jpg', '&lt;img src=&quot;/Uploads/2019-05-28/5cecfa714ca08.jpg&quot; alt=&quot;&quot; /&gt;', '2019-05-28 17:11:47', '80');

-- ----------------------------
-- Table structure for `tp_white_cates`
-- ----------------------------
DROP TABLE IF EXISTS `tp_white_cates`;
CREATE TABLE `tp_white_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_white_cates
-- ----------------------------
INSERT INTO `tp_white_cates` VALUES ('13', '白酒贴牌新闻', '0');
INSERT INTO `tp_white_cates` VALUES ('12', '白酒贴牌', '0');
INSERT INTO `tp_white_cates` VALUES ('14', '白酒贴牌案例', '0');

-- ----------------------------
-- Table structure for `tp_zbeer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_zbeer`;
CREATE TABLE `tp_zbeer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zbeer
-- ----------------------------
INSERT INTO `tp_zbeer` VALUES ('1', '#', '婚宴定制酒');
INSERT INTO `tp_zbeer` VALUES ('2', '', '私人定制酒');
INSERT INTO `tp_zbeer` VALUES ('3', '', '收藏定制酒');
INSERT INTO `tp_zbeer` VALUES ('4', '', '寿宴定制酒');
INSERT INTO `tp_zbeer` VALUES ('5', '', '个性化定制酒');
INSERT INTO `tp_zbeer` VALUES ('6', '', '接待定制酒');
INSERT INTO `tp_zbeer` VALUES ('7', '', '周年庆定制酒');
INSERT INTO `tp_zbeer` VALUES ('8', '', '企业定制酒');
