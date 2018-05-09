/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : finance

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-05-09 16:51:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `key_word` varchar(100) DEFAULT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) DEFAULT '1' COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向文章;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '1', '测试', '潇洒潇洒潇洒潇洒', '1', '1515143507', '1515136153');
INSERT INTO `banner_item` VALUES ('2', '4', '11', '/test', '1', null, '1517116760');
INSERT INTO `banner_item` VALUES ('3', '5', '投资教育', '#', '1', null, '1520412868');
INSERT INTO `banner_item` VALUES ('4', '6', '轮播图1', '/', '1', null, '1520840810');
INSERT INTO `banner_item` VALUES ('5', '7', '联系我们', '/contact', '1', null, '1523436619');
INSERT INTO `banner_item` VALUES ('6', '9', '联系1', '/contact', '1', null, '1523437553');
INSERT INTO `banner_item` VALUES ('7', '10', '教育', '/', '1', null, '1523440408');
INSERT INTO `banner_item` VALUES ('8', '11', '11', '/contact', '1', null, '1523440584');
INSERT INTO `banner_item` VALUES ('9', '12', '资讯', '/contact', '1', null, '1525251272');

-- ----------------------------
-- Table structure for zwf_admin_class
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_class`;
CREATE TABLE `zwf_admin_class` (
  `class_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `class_name` char(30) NOT NULL COMMENT '分类名',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常 2:删除',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_name` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of zwf_admin_class
-- ----------------------------
INSERT INTO `zwf_admin_class` VALUES ('2', '新闻', '1', '2017-11-30 14:11:26', '2017-11-30 14:11:26');
INSERT INTO `zwf_admin_class` VALUES ('3', '投资者教育', '1', '2018-02-26 11:30:08', '2018-02-26 11:30:08');

