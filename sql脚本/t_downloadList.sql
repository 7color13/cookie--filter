/*
 Navicat Premium Data Transfer

 Source Server         : docker
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 47.110.70.107:8081
 Source Schema         : loginTest

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 04/10/2020 20:18:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_downloadList
-- ----------------------------
DROP TABLE IF EXISTS `t_downloadList`;
CREATE TABLE `t_downloadList`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` bigint(100) NULL DEFAULT NULL,
  `star` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_downloadList
-- ----------------------------
INSERT INTO `t_downloadList` VALUES (1, '彩色欧美', 'file/彩色欧美.pptx', '彩色欧美风格PPT模板', 4760535, 4, 'file/ppt.png');
INSERT INTO `t_downloadList` VALUES (2, 'docker文档', 'file/docker.md', 'docker学习文档下载', 2140, 5, 'file/markdown.png');

SET FOREIGN_KEY_CHECKS = 1;
