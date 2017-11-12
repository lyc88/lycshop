/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.250
Source Server Version : 50633
Source Host           : 192.168.0.250:3306
Source Database       : guide

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2017-11-03 09:19:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `chinese_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '中文名',
  `english_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '英文名',
  `country_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '国家id',
  `intro` text CHARACTER SET utf8 COMMENT '简介',
  `certificate` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '证书图片地址',
  `logo` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT 'logo图片地址',
  `is_recommend` tinyint(4) DEFAULT NULL COMMENT '是否推荐',
  `is_only` tinyint(4) DEFAULT NULL COMMENT '是否独家',
  `logo_rectangle` varchar(120) DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `establish_time` datetime DEFAULT NULL COMMENT '品牌成立时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_brand_name` (`chinese_name`),
  KEY `FK_brand_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='品牌信息';

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('10000', '编辑', 'test', '美国', '河北青竹画材科技有限公司是一家专业生产美术画材的企业，是中国最大的美术颜料生产基地。青竹画材成立于1985年，总部位于河北衡水市衡德工业园区，占地面积130余亩，年产值近2亿元。 公司主营产品有丙烯画颜料，广告画颜料，水粉颜料，水彩颜料，油画棒，蜡笔，油画颜料，中国画颜料，及涂布颜料，玻璃画颜料，陶瓷画颜料，画材媒介，人体彩绘，蛋彩画，手指画，纺织彩棒等三十大类，1900多个品种与规格，填补了多项空白。', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:01', '1', '2017-09-14 00:00:00');
INSERT INTO `brand` VALUES ('905475866336247808', '西丁设计', 'seeding edutoy', '10000', 'Seeding(音译西丁）是西丁设计旗下的自有品牌，专注儿童艺术与设计启蒙玩教具。Seeding又是播种的意思，我们希望为孩子们播下艺术与设计启蒙的种子。我们的团队都是具有丰富经验的设计师，驴火IF,REDDOT等众多设计奖项的肯定，我们非常希望能和孩子们分享艺术与设计，并且我们将国内外艺术与设计类高校的课程儿童友好化，通过创新的设计系统地开发程玩教具，让孩子们在玩的过程中，激发他们的想象力，培养观察，倾听，自我表达的能力，让孩子们学习像真正的设计师那样去思考，最终达到帮助孩子们建立创造力信心的目的。', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:03', '0', '2017-09-14 00:00:00');
INSERT INTO `brand` VALUES ('907526907265396736', 'testChinesetest', '测试中华', '905474331405533184', '河北青竹画材科技有限公司是一家专业生产美术画材的企业，是中国最大的美术颜料生产基地。青竹画材成立于1985年，总部位于河北衡水市衡德工业园区，占地面积130余亩，年产值近2亿元。 公司主营产品有丙烯画颜料，广告画颜料，水粉颜料，水彩颜料，油画棒，蜡笔，油画颜料，中国画颜料，及涂布颜料，玻璃画颜料，陶瓷画颜料，画材媒介，人体彩绘，蛋彩画，手指画，纺织彩棒等三十大类，1900多个品种与规格，填补了多项空白。', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:05', '0', '2017-09-14 16:10:05');
INSERT INTO `brand` VALUES ('907526907265396737', '测试中华测试', 'testChinesetest', '905474331405533184', '河北青竹画材科技有限公司是一家专业生产美术画材的企业，是中国最大的美术颜料生产基地。青竹画材成立于1985年，总部位于河北衡水市衡德工业园区，占地面积130余亩，年产值近2亿元。 公司主营产品有丙烯画颜料，广告画颜料，水粉颜料，水彩颜料，油画棒，蜡笔，油画颜料，中国画颜料，及涂布颜料，玻璃画颜料，陶瓷画颜料，画材媒介，人体彩绘，蛋彩画，手指画，纺织彩棒等三十大类，1900多个品种与规格，填补了多项空白。', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:06', '0', '2017-09-14 16:10:05');
INSERT INTO `brand` VALUES ('907526907265396738', '中华测试', 'Chinesetest', '905474331405533184', '河北青竹画材科技有限公司是一家专业生产美术画材的企业，是中国最大的美术颜料生产基地。青竹画材成立于1985年，总部位于河北衡水市衡德工业园区，占地面积130余亩，年产值近2亿元。 公司主营产品有丙烯画颜料，广告画颜料，水粉颜料，水彩颜料，油画棒，蜡笔，油画颜料，中国画颜料，及涂布颜料，玻璃画颜料，陶瓷画颜料，画材媒介，人体彩绘，蛋彩画，手指画，纺织彩棒等三十大类，1900多个品种与规格，填补了多项空白。', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:08', '0', '2017-09-14 16:10:05');
INSERT INTO `brand` VALUES ('917726754425536512', '青竹画材', 'Chinjoo', '10000', '河北青竹画材科技有限公司是一家专业生产美术画材的企业，是中国最大的美术颜料生产基地。青竹画材成立于1985年，总部位于河北衡水市衡德工业园区，占地面积130余亩，年产值近2亿元。 公司主营产品有丙烯画颜料，广告画颜料，水粉颜料，水彩颜料，油画棒，蜡笔，油画颜料，中国画颜料，及涂布颜料，玻璃画颜料，陶瓷画颜料，画材媒介，人体彩绘，蛋彩画，手指画，纺织彩棒等三十大类，1900多个品种与规格，填补了多项空白。', null, 'http://guide2017.b0.upaiyun.com/share/923440984434442240.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-09-14 16:10:08', '0', '2017-09-14 00:00:00');
INSERT INTO `brand` VALUES ('922708725066641408', '中文', 'wanglk', '905474331405533184', 'this is introduce', null, 'http://guide2017.b0.upaiyun.com/share/922708567255953408.png', '1', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-24 14:17:58', '0', '2017-10-24 00:00:00');
INSERT INTO `brand` VALUES ('922720880105107456', '制定法', 'a', '中国', 'fad', null, 'http://guide2017.b0.upaiyun.com/share/922721340643880960.jpg', '1', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-24 15:06:16', '1', '2017-10-24 00:00:00');
INSERT INTO `brand` VALUES ('922722357850681344', '欧时力', 'ochic', '中国', 'myloveidotiswanglikun', null, 'http://guide2017.b0.upaiyun.com/share/922722209183576064.jpg', '0', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-24 15:12:08', '1', '2017-10-24 00:00:00');
INSERT INTO `brand` VALUES ('922723195130228736', '佟丽娅', 'liyatong', '905474331405533184', '风萧萧兮易水寒我爱工作工作使我快乐22', null, 'http://guide2017.b0.upaiyun.com/share/922725409450110976.jpg', '1', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-24 15:15:28', '0', '2017-10-24 00:00:00');
INSERT INTO `brand` VALUES ('923129267594735616', '今夕何夕', 'fasdf', '10000', '42', 'http://guide2017.b0.upaiyun.com/share/923129219100192768.jpg', 'http://guide2017.b0.upaiyun.com/share/923129194425102336.jpg', '1', '1', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-25 18:09:03', '0', '2017-10-01 00:00:00');
INSERT INTO `brand` VALUES ('923826817694547968', '1', '2', '3', '4', null, '6', '1', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-27 16:20:52', '0', '2017-09-19 00:00:00');
INSERT INTO `brand` VALUES ('923831336471470080', '43242', '4234423', '10000', '发的发', null, 'http://guide2017.b0.upaiyun.com/share/923831259048812544.jpg', '1', '0', 'http://guide2017.b0.upaiyun.com/share/923831275494678528.jpg', '2017-10-27 16:38:49', '0', '2017-10-01 00:00:00');
INSERT INTO `brand` VALUES ('923835898777927680', 'yaohuihui', 'yaohuihui', '10000', '说的发生地方撒', '', 'http://guide2017.b0.upaiyun.com/share/923835839835373568.jpg', '1', '1', 'http://guide2017.b0.upaiyun.com/share/923835855996026880.jpg', '2017-10-27 16:56:57', '0', '2017-10-23 00:00:00');

-- ----------------------------
-- Table structure for brand_category
-- ----------------------------
DROP TABLE IF EXISTS `brand_category`;
CREATE TABLE `brand_category` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `brand_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '品牌id',
  `category_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类id',
  `createdtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='品牌和分类关联表';

-- ----------------------------
-- Records of brand_category
-- ----------------------------
INSERT INTO `brand_category` VALUES ('907786841508810752', '905475866336247808', '100001000410004', '2017-09-11 10:28:26', '0');
INSERT INTO `brand_category` VALUES ('907786841508810753', '905475866336247808', '100011000210000', '2017-09-13 10:35:17', '0');
INSERT INTO `brand_category` VALUES ('907795154044833792', '907526907265396736', '100001000410004', '2017-09-13 10:35:18', '0');
INSERT INTO `brand_category` VALUES ('907795154044833793', '907526907265396736', '100011000210001', '2017-09-13 10:38:03', '0');
INSERT INTO `brand_category` VALUES ('907795154044833794', '907526907265396736', '100011000210000', '2017-09-13 10:38:26', '0');
INSERT INTO `brand_category` VALUES ('907857147720179712', '10000', '100001000410004', '2017-09-13 10:38:26', '0');
INSERT INTO `brand_category` VALUES ('907857147720179713', '907526907265396737', '100011000210000', '2017-09-13 10:38:26', '0');
INSERT INTO `brand_category` VALUES ('907857147720179714', '907526907265396738', '100011000210000', '2017-09-13 10:38:26', '0');
INSERT INTO `brand_category` VALUES ('917740783730769920', '917726754425536512', '100011000010000', '2017-09-13 10:38:26', '0');
INSERT INTO `brand_category` VALUES ('923795755121008640', '905475866336247808', '', '2017-10-27 14:17:26', '0');
INSERT INTO `brand_category` VALUES ('924204063873667072', '905475866336247808', '100011001710008', '2017-10-28 17:19:54', '0');
INSERT INTO `brand_category` VALUES ('924816158211719168', '905475866336247808', '100181001710008', '2017-10-30 09:52:09', '0');
INSERT INTO `brand_category` VALUES ('925175925342019584', '907526907265396737', '100181001710008', '2017-10-31 09:41:44', '0');
INSERT INTO `brand_category` VALUES ('925176436623482880', '907526907265396736', '100181001710008', '2017-10-31 09:43:46', '0');
INSERT INTO `brand_category` VALUES ('925180553655209984', '907526907265396737', '100001000410004', '2017-10-31 10:00:08', '0');

-- ----------------------------
-- Table structure for brand_cover
-- ----------------------------
DROP TABLE IF EXISTS `brand_cover`;
CREATE TABLE `brand_cover` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `conver` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '封面图路径',
  `brand_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品牌id',
  `status` int(11) DEFAULT '0',
  `createdtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brand_cover
