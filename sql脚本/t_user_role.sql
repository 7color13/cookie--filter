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

 Date: 04/10/2020 20:17:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `key_user_role`(`roleId`) USING BTREE,
  INDEX `key_userName`(`userName`) USING BTREE,
  CONSTRAINT `key_userName` FOREIGN KEY (`userName`) REFERENCES `t_users` (`userName`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `key_user_role` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 'liurui');
INSERT INTO `t_user_role` VALUES (2, 1, 'admin');
INSERT INTO `t_user_role` VALUES (3, 2, 'user1');
INSERT INTO `t_user_role` VALUES (4, 2, 'user2');

SET FOREIGN_KEY_CHECKS = 1;
