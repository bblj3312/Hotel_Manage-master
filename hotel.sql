/*
Navicat MySQL Data Transfer

Source Server         : LegionDB
Source Server Version : 50736
Source Host           : 127.0.0.1:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2022-09-24 08:10:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` int(10) NOT NULL COMMENT '密码',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '12');

-- ----------------------------
-- Table structure for guests
-- ----------------------------
DROP TABLE IF EXISTS `guests`;
CREATE TABLE `guests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `card` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `enterTime` varchar(30) NOT NULL,
  `exitTime` varchar(30) NOT NULL,
  `h_type` varchar(10) NOT NULL,
  `num` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `num` (`num`) USING BTREE,
  KEY `h_type` (`h_type`) USING BTREE,
  CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`num`) REFERENCES `home` (`num`),
  CONSTRAINT `guests_ibfk_2` FOREIGN KEY (`h_type`) REFERENCES `home` (`h_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guests
-- ----------------------------
INSERT INTO `guests` VALUES ('1', '张三', '男', '360102200110153312', '18679111265', '2022-7-5-上午2:41:41', '7-6', '普通大床房', '207');
INSERT INTO `guests` VALUES ('2', '王五', '男', '360102200310153311', '15979055037', '2022-9-15-上午2:43:10', '9-18', '豪华大床房', '201');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `h_type` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `num` (`num`) USING BTREE,
  KEY `h_type` (`h_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('1', '201', '普通大床房', '120', '已入住', '/upload/null', '舒适\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ');
INSERT INTO `home` VALUES ('2', '202', '普通大床房', '120', '已预订', '/upload/b799f7b4beda4bb591a4f8f88e0c6b60.jpeg', '时尚\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('3', '203', '高级双床房', '150', '已预订', '/upload/749708aa142945e783ee9935c159e121.jpeg', '时尚\r\n                        \r\n                    \r\n                    ');
INSERT INTO `home` VALUES ('4', '204', '豪华大床房', '200', '已入住', null, '豪华\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('5', '205', '豪华大床房', '310', '空房', '/upload/null', '豪华\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('6', '206', '高级大床房', '200', '空房', '/upload/4082a28fbe554cefbc87f9a4bd1cfbe2.jpeg', '浩荡');
INSERT INTO `home` VALUES ('7', '207', '豪华套房', '300', '已入住', null, '豪华\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('8', '208', '豪华套房', '310', '空房', '/upload/fd5e44da3dad49589d111fbb70ff186f.jpeg', '豪华\r\n                        ');
INSERT INTO `home` VALUES ('9', '209', '普通双床房', '105', '空房', '/upload/3873ac226f86435eb99893737ea742d4.jpeg', '朴实\r\n                        ');
INSERT INTO `home` VALUES ('10', '210', '豪华圆床房', '255', '已入住', null, '浪漫\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('11', '301', '大床钟点房（四小时）', '60', '空房', '/upload/a8e38f3437d24de6b5d166d8f71b3886.jpeg', '忙碌\r\n                        ');
INSERT INTO `home` VALUES ('12', '302', '大床钟点房（三小时）', '50', '已入住', '/upload/9061f597b691483caffde45a98cae599.jpeg', '急促\r\n                        \r\n                    \r\n                    \r\n                    ');
INSERT INTO `home` VALUES ('13', '303', '双床终点房（三小时）', '60', '空房', '/upload/f19f0019b92c44e0b9c923f4e9921ca6.jpeg', '急促\r\n                        ');
INSERT INTO `home` VALUES ('14', '304', '双床终点房（四小时）', '70', '已入住', null, '急促\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('15', '305', '大床钟点房（四小时）', '60', '空房', '/upload/96cc3aaddd7f495981ad5569b347e59a.jpeg', '急促\r\n                        ');
INSERT INTO `home` VALUES ('16', '306', '大床钟点房（四小时）', '70', '空房', '/upload/cf6109ecef494040b85dc2e9a6007d39.jpeg', '急促\r\n                        ');
INSERT INTO `home` VALUES ('17', '307', '双床终点房（四小时）', '60', '已入住', '/upload/7a46b537314c4fbdb38a669f44512050.jpeg', '稳健');
INSERT INTO `home` VALUES ('18', '308', '双床终点房（四小时）', '70', '空房', '/upload/5b4cbe3a029e43d18767d0e7ffd0f89f.jpeg', '稳健');
INSERT INTO `home` VALUES ('19', '309', '大床钟点房（三小时）', '60', '空房', '/upload/5df7b90619ba4ad6b86c8059897c8e13.jpeg', '稳健');
INSERT INTO `home` VALUES ('20', '310', '双床终点房（三小时）', '70', '空房', '/upload/d50b64e67908473991e509eddda1499b.jpeg', '时尚\r\n                        ');
INSERT INTO `home` VALUES ('21', '401', '普通三人间', '130', '空房', '/upload/a1a5d562d3b5413a8a685fae475d17dc.jpeg', '路途\r\n                        ');
INSERT INTO `home` VALUES ('22', '402', '高级三人间', '160', '已入住', null, '路途\r\n                        \r\n                    ');
INSERT INTO `home` VALUES ('23', '403', '高级双床房', '180', '空房', '/upload/a0bf14d1d4c14ed282445f0cc12ab232.jpeg', '路途\r\n                        ');
INSERT INTO `home` VALUES ('24', '404', '豪华双床房', '190', '空房', '/upload/b36fe1d4e419438ca25f8856e88da183.jpeg', '路途\r\n                        ');
INSERT INTO `home` VALUES ('25', '405', '豪华双床房', '180', '空房', '/upload/1ab290e87d4e4e3c95c8edf54878eddd.jpeg', '路途\r\n                        ');
INSERT INTO `home` VALUES ('26', '406', '豪华水床房', '260', '空房', '/upload/4e692f2114a4424fa11202d0c4c191e1.jpeg', '水润');
INSERT INTO `home` VALUES ('27', '407', '高级电脑房', '220', '空房', '/upload/bed47c5c1bb141b5ae8f5353154979d0.jpeg', 'windows');
INSERT INTO `home` VALUES ('28', '408', '高级电脑房', '210', '空房', '/upload/fe481db487a640bb9ebb142ce7479420.jpeg', 'windows');
INSERT INTO `home` VALUES ('29', '409', '豪华套房', '300', '空房', '/upload/62a7f1c0821f465d825414f3616a09ed.jpeg', 'windows');
INSERT INTO `home` VALUES ('30', '410', '标准套房', '230', '空房', '/upload/482d26e678754157a2842713780ea0f1.jpeg', '套房');
INSERT INTO `home` VALUES ('31', '501', '普通大床房', '160', '空房', '/upload/b93b22ffd68a48239ed2e3882aebae58.jpeg', '大床');
INSERT INTO `home` VALUES ('32', '502', '普通大床房', '220', '空房', '/upload/3b3cca3bd47b48f085b3907526fa8d38.png', '大床');
INSERT INTO `home` VALUES ('33', '503', '豪华大床房', '210', '空房', '/upload/7ed665426e0f4dc8ab38b08c717fb415.jpeg', '大气\r\n                        ');
INSERT INTO `home` VALUES ('34', '504', '高级大床房', '180', '空房', '/upload/08c44707b62d440898fd4c0f47a566f7.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('36', '505', '豪华大床房', '300', '空房', '/upload/08d686af1445425c94828b96733ff9c7.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('37', '505', '豪华大床房', '300', '空房', '/upload/9a42090e1dc7425db7f6c474ed82f51c.jpeg', '请填写房间相关信息......二\r\n                        ');
INSERT INTO `home` VALUES ('38', '506', '豪华大床房', '300', '空房', '/upload/16613f2b921347e6a4532f105d496d7a.jpeg', '请填写房间相关信息......\r\n                        飞洒发');
INSERT INTO `home` VALUES ('39', '507', '豪华大床房', '120', '空房', '/upload/e0813248ae1c4c248cde47d5b395f49e.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('40', '507', '豪华大床房', '120', '空房', '/upload/8daa1a44a0624688a919237bfc0d61ab.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('41', '507', '豪华大床房', '120', '空房', '/upload/65d6891db61c4b1ebbf903ce46ec1b74.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('42', '507', '豪华大床房', '120', '空房', '/upload/86c33b0bc0da430abb018fd1a3aa09e0.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('45', '508', '豪华大床房', '200', '空房', '/upload/3c2cf5c91bd34b1085bf8a38ade7a2eb.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('46', '508', '豪华大床房', '200', '空房', '/upload/2bdd38a6d21e427db3c326a353ed8df5.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('47', '508', '豪华大床房', '200', '空房', '/upload/a7fa814ec6f240e5a8b26b205d20c1f3.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('48', '509', '豪华大床房', '800', '空房', '/upload/6f93c49fd49f456e9b2c1b0ed451e635.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('49', '509', '豪华大床房', '800', '空房', '/upload/34565e27a31a474f8a272d84c4ddecb2.jpeg', '请填写房间相关信息......\r\n                        ');
INSERT INTO `home` VALUES ('50', '601', '高级大床房', '500', '空房', '/upload/a1bf2dbd8f1746ed85a9b1935896b8cf.jpeg', '请填写房间相关信息......\r\n                        ');

-- ----------------------------
-- Table structure for meal
-- ----------------------------
DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `m_type` varchar(20) NOT NULL,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of meal
-- ----------------------------
INSERT INTO `meal` VALUES ('1', '红烧鲫鱼', '70', '荤菜', '妈妈的味道');
INSERT INTO `meal` VALUES ('2', '酸辣土豆丝', '15', '素菜', '酸辣可口开胃菜');
INSERT INTO `meal` VALUES ('3', '藜蒿炒腊肉', '40', '荤菜', '鄱阳湖里的草，南昌人的宝');
INSERT INTO `meal` VALUES ('4', '手撕包菜', '18', '素菜', '纯手撕，给您最纯真的体验');
