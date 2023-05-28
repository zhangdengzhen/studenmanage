/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost:3306
 Source Schema         : xsxk

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 02/11/2021 17:03:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cjb
-- ----------------------------
DROP TABLE IF EXISTS `cjb`;
CREATE TABLE `cjb`  (
  `xh` int(11) NOT NULL,
  `kch` int(11) NOT NULL,
  `cj` int(11) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cjb
-- ----------------------------
INSERT INTO `cjb` VALUES (2021011002, 101, 80);
INSERT INTO `cjb` VALUES (2021011002, 102, 78);
INSERT INTO `cjb` VALUES (2021011002, 103, 99);
INSERT INTO `cjb` VALUES (2021011002, 104, 88);
INSERT INTO `cjb` VALUES (2021011002, 105, 65);
INSERT INTO `cjb` VALUES (2021011001, 102, 66);
INSERT INTO `cjb` VALUES (2021011001, 103, 65);
INSERT INTO `cjb` VALUES (2021011001, 104, 77);
INSERT INTO `cjb` VALUES (2021011001, 105, 45);
INSERT INTO `cjb` VALUES (2021011005, 102, 65);
INSERT INTO `cjb` VALUES (2021011005, 104, 88);
INSERT INTO `cjb` VALUES (2021011005, 105, 87);

-- ----------------------------
-- Table structure for kcb
-- ----------------------------
DROP TABLE IF EXISTS `kcb`;
CREATE TABLE `kcb`  (
  `kch` int(11) NOT NULL AUTO_INCREMENT,
  `kcm` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kxxq` enum('1','2','3','4','5','6','7','8') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xs` int(11) NULL DEFAULT NULL,
  `xf` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`kch`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kcb
-- ----------------------------
INSERT INTO `kcb` VALUES (101, '计算机基础', '1', 80, 5);
INSERT INTO `kcb` VALUES (102, '程序设计语言', '2', 48, 4);
INSERT INTO `kcb` VALUES (103, '计算机原理', '3', 60, 3);
INSERT INTO `kcb` VALUES (104, '数据库原理', '2', 50, 3);
INSERT INTO `kcb` VALUES (105, '软件工程', '2', 60, 4);
INSERT INTO `kcb` VALUES (106, '计算机网络工程', '3', 60, 3);
INSERT INTO `kcb` VALUES (107, '操作系统', '3', 50, 2);
INSERT INTO `kcb` VALUES (108, 'Web程序设计', '3', 46, 4);
INSERT INTO `kcb` VALUES (109, 'Js前端设计', '1', 50, 4);
INSERT INTO `kcb` VALUES (110, 'Mysql数据库', '1', 50, 4);
INSERT INTO `kcb` VALUES (111, 'UML数据建模', '3', 40, 3);
INSERT INTO `kcb` VALUES (112, '数据密码学', '4', 50, 3);
INSERT INTO `kcb` VALUES (113, 'Java框架开发', '5', 60, 4);

-- ----------------------------
-- Table structure for xsb
-- ----------------------------
DROP TABLE IF EXISTS `xsb`;
CREATE TABLE `xsb`  (
  `xh` int(11) NOT NULL AUTO_INCREMENT,
  `xm` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xb` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cssj` date NULL DEFAULT NULL,
  `zy_id` int(11) NOT NULL,
  `zxf` int(11) NULL DEFAULT 0,
  `bz` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zp` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xh`) USING BTREE,
  INDEX `xsb_zy_id_fk`(`zy_id`) USING BTREE,
  CONSTRAINT `xsb_zy_id_fk` FOREIGN KEY (`zy_id`) REFERENCES `zyb` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2021011163 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xsb
-- ----------------------------
INSERT INTO `xsb` VALUES (2021011001, '王林', '123', '1', '2021-10-12', 1, 40, '', 'wl.png');
INSERT INTO `xsb` VALUES (2021011002, '陈明', '222', '1', '1987-10-12', 2, 50, '提前修完数据结构并获得学分', 'cm.png');
INSERT INTO `xsb` VALUES (2021011003, '王燕', '321', '0', '1987-10-12', 3, 50, '', 'cm.png');
INSERT INTO `xsb` VALUES (2021011004, '魏艳萍', '222', '0', '1987-10-12', 2, 50, '', 'wyp.png');
INSERT INTO `xsb` VALUES (2021011005, '李芳芳', '666', '0', '1987-03-12', 2, 32, '', 'lff.png');
INSERT INTO `xsb` VALUES (2021011006, '李明', '111', '1', '2001-10-12', 1, 46, '', 'lm.png');
INSERT INTO `xsb` VALUES (2021011007, '东方不败', '111', '1', '2001-08-12', 1, 52, '三好生', 'dfbb.png');
INSERT INTO `xsb` VALUES (2021011008, '令狐冲', '333', '1', '1987-10-12', 1, 50, '已经提前修完一门课', 'lhc.png');
INSERT INTO `xsb` VALUES (2021011009, '任盈盈', '222', '0', '1988-09-12', 3, 43, '有一门课不及格要补考', 'ryy.png');
INSERT INTO `xsb` VALUES (2021011010, '小师妹', '444', '0', '2021-10-02', 4, 55, '转专业学习', 'xsm.png');
INSERT INTO `xsb` VALUES (2021011011, '林一帆', '555', '1', '2012-02-03', 1, 50, NULL, 'lyf.png');
INSERT INTO `xsb` VALUES (2021011012, '张飞', '333', '1', '2011-02-04', 2, 44, NULL, 'zf.png');
INSERT INTO `xsb` VALUES (2021011013, '王艳艳', '444', '0', '2011-04-04', 4, 56, NULL, 'wyy.png');
INSERT INTO `xsb` VALUES (2021011014, '庞华雨', '212', '1', '1988-10-12', 1, 44, '', 'tx1.png');
INSERT INTO `xsb` VALUES (2021011015, '周志鹏', '333', '1', '1988-10-13', 1, 46, '', 'tx2.png');
INSERT INTO `xsb` VALUES (2021011016, '刘伟', '123', '1', '1988-10-14', 1, 48, '', 'tx3.png');
INSERT INTO `xsb` VALUES (2021011017, '江伟良', '123', '1', '1988-10-15', 1, 50, '', 'tx4.png');
INSERT INTO `xsb` VALUES (2021011018, '吴斯杰', '11', '1', '1988-10-16', 1, 52, '', 'tx5.png');
INSERT INTO `xsb` VALUES (2021011019, '赖航飞', '121', '1', '1988-10-17', 1, 52, '', 'tx6.png');
INSERT INTO `xsb` VALUES (2021011020, '黄升华', '1212', '1', '1988-10-18', 1, 52, '', 'tx7.png');
INSERT INTO `xsb` VALUES (2021011021, '林镇涛', '1111', '1', '1988-10-19', 1, 52, '', 'tx8.png');
INSERT INTO `xsb` VALUES (2021011022, '沈泽欣', '111', '1', '1988-10-20', 1, 55, '', 'tx9.png');
INSERT INTO `xsb` VALUES (2021011023, '李华乐', '111', '1', '1988-10-21', 1, 55, '', 'tx10.png');
INSERT INTO `xsb` VALUES (2021011024, '车健华', '111', '1', '1988-10-22', 1, 55, '', 'tx11.png');
INSERT INTO `xsb` VALUES (2021011025, '朱文滨', '11', '1', '1988-10-23', 1, 55, '', 'tx12.png');
INSERT INTO `xsb` VALUES (2021011026, '麦浩城', '111', '1', '1988-10-24', 1, 40, '', 'tx13.png');
INSERT INTO `xsb` VALUES (2021011027, '罗浩智', '111', '1', '1988-10-25', 1, 42, '', 'tx14.png');
INSERT INTO `xsb` VALUES (2021011028, '朱有权', '111', '1', '1988-10-26', 1, 40, '', 'tx15.png');
INSERT INTO `xsb` VALUES (2021011029, '魏敦松', '111', '1', '1988-10-27', 1, 44, '', 'tx16.png');
INSERT INTO `xsb` VALUES (2021011030, '林嘉悦', '111', '1', '1988-10-28', 1, 46, '', 'tx17.png');
INSERT INTO `xsb` VALUES (2021011031, '侯创豪', '111', '1', '1988-10-29', 1, 48, '', 'tx18.png');
INSERT INTO `xsb` VALUES (2021011032, '黄天赐', '11', '1', '1988-10-30', 1, 50, '', 'tx19.png');
INSERT INTO `xsb` VALUES (2021011033, '邓剑', '111', '1', '1988-10-31', 1, 52, '', 'tx20.png');
INSERT INTO `xsb` VALUES (2021011034, '钟泽移', '11', '1', '1999-02-03', 1, 52, '', 'tx21.png');
INSERT INTO `xsb` VALUES (2021011035, '梁英迅', '111', '1', '1988-09-03', 2, 52, '', 'tx22.png');
INSERT INTO `xsb` VALUES (2021011036, '罗中威', '111', '1', '1988-09-04', 2, 52, '', 'tx23.png');
INSERT INTO `xsb` VALUES (2021011037, '汤铖斌', '11', '1', '1988-09-05', 2, 55, '', 'tx24.png');
INSERT INTO `xsb` VALUES (2021011038, '薛魁', '111', '1', '1988-09-06', 2, 55, '', 'tx25.png');
INSERT INTO `xsb` VALUES (2021011039, '徐剑铭', '', '1', '1988-09-07', 2, 55, '', 'tx26.png');
INSERT INTO `xsb` VALUES (2021011040, '封韵哲', '', '1', '1988-09-08', 2, 55, '', 'tx27.png');
INSERT INTO `xsb` VALUES (2021011041, '张劲锋', '', '1', '1988-09-09', 2, 40, '', 'tx28.png');
INSERT INTO `xsb` VALUES (2021011042, '林华沥', '', '1', '1988-09-10', 2, 42, '', 'tx29.png');
INSERT INTO `xsb` VALUES (2021011043, '纪坤毅', '', '1', '1988-09-11', 2, 40, '', 'tx30.png');
INSERT INTO `xsb` VALUES (2021011044, '许旺邦', '', '1', '1988-09-12', 2, 44, '', 'tx31.png');
INSERT INTO `xsb` VALUES (2021011045, '林杰斌', '', '1', '1988-09-13', 2, 46, '', 'tx32.png');
INSERT INTO `xsb` VALUES (2021011046, '陈晓鑫', '', '0', '1988-09-14', 2, 48, '', 'tx33.png');
INSERT INTO `xsb` VALUES (2021011047, '冯才斌', '', '0', '1988-09-15', 2, 50, '', 'tx34.png');
INSERT INTO `xsb` VALUES (2021011048, '李树新', '', '0', '1988-09-16', 2, 52, '', 'tx35.png');
INSERT INTO `xsb` VALUES (2021011049, '黄伟强', '', '0', '1988-09-17', 2, 52, '', 'tx36.png');
INSERT INTO `xsb` VALUES (2021011050, '邸国梁', '', '0', '1988-09-18', 2, 52, '', 'tx37.png');
INSERT INTO `xsb` VALUES (2021011051, '高金铎', '', '0', '1988-09-19', 2, 52, '', 'tx38.png');
INSERT INTO `xsb` VALUES (2021011052, '黄振中', '', '0', '1988-09-20', 2, 55, '', 'tx39.png');
INSERT INTO `xsb` VALUES (2021011053, '肖天河', '', '0', '1988-09-21', 2, 55, '', 'tx40.png');
INSERT INTO `xsb` VALUES (2021011054, '戴振刚', '', '0', '1988-09-22', 2, 55, '', 'tx41.png');
INSERT INTO `xsb` VALUES (2021011055, '蓝浩月', '', '0', '1988-09-23', 2, 55, '', 'tx42.png');
INSERT INTO `xsb` VALUES (2021011056, '陈丹敏', '', '0', '1988-09-24', 2, 40, '', 'tx43.png');
INSERT INTO `xsb` VALUES (2021011057, '梁珊珊', '', '0', '1988-09-25', 2, 42, '', 'tx44.png');
INSERT INTO `xsb` VALUES (2021011058, '吴颖怡', '', '0', '1988-09-26', 2, 40, '', 'tx45.png');
INSERT INTO `xsb` VALUES (2021011059, '林雨婷', '', '0', '1988-09-27', 2, 44, '', 'tx46.png');
INSERT INTO `xsb` VALUES (2021011060, '金美欣', '', '0', '1988-09-28', 2, 46, '', 'tx47.png');
INSERT INTO `xsb` VALUES (2021011061, '梁晓榆', '', '0', '1988-09-29', 2, 48, '', 'tx48.png');
INSERT INTO `xsb` VALUES (2021011062, '邓芷悦', '', '0', '1988-09-30', 2, 50, '', 'tx49.png');
INSERT INTO `xsb` VALUES (2021011063, '林妍', '', '0', '1989-07-01', 2, 52, '', 'tx50.png');
INSERT INTO `xsb` VALUES (2021011064, '戴青', '', '0', '1989-07-02', 2, 52, '', 'tx51.png');
INSERT INTO `xsb` VALUES (2021011065, '许年钊', '', '0', '1989-07-03', 2, 52, '', 'tx52.png');
INSERT INTO `xsb` VALUES (2021011066, '梁熠棠', '', '0', '1989-07-04', 3, 52, '', 'tx53.png');
INSERT INTO `xsb` VALUES (2021011067, '李吻春', '', '0', '1989-07-05', 3, 55, '', 'tx54.png');
INSERT INTO `xsb` VALUES (2021011068, '陈宇浩', '', '0', '1989-07-06', 3, 55, '', 'tx55.png');
INSERT INTO `xsb` VALUES (2021011069, '罗昊', '', '0', '1989-07-07', 3, 55, '', 'tx56.png');
INSERT INTO `xsb` VALUES (2021011070, '冯仕康', '', '0', '1989-07-08', 3, 55, '', 'tx57.png');
INSERT INTO `xsb` VALUES (2021011071, '陈嘉泽', '', '0', '1989-07-09', 3, 40, '', 'tx58.png');
INSERT INTO `xsb` VALUES (2021011072, '赵锦杰', '', '0', '1989-07-10', 3, 42, '', 'tx59.png');
INSERT INTO `xsb` VALUES (2021011073, '朱迪成', '', '0', '1989-07-11', 3, 40, '', 'tx60.png');
INSERT INTO `xsb` VALUES (2021011074, '谢力行', '', '0', '1989-07-12', 3, 44, '', 'tx61.png');
INSERT INTO `xsb` VALUES (2021011075, '陈荣基', '', '0', '1989-07-13', 3, 46, '', 'tx62.png');
INSERT INTO `xsb` VALUES (2021011076, '张劭炜', '', '0', '1989-07-14', 3, 48, '', 'tx63.png');
INSERT INTO `xsb` VALUES (2021011077, '郑鑫', '', '0', '1989-07-15', 3, 50, '', 'tx64.png');
INSERT INTO `xsb` VALUES (2021011078, '麦子彬', '', '0', '1989-07-16', 3, 52, '', 'tx65.png');
INSERT INTO `xsb` VALUES (2021011079, '梁传林', '', '0', '1989-07-17', 3, 52, '', 'tx66.png');
INSERT INTO `xsb` VALUES (2021011080, '侯飞龙', '', '0', '1989-07-18', 3, 52, '', 'tx67.png');
INSERT INTO `xsb` VALUES (2021011081, '李东阳', '', '0', '1989-07-19', 3, 52, '', 'tx68.png');
INSERT INTO `xsb` VALUES (2021011082, '张灯珍', '', '0', '1989-07-20', 3, 55, '', 'tx69.png');
INSERT INTO `xsb` VALUES (2021011083, '胡景富', '', '0', '1989-07-21', 3, 55, '', 'tx70.png');
INSERT INTO `xsb` VALUES (2021011084, '刘福翔', '', '0', '1989-07-22', 3, 55, '', 'tx71.png');
INSERT INTO `xsb` VALUES (2021011085, '陆逊宇', '', '0', '1989-07-23', 3, 55, '', 'tx72.png');
INSERT INTO `xsb` VALUES (2021011086, '周源昊', '', '0', '1989-07-24', 3, 40, '', 'tx73.png');
INSERT INTO `xsb` VALUES (2021011087, '陈树耿', '', '0', '1989-07-25', 3, 42, '', 'tx74.png');
INSERT INTO `xsb` VALUES (2021011088, '邱文斌', '', '0', '1989-07-26', 3, 40, '', 'tx75.png');
INSERT INTO `xsb` VALUES (2021011089, '叶恒生', '', '0', '1989-07-27', 3, 44, '', 'tx76.png');
INSERT INTO `xsb` VALUES (2021011090, '曾梓浩', '', '0', '1989-07-28', 3, 46, '', 'tx77.png');
INSERT INTO `xsb` VALUES (2021011091, '谢锦民', '', '0', '1989-07-29', 3, 48, '', 'tx78.png');
INSERT INTO `xsb` VALUES (2021011092, '容永康', '', '0', '1989-07-30', 3, 50, '', 'tx79.png');
INSERT INTO `xsb` VALUES (2021011093, '陈璟锋', '', '0', '1990-06-01', 3, 52, '', 'tx80.png');
INSERT INTO `xsb` VALUES (2021011094, '陈伟胜', '', '0', '1990-06-02', 3, 52, '', 'tx81.png');
INSERT INTO `xsb` VALUES (2021011095, '杨雨轩', '', '0', '1990-06-03', 3, 52, '', 'tx82.png');
INSERT INTO `xsb` VALUES (2021011096, '骆明金', '', '0', '1990-06-04', 3, 52, '', 'tx83.png');
INSERT INTO `xsb` VALUES (2021011097, '周裕景', '', '0', '1990-06-05', 3, 55, '', 'tx84.png');
INSERT INTO `xsb` VALUES (2021011098, '李好', '', '0', '1990-06-06', 3, 55, '', 'tx85.png');
INSERT INTO `xsb` VALUES (2021011099, '李拓', '', '0', '1990-06-07', 3, 55, '', 'tx86.png');
INSERT INTO `xsb` VALUES (2021011100, '文国鸿', '', '0', '1990-06-08', 3, 55, '', 'tx87.png');
INSERT INTO `xsb` VALUES (2021011101, '彭俊浩', '', '0', '1990-06-09', 3, 40, '', 'tx88.png');
INSERT INTO `xsb` VALUES (2021011102, '梁柏才', '', '0', '1990-06-10', 4, 42, '', 'tx89.png');
INSERT INTO `xsb` VALUES (2021011103, '胡国泰', '', '0', '1990-06-11', 4, 40, '', 'tx90.png');
INSERT INTO `xsb` VALUES (2021011104, '曹衡', '', '0', '1990-06-12', 4, 44, '', 'tx91.png');
INSERT INTO `xsb` VALUES (2021011105, '康成成', '', '0', '1990-06-13', 4, 46, '', 'tx92.png');
INSERT INTO `xsb` VALUES (2021011106, '彭友能', '', '0', '1990-06-14', 4, 48, '', 'tx93.png');
INSERT INTO `xsb` VALUES (2021011107, '郭明亮', '', '0', '1990-06-15', 4, 50, '', 'tx94.png');
INSERT INTO `xsb` VALUES (2021011108, '毛佩珊', '', '0', '1990-06-16', 4, 52, '', 'tx95.png');
INSERT INTO `xsb` VALUES (2021011109, '杨颖锋', '', '0', '1990-06-17', 4, 52, '', 'tx96.png');
INSERT INTO `xsb` VALUES (2021011110, '王若楠', '', '0', '1990-06-18', 4, 52, '', 'tx97.png');
INSERT INTO `xsb` VALUES (2021011111, '赵雯仪', '', '0', '1990-06-19', 4, 52, '', 'tx98.png');
INSERT INTO `xsb` VALUES (2021011112, '唐嘉炜', '', '0', '1990-06-20', 4, 55, '', 'tx99.png');
INSERT INTO `xsb` VALUES (2021011113, '郑锦茹', '', '0', '1990-06-21', 4, 55, '', 'tx100.png');
INSERT INTO `xsb` VALUES (2021011114, '梁自能', '', '0', '1990-06-22', 4, 55, '', 'tx101.png');
INSERT INTO `xsb` VALUES (2021011115, '刘嘉豪', '', '0', '1990-06-23', 4, 55, '', 'tx102.png');
INSERT INTO `xsb` VALUES (2021011116, '李家雄', '', '0', '1990-06-24', 4, 40, '', 'tx103.png');
INSERT INTO `xsb` VALUES (2021011117, '李宇杰', '', '0', '1990-06-25', 4, 42, '', 'tx104.png');
INSERT INTO `xsb` VALUES (2021011118, '曾庆龙', '', '0', '1990-06-26', 4, 40, '', 'tx105.png');
INSERT INTO `xsb` VALUES (2021011119, '肖嘉辉', '', '0', '1990-06-27', 4, 44, '', 'tx106.png');
INSERT INTO `xsb` VALUES (2021011120, '刘宗峻', '', '0', '1990-06-28', 4, 46, '', 'tx107.png');
INSERT INTO `xsb` VALUES (2021011121, '吴迪', '', '0', '1990-06-29', 4, 48, '', 'tx108.png');
INSERT INTO `xsb` VALUES (2021011122, '张泽锋', '', '0', '1990-06-30', 4, 50, '', 'tx109.png');
INSERT INTO `xsb` VALUES (2021011123, '林楚超', '', '0', '1991-05-01', 4, 52, '', 'tx110.png');
INSERT INTO `xsb` VALUES (2021011124, '梁宇赐', '', '0', '1991-05-02', 4, 52, '', 'tx111.png');
INSERT INTO `xsb` VALUES (2021011125, '黄佳奇', '', '0', '1991-05-03', 4, 52, '', 'tx112.png');
INSERT INTO `xsb` VALUES (2021011126, '黄智豪', '', '0', '1991-05-04', 4, 52, '', 'tx113.png');
INSERT INTO `xsb` VALUES (2021011127, '梁源斌', '', '0', '1991-05-05', 4, 55, '', 'tx114.png');
INSERT INTO `xsb` VALUES (2021011128, '石孔霖', '', '0', '1991-05-06', 4, 55, '', 'tx115.png');
INSERT INTO `xsb` VALUES (2021011129, '廖熙洋', '', '0', '1991-05-07', 4, 55, '', 'tx116.png');
INSERT INTO `xsb` VALUES (2021011130, '高智领', '', '0', '1991-05-08', 4, 55, '', 'tx117.png');
INSERT INTO `xsb` VALUES (2021011131, '张君涛', '', '0', '1991-05-09', 4, 40, '', 'tx118.png');
INSERT INTO `xsb` VALUES (2021011132, '何春霖', '', '0', '1991-05-10', 4, 42, '', 'tx119.png');
INSERT INTO `xsb` VALUES (2021011133, '聂子龙', '', '0', '1991-05-11', 5, 40, '', 'tx120.png');
INSERT INTO `xsb` VALUES (2021011134, '舒乙青', '', '0', '1991-05-12', 5, 44, '', 'tx121.png');
INSERT INTO `xsb` VALUES (2021011135, '张高肇', '', '0', '1991-05-13', 5, 46, '', 'tx122.png');
INSERT INTO `xsb` VALUES (2021011136, '邓智聪', '', '0', '1991-05-14', 5, 48, '', 'tx123.png');
INSERT INTO `xsb` VALUES (2021011137, '李嘉浩', '', '1', '1991-05-15', 5, 50, '', 'tx124.png');
INSERT INTO `xsb` VALUES (2021011138, '李堃俊', '', '1', '1991-05-16', 5, 52, '', 'tx125.png');
INSERT INTO `xsb` VALUES (2021011139, '骆玮宁', '', '1', '1991-05-17', 5, 52, '', 'tx126.png');
INSERT INTO `xsb` VALUES (2021011140, '李锦财', '', '1', '1991-05-18', 5, 52, '', 'tx127.png');
INSERT INTO `xsb` VALUES (2021011141, '谭泽林', '', '1', '1991-05-19', 5, 52, '', 'tx128.png');
INSERT INTO `xsb` VALUES (2021011142, '李焕滨', '', '1', '1991-05-20', 5, 55, '', 'tx129.png');
INSERT INTO `xsb` VALUES (2021011143, '李怡达', '', '1', '1991-05-21', 5, 55, '', 'tx130.png');
INSERT INTO `xsb` VALUES (2021011144, '黄浩', '', '1', '1991-05-22', 5, 55, '', 'tx131.png');
INSERT INTO `xsb` VALUES (2021011145, '陈诺', '', '1', '1991-05-23', 5, 55, '', 'tx132.png');
INSERT INTO `xsb` VALUES (2021011146, '卢嘉鹏', '', '1', '1991-05-24', 5, 40, '', 'tx133.png');
INSERT INTO `xsb` VALUES (2021011147, '马朗瑶', '', '1', '1991-05-25', 5, 42, '', 'tx134.png');
INSERT INTO `xsb` VALUES (2021011148, '林惜华', '', '1', '1991-05-26', 5, 40, '', 'tx135.png');
INSERT INTO `xsb` VALUES (2021011149, '谢咏妍', '', '1', '1991-05-27', 5, 44, '', 'tx136.png');
INSERT INTO `xsb` VALUES (2021011150, '苏倩盈', '', '1', '1991-05-28', 5, 46, '', 'tx137.png');
INSERT INTO `xsb` VALUES (2021011151, '邓雨虹', '', '1', '1991-05-29', 5, 48, '', 'tx138.png');
INSERT INTO `xsb` VALUES (2021011152, '邝洁莹', '', '1', '1991-05-30', 5, 50, '', 'tx139.png');
INSERT INTO `xsb` VALUES (2021011153, '张露露', '', '1', '1991-04-01', 5, 52, '', 'tx140.png');
INSERT INTO `xsb` VALUES (2021011154, '梁坚仪', '', '1', '1991-04-02', 5, 52, '', 'tx141.png');
INSERT INTO `xsb` VALUES (2021011155, '林梦妮', '', '1', '1991-04-03', 5, 52, '', 'tx142.png');
INSERT INTO `xsb` VALUES (2021011156, '陆楚唯', '', '1', '1991-04-04', 5, 52, '', 'tx143.png');
INSERT INTO `xsb` VALUES (2021011157, '林美滢', '', '1', '1991-04-05', 5, 55, '', 'tx144.png');
INSERT INTO `xsb` VALUES (2021011158, '王安颖', '', '1', '1991-04-06', 5, 55, '', 'tx145.png');
INSERT INTO `xsb` VALUES (2021011159, '周子琪', '', '0', '1991-04-07', 5, 55, '', 'tx146.png');
INSERT INTO `xsb` VALUES (2021011160, '陈艳仪', '', '0', '1991-04-08', 5, 55, '', 'tx147.png');
INSERT INTO `xsb` VALUES (2021011161, '陈慧璇', '', '0', '1991-04-09', 5, 40, '', 'tx148.png');
INSERT INTO `xsb` VALUES (2021011162, '余钰', '', '0', '1991-04-10', 5, 42, '', 'tx149.png');

-- ----------------------------
-- Table structure for xskcb
-- ----------------------------
DROP TABLE IF EXISTS `xskcb`;
CREATE TABLE `xskcb`  (
  `xh` int(11) NULL DEFAULT NULL,
  `kch` int(11) NULL DEFAULT NULL,
  INDEX `xskcb_xh_fk`(`xh`) USING BTREE,
  INDEX `xskcb_kch_fk`(`kch`) USING BTREE,
  CONSTRAINT `xskcb_kch_fk` FOREIGN KEY (`kch`) REFERENCES `kcb` (`kch`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xskcb_xh_fk` FOREIGN KEY (`xh`) REFERENCES `xsb` (`xh`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xskcb
-- ----------------------------
INSERT INTO `xskcb` VALUES (2021011001, 101);
INSERT INTO `xskcb` VALUES (2021011001, 102);
INSERT INTO `xskcb` VALUES (2021011001, 103);
INSERT INTO `xskcb` VALUES (2021011001, 104);
INSERT INTO `xskcb` VALUES (2021011002, 101);
INSERT INTO `xskcb` VALUES (2021011002, 102);
INSERT INTO `xskcb` VALUES (2021011002, 103);
INSERT INTO `xskcb` VALUES (2021011006, 101);
INSERT INTO `xskcb` VALUES (2021011007, 106);
INSERT INTO `xskcb` VALUES (2021011005, 101);
INSERT INTO `xskcb` VALUES (2021011005, 102);

-- ----------------------------
-- Table structure for zyb
-- ----------------------------
DROP TABLE IF EXISTS `zyb`;
CREATE TABLE `zyb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zym` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rs` int(11) NULL DEFAULT 0,
  `fdy` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zyb
-- ----------------------------
INSERT INTO `zyb` VALUES (1, '软件工程', 150, '东方不败');
INSERT INTO `zyb` VALUES (2, '通信工程', 160, '段誉');
INSERT INTO `zyb` VALUES (3, '计算机科学与技术', 171, '王语嫣');
INSERT INTO `zyb` VALUES (4, '物联网工程', 143, '虚竹');
INSERT INTO `zyb` VALUES (5, '工商管理', 100, '王嘉陵');
INSERT INTO `zyb` VALUES (6, '网络安全', 180, '令狐冲');
INSERT INTO `zyb` VALUES (7, '人工智能', 130, '欧阳锋');
INSERT INTO `zyb` VALUES (10, '计算机网络通信', 80, '李莫愁');

SET FOREIGN_KEY_CHECKS = 1;