-- ----------------------------
-- Table structure for zwf_admin_column
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_column`;
CREATE TABLE `zwf_admin_column` (
  `column_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `column_name` char(50) NOT NULL COMMENT '栏目名',
  `column_pid` tinyint(3) NOT NULL COMMENT '父级id',
  `column_path` varchar(255) NOT NULL COMMENT '全部路径',
  `column_filename` varchar(50) NOT NULL COMMENT '文件名,完整连接是父级完整连接/文件名',
  `column_chaining` varchar(50) NOT NULL COMMENT '完整链接',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常 2:删除',
  `column_display` tinyint(1) unsigned DEFAULT '2' COMMENT '控制显示和隐藏 1:显示 2:隐藏',
  `icon_name` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `icon_five` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `sort` int(11) DEFAULT '0' COMMENT '栏目排序',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`column_id`),
  UNIQUE KEY `column_name` (`column_name`),
  UNIQUE KEY `column_filename` (`column_filename`),
  UNIQUE KEY `column_chaining` (`column_chaining`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of zwf_admin_column
-- ----------------------------
INSERT INTO `zwf_admin_column` VALUES ('1', '关于我们', '0', '0,', 'related', '/related', '1', '1', null, null, '1', '2017-11-29 13:39:17', '2017-11-30 09:20:42');
INSERT INTO `zwf_admin_column` VALUES ('3', '中心简介', '1', '0,1', 'profile', '/related/profile', '1', '1', '/images/home/1470132689039080480.png', '/images/home/1470132690290083868.png', '0', '2017-11-30 10:10:45', '2017-11-30 10:10:45');
INSERT INTO `zwf_admin_column` VALUES ('4', '信息中心', '0', '0,', 'information', '/information', '1', '1', null, null, '2', '2017-11-30 15:13:19', '2017-11-30 15:13:19');
INSERT INTO `zwf_admin_column` VALUES ('5', '中心公告', '4', '0,4', 'announcement', '/information/announcement', '1', '1', '/images/home/1470980324577050576.png', '/images/home/1470980321094068281.png', '0', '2017-11-30 15:13:39', '2017-11-30 15:13:39');
INSERT INTO `zwf_admin_column` VALUES ('6', '中心动态', '4', '0,4', 'dynamics', '/information/dynamics', '1', '1', '/images/home/1470980349314080752.png', '/images/home/1470980344993043989.png', '0', '2017-11-30 15:14:06', '2018-01-24 14:11:39');
INSERT INTO `zwf_admin_column` VALUES ('7', '资讯要闻', '4', '0,4', 'impnews', '/information/impnews', '1', '1', '/images/home/1470132846892068195.png', '/images/home/1470132847938083162.png', '0', '2017-11-30 15:23:46', '2017-11-30 15:23:46');
INSERT INTO `zwf_admin_column` VALUES ('8', '投资者教育', '0', '0,', 'education', '/education', '1', '1', null, null, '7', '2017-11-30 15:24:43', '2017-11-30 15:24:43');
INSERT INTO `zwf_admin_column` VALUES ('9', '法律法规', '8', '0,8', 'law', '/education/law', '1', '1', '/images/home/1470133109939053904.png', '/images/home/1470133110699044033.png', '0', '2017-11-30 15:25:13', '2018-03-07 16:12:34');
INSERT INTO `zwf_admin_column` VALUES ('10', '业务规范', '8', '0,8', 'business', '/education/business', '1', '1', '/images/home/1470979900633086127.png', '/images/home/1470979904060073827.png', '0', '2017-11-30 15:25:46', '2017-11-30 15:25:46');
INSERT INTO `zwf_admin_column` VALUES ('11', '风险管理与防范', '8', '0,8', 'risk', '/education/risk', '1', '1', '/images/home/1470980303779080316.png', '/images/home/1470980298085010119.png', '0', '2017-11-30 15:26:27', '2017-11-30 15:26:27');
INSERT INTO `zwf_admin_column` VALUES ('12', '投资者权益保护', '8', '0,8', 'equity', '/education/equity', '1', '1', '/images/home/1470980270485079433.png', '/images/home/1470980262389051972.png', '0', '2017-11-30 15:27:04', '2017-11-30 15:27:04');
INSERT INTO `zwf_admin_column` VALUES ('13', '产品知识', '8', '0,8', 'knowledge', '/education/knowledge', '1', '1', '/images/home/1470980127432067424.png', '/images/home/1470980124969001196.png', '0', '2017-11-30 15:27:30', '2018-03-07 16:13:10');
INSERT INTO `zwf_admin_column` VALUES ('14', '常见问题', '8', '0,8', 'question', '/education/question', '1', '1', '/images/home/1470133156637090590.png', '/images/home/1470133157455051879.png', '0', '2017-11-30 15:28:07', '2018-01-04 09:45:32');
INSERT INTO `zwf_admin_column` VALUES ('15', '联系我们', '0', '0,', 'contact', '/contact', '1', '1', null, null, '8', '2017-11-30 15:47:35', '2017-11-30 15:47:35');
INSERT INTO `zwf_admin_column` VALUES ('16', '职位招聘', '15', '0,15', 'recruit', '/contact/recruit', '1', '1', '/images/home/1470979794503031542.png', '/images/home/1470979797973056209.png', '0', '2017-11-30 15:48:04', '2018-01-28 11:53:55');
INSERT INTO `zwf_admin_column` VALUES ('17', '上市品种', '0', '0,', 'variety', '/variety', '1', '1', null, null, '3', '2018-01-28 23:21:18', '2018-01-28 23:24:07');
INSERT INTO `zwf_admin_column` VALUES ('18', '原油', '17', '0,17', '#001', '/variety/#001', '1', '2', null, null, '0', '2018-01-28 23:23:55', '2018-03-12 13:54:53');
INSERT INTO `zwf_admin_column` VALUES ('19', '布伦特原油', '17', '0,17', '#002', '/variety/#002', '1', '2', null, null, '0', '2018-01-28 23:24:45', '2018-03-12 13:54:51');
INSERT INTO `zwf_admin_column` VALUES ('20', '黄金T+D', '17', '0,17', '#003', '/variety/#003', '1', '2', null, null, '0', '2018-01-28 23:25:38', '2018-03-12 13:54:49');
INSERT INTO `zwf_admin_column` VALUES ('21', '白银T+D', '17', '0,17', '#004', '/variety/#004', '1', '2', null, null, '0', '2018-01-28 23:26:24', '2018-03-12 13:54:46');
INSERT INTO `zwf_admin_column` VALUES ('22', '下载中心', '0', '0,', 'download', '/download', '1', '1', null, null, '4', '2018-01-28 23:27:27', '2018-01-28 23:27:27');
INSERT INTO `zwf_admin_column` VALUES ('23', '开户流程', '0', '0,', 'servicecenter', '/servicecenter', '1', '1', null, null, '5', '2018-01-28 23:30:16', '2018-01-28 23:30:16');
INSERT INTO `zwf_admin_column` VALUES ('24', '持仓数据', '0', '0,', 'metals', '/metals', '1', '2', null, null, '6', '2018-01-28 23:31:00', '2018-02-01 15:29:39');
INSERT INTO `zwf_admin_column` VALUES ('25', '社会责任', '0', '0,', 'social', '/social', '1', '1', null, null, '9', '2018-01-28 23:32:12', '2018-01-28 23:32:12');
INSERT INTO `zwf_admin_column` VALUES ('28', '组织架构', '1', '0,1', 'organizationalstructure', '/related/organizationalstructure', '1', '1', '/images/home/1470132724809028526.png', '/images/home/1470132725887050169.png', '0', '2018-01-29 00:01:22', '2018-01-29 00:01:22');
INSERT INTO `zwf_admin_column` VALUES ('29', '发展历程', '1', '0,1', 'development', '/related/development', '1', '1', '/images/home/1470132742705094983.png', '/images/home/1470132743659099956.png', '0', '2018-01-29 00:02:21', '2018-03-07 10:41:04');

-- ----------------------------
-- Table structure for zwf_admin_contact
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_contact`;
CREATE TABLE `zwf_admin_contact` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `department` char(50) NOT NULL COMMENT '部门',
  `position` char(50) NOT NULL COMMENT '职位',
  `duty` text NOT NULL COMMENT '工作职责',
  `demand` text NOT NULL COMMENT '工作需求',
  `z_index` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序顺序',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常 2:删除',
  `truetime` int(10) NOT NULL COMMENT '创建时间',
  `lastdotime` int(10) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='联系我们 职业招聘';

-- ----------------------------
-- Records of zwf_admin_contact
-- ----------------------------
INSERT INTO `zwf_admin_contact` VALUES ('1', '现货中心', '现货经理', '1、进行市场调研，完善现货交易模式；<br>2、根据交易中心整体发展战略协助设计交易品种、制定和修订交易制度；<br>3、及时收集、分析国内外关于大宗商品行业的政策、信息，并提出相关建议，全面跟进行业政策动态，及时汇总分析，基于对政策的理解，为公司争取利益最大化；<br>4、为现货交易的大宗商品,进行物流仓储,贸易结算,现货交收,的工作。<br>5、积极了解上下游客户对现货交易的需求,向公司提出合理化建议,以完善公司现货交易的整个流程。<br>6、维护好现有的交易客户,积极协助公司开拓新的资源,新的客户群。', '1、本专以上学历，贸易、金融、物流相关专业毕业；<br>2、熟悉大宗商品现货交易模式；<br>3、3年以上的贸易公司工作经验(大宗商品方面的矿产,金属等),对进出口贸易的流程,物流仓储,质量检验,结算等工作要熟悉。<br>4、良好的沟通能力，品行端正、责任心强，细致耐心，有敬业和团队合作精神，能承担较强工作。', '1', '1', '1514855814', '1521604607');
INSERT INTO `zwf_admin_contact` VALUES ('5', '企业部', '销售', '123455677888', '234343244545', '1', '1', '1519455169', '1519455169');

-- ----------------------------
-- Table structure for zwf_admin_education
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_education`;
CREATE TABLE `zwf_admin_education` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `class_id` smallint(5) NOT NULL COMMENT '分类id',
  `column_id` tinyint(3) NOT NULL COMMENT '栏目id',
  `title` char(100) NOT NULL COMMENT '文章标题',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常 2:删除',
  `onclick` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `truetime` int(10) NOT NULL COMMENT '创建时间',
  `lastdotime` int(10) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='投资者教育 文章';

-- ----------------------------
-- Records of zwf_admin_education
-- ----------------------------
INSERT INTO `zwf_admin_education` VALUES ('3', '2', '12', '投资理财', '1', '0', '1519356179', '1520233240');
INSERT INTO `zwf_admin_education` VALUES ('7', '2', '9', '测试4', '1', '0', '1519357838', '1520390581');
INSERT INTO `zwf_admin_education` VALUES ('8', '2', '10', '测试5', '1', '0', '1519358039', '1519632167');
INSERT INTO `zwf_admin_education` VALUES ('9', '3', '9', '消费者权益保护法', '1', '0', '1519616536', '1520390580');
INSERT INTO `zwf_admin_education` VALUES ('10', '3', '9', '中华人民共和国合同法司法解释(二)', '1', '0', '1519616564', '1520390576');
INSERT INTO `zwf_admin_education` VALUES ('11', '2', '9', 'a\'a', '1', '0', '1519626299', '1520390575');
INSERT INTO `zwf_admin_education` VALUES ('12', '3', '9', 'c\'c', '1', '0', '1519626323', '1519626323');
INSERT INTO `zwf_admin_education` VALUES ('13', '3', '9', 'd\'d', '1', '0', '1519626340', '1519626340');
INSERT INTO `zwf_admin_education` VALUES ('14', '2', '9', 'e\'e', '1', '0', '1519626353', '1519626353');
INSERT INTO `zwf_admin_education` VALUES ('15', '2', '9', 'f\'f', '1', '0', '1519626363', '1519634369');
INSERT INTO `zwf_admin_education` VALUES ('16', '3', '10', '业务1', '1', '0', '1520217427', '1520217427');
INSERT INTO `zwf_admin_education` VALUES ('17', '3', '11', '风风风', '1', '0', '1520222388', '1520222388');
INSERT INTO `zwf_admin_education` VALUES ('18', '3', '13', '知识产品的', '1', '0', '1520239604', '1520239604');
INSERT INTO `zwf_admin_education` VALUES ('19', '3', '14', '结算价不等于收盘价', '1', '0', '1520240061', '1520389963');
INSERT INTO `zwf_admin_education` VALUES ('20', '3', '14', '均价为什么不是收盘前的均价?', '1', '0', '1521711422', '1521711772');
INSERT INTO `zwf_admin_education` VALUES ('21', '3', '14', '软件关闭了，止盈止损就不生效了？', '2', '0', '1521712293', '1522134061');
INSERT INTO `zwf_admin_education` VALUES ('22', '3', '14', '过夜单止盈止损', '1', '0', '1521712920', '1523432477');

-- ----------------------------
-- Table structure for zwf_admin_education_data
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_education_data`;
CREATE TABLE `zwf_admin_education_data` (
  `news_id` int(10) NOT NULL COMMENT '新闻id',
  `class_id` smallint(5) NOT NULL COMMENT '分类id',
  `writer` varchar(30) DEFAULT NULL COMMENT '作者',
  `befrom` varchar(60) DEFAULT NULL COMMENT '来源',
  `newstext` mediumtext NOT NULL COMMENT '文章内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资者教育 文章内容';

-- ----------------------------
-- Records of zwf_admin_education_data
-- ----------------------------
INSERT INTO `zwf_admin_education_data` VALUES ('3', '2', null, '南亚国际', '<p>钱钱钱钱钱钱钱钱钱钱钱钱钱钱11</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('7', '2', null, null, '<p>呜呜呜呜呜呜呜呜呜呜</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('8', '2', 'zzz', '南亚国际', '<p>6666666666333222<br/><br/></p>');
INSERT INTO `zwf_admin_education_data` VALUES ('9', '3', 'zzz', '南亚国际', '<p>ffffffffffff</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('10', '3', '张乐琼', '南亚国际', '<p>wsdwdwe</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('11', '2', '曾伟峰', '南亚国际', '<p>a&#39;q&#39;a&#39;a</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('12', '3', '曾伟峰', '南亚国际', '<p>c&#39;c</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('13', '3', null, null, '<p>d&#39;d</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('14', '2', null, null, '<p>e&#39;e</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('15', '2', 'zzz', null, '<p>f&#39;f</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('16', '3', 'zzz', '南亚国际', '<p>11111111111111</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('17', '3', 'zzz', '南亚国际', '<p>22222</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('18', '3', 'zzz', '南亚国际', '<p>2222222222222</p>');
INSERT INTO `zwf_admin_education_data` VALUES ('19', '3', 'zzz', '南亚国际', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收盘价是最后一比交易的成交价格。结算价是加权平均出来的,收盘后才能算出来.每交易所的具体算法不一样。</span><br/><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">期货公司规定的，客户持仓盈亏按结算价计算。</span></p>');
INSERT INTO `zwf_admin_education_data` VALUES ('20', '3', null, '南亚国际', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); font-family: 宋体, SimSun; font-size: 16px;\">&nbsp; 均价点位是五点结算之前的平均价格不是收盘前的平均价，虽然我们国内盘面收盘休市了,但国外的数据还在波动<br/>只不过我们的盘面是休息时间没有体现。</span></span></p>');
INSERT INTO `zwf_admin_education_data` VALUES ('21', '3', null, '南亚国际', '<p>&nbsp;&nbsp;<span style=\"font-size: 18px; font-family: 楷体, 楷体_GB2312, SimKai;\">&nbsp;&nbsp;<span style=\"font-size: 18px; font-family: 宋体, SimSun;\">pc电脑端的止盈止损是本地的，需要软件开启才能起作用（不是云端的），手机端的止盈止损是云端的可以不需要一直开启手机端。</span></span><span style=\"font-family: arial, helvetica, sans-serif;\"></span><br/></p>');
INSERT INTO `zwf_admin_education_data` VALUES ('22', '3', null, '南亚国际', '<p>&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。<br/>&nbsp; &nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span><br/>&nbsp; &nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。<br/>&nbsp;&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。<br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span><br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span><br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。<br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span><br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span><br/>&nbsp;&nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 18px;\">关于过夜单止盈止损的问题：客户在收盘前设置好了止盈止损，但收盘期间国外盘面还在波动交易，如果在此期间有到了<br/>客户所设置的止盈止损点位就会触发但当我们盘面还没有开市不能下单，触发了设置就会移除，止损止盈设置便失效。</span></span></span></span></span><br/></p>');

-- ----------------------------
-- Table structure for zwf_admin_information
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_information`;
CREATE TABLE `zwf_admin_information` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `class_id` smallint(5) NOT NULL COMMENT '分类id',
  `column_id` tinyint(3) NOT NULL COMMENT '栏目id',
  `title` char(100) NOT NULL COMMENT '文章标题',
  `onclick` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `titlepic` char(120) NOT NULL COMMENT '封面图片',
  `smalltext` char(255) NOT NULL COMMENT '简介',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常 2:删除',
  `keyboard` char(80) NOT NULL COMMENT '关键词',
  `truetime` int(10) NOT NULL COMMENT '创建时间',
  `lastdotime` int(10) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='信息中心 文章';

-- ----------------------------
-- Records of zwf_admin_information
-- ----------------------------
INSERT INTO `zwf_admin_information` VALUES ('1', '2', '6', '长江联合赴青浦育才民办小学开展爱心助学活动1111111111111111111', '0', '/upload/images/2017/1222/1513930004786254.jpg', '2016年9月5日，上海长江联合金属交易中心有限公司一行赴上海青浦育才民办小学进行爱心助学及教师节慰问，参与本次活动的还有：167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司。', '1', '上海长江联合,金属', '1513930004', '1520577674');
INSERT INTO `zwf_admin_information` VALUES ('2', '2', '6', '爱在中秋，情系孤老：长江联合开展中秋慰问孤老活动', '0', '/upload/images/2018/0312/1520844211871093.png', '2016年9月13-14日，中秋佳节前夕，为了让街道的孤寡老人能过上温馨的节日，上海长江联合金属交易中心有限公司一行赴陆家嘴街道探望孤寡老人，为他们送去慰问礼品与中秋祝福。', '1', '中秋佳节,上海长江联合', '1513930180', '1520844211');
INSERT INTO `zwf_admin_information` VALUES ('3', '2', '5', '关于部分交易商出金问题的通知', '0', '/upload/images/2018/0309/1520561075783294.jpg', '近期，据银行方面反馈，仍有极少数交易商因销卡、银行卡号有误等原因而导致其银行账户出金失败。', '1', '交易', '1520561075', '1520561115');
INSERT INTO `zwf_admin_information` VALUES ('4', '2', '7', '呵呵呵', '0', '/upload/images/2018/0312/1520824908721496.jpg', 'AS分v', '1', '为发帖人', '1520824908', '1520833454');
INSERT INTO `zwf_admin_information` VALUES ('5', '2', '5', '黄金市场已危在旦夕？这三大风险恐再度搅动市场风云！', '0', '/upload/images/2018/0312/1520842798257232.jpg', '周一特朗普贸易立场大变，美元、加元惊坐“过山车”，金价盘中失守1320大关；油价则因一大利好创近三周最大单日涨幅。周二经济数据较为清淡，但在这看似平静的市场中却暗藏三大风险！', '1', '黄金', '1520833740', '1520842798');
INSERT INTO `zwf_admin_information` VALUES ('6', '2', '5', '非农周金银难平静 五大央行登场恐在全球市场掀起腥风血雨', '0', '/upload/images/2018/0312/1520842774881348.png', '本周金融市场地雷遍布，OPEC会晤美国页岩油商，以美、日、欧为首的五大主要央行轮番登场，特朗普或将公布一重要政策的细节，还有超级非农作为重头戏登场，金银油汇市场料将迎来一场大乱斗！', '1', '非农,金融市场', '1520834431', '1520842774');
INSERT INTO `zwf_admin_information` VALUES ('8', '2', '5', '风暴来临前 黄金美元大起大落待鲍威尔“指引”', '0', '/upload/images/2018/0312/1520838020361175.jpg', '风暴来临前 黄金美元大起大落待鲍威尔“指引”', '1', '黄金美元', '1520838020', '1520840313');
INSERT INTO `zwf_admin_information` VALUES ('9', '2', '5', '测试', '0', '/upload/images/2018/0312/1520842747134582.png', '测试', '1', '测试', '1520842141', '1520842747');
INSERT INTO `zwf_admin_information` VALUES ('10', '2', '7', '周一美元惊现V型逆转走势，在政治不确定性风险的笼罩之下，欧元和英镑走出“倒V”行情', '0', '/upload/images/2018/0312/1520843962106018.png', '周一美元惊现V型逆转走势，在政治不确定性风险的笼罩之下，欧元和英镑走出“倒V”行情', '1', '美元', '1520843962', '1520843962');
INSERT INTO `zwf_admin_information` VALUES ('11', '2', '7', '原油多头短期难有好日子？美原油库存大增隐藏三大元凶', '0', '/upload/images/2018/0312/1520845478640564.png', '自去年7月以来，国际油价受欧佩克主动去库存、美元走弱和地缘政治的影响持续走强， WTI原油和布伦特油油价一度分别站上66美元/桶和71美元/桶。', '1', '原油', '1520845478', '1520845478');
INSERT INTO `zwf_admin_information` VALUES ('12', '2', '7', '速度', '0', '/upload/images/2018/0312/1520845929286866.png', '速度', '1', '速度', '1520845929', '1520845929');
INSERT INTO `zwf_admin_information` VALUES ('13', '2', '7', '三大“核弹”密集轰炸难改美元颓势！', '0', '/upload/images/2018/0312/1520848775125305.png', '周三日内，美元在特朗普首次国情咨文演讲后开始走弱，黄金微幅走高；隔夜公布的美国1月ADP新增就业人数23.4万人，好于预期，但对黄金影响有限；', '1', '美元,黄金微幅走高', '1520848775', '1520848775');
INSERT INTO `zwf_admin_information` VALUES ('14', '2', '7', '市场惊现过山车行情 黄金多空激战美元或沦为“倒霉蛋”？', '0', '/upload/images/2018/0313/1520911551766723.png', '上周黄金出现多空激战的局面，美国新关税计划以及白宫首席经济顾问科恩意外宣布辞职一度引发市场避险情绪急剧升温，黄金应声大涨；但随着美朝紧张局势的缓和，黄金失去避险需求一大支撑，价格随之转跌，直至非农报告后才抹平此前跌幅。', '1', '黄金', '1520911551', '1520911551');
INSERT INTO `zwf_admin_information` VALUES ('15', '2', '7', '非农报告喜忧参半金价坐上过上车 黄金多空激战后基本持平', '0', '/upload/images/2018/0313/1520912824167327.png', '非农报告喜忧参半金价坐上过上车 黄金多空激战后基本持平', '1', '非农', '1520912824', '1520912824');
INSERT INTO `zwf_admin_information` VALUES ('16', '2', '5', '美国能源信息署（EIA）公布的美国', '0', '/upload/images/2018/0313/1520923274651062.png', '周三晚23:30，美国能源信息署（EIA）公布的美国至3月2日当周EIA原油库存增加240.8万桶，低于预期的增加272.3万桶，前值为增加301.9万桶，美国国内原油产量增加8.6万桶至1036.9万桶/日。', '1', '美国能源', '1520923274', '1520923274');
INSERT INTO `zwf_admin_information` VALUES ('17', '2', '5', 'ceshi', '0', '/upload/images/2018/0313/1520930950461212.png', 'df', '2', 'sdf', '1520930950', '1520930965');
INSERT INTO `zwf_admin_information` VALUES ('18', '2', '7', '新闻测试', '0', '/upload/images/2018/0410/1523350496807678.jpg', '新闻', '1', '新闻', '1523350496', '1523350496');
INSERT INTO `zwf_admin_information` VALUES ('19', '2', '5', '11111', '0', '/upload/images/2018/0410/1523351985657928.jpg', '111111111', '1', '11111', '1523351985', '1523351985');
INSERT INTO `zwf_admin_information` VALUES ('20', '2', '6', '图片测试', '0', '/upload/images/2018/0411/1523415767803528.jpg', '1212122222', '1', '12', '1523415767', '1523415767');
INSERT INTO `zwf_admin_information` VALUES ('21', '2', '6', '图pain2', '0', '/upload/images/2018/0411/1523432226607940.jpg', '342435345', '1', '爱上的', '1523416128', '1523432226');
INSERT INTO `zwf_admin_information` VALUES ('22', '2', '6', '新闻中心动态', '0', '/upload/images/2018/0411/1523416399695037.jpg', '这是没有的', '1', '这是没有的', '1523416399', '1523416399');
INSERT INTO `zwf_admin_information` VALUES ('23', '2', '6', '没有前缀是不行的', '0', '/upload/images/2018/0411/1523416911326568.jpg', '没有前缀', '1', '没有前缀', '1523416911', '1523416911');
INSERT INTO `zwf_admin_information` VALUES ('24', '2', '6', '绝对路径去掉前缀', '0', '/upload/images/2018/0411/1523432032409027.jpg', '绝对路径去掉前缀', '1', '绝对路径去掉前缀', '1523417984', '1523432032');
INSERT INTO `zwf_admin_information` VALUES ('25', '2', '6', '没有前缀就死不行啊', '0', '/upload/images/2018/0411/1523432020797088.jpg', '前缀', '1', '前缀', '1523427548', '1523432021');

-- ----------------------------
-- Table structure for zwf_admin_information_data
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_information_data`;
CREATE TABLE `zwf_admin_information_data` (
  `news_id` int(10) NOT NULL COMMENT '新闻id',
  `class_id` smallint(5) NOT NULL COMMENT '分类id',
  `writer` varchar(30) DEFAULT NULL COMMENT '作者',
  `befrom` varchar(60) DEFAULT NULL COMMENT '来源',
  `newstext` mediumtext NOT NULL COMMENT '文章内容',
  `seotext` text COMMENT '文章描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息中心 文章内容';

-- ----------------------------
-- Records of zwf_admin_information_data
-- ----------------------------
INSERT INTO `zwf_admin_information_data` VALUES ('1', '2', '曾伟峰', '南亚国际', '<p>　　2016年9月5日，上海长江联合金属交易中心有限公司一行赴上海青浦育才民办小学进行爱心助学及教师节慰问，参与本次活动的还有：167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司。</p><center><img src=\"http://img.zwf.com/2017/1222/1513929940.jpg\" title=\"1513929940.jpg\" alt=\"1473143751101044505.jpg\"/></center><center><img src=\"http://img.zwf.com/2017/1222/1513929947.jpg\" title=\"1513929947.jpg\" alt=\"1473143756221026713.jpg\"/></center><p>　　校内概况</p><p>　　据育才小学杨校长介绍，该校为民办农民工子女小学，主要招收对象是进城务工农民同住子女，目前在校学生320人、教师20人。校舍虽简陋，但是在教职工们、社会爱心人士的共同努力下，教学秩序有条不紊，孩子们能在各界的关爱下茁壮成长。</p><center><img src=\"http://img.zwf.com/2017/1222/1513929979.jpg\" title=\"1513929979.jpg\" alt=\"1473143769036037217.jpg\"/></center><p>　　杨校长向长江联合赠以锦旗</p><p>　　长江联合一直将反哺社会视为己任，深入了解学校情况后，向同学和老师们捐赠了目前需要的文体用品及教学用具，希望以绵薄之力为孩子们的未来护航。同时，在教师节到来之际，长江联合也为育才小学的教师们送去节日的祝福与慰问，他们的孜孜不倦与默默奉献为孩子们营造了积极的教学环境，也将为社会输送可造之材。</p><center><img src=\"http://img.zwf.com/2017/1222/1513929984.jpg\" title=\"1513929984.jpg\" alt=\"1473143775796023432.jpg\"/></center><p>　　与校方合影</p>', '　　2016年9月5日，上海长江联合金属交易中心有限公司一行赴上海青浦育才民办小学进行爱心助学及教师节慰问，参与本次活动的还有：167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司。');
INSERT INTO `zwf_admin_information_data` VALUES ('2', '2', '曾伟峰', '南亚国际', '<p>　　2016年9月13-14日，中秋佳节前夕，为了让街道的孤寡老人能过上温馨的节日，上海长江联合金属交易中心有限公司一行赴陆家嘴街道探望孤寡老人，为他们送去慰问礼品与中秋祝福。</p><center><img src=\"http://img.zwf.com/2017/1222/1513930078.jpg\" title=\"1513930078.jpg\" alt=\"1473844177772098530.jpg\"/></center><p>　　长江联合的员工代表为老人们分发月饼</p><p>　　本次慰问活动得到了陆家嘴街道办与市新居委的全力支持，经过密切的沟通与交流，交易中心大致了解了陆家嘴街道各个社区孤寡老人的生活情况，并针对其中生活困难、高龄、独居的老人们进行帮扶与慰问。根据老人们的社区分布，慰问分别在市新居委与陆家嘴街道服务中心进行，长江联合的到来得到了老人们的热情欢迎。</p><center><img src=\"http://img.zwf.com/2017/1222/1513930094.jpg\" title=\"1513930094.jpg\" alt=\"1473844197875086435.jpg\"/></center><p>　　老人们欢聚一堂</p><p>　　“众人拾柴火焰高”，167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司积极响应交易中心的公益号召，为此次中秋慰问活动添砖加瓦，与长江联合共同为老人们准备了月饼、食用油、杂粮、毛毯等节日礼品，并将这些物资带着长江联合及会员单位全体员工的爱心送至老人手中，让他们感受到节日的温暖与社会各界的关怀。</p><center><img src=\"http://img.zwf.com/2017/1222/1513930102.jpg\" title=\"1513930102.jpg\" alt=\"1473844234137058203.jpg\"/></center><center><img class=\"loadingclass\" id=\"loading_jbhmwb05\" src=\"http://zwf.com/plugIn/editor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></center><p>　　合影留念</p><p>　　尊老爱老是中华民族的优良传统，此次慰问行动体现了企业回馈社会的一份责任感，使敬老、爱老、助老的良好社会风尚进一步发扬光大。长江联合也希望借此契机，以实际行动呼吁广大会员单位及社会各界关爱老年人，让他们在温暖中安度晚年，尽自己最大的努力来帮助老人、关爱老人，共建和谐社会。</p><p><br/></p>', '2016年9月13-14日，中秋佳节前夕，为了让街道的孤寡老人能过上温馨的节日，上海长江联合金属交易中心有限公司一行赴陆家嘴街道探望孤寡老人，为他们送去慰问礼品与中秋祝福。');
INSERT INTO `zwf_admin_information_data` VALUES ('3', '2', 'zzz', '南亚国际', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">尊敬的各交易商：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 近期，据银行方面反馈，仍有极少数交易商因销卡、银行卡号有误等原因而导致其银行账户出金失败。为了保证交易商合法权益以及能够顺利出金，请上述未能出金的交易商尽快致电交易中心客服热线021-968688（坐席工作时间：周一至周五9:00-17:30），或者发送邮件至kefu@cjmex.cn，邮件中请务必提供如下信息： &nbsp; &nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 1.交易商姓名</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 2.交易商身份证号</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 3.新银行卡号（银行卡所属人必须为交易商本人） &nbsp; &nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 4.新银行卡开户行名称</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 5.联系方式</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">&nbsp; &nbsp; 给您带来的不便，敬请谅解。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\">特此通知。<br/><br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 宋体, SimSun; font-size: 12px; text-align: right;\">上海长江联合金属交易中心有限公司<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-family: 宋体, SimSun; font-size: 12px; text-align: right; background-color: rgb(241, 242, 244);\">二〇一七年七月十一日</span></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 微软雅黑; white-space: normal; background-color: rgb(241, 242, 244); line-height: 1.75em;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px; font-family: 宋体, SimSun;\"><br/></span><br/></p><p><br/></p>', '出金问题');
INSERT INTO `zwf_admin_information_data` VALUES ('4', '2', null, null, '<p><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 28px; word-wrap: break-word; color: rgb(101, 113, 128); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据公安部门的规定，凡是KTV这种娱乐场所统一设置观察窗，并且门不能反锁。当然，这样的要求一方面是处于安全的考虑，毕竟KTV的情况鱼龙混杂；另一方面是为了方便对KTV进行突击检查、维护治安稳定。</p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 28px; word-wrap: break-word; color: rgb(101, 113, 128); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://p3.pstatp.com/large/6c29000077de524958b8\"/></p><p><br/></p>', 'AS分vefr');
INSERT INTO `zwf_admin_information_data` VALUES ('5', '2', 'zzz', '南亚国际', '<div class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; line-height: 1.8; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif;\"><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">周一特朗普上演“大变脸”，扭转此前对贸易关税的强硬态度，美元、加元等主要货币惊坐“过山车”，金价一度失守1320大关；油价则因一份报告创近三周最大单日涨幅。周二经济数据较为清淡，但在这看似平静的市场中却暗藏三大风险！</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\">澳洲联储打响央行超级周第一枪！重点关注这一焦点</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">澳洲联储将于今日11:30公布的利率决议及政策声明。市场普遍预计本次澳洲联储会将利率维持在一年多以来最低位1.5%，同时预计联储主席洛威周三凌晨讲话的措辞也不会发生明显变化。澳大利亚经济状况尚属良好，但澳联储或担忧澳大利亚家庭债务上升和薪资增速不足。目前市场更多地把焦点放在了澳洲联储对通胀及薪资方面的措辞和立场是否会发生变化。此前澳洲联储认为，失业率可能逐步下降，薪资增速疲软料还将持续一段时间，预计通胀仍会维持在2%低位。投资者普遍预期澳洲联储至少在2019年2月前不会加息，市场波动性将有所上升，而风险偏好的不断恶化将会持续令澳元承压。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(184, 49, 47); font-size: 18px;\">美联储即将进入“缄默期” 三位重要官员料释放关键信号？</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">由于美联储将在3月22日公布利率决议及政策声明，该央行的“缄默期”正在迫近，届时官员们不得发表任何关于政策走向的言论。而在“缄默期”来临之前市场对美联储官员的讲话通常格外敏感。今晚20:30 美联储三号人物、纽约联储主席杜德利将发表讲话，明晨08:00 美联储理事布雷纳德也将登场，明晚2018年FOMC票委、亚特兰大联储主席博斯蒂克将就经济前景发表讲话，投资者可留意这些官员是否会提前释放重磅线索。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\">EIA</span></span><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">能源展望报告明晨出炉&nbsp;</span></span></span><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\">油市最大的担忧仍是它？</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">周三凌晨01:00 EIA将公布月度短期能源展望报告。周一IEA发布报告称，美国将在未来5年主导全球原油市场，美国至2023年原油产出增速预期将被大幅上调至逾200万桶/日。2020年，美国的新增原油将覆盖全球80%的需求。而随后欧佩克秘书长巴尔金都也表示，欧佩克大致同意IEA关于原油市场中期前景的看法。不少机构都在担忧，由于美国页岩油不断增产，油价恐难以急剧上升。明晨这份展望报告可能会透露更多关于页岩油前景及全球供需展望的信息。</p><hr/><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: center;\"><br/></p></div><p><br/></p>', '黄金');
INSERT INTO `zwf_admin_information_data` VALUES ('6', '2', 'zzz', '南亚国际', '<p><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; font-size: 14px; background-color: rgb(58, 125, 178); color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; font-weight: 700;\">本周金融市场地雷遍布，OPEC会晤美国页岩油商，以美、日、欧为首的五大主要央行轮番登场，特朗普或将公布一重要政策的细节，还有超级非农作为重头戏登场，金银油汇市场料将迎来一场大乱斗！</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span></p><div class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; line-height: 1.8; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif;\"><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">上周五，特朗普再就贸易战话题发表惊人言论，欧盟或将作出强硬回应，黄金重回1320上方，美元痛失90关口。本周将迎来非农数据，美元和金银将上演最终对决。另外，油市上周收盘跌超3%，本周油市除EIA重要报告外，OPEC首脑还会与美国油商会面，油市能否顺利通过考验？值得注意的是，这周五大央行轮番上场，市场或将经受狂风暴雨般袭击。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px;\">重挫之后油价仍面临两大考验：OPEC首脑碰面美国油商 EIA又有重要报告出炉</span></span><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px;\"><a href=\"https://cdn.jin10.com/news/pic/eb/9515dff70794b7afe6bd54ca0bc7ccda.png\" target=\"_blank\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; text-decoration-line: none; color: rgb(78, 160, 255); font-family: 微软雅黑, 宋体; background: transparent; -webkit-tap-highlight-color: transparent;\"><img class=\"fr-fic fr-dib\" src=\"https://cdn.jin10.com/news/pic/eb/9515dff70794b7afe6bd54ca0bc7ccda.png\"/></a></span></span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">周三01:00，EIA公布月度短期能源展望报告。市场目前最主要关注欧佩克减产效果以及美国产油量，这两者将决定油市短期供需平衡。另外，周三05:30和23:30将分别迎来美国至3月2日当周API原油库存和EIA原油库存，其中IEA库存前值为93.3万桶，API库存前值为301.9万桶。值得注意的是，本周一OPEC会晤美国页岩油商，市场担忧美国原油产量和库存进一步上升会有损OPEC减产而对油价做出的努力。美国原油分析师表示，EIA或将在能源展望报告中大幅上修美国原油产量数据，这意味着美国原油产量可能更快地触及1000万桶/日大关，预计将在2018年6月前突破这个关口，油市的情绪恐将受到打击。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">本周五大央行接踵而至 或将掀起市场腥风血雨</span></span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">本周澳洲、加拿大、美国、欧洲、日本5国央行将轮番轰炸汇市，预计将掀起外汇的腥风血雨。周二11:30澳洲联储公布利率决议及政策声明，市场预计本次澳洲联储将让利率维持在一年多以来最低位1.5%不变，&nbsp;市场更多的关注澳洲联储对通胀及薪资方面的言论是否发生变化。此前，澳洲联储认为，失业率可能逐步下降，薪资增速疲软可能持续一段时间，预计通胀将在一段时间内维持低位。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">而周三23:00加拿大央行本次只公布利率决议，并无货币政策声明与新闻发布会。市场预计加拿大央行会维持利率在1.25%不变。值得注意的是，加拿大央行曾在去年12月加息25个基点，但市场更多地担忧美国或退出北美自由贸易协定会影响加拿大经济，加元并没有因此走强。<br/></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\">上方，RSI指标释放看涨信号，近期该货币对有望继续上涨。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\"><a href=\"https://cdn.jin10.com/news/pic/c7/a70c4a980b31fbfe269a3e2821cfb490.png\" target=\"_blank\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; text-decoration-line: none; color: rgb(78, 160, 255); font-family: 微软雅黑, 宋体; background: transparent; -webkit-tap-highlight-color: transparent;\"><img class=\"fr-fic fr-dib\" src=\"https://cdn.jin10.com/news/pic/c7/a70c4a980b31fbfe269a3e2821cfb490.png\"/></a></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><br/></p></div><p><br/></p>', '非农');
INSERT INTO `zwf_admin_information_data` VALUES ('8', '2', 'zzz', '南亚国际', '<p><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; font-size: 14px; background-color: rgb(58, 125, 178); color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; font-weight: 700;\">投资者在美联储主席鲍威尔国会首秀前提前布局，黄金美元市场早已泄露不安情绪：黄金一度上冲至1340关口但随后回落，美元走势跌宕上演V型反转。另一方面，油价受三大利好支撑继续走强。</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span></p><div class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; line-height: 1.8; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif;\"><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\">【60秒精华速读】</span></span></p><blockquote style=\"padding: 10px 20px; margin: 0px; list-style: none; box-sizing: border-box; font-size: 17.5px; border-left: 5px solid rgb(117, 131, 156); -webkit-tap-highlight-color: transparent; background-color: rgb(245, 246, 247);\"><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">· 周一（2月26日），随着美元微幅走软、美债收益率回撤，黄金受逢低买盘的推动温和走高，黄金期货价格上涨0.33%，报1334.9美元/盎司；白银期货价格上涨0.76%，报16.615美元/盎司。现货黄金在欧市盘前一度触及1340美元，随后回吐部分涨幅，但仍然稳守1330关口。隔夜公布的数据显示经季节性因素调整后的美国1月新屋销售年率下降7.8%至 59.3万户，创2017年8月以来的最低水平，这在一定程度上为黄金提供了支撑。目前，投资者正在为周二、周四美联储主席鲍威尔的国会作证进行布局。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">· 受益于利比亚油田供应中断、美国强劲需求及沙特的利好言论，国际油价昨日延续上周涨势继续走高。截至收盘，WTI原油期货价格上涨0.68%，报64美元/桶；布伦特原油期货价格上涨0.49%，报67.53美元/桶。沙特油长法利赫表示，该国第一季度的原油产量将远低于产量上限，平均原油出口也将低于700万桶/日的水平。欧洲方面的需求也对油价构成利好。欧洲大陆的寒潮促使部分炼厂延迟停工检修，这支撑了原油需求。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">· 美元周一走势跌宕，欧市盘中最低触及89.513的日内低位，但在该位置成功吸引了一些买盘兴趣而触底反弹，美市盘中最高上探至90.082，纽约尾盘再度回吐部分涨幅。日内，美元指数下跌0.06%，报89.836。其他非美货币涨跌不一，其中欧元上涨0.15%至1.2312；英镑日内下跌0.01%，盘中一度触及1.4073的高位。</p></blockquote><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">贵金属：鲍威尔国会首秀之前投资者提前布局&nbsp;黄金窄幅盘整等待指引</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">周一（2月26日），随着美元微幅走软、美债收益率回撤，黄金受逢低买盘的推动温和走高，欧市盘前一度站上1340关口，随后回吐部分涨幅，但仍然稳守1330关口。截至收盘，COMEX黄金期货主力合约价格上涨0.33%，报1334.9美元/盎司；白银期货主力合约价格上涨0.76%，报16.615美元/盎司。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><a href=\"https://cdn.jin10.com/news/pic/3f/7e9648a657da9cd6dc9f2da6b4898cbe.png\" target=\"_blank\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; text-decoration-line: none; color: rgb(78, 160, 255); font-family: 微软雅黑, 宋体; background: transparent; -webkit-tap-highlight-color: transparent;\"><img class=\"fr-fic fr-dib\" src=\"https://cdn.jin10.com/news/pic/3f/7e9648a657da9cd6dc9f2da6b4898cbe.png\"/></a></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">分析师认为，黄金昨日的走势主要是得益于投资者在周二、周四美联储主席鲍威尔在国会就货币政策作证词陈述之前进行布局。Wolfpack Capital首席投资官怀特（Jeff Wright）指出，市场将寻找美联储今年加息四次的线索，不过如果鲍威尔延续前任的作风，他料将谨言慎行，不会在这个问题上透露过多信心，以免今年晚些时候陷入困境。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">周一早些时候，圣路易斯联储主席布拉德表示，如果没有数据显示经济成长和通胀加快，进一步加息可能经济产生过大的限制。美联储金融监管副主席夸尔斯则重申，进一步渐进加息是“合适的”，预计通胀将在明年左右回升至2%的水平。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">隔夜公布的数据显示经季节性因素调整后的美国1月新屋销售年率下降7.8%至 59.3万户，创2017年8月以来的最低水平。12月的销售速度从此前报告的62.5万户上调至64.3万户。这在一定程度上为黄金提供了支撑。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">分析师怀特指出，当前金价的支撑水平位于1325美元/盎司。渣打银行分析师Suki Cooper则表示，金价走高并没有伴随以广泛的投资需求，金价要升穿1360-1375美元，还需要来自美国散户的需求。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">原油：三大利好继续支撑油价&nbsp;美布两油盘中维持在两周高位</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">受益于利比亚油田供应中断、美国强劲需求及沙特的利好言论，国际油价昨日延续上周涨势继续走高。截至收盘，NYMEX美国WTI原油期货主力合约价格上涨0.68%，报64美元/桶；ICE布伦特原油期货主力合约价格上涨0.49%，报67.53美元/桶。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><a href=\"https://cdn.jin10.com/news/pic/5a/94ccda682e74c85c4635a1d352d7c775.png\" target=\"_blank\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; text-decoration-line: none; color: rgb(78, 160, 255); font-family: 微软雅黑, 宋体; background: transparent; -webkit-tap-highlight-color: transparent;\"><img class=\"fr-fic fr-dib\" src=\"https://cdn.jin10.com/news/pic/5a/94ccda682e74c85c4635a1d352d7c775.png\"/></a></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">沙特油长法利赫在周六表示，该国第一季度的原油产量将远低于产量上限，平均原油出口也将低于700万桶/日的水平。法利赫又称，希望OPEC及其减产盟国明年放宽产量限制，创造一个永久性框架以稳定原油市场。不过，瑞穗银行能源期货主管Bob Yawger指出，从长期来看，减产协议的终结可能是一个利空因素。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\">另一方面，上周美国的库存报告显示原油库存意外下滑，这令多头信心大增，因为从以往经验看，当前往往是需求开始萎缩的阶段。分析师又称，欧洲方面的需求也对油价构成利好。欧洲大陆的寒潮促使部分炼厂延迟停工检修，这支撑了原油需求。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px; color: rgb(184, 49, 47);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">外汇：美元无视数据利空走出V型反转 非美货币涨跌互现</span></span></p></div><p><br/></p>', '黄金美元');
INSERT INTO `zwf_admin_information_data` VALUES ('9', '2', null, null, '<p>测试</p>', '测试');
INSERT INTO `zwf_admin_information_data` VALUES ('10', '2', 'zzz', '美元', '<p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: center;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: rgb(184, 49, 47); font-size: 18px;\">美联储新掌门迎来国会首秀 鲍威尔最关注的是这个指标！</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent;\">晚间美联储主席鲍威尔的讲话将成为今日市场的重头戏。21:30美国将公布鲍威尔的半年度货币政策报告，随后23:00鲍威尔还将在美国众议院金融服务委员会发表证词。作为曾经的美联储理事，鲍威尔一直是前任主席耶伦渐进加息、温和缩表政策的大力支持者，但他的具体观点仍不为外界所知，投资者将对今晚表态与此前言论有何区别十分敏感。在特朗普政府减税、增加支出以及近期通胀抬头的情况下，市场将关注这位美联储新任主席对美国经济和通胀的最新预估。有分析指出，鲍威尔本人更关注美联储最看重的通胀指标——核心PCE数据，此份报告将在本周四出炉。货币政策路径方面，上周美联储向国会公布的月度货币政策报告并未透露今年可能加息四次的信号，预计鲍威尔将在本次国会听证会上强调美联储逐步收紧货币政策的必要性。此外，本月初全球性股灾破坏了金融市场稳定性，这次证词中鲍威尔如何看待近期美股的崩跌也将是一大看点。</p><p><br/></p>', '美元');
INSERT INTO `zwf_admin_information_data` VALUES ('11', '2', 'zzz', '南亚国际', '<p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 18px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">页岩油稳定增产</span></span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">尽管投资者对于生产商回报率的要求导致页岩油增产不及预期，但页岩油在不断上涨的油价背景下美国原油还是显示了增产加速的迹象。截至2月2日当周美国原油产量已经超过沙特，达到1025.1万桶/日的纪录新高。当周美国石油钻井总数增加了6口，至765口，为2017年9月以来的最高值。EIA在短期能源展望报告中将美国2018年原产量预期提高到120万桶/日，此前预期为增加97万桶/日。</span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\"><a href=\"https://cdn.jin10.com/news/pic/71/9ce1c1ed8cac024063a7e9344a09c2f2.jpeg\" target=\"_blank\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; text-decoration-line: none; color: rgb(78, 160, 255); font-family: 微软雅黑, 宋体; background: transparent; -webkit-tap-highlight-color: transparent;\"><img class=\"fr-fic fr-dib\" src=\"https://cdn.jin10.com/news/pic/71/9ce1c1ed8cac024063a7e9344a09c2f2.jpeg\"/></a></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 15px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">此外，大量的钻完未生产井（DUC）有望逐步投入生产。如果仅考虑DUC增长最快也是开采成本最低的二叠纪盆地地区，2017年新增了1212口DUC，按600桶/日的单井平均产量计算，仅这部分新增油井的投产就能提供超过70万桶/日的产量。再加上特朗普政府推出的美国国家能源计划和减税政策，必将大力促进页岩油产业的快速发展。</span></p><p><br/></p>', '原油');
INSERT INTO `zwf_admin_information_data` VALUES ('12', '2', null, null, '<p><span style=\"font-family: monospace; font-size: medium; white-space: pre-wrap;\">&lt;img src=&quot;http://img.zwf.com/2017/1222/1513929947.jpg&quot; title=&quot;1513929947.jpg&quot; alt=&quot;1473143756221026713.jpg&quot;/&gt;</span></p>', 'sd');
INSERT INTO `zwf_admin_information_data` VALUES ('13', '2', null, null, '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 周三日内，美元在特朗普首次国情咨文演讲后开始走弱，黄金微幅走高；隔夜公布的美国1月ADP新增就业人数23.4万人，好于预期，但对黄金影响有限；今日凌晨，因美联储在政策声明中称今年美国通胀将会上升，黄金短线跳水，但很快逆转走势转而上涨。黄金期货价格收盘上涨0.82%，报1348.5美元/盎司；白银期货价格收盘上涨1.23%，报17.315美元/盎司。从整月走势来看，黄金受弱美元提振录得3.33%的涨幅，创下2017年8月以来最大单月涨幅。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 国际油价周三收高，美国WTI原油期货价格上涨1.22%，报64.77美元/桶；布伦特原油期货价格上涨1.13%，报68.88美元/桶。年初迄今，WTI原油上涨7.77%，布油上涨3.39%。EIA报告显示，截至1月26日当周，原油库存增加677.6万桶，增幅创2017年3月10日当周以来新高；不过，因炼厂开工率下滑，且石油产品潜在需求上涨，汽油及精炼油库存意外大减，提振了油价。另外，路透调查显示1月OPEC减产执行率达138%，高于12月的137%。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 美元昨日震荡走低，对表现强劲的ADP报告反应有限，美市盘中最低触及88.786。美联储决议一度推动美指涨至89.316，但很快回吐部分涨幅。美元日内仍下跌0.15%，报89.088；整个1月，美元大跌3.46%，创2016年3月以来的最差表现。非美货币涨跌不一，欧元上涨0.15%，英镑上涨0.4%；日元下跌0.3%，因日本央行上调购债规模打压了日元。</span></p><p><br/></p>', '周三日内，美元在特朗普首次国情咨文演讲后开始走弱，黄金微幅走高；隔夜公布的美国1月ADP新增就业人数23.4万人，好于预期，但对黄金影响有限；');
INSERT INTO `zwf_admin_information_data` VALUES ('14', '2', 'zzz', '南亚国际', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\"><span style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: 700;\">【60秒精华速读】</span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 上周黄金出现多空激战的局面，美国新关税计划以及白宫首席经济顾问科恩意外宣布辞职一度引发市场避险情绪急剧升温，黄金应声大涨；但随着美朝紧张局势的缓和，黄金失去避险需求一大支撑，价格随之转跌，直至非农报告后才抹平此前跌幅。美国新增非农就业人数超出预期，但工资增长的表现令人失望，在经历过山车行情后，黄金期货最终收涨0.11%，报1324美元/盎司，周线累涨0.02%；白银上周五上涨0.64%，报16.605%，周线上涨0.42%。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 因地缘政治风险有所减弱，且美国石油钻井数录得减少4口至796口，为七周来首次录得下滑。WTI原油上周五收盘上涨2.97%，报62.12美元/桶，周线上涨1.09%；布伦特油上涨2.54%，报65.49美元/桶，周线上涨1.44%。不过，上周美国原油产量也创下了历史新高。分析师发出警告称，油价尚未走出险境，周一EIA将公布页岩油产量的月度更新报告，投资者须保持关注。3月11日起，北美地区开始实行夏令时，美国和加拿大金融市场交易时间将较冬令时提前一小时，美国API和EIA原油库存将分别于北京时间周三04:30和22:30公布。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.5px; white-space: normal; -webkit-tap-highlight-color: transparent; text-align: justify;\"><span class=\"jin-news-article_content\" style=\"padding: 0px; margin: 0px; list-style: none; box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.8; font-size: 16px; color: rgb(52, 60, 76);\">· 上周特朗普征收钢铝关税的政策引起全球轰动，白宫重要官员因此离职，多个国家宣称要采取报复措施，令美元承压。虽然非农就业人口增加31.3万人远超预期，但薪资增长放缓应该会使今年加息四次的可能性降低。日欧货币政策面对同样的挑战，在退出宽松上仍毫无进展，上周日元和欧元有所下跌。加拿大失业率降至10年来的历史新低，高工业产能利用率进一步证明加拿大经济目前处于全负荷运转，这将支撑加拿大央行维持其收紧倾向，上周加元收涨。</span></p><p><br/></p>', '黄金');
INSERT INTO `zwf_admin_information_data` VALUES ('15', '2', 'zzz', '一样', '<p><img src=\"http://img.zwf.com/2018/0313/1520912822.png\" title=\"1520912822.png\" alt=\"1470133109939053904.png\"/></p>', '非农');
INSERT INTO `zwf_admin_information_data` VALUES ('16', '2', null, null, '<p><img class=\"loadingclass\" id=\"loading_jep9waer\" src=\"http://fin.com/plugIn/editor/themes/default/images/spacer.gif\" title=\"正在上传...\"/><span style=\"color: rgb(52, 60, 76); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, -apple-system, BlinkMacSystemFont, &quot;Seogoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, sans-serif; text-align: justify; background-color: rgb(255, 255, 255);\">具体数据显示，截至3月2日当周汽油库存意外录得减少78.8万桶，连增四周后录得减少，预期为减少120.1万桶，前值为增加248.3万桶；当周精炼油库存录得减少55.9万桶，连续4周录得下滑，预期为减少120万桶，前值为减少96万桶；当周EIA精炼厂设备利用率录得88%，高于预期的87.9%，前值为87.6%；当周俄克拉荷马州库欣地区原油库存减少60.5万桶，连续11周录得下滑，前值为减少121.8万桶。</span></p>', '美国能源');
INSERT INTO `zwf_admin_information_data` VALUES ('17', '2', null, null, '<p>asdfc</p>', 'sdf');
INSERT INTO `zwf_admin_information_data` VALUES ('18', '2', '在这种', '南亚国际', '<p><img title=\"1523350476.jpg\" src=\"http://img.zwf.com/2018/0410/1523350476.jpg\"/></p><p><img title=\"1523350476.jpg\" src=\"http://img.zwf.com/2018/0410/1523350476.jpg\"/></p><p>&nbsp;哦空哦空大夫将成为发</p>', '新闻');
INSERT INTO `zwf_admin_information_data` VALUES ('19', '2', '1', '南亚国际', '<p><img title=\"1523351983.jpg\" alt=\"4875890_142014760112_2.jpg\" src=\"http://img.zwf.com/2018/0410/1523351983.jpg\"/></p>', '1111111');
INSERT INTO `zwf_admin_information_data` VALUES ('20', '2', '12', '南亚国际', '<p>12333333333333333<img src=\"http://img.zwf.com/2018/0411/1523415088.jpg\" title=\"1523415088.jpg\" alt=\"4875890_142014760112_2.jpg\"/></p>', '12');
INSERT INTO `zwf_admin_information_data` VALUES ('21', '2', '1', '南亚国际', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"http://img.zwf.com/2018/0411/1523416095.jpg\" title=\"1523416095.jpg\" alt=\"u=1031893560,2135917576&amp;fm=27&amp;gp=0.jpg\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你的发if房地产复苏的就的就讽刺每一天都是精彩的,每一天都是充满希望的,<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最美的花儿开出最美的颜色,阳光洒在脸上暖暖的很幸福.<br/></p>', '我的');
INSERT INTO `zwf_admin_information_data` VALUES ('22', '2', '1', '南亚国际', '<p>这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的这是没有的<img src=\"http://img.zwf.com/2018/0411/1523416387.jpg\" title=\"1523416387.jpg\" alt=\"9aab05a4462309f7f25d794d720e0cf3d6cad6a5.jpg\"/></p>', '这是没有的');
INSERT INTO `zwf_admin_information_data` VALUES ('23', '2', '1', '南亚国际', '<p>没有前缀没有前缀没有前缀是不行的<img src=\"http://img.zwf.com/2018/0411/1523416907.jpg\" title=\"1523416907.jpg\" alt=\"10840148_115930701174_2.jpg\"/></p>', '没有前缀');
INSERT INTO `zwf_admin_information_data` VALUES ('24', '2', '1', '1', '<p>绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀绝对路径去掉前缀<img class=\"loadingclass\" id=\"loading_jfujpk3v\" src=\"http://img.zwf.com/2018/0411/1523417984382629.jpg\"/></p>', '绝对路径去掉前缀');
INSERT INTO `zwf_admin_information_data` VALUES ('25', '2', '1', '1', '<p><img src=\"http://img.zwf.com/2018/0411/1523427413.jpg\" title=\"1523427413.jpg\" alt=\"6cbb60d0f703918f31df8012543d269758eec47c.jpg\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;没有前缀就是不行,百度编辑器配置代码改动不能直接注释,因为被注释的代码也会执行的<br/>这样是不是很不好啊!<br/></p>', '前缀');

-- ----------------------------
-- Table structure for zwf_admin_rights
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_rights`;
CREATE TABLE `zwf_admin_rights` (
  `rights_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `rights_name` char(20) NOT NULL COMMENT '权限名',
  `rights_mark` char(50) NOT NULL COMMENT '权限标志,路由',
  PRIMARY KEY (`rights_id`),
  UNIQUE KEY `rights_name` (`rights_name`),
  UNIQUE KEY `rights_mark` (`rights_mark`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of zwf_admin_rights
-- ----------------------------
INSERT INTO `zwf_admin_rights` VALUES ('1', '用户管理', '/admin/rbac/user');
INSERT INTO `zwf_admin_rights` VALUES ('2', '权限管理', '/admin/rbac/rights');
INSERT INTO `zwf_admin_rights` VALUES ('3', '超级管理', '*');
INSERT INTO `zwf_admin_rights` VALUES ('4', '角色管理', '/admin/rbac/role');
INSERT INTO `zwf_admin_rights` VALUES ('5', '栏目管理', '/admin/column');

-- ----------------------------
-- Table structure for zwf_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_role`;
CREATE TABLE `zwf_admin_role` (
  `role_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` char(30) NOT NULL COMMENT '角色名',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of zwf_admin_role
-- ----------------------------
INSERT INTO `zwf_admin_role` VALUES ('4', '作者');
INSERT INTO `zwf_admin_role` VALUES ('5', '员工');
INSERT INTO `zwf_admin_role` VALUES ('2', '权限管理员');
INSERT INTO `zwf_admin_role` VALUES ('3', '用户管理员');
INSERT INTO `zwf_admin_role` VALUES ('1', '超级管理员');

-- ----------------------------
-- Table structure for zwf_admin_role_rights
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_role_rights`;
CREATE TABLE `zwf_admin_role_rights` (
  `role_id` char(3) NOT NULL COMMENT '角色id',
  `rights_id` char(3) NOT NULL COMMENT '权限id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of zwf_admin_role_rights
-- ----------------------------
INSERT INTO `zwf_admin_role_rights` VALUES ('1', '3');
INSERT INTO `zwf_admin_role_rights` VALUES ('2', '2');
INSERT INTO `zwf_admin_role_rights` VALUES ('2', '1');
INSERT INTO `zwf_admin_role_rights` VALUES ('2', '4');
INSERT INTO `zwf_admin_role_rights` VALUES ('3', '1');
INSERT INTO `zwf_admin_role_rights` VALUES ('5', '5');

-- ----------------------------
-- Table structure for zwf_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_users`;
CREATE TABLE `zwf_admin_users` (
  `user_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_account` char(30) NOT NULL COMMENT '用户名',
  `user_pwd` char(60) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account` (`user_account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of zwf_admin_users
-- ----------------------------
INSERT INTO `zwf_admin_users` VALUES ('1', '曾伟峰', '$2y$10$wuM9g60o3rH4.Ry6dT4Lu.vTA3UuZP0swlvxRcY.RYWCdtVWNyXcK');
INSERT INTO `zwf_admin_users` VALUES ('2', '张乐琼', '$2y$10$a5RbvrwBZkz05bCDQxjuHuFXJwYtpn2urzSxE4mxYad0IGIMlNuwG');
INSERT INTO `zwf_admin_users` VALUES ('4', 'zzz', '$2y$10$AmUxHRf92Vg7rUmGUuE72.yxiDaTAdoz/gZzJtyNSW3KCgrC3tlKu');

-- ----------------------------
-- Table structure for zwf_admin_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `zwf_admin_user_roles`;
CREATE TABLE `zwf_admin_user_roles` (
  `user_id` smallint(5) NOT NULL COMMENT '用户id',
  `role_id` tinyint(3) NOT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of zwf_admin_user_roles
-- ----------------------------
INSERT INTO `zwf_admin_user_roles` VALUES ('1', '1');
INSERT INTO `zwf_admin_user_roles` VALUES ('2', '4');
INSERT INTO `zwf_admin_user_roles` VALUES ('4', '1');

-- ----------------------------
-- Table structure for zwf_images
-- ----------------------------
DROP TABLE IF EXISTS `zwf_images`;
CREATE TABLE `zwf_images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `url` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `from` tinyint(4) DEFAULT '1' COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='图片总表';

-- ----------------------------
-- Records of zwf_images
-- ----------------------------
INSERT INTO `zwf_images` VALUES ('1', 'http://[!--img.hosts--]2018/0105/1515136153643707.png', '1', '1515143507', '1515136153');
INSERT INTO `zwf_images` VALUES ('4', 'http://[!--img.hosts--]2018/0128/1517116760216583.jpg', '1', null, '1517116760');
INSERT INTO `zwf_images` VALUES ('5', 'http://[!--img.hosts--]2018/0307/1520412868147399.jpg', '1', null, '1520412868');
INSERT INTO `zwf_images` VALUES ('6', '/upload/images/2018/0312/1520840810251403.jpg', '1', null, '1520840810');
INSERT INTO `zwf_images` VALUES ('7', '/upload/images/2018/0411/1523436619462616.jpg', '1', null, '1523436619');
INSERT INTO `zwf_images` VALUES ('9', '/upload/images/2018/0411/1523437553797149.jpg', '1', null, '1523437553');
INSERT INTO `zwf_images` VALUES ('10', '/upload/images/2018/0411/1523440408679107.jpg', '1', null, '1523440408');
INSERT INTO `zwf_images` VALUES ('11', '/upload/images/2018/0411/1523440584704559.png', '1', null, '1523440584');
INSERT INTO `zwf_images` VALUES ('12', '/upload/images/2018/0502/1525251271636779.jpg', '1', null, '1525251271');
