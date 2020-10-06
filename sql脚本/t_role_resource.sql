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

 Date: 04/10/2020 20:17:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_role_resource`;
CREATE TABLE `t_role_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(11) NOT NULL,
  `roleId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `key_role_resource`(`resourceId`) USING BTREE,
  CONSTRAINT `key_role_resource` FOREIGN KEY (`resourceId`) REFERENCES `t_resource` (`resourceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_resource
-- ----------------------------
INSERT INTO `t_role_resource` VALUES (1, 1, 1);
INSERT INTO `t_role_resource` VALUES (2, 1, 2);
INSERT INTO `t_role_resource` VALUES (3, 2, 1);
INSERT INTO `t_role_resource` VALUES (4, 3, 1);
INSERT INTO `t_role_resource` VALUES (5, 4, 1);
INSERT INTO `t_role_resource` VALUES (6, 4, 2);

SET FOREIGN_KEY_CHECKS = 1;
