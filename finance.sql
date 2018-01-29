/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : finance

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-29 17:51:36
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '1', '测试', '潇洒潇洒潇洒潇洒', '1', '1515143507', '1515136153');
INSERT INTO `banner_item` VALUES ('2', '4', '11', '/test', '1', null, '1517116760');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of zwf_admin_class
-- ----------------------------
INSERT INTO `zwf_admin_class` VALUES ('2', '新闻', '1', '2017-11-30 14:11:26', '2017-11-30 14:11:26');

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
INSERT INTO `zwf_admin_column` VALUES ('9', '法律法规', '8', '0,8', 'law', '/education/law', '1', '1', '/images/home/1470133109939053904.png', '/images/home/1470133110699044033.png', '0', '2017-11-30 15:25:13', '2017-11-30 15:25:13');
INSERT INTO `zwf_admin_column` VALUES ('10', '业务规范', '8', '0,8', 'business', '/education/business', '1', '1', '/images/home/1470979900633086127.png', '/images/home/1470979904060073827.png', '0', '2017-11-30 15:25:46', '2017-11-30 15:25:46');
INSERT INTO `zwf_admin_column` VALUES ('11', '风险管理与防范', '8', '0,8', 'risk', '/education/risk', '1', '1', '/images/home/1470980303779080316.png', '/images/home/1470980298085010119.png', '0', '2017-11-30 15:26:27', '2017-11-30 15:26:27');
INSERT INTO `zwf_admin_column` VALUES ('12', '投资者权益保护', '8', '0,8', 'equity', '/education/equity', '1', '1', '/images/home/1470980270485079433.png', '/images/home/1470980262389051972.png', '0', '2017-11-30 15:27:04', '2017-11-30 15:27:04');
INSERT INTO `zwf_admin_column` VALUES ('13', '产品知识', '8', '0,8', 'knowledge', '/education/knowledge', '1', '1', '/images/home/1470980127432067424.png', '/images/home/1470980124969001196.png', '0', '2017-11-30 15:27:30', '2017-11-30 15:27:30');
INSERT INTO `zwf_admin_column` VALUES ('14', '常见问题', '8', '0,8', 'question', '/education/question', '1', '1', '/images/home/1470133156637090590.png', '/images/home/1470133157455051879.png', '0', '2017-11-30 15:28:07', '2018-01-04 09:45:32');
INSERT INTO `zwf_admin_column` VALUES ('15', '联系我们', '0', '0,', 'contact', '/contact', '1', '1', null, null, '8', '2017-11-30 15:47:35', '2017-11-30 15:47:35');
INSERT INTO `zwf_admin_column` VALUES ('16', '职位招聘', '15', '0,15', 'recruit', '/contact/recruit', '1', '1', null, null, '0', '2017-11-30 15:48:04', '2018-01-28 11:53:55');
INSERT INTO `zwf_admin_column` VALUES ('17', '上市品种', '0', '0,', 'variety', '/variety', '1', '1', null, null, '3', '2018-01-28 23:21:18', '2018-01-28 23:24:07');
INSERT INTO `zwf_admin_column` VALUES ('18', '原油', '17', '0,17', '#001', '/variety/#001', '1', '1', null, null, '0', '2018-01-28 23:23:55', '2018-01-28 23:23:55');
INSERT INTO `zwf_admin_column` VALUES ('19', '布伦特原油', '17', '0,17', '#002', '/variety/#002', '1', '1', null, null, '0', '2018-01-28 23:24:45', '2018-01-28 23:24:45');
INSERT INTO `zwf_admin_column` VALUES ('20', '黄金T+D', '17', '0,17', '#003', '/variety/#003', '1', '1', null, null, '0', '2018-01-28 23:25:38', '2018-01-28 23:25:38');
INSERT INTO `zwf_admin_column` VALUES ('21', '白银T+D', '17', '0,17', '#004', '/variety/#004', '1', '1', null, null, '0', '2018-01-28 23:26:24', '2018-01-28 23:26:24');
INSERT INTO `zwf_admin_column` VALUES ('22', '下载中心', '0', '0,', 'download', '/download', '1', '1', null, null, '4', '2018-01-28 23:27:27', '2018-01-28 23:27:27');
INSERT INTO `zwf_admin_column` VALUES ('23', '开户流程', '0', '0,', 'servicecenter', '/servicecenter', '1', '1', null, null, '5', '2018-01-28 23:30:16', '2018-01-28 23:30:16');
INSERT INTO `zwf_admin_column` VALUES ('24', '持仓数据', '0', '0,', 'metals', '/metals', '1', '1', null, null, '6', '2018-01-28 23:31:00', '2018-01-28 23:31:00');
INSERT INTO `zwf_admin_column` VALUES ('25', '社会责任', '0', '0,', 'social', '/social', '1', '1', null, null, '9', '2018-01-28 23:32:12', '2018-01-28 23:32:12');
INSERT INTO `zwf_admin_column` VALUES ('28', '组织架构', '1', '0,1', 'organizationalstructure', '/related/organizationalstructure', '1', '1', '/images/home/1470132724809028526.png', '/images/home/1470132725887050169.png', '0', '2018-01-29 00:01:22', '2018-01-29 00:01:22');
INSERT INTO `zwf_admin_column` VALUES ('29', '发展历程', '1', '0,1', 'development', '/related/development', '1', '1', '/images/home/1470132742705094983.png', '/images/home/1470132743659099956.png', '0', '2018-01-29 00:02:21', '2018-01-29 00:02:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系我们 职业招聘';

-- ----------------------------
-- Records of zwf_admin_contact
-- ----------------------------
INSERT INTO `zwf_admin_contact` VALUES ('1', '现货中心', '现货副经理', '1、进行市场调研，完善现货交易模式；<br>2、根据交易中心整体发展战略协助设计交易品种、制定和修订交易制度；<br>3、及时收集、分析国内外关于大宗商品行业的政策、信息，并提出相关建议，全面跟进行业政策动态，及时汇总分析，基于对政策的理解，为公司争取利益最大化；<br>4、为现货交易的大宗商品,进行物流仓储,贸易结算,现货交收,的工作。<br>5、积极了解上下游客户对现货交易的需求,向公司提出合理化建议,以完善公司现货交易的整个流程。<br>6、维护好现有的交易客户,积极协助公司开拓新的资源,新的客户群。', '1、本专以上学历，贸易、金融、物流相关专业毕业；<br>2、熟悉大宗商品现货交易模式；<br>3、3年以上的贸易公司工作经验(大宗商品方面的矿产,金属等),对进出口贸易的流程,物流仓储,质量检验,结算等工作要熟悉。<br>4、良好的沟通能力，品行端正、责任心强，细致耐心，有敬业和团队合作精神，能承担较强工作压力。', '1', '1', '1514855814', '1515028890');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资者教育 文章';

-- ----------------------------
-- Records of zwf_admin_education
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='信息中心 文章';

-- ----------------------------
-- Records of zwf_admin_information
-- ----------------------------
INSERT INTO `zwf_admin_information` VALUES ('1', '2', '6', '长江联合赴青浦育才民办小学开展爱心助学活动', '0', 'http://[!--img.hosts--]2017/1222/1513930004786254.jpg', '2016年9月5日，上海长江联合金属交易中心有限公司一行赴上海青浦育才民办小学进行爱心助学及教师节慰问，参与本次活动的还有：167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司。', '2', '上海长江联合,金属', '1513930004', '1515029435');
INSERT INTO `zwf_admin_information` VALUES ('2', '2', '6', '爱在中秋，情系孤老：长江联合开展中秋慰问孤老活动', '0', 'http://[!--img.hosts--]2017/1222/1513930180449830.jpg', '2016年9月13-14日，中秋佳节前夕，为了让街道的孤寡老人能过上温馨的节日，上海长江联合金属交易中心有限公司一行赴陆家嘴街道探望孤寡老人，为他们送去慰问礼品与中秋祝福。', '1', '中秋佳节,上海长江联合', '1513930180', '1513930180');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图片总表';

-- ----------------------------
-- Records of zwf_images
-- ----------------------------
INSERT INTO `zwf_images` VALUES ('1', 'http://[!--img.hosts--]2018/0105/1515136153643707.png', '1', '1515143507', '1515136153');
INSERT INTO `zwf_images` VALUES ('4', 'http://[!--img.hosts--]2018/0128/1517116760216583.jpg', '1', null, '1517116760');