-- ----------------------------
INSERT INTO `brand_cover` VALUES ('917956386190118912', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '10000', '1', '2017-10-24 14:46:26');
INSERT INTO `brand_cover` VALUES ('917956386190118913', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/yanfa.jpg', '917726754425536512', '1', '2017-10-26 14:47:53');
INSERT INTO `brand_cover` VALUES ('917956386190118914', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-26 10:33:00');
INSERT INTO `brand_cover` VALUES ('917956386190118915', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '907526907265396736', '0', '2017-10-11 11:37:36');
INSERT INTO `brand_cover` VALUES ('917956386190118916', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '907526907265396737', '0', '2017-10-11 11:44:54');
INSERT INTO `brand_cover` VALUES ('917956386190118917', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '907526907265396738', '0', '2017-10-11 11:45:47');
INSERT INTO `brand_cover` VALUES ('917956386190118918', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '917726754425536512', '1', '2017-10-26 14:47:53');
INSERT INTO `brand_cover` VALUES ('917956386190118919', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-26 10:33:00');
INSERT INTO `brand_cover` VALUES ('917956386190118920', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '905475866336247808', '1', '2017-10-26 10:33:00');
INSERT INTO `brand_cover` VALUES ('922708725217636352', 'http://guide2017.b0.upaiyun.com/share/922708625783271424.png', '922708725066641408', '1', '2017-10-24 15:21:18');
INSERT INTO `brand_cover` VALUES ('922715891903246336', 'http://guide2017.b0.upaiyun.com/share/922715840019705856.png', '10000', '1', '2017-10-24 14:56:17');
INSERT INTO `brand_cover` VALUES ('922720880134467584', '1', '922720880105107456', '1', '2017-10-24 15:08:30');
INSERT INTO `brand_cover` VALUES ('922720880138661888', '21', '922720880105107456', '1', '2017-10-24 15:08:30');
INSERT INTO `brand_cover` VALUES ('922721443504992256', 'http://guide2017.b0.upaiyun.com/share/922721378933682176.png', '922720880105107456', '1', '2017-10-24 15:12:32');
INSERT INTO `brand_cover` VALUES ('922721443509186560', 'http://guide2017.b0.upaiyun.com/share/922721412286787584.jpg', '922720880105107456', '1', '2017-10-24 15:12:32');
INSERT INTO `brand_cover` VALUES ('922722357871652864', 'http://guide2017.b0.upaiyun.com/share/922722305547710464.png', '922722357850681344', '1', '2017-10-24 15:13:04');
INSERT INTO `brand_cover` VALUES ('922722357880041472', 'http://guide2017.b0.upaiyun.com/share/922722327429394432.jpg', '922722357850681344', '1', '2017-10-24 15:13:04');
INSERT INTO `brand_cover` VALUES ('922722595646746624', '', '922722357850681344', '1', '2017-10-24 15:14:31');
INSERT INTO `brand_cover` VALUES ('922722595650940928', '', '922722357850681344', '1', '2017-10-24 15:14:31');
INSERT INTO `brand_cover` VALUES ('922723195155394560', 'http://guide2017.b0.upaiyun.com/share/922723185063899136.jpg', '922723195130228736', '1', '2017-10-24 15:15:48');
INSERT INTO `brand_cover` VALUES ('922723195159588864', '', '922723195130228736', '1', '2017-10-24 15:15:48');
INSERT INTO `brand_cover` VALUES ('922723280547229696', '', '922723195130228736', '1', '2017-10-24 15:24:03');
INSERT INTO `brand_cover` VALUES ('922723280555618304', '', '922723195130228736', '1', '2017-10-24 15:24:03');
INSERT INTO `brand_cover` VALUES ('922725247147323392', 'http://guide2017.b0.upaiyun.com/share/922725239752765440.jpg', '922708725066641408', '0', '2017-10-24 15:23:37');
INSERT INTO `brand_cover` VALUES ('922725357759508480', 'http://guide2017.b0.upaiyun.com/share/922725344211906560.jpg', '922723195130228736', '1', '2017-10-24 15:24:17');
INSERT INTO `brand_cover` VALUES ('922725753236238336', 'http://guide2017.b0.upaiyun.com/share/922725747343241216.jpg', '922723195130228736', '1', '2017-10-24 15:25:42');
INSERT INTO `brand_cover` VALUES ('922725896438165504', 'http://guide2017.b0.upaiyun.com/share/922725889760833536.jpg', '922723195130228736', '1', '2017-10-24 15:26:24');
INSERT INTO `brand_cover` VALUES ('922726316581597184', 'http://guide2017.b0.upaiyun.com/share/922726304481030144.jpg', '922723195130228736', '1', '2017-10-24 15:28:03');
INSERT INTO `brand_cover` VALUES ('922727123750236160', 'http://guide2017.b0.upaiyun.com/share/922727116909326336.jpg', '922723195130228736', '1', '2017-10-24 15:31:29');
INSERT INTO `brand_cover` VALUES ('922727230835011584', 'http://guide2017.b0.upaiyun.com/share/922727116909326336.jpg', '922723195130228736', '1', '2017-10-24 15:36:50');
INSERT INTO `brand_cover` VALUES ('922729062915387392', 'http://guide2017.b0.upaiyun.com/share/922729057005613056.jpg', '922723195130228736', '1', '2017-10-24 15:38:51');
INSERT INTO `brand_cover` VALUES ('922729411441078272', 'http://guide2017.b0.upaiyun.com/share/922729399000772608.jpg', '922723195130228736', '1', '2017-10-24 15:40:23');
INSERT INTO `brand_cover` VALUES ('922729523609350144', 'http://guide2017.b0.upaiyun.com/share/922729514570625024.jpg', '922723195130228736', '1', '2017-10-24 15:40:40');
INSERT INTO `brand_cover` VALUES ('922729988057214976', 'http://guide2017.b0.upaiyun.com/share/922729976283803648.jpg', '922723195130228736', '1', '2017-10-24 15:42:47');
INSERT INTO `brand_cover` VALUES ('922730620482760704', 'http://guide2017.b0.upaiyun.com/share/922730605802696704.jpg', '922723195130228736', '1', '2017-10-24 15:49:29');
INSERT INTO `brand_cover` VALUES ('922731759496343552', 'http://guide2017.b0.upaiyun.com/share/922730605802696704.jpg', '922723195130228736', '0', '2017-10-24 15:49:30');
INSERT INTO `brand_cover` VALUES ('923129267619901440', 'http://guide2017.b0.upaiyun.com/share/923129250939154432.png', '923129267594735616', '0', '2017-10-25 18:09:03');
INSERT INTO `brand_cover` VALUES ('923129267632484352', 'http://guide2017.b0.upaiyun.com/share/923127961857568768.jpg', '923129267594735616', '0', '2017-10-25 18:09:03');
INSERT INTO `brand_cover` VALUES ('923376887013691392', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-26 14:49:24');
INSERT INTO `brand_cover` VALUES ('923376887022080000', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-26 14:49:24');
INSERT INTO `brand_cover` VALUES ('923376887026274304', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '905475866336247808', '1', '2017-10-26 14:49:24');
INSERT INTO `brand_cover` VALUES ('923441031565836288', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/yanfa.jpg', '917726754425536512', '0', '2017-10-26 14:47:53');
INSERT INTO `brand_cover` VALUES ('923441031570030592', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '917726754425536512', '0', '2017-10-26 14:47:53');
INSERT INTO `brand_cover` VALUES ('923441031574224896', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '917726754425536512', '0', '2017-10-26 14:47:53');
INSERT INTO `brand_cover` VALUES ('923441414887473152', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-27 10:43:09');
INSERT INTO `brand_cover` VALUES ('923441414891667456', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-27 10:43:09');
INSERT INTO `brand_cover` VALUES ('923441414895861760', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '905475866336247808', '1', '2017-10-27 10:43:09');
INSERT INTO `brand_cover` VALUES ('923741831752065024', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-27 10:43:42');
INSERT INTO `brand_cover` VALUES ('923741831764647936', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '1', '2017-10-27 10:43:42');
INSERT INTO `brand_cover` VALUES ('923741831773036544', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '905475866336247808', '1', '2017-10-27 10:43:42');
INSERT INTO `brand_cover` VALUES ('923741970327674880', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '0', '2017-10-27 10:43:43');
INSERT INTO `brand_cover` VALUES ('923741970331869184', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '905475866336247808', '0', '2017-10-27 10:43:43');
INSERT INTO `brand_cover` VALUES ('923741970336063488', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/GSJJ1_w.jpg', '905475866336247808', '0', '2017-10-27 10:43:43');
INSERT INTO `brand_cover` VALUES ('923825594132193280', '78', '1', '0', '2017-10-27 16:16:00');
INSERT INTO `brand_cover` VALUES ('923826160128352256', '78', '1', '0', '2017-10-27 16:18:15');
INSERT INTO `brand_cover` VALUES ('923826817996537856', '78', '923826817694547968', '0', '2017-10-27 16:20:52');
INSERT INTO `brand_cover` VALUES ('923831336517607424', 'http://guide2017.b0.upaiyun.com/share/923831311368560640.jpg', '923831336471470080', '0', '2017-10-27 16:38:49');
INSERT INTO `brand_cover` VALUES ('923835898849230848', 'http://guide2017.b0.upaiyun.com/share/923835475174195200.jpg', '923835898777927680', '0', '2017-10-27 16:56:57');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` varchar(32) NOT NULL,
  `type` int(1) DEFAULT NULL COMMENT '类型',
  `platform` int(1) DEFAULT '2' COMMENT '使用平台,1-PC端,2-移动端',
  `status` int(1) DEFAULT '0' COMMENT '0启用，1禁用',
  `name` varchar(100) DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `url` varchar(250) DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `remark` varchar(250) DEFAULT '',
  `createdtime` datetime DEFAULT NULL,
  `profession` varchar(1000) DEFAULT NULL COMMENT '专业度数组',
  `color` varchar(50) DEFAULT NULL COMMENT '背景色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='轮播表';

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('923841752765304832', '0', '2', '0', '儿童第一张', 'http://guide2017.b0.upaiyun.com/share/923841687925559296.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:20:13', '905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923842026913402880', '0', '2', '0', '儿童第二张', 'http://guide2017.b0.upaiyun.com/share/923841986086047744.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:21:18', '905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923842115513880576', '0', '2', '0', '儿童第三张', 'http://guide2017.b0.upaiyun.com/share/923842080374001664.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:21:39', '905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923842231033401344', '0', '2', '0', '艺考生第一张', 'http://guide2017.b0.upaiyun.com/share/923842183704875008.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:22:07', '905497000209412096', 'test');
INSERT INTO `carousel` VALUES ('923842315720593408', '0', '2', '0', '艺考生第二张', 'http://guide2017.b0.upaiyun.com/share/923842283424452608.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:22:27', '905497000209412096,905496907288801280', 'test');
INSERT INTO `carousel` VALUES ('923842459639746560', '0', '2', '0', '艺考生第三张', 'http://guide2017.b0.upaiyun.com/share/923842409379401728.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:23:01', '905497000209412096', 'test');
INSERT INTO `carousel` VALUES ('923842574790168576', '0', '2', '0', '艺术家第一张', 'http://guide2017.b0.upaiyun.com/share/923842510629900288.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:23:29', '905496907288801280', 'test');
INSERT INTO `carousel` VALUES ('923842700006920192', '0', '2', '0', '艺术家第二张', 'http://guide2017.b0.upaiyun.com/share/923842602791342080.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:23:59', '905496907288801280,905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923842782404022272', '0', '2', '0', '艺术家第三张', 'http://guide2017.b0.upaiyun.com/share/923842722245120000.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:24:18', '905496907288801280', 'test');
INSERT INTO `carousel` VALUES ('923844146513317888', '1', '2', '0', '儿童第一张', 'http://guide2017.b0.upaiyun.com/share/923843998466969600.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:29:43', '905496956341186560,905497000209412096,905496907288801280', 'test');
INSERT INTO `carousel` VALUES ('923845594902958080', '1', '2', '0', '儿童第二张', 'http://guide2017.b0.upaiyun.com/share/923845550753714176.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:35:29', '905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923845674078834688', '1', '2', '0', '儿童第三张', 'http://guide2017.b0.upaiyun.com/share/923845637932322816.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:35:48', '905496956341186560', 'test');
INSERT INTO `carousel` VALUES ('923845789208285184', '1', '2', '0', '艺考生第二张', 'http://guide2017.b0.upaiyun.com/share/923845751946088448.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:36:15', '905497000209412096', 'test');
INSERT INTO `carousel` VALUES ('923845887640211456', '1', '2', '0', '艺考生第三张', 'http://guide2017.b0.upaiyun.com/share/923845818480332800.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:36:38', '905497000209412096', 'test');
INSERT INTO `carousel` VALUES ('923845978815991808', '1', '2', '0', '艺术家第二张', 'http://guide2017.b0.upaiyun.com/share/923845911354806272.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:37:00', '905496907288801280', 'test');
INSERT INTO `carousel` VALUES ('923846056901349376', '1', '2', '0', '艺术家第三张', 'http://guide2017.b0.upaiyun.com/share/923846025024638976.jpg', 'https://www.pexels.com/photo/adult-art-artist-canvass-542555/', '0', 'test', '2017-10-27 17:37:19', '905496907288801280', 'test');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `name` varchar(8) CHARACTER SET utf8 DEFAULT NULL COMMENT '国家名',
  `createdtime` datetime DEFAULT NULL,
  `flag` varchar(200) DEFAULT NULL COMMENT '国家旗子',
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_country_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('10000', '中国', '2017-09-11 10:28:26', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/u2862.png', '0');
INSERT INTO `country` VALUES ('905474331405533184', '美国', '2017-09-11 10:28:26', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/u2862.png', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `goods_base_info_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品基础信息id',
  `specification_describe` varchar(150) CHARACTER SET utf8 DEFAULT NULL COMMENT '规格的中文描述',
  `specification_id_all` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品的所有规格id，用分号分割',
  `stocks_number` int(10) unsigned DEFAULT NULL COMMENT '库存',
  `price` decimal(10,3) DEFAULT NULL COMMENT '当前规格的价格',
  `createdtime` datetime DEFAULT NULL,
  `market_price` decimal(10,3) DEFAULT NULL COMMENT '市场售价',
  `sku` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_goods_base_info_id` (`goods_base_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10000', '10000', '色号1,规格2,型号1', '10000;10004;10005', '99998', '0.010', '2017-09-11 10:28:26', '1.000', '1');
INSERT INTO `goods` VALUES ('10001', '10000', '色号2,规格1,型号2', '10001;10003;10006', '99999', '0.010', '2017-09-11 10:28:26', '2.000', '2');
INSERT INTO `goods` VALUES ('10002', '10000', '色号3,规格2,型号2', '10002;10004;10006', '99999', '0.010', '2017-09-11 10:28:26', '3.000', '3');
INSERT INTO `goods` VALUES ('10003', '907071578043965441', '规格1', '10007', '100001', '0.010', '2017-09-14 18:38:10', '1.000', '4');
INSERT INTO `goods` VALUES ('907091117674618881', '907071578043965440', '尺寸1,体积1', '907079256006848514;907079256006848513', '99999', '0.010', '2017-09-11 12:02:53', '1.000', '5');
INSERT INTO `goods` VALUES ('917738121639579648', '917726754425536514', '12色收纳桶', '917726754425536521', '99998', '0.010', '2017-09-11 12:02:53', '1.000', '6');
INSERT INTO `goods` VALUES ('917738121639579649', '917726754425536514', '24色收纳桶', '917726754425536522', '99999', '0.020', '2017-09-11 12:02:53', '2.000', '7');
INSERT INTO `goods` VALUES ('917738121639579650', '917726754425536514', '12色造型桶', '917726754425536523', '99999', '0.030', '2017-09-11 12:02:53', '3.000', '8');
INSERT INTO `goods` VALUES ('917745705394200576', '917740783730769928', '24色', '917744556964323337', '99993', '0.010', '2017-09-11 12:02:53', '1.000', '9');
INSERT INTO `goods` VALUES ('917745705394200577', '917740783730769928', '36色', '917744556964323338', '99985', '0.020', '2017-09-11 12:02:53', '2.000', '10');
INSERT INTO `goods` VALUES ('917747595897057282', '917747595897057280', null, null, '99996', '0.010', '2017-09-11 12:02:53', '3.000', '11');
INSERT INTO `goods` VALUES ('923444977344741376', '923444888748457984', null, null, '312', '312.000', '2017-10-26 15:03:34', '32131.000', '3123');
INSERT INTO `goods` VALUES ('923511245728940032', '923511055806660608', '色号1 规格1', '[\"923511154502828032\",\"923511157057159168\"]', '3', '3.000', '2017-10-26 19:26:54', '2.000', '3');
INSERT INTO `goods` VALUES ('923511245754105856', '923511055806660608', '色号2 规格1', '[\"923511154502828032\",\"923511157057159168\"]', '3', '3.000', '2017-10-26 19:26:54', '2.000', '3');
INSERT INTO `goods` VALUES ('923795755183923200', '923793559327367168', null, null, '1', '49.000', '2017-10-27 14:17:26', '24.500', '123456');
INSERT INTO `goods` VALUES ('924204063928193024', '11', '白色 中', '[]', '100', '12.300', '2017-10-28 17:19:54', '11.200', '123');
INSERT INTO `goods` VALUES ('924204063957553152', '11', '蓝色 小', '[]', '111', '11.000', '2017-10-28 17:19:54', '12.000', '23');
INSERT INTO `goods` VALUES ('924204429449187328', '111111', '白色 中', '[]', '100', '12.300', '2017-10-28 17:21:21', '11.200', '123');
INSERT INTO `goods` VALUES ('924204429486936064', '111111', '蓝色 小', '[]', '111', '11.000', '2017-10-28 17:21:22', '12.000', '23');
INSERT INTO `goods` VALUES ('924207228266336256', '1111112222', '白色 中', '923511154502828032;92351115705715916', '100', '12.300', '2017-10-28 17:32:29', '11.200', '123');
INSERT INTO `goods` VALUES ('924207228295696384', '1111112222', '蓝色 小', '923511154502828032;92351115705715916', '111', '11.000', '2017-10-28 17:32:29', '12.000', '23');
INSERT INTO `goods` VALUES ('924816158278828032', '924815661371244544', '型号1 规格2', '924815835250311168;924815878497779712', '12', '12.300', '2017-10-30 09:52:09', '11.200', '123123123');
INSERT INTO `goods` VALUES ('924816158291410944', '924815661371244544', '型号2 规格1', '924815835250311168;924815878497779712', '123', '23.222', '2017-10-30 09:52:09', '12.000', '1111112222');
INSERT INTO `goods` VALUES ('924819436671164416', '924817385996247040', '型号1 规格2', '924817518892769280;924817551239241728', '12', '22.000', '2017-10-30 10:05:11', '11.000', '1231');
INSERT INTO `goods` VALUES ('924819436713107456', '924817385996247040', '型号2 规格1', '924817518892769280;924817551239241728', '123', '22.000', '2017-10-30 10:05:11', '11.000', '3333');
INSERT INTO `goods` VALUES ('924829490259968000', '924829343786483712', '型号1', '924829434333118464', '12', '22.000', '2017-10-30 10:45:08', '11.000', '33');
INSERT INTO `goods` VALUES ('924835145442689024', '924834908816834560', '型号1 规格2', '924835016065187840;924835016115519488', '12', '22.000', '2017-10-30 11:07:36', '11.000', '123');
INSERT INTO `goods` VALUES ('924835145463660544', '924834908816834560', '型号2 规格1', '924835045647613952;924835045681168384', '1111', '11.000', '2017-10-30 11:07:36', '12.000', '123123');
INSERT INTO `goods` VALUES ('924836486458155008', '924835752945688576', '型号1 规格2', '924835976720195584;924835976774721536', '123', '22.000', '2017-10-30 11:12:58', '11.000', '12312');
INSERT INTO `goods` VALUES ('924985230504673280', '924976429269434368', null, null, '2', '13.000', '2017-10-30 21:03:59', '12.000', 'test123445');
INSERT INTO `goods` VALUES ('925168679890030592', '925167687635144704', '型号1 规格2', '925167870519382016;925167870582296576', '11', '22.000', '2017-10-31 09:12:57', '11.000', '1231231');
INSERT INTO `goods` VALUES ('925168680452067328', '925167687635144704', '型号2 规格1', '925167898667356160;925167898734465024', '11', '12.000', '2017-10-31 09:12:57', '11.000', '123123');
INSERT INTO `goods` VALUES ('925173371068051456', '925172915084292096', '型号1 规格2', '925173013692379136;925173042750517248', '12312', '12.300', '2017-10-31 09:31:35', '11.200', '123111');
INSERT INTO `goods` VALUES ('925173387035766784', '925172915084292096', '型号2 规格1', '925173013763682304;925173042708574208', '112', '23.000', '2017-10-31 09:31:39', '112.000', '123');
INSERT INTO `goods` VALUES ('925175925400739840', '925175586178015233', '规格1 型号1', '925175731917496320', '123', '22.000', '2017-10-31 09:41:44', '11.000', '12312');
INSERT INTO `goods` VALUES ('925175925409128448', '925175586178015233', '规格2 型号2', '925175731988799488', '11', '12.000', '2017-10-31 09:41:44', '11.000', '11231231');
INSERT INTO `goods` VALUES ('925176436648648704', '925176119110475776', '型号1 规格2', '925176268721299456;925176295812308992', '44', '22.000', '2017-10-31 09:43:46', '11.000', '333');
INSERT INTO `goods` VALUES ('925176436652843008', '925176119110475776', '型号2 规格1', '925176268733882368;925176295774560256', '44444', '12.000', '2017-10-31 09:43:46', '11.000', '333');
INSERT INTO `goods` VALUES ('925180554380824576', '925180121948082176', null, null, '22', '14.000', '2017-10-31 10:00:08', '12.000', 'seds');
INSERT INTO `goods` VALUES ('925184739285995520', '925183648695652352', null, null, '123123', '22.000', '2017-10-31 10:16:46', '11.000', '11231');
INSERT INTO `goods` VALUES ('925185154484342784', '925184986255003648', '型号1', '925185068882792448', '4', '2.000', '2017-10-31 10:18:25', '1.000', '3');
INSERT INTO `goods` VALUES ('925185154488537088', '925184986255003648', '型号1', '925185068882792448', '5', '2.000', '2017-10-31 10:18:25', '1.000', '4');

-- ----------------------------
-- Table structure for goods_base_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_base_info`;
CREATE TABLE `goods_base_info` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `goods_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '商品名',
  `min_price` decimal(10,3) DEFAULT NULL COMMENT '最低价',
  `max_price` decimal(10,3) DEFAULT NULL COMMENT '最高价',
  `intro` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '简介',
  `details` text CHARACTER SET utf8 COMMENT '详情',
  `brand_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '品牌id',
  `category_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类id(第3级分类id)',
  `createdtime` datetime DEFAULT NULL,
  `express_fee` decimal(10,2) DEFAULT NULL COMMENT '快递费',
  `status` int(11) DEFAULT '0' COMMENT '是否上架，0 上架 ，1下架',
  `status_msg` varchar(100) DEFAULT NULL,
  `min_market` decimal(10,3) DEFAULT NULL COMMENT '市场最低价',
  `max_market` decimal(10,3) DEFAULT NULL COMMENT '市场最大价',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `profession_id` varchar(200) DEFAULT NULL COMMENT '专业id 分号分割',
  PRIMARY KEY (`id`),
  KEY `FK_product_info_category_id` (`category_id`),
  KEY `FK_product_brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_base_info
-- ----------------------------
INSERT INTO `goods_base_info` VALUES ('10000', '马利牌01170油画颜料', '55.500', '70.000', '油画颜料', '挺好的啊挺好的啊挺好的啊挺好的啊挺好的啊', '905475866336247808', '100021000510006', '2017-09-15 09:39:16', '0.00', '0', null, '1.000', '3.000', null, '905496907288801280,905496956341186560');
INSERT INTO `goods_base_info` VALUES ('11', '标题', '11.000', '12.300', null, null, '905475866336247808', '100011001710008', '2017-10-28 17:19:54', null, '0', null, '11.200', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('111111', '标题', '11.000', '12.300', null, null, '905475866336247808', '100011001710008', '2017-10-28 17:20:34', null, '0', null, '11.200', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('1111112222', '标题', '11.000', '12.300', null, null, '905475866336247808', '100011001710008', '2017-10-28 17:32:29', null, '0', null, '11.200', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('907071578043965440', '中华铅笔', '20.400', '20.000', '中华', '挺好的', '905475866336247808', '100021000510006', '2017-09-16 11:33:01', '0.00', '0', '', '1.000', '1.000', null, null);
INSERT INTO `goods_base_info` VALUES ('907071578043965441', '中华毛笔', '60.600', '60.000', '中华', '毛笔', '905475866336247808', '100021000510006', '2017-09-16 11:33:05', '0.00', '0', null, '1.000', '1.000', null, null);
INSERT INTO `goods_base_info` VALUES ('917726754425536514', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '0.010', '0.030', '青竹小天才彩泥套装，彩泥配青竹美院派', '<div><img src=\"http://guide2017.b0.upaiyun.com/test/2017.9.10/moban.jpg\"></div>\r\n', '917726754425536512', '100011000010000', '2017-09-16 11:33:05', '0.00', '0', null, '1.000', '3.000', null, null);
INSERT INTO `goods_base_info` VALUES ('917740783730769928', '青竹小天才彩色铅笔24色36色', '0.010', '0.020', '青竹小天才彩色铅笔', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/%E5%BD%A9%E9%93%85.jpg', '917726754425536512', '100001000410004', '2017-09-16 11:33:05', '0.00', '0', null, '1.000', '2.000', null, null);
INSERT INTO `goods_base_info` VALUES ('917747595897057280', '青竹电动橡皮擦', '0.010', '0.010', '青竹电动橡皮擦', '<div><img src=\"http://guide2017.b0.upaiyun.com/test/2017.9.10/moban.jpg\"></div>\r\n', '917726754425536512', '100001000410004', '2017-09-16 11:33:05', '0.00', '0', null, '3.000', '3.000', null, null);
INSERT INTO `goods_base_info` VALUES ('923444888748457984', '123', '312.000', '312.000', '简介', '测试详情', '905475866336247808', '100001000410004', '2017-10-26 15:03:34', null, '0', null, '32131.000', '32131.000', '备足啊', null);
INSERT INTO `goods_base_info` VALUES ('923511055806660608', '23', '3.000', '3.000', null, null, '905475866336247808', '100001000410004', '2017-10-26 19:26:54', null, '0', null, '2.000', '2.000', null, null);
INSERT INTO `goods_base_info` VALUES ('923793559327367168', '儿童diy印章玩具', '49.000', '49.000', null, null, '905475866336247808', '', '2017-10-27 14:17:26', null, '0', null, '24.500', '24.500', null, null);
INSERT INTO `goods_base_info` VALUES ('924815661371244544', '灰灰商品标题1', '12.300', '23.222', null, null, '905475866336247808', '100181001710008', '2017-10-30 09:52:09', null, '0', null, '11.200', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('924817385996247040', '测试标题1', '22.000', '22.000', null, null, '905475866336247808', '100181001710008', '2017-10-30 10:05:11', null, '0', null, '11.000', '11.000', null, null);
INSERT INTO `goods_base_info` VALUES ('924829343786483712', '灰灰其他测试', '22.000', '22.000', '商品简介', '<p>商品详情2</p>', '905475866336247808', '100181001710008', '2017-10-30 10:45:08', null, '0', null, '11.000', '11.000', '备注1111', null);
INSERT INTO `goods_base_info` VALUES ('924834908816834560', 'bug测试', '11.000', '22.000', null, null, '905475866336247808', '100181001710008', '2017-10-30 11:07:36', null, '0', null, '11.000', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('924835752945688576', 'debug', '22.000', '22.000', null, null, '905475866336247808', '100181001710008', '2017-10-30 11:12:56', null, '0', null, '11.000', '11.000', null, null);
INSERT INTO `goods_base_info` VALUES ('924976429269434368', 'lyctest', '13.000', '13.000', null, null, '905475866336247808', '100001000410004', '2017-10-30 20:32:03', null, '0', null, '12.000', '12.000', null, null);
INSERT INTO `goods_base_info` VALUES ('925167687635144704', '测试标题', '12.000', '22.000', null, null, '905475866336247808', '100181001710008', '2017-10-31 09:12:14', null, '0', null, '11.000', '11.000', null, null);
INSERT INTO `goods_base_info` VALUES ('925172915084292096', '在测一次', '12.300', '23.000', null, null, '905475866336247808', '100181001710008', '2017-10-31 09:31:33', null, '0', null, '11.200', '112.000', null, null);
INSERT INTO `goods_base_info` VALUES ('925175586178015233', '测试服测试', '12.000', '22.000', null, null, '907526907265396737', '100181001710008', '2017-10-31 09:41:44', null, '0', null, '11.000', '11.000', null, null);
INSERT INTO `goods_base_info` VALUES ('925176119110475776', '测试测试', '12.000', '22.000', '阿萨德发说', '<p>阿萨德的发生地方&nbsp;&nbsp;&nbsp;&nbsp;</p>', '907526907265396736', '100181001710008', '2017-10-31 09:43:46', null, '0', null, '11.000', '11.000', '阿萨德发', null);
INSERT INTO `goods_base_info` VALUES ('925180121948082176', 'test11111111', '14.000', '14.000', null, null, '907526907265396737', '100001000410004', '2017-10-31 09:59:17', null, '0', null, '12.000', '12.000', null, '905496956341186560,905497000209412096');
INSERT INTO `goods_base_info` VALUES ('925183648695652352', '标题', '22.000', '22.000', null, null, '905475866336247808', '100181001710008', '2017-10-31 10:16:46', null, '0', null, '11.000', '11.000', null, '905496956341186560,905497000209412096');
INSERT INTO `goods_base_info` VALUES ('925184986255003648', '标题测试2', '2.000', '2.000', null, null, '905475866336247808', '100181001710008', '2017-10-31 10:18:25', null, '0', null, '1.000', '1.000', null, '905496956341186560');

-- ----------------------------
-- Table structure for goods_picture
-- ----------------------------
DROP TABLE IF EXISTS `goods_picture`;
CREATE TABLE `goods_picture` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `picture_url` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品图片',
  `goods_base_info_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情id',
  `order` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_picture
-- ----------------------------
INSERT INTO `goods_picture` VALUES ('10000', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '10000', '2', '2017-09-15 10:20:45');
INSERT INTO `goods_picture` VALUES ('100001', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '10000', '1', '2017-09-15 10:21:43');
INSERT INTO `goods_picture` VALUES ('907000000000000010', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '907071578043965441', '1', '2017-09-15 10:20:48');
INSERT INTO `goods_picture` VALUES ('907091117674618880', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '907071578043965440', '1', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917738121639579649', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg', '917726754425536514', '1', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917738121639579650', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/2.jpg', '917726754425536514', '2', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917738121639579651', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/3.jpg', '917726754425536514', '3', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917738121639579652', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/4.jpg', '917726754425536514', '4', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917738121639579653', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/5.jpg', '917726754425536514', '5', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917745705394200580', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg', '917740783730769928', '1', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917745705394200581', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/IMG_1974.JPG', '917740783730769928', '2', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917745705394200582', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/IMG_1976.JPG', '917740783730769928', '3', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('917747595897057289', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg', '917747595897057280', '1', '2017-09-15 10:20:49');
INSERT INTO `goods_picture` VALUES ('923726194921185280', 'http://guide2017.b0.upaiyun.com/goods/923726059558412288/923726083147177984.png', '923726059558412288', '0', '2017-10-27 09:41:02');
INSERT INTO `goods_picture` VALUES ('924829941445443584', 'http://guide2017.b0.upaiyun.com/goods/924829343786483712/924829838894710784.jpg', '924829343786483712', '0', '2017-10-30 10:46:55');
INSERT INTO `goods_picture` VALUES ('924829941525135360', 'http://guide2017.b0.upaiyun.com/goods/924829343786483712/924829851746058240.jpg', '924829343786483712', '1', '2017-10-30 10:46:55');
INSERT INTO `goods_picture` VALUES ('924829941554495488', 'http://guide2017.b0.upaiyun.com/goods/924829343786483712/924829863628521472.jpg', '924829343786483712', '2', '2017-10-30 10:46:55');
INSERT INTO `goods_picture` VALUES ('925176567016005632', 'http://guide2017.b0.upaiyun.com/goods/925176119110475776/925176521801408512.jpg', '925176119110475776', '0', '2017-10-31 09:44:17');
INSERT INTO `goods_picture` VALUES ('925176567062142976', 'http://guide2017.b0.upaiyun.com/goods/925176119110475776/925176531658022912.jpg', '925176119110475776', '1', '2017-10-31 09:44:17');
INSERT INTO `goods_picture` VALUES ('925176567095697408', 'http://guide2017.b0.upaiyun.com/goods/925176119110475776/925176541904707584.jpg', '925176119110475776', '2', '2017-10-31 09:44:17');

-- ----------------------------
-- Table structure for goods_property
-- ----------------------------
DROP TABLE IF EXISTS `goods_property`;
CREATE TABLE `goods_property` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '属性名',
  `value` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '属性值',
  `goods_base_info_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情id',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_property
-- ----------------------------
INSERT INTO `goods_property` VALUES ('10000', '适用年龄', '3岁 4岁 5岁 6岁 7岁 8岁 9岁', '10000', '2', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('10001', '颜色数', '12色，18色', '10000', '1', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917726754425536515', '包装种类', '塑料盒', '917726754425536514', '1', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917726754425536516', '用途分类', '橡皮泥', '917726754425536514', '2', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917726754425536517', '储藏方式', '详见包装\r\n详见包装\r\n详见包装', '917726754425536514', '3', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917726754425536518', '适用人群', '儿童专业', '917726754425536514', '4', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917726754425536519', '保质日期', '12个月\r\n12个月', '917726754425536514', '5', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917740783730769928', '包装种类', '塑料盒', '917740783730769928', '1', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917744556964323329', '用途分类', '绘画', '917740783730769928', '2', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917744556964323330', '储藏方式', '干燥', '917740783730769928', '3', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917744556964323331', '适用人群', '儿童专业', '917740783730769928', '4', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('917744556964323332', '包装种类', '泡沫', '917747595897057280', '1', '2017-09-11 10:28:26');
INSERT INTO `goods_property` VALUES ('923712162843623424', '1', '1', '923711087864479744', '1', '2017-10-27 08:45:16');
INSERT INTO `goods_property` VALUES ('923713127466434560', '2', '3', '923713099322654720', '1', '2017-10-27 08:49:06');
INSERT INTO `goods_property` VALUES ('923728518355886080', '2', '3', '923728440127922176', '1', '2017-10-27 09:50:15');
INSERT INTO `goods_property` VALUES ('923729166577180672', '55435', '53453534', '923729130145456128', '1', '2017-10-27 09:52:50');
INSERT INTO `goods_property` VALUES ('923729417123930112', '32', '423', '923729392876658688', '1', '2017-10-27 09:53:50');
INSERT INTO `goods_property` VALUES ('923729757567197184', '21', '312', '923729527727726592', '1', '2017-10-27 09:55:11');
INSERT INTO `goods_property` VALUES ('923729976417591296', '在v', '在v 等下', '923729527727726592', '1', '2017-10-27 09:56:03');
INSERT INTO `goods_property` VALUES ('923730065819181056', '42', '423', '923730044012994560', '1', '2017-10-27 09:56:24');
INSERT INTO `goods_property` VALUES ('923730177173757952', '热任务二', '人人', '923730148799291392', '1', '2017-10-27 09:56:51');
INSERT INTO `goods_property` VALUES ('923731005523632128', '2', '3', '923730148799291392', '1', '2017-10-27 10:00:08');
INSERT INTO `goods_property` VALUES ('923731764885594112', '发多少', '发的发', '923731743373008896', '1', '2017-10-27 10:03:10');
INSERT INTO `goods_property` VALUES ('924150901499858944', 'fadsfa', 'fadsf', '924131238254579712', '1', '2017-10-28 13:48:39');
INSERT INTO `goods_property` VALUES ('924829532844736512', '属性1', '值2', '924829343786483712', '1', '2017-10-30 10:45:18');
INSERT INTO `goods_property` VALUES ('924829742874509312', '属性2', '值2', '924829343786483712', '1', '2017-10-30 10:46:08');
INSERT INTO `goods_property` VALUES ('924977092837687296', '颜色', '红色，蓝色，黄色', '924976429269434368', '1', '2017-10-30 20:31:39');
INSERT INTO `goods_property` VALUES ('925176494496489472', '测试', '11', '925176119110475776', '1', '2017-10-31 09:44:00');

-- ----------------------------
-- Table structure for goods_share
-- ----------------------------
DROP TABLE IF EXISTS `goods_share`;
CREATE TABLE `goods_share` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `goods_base_info_id` varchar(25) DEFAULT NULL COMMENT '商品id',
  `img` varchar(255) DEFAULT NULL COMMENT '自定义封面路径',
  `img_type` int(1) DEFAULT '0' COMMENT '使用的是主图或是自定义,0:主图,1:自定义',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `title_type` int(1) DEFAULT '0' COMMENT '是否自定义,0商品标题,1自定义',
  `describe` text COMMENT '描述',
  `status` tinyint(4) DEFAULT '0',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品分享信息';

-- ----------------------------
-- Records of goods_share
-- ----------------------------
INSERT INTO `goods_share` VALUES ('923762869066616832', '923444888748457984', null, '0', null, '0', '描述', '0', '2017-10-27 12:06:45');
INSERT INTO `goods_share` VALUES ('923762973622226944', '923444888748457984', '1', '1', '2', '1', '描述', '0', '2017-10-27 12:07:10');
INSERT INTO `goods_share` VALUES ('923824927742644224', '923824874055553024', 'http://guide2017.b0.upaiyun.com/goods/0/923824900668411904.jpg', '1', '发的发', '1', '法师打发', '0', '2017-10-27 16:13:21');
INSERT INTO `goods_share` VALUES ('924830124279349248', '924829343786483712', 'http://guide2017.b0.upaiyun.com/goods/0/924830083464577024.jpg', '1', '自定义标题', '1', '描述', '0', '2017-10-30 10:47:39');
INSERT INTO `goods_share` VALUES ('924833756190097408', '924831151669919744', null, '0', null, '0', '1', '0', '2017-10-30 11:02:05');
INSERT INTO `goods_share` VALUES ('924834479204220928', '924833905763172352', null, '0', null, '0', '21313', '0', '2017-10-30 11:04:57');
INSERT INTO `goods_share` VALUES ('924834644476575744', '924833905763172352', '', '1', '', '1', '21313', '0', '2017-10-30 11:05:36');
INSERT INTO `goods_share` VALUES ('924834674520375296', '924834657848016896', null, '0', null, '0', '22', '0', '2017-10-30 11:05:44');
INSERT INTO `goods_share` VALUES ('924834848944701440', '924834822407340032', null, '0', null, '0', '222', '0', '2017-10-30 11:06:25');
INSERT INTO `goods_share` VALUES ('924834910361894912', '924834822407340032', null, '0', null, '0', '222', '0', '2017-10-30 11:06:40');
INSERT INTO `goods_share` VALUES ('924834950195200000', '924834938816053248', null, '0', null, '0', '2', '0', '2017-10-30 11:06:49');
INSERT INTO `goods_share` VALUES ('924834998589079552', '924834938816053248', '', '1', '', '1', '2', '0', '2017-10-30 11:07:01');
INSERT INTO `goods_share` VALUES ('924835004830203904', '924834938816053248', '', '1', '', '1', '2', '0', '2017-10-30 11:07:02');
INSERT INTO `goods_share` VALUES ('924835044978081792', '924834938816053248', '', '1', '', '1', '2', '0', '2017-10-30 11:07:12');
INSERT INTO `goods_share` VALUES ('924836822876438528', '924836799732269056', null, '0', null, '0', '34', '0', '2017-10-30 11:14:16');
INSERT INTO `goods_share` VALUES ('925176627535618048', '925176119110475776', 'http://guide2017.b0.upaiyun.com/goods/0/925176602961190912.jpg', '1', null, '0', '阿斯达', '0', '2017-10-31 09:44:32');

-- ----------------------------
-- Table structure for goods_specification
-- ----------------------------
DROP TABLE IF EXISTS `goods_specification`;
CREATE TABLE `goods_specification` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `specification_name` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '规格名',
  `describe` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '规格描述',
  `is_select` tinyint(4) DEFAULT NULL COMMENT '是否默认被选中',
  `specification_group_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '规格组的id',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_specification
-- ----------------------------
INSERT INTO `goods_specification` VALUES ('10000', '色号1', '色号1描述', '0', '10000', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10001', '色号2', '色号2描述', '0', '10000', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10002', '色号3', '色号3描述', '0', '10000', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10003', '规格1', '规格1描述', '0', '10001', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10004', '规格2', '规格2描述', '0', '10001', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10005', '型号1', '型号1描述', '0', '10002', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10006', '型号2', '型号2描述', '0', '10002', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('10007', '规格1', '描述', '0', '10003', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('907079256006848513', '体积1', '描述', '0', '907079256006848513', '2017-09-11 11:54:27');
INSERT INTO `goods_specification` VALUES ('907079256006848514', '尺寸1', '1的描述', '0', '907079256006848512', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('917726754425536521', '12色收纳桶', '描述', '0', '917726754425536520', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('917726754425536522', '24色收纳桶', '描述', '0', '917726754425536520', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('917726754425536523', '12色造型桶', '描述', '0', '917726754425536520', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('917744556964323337', '24色', '描述', '0', '917744556964323336', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('917744556964323338', '36色', '描述', '0', '917744556964323336', '2017-09-11 10:28:26');
INSERT INTO `goods_specification` VALUES ('923396215876386816', '[\'雪晴1\'', null, '0', '923396215834443776', '2017-10-26 11:49:48');
INSERT INTO `goods_specification` VALUES ('923396215914135552', '\'雪晴2\']', null, '0', '923396215834443776', '2017-10-26 11:49:48');
INSERT INTO `goods_specification` VALUES ('923427082774544384', '色号1', null, '0', '923427082740989952', '2017-10-26 13:52:28');
INSERT INTO `goods_specification` VALUES ('923427082808098816', '色号2', null, '0', '923427082740989952', '2017-10-26 13:52:28');
INSERT INTO `goods_specification` VALUES ('923427082829070336', '色号3', null, '0', '923427082740989952', '2017-10-26 13:52:28');
INSERT INTO `goods_specification` VALUES ('923430202074234880', '色号1', null, '0', '923430202061651968', '2017-10-26 14:04:51');
INSERT INTO `goods_specification` VALUES ('923430202091012096', '色号2', null, '0', '923430202061651968', '2017-10-26 14:04:51');
INSERT INTO `goods_specification` VALUES ('923431360717160448', '12色收纳桶', null, '0', '923431360700383232', '2017-10-26 14:09:28');
INSERT INTO `goods_specification` VALUES ('923431360733937664', '24色收纳桶', null, '0', '923431360700383232', '2017-10-26 14:09:28');
INSERT INTO `goods_specification` VALUES ('923431430988529664', '尺寸1', null, '0', '923431430959169536', '2017-10-26 14:09:44');
INSERT INTO `goods_specification` VALUES ('923433681287151616', '规格1', null, '0', '923433681266180096', '2017-10-26 14:18:41');
INSERT INTO `goods_specification` VALUES ('923433700987797504', '体积1', null, '0', '923433700958437376', '2017-10-26 14:18:46');
INSERT INTO `goods_specification` VALUES ('923433729890746368', '体积1', null, '0', '923433729857191936', '2017-10-26 14:18:52');
INSERT INTO `goods_specification` VALUES ('923433934895742976', '色号1', null, '0', '923433934874771456', '2017-10-26 14:19:41');
INSERT INTO `goods_specification` VALUES ('923433934908325888', '色号2', null, '0', '923433934874771456', '2017-10-26 14:19:41');
INSERT INTO `goods_specification` VALUES ('923434102739206144', '体积1', null, '0', '923434102709846016', '2017-10-26 14:20:21');
INSERT INTO `goods_specification` VALUES ('923434163770523648', '尺寸1', null, '0', '923434163749552128', '2017-10-26 14:20:36');
INSERT INTO `goods_specification` VALUES ('923434660665524224', '色号1', null, '0', '923434660631969792', '2017-10-26 14:22:34');
INSERT INTO `goods_specification` VALUES ('923434660686495744', '色号2', null, '0', '923434660631969792', '2017-10-26 14:22:34');
INSERT INTO `goods_specification` VALUES ('923434660715855872', '色号3', null, '0', '923434660631969792', '2017-10-26 14:22:34');
INSERT INTO `goods_specification` VALUES ('923435073246625792', '规格1', null, '0', '923435073221459968', '2017-10-26 14:24:13');
INSERT INTO `goods_specification` VALUES ('923435437870055424', '色号1', null, '0', '923435437840695296', '2017-10-26 14:25:40');
INSERT INTO `goods_specification` VALUES ('923435437886832640', '色号2', null, '0', '923435437840695296', '2017-10-26 14:25:40');
INSERT INTO `goods_specification` VALUES ('923435437895221248', '色号3', null, '0', '923435437840695296', '2017-10-26 14:25:40');
INSERT INTO `goods_specification` VALUES ('923447421483122688', '色号1', null, '0', '923447421457956864', '2017-10-26 15:13:17');
INSERT INTO `goods_specification` VALUES ('923447421508288512', '色号2', null, '0', '923447421457956864', '2017-10-26 15:13:17');
INSERT INTO `goods_specification` VALUES ('923447421533454336', '色号3', null, '0', '923447421457956864', '2017-10-26 15:13:17');
INSERT INTO `goods_specification` VALUES ('923449481238708224', '色号2', null, '0', '923449481217736704', '2017-10-26 15:21:28');
INSERT INTO `goods_specification` VALUES ('923449481247096832', '色号3', null, '0', '923449481217736704', '2017-10-26 15:21:28');
INSERT INTO `goods_specification` VALUES ('923449481259679744', '色号1', null, '0', '923449481217736704', '2017-10-26 15:21:28');
INSERT INTO `goods_specification` VALUES ('923449508375855104', '规格1', null, '0', '923449508350689280', '2017-10-26 15:21:34');
INSERT INTO `goods_specification` VALUES ('923450001667948544', '色号2', null, '0', '923450001634394112', '2017-10-26 15:23:32');
INSERT INTO `goods_specification` VALUES ('923450001693114368', '色号3', null, '0', '923450001634394112', '2017-10-26 15:23:32');
INSERT INTO `goods_specification` VALUES ('923450001705697280', '色号1', null, '0', '923450001634394112', '2017-10-26 15:23:32');
INSERT INTO `goods_specification` VALUES ('923453659201699840', '色号1', null, '0', '923453659176534016', '2017-10-26 15:38:04');
INSERT INTO `goods_specification` VALUES ('923453659222671360', '色号2', null, '0', '923453659176534016', '2017-10-26 15:38:04');
INSERT INTO `goods_specification` VALUES ('923453659252031488', '色号3', null, '0', '923453659176534016', '2017-10-26 15:38:04');
INSERT INTO `goods_specification` VALUES ('923461212677636096', '色号1', null, '0', '923461212660858880', '2017-10-26 16:08:05');
INSERT INTO `goods_specification` VALUES ('923461212690219008', '色号2', null, '0', '923461212660858880', '2017-10-26 16:08:05');
INSERT INTO `goods_specification` VALUES ('923462629639356416', '24色收纳桶', null, '0', '923462629609996288', '2017-10-26 16:13:43');
INSERT INTO `goods_specification` VALUES ('923462629656133632', '12色造型桶', null, '0', '923462629609996288', '2017-10-26 16:13:43');
INSERT INTO `goods_specification` VALUES ('923462678444277760', '色号1', null, '0', '923462678423306240', '2017-10-26 16:13:54');
INSERT INTO `goods_specification` VALUES ('923462678456860672', '色号2', null, '0', '923462678423306240', '2017-10-26 16:13:54');
INSERT INTO `goods_specification` VALUES ('923462678469443584', '色号3', null, '0', '923462678423306240', '2017-10-26 16:13:54');
INSERT INTO `goods_specification` VALUES ('923465482177118208', '色号1', null, '0', '923465482156146688', '2017-10-26 16:25:03');
INSERT INTO `goods_specification` VALUES ('923465482185506816', '色号2', null, '0', '923465482156146688', '2017-10-26 16:25:03');
INSERT INTO `goods_specification` VALUES ('923476622403731456', '色号1', null, '0', '923476622378565632', '2017-10-26 17:09:19');
INSERT INTO `goods_specification` VALUES ('923476622428897280', '色号2', null, '0', '923476622378565632', '2017-10-26 17:09:19');
INSERT INTO `goods_specification` VALUES ('923476758940909568', '12色收纳桶', null, '0', '923476758915743744', '2017-10-26 17:09:51');
INSERT INTO `goods_specification` VALUES ('923476758966075392', '24色收纳桶', null, '0', '923476758915743744', '2017-10-26 17:09:51');
INSERT INTO `goods_specification` VALUES ('923490579831095296', '色号1', null, '0', '923490579805929472', '2017-10-26 18:04:47');
INSERT INTO `goods_specification` VALUES ('923490579856261120', '色号2', null, '0', '923490579805929472', '2017-10-26 18:04:47');
INSERT INTO `goods_specification` VALUES ('923490582335094784', '规格1', null, '0', '923490582309928960', '2017-10-26 18:04:47');
INSERT INTO `goods_specification` VALUES ('923490595626844160', '规格1', null, '0', '923490595597484032', '2017-10-26 18:04:50');
INSERT INTO `goods_specification` VALUES ('923491793931108352', '色号1', null, '0', '923491793905942528', '2017-10-26 18:09:36');
INSERT INTO `goods_specification` VALUES ('923491793956274176', '色号2', null, '0', '923491793905942528', '2017-10-26 18:09:36');
INSERT INTO `goods_specification` VALUES ('923492191899254784', '色号1', null, '0', '923492191882477568', '2017-10-26 18:11:11');
INSERT INTO `goods_specification` VALUES ('923492191920226304', '色号2', null, '0', '923492191882477568', '2017-10-26 18:11:11');
INSERT INTO `goods_specification` VALUES ('923492224916815872', '规格1', null, '0', '923492224891650048', '2017-10-26 18:11:19');
INSERT INTO `goods_specification` VALUES ('923492391954972672', '色号1', null, '0', '923492391934001152', '2017-10-26 18:11:59');
INSERT INTO `goods_specification` VALUES ('923492391980138496', '色号2', null, '0', '923492391934001152', '2017-10-26 18:11:59');
INSERT INTO `goods_specification` VALUES ('923492391996915712', '色号3', null, '0', '923492391934001152', '2017-10-26 18:11:59');
INSERT INTO `goods_specification` VALUES ('923492407314513920', '色号1', null, '0', '923492407289348096', '2017-10-26 18:12:02');
INSERT INTO `goods_specification` VALUES ('923492407339679744', '色号3', null, '0', '923492407289348096', '2017-10-26 18:12:02');
INSERT INTO `goods_specification` VALUES ('923492446048911360', '色号1', null, '0', '923492446023745536', '2017-10-26 18:12:11');
INSERT INTO `goods_specification` VALUES ('923492446065688576', '色号3', null, '0', '923492446023745536', '2017-10-26 18:12:11');
INSERT INTO `goods_specification` VALUES ('923492446074077184', '色号2', null, '0', '923492446023745536', '2017-10-26 18:12:11');
INSERT INTO `goods_specification` VALUES ('923493880492490752', '规格1', null, '0', '923493880467324928', '2017-10-26 18:17:53');
INSERT INTO `goods_specification` VALUES ('923501881018318848', '规格1', null, '0', '923501881005735936', '2017-10-26 18:49:41');
INSERT INTO `goods_specification` VALUES ('923501897137029120', '色号1', null, '0', '923501897111863296', '2017-10-26 18:49:45');
INSERT INTO `goods_specification` VALUES ('923501897162194944', '色号2', null, '0', '923501897111863296', '2017-10-26 18:49:45');
INSERT INTO `goods_specification` VALUES ('923501916057534464', '规格1', null, '0', '923501916032368640', '2017-10-26 18:49:49');
INSERT INTO `goods_specification` VALUES ('923502564924751872', '色号1', null, '0', '923502564899586048', '2017-10-26 18:52:24');
INSERT INTO `goods_specification` VALUES ('923502564933140480', '色号2', null, '0', '923502564899586048', '2017-10-26 18:52:24');
INSERT INTO `goods_specification` VALUES ('923502564945723392', '色号3', null, '0', '923502564899586048', '2017-10-26 18:52:24');
INSERT INTO `goods_specification` VALUES ('923502575184019456', '型号1', null, '0', '923502575154659328', '2017-10-26 18:52:26');
INSERT INTO `goods_specification` VALUES ('923502691026501632', '色号1', null, '0', '923502691001335808', '2017-10-26 18:52:54');
INSERT INTO `goods_specification` VALUES ('923502691051667456', '色号3', null, '0', '923502691001335808', '2017-10-26 18:52:54');
INSERT INTO `goods_specification` VALUES ('923502693748604928', '规格1', null, '0', '923502693719244800', '2017-10-26 18:52:55');
INSERT INTO `goods_specification` VALUES ('923502810786463744', '规格1', null, '0', '923502810761297920', '2017-10-26 18:53:23');
INSERT INTO `goods_specification` VALUES ('923503039690604544', '尺寸1', null, '0', '923503039665438720', '2017-10-26 18:54:17');
INSERT INTO `goods_specification` VALUES ('923503048687386624', '色号1', null, '0', '923503048666415104', '2017-10-26 18:54:19');
INSERT INTO `goods_specification` VALUES ('923503048720941056', '色号2', null, '0', '923503048666415104', '2017-10-26 18:54:19');
INSERT INTO `goods_specification` VALUES ('923503794602409984', '色号1', null, '0', '923503794577244160', '2017-10-26 18:57:17');
INSERT INTO `goods_specification` VALUES ('923503794623381504', '色号2', null, '0', '923503794577244160', '2017-10-26 18:57:17');
INSERT INTO `goods_specification` VALUES ('923503794648547328', '色号3', null, '0', '923503794577244160', '2017-10-26 18:57:17');
INSERT INTO `goods_specification` VALUES ('923503825665425408', '规格1', null, '0', '923503825636065280', '2017-10-26 18:57:25');
INSERT INTO `goods_specification` VALUES ('923504188833431552', '色号1', null, '0', '923504188808265728', '2017-10-26 18:58:51');
INSERT INTO `goods_specification` VALUES ('923504188858597376', '色号2', null, '0', '923504188808265728', '2017-10-26 18:58:51');
INSERT INTO `goods_specification` VALUES ('923504191232573440', '规格1', null, '0', '923504191219990528', '2017-10-26 18:58:52');
INSERT INTO `goods_specification` VALUES ('923504191249350656', '规格2', null, '0', '923504191219990528', '2017-10-26 18:58:52');
INSERT INTO `goods_specification` VALUES ('923505078453698560', '12色收纳桶', null, '0', '923505078428532736', '2017-10-26 19:02:23');
INSERT INTO `goods_specification` VALUES ('923505078466281472', '24色收纳桶', null, '0', '923505078428532736', '2017-10-26 19:02:23');
INSERT INTO `goods_specification` VALUES ('923505078474670080', '12色造型桶', null, '0', '923505078428532736', '2017-10-26 19:02:23');
INSERT INTO `goods_specification` VALUES ('923505258099933184', '色号1', null, '0', '923505258074767360', '2017-10-26 19:03:06');
INSERT INTO `goods_specification` VALUES ('923505258125099008', '色号2', null, '0', '923505258074767360', '2017-10-26 19:03:06');
INSERT INTO `goods_specification` VALUES ('923505302391783424', '规格1', null, '0', '923505302370811904', '2017-10-26 19:03:17');
INSERT INTO `goods_specification` VALUES ('923507401435414528', '色号1', null, '0', '923507401410248704', '2017-10-26 19:11:37');
INSERT INTO `goods_specification` VALUES ('923507401443803136', '色号2', null, '0', '923507401410248704', '2017-10-26 19:11:37');
INSERT INTO `goods_specification` VALUES ('923507401456386048', '色号3', null, '0', '923507401410248704', '2017-10-26 19:11:37');
INSERT INTO `goods_specification` VALUES ('923507422893473792', '尺寸1', null, '0', '923507422868307968', '2017-10-26 19:11:42');
INSERT INTO `goods_specification` VALUES ('923508075422318592', '规格1', null, '0', '923508075401347072', '2017-10-26 19:14:18');
INSERT INTO `goods_specification` VALUES ('923508634577567744', '规格1', null, '0', '923508634552401920', '2017-10-26 19:16:31');
INSERT INTO `goods_specification` VALUES ('923508901884755968', '尺寸1', null, '0', '923508901859590144', '2017-10-26 19:17:35');
INSERT INTO `goods_specification` VALUES ('923509531407843328', '规格1', null, '0', '923509531382677504', '2017-10-26 19:20:05');
INSERT INTO `goods_specification` VALUES ('923509539683205120', '色号1', null, '0', '923509539662233600', '2017-10-26 19:20:07');
INSERT INTO `goods_specification` VALUES ('923509539708370944', '色号2', null, '0', '923509539662233600', '2017-10-26 19:20:07');
INSERT INTO `goods_specification` VALUES ('923511154477662208', '色号1', null, '0', '923511154448302080', '2017-10-26 19:26:32');
INSERT INTO `goods_specification` VALUES ('923511154502828032', '色号2', null, '0', '923511154448302080', '2017-10-26 19:26:32');
INSERT INTO `goods_specification` VALUES ('923511157057159168', '规格1', null, '0', '923511157036187648', '2017-10-26 19:26:33');
INSERT INTO `goods_specification` VALUES ('924806189252890624', '红色', null, '0', '924806188917346304', '2017-10-30 09:12:32');
INSERT INTO `goods_specification` VALUES ('924806189336776704', '黄色', null, '0', '924806188917346304', '2017-10-30 09:12:32');
INSERT INTO `goods_specification` VALUES ('924815835187396608', '型号1', null, '0', '924815835095121920', '2017-10-30 09:50:52');
INSERT INTO `goods_specification` VALUES ('924815835250311168', '型号2', null, '0', '924815835095121920', '2017-10-30 09:50:52');
INSERT INTO `goods_specification` VALUES ('924815878497779712', '规格1', null, '0', '924815878464225280', '2017-10-30 09:51:02');
INSERT INTO `goods_specification` VALUES ('924815878535528448', '规格2', null, '0', '924815878464225280', '2017-10-30 09:51:02');
INSERT INTO `goods_specification` VALUES ('924817518829854720', '型号1', null, '0', '924817518762745856', '2017-10-30 09:57:33');
INSERT INTO `goods_specification` VALUES ('924817518892769280', '型号2', null, '0', '924817518762745856', '2017-10-30 09:57:33');
INSERT INTO `goods_specification` VALUES ('924817551239241728', '规格1', null, '0', '924817551201492992', '2017-10-30 09:57:41');
INSERT INTO `goods_specification` VALUES ('924817551281184768', '规格2', null, '0', '924817551201492992', '2017-10-30 09:57:41');
INSERT INTO `goods_specification` VALUES ('924819808149585920', '色号1', null, '0', '924819808120225792', '2017-10-30 10:06:39');
INSERT INTO `goods_specification` VALUES ('924819808174751744', '色号2', null, '0', '924819808120225792', '2017-10-30 10:06:39');
INSERT INTO `goods_specification` VALUES ('924819812494884864', '红色', null, '0', '924819812473913344', '2017-10-30 10:06:40');
INSERT INTO `goods_specification` VALUES ('924819812507467776', '黄色', null, '0', '924819812473913344', '2017-10-30 10:06:40');
INSERT INTO `goods_specification` VALUES ('924821436764274688', '红色', null, '0', '924821436739108864', '2017-10-30 10:13:08');
INSERT INTO `goods_specification` VALUES ('924821436793634816', '黄色', null, '0', '924821436739108864', '2017-10-30 10:13:08');
INSERT INTO `goods_specification` VALUES ('924821471795101696', '色号1', null, '0', '924821471761547264', '2017-10-30 10:13:16');
INSERT INTO `goods_specification` VALUES ('924821471824461824', '色号2', null, '0', '924821471761547264', '2017-10-30 10:13:16');
INSERT INTO `goods_specification` VALUES ('924821471849627648', '色号3', null, '0', '924821471761547264', '2017-10-30 10:13:16');
INSERT INTO `goods_specification` VALUES ('924821911806951424', '红色', null, '0', '924821911777591296', '2017-10-30 10:15:01');
INSERT INTO `goods_specification` VALUES ('924821911832117248', '黄色', null, '0', '924821911777591296', '2017-10-30 10:15:01');
INSERT INTO `goods_specification` VALUES ('924822005616754688', '色号1', null, '0', '924822005574811648', '2017-10-30 10:15:23');
INSERT INTO `goods_specification` VALUES ('924822005646114816', '色号2', null, '0', '924822005574811648', '2017-10-30 10:15:23');
INSERT INTO `goods_specification` VALUES ('924822005675474944', '色号3', null, '0', '924822005574811648', '2017-10-30 10:15:23');
INSERT INTO `goods_specification` VALUES ('924823228411559936', '色号1', null, '0', '924823228386394112', '2017-10-30 10:20:15');
INSERT INTO `goods_specification` VALUES ('924823228436725760', '色号2', null, '0', '924823228386394112', '2017-10-30 10:20:15');
INSERT INTO `goods_specification` VALUES ('924823228461891584', '色号3', null, '0', '924823228386394112', '2017-10-30 10:20:15');
INSERT INTO `goods_specification` VALUES ('924823644012560384', '色号1', null, '0', '924823643979005952', '2017-10-30 10:21:54');
INSERT INTO `goods_specification` VALUES ('924823644033531904', '色号2', null, '0', '924823643979005952', '2017-10-30 10:21:54');
INSERT INTO `goods_specification` VALUES ('924823644062892032', '色号3', null, '0', '924823643979005952', '2017-10-30 10:21:54');
INSERT INTO `goods_specification` VALUES ('924823727307243520', '型号1', null, '0', '924823727277883392', '2017-10-30 10:22:14');
INSERT INTO `goods_specification` VALUES ('924823727336603648', '型号2', null, '0', '924823727277883392', '2017-10-30 10:22:14');
INSERT INTO `goods_specification` VALUES ('924823948040880128', '型号1', null, '0', '924823948007325696', '2017-10-30 10:23:06');
INSERT INTO `goods_specification` VALUES ('924823948070240256', '型号2', null, '0', '924823948007325696', '2017-10-30 10:23:06');
INSERT INTO `goods_specification` VALUES ('924824090261340160', '规格1', null, '0', '924824090231980032', '2017-10-30 10:23:40');
INSERT INTO `goods_specification` VALUES ('924824090286505984', '规格2', null, '0', '924824090231980032', '2017-10-30 10:23:40');
INSERT INTO `goods_specification` VALUES ('924824333572915200', '规格1', null, '0', '924824333547749376', '2017-10-30 10:24:38');
INSERT INTO `goods_specification` VALUES ('924824333598081024', '规格2', null, '0', '924824333547749376', '2017-10-30 10:24:38');
INSERT INTO `goods_specification` VALUES ('924824441790152704', '型号1', null, '0', '924824441777569792', '2017-10-30 10:25:04');
INSERT INTO `goods_specification` VALUES ('924824441802735616', '型号2', null, '0', '924824441777569792', '2017-10-30 10:25:04');
INSERT INTO `goods_specification` VALUES ('924824467782254592', '红色', null, '0', '924824467757088768', '2017-10-30 10:25:10');
INSERT INTO `goods_specification` VALUES ('924824467811614720', '黄色', null, '0', '924824467757088768', '2017-10-30 10:25:10');
INSERT INTO `goods_specification` VALUES ('924825082629472256', '红色', null, '0', '924825082600112128', '2017-10-30 10:27:37');
INSERT INTO `goods_specification` VALUES ('924825082654638080', '黄色', null, '0', '924825082600112128', '2017-10-30 10:27:37');
INSERT INTO `goods_specification` VALUES ('924829434333118464', '型号1', null, '0', '924829434307952640', '2017-10-30 10:44:54');
INSERT INTO `goods_specification` VALUES ('924835016065187840', '型号1', null, '0', '924835016010661888', '2017-10-30 11:07:05');
INSERT INTO `goods_specification` VALUES ('924835016115519488', '型号2', null, '0', '924835016010661888', '2017-10-30 11:07:05');
INSERT INTO `goods_specification` VALUES ('924835045647613952', '规格1', null, '0', '924835045609865216', '2017-10-30 11:07:12');
INSERT INTO `goods_specification` VALUES ('924835045681168384', '规格2', null, '0', '924835045609865216', '2017-10-30 11:07:12');
INSERT INTO `goods_specification` VALUES ('924835976720195584', '型号1', null, '0', '924835976636309504', '2017-10-30 11:10:54');
INSERT INTO `goods_specification` VALUES ('924835976774721536', '型号2', null, '0', '924835976636309504', '2017-10-30 11:10:54');
INSERT INTO `goods_specification` VALUES ('924836001152016384', '规格1', null, '0', '924836001110073344', '2017-10-30 11:11:00');
INSERT INTO `goods_specification` VALUES ('924836001198153728', '规格2', null, '0', '924836001110073344', '2017-10-30 11:11:00');
INSERT INTO `goods_specification` VALUES ('924837743530360832', '规格1', null, '0', '924837743505195008', '2017-10-30 11:17:55');
INSERT INTO `goods_specification` VALUES ('924837743551332352', '规格2', null, '0', '924837743505195008', '2017-10-30 11:17:55');
INSERT INTO `goods_specification` VALUES ('924838568520597504', '型号1', null, '0', '924838568495431680', '2017-10-30 11:21:12');
INSERT INTO `goods_specification` VALUES ('924838568545763328', '型号2', null, '0', '924838568495431680', '2017-10-30 11:21:12');
INSERT INTO `goods_specification` VALUES ('924838571251089408', '规格1', null, '0', '924838571230117888', '2017-10-30 11:21:13');
INSERT INTO `goods_specification` VALUES ('924838571263672320', '规格2', null, '0', '924838571230117888', '2017-10-30 11:21:13');
INSERT INTO `goods_specification` VALUES ('924839651062071296', '型号1', null, '0', '924839651032711168', '2017-10-30 11:25:30');
INSERT INTO `goods_specification` VALUES ('924839651091431424', '型号2', null, '0', '924839651032711168', '2017-10-30 11:25:30');
INSERT INTO `goods_specification` VALUES ('924839652844650496', '规格1', null, '0', '924839652815290368', '2017-10-30 11:25:31');
INSERT INTO `goods_specification` VALUES ('924839652869816320', '规格2', null, '0', '924839652815290368', '2017-10-30 11:25:31');
INSERT INTO `goods_specification` VALUES ('924840363242307584', '型号1', null, '0', '924840363221336064', '2017-10-30 11:28:20');
INSERT INTO `goods_specification` VALUES ('924840363267473408', '型号2', null, '0', '924840363221336064', '2017-10-30 11:28:20');
INSERT INTO `goods_specification` VALUES ('924840387829317632', '规格1', null, '0', '924840387804151808', '2017-10-30 11:28:26');
INSERT INTO `goods_specification` VALUES ('924840387854483456', '规格2', null, '0', '924840387804151808', '2017-10-30 11:28:26');
INSERT INTO `goods_specification` VALUES ('924841106607194112', '型号1', null, '0', '924841106577833984', '2017-10-30 11:31:17');
INSERT INTO `goods_specification` VALUES ('924841106632359936', '型号2', null, '0', '924841106577833984', '2017-10-30 11:31:17');
INSERT INTO `goods_specification` VALUES ('924842662454902784', '型号1', null, '0', '924842662429736960', '2017-10-30 11:37:28');
INSERT INTO `goods_specification` VALUES ('924842662484262912', '型号2', null, '0', '924842662429736960', '2017-10-30 11:37:28');
INSERT INTO `goods_specification` VALUES ('924842682478510080', '规格1', null, '0', '924842682449149952', '2017-10-30 11:37:33');
INSERT INTO `goods_specification` VALUES ('924842682503675904', '规格2', null, '0', '924842682449149952', '2017-10-30 11:37:33');
INSERT INTO `goods_specification` VALUES ('924844771711664128', '型号1', null, '0', '924844771678109696', '2017-10-30 11:45:51');
INSERT INTO `goods_specification` VALUES ('924844771732635648', '型号2', null, '0', '924844771678109696', '2017-10-30 11:45:51');
INSERT INTO `goods_specification` VALUES ('924844796256731136', '规格1', null, '0', '924844796231565312', '2017-10-30 11:45:57');
INSERT INTO `goods_specification` VALUES ('924844796281896960', '规格2', null, '0', '924844796231565312', '2017-10-30 11:45:57');
INSERT INTO `goods_specification` VALUES ('924845032513486848', '型号1', null, '0', '924845032488321024', '2017-10-30 11:46:53');
INSERT INTO `goods_specification` VALUES ('924845032538652672', '型号2', null, '0', '924845032488321024', '2017-10-30 11:46:53');
INSERT INTO `goods_specification` VALUES ('924845053820551168', '规格1', null, '0', '924845053795385344', '2017-10-30 11:46:58');
INSERT INTO `goods_specification` VALUES ('924845053841522688', '规格2', null, '0', '924845053795385344', '2017-10-30 11:46:58');
INSERT INTO `goods_specification` VALUES ('924845385577414656', '型号1', null, '0', '924845385548054528', '2017-10-30 11:48:17');
INSERT INTO `goods_specification` VALUES ('924845396881063936', '型号1', null, '0', '924845396855898112', '2017-10-30 11:48:20');
INSERT INTO `goods_specification` VALUES ('924845396902035456', '型号2', null, '0', '924845396855898112', '2017-10-30 11:48:20');
INSERT INTO `goods_specification` VALUES ('924845429223342080', '规格1', null, '0', '924845429198176256', '2017-10-30 11:48:28');
INSERT INTO `goods_specification` VALUES ('924845429235924992', '规格2', null, '0', '924845429198176256', '2017-10-30 11:48:28');
INSERT INTO `goods_specification` VALUES ('924846553078710272', '型号1', null, '0', '924846553049350144', '2017-10-30 11:52:56');
INSERT INTO `goods_specification` VALUES ('924846553099681792', '型号2', null, '0', '924846553049350144', '2017-10-30 11:52:56');
INSERT INTO `goods_specification` VALUES ('924846578089345024', '规格1', null, '0', '924846578064179200', '2017-10-30 11:53:02');
INSERT INTO `goods_specification` VALUES ('924846578114510848', '规格2', null, '0', '924846578064179200', '2017-10-30 11:53:02');
INSERT INTO `goods_specification` VALUES ('924847093388951552', '型号1', null, '0', '924847093359591424', '2017-10-30 11:55:05');
INSERT INTO `goods_specification` VALUES ('924847093418311680', '型号2', null, '0', '924847093359591424', '2017-10-30 11:55:05');
INSERT INTO `goods_specification` VALUES ('924847117338427392', '规格1', null, '0', '924847117321650176', '2017-10-30 11:55:10');
INSERT INTO `goods_specification` VALUES ('924847117355204608', '规格2', null, '0', '924847117321650176', '2017-10-30 11:55:10');
INSERT INTO `goods_specification` VALUES ('924847991792091136', '型号1', null, '0', '924847991762731008', '2017-10-30 11:58:39');
INSERT INTO `goods_specification` VALUES ('924847991813062656', '型号2', null, '0', '924847991762731008', '2017-10-30 11:58:39');
INSERT INTO `goods_specification` VALUES ('924848009479471104', '规格1', null, '0', '924848009454305280', '2017-10-30 11:58:43');
INSERT INTO `goods_specification` VALUES ('924848009500442624', '规格2', null, '0', '924848009454305280', '2017-10-30 11:58:43');
INSERT INTO `goods_specification` VALUES ('924848761727893504', '规格1', null, '0', '924848761698533376', '2017-10-30 12:01:42');
INSERT INTO `goods_specification` VALUES ('924848761753059328', '规格2', null, '0', '924848761698533376', '2017-10-30 12:01:42');
INSERT INTO `goods_specification` VALUES ('924848770632400896', '规格1', null, '0', '924848770603040768', '2017-10-30 12:01:44');
INSERT INTO `goods_specification` VALUES ('924848770644983808', '规格2', null, '0', '924848770603040768', '2017-10-30 12:01:44');
INSERT INTO `goods_specification` VALUES ('924848813795983360', '规格1', null, '0', '924848813766623232', '2017-10-30 12:01:55');
INSERT INTO `goods_specification` VALUES ('924848813808566272', '规格2', null, '0', '924848813766623232', '2017-10-30 12:01:55');
INSERT INTO `goods_specification` VALUES ('924848822239117312', '型号1', null, '0', '924848822213951488', '2017-10-30 12:01:57');
INSERT INTO `goods_specification` VALUES ('924848822251700224', '型号2', null, '0', '924848822213951488', '2017-10-30 12:01:57');
INSERT INTO `goods_specification` VALUES ('924878090214064128', '型号1', null, '0', '924878090193092608', '2017-10-30 13:58:15');
INSERT INTO `goods_specification` VALUES ('924878090222452736', '型号2', null, '0', '924878090193092608', '2017-10-30 13:58:15');
INSERT INTO `goods_specification` VALUES ('924878107528151040', '规格1', null, '0', '924878107519762432', '2017-10-30 13:58:19');
INSERT INTO `goods_specification` VALUES ('924878107540733952', '规格2', null, '0', '924878107519762432', '2017-10-30 13:58:19');
INSERT INTO `goods_specification` VALUES ('924878212582883328', '型号1', null, '0', '924878212557717504', '2017-10-30 13:58:44');
INSERT INTO `goods_specification` VALUES ('924878212608049152', '型号2', null, '0', '924878212557717504', '2017-10-30 13:58:44');
INSERT INTO `goods_specification` VALUES ('924878234724614144', '规格1', null, '0', '924878234699448320', '2017-10-30 13:58:49');
INSERT INTO `goods_specification` VALUES ('924878234745585664', '规格2', null, '0', '924878234699448320', '2017-10-30 13:58:49');
INSERT INTO `goods_specification` VALUES ('924879189012660224', '型号1', null, '0', '924879188987494400', '2017-10-30 14:02:37');
INSERT INTO `goods_specification` VALUES ('924879189033631744', '型号2', null, '0', '924879188987494400', '2017-10-30 14:02:37');
INSERT INTO `goods_specification` VALUES ('924879207018807296', '规格1', null, '0', '924879206997835776', '2017-10-30 14:02:41');
INSERT INTO `goods_specification` VALUES ('924879207031390208', '规格2', null, '0', '924879206997835776', '2017-10-30 14:02:41');
INSERT INTO `goods_specification` VALUES ('924880279087104000', '型号1', null, '0', '924880279066132480', '2017-10-30 14:06:57');
INSERT INTO `goods_specification` VALUES ('924880279099686912', '型号2', null, '0', '924880279066132480', '2017-10-30 14:06:57');
INSERT INTO `goods_specification` VALUES ('924880298812915712', '规格1', null, '0', '924880298787749888', '2017-10-30 14:07:01');
INSERT INTO `goods_specification` VALUES ('924880298838081536', '规格2', null, '0', '924880298787749888', '2017-10-30 14:07:01');
INSERT INTO `goods_specification` VALUES ('924881082363428864', '型号1', null, '0', '924881082338263040', '2017-10-30 14:10:08');
INSERT INTO `goods_specification` VALUES ('924881082388594688', '型号2', null, '0', '924881082338263040', '2017-10-30 14:10:08');
INSERT INTO `goods_specification` VALUES ('924881117738188800', '规格1', null, '0', '924881117713022976', '2017-10-30 14:10:17');
INSERT INTO `goods_specification` VALUES ('924881117759160320', '规格2', null, '0', '924881117713022976', '2017-10-30 14:10:17');
INSERT INTO `goods_specification` VALUES ('924881723261468672', '型号1', null, '0', '924881723236302848', '2017-10-30 14:12:41');
INSERT INTO `goods_specification` VALUES ('924881723269857280', '型号2', null, '0', '924881723236302848', '2017-10-30 14:12:41');
INSERT INTO `goods_specification` VALUES ('924881763052830720', '规格1', null, '0', '924881763023470592', '2017-10-30 14:12:50');
INSERT INTO `goods_specification` VALUES ('924881763073802240', '规格2', null, '0', '924881763023470592', '2017-10-30 14:12:50');
INSERT INTO `goods_specification` VALUES ('924882480522084352', '型号1', null, '0', '924882480501112832', '2017-10-30 14:15:42');
INSERT INTO `goods_specification` VALUES ('924882480534667264', '型号2', null, '0', '924882480501112832', '2017-10-30 14:15:42');
INSERT INTO `goods_specification` VALUES ('924882497408352256', '规格1', null, '0', '924882497387380736', '2017-10-30 14:15:46');
INSERT INTO `goods_specification` VALUES ('924882497429323776', '规格2', null, '0', '924882497387380736', '2017-10-30 14:15:46');
INSERT INTO `goods_specification` VALUES ('924882876787343360', '型号1', null, '0', '924882876762177536', '2017-10-30 14:17:16');
INSERT INTO `goods_specification` VALUES ('924882876808314880', '型号2', null, '0', '924882876762177536', '2017-10-30 14:17:16');
INSERT INTO `goods_specification` VALUES ('924882910601822208', '规格1', null, '0', '924882910576656384', '2017-10-30 14:17:24');
INSERT INTO `goods_specification` VALUES ('924882910622793728', '规格2', null, '0', '924882910576656384', '2017-10-30 14:17:24');
INSERT INTO `goods_specification` VALUES ('924884063506939904', '型号1', null, '0', '924884063485968384', '2017-10-30 14:21:59');
INSERT INTO `goods_specification` VALUES ('924884063532105728', '型号2', null, '0', '924884063485968384', '2017-10-30 14:21:59');
INSERT INTO `goods_specification` VALUES ('924884081374674944', '规格1', null, '0', '924884081353703424', '2017-10-30 14:22:03');
INSERT INTO `goods_specification` VALUES ('924884081395646464', '规格2', null, '0', '924884081353703424', '2017-10-30 14:22:03');
INSERT INTO `goods_specification` VALUES ('924885034677059584', '型号1', null, '0', '924885032957394944', '2017-10-30 14:25:50');
INSERT INTO `goods_specification` VALUES ('924885035524308992', '型号2', null, '0', '924885032957394944', '2017-10-30 14:25:51');
INSERT INTO `goods_specification` VALUES ('924885058773336064', '规格1', null, '0', '924885058756558848', '2017-10-30 14:25:56');
INSERT INTO `goods_specification` VALUES ('924885058785918976', '规格2', null, '0', '924885058756558848', '2017-10-30 14:25:56');
INSERT INTO `goods_specification` VALUES ('924885352101986304', '型号1', null, '0', '924885352076820480', '2017-10-30 14:27:06');
INSERT INTO `goods_specification` VALUES ('924885352122957824', '型号2', null, '0', '924885352076820480', '2017-10-30 14:27:06');
INSERT INTO `goods_specification` VALUES ('924885376898711552', '规格1', null, '0', '924885376877740032', '2017-10-30 14:27:12');
INSERT INTO `goods_specification` VALUES ('924885376911294464', '规格2', null, '0', '924885376877740032', '2017-10-30 14:27:12');
INSERT INTO `goods_specification` VALUES ('924885586601328640', '型号1', null, '0', '924885586576162816', '2017-10-30 14:28:02');
INSERT INTO `goods_specification` VALUES ('924885586626494464', '型号2', null, '0', '924885586576162816', '2017-10-30 14:28:02');
INSERT INTO `goods_specification` VALUES ('924885605278564352', '规格1', null, '0', '924885605253398528', '2017-10-30 14:28:06');
INSERT INTO `goods_specification` VALUES ('924885605299535872', '规格2', null, '0', '924885605253398528', '2017-10-30 14:28:07');
INSERT INTO `goods_specification` VALUES ('924888045088423936', '型号1', null, '0', '924888045063258112', '2017-10-30 14:37:48');
INSERT INTO `goods_specification` VALUES ('924888045113589760', '型号2', null, '0', '924888045063258112', '2017-10-30 14:37:48');
INSERT INTO `goods_specification` VALUES ('924888067792191488', '规格1', null, '0', '924888067767025664', '2017-10-30 14:37:54');
INSERT INTO `goods_specification` VALUES ('924888067821551616', '规格2', null, '0', '924888067767025664', '2017-10-30 14:37:54');
INSERT INTO `goods_specification` VALUES ('924888820724285440', '型号1', null, '0', '924888820699119616', '2017-10-30 14:40:53');
INSERT INTO `goods_specification` VALUES ('924888820745256960', '型号2', null, '0', '924888820699119616', '2017-10-30 14:40:53');
INSERT INTO `goods_specification` VALUES ('924888840840167424', '规格1', null, '0', '924888840815001600', '2017-10-30 14:40:58');
INSERT INTO `goods_specification` VALUES ('924888840861138944', '规格2', null, '0', '924888840815001600', '2017-10-30 14:40:58');
INSERT INTO `goods_specification` VALUES ('924889276993257472', '型号1', null, '0', '924889276963897344', '2017-10-30 14:42:42');
INSERT INTO `goods_specification` VALUES ('924889277014228992', '型号2', null, '0', '924889276963897344', '2017-10-30 14:42:42');
INSERT INTO `goods_specification` VALUES ('924889299197902848', '规格1', null, '0', '924889299172737024', '2017-10-30 14:42:47');
INSERT INTO `goods_specification` VALUES ('924889299223068672', '规格2', null, '0', '924889299172737024', '2017-10-30 14:42:47');
INSERT INTO `goods_specification` VALUES ('924891423742902272', '型号1', null, '0', '924891423721930752', '2017-10-30 14:51:14');
INSERT INTO `goods_specification` VALUES ('924891423768068096', '型号2', null, '0', '924891423721930752', '2017-10-30 14:51:14');
INSERT INTO `goods_specification` VALUES ('924891440654336000', '规格1', null, '0', '924891440629170176', '2017-10-30 14:51:18');
INSERT INTO `goods_specification` VALUES ('924891440675307520', '规格2', null, '0', '924891440629170176', '2017-10-30 14:51:18');
INSERT INTO `goods_specification` VALUES ('924892190210015232', '型号1', null, '0', '924892190184849408', '2017-10-30 14:54:16');
INSERT INTO `goods_specification` VALUES ('924892216764153856', '规格1', null, '0', '924892216738988032', '2017-10-30 14:54:23');
INSERT INTO `goods_specification` VALUES ('924892216785125376', '规格2', null, '0', '924892216738988032', '2017-10-30 14:54:23');
INSERT INTO `goods_specification` VALUES ('924892219788247040', '型号1', null, '0', '924892219763081216', '2017-10-30 14:54:24');
INSERT INTO `goods_specification` VALUES ('924892219809218560', '型号2', null, '0', '924892219763081216', '2017-10-30 14:54:24');
INSERT INTO `goods_specification` VALUES ('924912407837425664', '型号1', null, '0', '924912407812259840', '2017-10-30 16:14:37');
INSERT INTO `goods_specification` VALUES ('924912407858397184', '型号2', null, '0', '924912407812259840', '2017-10-30 16:14:37');
INSERT INTO `goods_specification` VALUES ('924912483779493888', '型号1', null, '0', '924912483754328064', '2017-10-30 16:14:55');
INSERT INTO `goods_specification` VALUES ('924912483804659712', '型号2', null, '0', '924912483754328064', '2017-10-30 16:14:55');
INSERT INTO `goods_specification` VALUES ('924912502578364416', '规格1', null, '0', '924912502553198592', '2017-10-30 16:14:59');
INSERT INTO `goods_specification` VALUES ('924912502611918848', '规格2', null, '0', '924912502553198592', '2017-10-30 16:14:59');
INSERT INTO `goods_specification` VALUES ('924916813345603584', '型号1', null, '0', '924916813328826368', '2017-10-30 16:32:07');
INSERT INTO `goods_specification` VALUES ('924916813358186496', '型号2', null, '0', '924916813328826368', '2017-10-30 16:32:07');
INSERT INTO `goods_specification` VALUES ('924916834858188800', '规格1', null, '0', '924916834837217280', '2017-10-30 16:32:12');
INSERT INTO `goods_specification` VALUES ('924916834870771712', '规格2', null, '0', '924916834837217280', '2017-10-30 16:32:12');
INSERT INTO `goods_specification` VALUES ('924919637722808320', '型号1', null, '0', '924919637701836800', '2017-10-30 16:43:20');
INSERT INTO `goods_specification` VALUES ('924919637735391232', '型号2', null, '0', '924919637701836800', '2017-10-30 16:43:20');
INSERT INTO `goods_specification` VALUES ('924919664599908352', '规格1', null, '0', '924919664574742528', '2017-10-30 16:43:27');
INSERT INTO `goods_specification` VALUES ('924919664620879872', '规格2', null, '0', '924919664574742528', '2017-10-30 16:43:27');
INSERT INTO `goods_specification` VALUES ('924921070509637632', '型号1', null, '0', '924921070488666112', '2017-10-30 16:49:02');
INSERT INTO `goods_specification` VALUES ('924921070534803456', '型号2', null, '0', '924921070488666112', '2017-10-30 16:49:02');
INSERT INTO `goods_specification` VALUES ('924921106425462784', '规格1', null, '0', '924921106400296960', '2017-10-30 16:49:11');
INSERT INTO `goods_specification` VALUES ('924921106446434304', '规格2', null, '0', '924921106400296960', '2017-10-30 16:49:11');
INSERT INTO `goods_specification` VALUES ('924921771172315136', '型号1', null, '0', '924921771147149312', '2017-10-30 16:51:49');
INSERT INTO `goods_specification` VALUES ('924921771210063872', '型号2', null, '0', '924921771147149312', '2017-10-30 16:51:49');
INSERT INTO `goods_specification` VALUES ('924921792340967424', '规格1', null, '0', '924921792315801600', '2017-10-30 16:51:54');
INSERT INTO `goods_specification` VALUES ('924921792361938944', '规格2', null, '0', '924921792315801600', '2017-10-30 16:51:54');
INSERT INTO `goods_specification` VALUES ('924923504829153280', '型号1', null, '0', '924923504799793152', '2017-10-30 16:58:42');
INSERT INTO `goods_specification` VALUES ('924923504850124800', '型号2', null, '0', '924923504799793152', '2017-10-30 16:58:42');
INSERT INTO `goods_specification` VALUES ('924923588727816192', '红色', null, '0', '924923588706844672', '2017-10-30 16:59:02');
INSERT INTO `goods_specification` VALUES ('924923588748787712', '黄色', null, '0', '924923588706844672', '2017-10-30 16:59:02');
INSERT INTO `goods_specification` VALUES ('924926221135921152', '型号1', null, '0', '924926221110755328', '2017-10-30 17:09:30');
INSERT INTO `goods_specification` VALUES ('924926221156892672', '型号2', null, '0', '924926221110755328', '2017-10-30 17:09:30');
INSERT INTO `goods_specification` VALUES ('924926236700983296', '规格1', null, '0', '924926236675817472', '2017-10-30 17:09:34');
INSERT INTO `goods_specification` VALUES ('924926236721954816', '规格2', null, '0', '924926236675817472', '2017-10-30 17:09:34');
INSERT INTO `goods_specification` VALUES ('924927052975456256', '型号1', null, '0', '924927052954484736', '2017-10-30 17:12:48');
INSERT INTO `goods_specification` VALUES ('924927053000622080', '型号2', null, '0', '924927052954484736', '2017-10-30 17:12:48');
INSERT INTO `goods_specification` VALUES ('924927074005696512', '规格1', null, '0', '924927073984724992', '2017-10-30 17:12:53');
INSERT INTO `goods_specification` VALUES ('924927074026668032', '规格2', null, '0', '924927073984724992', '2017-10-30 17:12:53');
INSERT INTO `goods_specification` VALUES ('924927950439071744', '型号1', null, '0', '924927950413905920', '2017-10-30 17:16:22');
INSERT INTO `goods_specification` VALUES ('924927950464237568', '型号2', null, '0', '924927950413905920', '2017-10-30 17:16:22');
INSERT INTO `goods_specification` VALUES ('924927983368552448', '规格1', null, '0', '924927983360163840', '2017-10-30 17:16:30');
INSERT INTO `goods_specification` VALUES ('924927983376941056', '规格2', null, '0', '924927983360163840', '2017-10-30 17:16:30');
INSERT INTO `goods_specification` VALUES ('924928565718302720', '型号1', null, '0', '924928565697331200', '2017-10-30 17:18:49');
INSERT INTO `goods_specification` VALUES ('924928565739274240', '型号2', null, '0', '924928565697331200', '2017-10-30 17:18:49');
INSERT INTO `goods_specification` VALUES ('924928588052971520', '规格1', null, '0', '924928588032000000', '2017-10-30 17:18:54');
INSERT INTO `goods_specification` VALUES ('924928588078137344', '规格2', null, '0', '924928588032000000', '2017-10-30 17:18:54');
INSERT INTO `goods_specification` VALUES ('924928796589572096', '型号1', null, '0', '924928796572794880', '2017-10-30 17:19:44');
INSERT INTO `goods_specification` VALUES ('924928796602155008', '型号2', null, '0', '924928796572794880', '2017-10-30 17:19:44');
INSERT INTO `goods_specification` VALUES ('924928821952528384', '规格1', null, '0', '924928821931556864', '2017-10-30 17:19:50');
INSERT INTO `goods_specification` VALUES ('924928821977694208', '规格2', null, '0', '924928821931556864', '2017-10-30 17:19:50');
INSERT INTO `goods_specification` VALUES ('924929764202921984', '型号1', null, '0', '924929764177756160', '2017-10-30 17:23:35');
INSERT INTO `goods_specification` VALUES ('924929764223893504', '型号2', null, '0', '924929764177756160', '2017-10-30 17:23:35');
INSERT INTO `goods_specification` VALUES ('924929788454387712', '规格1', null, '0', '924929788433416192', '2017-10-30 17:23:41');
INSERT INTO `goods_specification` VALUES ('924929788479553536', '规格2', null, '0', '924929788433416192', '2017-10-30 17:23:41');
INSERT INTO `goods_specification` VALUES ('924930792935669760', '型号1', null, '0', '924930792910503936', '2017-10-30 17:27:40');
INSERT INTO `goods_specification` VALUES ('924930918605406208', '型号1', null, '0', '924930918580240384', '2017-10-30 17:28:10');
INSERT INTO `goods_specification` VALUES ('924930918626377728', '型号2', null, '0', '924930918580240384', '2017-10-30 17:28:10');
INSERT INTO `goods_specification` VALUES ('924931306788241408', '型号1', null, '0', '924931306767269888', '2017-10-30 17:29:43');
INSERT INTO `goods_specification` VALUES ('924931306809212928', '型号2', null, '0', '924931306767269888', '2017-10-30 17:29:43');
INSERT INTO `goods_specification` VALUES ('924931746716205056', '型号1', null, '0', '924931746695233536', '2017-10-30 17:31:27');
INSERT INTO `goods_specification` VALUES ('924931746741370880', '型号2', null, '0', '924931746695233536', '2017-10-30 17:31:27');
INSERT INTO `goods_specification` VALUES ('924932207192064000', '规格1', null, '0', '924932207162703872', '2017-10-30 17:33:17');
INSERT INTO `goods_specification` VALUES ('924932207221424128', '规格2', null, '0', '924932207162703872', '2017-10-30 17:33:17');
INSERT INTO `goods_specification` VALUES ('924934147162521600', '型号1', null, '0', '924934147137355776', '2017-10-30 17:41:00');
INSERT INTO `goods_specification` VALUES ('924934147183493120', '型号2', null, '0', '924934147137355776', '2017-10-30 17:41:00');
INSERT INTO `goods_specification` VALUES ('924934590966022144', '型号1', null, '0', '924934590940856320', '2017-10-30 17:42:46');
INSERT INTO `goods_specification` VALUES ('924934590986993664', '型号2', null, '0', '924934590940856320', '2017-10-30 17:42:46');
INSERT INTO `goods_specification` VALUES ('924943118732640256', '型号1', null, '0', '924943118707474432', '2017-10-30 18:16:39');
INSERT INTO `goods_specification` VALUES ('924943118753611776', '型号2', null, '0', '924943118707474432', '2017-10-30 18:16:39');
INSERT INTO `goods_specification` VALUES ('924944608683638784', '型号1', null, '0', '924944608658472960', '2017-10-30 18:22:34');
INSERT INTO `goods_specification` VALUES ('924944608704610304', '型号2', null, '0', '924944608658472960', '2017-10-30 18:22:34');
INSERT INTO `goods_specification` VALUES ('924944645614485504', '规格1', null, '0', '924944644813373440', '2017-10-30 18:22:43');
INSERT INTO `goods_specification` VALUES ('924944646407208960', '规格2', null, '0', '924944644813373440', '2017-10-30 18:22:43');
INSERT INTO `goods_specification` VALUES ('924947774565269504', '型号1', null, '0', '924947774544297984', '2017-10-30 18:35:09');
INSERT INTO `goods_specification` VALUES ('924947774573658112', '型号2', null, '0', '924947774544297984', '2017-10-30 18:35:09');
INSERT INTO `goods_specification` VALUES ('924947834577371136', '规格1', null, '0', '924947834556399616', '2017-10-30 18:35:23');
INSERT INTO `goods_specification` VALUES ('924947834602536960', '规格2', null, '0', '924947834556399616', '2017-10-30 18:35:23');
INSERT INTO `goods_specification` VALUES ('924947896367857664', '型号1', null, '0', '924947896346886144', '2017-10-30 18:35:38');
INSERT INTO `goods_specification` VALUES ('924947896393023488', '型号2', null, '0', '924947896346886144', '2017-10-30 18:35:38');
INSERT INTO `goods_specification` VALUES ('924947900922871808', '规格1', null, '0', '924947900901900288', '2017-10-30 18:35:39');
INSERT INTO `goods_specification` VALUES ('924947900948037632', '规格2', null, '0', '924947900901900288', '2017-10-30 18:35:39');
INSERT INTO `goods_specification` VALUES ('924948370097717248', '型号1', null, '0', '924948370076745728', '2017-10-30 18:37:31');
INSERT INTO `goods_specification` VALUES ('924948370106105856', '型号2', null, '0', '924948370076745728', '2017-10-30 18:37:31');
INSERT INTO `goods_specification` VALUES ('924948989160210432', '型号1', null, '0', '924948989135044608', '2017-10-30 18:39:58');
INSERT INTO `goods_specification` VALUES ('924948989181181952', '型号2', null, '0', '924948989135044608', '2017-10-30 18:39:58');
INSERT INTO `goods_specification` VALUES ('924949007397044224', '规格1', null, '0', '924949007376072704', '2017-10-30 18:40:03');
INSERT INTO `goods_specification` VALUES ('924949007418015744', '规格2', null, '0', '924949007376072704', '2017-10-30 18:40:03');
INSERT INTO `goods_specification` VALUES ('924949906903285760', '型号1', null, '0', '924949906878119936', '2017-10-30 18:43:37');
INSERT INTO `goods_specification` VALUES ('924949906924257280', '型号2', null, '0', '924949906878119936', '2017-10-30 18:43:37');
INSERT INTO `goods_specification` VALUES ('924949926188695552', '规格1', null, '0', '924949926163529728', '2017-10-30 18:43:42');
INSERT INTO `goods_specification` VALUES ('924949926209667072', '规格2', null, '0', '924949926163529728', '2017-10-30 18:43:42');
INSERT INTO `goods_specification` VALUES ('924952111261696000', '型号1', null, '0', '924952111236530176', '2017-10-30 18:52:23');
INSERT INTO `goods_specification` VALUES ('924952111282667520', '型号2', null, '0', '924952111236530176', '2017-10-30 18:52:23');
INSERT INTO `goods_specification` VALUES ('924952246515417088', '型号1', null, '0', '924952246494445568', '2017-10-30 18:52:55');
INSERT INTO `goods_specification` VALUES ('924952246536388608', '型号2', null, '0', '924952246494445568', '2017-10-30 18:52:55');
INSERT INTO `goods_specification` VALUES ('924952249044582400', '规格1', null, '0', '924952249015222272', '2017-10-30 18:52:56');
INSERT INTO `goods_specification` VALUES ('924952249065553920', '规格2', null, '0', '924952249015222272', '2017-10-30 18:52:56');
INSERT INTO `goods_specification` VALUES ('924952314828046336', '型号1', null, '0', '924952314802880512', '2017-10-30 18:53:11');
INSERT INTO `goods_specification` VALUES ('924952314849017856', '型号2', null, '0', '924952314802880512', '2017-10-30 18:53:11');
INSERT INTO `goods_specification` VALUES ('924952335191392256', '规格1', null, '0', '924952335166226432', '2017-10-30 18:53:16');
INSERT INTO `goods_specification` VALUES ('924952335203975168', '规格2', null, '0', '924952335166226432', '2017-10-30 18:53:16');
INSERT INTO `goods_specification` VALUES ('924953039268233216', '型号1', null, '0', '924953039243067392', '2017-10-30 18:56:04');
INSERT INTO `goods_specification` VALUES ('924953039289204736', '型号2', null, '0', '924953039243067392', '2017-10-30 18:56:04');
INSERT INTO `goods_specification` VALUES ('924953063721025536', '规格1', null, '0', '924953063700054016', '2017-10-30 18:56:10');
INSERT INTO `goods_specification` VALUES ('924953063746191360', '规格2', null, '0', '924953063700054016', '2017-10-30 18:56:10');
INSERT INTO `goods_specification` VALUES ('924959279134294016', '型号1', null, '0', '924959279109128192', '2017-10-30 19:20:52');
INSERT INTO `goods_specification` VALUES ('924959279159459840', '型号2', null, '0', '924959279109128192', '2017-10-30 19:20:52');
INSERT INTO `goods_specification` VALUES ('924959300701405184', '规格1', null, '0', '924959300680433664', '2017-10-30 19:20:57');
INSERT INTO `goods_specification` VALUES ('924959300722376704', '规格2', null, '0', '924959300680433664', '2017-10-30 19:20:57');
INSERT INTO `goods_specification` VALUES ('924959876239605760', '型号1', null, '0', '924959876218634240', '2017-10-30 19:23:14');
INSERT INTO `goods_specification` VALUES ('924959876260577280', '型号2', null, '0', '924959876218634240', '2017-10-30 19:23:14');
INSERT INTO `goods_specification` VALUES ('924959894052814848', '规格1', null, '0', '924959894023454720', '2017-10-30 19:23:18');
INSERT INTO `goods_specification` VALUES ('924959894073786368', '规格2', null, '0', '924959894023454720', '2017-10-30 19:23:18');
INSERT INTO `goods_specification` VALUES ('925167870519382016', '型号1', null, '0', '925167870443884544', '2017-10-31 09:09:44');
INSERT INTO `goods_specification` VALUES ('925167870582296576', '型号2', null, '0', '925167870443884544', '2017-10-31 09:09:44');
INSERT INTO `goods_specification` VALUES ('925167898667356160', '规格1', null, '0', '925167898604441600', '2017-10-31 09:09:50');
INSERT INTO `goods_specification` VALUES ('925167898734465024', '规格2', null, '0', '925167898604441600', '2017-10-31 09:09:51');
INSERT INTO `goods_specification` VALUES ('925173013692379136', '型号1', null, '0', '925173013608493056', '2017-10-31 09:30:10');
INSERT INTO `goods_specification` VALUES ('925173013763682304', '型号2', null, '0', '925173013608493056', '2017-10-31 09:30:10');
INSERT INTO `goods_specification` VALUES ('925173042708574208', '规格1', null, '0', '925173042654048256', '2017-10-31 09:30:17');
INSERT INTO `goods_specification` VALUES ('925173042750517248', '规格2', null, '0', '925173042654048256', '2017-10-31 09:30:17');
INSERT INTO `goods_specification` VALUES ('925175701366185984', '型号2', null, '0', '925175701324242944', '2017-10-31 09:40:51');
INSERT INTO `goods_specification` VALUES ('925175701399740416', '型号1', null, '0', '925175701324242944', '2017-10-31 09:40:51');
INSERT INTO `goods_specification` VALUES ('925175731917496320', '规格1', null, '0', '925175731875553280', '2017-10-31 09:40:58');
INSERT INTO `goods_specification` VALUES ('925175731988799488', '规格2', null, '0', '925175731875553280', '2017-10-31 09:40:58');
INSERT INTO `goods_specification` VALUES ('925176268721299456', '型号1', null, '0', '925176268700327936', '2017-10-31 09:43:06');
INSERT INTO `goods_specification` VALUES ('925176268733882368', '型号2', null, '0', '925176268700327936', '2017-10-31 09:43:06');
INSERT INTO `goods_specification` VALUES ('925176295774560256', '规格1', null, '0', '925176295736811520', '2017-10-31 09:43:13');
INSERT INTO `goods_specification` VALUES ('925176295812308992', '规格2', null, '0', '925176295736811520', '2017-10-31 09:43:13');
INSERT INTO `goods_specification` VALUES ('925185068882792448', '型号1', null, '0', '925185068849238016', '2017-10-31 10:18:04');
INSERT INTO `goods_specification` VALUES ('925185068916346880', '型号2', null, '0', '925185068849238016', '2017-10-31 10:18:04');

-- ----------------------------
-- Table structure for goods_specification_group
-- ----------------------------
DROP TABLE IF EXISTS `goods_specification_group`;
CREATE TABLE `goods_specification_group` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `group_name` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '规格组组名',
  `goods_base_info_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情id',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `createdtime` datetime DEFAULT NULL,
  `describe` varchar(100) DEFAULT NULL COMMENT '别名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_specification_group
-- ----------------------------
INSERT INTO `goods_specification_group` VALUES ('10000', '色号', '10000', '1', '2017-09-11 10:28:26', '描述');
INSERT INTO `goods_specification_group` VALUES ('10001', '规格', '10000', '3', '2017-09-11 10:28:26', '描述');
INSERT INTO `goods_specification_group` VALUES ('10002', '型号', '10000', '2', '2017-09-11 10:28:26', '描述');
INSERT INTO `goods_specification_group` VALUES ('10003', '规格', '907071578043965441', '1', '2017-09-11 11:13:38', '描述');
INSERT INTO `goods_specification_group` VALUES ('907079256006848512', '尺寸', '907071578043965440', '1', '2017-09-11 10:28:26', '描述');
INSERT INTO `goods_specification_group` VALUES ('907079256006848513', '体积', '907071578043965440', '2', '2017-09-11 11:13:38', '描述');
INSERT INTO `goods_specification_group` VALUES ('917726754425536520', '颜色', '917726754425536514', '1', '2017-09-11 11:13:38', '描述');
INSERT INTO `goods_specification_group` VALUES ('917744556964323336', '色号', '917740783730769928', '1', '2017-09-11 11:13:38', '描述');
INSERT INTO `goods_specification_group` VALUES ('923370667032825856', '', '923369825693192192', null, '2017-10-26 10:08:17', '描述');
INSERT INTO `goods_specification_group` VALUES ('923396215834443776', '雪晴', '923395896228478976', null, '2017-10-26 11:49:48', '描述');
INSERT INTO `goods_specification_group` VALUES ('923427082740989952', '色号', '923426883486384128', null, '2017-10-26 13:52:28', '描述');
INSERT INTO `goods_specification_group` VALUES ('923430202061651968', '色号', '923428818075549696', null, '2017-10-26 14:04:51', '描述');
INSERT INTO `goods_specification_group` VALUES ('923431360700383232', '颜色', '923431280312352768', null, '2017-10-26 14:09:28', '描述');
INSERT INTO `goods_specification_group` VALUES ('923431430959169536', '尺寸', '923431280312352768', null, '2017-10-26 14:09:44', '描述');
INSERT INTO `goods_specification_group` VALUES ('923433681266180096', '规格', '923433293364363264', null, '2017-10-26 14:18:41', '描述');
INSERT INTO `goods_specification_group` VALUES ('923433700958437376', '体积', '923433293364363264', null, '2017-10-26 14:18:46', '描述');
INSERT INTO `goods_specification_group` VALUES ('923433729857191936', '体积', '923433293364363264', null, '2017-10-26 14:18:52', '描述');
INSERT INTO `goods_specification_group` VALUES ('923433934874771456', '色号', '923433897398665216', null, '2017-10-26 14:19:41', '描述');
INSERT INTO `goods_specification_group` VALUES ('923434102709846016', '体积', '923434065875468288', null, '2017-10-26 14:20:21', '描述');
INSERT INTO `goods_specification_group` VALUES ('923434163749552128', '尺寸', '923434065875468288', null, '2017-10-26 14:20:36', '描述');
INSERT INTO `goods_specification_group` VALUES ('923434660631969792', '色号', '923434620953853952', null, '2017-10-26 14:22:34', '描述');
INSERT INTO `goods_specification_group` VALUES ('923435073221459968', '规格', '923434920880144384', null, '2017-10-26 14:24:13', '描述');
INSERT INTO `goods_specification_group` VALUES ('923435437840695296', '色号', '923435387416772608', null, '2017-10-26 14:25:40', '描述');
INSERT INTO `goods_specification_group` VALUES ('923447421457956864', '色号', '923447224464080896', null, '2017-10-26 15:13:17', '描述');
INSERT INTO `goods_specification_group` VALUES ('923449481217736704', '色号', '923449435000700928', null, '2017-10-26 15:21:28', '描述');
INSERT INTO `goods_specification_group` VALUES ('923449508350689280', '规格', '923449435000700928', null, '2017-10-26 15:21:34', '描述');
INSERT INTO `goods_specification_group` VALUES ('923450001634394112', '色号', '923449435000700928', null, '2017-10-26 15:23:32', '描述');
INSERT INTO `goods_specification_group` VALUES ('923453659176534016', '色号', '923452465813159936', null, '2017-10-26 15:38:04', '描述描述');
INSERT INTO `goods_specification_group` VALUES ('923461212660858880', '色号', '923460738633203712', null, '2017-10-26 16:08:05', '描述');
INSERT INTO `goods_specification_group` VALUES ('923462629609996288', '颜色', '923460738633203712', null, '2017-10-26 16:13:43', '描述');
INSERT INTO `goods_specification_group` VALUES ('923462678423306240', '色号', '923460738633203712', null, '2017-10-26 16:13:54', '描述');
INSERT INTO `goods_specification_group` VALUES ('923465482156146688', '色号', '923465171366608896', null, '2017-10-26 16:25:03', '描述');
INSERT INTO `goods_specification_group` VALUES ('923476622378565632', '色号', '923475996168978432', null, '2017-10-26 17:09:19', '描述');
INSERT INTO `goods_specification_group` VALUES ('923476758915743744', '颜色', '923475996168978432', null, '2017-10-26 17:09:51', '描述');
INSERT INTO `goods_specification_group` VALUES ('923490579805929472', '色号', '923490395604680704', null, '2017-10-26 18:04:47', null);
INSERT INTO `goods_specification_group` VALUES ('923490582309928960', '规格', '923490395604680704', null, '2017-10-26 18:04:47', '描述');
INSERT INTO `goods_specification_group` VALUES ('923490595597484032', '规格', '923490395604680704', null, '2017-10-26 18:04:50', '描述');
INSERT INTO `goods_specification_group` VALUES ('923491793905942528', '色号', '923491291675787264', null, '2017-10-26 18:09:36', null);
INSERT INTO `goods_specification_group` VALUES ('923492191882477568', '色号', '923491291675787264', null, '2017-10-26 18:11:11', null);
INSERT INTO `goods_specification_group` VALUES ('923492224891650048', '规格', '923491291675787264', null, '2017-10-26 18:11:19', null);
INSERT INTO `goods_specification_group` VALUES ('923492391934001152', '色号', '923491291675787264', null, '2017-10-26 18:11:59', null);
INSERT INTO `goods_specification_group` VALUES ('923492407289348096', '色号', '923491291675787264', null, '2017-10-26 18:12:02', null);
INSERT INTO `goods_specification_group` VALUES ('923492446023745536', '色号', '923491291675787264', null, '2017-10-26 18:12:11', null);
INSERT INTO `goods_specification_group` VALUES ('923493880467324928', '规格', '923491291675787264', null, '2017-10-26 18:17:53', null);
INSERT INTO `goods_specification_group` VALUES ('923501881005735936', '规格', '923501792136822784', null, '2017-10-26 18:49:41', null);
INSERT INTO `goods_specification_group` VALUES ('923501897111863296', '色号', '923501792136822784', null, '2017-10-26 18:49:45', null);
INSERT INTO `goods_specification_group` VALUES ('923501916032368640', '规格', '923501792136822784', null, '2017-10-26 18:49:49', null);
INSERT INTO `goods_specification_group` VALUES ('923502564899586048', '色号', '923502520456740864', null, '2017-10-26 18:52:24', null);
INSERT INTO `goods_specification_group` VALUES ('923502575154659328', '型号', '923502520456740864', null, '2017-10-26 18:52:26', null);
INSERT INTO `goods_specification_group` VALUES ('923502691001335808', '色号', '923502646030008320', null, '2017-10-26 18:52:54', null);
INSERT INTO `goods_specification_group` VALUES ('923502693719244800', '规格', '923502646030008320', null, '2017-10-26 18:52:55', null);
INSERT INTO `goods_specification_group` VALUES ('923502810761297920', '规格', '923502646030008320', null, '2017-10-26 18:53:23', null);
INSERT INTO `goods_specification_group` VALUES ('923503039665438720', '尺寸', '923502963979223040', null, '2017-10-26 18:54:17', null);
INSERT INTO `goods_specification_group` VALUES ('923503048666415104', '色号', '923502963979223040', null, '2017-10-26 18:54:19', null);
INSERT INTO `goods_specification_group` VALUES ('923503794577244160', '色号', '923503756216139776', null, '2017-10-26 18:57:17', null);
INSERT INTO `goods_specification_group` VALUES ('923503825636065280', '规格', '923503756216139776', null, '2017-10-26 18:57:25', null);
INSERT INTO `goods_specification_group` VALUES ('923504188808265728', '色号', '923504143358787584', null, '2017-10-26 18:58:51', null);
INSERT INTO `goods_specification_group` VALUES ('923504191219990528', '规格', '923504143358787584', null, '2017-10-26 18:58:52', null);
INSERT INTO `goods_specification_group` VALUES ('923505078428532736', '颜色', '923505013534261248', null, '2017-10-26 19:02:23', null);
INSERT INTO `goods_specification_group` VALUES ('923505258074767360', '色号', '923505190429032448', null, '2017-10-26 19:03:06', null);
INSERT INTO `goods_specification_group` VALUES ('923505302370811904', '规格', '923505190429032448', null, '2017-10-26 19:03:17', null);
INSERT INTO `goods_specification_group` VALUES ('923507401410248704', '色号', '923507367360888832', null, '2017-10-26 19:11:37', null);
INSERT INTO `goods_specification_group` VALUES ('923507422868307968', '尺寸', '923507367360888832', null, '2017-10-26 19:11:42', null);
INSERT INTO `goods_specification_group` VALUES ('923508075401347072', '规格', '923507999916457984', null, '2017-10-26 19:14:18', null);
INSERT INTO `goods_specification_group` VALUES ('923508634552401920', '规格', '923508280653807616', null, '2017-10-26 19:16:31', null);
INSERT INTO `goods_specification_group` VALUES ('923508901859590144', '尺寸', '923508280653807616', null, '2017-10-26 19:17:35', null);
INSERT INTO `goods_specification_group` VALUES ('923509531382677504', '规格', '923509053932470272', null, '2017-10-26 19:20:05', null);
INSERT INTO `goods_specification_group` VALUES ('923509539662233600', '色号', '923509053932470272', null, '2017-10-26 19:20:07', null);
INSERT INTO `goods_specification_group` VALUES ('923511154448302080', '色号', '923511055806660608', null, '2017-10-26 19:26:32', null);
INSERT INTO `goods_specification_group` VALUES ('923511157036187648', '规格', '923511055806660608', null, '2017-10-26 19:26:33', null);
INSERT INTO `goods_specification_group` VALUES ('924806188917346304', '颜色', '924805665141051392', null, '2017-10-30 09:12:32', null);
INSERT INTO `goods_specification_group` VALUES ('924815835095121920', '灰灰型号', '924815661371244544', null, '2017-10-30 09:50:52', null);
INSERT INTO `goods_specification_group` VALUES ('924815878464225280', '灰灰规格组', '924815661371244544', null, '2017-10-30 09:51:02', null);
INSERT INTO `goods_specification_group` VALUES ('924817518762745856', '灰灰型号', '924817385996247040', null, '2017-10-30 09:57:33', null);
INSERT INTO `goods_specification_group` VALUES ('924817551201492992', '灰灰规格组', '924817385996247040', null, '2017-10-30 09:57:41', null);
INSERT INTO `goods_specification_group` VALUES ('924819808120225792', '色号', '924817647562932224', null, '2017-10-30 10:06:39', null);
INSERT INTO `goods_specification_group` VALUES ('924819812473913344', '颜色', '924817647562932224', null, '2017-10-30 10:06:40', null);
INSERT INTO `goods_specification_group` VALUES ('924821436739108864', '颜色', '924821403293728768', null, '2017-10-30 10:13:08', null);
INSERT INTO `goods_specification_group` VALUES ('924821471761547264', '色号', '924821403293728768', null, '2017-10-30 10:13:16', null);
INSERT INTO `goods_specification_group` VALUES ('924821911777591296', '颜色', '924821876436385792', null, '2017-10-30 10:15:01', null);
INSERT INTO `goods_specification_group` VALUES ('924822005574811648', '色号', '924821876436385792', null, '2017-10-30 10:15:23', null);
INSERT INTO `goods_specification_group` VALUES ('924823228386394112', '色号', '924823151689351168', null, '2017-10-30 10:20:15', null);
INSERT INTO `goods_specification_group` VALUES ('924823643979005952', '色号', '924823579126677504', null, '2017-10-30 10:21:54', null);
INSERT INTO `goods_specification_group` VALUES ('924823727277883392', '灰灰型号', '924823694058995712', null, '2017-10-30 10:22:14', null);
INSERT INTO `goods_specification_group` VALUES ('924823948007325696', '灰灰型号', '924823921331552256', null, '2017-10-30 10:23:06', null);
INSERT INTO `goods_specification_group` VALUES ('924824090231980032', '规格', '924823921331552256', null, '2017-10-30 10:23:40', null);
INSERT INTO `goods_specification_group` VALUES ('924824333547749376', '规格', '924823921331552256', null, '2017-10-30 10:24:38', null);
INSERT INTO `goods_specification_group` VALUES ('924824441777569792', '灰灰型号', '924824420852187136', null, '2017-10-30 10:25:04', null);
INSERT INTO `goods_specification_group` VALUES ('924824467757088768', '颜色', '924824420852187136', null, '2017-10-30 10:25:10', null);
INSERT INTO `goods_specification_group` VALUES ('924825082600112128', '颜色', '924824420852187136', null, '2017-10-30 10:27:37', null);
INSERT INTO `goods_specification_group` VALUES ('924829434307952640', '灰灰型号', '924829343786483712', null, '2017-10-30 10:44:54', null);
INSERT INTO `goods_specification_group` VALUES ('924835016010661888', '灰灰型号', '924834908816834560', null, '2017-10-30 11:07:05', null);
INSERT INTO `goods_specification_group` VALUES ('924835045609865216', '灰灰规格组', '924834908816834560', null, '2017-10-30 11:07:12', null);
INSERT INTO `goods_specification_group` VALUES ('924835976636309504', '灰灰型号', '924835752945688576', null, '2017-10-30 11:10:54', null);
INSERT INTO `goods_specification_group` VALUES ('924836001110073344', '灰灰规格组', '924835752945688576', null, '2017-10-30 11:11:00', null);
INSERT INTO `goods_specification_group` VALUES ('924837743505195008', '灰灰规格组', '924837638689538048', null, '2017-10-30 11:17:55', null);
INSERT INTO `goods_specification_group` VALUES ('924838568495431680', '灰灰型号', '924838340014915584', null, '2017-10-30 11:21:12', null);
INSERT INTO `goods_specification_group` VALUES ('924838571230117888', '灰灰规格组', '924838340014915584', null, '2017-10-30 11:21:13', null);
INSERT INTO `goods_specification_group` VALUES ('924839651032711168', '灰灰型号', '924839599702818816', null, '2017-10-30 11:25:30', null);
INSERT INTO `goods_specification_group` VALUES ('924839652815290368', '灰灰规格组', '924839599702818816', null, '2017-10-30 11:25:31', null);
INSERT INTO `goods_specification_group` VALUES ('924840363221336064', '灰灰型号', '924840317847355392', null, '2017-10-30 11:28:20', null);
INSERT INTO `goods_specification_group` VALUES ('924840387804151808', '灰灰规格组', '924840317847355392', null, '2017-10-30 11:28:26', null);
INSERT INTO `goods_specification_group` VALUES ('924841106577833984', '灰灰型号', '924840317847355392', null, '2017-10-30 11:31:17', null);
INSERT INTO `goods_specification_group` VALUES ('924842662429736960', '灰灰型号', '924842613314437120', null, '2017-10-30 11:37:28', null);
INSERT INTO `goods_specification_group` VALUES ('924842682449149952', '灰灰规格组', '924842613314437120', null, '2017-10-30 11:37:33', null);
INSERT INTO `goods_specification_group` VALUES ('924844771678109696', '灰灰型号', '924844722688638976', null, '2017-10-30 11:45:51', null);
INSERT INTO `goods_specification_group` VALUES ('924844796231565312', '灰灰规格组', '924844722688638976', null, '2017-10-30 11:45:57', null);
INSERT INTO `goods_specification_group` VALUES ('924845032488321024', '灰灰型号', '924844983591124992', null, '2017-10-30 11:46:53', null);
INSERT INTO `goods_specification_group` VALUES ('924845053795385344', '灰灰规格组', '924844983591124992', null, '2017-10-30 11:46:58', null);
INSERT INTO `goods_specification_group` VALUES ('924845385548054528', '灰灰型号', '924845334587260928', null, '2017-10-30 11:48:17', null);
INSERT INTO `goods_specification_group` VALUES ('924845396855898112', '灰灰型号', '924845334587260928', null, '2017-10-30 11:48:20', null);
INSERT INTO `goods_specification_group` VALUES ('924845429198176256', '灰灰规格组', '924845334587260928', null, '2017-10-30 11:48:28', null);
INSERT INTO `goods_specification_group` VALUES ('924846553049350144', '灰灰型号', '924846525274669056', null, '2017-10-30 11:52:56', null);
INSERT INTO `goods_specification_group` VALUES ('924846578064179200', '灰灰规格组', '924846525274669056', null, '2017-10-30 11:53:02', null);
INSERT INTO `goods_specification_group` VALUES ('924847093359591424', '灰灰型号', '924847063919771648', null, '2017-10-30 11:55:05', null);
INSERT INTO `goods_specification_group` VALUES ('924847117321650176', '灰灰规格组', '924847063919771648', null, '2017-10-30 11:55:10', null);
INSERT INTO `goods_specification_group` VALUES ('924847991762731008', '灰灰型号', '924847965674160128', null, '2017-10-30 11:58:39', null);
INSERT INTO `goods_specification_group` VALUES ('924848009454305280', '灰灰规格组', '924847965674160128', null, '2017-10-30 11:58:43', null);
INSERT INTO `goods_specification_group` VALUES ('924848761698533376', '灰灰规格组', '924848709458477056', null, '2017-10-30 12:01:42', null);
INSERT INTO `goods_specification_group` VALUES ('924848770603040768', '灰灰规格组', '924848709458477056', null, '2017-10-30 12:01:44', null);
INSERT INTO `goods_specification_group` VALUES ('924848813766623232', '灰灰规格组', '924848709458477056', null, '2017-10-30 12:01:55', null);
INSERT INTO `goods_specification_group` VALUES ('924848822213951488', '灰灰型号', '924848709458477056', null, '2017-10-30 12:01:57', null);
INSERT INTO `goods_specification_group` VALUES ('924878090193092608', '灰灰型号', '924878066369445888', null, '2017-10-30 13:58:15', null);
INSERT INTO `goods_specification_group` VALUES ('924878107519762432', '灰灰规格组', '924878066369445888', null, '2017-10-30 13:58:19', null);
INSERT INTO `goods_specification_group` VALUES ('924878212557717504', '灰灰型号', '924878194778062848', null, '2017-10-30 13:58:44', null);
INSERT INTO `goods_specification_group` VALUES ('924878234699448320', '灰灰规格组', '924878194778062848', null, '2017-10-30 13:58:49', null);
INSERT INTO `goods_specification_group` VALUES ('924879188987494400', '灰灰型号', '924879148504072192', null, '2017-10-30 14:02:37', null);
INSERT INTO `goods_specification_group` VALUES ('924879206997835776', '灰灰规格组', '924879148504072192', null, '2017-10-30 14:02:41', null);
INSERT INTO `goods_specification_group` VALUES ('924880279066132480', '灰灰型号', '924880259726196736', null, '2017-10-30 14:06:57', null);
INSERT INTO `goods_specification_group` VALUES ('924880298787749888', '灰灰规格组', '924880259726196736', null, '2017-10-30 14:07:01', null);
INSERT INTO `goods_specification_group` VALUES ('924881082338263040', '灰灰型号', '924880587741741056', null, '2017-10-30 14:10:08', null);
INSERT INTO `goods_specification_group` VALUES ('924881117713022976', '灰灰规格组', '924880587741741056', null, '2017-10-30 14:10:17', null);
INSERT INTO `goods_specification_group` VALUES ('924881723236302848', '灰灰型号', '924881670950109184', null, '2017-10-30 14:12:41', null);
INSERT INTO `goods_specification_group` VALUES ('924881763023470592', '灰灰规格组', '924881670950109184', null, '2017-10-30 14:12:50', null);
INSERT INTO `goods_specification_group` VALUES ('924882480501112832', '灰灰型号', '924882452202143744', null, '2017-10-30 14:15:41', null);
INSERT INTO `goods_specification_group` VALUES ('924882497387380736', '灰灰规格组', '924882452202143744', null, '2017-10-30 14:15:46', null);
INSERT INTO `goods_specification_group` VALUES ('924882876762177536', '灰灰型号', '924882855597719552', null, '2017-10-30 14:17:16', null);
INSERT INTO `goods_specification_group` VALUES ('924882910576656384', '灰灰规格组', '924882855597719552', null, '2017-10-30 14:17:24', null);
INSERT INTO `goods_specification_group` VALUES ('924884063485968384', '灰灰型号', '924884026194411520', null, '2017-10-30 14:21:59', null);
INSERT INTO `goods_specification_group` VALUES ('924884081353703424', '灰灰规格组', '924884026194411520', null, '2017-10-30 14:22:03', null);
INSERT INTO `goods_specification_group` VALUES ('924885032957394944', '灰灰型号', '924884988929785856', null, '2017-10-30 14:25:50', null);
INSERT INTO `goods_specification_group` VALUES ('924885058756558848', '灰灰规格组', '924884988929785856', null, '2017-10-30 14:25:56', null);
INSERT INTO `goods_specification_group` VALUES ('924885352076820480', '灰灰型号', '924885312218349568', null, '2017-10-30 14:27:06', null);
INSERT INTO `goods_specification_group` VALUES ('924885376877740032', '灰灰规格组', '924885312218349568', null, '2017-10-30 14:27:12', null);
INSERT INTO `goods_specification_group` VALUES ('924885586576162816', '灰灰型号', '924885498952957952', null, '2017-10-30 14:28:02', null);
INSERT INTO `goods_specification_group` VALUES ('924885605253398528', '灰灰规格组', '924885498952957952', null, '2017-10-30 14:28:06', null);
INSERT INTO `goods_specification_group` VALUES ('924888045063258112', '灰灰型号', '924888009441034240', null, '2017-10-30 14:37:48', null);
INSERT INTO `goods_specification_group` VALUES ('924888067767025664', '灰灰规格组', '924888009441034240', null, '2017-10-30 14:37:54', null);
INSERT INTO `goods_specification_group` VALUES ('924888820699119616', '灰灰型号', '924888793067044864', null, '2017-10-30 14:40:53', null);
INSERT INTO `goods_specification_group` VALUES ('924888840815001600', '灰灰规格组', '924888793067044864', null, '2017-10-30 14:40:58', null);
INSERT INTO `goods_specification_group` VALUES ('924889276963897344', '灰灰型号', '924889254448873472', null, '2017-10-30 14:42:42', null);
INSERT INTO `goods_specification_group` VALUES ('924889299172737024', '灰灰规格组', '924889254448873472', null, '2017-10-30 14:42:47', null);
INSERT INTO `goods_specification_group` VALUES ('924891423721930752', '灰灰型号', '924891400913305600', null, '2017-10-30 14:51:14', null);
INSERT INTO `goods_specification_group` VALUES ('924891440629170176', '灰灰规格组', '924891400913305600', null, '2017-10-30 14:51:18', null);
INSERT INTO `goods_specification_group` VALUES ('924892190184849408', '灰灰型号', '924892056428494848', null, '2017-10-30 14:54:16', null);
INSERT INTO `goods_specification_group` VALUES ('924892216738988032', '灰灰规格组', '924892056428494848', null, '2017-10-30 14:54:23', null);
INSERT INTO `goods_specification_group` VALUES ('924892219763081216', '灰灰型号', '924892056428494848', null, '2017-10-30 14:54:24', null);
INSERT INTO `goods_specification_group` VALUES ('924912407812259840', '灰灰型号', '924912360206909440', null, '2017-10-30 16:14:37', null);
INSERT INTO `goods_specification_group` VALUES ('924912483754328064', '灰灰型号', '924912459855183872', null, '2017-10-30 16:14:55', null);
INSERT INTO `goods_specification_group` VALUES ('924912502553198592', '灰灰规格组', '924912459855183872', null, '2017-10-30 16:14:59', null);
INSERT INTO `goods_specification_group` VALUES ('924916813328826368', '灰灰型号', '924915602689114112', null, '2017-10-30 16:32:07', null);
INSERT INTO `goods_specification_group` VALUES ('924916834837217280', '灰灰规格组', '924915602689114112', null, '2017-10-30 16:32:12', null);
INSERT INTO `goods_specification_group` VALUES ('924919637701836800', '灰灰型号', '924919364862361600', null, '2017-10-30 16:43:20', null);
INSERT INTO `goods_specification_group` VALUES ('924919664574742528', '灰灰规格组', '924919364862361600', null, '2017-10-30 16:43:27', null);
INSERT INTO `goods_specification_group` VALUES ('924921070488666112', '灰灰型号', '924921042063867904', null, '2017-10-30 16:49:02', null);
INSERT INTO `goods_specification_group` VALUES ('924921106400296960', '灰灰规格组', '924921042063867904', null, '2017-10-30 16:49:11', null);
INSERT INTO `goods_specification_group` VALUES ('924921771147149312', '灰灰型号', '924921751828185088', null, '2017-10-30 16:51:49', null);
INSERT INTO `goods_specification_group` VALUES ('924921792315801600', '灰灰规格组', '924921751828185088', null, '2017-10-30 16:51:54', null);
INSERT INTO `goods_specification_group` VALUES ('924923504799793152', '灰灰型号', '924923451532132352', null, '2017-10-30 16:58:42', null);
INSERT INTO `goods_specification_group` VALUES ('924923588706844672', '颜色', '924923451532132352', null, '2017-10-30 16:59:02', null);
INSERT INTO `goods_specification_group` VALUES ('924926221110755328', '灰灰型号', '924926186130259968', null, '2017-10-30 17:09:30', null);
INSERT INTO `goods_specification_group` VALUES ('924926236675817472', '灰灰规格组', '924926186130259968', null, '2017-10-30 17:09:34', null);
INSERT INTO `goods_specification_group` VALUES ('924927052954484736', '灰灰型号', '924927023095234560', null, '2017-10-30 17:12:48', null);
INSERT INTO `goods_specification_group` VALUES ('924927073984724992', '灰灰规格组', '924927023095234560', null, '2017-10-30 17:12:53', null);
INSERT INTO `goods_specification_group` VALUES ('924927950413905920', '灰灰型号', '924927575069835264', null, '2017-10-30 17:16:22', null);
INSERT INTO `goods_specification_group` VALUES ('924927983360163840', '灰灰规格组', '924927575069835264', null, '2017-10-30 17:16:30', null);
INSERT INTO `goods_specification_group` VALUES ('924928565697331200', '灰灰型号', '924928541097738240', null, '2017-10-30 17:18:49', null);
INSERT INTO `goods_specification_group` VALUES ('924928588032000000', '灰灰规格组', '924928541097738240', null, '2017-10-30 17:18:54', null);
INSERT INTO `goods_specification_group` VALUES ('924928796572794880', '灰灰型号', '924928772329717760', null, '2017-10-30 17:19:44', null);
INSERT INTO `goods_specification_group` VALUES ('924928821931556864', '灰灰规格组', '924928772329717760', null, '2017-10-30 17:19:50', null);
INSERT INTO `goods_specification_group` VALUES ('924929764177756160', '灰灰型号', '924929739414585344', null, '2017-10-30 17:23:35', null);
INSERT INTO `goods_specification_group` VALUES ('924929788433416192', '灰灰规格组', '924929739414585344', null, '2017-10-30 17:23:41', null);
INSERT INTO `goods_specification_group` VALUES ('924930792910503936', '灰灰型号', '924930763441324032', null, '2017-10-30 17:27:40', null);
INSERT INTO `goods_specification_group` VALUES ('924930918580240384', '灰灰型号', '924930763441324032', null, '2017-10-30 17:28:10', null);
INSERT INTO `goods_specification_group` VALUES ('924931306767269888', '灰灰型号', '924931277881098240', null, '2017-10-30 17:29:43', null);
INSERT INTO `goods_specification_group` VALUES ('924931746695233536', '灰灰型号', '924931698313936896', null, '2017-10-30 17:31:27', null);
INSERT INTO `goods_specification_group` VALUES ('924932207162703872', '灰灰规格组', '924932161604173824', null, '2017-10-30 17:33:17', null);
INSERT INTO `goods_specification_group` VALUES ('924934147137355776', '灰灰型号', '924934117483626496', null, '2017-10-30 17:41:00', null);
INSERT INTO `goods_specification_group` VALUES ('924934590940856320', '灰灰型号', '924934483512147968', null, '2017-10-30 17:42:46', null);
INSERT INTO `goods_specification_group` VALUES ('924943118707474432', '灰灰型号', '924941993195356160', null, '2017-10-30 18:16:39', null);
INSERT INTO `goods_specification_group` VALUES ('924944608658472960', '灰灰型号', '924944582662176768', null, '2017-10-30 18:22:34', null);
INSERT INTO `goods_specification_group` VALUES ('924944644813373440', '灰灰规格组', '924944582662176768', null, '2017-10-30 18:22:43', null);
INSERT INTO `goods_specification_group` VALUES ('924947774544297984', '灰灰型号', '924947611226488832', null, '2017-10-30 18:35:09', null);
INSERT INTO `goods_specification_group` VALUES ('924947834556399616', '灰灰型号', '924947611226488832', null, '2017-10-30 18:35:23', null);
INSERT INTO `goods_specification_group` VALUES ('924947896346886144', '灰灰型号', '924947845998460928', null, '2017-10-30 18:35:38', null);
INSERT INTO `goods_specification_group` VALUES ('924947900901900288', '灰灰规格组', '924947845998460928', null, '2017-10-30 18:35:39', null);
INSERT INTO `goods_specification_group` VALUES ('924948370076745728', '灰灰型号', '924948335746367488', null, '2017-10-30 18:37:31', null);
INSERT INTO `goods_specification_group` VALUES ('924948989135044608', '灰灰型号', '924948965483364352', null, '2017-10-30 18:39:58', null);
INSERT INTO `goods_specification_group` VALUES ('924949007376072704', '灰灰规格组', '924948965483364352', null, '2017-10-30 18:40:03', null);
INSERT INTO `goods_specification_group` VALUES ('924949906878119936', '灰灰型号', '924949879644504064', null, '2017-10-30 18:43:37', null);
INSERT INTO `goods_specification_group` VALUES ('924949926163529728', '灰灰规格组', '924949879644504064', null, '2017-10-30 18:43:42', null);
INSERT INTO `goods_specification_group` VALUES ('924952111236530176', '灰灰型号', '924952066231648257', null, '2017-10-30 18:52:23', null);
INSERT INTO `goods_specification_group` VALUES ('924952246494445568', '灰灰型号', '924952066231648257', null, '2017-10-30 18:52:55', null);
INSERT INTO `goods_specification_group` VALUES ('924952249015222272', '灰灰规格组', '924952066231648257', null, '2017-10-30 18:52:56', null);
INSERT INTO `goods_specification_group` VALUES ('924952314802880512', '灰灰型号', '924952287506350080', null, '2017-10-30 18:53:11', null);
INSERT INTO `goods_specification_group` VALUES ('924952335166226432', '灰灰规格组', '924952287506350080', null, '2017-10-30 18:53:16', null);
INSERT INTO `goods_specification_group` VALUES ('924953039243067392', '灰灰型号', '924952944439214080', null, '2017-10-30 18:56:04', null);
INSERT INTO `goods_specification_group` VALUES ('924953063700054016', '灰灰规格组', '924952944439214080', null, '2017-10-30 18:56:10', null);
INSERT INTO `goods_specification_group` VALUES ('924959279109128192', '灰灰型号', '924959261375610880', null, '2017-10-30 19:20:52', null);
INSERT INTO `goods_specification_group` VALUES ('924959300680433664', '灰灰规格组', '924959261375610880', null, '2017-10-30 19:20:57', null);
INSERT INTO `goods_specification_group` VALUES ('924959876218634240', '灰灰型号', '924959859579830272', null, '2017-10-30 19:23:14', null);
INSERT INTO `goods_specification_group` VALUES ('924959894023454720', '灰灰规格组', '924959859579830272', null, '2017-10-30 19:23:18', null);
INSERT INTO `goods_specification_group` VALUES ('925167870443884544', '灰灰型号', '925167687635144704', null, '2017-10-31 09:09:44', null);
INSERT INTO `goods_specification_group` VALUES ('925167898604441600', '灰灰规格组', '925167687635144704', null, '2017-10-31 09:09:50', null);
INSERT INTO `goods_specification_group` VALUES ('925173013608493056', '灰灰型号', '925172915084292096', null, '2017-10-31 09:30:10', null);
INSERT INTO `goods_specification_group` VALUES ('925173042654048256', '灰灰规格组', '925172915084292096', null, '2017-10-31 09:30:17', null);
INSERT INTO `goods_specification_group` VALUES ('925175701324242944', '灰灰型号', '925175586178015233', null, '2017-10-31 09:40:51', null);
INSERT INTO `goods_specification_group` VALUES ('925175731875553280', '灰灰规格组', '925175586178015233', null, '2017-10-31 09:40:58', null);
INSERT INTO `goods_specification_group` VALUES ('925176268700327936', '灰灰型号', '925176119110475776', null, '2017-10-31 09:43:06', null);
INSERT INTO `goods_specification_group` VALUES ('925176295736811520', '灰灰规格组', '925176119110475776', null, '2017-10-31 09:43:13', null);
INSERT INTO `goods_specification_group` VALUES ('925185068849238016', '灰灰型号', '925184986255003648', null, '2017-10-31 10:18:04', null);

-- ----------------------------
-- Table structure for goods_tag
-- ----------------------------
DROP TABLE IF EXISTS `goods_tag`;
CREATE TABLE `goods_tag` (
  `id` varchar(25) NOT NULL,
  `goods_base_info_id` varchar(25) DEFAULT NULL COMMENT '商品id',
  `tag_name` varchar(25) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_tag
-- ----------------------------
INSERT INTO `goods_tag` VALUES ('923800021074812928', '111', 'qwe', '0', '2017-10-27 14:34:23');
INSERT INTO `goods_tag` VALUES ('923821183185473536', '923821163942006784', '发的说法', '0', '2017-10-27 15:58:28');
INSERT INTO `goods_tag` VALUES ('923821361787326464', '923821347723825152', '发', '0', '2017-10-27 15:59:11');
INSERT INTO `goods_tag` VALUES ('924150969225285632', '924131238254579712', 'uio', '0', '2017-10-28 13:48:56');
INSERT INTO `goods_tag` VALUES ('924830525598744576', '924830281083404288', 'xxxx', '0', '2017-10-30 10:49:14');
INSERT INTO `goods_tag` VALUES ('924830566023446528', '924830281083404288', '123', '0', '2017-10-30 10:49:24');
INSERT INTO `goods_tag` VALUES ('925176649392136192', '925176119110475776', '11', '0', '2017-10-31 09:44:37');
INSERT INTO `goods_tag` VALUES ('925255908814462976', '925255868100354048', 'sdsd', '0', '2017-10-31 14:59:34');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户',
  `version` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户端版本',
  `equipment` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登陆设备',
  `client_os` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '端系统',
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登陆时的session',
  `login_type` int(11) DEFAULT NULL COMMENT '登录方式(1手机登录，2微信登录，3QQ登录，4新浪微博)',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登陆IP',
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登陆地址',
  `ctime` datetime DEFAULT NULL,
  `out_time` bigint(15) DEFAULT NULL COMMENT '登出时间',
  `out_type` tinyint(2) DEFAULT NULL COMMENT '退出方式(1：用户退出，2：被挤下线)',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户登陆日志';

-- ----------------------------
-- Records of login_log
-- ----------------------------

-- ----------------------------
-- Table structure for open_trade_info
-- ----------------------------
DROP TABLE IF EXISTS `open_trade_info`;
CREATE TABLE `open_trade_info` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trade_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '订单id',
  `open_trade_no` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '开放平台交易号',
  `status` int(11) DEFAULT NULL COMMENT '支付状态(0:未支付,1:已支付)',
  `paytime` datetime DEFAULT NULL COMMENT '付款时间',
  `pay_type` int(11) DEFAULT NULL COMMENT '付款方式(比如,0:支付宝;1:微信)',
  `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createdtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_open_trade_info_tradeId` (`trade_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方交易流水';

-- ----------------------------
-- Records of open_trade_info
-- ----------------------------
INSERT INTO `open_trade_info` VALUES ('914463352514682880', 'ZF201710012013456913753', null, '0', null, '0', '0.01', '2017-10-01 20:13:48');
INSERT INTO `open_trade_info` VALUES ('914590718036107264', 'ZF201710020017588981058', '2017100221001004980243332333', '1', '2017-10-02 00:21:30', '0', '0.01', '2017-10-02 04:39:54');
INSERT INTO `open_trade_info` VALUES ('914790088278884352', 'ZF201710012010095777568', '2017100121001004890213835728', '1', '2017-10-01 20:10:36', '0', '0.04', '2017-10-02 17:52:08');
INSERT INTO `open_trade_info` VALUES ('914811727989305344', 'ZF201710021754117696103', '2017100221001004980244829680', '1', '2017-10-02 18:00:40', '0', '0.01', '2017-10-02 19:18:07');
INSERT INTO `open_trade_info` VALUES ('915042814346690560', 'ZF201710011251090769876', '2017100121001004400524964386', '1', '2017-10-01 12:56:51', '0', '0.01', '2017-10-03 10:36:22');
INSERT INTO `open_trade_info` VALUES ('921326472931700736', 'ZF201710201814384921942', '2017102021001004980283616201', '1', '2017-10-20 18:15:33', '0', '0.02', '2017-10-20 18:45:23');
INSERT INTO `open_trade_info` VALUES ('922310271026933760', 'ZF201710231123591027231', '2017102321001004890252064568', '1', '2017-10-23 11:24:12', '0', '0.01', '2017-10-23 11:54:39');

-- ----------------------------
-- Table structure for platform
-- ----------------------------
DROP TABLE IF EXISTS `platform`;
CREATE TABLE `platform` (
  `id` varchar(25) NOT NULL,
  `platform` int(11) DEFAULT NULL COMMENT '第三方平台：1微信，2QQ，3SINA(新浪)',
  `open_id` varchar(64) DEFAULT NULL COMMENT '第三方登录返回的唯一标识',
  `uid` varchar(64) DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL COMMENT '所属平台用户',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方登录平台';

-- ----------------------------
-- Records of platform
-- ----------------------------

-- ----------------------------
-- Table structure for points_flows
-- ----------------------------
DROP TABLE IF EXISTS `points_flows`;
CREATE TABLE `points_flows` (
  `id` varchar(25) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '所属用户',
  `order_id` bigint(20) DEFAULT NULL COMMENT '单号',
  `amount` decimal(18,2) DEFAULT NULL COMMENT '金额',
  `status` tinyint(2) DEFAULT NULL COMMENT '0：已入账，1：冻结中',
  `source_type` tinyint(2) DEFAULT NULL COMMENT '类型(1:注册,2:分享,自定义)',
  `bill_type` tinyint(2) DEFAULT NULL COMMENT '收支类型(1收入，2支出)',
  `createdtime` datetime DEFAULT NULL COMMENT '生成时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Records of points_flows
-- ----------------------------

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类名',
  `parent_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '父级id',
  `createdtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_product_category_parentId` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('10000', '绘画', null, '2017-09-20 16:54:05', '0');
INSERT INTO `product_category` VALUES ('1000010004', '画笔', '10000', '2017-09-11 10:28:26', '0');
INSERT INTO `product_category` VALUES ('100001000410004', '彩色铅笔', '1000010004', '2017-09-20 11:14:39', '0');
INSERT INTO `product_category` VALUES ('10001', '铅笔', null, '2017-09-20 16:54:07', '0');
INSERT INTO `product_category` VALUES ('1000110000', '绿色无毒 ', '10001', '2017-09-11 10:28:26', '0');
INSERT INTO `product_category` VALUES ('100011000010000', '橡皮泥', '1000110000', '2017-09-20 11:14:42', '0');
INSERT INTO `product_category` VALUES ('1000110001', 'test4', '10001', '2017-09-11 10:28:26', '0');
INSERT INTO `product_category` VALUES ('1000110002', '黄色无毒', '10001', '2017-09-11 10:28:26', '0');
INSERT INTO `product_category` VALUES ('100011000210001', '彩色橡皮泥', '1000110002', '2017-09-20 11:14:43', '0');
INSERT INTO `product_category` VALUES ('100011000210002', 'test8', '1000110001', '2017-09-20 11:14:44', '0');
INSERT INTO `product_category` VALUES ('1000110017', '铅笔分类', '10001', '2017-10-25 09:43:42', '1');
INSERT INTO `product_category` VALUES ('100011001710008', '铅笔再分类', '1000110017', '2017-10-25 09:44:28', '1');
INSERT INTO `product_category` VALUES ('10002', '工具', null, '2017-09-20 16:54:10', '0');
INSERT INTO `product_category` VALUES ('1000210003', 'test10', '10002', '2017-09-11 10:28:26', '1');
INSERT INTO `product_category` VALUES ('100021000310003', 'test11', '1000210003', '2017-09-20 11:14:45', '1');
INSERT INTO `product_category` VALUES ('100021000310005', 'test14', '1000210003', '2017-09-20 11:14:46', '1');
INSERT INTO `product_category` VALUES ('1000210005', 'test15', '10002', '2017-09-11 10:28:26', '1');
INSERT INTO `product_category` VALUES ('100021000510006', 'test16', '1000210005', '2017-09-20 11:14:47', '1');
INSERT INTO `product_category` VALUES ('1000210006', '测试2级', '10008', '2017-10-20 20:52:05', '0');
INSERT INTO `product_category` VALUES ('1000210007', '测试3级', '10008', '2017-10-20 20:52:35', '0');
INSERT INTO `product_category` VALUES ('1000210008', '厕所', '10008', '2017-10-20 20:56:15', '0');
INSERT INTO `product_category` VALUES ('1000210015', 'UUu', '10002', '2017-10-21 12:40:04', '0');
INSERT INTO `product_category` VALUES ('10003', '玩具', null, '2017-09-20 16:54:12', '0');
INSERT INTO `product_category` VALUES ('10004', '素材', null, '2017-09-20 11:14:44', '0');
INSERT INTO `product_category` VALUES ('10005', '画笔测试', null, '2017-09-20 11:14:44', '0');
INSERT INTO `product_category` VALUES ('10006', '涂料', null, '2017-09-20 11:14:44', '0');
INSERT INTO `product_category` VALUES ('1000610017', '涂料子类', '10006', '2017-10-25 09:45:00', '1');
INSERT INTO `product_category` VALUES ('100061001710008', '涂料子类的子类', '1000610017', '2017-10-25 09:45:13', '1');
INSERT INTO `product_category` VALUES ('10007', '橡皮泥', null, '2017-09-20 11:14:44', '0');
INSERT INTO `product_category` VALUES ('1000710017', '橡皮泥二级', '10007', '2017-10-25 09:49:48', '1');
INSERT INTO `product_category` VALUES ('100071001710008', '橡皮泥三级', '1000710017', '2017-10-25 09:49:59', '1');
INSERT INTO `product_category` VALUES ('10008', '素描纸', null, '2017-10-20 20:51:52', '0');
INSERT INTO `product_category` VALUES ('1000810009', '厕所11111', '10008', '2017-10-20 21:05:22', '1');
INSERT INTO `product_category` VALUES ('1000810017', '素描纸2级', '10008', '2017-10-25 09:50:11', '1');
INSERT INTO `product_category` VALUES ('100081001710008', '素描纸三级', '1000810017', '2017-10-25 09:50:41', '1');
INSERT INTO `product_category` VALUES ('10009', '2342', null, '2017-10-21 09:12:51', '1');
INSERT INTO `product_category` VALUES ('1000910010', '34534', '10009', '2017-10-21 12:14:26', '1');
INSERT INTO `product_category` VALUES ('10010', '哈哈', null, '2017-10-21 09:14:36', '1');
INSERT INTO `product_category` VALUES ('10011', '223', null, '2017-10-21 09:36:57', '1');
INSERT INTO `product_category` VALUES ('10012', '油画棒', null, '2017-10-21 11:58:58', '0');
INSERT INTO `product_category` VALUES ('1001210011', '324', '10012', '2017-10-21 12:20:20', '1');
INSERT INTO `product_category` VALUES ('1001210012', '无污染油画棒', '10012', '2017-10-21 12:20:26', '0');
INSERT INTO `product_category` VALUES ('100121001210008', '彩色无污染', '1001210012', '2017-10-25 09:51:44', '0');
INSERT INTO `product_category` VALUES ('10013', '艺术及', null, '2017-10-21 12:00:49', '0');
INSERT INTO `product_category` VALUES ('10014', '卡纸', null, '2017-10-21 12:02:36', '0');
INSERT INTO `product_category` VALUES ('1001410017', '黑白纸', '10014', '2017-10-25 09:52:27', '1');
INSERT INTO `product_category` VALUES ('100141001710008', '硬黑白纸', '1001410017', '2017-10-25 09:52:41', '1');
INSERT INTO `product_category` VALUES ('10015', '1021', null, '2017-10-21 12:03:02', '0');
INSERT INTO `product_category` VALUES ('10016', 'gsfgsg', null, '2017-10-21 12:21:31', '1');
INSERT INTO `product_category` VALUES ('1001610013', '222', '10016', '2017-10-21 12:21:36', '1');
INSERT INTO `product_category` VALUES ('1001610014', '24234', '10016', '2017-10-21 12:21:46', '1');
INSERT INTO `product_category` VALUES ('100161001410007', '3242', '1001610014', '2017-10-21 12:22:02', '1');
INSERT INTO `product_category` VALUES ('1001610015', '83', '10016', '2017-10-21 12:40:20', '1');
INSERT INTO `product_category` VALUES ('1001610016', '888', '10016', '2017-10-21 12:40:37', '1');
INSERT INTO `product_category` VALUES ('10017', '8', null, '2017-10-21 12:41:57', '1');
INSERT INTO `product_category` VALUES ('10018', '灰灰', null, '2017-10-27 18:19:28', '1');
INSERT INTO `product_category` VALUES ('1001810017', '灰灰2', '10018', '2017-10-27 18:20:16', '1');
INSERT INTO `product_category` VALUES ('100181001710008', '3级', '1001810017', '2017-10-30 09:31:28', '1');
INSERT INTO `product_category` VALUES ('1001810018', '2级', '10018', '2017-10-30 09:31:12', '1');
INSERT INTO `product_category` VALUES ('10019', ' KENDING', null, '2017-11-01 14:30:27', '0');
INSERT INTO `product_category` VALUES ('10020', '一级', null, '2017-11-01 16:00:39', '0');
INSERT INTO `product_category` VALUES ('1002010019', '二级', '10020', '2017-11-01 16:00:47', '0');
INSERT INTO `product_category` VALUES ('100201001910009', '三级', '1002010019', '2017-11-01 16:00:54', '1');
INSERT INTO `product_category` VALUES ('100201001910010', '新的一级', '1002010019', '2017-11-01 16:01:06', '1');
INSERT INTO `product_category` VALUES ('100201001910012', '发的说法', '1002010019', '2017-11-02 11:54:48', '0');
INSERT INTO `product_category` VALUES ('1002010020', '新的一级', '10020', '2017-11-01 16:01:24', '0');
INSERT INTO `product_category` VALUES ('100201002010012', '热任务', '1002010020', '2017-11-02 14:29:02', '0');
INSERT INTO `product_category` VALUES ('10021', '呵呵', null, '2017-11-01 16:07:45', '0');
INSERT INTO `product_category` VALUES ('1002110021', '测试二级', '10021', '2017-11-01 16:07:54', '0');
INSERT INTO `product_category` VALUES ('100211002110011', '测试三级', '1002110021', '2017-11-01 16:08:02', '1');
INSERT INTO `product_category` VALUES ('10022', '再测试一级', null, '2017-11-01 16:08:14', '1');
INSERT INTO `product_category` VALUES ('10023', '特色团', null, '2017-11-02 13:53:59', '1');
INSERT INTO `product_category` VALUES ('1002310022', 'fda ', '10023', '2017-11-02 15:51:14', '1');
INSERT INTO `product_category` VALUES ('100231002210012', 'fadsf', '1002310022', '2017-11-02 15:51:18', '1');
INSERT INTO `product_category` VALUES ('10023100221001210000', 'fad ', '100231002210012', '2017-11-02 15:51:27', '1');
INSERT INTO `product_category` VALUES ('10024', '测试以及', null, '2017-11-02 15:51:52', '0');
INSERT INTO `product_category` VALUES ('1002410023', '发多少', '10024', '2017-11-02 15:51:58', '0');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '专业度名',
  `picture` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标地址',
  `colour` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '颜色',
  `describe` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  `order` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_profession_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('905496907288801280', '艺术家', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'blue', '艺术家描述', '2', '2017-09-11 10:28:26');
INSERT INTO `profession` VALUES ('905496956341186560', '儿童', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'red', '儿童描述', '1', '2017-09-11 10:28:26');
INSERT INTO `profession` VALUES ('905497000209412096', '艺考生', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', 'white', '艺考生描述', '3', '2017-09-11 10:28:26');
INSERT INTO `profession` VALUES ('907068285578231809', 'test', 'url', 'blue', 'testjianjie', '4', '2017-09-11 10:28:26');

-- ----------------------------
-- Table structure for profession_brand
-- ----------------------------
DROP TABLE IF EXISTS `profession_brand`;
CREATE TABLE `profession_brand` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `profession_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '专业度id',
  `brand_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '品牌id',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_PB_professionId_brandId` (`profession_id`,`brand_id`),
  KEY `FK_PB_profession_id` (`profession_id`),
  KEY `FK_PB_brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profession_brand
-- ----------------------------
INSERT INTO `profession_brand` VALUES ('905509235577085952', '905496956341186560', '905475866336247808', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('905509402720182272', '905496956341186560', '10000', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('907856227716308992', '905497000209412096', '907526907265396737', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('907856227716308993', '905497000209412096', '907526907265396736', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('907856227716308994', '905496907288801280', '907526907265396738', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('917740783730769921', '905496956341186560', '917726754425536512', '2017-09-11 10:28:26');
INSERT INTO `profession_brand` VALUES ('924816158266245120', '905497000209412096', '905475866336247808', '2017-10-30 09:52:09');
INSERT INTO `profession_brand` VALUES ('924977196273418240', '905496907288801280', '905475866336247808', '2017-10-30 20:32:03');
INSERT INTO `profession_brand` VALUES ('925175925379768320', '905496956341186560', '907526907265396737', '2017-10-31 09:41:44');
INSERT INTO `profession_brand` VALUES ('925176436636065792', '905496956341186560', '907526907265396736', '2017-10-31 09:43:46');

-- ----------------------------
-- Table structure for profession_category
-- ----------------------------
DROP TABLE IF EXISTS `profession_category`;
CREATE TABLE `profession_category` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `category_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类id',
  `profession_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '专业度id',
  `picture` varchar(255) DEFAULT NULL,
  `selected_picture` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_PC_category_profession` (`category_id`,`profession_id`),
  KEY `FK_PC_category_id` (`category_id`),
  KEY `FK_PC_profession_id` (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profession_category
-- ----------------------------
INSERT INTO `profession_category` VALUES ('10000', '10001', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/sg@2x.png', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/sg1@2x.png', '0', '2017-09-11 17:36:06');
INSERT INTO `profession_category` VALUES ('10001', '1000110002', '905496956341186560', null, null, '0', '2017-09-11 17:36:07');
INSERT INTO `profession_category` VALUES ('10002', '100011000210001', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:08');
INSERT INTO `profession_category` VALUES ('10003', '10002', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:09');
INSERT INTO `profession_category` VALUES ('10004', '10000', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/925640590136217600.png', 'http://guide2017.b0.upaiyun.com/category/925640577008046080.png', '0', '2017-09-11 17:55:02');
INSERT INTO `profession_category` VALUES ('10006', '100011000210002', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:12');
INSERT INTO `profession_category` VALUES ('10007', '100021000310003', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:13');
INSERT INTO `profession_category` VALUES ('10008', '1000210003', '905496956341186560', null, null, '0', '2017-09-11 17:36:14');
INSERT INTO `profession_category` VALUES ('10009', '100001000410004', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/925256775746736128.png', 'http://guide2017.b0.upaiyun.com/category/925256768297652224.png', '0', '2017-09-11 17:55:33');
INSERT INTO `profession_category` VALUES ('10010', '1000010004', '905496956341186560', null, null, '0', '2017-09-11 17:55:31');
INSERT INTO `profession_category` VALUES ('10011', '100021000310005', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:16');
INSERT INTO `profession_category` VALUES ('10012', '100021000510006', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-11 17:36:17');
INSERT INTO `profession_category` VALUES ('10013', '1000210005', '905496956341186560', null, null, '0', '2017-09-11 17:36:18');
INSERT INTO `profession_category` VALUES ('910452337798672384', '10003', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/922372055834312704.png', 'http://guide2017.b0.upaiyun.com/category/922372021025783808.png', '0', '2017-09-20 18:37:28');
INSERT INTO `profession_category` VALUES ('910452337798672385', '10004', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-20 18:37:31');
INSERT INTO `profession_category` VALUES ('910452337798672386', '10005', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', '0', '2017-09-20 18:37:34');
INSERT INTO `profession_category` VALUES ('910452337798672387', '10006', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/922372706869985280.png', 'http://guide2017.b0.upaiyun.com/category/922372695369203712.png', '0', '2017-09-20 18:37:40');
INSERT INTO `profession_category` VALUES ('917740783730769924', '100011000010000', '905496956341186560', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon1@3x.png', 'http://guide2017.b0.upaiyun.com/test/2017.8.20/icon6@3x.png', '0', '2017-09-20 18:37:40');
INSERT INTO `profession_category` VALUES ('917740783730769925', '1000110000', '905496956341186560', null, null, '0', '2017-09-20 18:37:40');
INSERT INTO `profession_category` VALUES ('922372503500767232', '10016', '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/922372425767731200.png', 'http://guide2017.b0.upaiyun.com/category/922372413797187584.png', '0', '2017-10-23 16:01:56');
INSERT INTO `profession_category` VALUES ('922379937678114816', '10008', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/922379919437086720.png', 'http://guide2017.b0.upaiyun.com/category/922379871416500224.png', '0', '2017-10-23 16:31:29');
INSERT INTO `profession_category` VALUES ('922380750462926848', '10014', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/922380726664445952.png', 'http://guide2017.b0.upaiyun.com/category/922380673421950976.png', '0', '2017-10-23 16:34:43');
INSERT INTO `profession_category` VALUES ('922384604206219264', '10000', '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/925256700580614144.png', 'http://guide2017.b0.upaiyun.com/category/925256691952930816.png', '0', '2017-10-23 16:50:01');
INSERT INTO `profession_category` VALUES ('923962849723265024', '100001000010000', '905496956341186560', '', '', '0', '2017-10-28 01:21:24');
INSERT INTO `profession_category` VALUES ('923963540332122112', '1000010000', '905496956341186560', null, null, '0', '2017-10-28 01:24:09');
INSERT INTO `profession_category` VALUES ('924811036668739584', '10018', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/924811030943514624.jpg', 'http://guide2017.b0.upaiyun.com/category/924811011494526976.jpg', '0', '2017-10-30 09:31:48');
INSERT INTO `profession_category` VALUES ('924811154826477568', '1001810017', '905496956341186560', null, null, '0', '2017-10-30 09:32:16');
INSERT INTO `profession_category` VALUES ('924811154847449088', '100181001710008', '905496956341186560', 'http://guide2017.b0.upaiyun.com/category/924811149717815296.jpg', 'http://guide2017.b0.upaiyun.com/category/924811117207764992.jpg', '0', '2017-10-30 09:32:16');
INSERT INTO `profession_category` VALUES ('925251155951452160', '10018', '905497000209412096', 'http://guide2017.b0.upaiyun.com/category/925251281344364544.jpg', 'http://guide2017.b0.upaiyun.com/category/925251270883770368.jpg', '0', '2017-10-31 14:40:41');
INSERT INTO `profession_category` VALUES ('925251205951750144', '10018', '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/925251318984048640.jpg', 'http://guide2017.b0.upaiyun.com/category/925251308364070912.jpg', '0', '2017-10-31 14:40:52');
INSERT INTO `profession_category` VALUES ('925251399166558208', '1001810017', '905496907288801280', null, null, '0', '2017-10-31 14:41:39');
INSERT INTO `profession_category` VALUES ('925251399204306944', '100181001710008', '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/925251394028535808.jpg', 'http://guide2017.b0.upaiyun.com/category/925251376018194432.jpg', '0', '2017-10-31 14:41:39');
INSERT INTO `profession_category` VALUES ('925253096738148352', '1001810017', '905497000209412096', null, null, '0', '2017-10-31 14:48:23');
INSERT INTO `profession_category` VALUES ('925253096809451520', '100181001710008', '905497000209412096', 'http://guide2017.b0.upaiyun.com/category/925253289302839296.jpg', 'http://guide2017.b0.upaiyun.com/category/925253278573809664.jpg', '0', '2017-10-31 14:48:23');
INSERT INTO `profession_category` VALUES ('925256670343876608', '10000', '905497000209412096', 'http://guide2017.b0.upaiyun.com/category/925256666350899200.png', 'http://guide2017.b0.upaiyun.com/category/925256659266719744.png', '0', '2017-10-31 15:02:35');
INSERT INTO `profession_category` VALUES ('925256811939385344', '1000010004', '905497000209412096', null, null, '0', '2017-10-31 15:03:09');
INSERT INTO `profession_category` VALUES ('925256811972939776', '100001000410004', '905497000209412096', 'http://guide2017.b0.upaiyun.com/category/925256808386809856.png', 'http://guide2017.b0.upaiyun.com/category/925256800920948736.png', '0', '2017-10-31 15:03:09');
INSERT INTO `profession_category` VALUES ('925256840624230400', '1000010004', '905496907288801280', null, null, '0', '2017-10-31 15:03:16');
INSERT INTO `profession_category` VALUES ('925256840657784832', '100001000410004', '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/925256836408954880.png', 'http://guide2017.b0.upaiyun.com/category/925256829157003264.png', '0', '2017-10-31 15:03:16');

-- ----------------------------
-- Table structure for receiving_info
-- ----------------------------
DROP TABLE IF EXISTS `receiving_info`;
CREATE TABLE `receiving_info` (
  `id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '关联用户',
  `receiver` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人',
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `region` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '地区',
  `street` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货地址',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态(0:启用，1:停用)',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认地址(0：非，1：是)',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `mail` int(11) DEFAULT NULL COMMENT '邮政编码',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收货地址';

-- ----------------------------
-- Records of receiving_info
-- ----------------------------
INSERT INTO `receiving_info` VALUES ('910808601309216768', '10000', 'ych111', '10000111111', '地区', '', '地址', '0', '1', '备注', null, '2017-09-25 15:20:39');
INSERT INTO `receiving_info` VALUES ('912157581351968768', '10011', '3', '4', '5', '6', '7', '0', '1', '9', '8', '2017-09-25 11:45:50');
INSERT INTO `receiving_info` VALUES ('912207995541229568', '123', '2', '3', '4', '5', '6', '0', '1', '8', '7', '2017-09-25 14:52:09');
INSERT INTO `receiving_info` VALUES ('912233623644639232', '10000', 'gsk', '17606037017', '福建省泉州市德化县', 'longhu', 'Ci Cheng hua yuan \n', '1', '1', '', '518000', '2017-09-25 17:03:55');
INSERT INTO `receiving_info` VALUES ('912241702994030592', '10000', 'Gsk945', '13142761714', '广东省深圳市南山区', '讯美广场', '3号楼506L', '0', '0', '', '518000', '2017-09-26 10:14:11');
INSERT INTO `receiving_info` VALUES ('912470500549152768', '1000111', '1', '2', '3', '4', '5', '0', '1', '7', '6', '2017-09-26 08:14:55');
INSERT INTO `receiving_info` VALUES ('912725510757924864', '912520034942283776', 'Gsk', '17606037017', '福建省泉州市德化县', '瓷城花园', '56栋', '0', '0', '0', '9', '2017-09-27 01:09:06');
INSERT INTO `receiving_info` VALUES ('913231815211225088', '912526293696774144', 'Gsk', '17606037017', '福建省泉州市德化县', '瓷城花园', '56栋', '0', '1', '', '518000', '2017-09-28 10:40:29');
INSERT INTO `receiving_info` VALUES ('913239071550083072', '912526293696774144', '公司', '12345678999', '北京市北京市东城区', '123ss', '1234', '1', '0', '', '51234', '2017-09-28 11:08:56');
INSERT INTO `receiving_info` VALUES ('913662563630190592', '912526293696774144', 'Gas', '123456789009', '北京市北京市东城区', 'As ', '12324asdfds', '0', '0', '', '518000', '2017-09-29 15:11:45');
INSERT INTO `receiving_info` VALUES ('913662763820126208', '912526293696774144', 'Dead ', '123456789011', '北京市北京市东城区', 'Yuh', 'Erer', '0', '0', '', '528000', '2017-09-29 15:12:33');
INSERT INTO `receiving_info` VALUES ('914115087565434880', '912520034942283776', '姚', '1333333', '地区', '街道', '详细地址', '0', '1', '备注', '11111', '2017-09-30 21:09:55');
INSERT INTO `receiving_info` VALUES ('914115191265406976', '912520034942283776', '姚', '111', '地区', '街道', '详细地址', '0', '0', '备注', '111', '2017-09-30 21:11:56');
INSERT INTO `receiving_info` VALUES ('918768345497477120', '914086906545950720', '我是', '13142761714', '北京市北京市东城区', '362508', 'dsh撒村', '1', '1', '', '3625089', '2017-10-13 17:20:18');
INSERT INTO `receiving_info` VALUES ('920988346961469440', '912526293696774144', '2', '3', '4', '5', '6', '1', '1', '8', '67', '2017-10-19 20:21:48');
INSERT INTO `receiving_info` VALUES ('921261542903705600', '914086906545950720', 'gsk', '17606037018', '广东省深圳市南山区', '粤海街道', '你猜我在哪', '0', '1', '', '518000', '2017-10-20 14:27:23');
INSERT INTO `receiving_info` VALUES ('921278641504018432', '912624472052203520', '小尧', '13838696425', '江苏省南京市玄武区', '给我们泼墨先下手为强', '', '0', '0', null, '65828', '2017-10-20 15:35:19');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户id',
  `details` text COMMENT '内容详情',
  `cover` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '封面',
  `cover_name` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '封面名',
  `read` int(11) DEFAULT '0' COMMENT '阅读数',
  `collect_num` int(11) DEFAULT '0' COMMENT '收藏数',
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题头',
  `type` int(11) DEFAULT '0' COMMENT '投放的位置类型',
  `reply` int(11) DEFAULT '0' COMMENT '回复数',
  `status` int(11) DEFAULT '0',
  `desc` text COMMENT '简介',
  `createdtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mediaUrl` text COMMENT '视频地址',
  `profession` varchar(70) DEFAULT NULL COMMENT '专业度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='艺享';

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('920813907260502016', '912526293696774144', '<p>share1</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/不可思议的中国兵马俑历史.png', null, '0', '0', '不可思议的中国兵马俑历史', '1', '0', '0', '不可思议的中国兵马俑历史', '2017-10-21 15:20:49', 'https://v.qq.com/iframe/player.html?vid=k05621wb8p2&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('920814205274189825', '912526293696774144', '<p>share2</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/古代艺术是如何影响现代艺术的？.png', null, '0', '0', '古代艺术是如何影响现代艺术的', '1', '0', '0', '古代艺术是如何影响现代艺术的？', '2017-10-21 15:10:44', 'https://v.qq.com/iframe/player.html?vid=x0562z5d4zw&tiny=0&auto=0', '905496956341186560,905497000209412096,905496907288801280');
INSERT INTO `share` VALUES ('920814429849808896', '912526293696774144', '<p>share3</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/古希腊的艺术魅力：音乐与创造力.png', null, '0', '0', '古希腊的艺术魅力：音乐与创造力', '1', '0', '0', '古希腊的艺术魅力：音乐与创造力', '2017-10-21 15:22:11', 'https://v.qq.com/iframe/player.html?vid=v0562n95nk6&tiny=0&auto=0', '905497000209412096');
INSERT INTO `share` VALUES ('920814429908529152', '912526293696774144', '<p>share3</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/古希腊的艺术魅力：音乐与创造力.png', null, '0', '0', '古希腊的艺术魅力：音乐与创造力', '1', '0', '0', '古希腊的艺术魅力：音乐与创造力', '2017-10-21 15:22:22', 'https://v.qq.com/iframe/player.html?vid=v0562n95nk6&tiny=0&auto=0', '905497000209412096,905497000209412096');
INSERT INTO `share` VALUES ('920814754698653696', '912526293696774144', '<p><span style=\"font-weight: normal;\">​share</span></p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/米开朗基罗大卫雕像背后的故事.png', null, '0', '0', '米开朗基罗大卫雕像背后的故事', '1', '0', '0', '米开朗基罗大卫雕像背后的故事', '2017-10-21 15:10:49', 'https://v.qq.com/iframe/player.html?vid=n05625cjjgc&tiny=0&auto=0', '905497000209412096,905496956341186560');
INSERT INTO `share` VALUES ('920815010526031872', '912526293696774144', '<p>share5</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/趣味解读：什么是抽象表现主义？.png', null, '0', '0', '趣味解读：什么是抽象表现主义？', '1', '0', '0', '趣味解读：什么是抽象表现主义？', '2017-10-21 15:10:49', 'https://v.qq.com/iframe/player.html?vid=n05625cjjgc&tiny=0&auto=0', '905497000209412096,905496956341186560');
INSERT INTO `share` VALUES ('920815266223386624', '912526293696774144', '<p>share6</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/圣索菲亚大教堂之谜：不仅是教堂，也是清真寺.png', null, '0', '0', '圣索菲亚大教堂之谜：不仅是教堂，也是清真寺', '1', '0', '0', '圣索菲亚大教堂之谜：不仅是教堂，也是清真寺', '2017-10-21 15:10:50', 'https://v.qq.com/iframe/player.html?vid=y05621luv1d&tiny=0&auto=0', '905497000209412096,905496956341186560');
INSERT INTO `share` VALUES ('920924986703638528', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/为何《戴珍珠耳环的少女》会被誉为惊世名作？.png', null, '0', '0', '为何《戴珍珠耳环的少女》会被誉为惊世名作？', '1', '0', '0', '为何《戴珍珠耳环的少女》会被誉为惊世名作', '2017-10-21 15:10:50', 'https://v.qq.com/iframe/player.html?vid=n0562g3yjch&tiny=0&auto=0', '905497000209412096,905496956341186560');
INSERT INTO `share` VALUES ('920925414841413632', '912526293696774144', '<p>2</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/趣味解读：什么是抽象表现主义？.png', null, '0', '0', '趣味解读：什么是抽象表现主义？', '1', '0', '0', '趣味解读：什么是抽象表现主义？', '2017-10-21 15:10:54', 'https://v.qq.com/iframe/player.html?vid=c0562tv8lye&tiny=0&auto=0', '905497000209412096,905496956341186560');
INSERT INTO `share` VALUES ('920925948126195713', '912526293696774144', '<p>3</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/不可思议的中国兵马俑历史.png', null, '0', '0', '不可思议的中国兵马俑历史', '1', '0', '0', '不可思议的中国兵马俑历史', '2017-10-21 15:20:37', 'https://v.qq.com/iframe/player.html?vid=k05621wb8p2&tiny=0&auto=0', '905497000209412096');
INSERT INTO `share` VALUES ('920925948159750144', '912526293696774144', '<p>3</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/不可思议的中国兵马俑历史.png', null, '0', '0', '不可思议的中国兵马俑历史', '1', '0', '0', '不可思议的中国兵马俑历史', '2017-10-21 15:21:50', 'https://v.qq.com/iframe/player.html?vid=k05621wb8p2&tiny=0&auto=0', '905497000209412096');
INSERT INTO `share` VALUES ('920926263265226753', '912526293696774144', '<p>4</p>', 'http://guide2017.b0.upaiyun.com/test/2017.9.19/古代艺术是如何影响现代艺术的？.png', null, '0', '0', '古代艺术是如何影响现代艺术的？', '0', '0', '0', '古代艺术是如何影响现代艺术的？', '2017-10-21 15:21:51', null, '905497000209412096');
INSERT INTO `share` VALUES ('921192705361526784', '912526293696774144', '<p>重新测试新上传图片接口a</p>', 'http://guide2017.b0.upaiyun.com/share/921192660499251200.jpg', null, '0', '0', '重新测试新上传图片接口a', '0', '0', '0', '重新测试新上传图片接口a', '2017-10-21 15:21:52', null, '905497000209412096');
INSERT INTO `share` VALUES ('921640801843929088', '912520034942283776', '1', '2', null, '0', '0', '3', '0', '0', '0', '1', '2017-10-21 15:34:25', null, null);
INSERT INTO `share` VALUES ('921640802686984192', '912520034942283776', '1', '2', null, '0', '0', '3', '0', '0', '0', '1', '2017-10-21 15:34:25', null, null);
INSERT INTO `share` VALUES ('921641009784938496', '912520034942283776', '1', '2', null, '0', '0', '3', '0', '0', '0', '1', '2017-10-21 15:35:15', null, null);
INSERT INTO `share` VALUES ('921641287733080064', '912520034942283776', '1', '2', null, '0', '0', '3', '0', '0', '0', '1', '2017-10-21 15:36:21', null, null);
INSERT INTO `share` VALUES ('921641507048931328', '912520034942283776', '1', '2', null, '0', '0', '3', '0', '0', '0', '1', '2017-10-21 15:37:13', null, '905496956341186560');
INSERT INTO `share` VALUES ('921663978520719361', '912526293696774144', '<p>f2</p>', 'http://guide2017.b0.upaiyun.com/share/921662903516409856.png', null, '0', '0', 'we', '1', '0', '0', '32<', '2017-10-21 17:06:31', 'https://v.qq.com/iframe/player.html?vid=b00249eiunm&tiny=0&auto=0', '905496907288801280,905497000209412096');
INSERT INTO `share` VALUES ('921663978541690881', '912526293696774144', '<p>f2</p>', 'http://guide2017.b0.upaiyun.com/share/921662903516409856.png', null, '0', '0', 'we', '1', '0', '0', '32<', '2017-10-21 17:06:31', 'https://v.qq.com/iframe/player.html?vid=b00249eiunm&tiny=0&auto=0', '905496907288801280,905497000209412096');
INSERT INTO `share` VALUES ('923366344009830400', '912526293696774144', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', 'http://guide2017.b0.upaiyun.com/share/923365364958613504.png', null, '0', '0', 'wrerwrwrw', '0', '0', '0', '23242', '2017-10-26 09:51:06', null, '905497000209412096');
INSERT INTO `share` VALUES ('923373191685066752', '912526293696774144', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923372976643100672.png\" style=\"max-width:100%;\"><br></p>', 'http://guide2017.b0.upaiyun.com/share/923373042820829184.png', null, '0', '0', '31231321321', '0', '0', '0', '432432', '2017-10-26 10:18:19', null, '905496956341186560');
INSERT INTO `share` VALUES ('923373588252315648', '912526293696774144', '<p>838683</p>', 'http://guide2017.b0.upaiyun.com/share/923373537069223936.png', null, '0', '0', '成功', '0', '0', '0', '法法', '2017-10-26 10:19:54', null, '905496956341186560');
INSERT INTO `share` VALUES ('923388045854625793', '912526293696774144', '<p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\">文艺复兴时期，主要的欧洲艺术运动强调传统的表现方式和对经典样式的依附，经历了</font>19<font face=\"宋体\">世纪的历史变迁，世界文化的交融给予了勇于革新的艺术家们丰富的创作灵感。</font><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\">梵高、塞尚、高更、毕加索</font>......<spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\">20<font face=\"宋体\">世纪，一幅惊世画作揭开了艺术表达的新篇章。</font><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\">历史依旧在不断演化，艺术表达方式还将演化出怎样璀璨的未来艺术？</font><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\"  DefUnhideWhenUsed=\"true\"  DefSemiHidden=\"true\"  DefQFormat=\"false\"  DefPriority=\"99\"  LatentStyleCount=\"260\" >\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Normal\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 7\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 8\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"heading 9\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 7\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 8\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index 9\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 7\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 8\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toc 9\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Normal Indent\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"footnote text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"annotation text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"header\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"footer\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"index heading\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"caption\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"table of figures\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"envelope address\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"envelope return\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"footnote reference\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"annotation reference\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"line number\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"page number\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"endnote reference\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"endnote text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"table of authorities\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"macro\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"toa heading\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Bullet\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Number\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Bullet 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Bullet 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Bullet 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Bullet 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Number 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Number 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Number 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Number 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Title\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Closing\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Signature\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Default Paragraph Font\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text Indent\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Continue\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Continue 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Continue 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Continue 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"List Continue 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Message Header\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Subtitle\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Salutation\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Date\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text First Indent\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text First Indent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Note Heading\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text Indent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Body Text Indent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Block Text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Hyperlink\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"FollowedHyperlink\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Strong\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Emphasis\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Document Map\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Plain Text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"E-mail Signature\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Normal (Web)\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Acronym\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Address\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Cite\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Code\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Definition\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Keyboard\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Preformatted\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Sample\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Typewriter\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"HTML Variable\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Normal Table\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"annotation subject\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"No List\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Simple 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Simple 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Simple 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Classic 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Classic 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Classic 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Classic 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Colorful 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Colorful 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Colorful 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Columns 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Columns 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Columns 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Columns 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Columns 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 7\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid 8\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 7\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table List 8\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table 3D effects 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table 3D effects 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table 3D effects 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Contemporary\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Elegant\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Professional\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Subtle 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Subtle 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Web 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Web 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Web 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Balloon Text\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Grid\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Table Theme\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 1\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 2\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 3\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 4\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 5\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Shading Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light List Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Light Grid Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 1 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Shading 2 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 1 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium List 2 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 1 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 2 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Medium Grid 3 Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Dark List Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Shading Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful List Accent 6\" ></w:LsdException>\n<w:LsdException Locked=\"false\"  Priority=\"99\"  SemiHidden=\"false\"  Name=\"Colorful Grid Accent 6\" ></w:LsdException>\n</w:LatentStyles></xml><![endif]--><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\">让我们拭目以待吧。</font><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\"><br></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><img src=\"http://guide2017.b0.upaiyun.com/share/923386895273152512.png\" style=\"max-width:100%;\"><font face=\"宋体\"><br></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p>', 'http://guide2017.b0.upaiyun.com/share/923387372136157184.png', null, '0', '0', '现代艺术是如何受古代艺术影响的？', '1', '0', '0', '\n', '2017-10-26 11:17:21', '<iframe frameborder=\"0\" width=\"640\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=k05621wb8p2&tiny=0&auto=0\" allowfullscreen></iframe>', '905496956341186560');
INSERT INTO `share` VALUES ('923392483017129984', '912526293696774144', '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt;\">文艺复新时期，主要的欧洲艺术强调传统的表现方式和对经典样式的依附</span><br></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p><br></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p>然而，勇于革新的艺术家们在历史变迁以及文化交融中汲取了新的灵感</o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p><br></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p>开创了一个丰富多彩艺术表达新时代，其深刻的影响直至今天</o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p><br></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p>艺术的包容性决定了艺术表达方式是永远不受限的</o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><o:p><br></o:p></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\">谁能更无畏大胆的打破生活中的种种限制？</p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\">也许你身旁的小小艺术家能够给你一个充满惊喜的答案。</p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\"><br></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><img src=\"http://guide2017.b0.upaiyun.com/share/923389695310811136.png\" style=\"max-width:100%;\"><font face=\"宋体\"><br></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style>', 'http://guide2017.b0.upaiyun.com/share/923392401395974144.png', null, '0', '0', '现代艺术是如何受到古代艺术的影响的？', '1', '0', '0', ' ', '2017-10-26 11:34:58', 'https://v.qq.com/iframe/player.html?vid=k05621wb8p2&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923435305338437633', '912526293696774144', '<p><br></p><p>作为艺术的另一种表达方式</p><p>漫画深受孩子们的喜爱</p><p>因其常常以趣味幽默的故事引人入胜</p><p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923434586636058624.png\" style=\"max-width:100%;\"><br></p><p><br></p><p>那么，究竟漫画里一个个精彩的故事是怎么形成的呢？</p><p>了解漫画家的创作过程</p><p>让孩子们也创作一个属于自己的趣味小漫画吧！</p><p><br></p><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style>', 'http://guide2017.b0.upaiyun.com/share/923434874549862400.png', null, '0', '0', '走进漫画家的艺术世界', '1', '0', '0', ' ', '2017-10-26 14:25:08', 'https://v.qq.com/iframe/player.html?vid=x0562z5d4zw&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923439891944079361', '912526293696774144', '<p><br></p><p>有这样一座神秘的教堂</p><p>她既是教堂，又是清真寺</p><p>她华丽宏伟又饱经沧桑</p><p>让我们一起走近圣索菲亚大教堂，听听她对往事的低吟浅唱</p><p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923439301667094528.png\" style=\"max-width:100%;\"><br></p>', 'http://guide2017.b0.upaiyun.com/share/923439670581297152.png', null, '0', '0', '圣索菲亚大教堂之谜：不仅是教堂，也是清真寺', '1', '0', '0', ' ', '2017-10-26 14:43:22', 'https://v.qq.com/iframe/player.html?vid=v0562n95nk6&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923466622709039105', '912526293696774144', '<p><br></p><p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923465229176700928.png\" style=\"max-width:100%;\" class=\"\"><br></p><p><br></p><p>音乐已成为现代人生活中不可或缺的一部分</p><p>其实，在艺术文化气息浓厚的古希腊生活中</p><p>音乐有着更重要的地位</p><p>从神话到生活的方方面面</p><p>都有着不可替代的作用</p><p>让我们穿越回几千年前</p><p>一起体验古希腊的音乐艺术生活吧</p><p class=\"MsoNormal\"><br></p><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style>', 'http://guide2017.b0.upaiyun.com/share/923466539884118016.png', null, '0', '0', '古希腊的艺术魅力：音乐与创造力', '1', '0', '0', ' ', '2017-10-26 16:29:35', 'https://v.qq.com/iframe/player.html?vid=w0562waajnt&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923467530616471552', '912526293696774144', '<p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><img src=\"http://guide2017.b0.upaiyun.com/share/923466739235192832.png\" style=\"font-size: 10.5pt; text-align: left; font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体; max-width: 100%;\"><br></p><p class=\"MsoNormal\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"宋体\"><br></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></p><p>作为中国历史上的第一位皇帝</p><p>秦始皇不仅统一六国，创下了辉煌的历史功绩</p><p>还为后世留下了大量宝贵的历史文物</p><p>秦始皇陵、兵马俑，以其精密的设计以及大量无价珍宝</p><p>为世人所瞩目</p><p>但同时，也留下了许多令人难以费解的谜团</p><p>今天，就让我们来一一探寻这其中的奥秘</p><p class=\"MsoNormal\"><br></p><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style>', 'http://guide2017.b0.upaiyun.com/share/923467259781873664.png', null, '0', '0', '不可思议的中国兵马俑历史', '1', '0', '0', ' ', '2017-10-26 16:33:11', 'https://v.qq.com/iframe/player.html?vid=y05621luv1d&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923468178699354113', '912526293696774144', '<p><br></p><p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923467668550352896.png\" style=\"max-width:100%;\" class=\"\"><br></p><p><br></p><p>作为米开朗基罗出色的代表作</p><p>大卫雕像最初被创作出来的目的是什么？</p><p>他的头和手为什么会不成比例地稍大？</p><p>他又是如何体现出米开朗基罗高超的雕刻技巧的？</p><p>他的背后到底经历了哪些不为人知的故事呢？</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923467846246236160.png', null, '0', '0', '米开朗基罗大卫雕像背后的故事', '1', '0', '0', ' ', '2017-10-26 16:35:46', 'https://v.qq.com/iframe/player.html?vid=n05625cjjgc&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923469048312791041', '912526293696774144', '<p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923468408148754432.png\" style=\"max-width:100%;\" class=\"\"><br></p><p><br></p><p>在抽象表达主义主题的画展里</p><p>常常能见到许多观赏者一边皱着眉</p><p>一边一脸疑惑的表情</p><p>“这也是绘画？好像就是一堆乱糟糟的线条啊”</p><p>但，也许了解完什么是抽象表达主义</p><p>你会发现</p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">你身边说不定也潜藏着一个未来的画家呢</span></p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923468886974693376.png', null, '0', '0', '趣味解读：什么是抽象表现主义？', '1', '0', '0', ' ', '2017-10-26 16:39:13', 'https://v.qq.com/iframe/player.html?vid=n0562g3yjch&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923469520796942336', '912526293696774144', '<p><br></p><p><img src=\"http://guide2017.b0.upaiyun.com/share/923469158316802048.png\" style=\"max-width:100%;\"><br></p><p><br></p><p>如果说蒙娜丽莎的微笑神秘的微笑</p><p>让世界上许多的人神魂颠倒</p><p>那么这世上还有一位画中少女</p><p>她的欲言还休同样让人魂牵梦绕</p><p>她是谁？</p><p>她微启红唇，又是想倾述些什么呢？</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923469195771936768.png', null, '0', '0', '为何《戴珍珠耳环的少女》会被誉为惊世名作？', '1', '0', '0', ' ', '2017-10-26 16:41:06', 'https://v.qq.com/iframe/player.html?vid=c0562tv8lye&tiny=0&auto=0', '905496956341186560');
INSERT INTO `share` VALUES ('923477690982367233', '912526293696774144', '<p><br></p><p>William Baziotes\'s paintings are freely improvised, intuitive affairs created in the spirit of Surrealist automatism. Each canvas, he claimed in 1947, “has its own way of evolving. . . . Each beginning suggests something. . . . The suggestion then becomes a phantom that must be caught and made real.”&nbsp;</p><p>威廉·巴齐奥特斯（William Baziotes）的画作是自由而随性的，他的创作方式属于超现实无意识行为主义。他在1947年曾发表过相关的想法，他认为，每一次创作，在画布上都有它独特的演化方式，每一个开始都有它的深层寓意，这些寓意就是创作者要去捕捉到并且将它展现出来的一些意象。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923476084777844736.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(<span style=\"font-family: Calibri; font-size: 10.5pt; text-align: justify;\"><spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-weight:bold;font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\" style=\"\"><font face=\"Calibri\" style=\"\"><b>Aquatic ,&nbsp;</b></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times></span><font face=\"Calibri\" style=\"font-family: Calibri; font-size: 10.5pt; text-align: justify;\">1961&nbsp;</font><font style=\"font-size: 10.5pt; text-align: justify;\" face=\"宋体\">,</font><span style=\"font-family: Calibri; font-size: 10.5pt; text-align: justify;\">167.6 x 198.4 cm</span><span style=\"font-size: 10.5pt; font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p><br></p><p>For Baziotes, the \"reality\"he aspired to exists only in a poetic realm, one in which color and form serve as analogues for psychological and emotional states.&nbsp;</p><p>对于他而言，“现实”是只存在于诗歌领域的，但能够用色彩与形式做心理上与情感上的表达。&nbsp;</p><p>This use of visual metaphor was inspired by the artist\'s love for poetry, particularly that of Charles Baudelaire, whose theory of \"correspondences\"proclaimed the fundamental equivalence of all things in nature and the capacity of any designated thing to symbolize something beyond itself.&nbsp;</p><p>这种视觉上的隐喻表达是受艺术家对于诗歌热爱的启发，尤其是宣称世上所有事情都有其本质的等同性，并且拥有能够将特定事物引申出超越其本身含义的能力的查尔斯·波德莱尔（Charles Baudelaire）的“对应”理论的启发。</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923476874179411968.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">&nbsp;(<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Dusk</b>&nbsp;, 1958 , 153.3 x 122.5 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p><br></p><p>By the late 1940s Baziotes achieved his signature formal motif—delicate, semitranslucent, biomorphic shapes suspended within aqueous fields of muted color—which invokes the Baudelairian world of allusion and association.\"The emphasis on flora, fauna and beings,\"explained the artist about his painting, \"brings forth those strange memories and psychic feelings that mystify and fascinate all of us.\"&nbsp;</p><p>到二十世纪四十年代后期，巴齐奥特斯确立了他代表性的创作主题——细腻的，半透明的，悬浮在水域与柔和色彩当中的生物形态，一种对于波德莱尔所提及的世界的理解与展现。 “对于植物、动物以及人的重视，”画家如此解释他的画作，“这当中所产生的奇异的记忆与心灵体验让所有人为之迷惑而又着迷不已。”&nbsp;</p><p><br></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">Nancy Spector&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</span><br></p><p><br></p><style>\n@font-face{\nfont-family:\"Times New Roman\";\n}\n\n@font-face{\nfont-family:\"宋体\";\n}\n\n@font-face{\nfont-family:\"Calibri\";\n}\n\np.MsoNormal{\nmso-style-name:正文;\nmso-style-parent:\"\";\nmargin:0pt;\nmargin-bottom:.0001pt;\nmso-pagination:none;\ntext-align:justify;\ntext-justify:inter-ideograph;\nfont-family:Calibri;\nmso-fareast-font-family:宋体;\nmso-bidi-font-family:\'Times New Roman\';\nfont-size:10.5000pt;\nmso-font-kerning:1.0000pt;\n}\n\nspan.msoIns{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:underline;\ntext-underline:single;\ncolor:blue;\n}\n\nspan.msoDel{\nmso-style-type:export-only;\nmso-style-name:\"\";\ntext-decoration:line-through;\ncolor:red;\n}\n@page{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}@page Section0{\n}\ndiv.Section0{page:Section0;}</style>', 'http://guide2017.b0.upaiyun.com/share/923477617334583296.jpg', null, '0', '0', '艺术家：威廉·巴齐奥特斯', '0', '0', '0', ' ', '2017-10-26 17:13:34', null, '905496956341186560');
INSERT INTO `share` VALUES ('923480053709307904', '912526293696774144', '<p><br></p><p>William Baziotes\'s paintings are freely improvised, intuitive affairs created in the spirit of Surrealist automatism. Each canvas, he claimed in 1947, “has its own way of evolving. . . . Each beginning suggests something. . . . The suggestion then becomes a phantom that must be caught and made real.”&nbsp;</p><p><br></p><p>威廉·巴齐奥特斯（William Baziotes）的画作是自由而随性的，他的创作方式属于超现实无意识行为主义。他在1947年曾发表过相关的想法，他认为，每一次创作，在画布上都有它独特的演化方式，每一个开始都有它的深层寓意，这些寓意就是创作者要去捕捉到并且将它展现出来的一些意象。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923476084777844736.jpg\" margin:=\"\" 0px;=\"\" padding:=\"\" box-sizing:=\"\" border-box;=\"\" cursor:=\"\" pointer;=\"\" box-shadow:=\"\" rgb(51,=\"\" 51,=\"\" 51)=\"\" 0px=\"\" 5px;=\"\" max-width:=\"\" 100%;\"=\"\" pointer;\"=\"\" class=\"\"><br></p><p style=\"text-align: center;\">(<spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times new=\"\" roman\';font-weight:bold;font-size:10.5000pt;mso-font-kerning:1.0000pt;\"=\"\"><font face=\"Calibri\"><b>Aquatic&nbsp;,&nbsp;</b></font></spanyes\';font-family:宋体;mso-ascii-font-family:calibri;mso-hansi-font-family:calibri;mso-bidi-font-family:\'times><font face=\"Calibri\">1961&nbsp;</font><font face=\"宋体\">,</font>167.6 x 198.4 cm)</p><p><br></p><p>For Baziotes, the \"reality\"he aspired to exists only in a poetic realm, one in which color and form serve as analogues for psychological and emotional states.&nbsp;</p><p><br></p><p>对于他而言，“现实”是只存在于诗歌领域的，但能够用色彩与形式做心理上与情感上的表达。&nbsp;</p><p><br></p><p>This use of visual metaphor was inspired by the artist\'s love for poetry, particularly that of Charles Baudelaire, whose theory of \"correspondences\"proclaimed the fundamental equivalence of all things in nature and the capacity of any designated thing to symbolize something beyond itself.&nbsp;</p><p><br></p><p>这种视觉上的隐喻表达是受艺术家对于诗歌热爱的启发，尤其是宣称世上所有事情都有其本质的等同性，并且拥有能够将特定事物引申出超越其本身含义的能力的查尔斯·波德莱尔（Charles Baudelaire）的“对应”理论的启发。</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923476874179411968.jpg\" margin:=\"\" 0px;=\"\" padding:=\"\" box-sizing:=\"\" border-box;=\"\" cursor:=\"\" pointer;=\"\" max-width:=\"\" 100%;\"=\"\" pointer;\"=\"\" class=\"\"><br></p><p style=\"text-align: center;\">&nbsp;(<b>Dusk</b>&nbsp;, 1958 , 153.3 x 122.5 cm)</p><p><br></p><p>By the late 1940s Baziotes achieved his signature formal motif—delicate, semitranslucent, biomorphic shapes suspended within aqueous fields of muted color—which invokes the Baudelairian world of allusion and association.\"The emphasis on flora, fauna and beings,\"explained the artist about his painting, \"brings forth those strange memories and psychic feelings that mystify and fascinate all of us.\"&nbsp;</p><p><br></p><p>到二十世纪四十年代后期，巴齐奥特斯确立了他代表性的创作主题——细腻的，半透明的，悬浮在水域与柔和色彩当中的生物形态，一种对于波德莱尔所提及的世界的理解与展现。 “对于植物、动物以及人的重视，”画家如此解释他的画作，“这当中所产生的奇异的记忆与心灵体验让所有人为之迷惑而又着迷不已。”&nbsp;</p><p><br></p><p>Nancy Spector&nbsp;</p><p>文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。<br></p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923480027763343360.jpg', null, '0', '0', '艺术家：威廉·巴齐奥特斯', '0', '0', '0', ' ', '2017-10-26 17:22:57', null, '905496956341186560');
INSERT INTO `share` VALUES ('923482788240326657', '912526293696774144', '<p><br></p><p>In the early 1940s, Adolph Gottlieb was one of several American artists who responded to the horrors of the Second World War by turning to archaic myth and so-called primitive art.</p><p><br></p><p>&nbsp;阿道夫·戈特利布是20世纪40年代早期，以艺术的方式对第二次世界大战惨烈战况的做出回应的几个艺术家之一，这种艺术方式转向了古代神话意象以及所谓原始艺术。&nbsp;</p><p><br></p><p>His belief in a \"global language of art\" lay behind the series of paintings he initiated in 1941, his Pictographs, which he continued until the end of the next decade.&nbsp;</p><p><br></p><p>戈特利布提倡“全球性艺术语言”信念，这一信念体现于他1941年开始创作的一系列画作之中，这些形象化的信念一直延续到他接下来二十年的创作里。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923481861211062272.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(<span style=\"text-align: left; font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Sleep Mask&nbsp;</b>, 1945 , 65.1 x 50.2 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>In these works, Gottlieb placed hieroglyphic-like and totemlike signs-from body parts, such as eyes and hands, to schematized animals—in the cells of flat, loosely painted grids. The grid format had its immediate antecedent in a group of enigmatic still lifes,featuring objects set into boxes with multiple compartments.&nbsp;</p><p><br></p><p>在他的这些画作里，戈特利布将一些象形文字样和图腾般的标志放置在绘画出来的平坦的、松散的网格中，这些象形文字以及图腾来源于动物的身体部位（例如眼睛与手）或整体形态。 画作的网格在一组组神秘的静物画中显示出来，在多重分隔中，各具特色的对象被分别摆进相应的网格中。</p><p><br></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">Gottlieb\'s paintings underwent another significant transformation in the 1950s, as he abandoned the grid, simplified his forms, and greatly increased the scale of his canvases. In the vertical Bursts he began in 1957, of which Mist (1961) is an example, a diffused, disclike form in the upper zone hovers over an explosion of calligraphic brushstrokes in the lower zone.&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">戈特利布的绘画风格在20世纪50年代出现了一次重大转变，因为他放弃了网格化，简化了绘画形式，大大增加了画布的尺寸。在1957年他开始使用垂直破裂的绘画风格，其中雾（Mist，1961）就是一个例子，画作中，一个散开的圆形悬浮在以书法的笔触绽开的爆破画面的上方。&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923482225029185536.jpg\" style=\"max-width:100%;\" class=\"\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p style=\"text-align: center;\">(<b>&nbsp;</b><span style=\"text-align: left; font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Mist</b> , 1961 , 182.9 x 121.9 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">While the Pictographs merge irrational symbols and an automatist process with the rational, preconceived order of the grid, the Bursts assemble in single canvases the two poles of Abstract Expressionist painting</span>—<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">the so-called Color Field and Action schools of Gottlieb\'s contemporaries—in a tense balance.&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">这幅画作展现的是，当象形文字在自发性的理性中与荒诞的符号相互交融在预想的网格中时，爆炸以抽象表达主义（Gottlieb时代所谓的色域绘画与行为流派）的绘画形式集中在一张画纸的两极，构成了一种紧张的平衡。&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">Ted Mann&nbsp;</span></p><p><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</span></p>', 'http://guide2017.b0.upaiyun.com/share/923482764584452096.jpg', null, '0', '0', '艺术家：阿道夫·戈特利布', '0', '0', '0', ' ', '2017-10-26 17:33:49', null, '905496956341186560');
INSERT INTO `share` VALUES ('923484328145485824', '912526293696774144', '<p><br></p><p>Judit Reigl was born on May 1, 1923, in Kapuvár, Hungary. After studying painting at the Hungarian Academy of Fine Arts, Budapest, between 1941 and 1946, she traveled to Italy as the grantee of the Hungarian Academy, Rome. In October 1948, she returned to Hungary, which had been overtaken by a Soviet-style authoritarian regime.&nbsp;</p><p><br></p><p>朱迪斯·里格尔于1923年5月1日出生在匈牙利考普堡，在1941年到1946年间，里格尔就读于匈牙利首都布达佩斯的匈牙利学院美术专业，之后，在匈牙利学院的资助下，里格尔前往意大利游学。1948年10月份，她回到受苏维埃式的专制政权压迫的匈牙利。&nbsp;</p><p><br></p><p>In 1955, five years after leaving Hungary for Paris where she had been briefly associated with André Breton’s Surrealist group, Judit Reigl began a new series to explore the process of painting as a dynamic and corporeal activity. The resulting works, collectively titled Outburst (Éclatement, 1955–57), feature masses of exploded paint that traverse the surface of the canvas tracing the movements of the artist’s body in action.&nbsp;</p><p><br></p><p>1955年，经过与匈牙利的安德烈·布列塔尼的超现实主义团体五年的简短联系交流后，里格尔开启了一系列对于动态、有形的绘画过程的新探索活动，在这探索中最终完成的作品，共同称起名为爆发，这种创作的特点是能以喷发在画布上的大量颜料的轨迹来研究画家作画时的行为动作。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923483791354265600.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Outburst</b> , 1956 , 136 x 160 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>Painted at the beginning of 1956, Outburst, as the rest of the series, was realized in a single session. Using a stretched canvas, which she tilted against the wall, Reigl worked by hurling a mixture of industrial pigment and linseed oil onto the surface by hand, added a few slabs of extra paint with a long and flexible knife, then broke down the mounds by spreading and flattening them into diagonal bands with a bent curtain rod.&nbsp;</p><p><br></p><p>“爆发”作为这一系列创作当中的末尾部分，被作为一个单独的主题创作于1956年初。里格尔把一个伸展的画布斜靠在墙面上，把颜料与亚麻籽油混合在一起，然后用手抛洒在画布的表面，用一把柔软的长刀加了几层额外的颜料，然后用弯曲的窗帘杆把颜料摊开成为斜角带的样式。&nbsp;</p><p><br></p><p>The lumps of blue, purple, and white pigment thus transformed into gestural streaks refute the gravitational weight of the material and transcribe the spatial-temporal dimensions of the moving body onto the pictorial plane.&nbsp;</p><p><br></p><p>蓝色、紫色和白色颜料的团块因此能克服了材料的重力效应，形成条痕形状，借此将创作者移动时的空间-时间尺寸转录到图形平面上。&nbsp;</p><p><br></p><p>Ágnes Berecz&nbsp;</p><p>文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923484264538865664.jpg', null, '0', '0', '艺术家', '0', '0', '0', ' ', '2017-10-26 17:39:56', null, '905496956341186560');
INSERT INTO `share` VALUES ('923486386303041536', '912526293696774144', '<p><br></p><p>An artist, poet, and typographer, Kurt Schwitters invented his own unique aesthetic style, which he dubbed Merz in 1919.&nbsp;</p><p><br></p><p>作为一位艺术家、诗人兼印刷师，库尔特·施维特斯在1919年发明了他称之为Merz的独特审美风格。&nbsp;</p><p><br></p><p>Premised on the practice of assemblage—the union of sundry quotidian items with formal artistic elements—Merz exemplified Schwitters\'s quest for \"freedom from all fetters,\"cultural, political, or social.&nbsp;</p><p><br></p><p>Merz是库尔特·施维特斯在组合实践的前提下，将各种物品聚集且建立在正式的艺术形式基础上的创作风格，是他在文化、政治以及社会的领域中对于“挣脱所有的束缚”思想的实践例证。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923485593868992512.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">&nbsp;<b>Merzbild</b> , April 26, 1919 , 83.5 x 60.2 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>The artist\'s collages, of which he produced more than 2,000, and his large-scale reliefs known as Merzbilder are kaleidoscopic, sometimes whimsical accretions of humble found material—tram tickets, ration coupons, postage stamps, beer labels, candy wrappers, newspaper clippings, fabric swatches, rusty nails, and the like—that bespeak the flux of contemporary society.&nbsp;</p><p><br></p><p>库尔特·施维特斯创作的拼贴画作品超过了2000幅，而他的大型浮雕则因他的千变万化的Merz风格而为世人所熟知。有时，他会出其不意的在作品上添加一些他能找到的，具有鲜明的当代流行色彩的小物品，如车票、配给券、邮票、啤酒标签、糖果包装纸、剪报、布块、锈钉子等等。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923485945045483520.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(&nbsp;<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Mz 199</b> , 1921 , 17.9 x 14.4 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>In his early collages, such as Mz 163 with Woman, Spraying and Mz 199, Schwitters subjected his bits of flotsam to an organizing principle resembling the vertical scaffolding of Analytic Cubism, thus transforming the diverse components into formal elements. Embedded in each collage, however, are hints of narrative.&nbsp;</p><p><br></p><p>在早期的拼贴画里，如Mz 163 with Woman, Spraying和Mz 199，库尔特·施维特斯以立体分析主义的理念将他一些零碎的物件按照一定的组织规则拼凑成为类似垂直搭手架形态的作品，这些不同的部分也因此转化成为一些形式要件。因为在他每一幅拼贴画里，每一个嵌入的物件的背后都有着它们各自的故事。&nbsp;</p><p><br></p><p>Nancy Spector&nbsp;</p><p>文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923486366426234880.jpg', null, '0', '0', '艺术家：库尔特·施维特斯', '0', '0', '0', ' ', '2017-10-26 17:48:07', null, '905496956341186560');
INSERT INTO `share` VALUES ('923487610398081024', '912526293696774144', '<p><br></p><p>Jules Olitski was born Jevel Demikovski in Snovsk, Soviet Union, on March 27, 1922. In 1923 he immigrated with his mother and grandmother to Brooklyn, New York.&nbsp;</p><p><br></p><p>1922年3月27日，朱尔斯·奥利茨基出生于苏维埃诺夫斯基市的杰夫·德米科夫斯基（Jevel Demikovski）。在1923年，朱尔斯与母亲以及祖母一起移民到了美国纽约的布鲁克林。&nbsp;</p><p><br></p><p>In 1966, while a selection of his spray-gun paintings were on view at the Venice Biennale, Jules Olitski made explicit his unique attitude toward color, writing in a prepared statement: \"Color must be felt throughout.\"&nbsp;</p><p><br></p><p>1966年，在威尼斯双年展上，朱尔斯选择了他以喷枪创作的画作作为展览作品，关于对色彩独特的理解与运用态度，他直率的写下了他的理解：“色彩必须被全然地感知到。”&nbsp;</p><p><br></p><p>A sculptor and Color Field painter who, along with colleagues Helen Frankenthaler, Morris Louis, and Kenneth Noland, was featured in Clement Greenberg\'s landmark 1964 exhibition Post Painterly Abstraction, Olitski devoted a career to experimenting with color, surface, and paint application, producing all-over fields of color via drastically different methods: thick, gestural painting, paint staining, and, most significantly, spraying.&nbsp;</p><p><br></p><p>朱尔斯的艺术生涯始终致力于对色彩的感知观察、对于画面以及颜料的应用上的实验，创造了对于创造全幅画面以及色彩运用方式上完全不同的理念方式：厚涂法、手绘法、颜料染色法，以及最代表性的喷涂绘法。早在1964年，朱尔斯就已作为雕塑家与色彩领域的画家，与同事海伦·弗兰肯塔尔，莫里斯·路易和肯尼斯·诺兰一起参加了克莱门特·格林伯格的Post Painterly Abstraction展览会。&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923487320764612608.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(&nbsp;<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Lysander-1</b> , 1970 , 245.5 x 317 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>Lysander-1 (1970) distills many of the central themes of Olitski’s most mature spray-gun paintings: the tactile, grainy surface caused by the spray technique; the gradual, seamless transition between colors and areas of light and dark; and the elimination of linear drawing from the interior of the picture plane.&nbsp;</p><p><br></p><p>Lysander-1（1970）集中展现了奥尔斯成熟的喷涂技法中最核心的绘画成果：喷涂技法为画面表面带来了奇妙的颗粒触感，颜色之间与亮暗之间的过渡平缓而相互交融，同时也消除了构图时所绘下的线性画面。&nbsp;</p><p><br></p><p>The work\'s palette reflects his use of nonprimary, synthetic colors, which, because of varying densities of spray, appear rough and grainy.&nbsp;</p><p><br></p><p>这幅画作也反映了奥尔斯对于非主要的以及综合颜色的运用方式，因为在颜料调和密度不一样的情况下，喷涂产生的粗糙以及颗粒感的画面效果会有所不同。&nbsp;</p><p><br></p><p>Using the spray technique to create a cloudlike field in which colors overlap and flow through each other, Olitski effectively banishes drawing to the limits of the canvas, where on the left and upper edges, he has left linear elements that create a tension between the immersive space of the color field and the flatness of the picture surface.&nbsp;</p><p><br></p><p>使用喷涂技术创造的云雾状的效果，颜色之间在流动中相互重叠交融，奥尔斯有效的将画面的边界延展至画布最左边以及顶端的边界，在摒弃了线条界限的基础上，创造了一种颜色色域交融与画面表面平整之间的张力。&nbsp;</p><p><br></p><p>文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923487245535576064.jpg', null, '0', '0', '艺术家：朱尔斯·奥利茨基', '0', '0', '0', ' ', '2017-10-26 17:52:59', null, '905496956341186560');
INSERT INTO `share` VALUES ('923488674455257089', '912526293696774144', '<p><br></p><p>Henri-Robert-Marcel Duchamp was born July 28, 1887, near Blainville, France. In 1904, he joined his artist brothers, Jacques Villon and Raymond Duchamp-Villon, in Paris, where he studied painting at the Académie Julian until 1905. Duchamp’s early works were Post-Impressionist in style.&nbsp;</p><p><br></p><p>1887年7月28日，亨利·罗伯特·马塞尔·杜尚出生于法国布兰维尔附近。1904年，他 与他的兄弟雅克·维永 与 雷蒙德·杜尚·维永一起前往法国，并在朱莉安学院学习绘画直到1905年。杜尚前期的作品为后印象派风格。&nbsp;</p><p><br></p><p>This painting(Sad Young Man on a Train), which Marcel Duchamp identified as a self-portrait, was probably begun during December of 1911 in Neuilly, while he was exploring ideas for the controversial Nude Descending a Staircase, No. 2 of 1912.&nbsp;</p><p><br></p><p style=\"text-align: center;\"><img src=\"http://guide2017.b0.upaiyun.com/share/923488195121807360.jpg\" style=\"max-width:100%;\" class=\"\"><br></p><p style=\"text-align: center;\">(&nbsp;<span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><b>Nude (Study), Sad Young Man on a Train</b> , 1911–12 , 100 x 73 cm</span><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\">)</span></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Microsoft Yahei&quot;, &quot;Droid Sans Fallback&quot;, Arial, Helvetica, sans-serif, 宋体;\"><br></span></p><p>1911年12月，马塞尔· 杜尚（Marcel Duchamp）在巴黎纳伊探索后来于1912年创作的画作 《下楼梯的裸女2号（Nude Descending a Staircase, No. 2）》想法的过程中，他创作了后来被他称为自画像的画作《火车上悲伤的年轻人（Sad Young Man on a Train）》。&nbsp;</p><p><br></p><p>In Nude (Study), Sad Young Man on a Train his transitory though acute interest in Cubism is manifested in the subdued palette, emphasis on the flat surface of the picture plane, and in the subordination of representational fidelity to the demands of the abstract composition.&nbsp;</p><p><br></p><p>在上述两部作品的创作中可以看出，他对立体主义尽管短暂但是兴趣浓厚，其中的的原因在于他对立体主义以柔和的色彩进行创作表达、强调画作投影面表面的平整，以及在抽象派创作构成需求中，精确具象派处于从属地位的创作理念的认同。&nbsp;</p><p><br></p><p>Lucy Flint&nbsp;</p><p>文章整理来源于GUGGENHEIM，版权归原作者所有，本文仅作分享交流之用。</p><p><br></p>', 'http://guide2017.b0.upaiyun.com/share/923488654209351680.jpg', null, '0', '0', '艺术家：亨利·罗伯特·马塞尔·杜尚', '0', '0', '0', ' ', '2017-10-26 17:57:12', null, '905496956341186560');
INSERT INTO `share` VALUES ('925269061036769280', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/share/925268361766600704.jpg', null, '0', '0', '测试', '1', '0', '0', '1', '2017-10-31 15:51:49', 'ww', '905496956341186560');
INSERT INTO `share` VALUES ('925269515703517185', '912526293696774144', '<p>adf&nbsp;</p>', 'http://guide2017.b0.upaiyun.com/share/925269399336747008.jpg', null, '0', '0', 'eaw ', '0', '0', '0', 'fa ', '2017-10-31 15:53:38', null, '905497000209412096');
INSERT INTO `share` VALUES ('925269736810446849', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/share/925269727486509056.jpg', null, '0', '0', '1', '0', '0', '0', '1', '2017-10-31 15:54:31', null, '905497000209412096');
INSERT INTO `share` VALUES ('925270355277348865', '912526293696774144', '<p>2</p>', 'http://guide2017.b0.upaiyun.com/share/925270345894690816.jpg', null, '0', '0', '1', '0', '0', '0', '2', '2017-10-31 15:56:58', null, '905497000209412096');
INSERT INTO `share` VALUES ('925306547322511360', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/share/925306511490572288.jpg', null, '0', '0', 'a', '0', '0', '0', '1', '2017-10-02 18:20:30', null, '905497000209412096');
INSERT INTO `share` VALUES ('925308735402889216', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/share/925308722509598720.jpg', null, '0', '0', '1', '0', '0', '0', '1', '2017-10-16 18:29:14', null, '905497000209412096,905496907288801280');
INSERT INTO `share` VALUES ('925310056960970753', '912526293696774144', '<p>2</p>', 'http://guide2017.b0.upaiyun.com/share/925310044625522688.jpg', null, '0', '0', '1', '0', '0', '0', '1', '1970-01-01 08:00:00', null, '905496956341186560');
INSERT INTO `share` VALUES ('925310634726346753', '912526293696774144', '<p>2</p>', 'http://guide2017.b0.upaiyun.com/share/925310614765654016.png', null, '0', '0', '1', '0', '0', '0', '1', '2017-10-09 18:36:47', null, '905497000209412096');
INSERT INTO `share` VALUES ('925311510094368768', '912526293696774144', '<p>1</p>', 'http://guide2017.b0.upaiyun.com/share/925311484567834624.jpg', null, '0', '0', '1', '0', '0', '0', '1', '2017-10-08 18:40:14', null, '905496956341186560,905497000209412096');

-- ----------------------------
-- Table structure for shop_car
-- ----------------------------
DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `user_info_id` varchar(25) CHARACTER SET utf8 DEFAULT '' COMMENT '用户信息id',
  `goods_id` varchar(25) CHARACTER SET utf8 DEFAULT '' COMMENT '商品信息id',
  `goods_count` int(10) unsigned DEFAULT '0' COMMENT '商品数量',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态,0:启用,1:失效',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车';

-- ----------------------------
-- Records of shop_car
-- ----------------------------
INSERT INTO `shop_car` VALUES ('920826432272728064', '912526293696774144', '10000', '3', '1', '2017-10-19 19:41:00');
INSERT INTO `shop_car` VALUES ('920832465260511233', '914086906545950720', '917745705394200577', '11', '1', '2017-10-19 19:22:54');
INSERT INTO `shop_car` VALUES ('920832478233493504', '914086906545950720', '917745705394200577', '1', '1', '2017-10-19 19:22:59');
INSERT INTO `shop_car` VALUES ('920854191470018561', '912526293696774144', '917747595897057282', '1', '1', '2017-10-19 11:28:43');
INSERT INTO `shop_car` VALUES ('920904213410611200', '914086906545950720', '917738121639579648', '1', '1', '2017-10-19 19:46:53');
INSERT INTO `shop_car` VALUES ('920940599629590528', '912526293696774144', '917745705394200577', '3', '1', '2017-10-19 19:29:05');
INSERT INTO `shop_car` VALUES ('921202070441189376', '914086906545950720', '917745705394200576', '1', '1', '2017-10-20 10:31:03');
INSERT INTO `shop_car` VALUES ('921274569732452352', '914086906545950720', '917747595897057282', '1', '1', '2017-10-20 15:19:09');
INSERT INTO `shop_car` VALUES ('921275366176256000', '914086906545950720', '10000', '3', '1', '2017-10-20 15:22:18');
INSERT INTO `shop_car` VALUES ('921275532488798208', '914086906545950720', '917747595897057282', '2', '1', '2017-10-20 15:22:58');
INSERT INTO `shop_car` VALUES ('921275882281168896', '914086906545950720', '917745705394200576', '1', '1', '2017-10-20 15:24:21');
INSERT INTO `shop_car` VALUES ('921277336236650496', '914086906545950720', '917738121639579649', '2', '1', '2017-10-20 15:30:08');
INSERT INTO `shop_car` VALUES ('921277655790747648', '912526293696774144', '907091117674618881', '1', '1', '2017-10-20 15:31:24');
INSERT INTO `shop_car` VALUES ('921277899867222016', '914086906545950720', '917738121639579648', '1', '1', '2017-10-20 15:32:23');
INSERT INTO `shop_car` VALUES ('921279239838261248', '912526293696774144', '917745705394200577', '1', '1', '2017-10-20 15:37:42');
INSERT INTO `shop_car` VALUES ('921279405853007872', '912526293696774144', '917747595897057282', '1', '1', '2017-10-20 15:38:22');
INSERT INTO `shop_car` VALUES ('921279703438876672', '912526293696774144', '917745705394200577', '1', '1', '2017-10-20 15:39:33');
INSERT INTO `shop_car` VALUES ('921279727199608832', '912526293696774144', '917747595897057282', '1', '1', '2017-10-20 15:39:38');
INSERT INTO `shop_car` VALUES ('921285436347801600', '912526293696774144', '917745705394200576', '1', '1', '2017-10-20 16:02:19');
INSERT INTO `shop_car` VALUES ('921299961696612352', '914086906545950720', '917745705394200577', '2', '1', '2017-10-20 17:00:02');
INSERT INTO `shop_car` VALUES ('921299993946615808', '914086906545950720', '917745705394200576', '3', '1', '2017-10-20 17:00:10');
INSERT INTO `shop_car` VALUES ('921301434853617664', '914086906545950720', '917745705394200577', '1', '1', '2017-10-20 17:05:54');
INSERT INTO `shop_car` VALUES ('921301450968133632', '914086906545950720', '917745705394200576', '1', '1', '2017-10-20 17:05:58');
INSERT INTO `shop_car` VALUES ('921301473462185984', '914086906545950720', '917747595897057282', '1', '1', '2017-10-20 17:06:03');
INSERT INTO `shop_car` VALUES ('921645660153851904', '914086906545950720', '917747595897057282', '1', '1', '2017-10-21 15:53:43');
INSERT INTO `shop_car` VALUES ('921664751124164608', '912624472052203520', '917745705394200577', '4', '1', '2017-10-21 17:09:35');
INSERT INTO `shop_car` VALUES ('921665080267976704', '914086906545950720', '917738121639579648', '1', '1', '2017-10-21 17:10:54');
INSERT INTO `shop_car` VALUES ('921665177882013696', '914086906545950720', '917738121639579649', '1', '1', '2017-10-21 17:11:17');
INSERT INTO `shop_car` VALUES ('921673123672174592', '914086906545950720', '917745705394200577', '1', '1', '2017-10-21 17:42:51');
INSERT INTO `shop_car` VALUES ('921674083593170944', '912624472052203520', '917745705394200576', '4', '1', '2017-10-21 17:46:40');
INSERT INTO `shop_car` VALUES ('921674401341059072', '914086906545950720', '917745705394200577', '1', '1', '2017-10-21 17:47:56');
INSERT INTO `shop_car` VALUES ('921675029169647616', '914086906545950720', '917745705394200577', '1', '1', '2017-10-21 17:50:26');
INSERT INTO `shop_car` VALUES ('921675792176459776', '914086906545950720', '917745705394200577', '1', '1', '2017-10-21 17:53:27');
INSERT INTO `shop_car` VALUES ('922428907083345920', '912624472052203520', '917745705394200577', '8', '1', '2017-10-23 19:46:04');
INSERT INTO `shop_car` VALUES ('922429018345648128', '912624472052203520', '917745705394200576', '10', '1', '2017-10-23 19:46:31');
INSERT INTO `shop_car` VALUES ('922435190263984128', '912624472052203520', '917738121639579649', '2', '1', '2017-10-23 20:11:02');
INSERT INTO `shop_car` VALUES ('922435231326220288', '912624472052203520', '917738121639579650', '2', '1', '2017-10-23 20:11:12');
INSERT INTO `shop_car` VALUES ('922435390097403904', '912624472052203520', '917745705394200576', '1', '1', '2017-10-23 20:11:50');
INSERT INTO `shop_car` VALUES ('922435406266445824', '912624472052203520', '917745705394200576', '2', '1', '2017-10-23 20:11:54');
INSERT INTO `shop_car` VALUES ('923522449994158080', '914086906545950720', '917745705394200577', '1', '1', '2017-10-26 20:11:25');
INSERT INTO `shop_car` VALUES ('923522484051906560', '914086906545950720', '917747595897057282', '1', '1', '2017-10-26 20:11:33');
INSERT INTO `shop_car` VALUES ('923522576578252800', '914086906545950720', '917745705394200577', '1', '1', '2017-10-26 20:11:55');
INSERT INTO `shop_car` VALUES ('923522654382592000', '914086906545950720', '917745705394200577', '1', '1', '2017-10-26 20:12:14');
INSERT INTO `shop_car` VALUES ('923743203679592448', '912624472052203520', '917745705394200577', '1', '1', '2017-10-27 10:48:37');
INSERT INTO `shop_car` VALUES ('923844768084008960', '912526293696774144', '917745705394200577', '1', '1', '2017-10-27 17:32:12');
INSERT INTO `shop_car` VALUES ('924100149007949824', '912526293696774144', '917745705394200577', '1', '1', '2017-10-28 10:26:59');
INSERT INTO `shop_car` VALUES ('924100381456277504', '912526293696774144', '917747595897057282', '1', '1', '2017-10-28 10:27:55');
INSERT INTO `shop_car` VALUES ('924100504844312576', '912526293696774144', '917745705394200576', '1', '1', '2017-10-28 10:28:24');
INSERT INTO `shop_car` VALUES ('924100673526636544', '912526293696774144', '917745705394200577', '1', '1', '2017-10-28 10:29:04');
INSERT INTO `shop_car` VALUES ('924101021096026112', '912526293696774144', '917745705394200576', '1', '1', '2017-10-28 10:30:27');
INSERT INTO `shop_car` VALUES ('924101087982592000', '912526293696774144', '917745705394200577', '1', '1', '2017-10-28 10:30:43');
INSERT INTO `shop_car` VALUES ('924102816795009024', '912526293696774144', '917745705394200577', '1', '1', '2017-10-28 10:37:35');
INSERT INTO `shop_car` VALUES ('924103381398659072', '912526293696774144', '917745705394200576', '1', '1', '2017-10-28 10:39:50');
INSERT INTO `shop_car` VALUES ('925634886600003584', '914086906545950720', '917745705394200576', '1', '1', '2017-11-01 16:05:29');
INSERT INTO `shop_car` VALUES ('926008340016816128', '912624472052203520', '917738121639579650', '2', '1', '2017-11-02 16:49:27');
INSERT INTO `shop_car` VALUES ('926010589824704512', '912624472052203520', '917738121639579649', '3', '0', '2017-11-02 16:58:24');
INSERT INTO `shop_car` VALUES ('926010614558515200', '912624472052203520', '917738121639579648', '1', '0', '2017-11-02 16:58:30');

-- ----------------------------
-- Table structure for specification
-- ----------------------------
DROP TABLE IF EXISTS `specification`;
CREATE TABLE `specification` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `specification_name` varchar(25) DEFAULT NULL,
  `describe` varchar(30) DEFAULT NULL,
  `is_select` tinyint(4) DEFAULT NULL,
  `specification_group_id` varchar(25) DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of specification
-- ----------------------------
INSERT INTO `specification` VALUES ('907079256006848510', '色号1', '色号1描述', '0', '917744556964323337', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848511', '色号2', '色号2描述', '0', '917744556964323337', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848512', '色号3', '色号3描述', '0', '917744556964323337', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848513', '规格1', '规格1描述', '0', '917744556964323338', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848514', '规格2', '规格2描述', '0', '917744556964323338', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848515', '型号1', '型号1描述', '0', '917744556964323339', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848516', '型号2', '型号2描述', '0', '917744556964323339', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848517', '规格1', '描述', '0', '917744556964323340', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848518', '体积1', '描述', '0', '917744556964323342', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848519', '尺寸1', '1的描述', '0', '917744556964323341', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848520', '12色收纳桶', '描述', '0', '917744556964323343', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848521', '24色收纳桶', '描述', '0', '917744556964323343', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('907079256006848522', '12色造型桶', '描述', '0', '917744556964323343', '2017-09-11 10:28:26', '0');
INSERT INTO `specification` VALUES ('923810628760522752', '2', null, null, '923810628479504384', '2017-10-27 15:16:32', '0');
INSERT INTO `specification` VALUES ('923810628802465792', '3', null, null, '923810628479504384', '2017-10-27 15:16:32', '0');
INSERT INTO `specification` VALUES ('923813987458502656', '发的说法', null, null, '923813987429142528', '2017-10-27 15:29:53', '0');
INSERT INTO `specification` VALUES ('923814767387832320', 'tsr', null, null, '923814767123591168', '2017-10-27 15:32:59', '0');
INSERT INTO `specification` VALUES ('923814850292445184', 'tsr', null, null, '923814850246307840', '2017-10-27 15:33:19', '0');
INSERT INTO `specification` VALUES ('923825279728635904', '发多少', null, null, '923825279699275776', '2017-10-27 16:14:45', '0');
INSERT INTO `specification` VALUES ('923825715470684160', '发生', null, null, '923825715441324032', '2017-10-27 16:16:29', '0');
INSERT INTO `specification` VALUES ('923835904647237632', '红色', null, null, '923835904617877504', '2017-10-27 16:56:58', '0');
INSERT INTO `specification` VALUES ('923835904659820544', '黄色', null, null, '923835904617877504', '2017-10-27 16:56:58', '0');
INSERT INTO `specification` VALUES ('924207845219082240', '432', null, null, '923845291105325056', '2017-10-28 17:34:56', '0');
INSERT INTO `specification` VALUES ('924207845248442368', '423', null, null, '923845291105325056', '2017-10-28 17:34:56', '0');
INSERT INTO `specification` VALUES ('924815363533717504', '规格1', null, null, '924815363428859904', '2017-10-30 09:49:00', '0');
INSERT INTO `specification` VALUES ('924815363558883328', '规格2', null, null, '924815363428859904', '2017-10-30 09:49:00', '0');
INSERT INTO `specification` VALUES ('924815466566795264', '型号1', null, null, '924815466529046528', '2017-10-30 09:49:24', '0');
INSERT INTO `specification` VALUES ('924815466591961088', '型号2', null, null, '924815466529046528', '2017-10-30 09:49:24', '0');

-- ----------------------------
-- Table structure for specification_group
-- ----------------------------
DROP TABLE IF EXISTS `specification_group`;
CREATE TABLE `specification_group` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格组组名',
  `order` int(11) DEFAULT NULL,
  `describe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of specification_group
-- ----------------------------
INSERT INTO `specification_group` VALUES ('917744556964323337', '色号', '1', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323338', '规格', '3', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323339', '型号', '2', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323340', '规格', '1', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323341', '尺寸', '1', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323342', '体积', '2', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('917744556964323343', '颜色', '1', '描述', '2017-09-11 11:13:38', '0');
INSERT INTO `specification_group` VALUES ('923810628479504384', '11', null, 'asdsd', '2017-10-27 15:16:32', '0');
INSERT INTO `specification_group` VALUES ('923813987429142528', '发的说法', null, '发多少', '2017-10-27 15:29:53', '0');
INSERT INTO `specification_group` VALUES ('923814767123591168', '756', null, 'yrt', '2017-10-27 15:32:59', '0');
INSERT INTO `specification_group` VALUES ('923814850246307840', '756', null, 'yrt', '2017-10-27 15:33:19', '0');
INSERT INTO `specification_group` VALUES ('923825279699275776', '发多少', null, '发多少', '2017-10-27 16:14:45', '0');
INSERT INTO `specification_group` VALUES ('923825715441324032', '发多少', null, '范德萨', '2017-10-27 16:16:29', '0');
INSERT INTO `specification_group` VALUES ('923835904617877504', '颜色', null, '色调', '2017-10-27 16:56:58', '0');
INSERT INTO `specification_group` VALUES ('923845291105325056', 'rwefadf', null, 'fdasfaf000', '2017-10-27 17:34:16', '0');
INSERT INTO `specification_group` VALUES ('924815363428859904', '灰灰规格组', null, '规格组别名呀', '2017-10-30 09:49:00', '0');
INSERT INTO `specification_group` VALUES ('924815466529046528', '灰灰型号', null, '型号别名呀', '2017-10-30 09:49:24', '0');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT '专题id',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否启用 默认0 启用 1 禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `title` text COLLATE utf8_unicode_ci COMMENT '专题描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段',
  `profession_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专业度id',
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专题图标路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='专题';

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('925646875803422722', '0', null, null, 'helloword', null, '907068285578231809', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `subject` VALUES ('925649732871680002', '0', '2017-11-01 17:04:29', '2017-11-01 17:04:29', '', null, '', '');
INSERT INTO `subject` VALUES ('925656989114068993', '0', '2017-11-01 17:33:19', '2017-11-01 17:33:19', '11212', null, '艺术家', 'http://guide2017.b0.upaiyun.com/专题 /925925678933635072.png');
INSERT INTO `subject` VALUES ('925657081774632962', '0', '2017-11-01 17:33:41', '2017-11-01 17:33:41', '1', null, '905496907288801280', 'http://guide2017.b0.upaiyun.com/category/925656976359190528.png');
INSERT INTO `subject` VALUES ('925660224017166338', '0', '2017-11-01 17:46:10', '2017-11-01 17:46:10', 'zxqtest', null, '905496907288801280', 'http://guide2017.b0.upaiyun.com/专题 /925917010209042432.png');
INSERT INTO `subject` VALUES ('925660291331551234', '0', '2017-11-01 17:46:26', '2017-11-01 17:46:26', 'zxq', null, '905496956341186560', 'http://guide2017.b0.upaiyun.com/专题 /925917093591805952.png');
INSERT INTO `subject` VALUES ('925660505157169154', '0', '2017-11-01 17:47:17', '2017-11-01 17:47:17', '撒打算打算', '1', '905497000209412096', 'http://guide2017.b0.upaiyun.com/专题 /925914295114428416.jpg');
INSERT INTO `subject` VALUES ('925660690469261314', '0', null, null, '似懂非懂', null, '', '');
INSERT INTO `subject` VALUES ('925660763664060417', '0', null, null, '似懂非懂', null, '', '');
INSERT INTO `subject` VALUES ('925667645892591617', '0', '2017-11-01 18:15:40', '2017-11-02 13:57:12', '6661117772', '4', '艺考生', 'http://guide2017.b0.upaiyun.com/专题 /925964635230728192.png');
INSERT INTO `subject` VALUES ('925914956996571138', '0', '2017-11-02 10:38:23', '2017-11-02 10:38:23', '新添加编辑22233333', null, '艺术家', 'http://guide2017.b0.upaiyun.com/专题 /925915568681283584.png');
INSERT INTO `subject` VALUES ('925932192364101634', '0', '2017-11-02 11:46:52', '2017-11-02 13:57:19', 'helloword02', '2', '艺术家', null);
INSERT INTO `subject` VALUES ('925932192674480129', '0', '2017-11-02 11:46:52', '2017-11-02 11:46:52', 'helloword1', '2', '905496907288801280', null);
INSERT INTO `subject` VALUES ('925932192930332674', '0', '2017-11-02 11:46:52', '2017-11-02 11:46:52', 'helloword2', '2', '905496907288801280', null);
INSERT INTO `subject` VALUES ('925932193177796609', '0', '2017-11-02 11:46:52', '2017-11-02 11:46:52', 'helloword3', '2', '905496907288801280', null);
INSERT INTO `subject` VALUES ('925932309846683649', '0', '2017-11-02 11:47:20', '2017-11-02 11:47:20', 'helloword0', '2', '905497000209412096', null);
INSERT INTO `subject` VALUES ('925932310165450754', '0', '2017-11-02 11:47:20', '2017-11-02 11:47:20', 'helloword1', '2', '905497000209412096', null);
INSERT INTO `subject` VALUES ('925932310417108994', '0', '2017-11-02 11:47:20', '2017-11-02 11:47:20', 'helloword2', '2', '905497000209412096', null);
INSERT INTO `subject` VALUES ('925932310651990017', '0', '2017-11-02 11:47:21', '2017-11-02 13:57:34', '发的发', '2', '艺考生', null);

-- ----------------------------
-- Table structure for subject_list
-- ----------------------------
DROP TABLE IF EXISTS `subject_list`;
CREATE TABLE `subject_list` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否禁用 0正常 1禁用',
  `subject_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专题id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `first` tinyint(4) DEFAULT '0' COMMENT '第一篇排序 0默认 1 为首篇',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of subject_list
-- ----------------------------
INSERT INTO `subject_list` VALUES ('925932192481542145', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192364101634', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192536068097', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192364101634', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192582205442', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192364101634', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192628342786', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192364101634', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192703840257', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192674480129', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192749977602', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192674480129', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192825475073', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192674480129', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192880001026', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192674480129', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932192963887105', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192930332674', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193014218753', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192930332674', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193060356098', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192930332674', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193119076354', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932192930332674', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193202962433', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932193177796609', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193249099777', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932193177796609', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193295237122', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932193177796609', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932193353957377', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932193177796609', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932309955735553', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932309846683649', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310010261506', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932309846683649', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310068981761', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932309846683649', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310115119106', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932309846683649', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310194810881', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310165450754', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310249336834', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310165450754', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310299668481', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310165450754', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310358388738', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310165450754', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310450663426', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310417108994', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310496800770', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310417108994', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310547132418', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310417108994', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310593269761', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310417108994', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310681350145', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310651990017', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310735876097', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310651990017', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310786207746', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310651990017', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925932310832345090', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg', '0', '925932310651990017', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '0', '每一天都是活力满满', '0');
INSERT INTO `subject_list` VALUES ('925938708559982594', null, '0', '', '2017-11-02 12:12:46', '2017-11-02 12:12:46', null, null, '0');
INSERT INTO `subject_list` VALUES ('925965295405789186', null, '0', '', '2017-11-02 13:58:25', '2017-11-02 13:58:25', null, null, '0');
INSERT INTO `subject_list` VALUES ('925977307603038209', null, '0', '925667645892591617', '2017-11-02 14:46:09', '2017-11-02 14:46:09', null, null, '0');

-- ----------------------------
-- Table structure for subject_list_detail
-- ----------------------------
DROP TABLE IF EXISTS `subject_list_detail`;
CREATE TABLE `subject_list_detail` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci COMMENT '描述',
  `goods_id` text COLLATE utf8_unicode_ci COMMENT '推荐的商品信息多个用，分割',
  `subject_list_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应着列表的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of subject_list_detail
-- ----------------------------
INSERT INTO `subject_list_detail` VALUES ('925932192506707969', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192481542145');
INSERT INTO `subject_list_detail` VALUES ('925932192557039617', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192536068097');
INSERT INTO `subject_list_detail` VALUES ('925932192607371265', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192582205442');
INSERT INTO `subject_list_detail` VALUES ('925932192649314306', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192628342786');
INSERT INTO `subject_list_detail` VALUES ('925932192729006081', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192703840257');
INSERT INTO `subject_list_detail` VALUES ('925932192791920642', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192749977602');
INSERT INTO `subject_list_detail` VALUES ('925932192854835202', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192825475073');
INSERT INTO `subject_list_detail` VALUES ('925932192909361154', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192880001026');
INSERT INTO `subject_list_detail` VALUES ('925932192993247233', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932192963887105');
INSERT INTO `subject_list_detail` VALUES ('925932193039384578', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193014218753');
INSERT INTO `subject_list_detail` VALUES ('925932193081327617', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193060356098');
INSERT INTO `subject_list_detail` VALUES ('925932193156825090', '2017-11-02 11:46:52', '2017-11-02 11:46:52', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193119076354');
INSERT INTO `subject_list_detail` VALUES ('925932193223933953', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193202962433');
INSERT INTO `subject_list_detail` VALUES ('925932193274265602', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193249099777');
INSERT INTO `subject_list_detail` VALUES ('925932193316208642', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193295237122');
INSERT INTO `subject_list_detail` VALUES ('925932193374928898', '2017-11-02 11:46:53', '2017-11-02 11:46:53', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932193353957377');
INSERT INTO `subject_list_detail` VALUES ('925932309980901377', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932309955735553');
INSERT INTO `subject_list_detail` VALUES ('925932310039621633', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310010261506');
INSERT INTO `subject_list_detail` VALUES ('925932310089953281', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310068981761');
INSERT INTO `subject_list_detail` VALUES ('925932310140284929', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310115119106');
INSERT INTO `subject_list_detail` VALUES ('925932310219976706', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310194810881');
INSERT INTO `subject_list_detail` VALUES ('925932310274502657', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310249336834');
INSERT INTO `subject_list_detail` VALUES ('925932310333222913', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310299668481');
INSERT INTO `subject_list_detail` VALUES ('925932310387748866', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310358388738');
INSERT INTO `subject_list_detail` VALUES ('925932310471634945', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310450663426');
INSERT INTO `subject_list_detail` VALUES ('925932310521966593', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310496800770');
INSERT INTO `subject_list_detail` VALUES ('925932310563909634', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310547132418');
INSERT INTO `subject_list_detail` VALUES ('925932310622629889', '2017-11-02 11:47:20', '2017-11-02 11:47:20', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310593269761');
INSERT INTO `subject_list_detail` VALUES ('925932310710710274', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310681350145');
INSERT INTO `subject_list_detail` VALUES ('925932310761041921', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310735876097');
INSERT INTO `subject_list_detail` VALUES ('925932310811373570', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310786207746');
INSERT INTO `subject_list_detail` VALUES ('925932310857510913', '2017-11-02 11:47:21', '2017-11-02 11:47:21', '<p><img src=\"http://guide2017.b0.upaiyun.com/share/923362575876476928.png\" style=\"max-width:100%;\"><br></p>', '907091117674618881,917738121639579648', '925932310832345090');
INSERT INTO `subject_list_detail` VALUES ('925938708778086401', '2017-11-02 12:12:46', '2017-11-02 12:12:46', '', '', null);
INSERT INTO `subject_list_detail` VALUES ('925965295435149313', '2017-11-02 13:58:25', '2017-11-02 13:58:25', '', '', null);
INSERT INTO `subject_list_detail` VALUES ('925977307628204033', '2017-11-02 14:46:09', '2017-11-02 14:46:09', '', '1', null);

-- ----------------------------
-- Table structure for trade
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
  `id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `user_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户id',
  `logistics_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '物流信息',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `actual_price` decimal(10,2) DEFAULT NULL COMMENT '实际需付款金额',
  `express_fee` decimal(10,2) DEFAULT NULL COMMENT '快递费',
  `status` int(11) DEFAULT NULL COMMENT '订单状态(0:待付款,1:待发货,2:待收货,3:待评价,4:已完成,5:交易关闭,6退货中,7:退款中,8:退款成功)',
  `is_valid` int(10) DEFAULT '0' COMMENT '是否有效',
  `valid_msg` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效原因',
  `valid_time` datetime DEFAULT NULL COMMENT '失效时间',
  `deliver_goods_time` datetime DEFAULT NULL COMMENT '发货时间',
  `arrival_goods_time` datetime DEFAULT NULL COMMENT '到货时间',
  `createdtime` datetime DEFAULT NULL COMMENT '订单创建时间',
  `message` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '买家留言',
  `receiver` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人',
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `address` text CHARACTER SET utf8 COMMENT '收货地址',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `mail` int(11) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单信息';

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('913196038631202816', '912520034942283776', null, '121.00', '121.00', '10.00', '5', '0', null, '2017-10-03 10:36:21', null, null, '2017-09-28 08:17:57', null, null, null, null, null, null);
INSERT INTO `trade` VALUES ('913217872672161792', '912520034942283776', null, '130.00', '130.00', '10.00', '5', '0', null, '2017-10-03 10:36:21', null, null, '2017-09-28 09:44:42', null, null, null, null, null, null);
INSERT INTO `trade` VALUES ('913218257579245568', '912520034942283776', null, '120.00', '120.00', '0.00', '5', '0', null, '2017-10-03 10:36:21', null, null, '2017-09-28 09:46:14', null, null, null, null, null, null);
INSERT INTO `trade` VALUES ('913218477448876032', '912520034942283776', null, '0.02', '0.02', '0.00', '5', '0', null, '2017-10-03 10:36:21', null, null, '2017-09-28 09:47:06', null, null, null, null, null, null);
INSERT INTO `trade` VALUES ('913410003550445568', '912520034942283776', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:21', null, null, '2017-09-28 22:28:10', null, '2', '4', '65678', '0', '9');
INSERT INTO `trade` VALUES ('913437162159517696', '912520034942283776', null, '0.02', '0.02', '0.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-29 00:16:05', null, '2', '4', '65678', '0', '9');
INSERT INTO `trade` VALUES ('ZF201709301507427390289', '912520034942283776', null, '0.00', '0.00', '0.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-30 15:07:43', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201709301536030879846', '912520034942283776', null, '180.00', '180.00', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-30 15:36:03', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201709301604271587948', '912520034942283776', null, '180.00', '180.00', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-30 16:04:27', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201709301607401211049', '912520034942283776', null, '180.00', '180.00', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-30 16:07:40', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201709301614268699255', '912520034942283776', null, '180.00', '180.00', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-09-30 16:14:27', '测试', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710011240360792781', '912520034942283776', null, '20.04', '20.04', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-10-01 12:40:36', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710011244318379520', '912520034942283776', null, '20.04', '20.04', '20.00', '5', '0', null, '2017-10-03 10:36:22', null, null, '2017-10-01 12:44:32', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710011251090769876', '912520034942283776', null, '0.01', '0.01', '0.00', '1', '0', null, null, null, null, '2017-10-01 12:51:09', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710011311570229263', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 13:11:57', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011919181592728', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:19:18', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011921421770575', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:21:42', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011923380794341', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:23:38', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011926441442853', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:26:44', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011930050496045', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:30:05', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011931502309774', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:31:50', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011936548969882', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:36:55', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710011951384138569', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:51:38', null, '姚', '1333333', '地区街道详细地址', '备注', '11111');
INSERT INTO `trade` VALUES ('ZF201710011958060950941', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:23', null, null, '2017-10-01 19:58:06', null, '姚', '1333333', '地区街道详细地址', '备注', '11111');
INSERT INTO `trade` VALUES ('ZF201710012002291447471', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, '2017-10-03 10:36:24', null, null, '2017-10-01 20:02:29', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710012010095777568', '912526293696774144', null, '0.04', '0.04', '0.00', '1', '0', null, null, null, null, '2017-10-02 20:00:10', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710012013456913753', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:24', null, null, '2017-10-01 20:13:46', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710020017588981058', '912526293696774144', null, '0.01', '0.01', '0.00', '1', '0', null, null, null, null, '2017-10-02 00:17:59', null, '姚', '1333333', '地区街道详细地址', '备注', '11111');
INSERT INTO `trade` VALUES ('ZF201710021712471935884', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:24', null, null, '2017-10-02 17:12:47', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710021718132208364', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, '2017-10-03 10:36:24', null, null, '2017-10-02 19:40:13', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710021754117696103', '912526293696774144', null, '0.01', '0.01', '0.00', '1', '0', null, null, null, null, '2017-10-02 17:54:12', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710030950090376937', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '1', '测试删除', '2017-10-03 22:09:31', null, null, '2017-10-03 10:45:09', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040051509483153', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 00:51:51', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040056203383789', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 00:56:20', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040110216347764', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 01:10:22', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040153308225416', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 01:53:31', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040159030107587', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 01:59:03', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710040202026621265', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 02:02:03', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710041350433745590', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-04 13:50:43', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710041503065017981', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-04 15:03:07', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710041507132530455', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-04 15:07:13', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710091135300260460', '912526293696774144', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-09 11:35:30', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710091136520112678', '912526293696774144', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-09 11:36:52', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710091138005556851', '912526293696774144', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-09 11:38:01', null, '姚', '111', '地区街道详细地址', '备注', '111');
INSERT INTO `trade` VALUES ('ZF201710101502044991358', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-10 15:02:04', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710101504183499232', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-10 15:04:18', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710102158476952913', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-10 21:58:48', null, '姚', '1333333', '地区街道详细地址', '备注', '11111');
INSERT INTO `trade` VALUES ('ZF201710111816530716786', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-11 18:16:53', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710111833054133470', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-11 18:33:05', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710111837140483610', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-11 18:37:14', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710121635510342952', '912526293696774144', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-12 16:35:51', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710121643145472474', '912526293696774144', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-12 16:43:15', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710121647330603363', '912526293696774144', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-12 16:47:33', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710131734085408751', '914086906545950720', null, '0.06', '0.06', '0.00', '5', '0', null, null, null, null, '2017-10-13 17:34:09', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710131736157777327', '914086906545950720', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-13 17:36:16', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710141120085403024', '914086906545950720', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-14 11:20:09', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710160921063999922', '914086906545950720', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-16 09:21:06', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710161123000591409', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-16 11:23:00', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710161123125047631', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-16 11:23:13', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710161748472957980', '914086906545950720', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-16 17:48:47', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710161830410833430', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-16 18:30:41', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710191747588515741', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-19 17:47:59', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710191926032359276', '912526293696774144', null, '0.06', '0.06', '0.00', '5', '0', null, null, null, null, '2017-10-19 19:26:03', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710191927207077727', '912526293696774144', null, '0.06', '0.06', '0.00', '5', '0', null, null, null, null, '2017-10-19 19:27:21', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710191931338244290', '912526293696774144', null, '0.06', '0.06', '0.00', '5', '0', null, null, null, null, '2017-10-19 19:31:34', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710192029185073586', '912526293696774144', null, '0.03', '0.03', '0.00', '5', '1', '', '2017-10-19 20:33:02', null, null, '2017-10-19 20:29:19', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710192101384099514', '912526293696774144', null, '0.05', '0.05', '0.00', '5', '0', null, null, null, null, '2017-10-19 21:01:38', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710200958153015531', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-20 09:58:15', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710201006474923280', '914086906545950720', null, '0.16', '0.16', '0.00', '5', '1', '用户主动删除订单', '2017-10-20 16:44:47', null, null, '2017-10-20 10:06:47', 'are you kiding me?', '我是', '13142761714', '北京市北京市东城区362508dsh撒村', '', '3625089');
INSERT INTO `trade` VALUES ('ZF201710201519201677216', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '1', '', '2017-10-20 16:35:40', null, null, '2017-10-20 15:19:20', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201519552203478', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '1', '', '2017-10-20 16:34:06', null, null, '2017-10-20 15:19:55', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201537264603772', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-20 15:37:26', 'are you kiding me?', 'Gas', '123456789009', '北京市北京市东城区As 12324asdfds', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201538397514855', '912526293696774144', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-20 15:38:40', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201650554167546', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-20 16:50:55', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710201652472019127', '914086906545950720', null, '0.23', '0.23', '0.00', '5', '0', null, null, null, null, '2017-10-20 16:52:47', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201653339590019', '914086906545950720', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-20 16:53:34', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201656594167425', '914086906545950720', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-20 16:56:59', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201700277668703', '914086906545950720', null, '0.03', '0.03', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:00:28', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201703232482832', '914086906545950720', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:03:23', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201703580511774', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:03:58', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710201704012814841', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:04:01', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710201706121199837', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:06:12', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201707392598293', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-20 17:07:39', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710201710157766813', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '1', '用户主动删除订单', '2017-10-20 17:10:51', null, null, '2017-10-20 17:10:16', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710201812164224693', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-20 18:12:16', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710201814384921942', '912624472052203520', null, '0.02', '0.02', '0.00', '1', '0', null, null, null, null, '2017-10-20 18:14:38', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710211029432509713', '914086906545950720', null, '0.02', '0.02', '0.00', '3', '0', null, null, null, null, '2017-10-21 10:29:43', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710211035443336652', '914086906545950720', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-21 10:35:44', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710231123591027231', '912526293696774144', null, '0.01', '0.01', '0.00', '1', '0', null, null, null, null, '2017-10-23 11:23:59', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710241443267559097', '912624472052203520', null, '0.04', '0.04', '0.00', '1', '0', null, null, null, null, '2017-10-24 14:43:27', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241443274948753', '912624472052203520', null, '0.04', '0.04', '0.00', '2', '0', null, null, null, null, '2017-10-24 14:43:27', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241623480644631', '912526293696774144', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-24 16:23:48', null, 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '0', '9');
INSERT INTO `trade` VALUES ('ZF201710241629409272586', '912624472052203520', null, '0.12', '0.12', '0.00', '5', '0', null, null, null, null, '2017-10-24 16:29:41', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241630141083106', '912624472052203520', null, '0.12', '0.12', '0.00', '5', '0', null, null, null, null, '2017-10-24 16:30:14', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241630158744563', '912624472052203520', null, '0.12', '0.12', '0.00', '5', '0', null, null, null, null, '2017-10-24 16:30:16', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241632291582848', '912624472052203520', null, '0.12', '0.12', '0.00', '5', '0', null, null, null, null, '2017-10-24 16:32:29', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710241708098189781', '912624472052203520', null, '0.04', '0.04', '0.00', '5', '0', null, null, null, null, '2017-10-24 17:08:10', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710251434086863680', '914086906545950720', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-25 14:34:09', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710261504502499555', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-26 15:04:50', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710261625426607488', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-26 16:25:43', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710261631369868746', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-26 16:31:37', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710262057082741776', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-26 20:57:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710270930389191764', '914086906545950720', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 09:30:39', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710270957522429393', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 09:57:52', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271049082224934', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-27 10:49:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271053503269072', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-27 10:53:50', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271147518567313', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-27 11:47:52', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271151573359867', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 11:51:57', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271154076236295', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 11:54:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271159488707999', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 11:59:49', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271323073463107', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:23:07', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271323080108886', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:23:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271339241776567', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:39:24', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271344410965513', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:44:41', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271344416498213', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:44:42', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271351124288250', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:51:12', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271355510467767', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 13:55:51', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271401388692974', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 14:01:39', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271404043763352', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 14:04:04', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271525422834012', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:25:42', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271527076747592', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:27:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271535284519060', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:35:28', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271540131440490', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:40:13', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271544064242188', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:44:06', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271545035549766', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:45:04', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271545588889269', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:45:59', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271545592537299', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:45:59', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271545594264121', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:45:59', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271545596023575', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 15:46:00', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271600318953386', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:00:32', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271601300487641', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:01:30', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271608314729190', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:08:31', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271612267048568', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:12:27', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271613311250645', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:13:31', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271613483512679', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:13:48', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271614309764336', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:14:31', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271614517630967', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:14:52', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271615572685327', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:15:57', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271617508241173', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 16:17:51', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710271709018860218', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:09:02', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271714446152085', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:14:45', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271727234942192', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:27:23', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271731179772655', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:31:18', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271738598479644', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:39:00', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271759184273697', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 17:59:18', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710271807469635184', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-27 18:07:47', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710300949279470798', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-30 09:49:28', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710301421241722419', '912624472052203520', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-30 14:21:24', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710301431077914548', '912624472052203520', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-30 14:31:08', null, '小尧', '13838696425', '江苏省南京市玄武区给我们泼墨先下手为强', null, '65828');
INSERT INTO `trade` VALUES ('ZF201710311418482499379', '912526293696774144', null, '0.01', '0.01', '0.00', '5', '0', null, null, null, null, '2017-10-31 14:18:48', 'are you kiding me?', 'Gsk', '17606037017', '福建省泉州市德化县瓷城花园56栋', '', '518000');
INSERT INTO `trade` VALUES ('ZF201710312023098963180', '914086906545950720', null, '0.02', '0.02', '0.00', '5', '0', null, null, null, null, '2017-10-31 20:23:10', 'are you kiding me?', 'gsk', '17606037018', '广东省深圳市南山区粤海街道你猜我在哪', '', '518000');

-- ----------------------------
-- Table structure for trade_particular
-- ----------------------------
DROP TABLE IF EXISTS `trade_particular`;
CREATE TABLE `trade_particular` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trade_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '订单表id',
  `goods_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名',
  `specification` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格',
  `count` int(10) unsigned DEFAULT NULL COMMENT '数量',
  `actual_price` decimal(10,2) DEFAULT NULL COMMENT '单个价格',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  `status_msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态消息',
  `createdtime` datetime DEFAULT NULL COMMENT '创建时间',
  `picture` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单商品明细表';

-- ----------------------------
-- Records of trade_particular
-- ----------------------------
INSERT INTO `trade_particular` VALUES ('913196205757440000', null, '10000', null, '', '2', '121.00', null, null, '2017-09-28 08:18:36', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('913217872907042816', '913217872672161792', '10001', null, '', '2', '130.00', null, null, '2017-09-28 09:44:42', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('913218257684103168', '913218257579245568', '10001', null, '', '2', '120.00', null, null, '2017-09-28 09:46:14', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('913218477708922880', '913218477448876032', '10002', null, '', '2', '0.02', null, null, '2017-09-28 09:47:07', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('913410109653753856', '913410003550445568', '10002', '马利牌01170油画颜料', '色号3,规格2,型号2', '1', '0.01', '0', null, '2017-09-28 22:28:35', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('913437162507644928', '913437162159517696', '10002', '马利牌01170油画颜料', '色号3,规格2,型号2', '2', '0.02', '0', null, '2017-09-29 00:16:05', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914032158990426112', 'ZF201709301536030879846', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '180.00', '0', null, '2017-09-30 15:40:23', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914032173590798336', 'ZF201709301536030879846', '10003', '中华毛笔', '规格1', '1', '180.00', '0', null, '2017-09-30 15:40:27', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914038398466498560', 'ZF201709301604271587948', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '100.00', '0', null, '2017-09-30 16:05:11', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914038417202454528', 'ZF201709301604271587948', '10003', '中华毛笔', '规格1', '1', '60.00', '0', null, '2017-09-30 16:05:15', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914039060499636224', 'ZF201709301607401211049', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '100.00', '0', null, '2017-09-30 16:07:49', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914039060583522304', 'ZF201709301607401211049', '10003', '中华毛笔', '规格1', '1', '60.00', '0', null, '2017-09-30 16:07:49', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914040730705043456', 'ZF201709301614268699255', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '100.00', '0', null, '2017-09-30 16:14:27', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914040730776346624', 'ZF201709301614268699255', '10003', '中华毛笔', '规格1', '1', '60.00', '0', null, '2017-09-30 16:14:27', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914349302328348672', 'ZF201710011240360792781', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 12:40:36', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914349302403846144', 'ZF201710011240360792781', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 12:40:36', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914350291164971008', 'ZF201710011244318379520', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 12:44:32', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914350291257245696', 'ZF201710011244318379520', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 12:44:32', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914351957255766016', 'ZF201710011251090769876', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-01 12:51:09', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914357191513845760', 'ZF201710011311570229263', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 13:11:57', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914357191551594496', 'ZF201710011311570229263', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 13:11:57', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914449638738694144', 'ZF201710011919181592728', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:19:18', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914449638772248576', 'ZF201710011919181592728', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:19:18', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914450242714275840', 'ZF201710011921421770575', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:21:42', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914450242752024576', 'ZF201710011921421770575', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:21:42', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914450728846692352', 'ZF201710011923380794341', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:23:38', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914450728880246784', 'ZF201710011923380794341', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:23:38', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914451509251477504', 'ZF201710011926441442853', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:26:44', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914451509285031936', 'ZF201710011926441442853', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:26:44', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914452351916511232', 'ZF201710011930050496045', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:30:05', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914452351941677056', 'ZF201710011930050496045', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:30:05', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914452793106960384', 'ZF201710011931502309774', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:31:50', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914452793165680640', 'ZF201710011931502309774', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:31:50', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914454070939422720', 'ZF201710011936548969882', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 19:36:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914454070972977152', 'ZF201710011936548969882', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 19:36:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914457776819400704', 'ZF201710011951384138569', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-01 19:51:38', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914459402730278912', 'ZF201710011958060950941', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-01 19:58:06', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914460506104799232', 'ZF201710012002291447471', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 20:02:29', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914460506146742272', 'ZF201710012002291447471', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 20:02:29', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914462437237858304', 'ZF201710012010095777568', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-01 20:10:10', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914462437271412736', 'ZF201710012010095777568', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-01 20:10:10', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914463343727616000', 'ZF201710012013456913753', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-01 20:13:46', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914524803686211584', 'ZF201710020017588981058', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-02 00:17:59', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914780187776778240', 'ZF201710021712471935884', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-02 17:12:47', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914781555166019584', 'ZF201710021718132208364', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-02 17:18:13', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('914790608930451456', 'ZF201710021754117696103', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-02 17:54:12', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915031182698729472', 'ZF201710030950090376937', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-03 09:50:09', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915258116120514560', 'ZF201710040051509483153', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 00:51:54', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915259043225276416', 'ZF201710040051509483153', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 00:55:35', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915262787165884416', 'ZF201710040110216347764', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 01:10:28', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915262885983686656', 'ZF201710040110216347764', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 01:10:51', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915273957490941952', 'ZF201710040153308225416', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 01:54:51', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915274397649592320', 'ZF201710040153308225416', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 01:56:36', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915275014283464704', 'ZF201710040159030107587', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 01:59:03', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915275014358962176', 'ZF201710040159030107587', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 01:59:03', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915275767781908480', 'ZF201710040202026621265', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 02:02:03', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915275767853211648', 'ZF201710040202026621265', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 02:02:03', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915454161291169792', 'ZF201710041350433745590', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-04 13:50:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915454161370861568', 'ZF201710041350433745590', '10003', '中华毛笔', '规格1', '2', '0.02', '0', null, '2017-10-04 13:50:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915472328886882304', 'ZF201710041503065017981', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-04 15:03:07', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('915473363802034176', 'ZF201710041507132530455', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-04 15:07:13', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232123401252864', 'ZF201710091135300260460', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-09 11:35:54', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232232646094848', 'ZF201710091135300260460', '10003', '中华毛笔', '规格1', '1', '0.01', '0', null, '2017-10-09 11:36:20', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232494462939136', 'ZF201710091136520112678', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.02', '0', null, '2017-10-09 11:37:23', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232596862676992', 'ZF201710091136520112678', '10003', '中华毛笔', '规格1', '1', '0.01', '0', null, '2017-10-09 11:37:47', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232699900026880', 'ZF201710091138005556851', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-09 11:38:12', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917232747123695616', 'ZF201710091138005556851', '10003', '中华毛笔', '规格1', '1', '0.01', '0', null, '2017-10-09 11:38:23', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917646396050485248', 'ZF201710101502044991358', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-10 15:02:05', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917646957390966784', 'ZF201710101504183499232', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-10 15:04:18', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('917751270119841792', 'ZF201710102158476952913', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-10 21:58:48', '/test/2017.9.10/微信图片_20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('918057809369681920', 'ZF201710111816530716786', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-11 18:16:53', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('918061887571152896', 'ZF201710111833054133470', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-11 18:33:05', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('918062930455482368', 'ZF201710111837140483610', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '1', '0.01', '0', null, '2017-10-11 18:37:14', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('918394771205013504', 'ZF201710121635510342952', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-12 16:35:51', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('918396631336894464', 'ZF201710121643145472474', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-12 16:43:15', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('918397715698688000', 'ZF201710121647330603363', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-12 16:47:33', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('918771828636262400', 'ZF201710131734085408751', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '3', '0.02', '0', null, '2017-10-13 17:34:09', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('918772362244005888', 'ZF201710131736157777327', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-13 17:36:16', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('919040096362160128', 'ZF201710141120085403024', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-14 11:20:09', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('919734915749240832', 'ZF201710160921063999922', '917747595897057282', '青竹电动橡皮擦', 'null', '3', '0.01', '0', null, '2017-10-16 09:21:06', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('919765591437467648', 'ZF201710161123000591409', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-16 11:23:00', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('919765643635580928', 'ZF201710161123125047631', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-16 11:23:13', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('919862678015467520', 'ZF201710161748472957980', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-16 17:48:47', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('919873221606514688', 'ZF201710161830410833430', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-16 18:30:41', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('920949638444355584', 'ZF201710191747588515741', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-19 17:47:59', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('920974324224614400', 'ZF201710191926032359276', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-19 19:26:04', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('920974326435012608', 'ZF201710191926032359276', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-19 19:26:05', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('920974644837212160', 'ZF201710191927207077727', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-19 19:27:21', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('920974645063704576', 'ZF201710191927207077727', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-19 19:27:21', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('920975707807952896', 'ZF201710191931338244290', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-19 19:31:34', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('920975709619892224', 'ZF201710191931338244290', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-19 19:31:35', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('920990241608273920', 'ZF201710192029185073586', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-19 20:29:19', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('920990268657340416', 'ZF201710192029185073586', '10003', '中华毛笔', '规格1', '1', '0.01', '0', null, '2017-10-19 20:29:26', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('920998374430752768', 'ZF201710192101384099514', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-19 21:01:38', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('920998374510444544', 'ZF201710192101384099514', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-19 21:01:38', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('921193815891513344', 'ZF201710200958153015531', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-20 09:58:15', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921195964125941760', 'ZF201710201006474923280', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '7', '0.02', '0', null, '2017-10-20 10:06:47', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921195964188856320', 'ZF201710201006474923280', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 10:06:48', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921274618604482560', 'ZF201710201519201677216', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-20 15:19:20', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('921274765572894720', 'ZF201710201519552203478', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-20 15:19:55', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921279174868492288', 'ZF201710201537264603772', '907091117674618881', '中华铅笔', '尺寸1,体积1', '1', '0.01', '0', null, '2017-10-20 15:37:26', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('921279482189340672', 'ZF201710201538397514855', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 15:38:40', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921279482218700800', 'ZF201710201538397514855', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-20 15:38:40', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('921297667349409792', 'ZF201710201650554167546', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-20 16:50:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('921297667382964224', 'ZF201710201650554167546', '10003', '中华毛笔', '规格1', '2', '0.01', '0', null, '2017-10-20 16:50:55', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('921298136155156480', 'ZF201710201652472019127', '917738121639579648', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色收纳桶', '1', '0.01', '0', null, '2017-10-20 16:52:47', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('921298136184516608', 'ZF201710201652472019127', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '11', '0.02', '0', null, '2017-10-20 16:52:47', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921298332272422912', 'ZF201710201653339590019', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-20 16:53:34', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921298332297588736', 'ZF201710201653339590019', '917747595897057282', '青竹电动橡皮擦', 'null', '2', '0.01', '0', null, '2017-10-20 16:53:34', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('921299194017345536', 'ZF201710201656594167425', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '3', '0.01', '0', null, '2017-10-20 16:56:59', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('921300067904778240', 'ZF201710201700277668703', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '3', '0.01', '0', null, '2017-10-20 17:00:28', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921300803925438464', 'ZF201710201703232482832', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-20 17:03:23', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921300949895606272', 'ZF201710201703580511774', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 17:03:58', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921300963443208192', 'ZF201710201704012814841', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 17:04:01', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921301512221749248', 'ZF201710201706121199837', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-20 17:06:12', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921301877725982720', 'ZF201710201707392598293', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 17:07:39', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921302534226833408', 'ZF201710201710157766813', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-20 17:10:16', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('921318139713679360', 'ZF201710201812164224693', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 18:12:16', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921318735615225856', 'ZF201710201814384921942', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-20 18:14:39', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921564122422833152', 'ZF201710211029432509713', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-21 10:29:43', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('921565636906315776', 'ZF201710211035443336652', '917738121639579649', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '24色收纳桶', '1', '0.02', '0', null, '2017-10-21 10:35:44', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922302554417737728', 'ZF201710231123591027231', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-23 11:23:59', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('922715138077786112', 'ZF201710241443267559097', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-24 14:43:27', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('922715141043159040', 'ZF201710241443274948753', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '2', '0.02', '0', null, '2017-10-24 14:43:28', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('922740393578692608', 'ZF201710241623480644631', '10000', '马利牌01170油画颜料', '色号1,规格2,型号1', '2', '0.01', '0', null, '2017-10-24 16:23:48', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('922740395461935104', 'ZF201710241623480644631', '10003', '中华毛笔', '规格1', '2', '0.01', '0', null, '2017-10-24 16:23:49', 'http://guide2017.b0.upaiyun.com/test/2017.7.25/timg10.jpg');
INSERT INTO `trade_particular` VALUES ('922741922188607488', 'ZF201710241629409272586', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:29:53', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922741922289270784', 'ZF201710241629409272586', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:29:53', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742012450025472', 'ZF201710241630141083106', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:30:14', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742012525522944', 'ZF201710241630141083106', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:30:14', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742019785863168', 'ZF201710241630158744563', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:30:16', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742019857166336', 'ZF201710241630158744563', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:30:16', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742578846134272', 'ZF201710241632291582848', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:32:29', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922742578879688704', 'ZF201710241632291582848', '917738121639579650', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '12色造型桶', '2', '0.03', '0', null, '2017-10-24 16:32:29', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('922751557349437440', 'ZF201710241708098189781', '917738121639579649', '青竹小天才彩泥套装玩具12色造型桶24收纳盒', '24色收纳桶', '2', '0.02', '0', null, '2017-10-24 17:08:10', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/1.jpg');
INSERT INTO `trade_particular` VALUES ('923075185089736705', 'ZF201710251434086863680', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-25 14:34:09', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923445297118466048', 'ZF201710261504502499555', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-26 15:04:50', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923465649571762176', 'ZF201710261625426607488', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-26 16:25:43', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('923467135680778240', 'ZF201710261631369868746', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-26 16:31:37', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923533956333178880', 'ZF201710262057082741776', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-26 20:57:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923723583589507072', 'ZF201710270930389191764', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 09:30:39', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923730434213339136', 'ZF201710270957522429393', '917747595897057282', '青竹电动橡皮擦', 'null', '1', '0.01', '0', null, '2017-10-27 09:57:52', 'http://guide2017.b0.upaiyun.com/test/2017.9.12/20170824095947.jpg');
INSERT INTO `trade_particular` VALUES ('923743335816945664', 'ZF201710271049082224934', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-27 10:49:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923744519021715456', 'ZF201710271053503269072', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-27 10:53:50', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923758115004932096', 'ZF201710271147518567313', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-27 11:47:52', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923759144639455232', 'ZF201710271151573359867', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 11:51:57', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923759691090157568', 'ZF201710271154076236295', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 11:54:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923761122341871616', 'ZF201710271159488707999', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 11:59:49', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923782087469752320', 'ZF201710271323073463107', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:23:07', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923782090288324608', 'ZF201710271323080108886', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:23:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923786184600117248', 'ZF201710271339241776567', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:39:24', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923787513854746624', 'ZF201710271344410965513', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:44:41', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923787516174196736', 'ZF201710271344416498213', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:44:42', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923789155211730945', 'ZF201710271351124288250', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:51:12', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923790323820322816', 'ZF201710271355510467767', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 13:55:51', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923791782733471744', 'ZF201710271401388692974', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 14:01:39', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923792393034063872', 'ZF201710271404043763352', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 14:04:04', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923812936344936448', 'ZF201710271525422834012', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:25:42', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923813294467194880', 'ZF201710271527076747592', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:27:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923815394878169088', 'ZF201710271535284519060', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:35:28', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923816588971352064', 'ZF201710271540131440490', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:40:13', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923817567456337920', 'ZF201710271544064242188', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:44:06', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923817807051759616', 'ZF201710271545035549766', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:45:04', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923818039118405632', 'ZF201710271545588889269', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:45:59', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923818040653520896', 'ZF201710271545592537299', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:45:59', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923818041429467136', 'ZF201710271545594264121', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:45:59', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923818042155081728', 'ZF201710271545596023575', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 15:46:00', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923821700817100800', 'ZF201710271600318953386', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:00:32', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923821944686518272', 'ZF201710271601300487641', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:01:30', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923823712308830208', 'ZF201710271608314729190', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:08:31', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923824698947543040', 'ZF201710271612267048568', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:12:27', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923824969144606720', 'ZF201710271613311250645', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:13:31', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923825041391493120', 'ZF201710271613483512679', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:13:48', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923825220186284032', 'ZF201710271614309764336', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:14:31', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923825307402641408', 'ZF201710271614517630967', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:14:52', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923825582108581888', 'ZF201710271615572685327', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:15:57', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923826058388578304', 'ZF201710271617508241173', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 16:17:51', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923838939368792064', 'ZF201710271709018860218', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:09:02', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923840376870019072', 'ZF201710271714446152085', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:14:45', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923843559835049984', 'ZF201710271727234942192', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:27:24', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923844543328034816', 'ZF201710271731179772655', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:31:18', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923846480551223296', 'ZF201710271738598479644', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:39:00', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923851591616831488', 'ZF201710271759184273697', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 17:59:18', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('923853724571410432', 'ZF201710271807469635184', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-27 18:07:47', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('924815482689699840', 'ZF201710300949279470798', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-30 09:49:28', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('924883917817790464', 'ZF201710301421241722419', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-30 14:21:24', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('924886365697490944', 'ZF201710301431077914548', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-30 14:31:08', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('925245651812372480', 'ZF201710311418482499379', '917745705394200576', '青竹小天才彩色铅笔24色36色', '24色', '1', '0.01', '0', null, '2017-10-31 14:18:48', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');
INSERT INTO `trade_particular` VALUES ('925337346159718400', 'ZF201710312023098963180', '917745705394200577', '青竹小天才彩色铅笔24色36色', '36色', '1', '0.02', '0', null, '2017-10-31 20:23:10', 'http://guide2017.b0.upaiyun.com/test/2017.9.10/DSC_5168.jpg');

-- ----------------------------
-- Table structure for trade_repertory_info
-- ----------------------------
DROP TABLE IF EXISTS `trade_repertory_info`;
CREATE TABLE `trade_repertory_info` (
  `id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trade_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '订单id',
  `goods_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品id',
  `count` int(10) unsigned DEFAULT NULL COMMENT '订单购买数量',
  `createdtime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单交易的库存流水记录';

-- ----------------------------
-- Records of trade_repertory_info
-- ----------------------------
INSERT INTO `trade_repertory_info` VALUES ('913196086341410816', '913196038631202816', null, '2', '2017-09-28 08:18:08', null);
INSERT INTO `trade_repertory_info` VALUES ('913217872848322560', '913217872672161792', null, '2', '2017-09-28 09:44:42', null);
INSERT INTO `trade_repertory_info` VALUES ('913218257642160128', '913218257579245568', null, '2', '2017-09-28 09:46:14', null);
INSERT INTO `trade_repertory_info` VALUES ('913218477650202624', '913218477448876032', null, '2', '2017-09-28 09:47:07', null);
INSERT INTO `trade_repertory_info` VALUES ('913410073997975552', '913410003550445568', null, '1', '2017-09-28 22:28:27', null);
INSERT INTO `trade_repertory_info` VALUES ('913437162474090496', '913437162159517696', null, '2', '2017-09-29 00:16:05', null);
INSERT INTO `trade_repertory_info` VALUES ('914032121619177472', 'ZF201709301536030879846', null, '2', '2017-09-30 15:40:14', null);
INSERT INTO `trade_repertory_info` VALUES ('914032164703068160', 'ZF201709301536030879846', null, '1', '2017-09-30 15:40:25', null);
INSERT INTO `trade_repertory_info` VALUES ('914038395295604736', 'ZF201709301604271587948', '10000', '2', '2017-09-30 16:05:10', null);
INSERT INTO `trade_repertory_info` VALUES ('914038414824284160', 'ZF201709301604271587948', '10003', '1', '2017-09-30 16:05:15', null);
INSERT INTO `trade_repertory_info` VALUES ('914039060424138752', 'ZF201709301607401211049', '10000', '2', '2017-09-30 16:07:49', null);
INSERT INTO `trade_repertory_info` VALUES ('914039060545773568', 'ZF201709301607401211049', '10003', '1', '2017-09-30 16:07:49', null);
INSERT INTO `trade_repertory_info` VALUES ('914040730646323200', 'ZF201709301614268699255', '10000', '2', '2017-09-30 16:14:27', null);
INSERT INTO `trade_repertory_info` VALUES ('914040730738597888', 'ZF201709301614268699255', '10003', '1', '2017-09-30 16:14:27', null);
INSERT INTO `trade_repertory_info` VALUES ('914349302273822720', 'ZF201710011240360792781', '10000', '2', '2017-10-01 12:40:36', null);
INSERT INTO `trade_repertory_info` VALUES ('914349302366097408', 'ZF201710011240360792781', '10003', '2', '2017-10-01 12:40:36', null);
INSERT INTO `trade_repertory_info` VALUES ('914350291097862144', 'ZF201710011244318379520', '10000', '2', '2017-10-01 12:44:32', null);
INSERT INTO `trade_repertory_info` VALUES ('914350291211108352', 'ZF201710011244318379520', '10003', '2', '2017-10-01 12:44:32', null);
INSERT INTO `trade_repertory_info` VALUES ('914351957201240064', 'ZF201710011251090769876', '10000', '1', '2017-10-01 12:51:09', null);
INSERT INTO `trade_repertory_info` VALUES ('914357191471902720', 'ZF201710011311570229263', '10000', '2', '2017-10-01 13:11:57', null);
INSERT INTO `trade_repertory_info` VALUES ('914357191530622976', 'ZF201710011311570229263', '10003', '2', '2017-10-01 13:11:57', null);
INSERT INTO `trade_repertory_info` VALUES ('914449638688362496', 'ZF201710011919181592728', '10000', '2', '2017-10-01 19:19:18', null);
INSERT INTO `trade_repertory_info` VALUES ('914449638759665664', 'ZF201710011919181592728', '10003', '2', '2017-10-01 19:19:18', null);
INSERT INTO `trade_repertory_info` VALUES ('914450242697498624', 'ZF201710011921421770575', '10000', '2', '2017-10-01 19:21:42', null);
INSERT INTO `trade_repertory_info` VALUES ('914450242731053056', 'ZF201710011921421770575', '10003', '2', '2017-10-01 19:21:42', null);
INSERT INTO `trade_repertory_info` VALUES ('914450728829915136', 'ZF201710011923380794341', '10000', '2', '2017-10-01 19:23:38', null);
INSERT INTO `trade_repertory_info` VALUES ('914450728863469568', 'ZF201710011923380794341', '10003', '2', '2017-10-01 19:23:38', null);
INSERT INTO `trade_repertory_info` VALUES ('914451509234700288', 'ZF201710011926441442853', '10000', '2', '2017-10-01 19:26:44', null);
INSERT INTO `trade_repertory_info` VALUES ('914451509264060416', 'ZF201710011926441442853', '10003', '2', '2017-10-01 19:26:44', null);
INSERT INTO `trade_repertory_info` VALUES ('914452351903928320', 'ZF201710011930050496045', '10000', '2', '2017-10-01 19:30:05', null);
INSERT INTO `trade_repertory_info` VALUES ('914452351929094144', 'ZF201710011930050496045', '10003', '2', '2017-10-01 19:30:05', null);
INSERT INTO `trade_repertory_info` VALUES ('914452793073405952', 'ZF201710011931502309774', '10000', '2', '2017-10-01 19:31:50', null);
INSERT INTO `trade_repertory_info` VALUES ('914452793136320512', 'ZF201710011931502309774', '10003', '2', '2017-10-01 19:31:50', null);
INSERT INTO `trade_repertory_info` VALUES ('914454070922645504', 'ZF201710011936548969882', '10000', '2', '2017-10-01 19:36:55', null);
INSERT INTO `trade_repertory_info` VALUES ('914454070960394240', 'ZF201710011936548969882', '10003', '2', '2017-10-01 19:36:55', null);
INSERT INTO `trade_repertory_info` VALUES ('914457776764874752', 'ZF201710011951384138569', '10000', '1', '2017-10-01 19:51:38', null);
INSERT INTO `trade_repertory_info` VALUES ('914459402717696000', 'ZF201710011958060950941', '10000', '1', '2017-10-01 19:58:06', null);
INSERT INTO `trade_repertory_info` VALUES ('914460506062856192', 'ZF201710012002291447471', '10000', '2', '2017-10-01 20:02:29', null);
INSERT INTO `trade_repertory_info` VALUES ('914460506125770752', 'ZF201710012002291447471', '10003', '2', '2017-10-01 20:02:29', null);
INSERT INTO `trade_repertory_info` VALUES ('914462437221081088', 'ZF201710012010095777568', '10000', '2', '2017-10-01 20:10:10', null);
INSERT INTO `trade_repertory_info` VALUES ('914462437254635520', 'ZF201710012010095777568', '10003', '2', '2017-10-01 20:10:10', null);
INSERT INTO `trade_repertory_info` VALUES ('914463343689867264', 'ZF201710012013456913753', '10000', '1', '2017-10-01 20:13:46', null);
INSERT INTO `trade_repertory_info` VALUES ('914524803669434368', 'ZF201710020017588981058', '10000', '1', '2017-10-02 00:17:59', null);
INSERT INTO `trade_repertory_info` VALUES ('914780187734835200', 'ZF201710021712471935884', '10000', '1', '2017-10-02 17:12:47', null);
INSERT INTO `trade_repertory_info` VALUES ('914781555145048064', 'ZF201710021718132208364', '10000', '1', '2017-10-02 17:18:13', null);
INSERT INTO `trade_repertory_info` VALUES ('914790608875925504', 'ZF201710021754117696103', '10000', '1', '2017-10-02 17:54:12', null);
INSERT INTO `trade_repertory_info` VALUES ('915031182640009216', 'ZF201710030950090376937', '10000', '1', '2017-10-03 09:50:09', null);
INSERT INTO `trade_repertory_info` VALUES ('915258102551941120', 'ZF201710040051509483153', '10000', '2', '2017-10-04 00:51:51', null);
INSERT INTO `trade_repertory_info` VALUES ('915259021150654464', 'ZF201710040051509483153', '10003', '2', '2017-10-04 00:55:30', null);
INSERT INTO `trade_repertory_info` VALUES ('915259232455516160', 'ZF201710040056203383789', '10000', '2', '2017-10-04 00:56:20', null);
INSERT INTO `trade_repertory_info` VALUES ('915262761136033792', 'ZF201710040110216347764', '10000', '2', '2017-10-04 01:10:22', null);
INSERT INTO `trade_repertory_info` VALUES ('915262872247341056', 'ZF201710040110216347764', '10003', '2', '2017-10-04 01:10:48', null);
INSERT INTO `trade_repertory_info` VALUES ('915273866172555264', 'ZF201710040153308225416', '10000', '2', '2017-10-04 01:54:29', null);
INSERT INTO `trade_repertory_info` VALUES ('915274390267617280', 'ZF201710040153308225416', '10003', '2', '2017-10-04 01:56:34', null);
INSERT INTO `trade_repertory_info` VALUES ('915275014249910272', 'ZF201710040159030107587', '10000', '2', '2017-10-04 01:59:03', null);
INSERT INTO `trade_repertory_info` VALUES ('915275014342184960', 'ZF201710040159030107587', '10003', '2', '2017-10-04 01:59:03', null);
INSERT INTO `trade_repertory_info` VALUES ('915275767752548352', 'ZF201710040202026621265', '10000', '2', '2017-10-04 02:02:03', '1');
INSERT INTO `trade_repertory_info` VALUES ('915275767836434432', 'ZF201710040202026621265', '10003', '2', '2017-10-04 02:02:03', '1');
INSERT INTO `trade_repertory_info` VALUES ('915454161257615360', 'ZF201710041350433745590', '10000', '2', '2017-10-04 13:50:55', '1');
INSERT INTO `trade_repertory_info` VALUES ('915454161354084352', 'ZF201710041350433745590', '10003', '2', '2017-10-04 13:50:55', '1');
INSERT INTO `trade_repertory_info` VALUES ('915472328857522176', 'ZF201710041503065017981', '10000', '1', '2017-10-04 15:03:07', '1');
INSERT INTO `trade_repertory_info` VALUES ('915473363797839872', 'ZF201710041507132530455', '10000', '1', '2017-10-04 15:07:13', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232123162177536', 'ZF201710091135300260460', '10000', '2', '2017-10-09 11:35:54', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232232612540416', 'ZF201710091135300260460', '10003', '1', '2017-10-09 11:36:20', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232365886550016', 'ZF201710091136520112678', '10000', '2', '2017-10-09 11:36:52', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232596837511168', 'ZF201710091136520112678', '10003', '1', '2017-10-09 11:37:47', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232653590716416', 'ZF201710091138005556851', '10000', '2', '2017-10-09 11:38:01', '1');
INSERT INTO `trade_repertory_info` VALUES ('917232724914855936', 'ZF201710091138005556851', '10003', '1', '2017-10-09 11:38:18', '1');
INSERT INTO `trade_repertory_info` VALUES ('917646396021125120', 'ZF201710101502044991358', '10000', '1', '2017-10-10 15:02:05', '1');
INSERT INTO `trade_repertory_info` VALUES ('917646957386772480', 'ZF201710101504183499232', '10000', '1', '2017-10-10 15:04:18', '1');
INSERT INTO `trade_repertory_info` VALUES ('917751267062194176', 'ZF201710102158476952913', '917747595897057282', '1', '2017-10-10 21:58:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('918057809323544576', 'ZF201710111816530716786', '10000', '1', '2017-10-11 18:16:53', '1');
INSERT INTO `trade_repertory_info` VALUES ('918061887566958592', 'ZF201710111833054133470', '10000', '1', '2017-10-11 18:33:05', '1');
INSERT INTO `trade_repertory_info` VALUES ('918062930442899456', 'ZF201710111837140483610', '10000', '1', '2017-10-11 18:37:14', '1');
INSERT INTO `trade_repertory_info` VALUES ('918394771158876160', 'ZF201710121635510342952', '917745705394200577', '1', '2017-10-12 16:35:51', '1');
INSERT INTO `trade_repertory_info` VALUES ('918396631332700160', 'ZF201710121643145472474', '917745705394200577', '1', '2017-10-12 16:43:15', '1');
INSERT INTO `trade_repertory_info` VALUES ('918397715665133568', 'ZF201710121647330603363', '917745705394200577', '1', '2017-10-12 16:47:33', '1');
INSERT INTO `trade_repertory_info` VALUES ('918771828623679488', 'ZF201710131734085408751', '917745705394200577', '3', '2017-10-13 17:34:09', '1');
INSERT INTO `trade_repertory_info` VALUES ('918772362239811584', 'ZF201710131736157777327', '917745705394200577', '1', '2017-10-13 17:36:16', '1');
INSERT INTO `trade_repertory_info` VALUES ('919040096332800000', 'ZF201710141120085403024', '917745705394200577', '2', '2017-10-14 11:20:09', '1');
INSERT INTO `trade_repertory_info` VALUES ('919734915732463616', 'ZF201710160921063999922', '917747595897057282', '3', '2017-10-16 09:21:06', '1');
INSERT INTO `trade_repertory_info` VALUES ('919765591424884736', 'ZF201710161123000591409', '917747595897057282', '1', '2017-10-16 11:23:00', '1');
INSERT INTO `trade_repertory_info` VALUES ('919765643618803712', 'ZF201710161123125047631', '917747595897057282', '1', '2017-10-16 11:23:13', '1');
INSERT INTO `trade_repertory_info` VALUES ('919862677977718784', 'ZF201710161748472957980', '917745705394200577', '1', '2017-10-16 17:48:47', '1');
INSERT INTO `trade_repertory_info` VALUES ('919873221572960256', 'ZF201710161830410833430', '917747595897057282', '1', '2017-10-16 18:30:41', '1');
INSERT INTO `trade_repertory_info` VALUES ('920949638414995456', 'ZF201710191747588515741', '917747595897057282', '1', '2017-10-19 17:47:59', '1');
INSERT INTO `trade_repertory_info` VALUES ('920974319375998976', 'ZF201710191926032359276', '10000', '2', '2017-10-19 19:26:03', '1');
INSERT INTO `trade_repertory_info` VALUES ('920974324300111872', 'ZF201710191926032359276', '917745705394200577', '2', '2017-10-19 19:26:04', '1');
INSERT INTO `trade_repertory_info` VALUES ('920974644237426688', 'ZF201710191927207077727', '10000', '2', '2017-10-19 19:27:21', '1');
INSERT INTO `trade_repertory_info` VALUES ('920974644908515328', 'ZF201710191927207077727', '917745705394200577', '2', '2017-10-19 19:27:21', '1');
INSERT INTO `trade_repertory_info` VALUES ('920975705924710400', 'ZF201710191931338244290', '10000', '2', '2017-10-19 19:31:34', '1');
INSERT INTO `trade_repertory_info` VALUES ('920975707883450368', 'ZF201710191931338244290', '917745705394200577', '2', '2017-10-19 19:31:34', '1');
INSERT INTO `trade_repertory_info` VALUES ('920990237858566144', 'ZF201710192029185073586', '10000', '2', '2017-10-19 20:29:19', '0');
INSERT INTO `trade_repertory_info` VALUES ('920990241671188480', 'ZF201710192029185073586', '10003', '1', '2017-10-19 20:29:19', '0');
INSERT INTO `trade_repertory_info` VALUES ('920998374384615424', 'ZF201710192101384099514', '917745705394200577', '2', '2017-10-19 21:01:38', '1');
INSERT INTO `trade_repertory_info` VALUES ('920998374489473024', 'ZF201710192101384099514', '917747595897057282', '1', '2017-10-19 21:01:38', '1');
INSERT INTO `trade_repertory_info` VALUES ('921193815874736128', 'ZF201710200958153015531', '917745705394200576', '1', '2017-10-20 09:58:15', '1');
INSERT INTO `trade_repertory_info` VALUES ('921195964121747456', 'ZF201710201006474923280', '917745705394200577', '7', '2017-10-20 10:06:47', '1');
INSERT INTO `trade_repertory_info` VALUES ('921195964180467712', 'ZF201710201006474923280', '917745705394200577', '1', '2017-10-20 10:06:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('921274618570928128', 'ZF201710201519201677216', '917747595897057282', '1', '2017-10-20 15:19:20', '1');
INSERT INTO `trade_repertory_info` VALUES ('921274765564506112', 'ZF201710201519552203478', '917745705394200576', '1', '2017-10-20 15:19:55', '1');
INSERT INTO `trade_repertory_info` VALUES ('921279174830743552', 'ZF201710201537264603772', '907091117674618881', '1', '2017-10-20 15:37:26', '1');
INSERT INTO `trade_repertory_info` VALUES ('921279482185146368', 'ZF201710201538397514855', '917745705394200577', '1', '2017-10-20 15:38:40', '1');
INSERT INTO `trade_repertory_info` VALUES ('921279482210312192', 'ZF201710201538397514855', '917747595897057282', '1', '2017-10-20 15:38:40', '1');
INSERT INTO `trade_repertory_info` VALUES ('921297667320049664', 'ZF201710201650554167546', '10000', '2', '2017-10-20 16:50:55', '1');
INSERT INTO `trade_repertory_info` VALUES ('921297667374575616', 'ZF201710201650554167546', '10003', '2', '2017-10-20 16:50:55', '1');
INSERT INTO `trade_repertory_info` VALUES ('921298136150962176', 'ZF201710201652472019127', '917738121639579648', '1', '2017-10-20 16:52:47', '0');
INSERT INTO `trade_repertory_info` VALUES ('921298136180322304', 'ZF201710201652472019127', '917745705394200577', '11', '2017-10-20 16:52:47', '0');
INSERT INTO `trade_repertory_info` VALUES ('921298332268228608', 'ZF201710201653339590019', '917745705394200576', '1', '2017-10-20 16:53:34', '0');
INSERT INTO `trade_repertory_info` VALUES ('921298332293394432', 'ZF201710201653339590019', '917747595897057282', '2', '2017-10-20 16:53:34', '0');
INSERT INTO `trade_repertory_info` VALUES ('921299194013151232', 'ZF201710201656594167425', '10000', '3', '2017-10-20 16:56:59', '0');
INSERT INTO `trade_repertory_info` VALUES ('921300067896389632', 'ZF201710201700277668703', '917745705394200576', '3', '2017-10-20 17:00:28', '0');
INSERT INTO `trade_repertory_info` VALUES ('921300803921244160', 'ZF201710201703232482832', '917745705394200577', '2', '2017-10-20 17:03:23', '0');
INSERT INTO `trade_repertory_info` VALUES ('921300949891411968', 'ZF201710201703580511774', '917745705394200577', '1', '2017-10-20 17:03:58', '1');
INSERT INTO `trade_repertory_info` VALUES ('921300963439013888', 'ZF201710201704012814841', '917745705394200577', '1', '2017-10-20 17:04:01', '1');
INSERT INTO `trade_repertory_info` VALUES ('921301512217554944', 'ZF201710201706121199837', '917745705394200576', '1', '2017-10-20 17:06:12', '0');
INSERT INTO `trade_repertory_info` VALUES ('921301877721788416', 'ZF201710201707392598293', '917745705394200577', '1', '2017-10-20 17:07:39', '1');
INSERT INTO `trade_repertory_info` VALUES ('921302534210056192', 'ZF201710201710157766813', '917747595897057282', '1', '2017-10-20 17:10:16', '0');
INSERT INTO `trade_repertory_info` VALUES ('921318139709485056', 'ZF201710201812164224693', '917745705394200577', '1', '2017-10-20 18:12:16', '1');
INSERT INTO `trade_repertory_info` VALUES ('921318735606837248', 'ZF201710201814384921942', '917745705394200577', '1', '2017-10-20 18:14:39', '0');
INSERT INTO `trade_repertory_info` VALUES ('921564122397667328', 'ZF201710211029432509713', '917745705394200577', '1', '2017-10-21 10:29:43', '1');
INSERT INTO `trade_repertory_info` VALUES ('921565636876955648', 'ZF201710211035443336652', '917738121639579649', '1', '2017-10-21 10:35:44', '1');
INSERT INTO `trade_repertory_info` VALUES ('922302554392571904', 'ZF201710231123591027231', '917745705394200576', '1', '2017-10-23 11:23:59', '0');
INSERT INTO `trade_repertory_info` VALUES ('922715138031648768', 'ZF201710241443267559097', '917745705394200577', '2', '2017-10-24 14:43:27', '1');
INSERT INTO `trade_repertory_info` VALUES ('922715141038964736', 'ZF201710241443274948753', '917745705394200577', '2', '2017-10-24 14:43:27', '1');
INSERT INTO `trade_repertory_info` VALUES ('922740393255731200', 'ZF201710241623480644631', '10000', '2', '2017-10-24 16:23:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('922740393696133120', 'ZF201710241623480644631', '10003', '2', '2017-10-24 16:23:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('922741873245274112', 'ZF201710241629409272586', '917738121639579650', '2', '2017-10-24 16:29:41', '1');
INSERT INTO `trade_repertory_info` VALUES ('922741922272493568', 'ZF201710241629409272586', '917738121639579650', '2', '2017-10-24 16:29:53', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742012403888128', 'ZF201710241630141083106', '917738121639579650', '2', '2017-10-24 16:30:14', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742012508745728', 'ZF201710241630141083106', '917738121639579650', '2', '2017-10-24 16:30:14', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742019769085952', 'ZF201710241630158744563', '917738121639579650', '2', '2017-10-24 16:30:16', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742019840389120', 'ZF201710241630158744563', '917738121639579650', '2', '2017-10-24 16:30:16', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742578812579840', 'ZF201710241632291582848', '917738121639579650', '2', '2017-10-24 16:32:29', '1');
INSERT INTO `trade_repertory_info` VALUES ('922742578875494400', 'ZF201710241632291582848', '917738121639579650', '2', '2017-10-24 16:32:29', '1');
INSERT INTO `trade_repertory_info` VALUES ('922751557345243136', 'ZF201710241708098189781', '917738121639579649', '2', '2017-10-24 17:08:10', '1');
INSERT INTO `trade_repertory_info` VALUES ('923075185089736704', 'ZF201710251434086863680', '917745705394200577', '1', '2017-10-25 14:34:09', '1');
INSERT INTO `trade_repertory_info` VALUES ('923445297080717312', 'ZF201710261504502499555', '917745705394200576', '1', '2017-10-26 15:04:50', '1');
INSERT INTO `trade_repertory_info` VALUES ('923465649546596352', 'ZF201710261625426607488', '917747595897057282', '1', '2017-10-26 16:25:43', '1');
INSERT INTO `trade_repertory_info` VALUES ('923467135672389632', 'ZF201710261631369868746', '917745705394200576', '1', '2017-10-26 16:31:37', '1');
INSERT INTO `trade_repertory_info` VALUES ('923533956328984576', 'ZF201710262057082741776', '917745705394200577', '1', '2017-10-26 20:57:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('923723583564341248', 'ZF201710270930389191764', '917745705394200576', '1', '2017-10-27 09:30:39', '1');
INSERT INTO `trade_repertory_info` VALUES ('923730434209144832', 'ZF201710270957522429393', '917747595897057282', '1', '2017-10-27 09:57:52', '1');
INSERT INTO `trade_repertory_info` VALUES ('923743335800168448', 'ZF201710271049082224934', '917745705394200577', '1', '2017-10-27 10:49:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('923744519017521152', 'ZF201710271053503269072', '917745705394200577', '1', '2017-10-27 10:53:50', '1');
INSERT INTO `trade_repertory_info` VALUES ('923758114992349184', 'ZF201710271147518567313', '917745705394200577', '1', '2017-10-27 11:47:52', '1');
INSERT INTO `trade_repertory_info` VALUES ('923759144618483712', 'ZF201710271151573359867', '917745705394200576', '1', '2017-10-27 11:51:57', '1');
INSERT INTO `trade_repertory_info` VALUES ('923759691073380352', 'ZF201710271154076236295', '917745705394200576', '1', '2017-10-27 11:54:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('923761122337677312', 'ZF201710271159488707999', '917745705394200576', '1', '2017-10-27 11:59:49', '1');
INSERT INTO `trade_repertory_info` VALUES ('923782087465558016', 'ZF201710271323073463107', '917745705394200576', '1', '2017-10-27 13:23:07', '1');
INSERT INTO `trade_repertory_info` VALUES ('923782090275741696', 'ZF201710271323080108886', '917745705394200576', '1', '2017-10-27 13:23:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('923786184591728640', 'ZF201710271339241776567', '917745705394200576', '1', '2017-10-27 13:39:24', '1');
INSERT INTO `trade_repertory_info` VALUES ('923787513850552320', 'ZF201710271344410965513', '917745705394200576', '1', '2017-10-27 13:44:41', '1');
INSERT INTO `trade_repertory_info` VALUES ('923787516165808128', 'ZF201710271344416498213', '917745705394200576', '1', '2017-10-27 13:44:42', '1');
INSERT INTO `trade_repertory_info` VALUES ('923789155211730944', 'ZF201710271351124288250', '917745705394200576', '1', '2017-10-27 13:51:12', '1');
INSERT INTO `trade_repertory_info` VALUES ('923790323816128512', 'ZF201710271355510467767', '917745705394200576', '1', '2017-10-27 13:55:51', '1');
INSERT INTO `trade_repertory_info` VALUES ('923791782720888832', 'ZF201710271401388692974', '917745705394200576', '1', '2017-10-27 14:01:39', '1');
INSERT INTO `trade_repertory_info` VALUES ('923792393021480960', 'ZF201710271404043763352', '917745705394200576', '1', '2017-10-27 14:04:04', '1');
INSERT INTO `trade_repertory_info` VALUES ('923812936315576320', 'ZF201710271525422834012', '917745705394200576', '1', '2017-10-27 15:25:42', '1');
INSERT INTO `trade_repertory_info` VALUES ('923813294463000576', 'ZF201710271527076747592', '917745705394200576', '1', '2017-10-27 15:27:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('923815394873974784', 'ZF201710271535284519060', '917745705394200576', '1', '2017-10-27 15:35:28', '1');
INSERT INTO `trade_repertory_info` VALUES ('923816588962963456', 'ZF201710271540131440490', '917745705394200576', '1', '2017-10-27 15:40:13', '1');
INSERT INTO `trade_repertory_info` VALUES ('923817567439560704', 'ZF201710271544064242188', '917745705394200576', '1', '2017-10-27 15:44:06', '1');
INSERT INTO `trade_repertory_info` VALUES ('923817807043371008', 'ZF201710271545035549766', '917745705394200576', '1', '2017-10-27 15:45:04', '1');
INSERT INTO `trade_repertory_info` VALUES ('923818039114211328', 'ZF201710271545588889269', '917745705394200576', '1', '2017-10-27 15:45:59', '1');
INSERT INTO `trade_repertory_info` VALUES ('923818040649326592', 'ZF201710271545592537299', '917745705394200576', '1', '2017-10-27 15:45:59', '1');
INSERT INTO `trade_repertory_info` VALUES ('923818041408495616', 'ZF201710271545594264121', '917745705394200576', '1', '2017-10-27 15:45:59', '1');
INSERT INTO `trade_repertory_info` VALUES ('923818042138304512', 'ZF201710271545596023575', '917745705394200576', '1', '2017-10-27 15:46:00', '1');
INSERT INTO `trade_repertory_info` VALUES ('923821700804517888', 'ZF201710271600318953386', '917745705394200576', '1', '2017-10-27 16:00:32', '1');
INSERT INTO `trade_repertory_info` VALUES ('923821944682323968', 'ZF201710271601300487641', '917745705394200576', '1', '2017-10-27 16:01:30', '1');
INSERT INTO `trade_repertory_info` VALUES ('923823712292052992', 'ZF201710271608314729190', '917745705394200576', '1', '2017-10-27 16:08:31', '1');
INSERT INTO `trade_repertory_info` VALUES ('923824698934960128', 'ZF201710271612267048568', '917745705394200576', '1', '2017-10-27 16:12:27', '1');
INSERT INTO `trade_repertory_info` VALUES ('923824969132023808', 'ZF201710271613311250645', '917745705394200576', '1', '2017-10-27 16:13:31', '1');
INSERT INTO `trade_repertory_info` VALUES ('923825041374715904', 'ZF201710271613483512679', '917745705394200576', '1', '2017-10-27 16:13:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('923825220169506816', 'ZF201710271614309764336', '917745705394200576', '1', '2017-10-27 16:14:31', '1');
INSERT INTO `trade_repertory_info` VALUES ('923825307385864192', 'ZF201710271614517630967', '917745705394200576', '1', '2017-10-27 16:14:52', '1');
INSERT INTO `trade_repertory_info` VALUES ('923825582091804672', 'ZF201710271615572685327', '917745705394200576', '1', '2017-10-27 16:15:57', '1');
INSERT INTO `trade_repertory_info` VALUES ('923826058375995392', 'ZF201710271617508241173', '917745705394200576', '1', '2017-10-27 16:17:51', '1');
INSERT INTO `trade_repertory_info` VALUES ('923838939352014848', 'ZF201710271709018860218', '917745705394200576', '1', '2017-10-27 17:09:02', '1');
INSERT INTO `trade_repertory_info` VALUES ('923840376857436160', 'ZF201710271714446152085', '917745705394200576', '1', '2017-10-27 17:14:45', '1');
INSERT INTO `trade_repertory_info` VALUES ('923843559822467072', 'ZF201710271727234942192', '917745705394200576', '1', '2017-10-27 17:27:24', '1');
INSERT INTO `trade_repertory_info` VALUES ('923844543315451904', 'ZF201710271731179772655', '917745705394200576', '1', '2017-10-27 17:31:18', '1');
INSERT INTO `trade_repertory_info` VALUES ('923846480538640384', 'ZF201710271738598479644', '917745705394200576', '1', '2017-10-27 17:39:00', '1');
INSERT INTO `trade_repertory_info` VALUES ('923851591612637184', 'ZF201710271759184273697', '917745705394200576', '1', '2017-10-27 17:59:18', '1');
INSERT INTO `trade_repertory_info` VALUES ('923853724567216128', 'ZF201710271807469635184', '917745705394200576', '1', '2017-10-27 18:07:47', '1');
INSERT INTO `trade_repertory_info` VALUES ('924815482656145408', 'ZF201710300949279470798', '917745705394200576', '1', '2017-10-30 09:49:28', '1');
INSERT INTO `trade_repertory_info` VALUES ('924883917813596160', 'ZF201710301421241722419', '917745705394200577', '1', '2017-10-30 14:21:24', '1');
INSERT INTO `trade_repertory_info` VALUES ('924886365693296640', 'ZF201710301431077914548', '917745705394200576', '1', '2017-10-30 14:31:08', '1');
INSERT INTO `trade_repertory_info` VALUES ('925245651778818048', 'ZF201710311418482499379', '917745705394200576', '1', '2017-10-31 14:18:48', '1');
INSERT INTO `trade_repertory_info` VALUES ('925337346130358272', 'ZF201710312023098963180', '917745705394200577', '1', '2017-10-31 20:23:10', '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `password` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `headimg` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `nick_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `tag_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户身份标签',
  `province_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '省',
  `citty_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '市',
  `area_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '区',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `locLon` double DEFAULT NULL COMMENT '经度',
  `locLat` double DEFAULT NULL COMMENT '纬度',
  `email` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '电子邮箱',
  `sex` tinyint(4) DEFAULT '0' COMMENT '0男，1女',
  `birthday` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '出生年月日(2017-09-19)',
  `id_card` varchar(18) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份证号',
  `steps` int(11) DEFAULT NULL COMMENT '信息完善程度',
  `level` int(3) DEFAULT '0' COMMENT '会员等级',
  `point_amount` decimal(18,2) DEFAULT '0.00' COMMENT '积分余额',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_user_info_phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('912520034942283776', '13068943101', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'http://guide2017.b0.upaiyun.com/user/912520034942283776/925925302914269184.png', '叫哥', null, '914693918550392832', null, null, null, null, null, null, null, '0', null, null, null, '0', '1.00', null, '2017-09-26 11:31:45');
INSERT INTO `user_info` VALUES ('912526293696774144', '17606037017', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'http://guide2017.b0.upaiyun.com/user/912526293696774144/925904835247706112.png', 'gsk9451', null, '910328461257199616', null, null, null, null, null, null, null, '1', null, null, null, '0', '1.00', null, '2017-09-26 11:56:48');
INSERT INTO `user_info` VALUES ('912624472052203520', '13243737763', null, 'http://guide2017.b0.upaiyun.com/user/912624472052203520/926003524599308288.jpg', '灰灰', null, '910328461257199616', null, null, null, null, null, null, null, '0', null, null, null, '0', '0.00', null, '2017-09-26 18:26:45');
INSERT INTO `user_info` VALUES ('914086010198020096', '15989292370', null, 'http://guide2017.b0.upaiyun.com/test/2017.9.11/u2862.png', '灰灰', null, '910328461257199616', null, null, null, null, null, null, null, '0', null, null, null, '0', '0.00', null, '2017-09-30 19:14:22');
INSERT INTO `user_info` VALUES ('914086906545950720', '13142761714', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'http://guide2017.b0.upaiyun.com/test/2017.9.11/u2862.png', '灰灰gal', null, '910329291779723264', null, null, null, null, null, null, null, '0', null, null, null, '0', '0.00', null, '2017-10-13 14:43:44');

-- ----------------------------
-- Table structure for user_tag
-- ----------------------------
DROP TABLE IF EXISTS `user_tag`;
CREATE TABLE `user_tag` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `tag_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '标签名称',
  `createdtime` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户标签';

-- ----------------------------
-- Records of user_tag
-- ----------------------------
INSERT INTO `user_tag` VALUES ('910328461257199616', '大学', '2017-10-02 11:30:49');
INSERT INTO `user_tag` VALUES ('910329291779723264', '高中', '2017-09-20 10:26:31');
INSERT INTO `user_tag` VALUES ('914693918550392832', '高中1', '2017-10-02 11:29:59');

-- ----------------------------
-- Table structure for user_team
-- ----------------------------
DROP TABLE IF EXISTS `user_team`;
CREATE TABLE `user_team` (
  `id` varchar(25) NOT NULL,
  `inviter` varchar(25) DEFAULT NULL COMMENT '邀请人',
  `recommended_user_id` varchar(25) DEFAULT NULL COMMENT '被邀请人',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户推荐关系';

-- ----------------------------
-- Records of user_team
-- ----------------------------
