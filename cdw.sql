/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : cdw

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 08/06/2023 09:13:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category_big
-- ----------------------------
DROP TABLE IF EXISTS `category_big`;
CREATE TABLE `category_big`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_big
-- ----------------------------
INSERT INTO `category_big` VALUES (1, 'Thức ăn cho chó');
INSERT INTO `category_big` VALUES (2, 'Thức ăn cho mèo');
INSERT INTO `category_big` VALUES (3, 'Thời trang cho chó mèo');
INSERT INTO `category_big` VALUES (4, 'Sức khỏe cho chó mèo');
INSERT INTO `category_big` VALUES (5, 'Vòng cổ dây dắt');
INSERT INTO `category_big` VALUES (6, 'Vận chuyển chó mèo');
INSERT INTO `category_big` VALUES (7, 'Đồ chơi cho chó mèo');
INSERT INTO `category_big` VALUES (8, 'Dụng cụ sinh hoạt cho chó mèo');
INSERT INTO `category_big` VALUES (9, 'Sữa tắm nước hoa cho chó mèo');
INSERT INTO `category_big` VALUES (10, 'Lồng nhà nệm');
INSERT INTO `category_big` VALUES (11, 'Dụng cụ Grooming');

-- ----------------------------
-- Table structure for category_small
-- ----------------------------
DROP TABLE IF EXISTS `category_small`;
CREATE TABLE `category_small`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_small
-- ----------------------------
INSERT INTO `category_small` VALUES (1, 'Thức ăn hạt khô cho chó');
INSERT INTO `category_small` VALUES (2, 'Pate cho chó');
INSERT INTO `category_small` VALUES (3, 'Xương gặm bánh thưởng cho chó');
INSERT INTO `category_small` VALUES (4, 'Sữa cho chó');
INSERT INTO `category_small` VALUES (5, 'Thức ăn Hạt khô cho mèo');
INSERT INTO `category_small` VALUES (6, 'Pate cho mèo');
INSERT INTO `category_small` VALUES (7, 'Bánh thưởng cho mèo');
INSERT INTO `category_small` VALUES (8, 'Sữa cho mèo');
INSERT INTO `category_small` VALUES (9, 'Quần áo hằng ngày');
INSERT INTO `category_small` VALUES (10, 'Quần áo lễ hội');
INSERT INTO `category_small` VALUES (11, 'Giày vớ');
INSERT INTO `category_small` VALUES (12, 'Rọ mõm cho chó');
INSERT INTO `category_small` VALUES (13, 'Phụ kiện thời trang');
INSERT INTO `category_small` VALUES (14, 'Thực phẩm sức khỏe');
INSERT INTO `category_small` VALUES (15, 'Chăm sóc da lông');
INSERT INTO `category_small` VALUES (16, 'Xổ giun');
INSERT INTO `category_small` VALUES (17, 'Diệt ve rận bọ chét');
INSERT INTO `category_small` VALUES (18, 'Tai mắt miệng');
INSERT INTO `category_small` VALUES (19, 'Tiêu hóa tiết niệu');
INSERT INTO `category_small` VALUES (20, 'Túi balo');
INSERT INTO `category_small` VALUES (21, 'Địu');
INSERT INTO `category_small` VALUES (22, 'Lồng vận chuyển');
INSERT INTO `category_small` VALUES (23, 'Đồ chơi huấn luyện');
INSERT INTO `category_small` VALUES (24, 'Đồ chơi âm thanh');
INSERT INTO `category_small` VALUES (25, 'Đồ chơi thư giản');
INSERT INTO `category_small` VALUES (26, 'Đồ chơi cào gặm');
INSERT INTO `category_small` VALUES (27, 'Đồ chơi vận động');
INSERT INTO `category_small` VALUES (28, 'Dụng cụ ăn uống');
INSERT INTO `category_small` VALUES (29, 'Dụng cụ vệ sinh khử mùi');
INSERT INTO `category_small` VALUES (30, 'none');

-- ----------------------------
-- Table structure for img_detail
-- ----------------------------
DROP TABLE IF EXISTS `img_detail`;
CREATE TABLE `img_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdnj6dibgbuvf1fsnf1sn36yjg`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of img_detail
-- ----------------------------
INSERT INTO `img_detail` VALUES (1, 'https://bizweb.dktcdn.net/thumb/medium/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-2.jpg?v=1674095387173', NULL);
INSERT INTO `img_detail` VALUES (2, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-3.jpg?v=1674095406430', NULL);
INSERT INTO `img_detail` VALUES (3, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-4.jpg?v=1674098597583', NULL);
INSERT INTO `img_detail` VALUES (4, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-cho-fibs-1kg5-1.jpg?v=1683517022230', 5);
INSERT INTO `img_detail` VALUES (5, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-cho-fibs-thung-9kg.jpg?v=1683517028310', 5);
INSERT INTO `img_detail` VALUES (6, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-urinary-ho-tro-dieu-tri-soi-than-cho-cho-410g.jpg?v=1674093962843', 7);
INSERT INTO `img_detail` VALUES (7, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-urinary-ho-tro-dieu-tri-soi-than-cho-cho-hop-12goi.jpg?v=1674093967947', 7);
INSERT INTO `img_detail` VALUES (8, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-classic.jpg?v=1674986480920', 8);
INSERT INTO `img_detail` VALUES (9, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-hen-ham.jpg?v=1674986488237', 8);
INSERT INTO `img_detail` VALUES (10, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-ca-hoi.jpg?v=1674986492370', 8);
INSERT INTO `img_detail` VALUES (11, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-doi-chen-meo6.jpg?v=1669279190627', 9);
INSERT INTO `img_detail` VALUES (12, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-doi-chen-meo4.jpg?v=1669279196010', 9);
INSERT INTO `img_detail` VALUES (13, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ad-large-breed-1-5kg-1.jpg?v=1669280018430', 13);
INSERT INTO `img_detail` VALUES (14, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pp-medium-breed-2kg-1.jpg?v=1669280065050', 14);
INSERT INTO `img_detail` VALUES (15, '', 14);
INSERT INTO `img_detail` VALUES (16, '', 14);
INSERT INTO `img_detail` VALUES (17, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-cho-cho-meo-king-pet-hon-hop-ga-380g.jpg?v=1677310312867', 15);
INSERT INTO `img_detail` VALUES (18, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-cho-cho-meo-king-pet-hon-hop-ca-380g.jpg?v=1677310316950', 15);
INSERT INTO `img_detail` VALUES (19, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-cho-cho-meo-king-pet-sup-ca-sot-bo-380g.jpg?v=1677310324990', 15);
INSERT INTO `img_detail` VALUES (20, '', 16);
INSERT INTO `img_detail` VALUES (21, '', 16);
INSERT INTO `img_detail` VALUES (22, '', 16);
INSERT INTO `img_detail` VALUES (23, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/snack-cho-cho-bowwow-vi-ca-rot-pho-mai-100g.jpg?v=1683533522627', 17);
INSERT INTO `img_detail` VALUES (24, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/snack-cho-cho-bowwow-vi-hon-hop-thit-120g.jpg?v=1683533529470', 17);
INSERT INTO `img_detail` VALUES (25, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/snack-cho-cho-bowwow-vi-pho-mai-100g.jpg?v=1683533536217', 17);
INSERT INTO `img_detail` VALUES (26, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/banh-quy-cho-cho-doggyman-180g-sua.jpg?v=1683516931330', 18);
INSERT INTO `img_detail` VALUES (27, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/banh-quy-cho-cho-doggyman-450g-gan-khoai-lang.jpg?v=1683516936383', 18);
INSERT INTO `img_detail` VALUES (28, '', 18);
INSERT INTO `img_detail` VALUES (29, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thit-que-cho-cho-bow-wow-vi-ca-hoi-150g.jpg?v=1683256409467', 19);
INSERT INTO `img_detail` VALUES (30, '', 19);
INSERT INTO `img_detail` VALUES (31, '', 19);
INSERT INTO `img_detail` VALUES (32, '', 20);
INSERT INTO `img_detail` VALUES (33, '', 20);
INSERT INTO `img_detail` VALUES (34, '', 20);
INSERT INTO `img_detail` VALUES (35, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-predogen-lon-400gr-3.jpg?v=1669090844960', 21);
INSERT INTO `img_detail` VALUES (36, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-predogen-lon-400gr-2.jpg?v=1669090849757', 21);
INSERT INTO `img_detail` VALUES (37, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-predogen-hop-giay-110gr-2.jpg?v=1669090862727', 21);
INSERT INTO `img_detail` VALUES (38, '', 22);
INSERT INTO `img_detail` VALUES (39, '', 22);
INSERT INTO `img_detail` VALUES (40, '', 22);
INSERT INTO `img_detail` VALUES (47, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-bio-milk-hop-15-goi.jpg?v=1683364780620', 25);
INSERT INTO `img_detail` VALUES (48, '', 25);
INSERT INTO `img_detail` VALUES (49, '', 25);
INSERT INTO `img_detail` VALUES (50, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-lapaw-loai-truong-thanh.jpg?v=1681360409573', 26);
INSERT INTO `img_detail` VALUES (51, '', 26);
INSERT INTO `img_detail` VALUES (52, '', 26);
INSERT INTO `img_detail` VALUES (53, '', 27);
INSERT INTO `img_detail` VALUES (54, '', 27);
INSERT INTO `img_detail` VALUES (55, '', 27);
INSERT INTO `img_detail` VALUES (56, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/reflex-vi-ca-hoi-va-gao.jpg?v=1669024795947', 28);
INSERT INTO `img_detail` VALUES (57, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/reflex-vi-ca-hoi-va-ca-com.jpg?v=1669024800743', 28);
INSERT INTO `img_detail` VALUES (58, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/reflex-vi-ga-va-gao.jpg?v=1669024809420', 28);
INSERT INTO `img_detail` VALUES (59, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-me-o-7kg-vi-ca-thu-bao-xa.jpg?v=1676431641013', 29);
INSERT INTO `img_detail` VALUES (60, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-me-o-7kg-vi-hai-san-bao-xa.jpg?v=1676431648093', 29);
INSERT INTO `img_detail` VALUES (61, '', 29);
INSERT INTO `img_detail` VALUES (62, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-king-pet-bao-anh-cho-meo-lon-80g-ca-hoi.jpg?v=1677232608703', 30);
INSERT INTO `img_detail` VALUES (63, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-king-pet-bao-anh-cho-meo-lon-80g-tom.jpg?v=1677232617037', 30);
INSERT INTO `img_detail` VALUES (64, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-king-pet-bao-anh-cho-meo-lon-80g-muc-ong.jpg?v=1677232622000', 30);
INSERT INTO `img_detail` VALUES (65, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-dong-hop-kitcat-complete-cho-meo-vi-ca-ca-hoi.png?v=1669015227697', 31);
INSERT INTO `img_detail` VALUES (66, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-dong-hop-kitcat-complete-cho-meo-vi-ca-ga.png?v=1669015279983', 31);
INSERT INTO `img_detail` VALUES (67, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-dong-hop-kitcat-complete-cho-meo-vi-ca-ky-tu.png?v=1669015286197', 31);
INSERT INTO `img_detail` VALUES (68, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-classic.jpg?v=1674986480920', 32);
INSERT INTO `img_detail` VALUES (69, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-hen-ham.jpg?v=1674986488237', 32);
INSERT INTO `img_detail` VALUES (70, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ga-ca-hoi.jpg?v=1674986492370', 32);
INSERT INTO `img_detail` VALUES (71, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-kitcat-goat-milk-vi-ga-xe-thit-cua-lon-70gr.jpg?v=1669104146017', 33);
INSERT INTO `img_detail` VALUES (72, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-kitcat-goat-milk-vi-ga-xe-ca-hoii-lon-70gr.jpg?v=1669104151643', 33);
INSERT INTO `img_detail` VALUES (73, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-kitcat-goat-milk-vi-ga-xe-ca-hun-khoi-lon-70gr.jpg?v=1669104158430', 33);
INSERT INTO `img_detail` VALUES (74, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vien-tieu-bui-long-cho-meo-cattyman-ca-ngu-ca-thu.jpg?v=1674094455717', 34);
INSERT INTO `img_detail` VALUES (75, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vien-tieu-bui-long-cho-meo-cattyman-ca-ngu-ga.jpg?v=1674094461933', 34);
INSERT INTO `img_detail` VALUES (76, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vien-tieu-bui-long-cho-meo-cattyman-ca-ngu-ca-tuyet.jpg?v=1674094482863', 34);
INSERT INTO `img_detail` VALUES (77, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xuc-xich-bioline-cho-cho-meo-4.jpg?v=1669090995093', 35);
INSERT INTO `img_detail` VALUES (78, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xuc-xich-bioline-cho-cho-meo-2-eb2bc834-fcad-40f2-b25f-1542b2b5e42b.jpg?v=1669091000407', 35);
INSERT INTO `img_detail` VALUES (79, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xuc-xich-bioline-cho-cho-meo-5.jpg?v=1669091005243', 35);
INSERT INTO `img_detail` VALUES (80, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/kitcat-freezebites-salmon-15gr.jpg?v=1669091229367', 36);
INSERT INTO `img_detail` VALUES (81, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/kitcat-freezebites-chicken-giblets-20gr.jpg?v=1669091237923', 36);
INSERT INTO `img_detail` VALUES (82, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/kitcat-freezebites-chicken-15gr.jpg?v=1669091248060', 36);
INSERT INTO `img_detail` VALUES (83, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xot-ciao-cho-meo-hop-50-tuyp-vi-ga.jpg?v=1676704450220', 37);
INSERT INTO `img_detail` VALUES (84, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xot-ciao-cho-meo-hop-50-tuyp-vi-ca-collagen.jpg?v=1676704455637', 37);
INSERT INTO `img_detail` VALUES (85, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xot-ciao-cho-meo-hop-50-tuyp-vi-ca-collagen-tuyp-le.jpg?v=1676704460677', 37);
INSERT INTO `img_detail` VALUES (86, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-precaten-lon-400gr-1-76790a25-245f-4265-aaa8-ece61f7cb182-56045ed0-7474-4879-83ac-5d6491b05c17.jpg?v=1684936838183', 38);
INSERT INTO `img_detail` VALUES (87, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-precaten-lon-400gr-4.jpg?v=1684936838183', 38);
INSERT INTO `img_detail` VALUES (88, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-precaten-lon-400gr-3.jpg?v=1684936838183', 38);
INSERT INTO `img_detail` VALUES (89, '', 39);
INSERT INTO `img_detail` VALUES (90, '', 39);
INSERT INTO `img_detail` VALUES (91, '', 39);
INSERT INTO `img_detail` VALUES (92, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-kmr-lon-749gr.jpg?v=1682759834380', 40);
INSERT INTO `img_detail` VALUES (93, '', 40);
INSERT INTO `img_detail` VALUES (94, '', 40);
INSERT INTO `img_detail` VALUES (95, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-bio-milk-hop-15-goi.jpg?v=1683364780620', 41);
INSERT INTO `img_detail` VALUES (96, '', 41);
INSERT INTO `img_detail` VALUES (97, '', 41);
INSERT INTO `img_detail` VALUES (98, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-6eac6baa-708c-4304-8da2-d9358deb19c7.png?v=1669018220310', 42);
INSERT INTO `img_detail` VALUES (99, '', 42);
INSERT INTO `img_detail` VALUES (100, '', 42);
INSERT INTO `img_detail` VALUES (101, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-ni-caro-co-non-cho-cho-meo1.jpg?v=1669024172697', 43);
INSERT INTO `img_detail` VALUES (102, '', 43);
INSERT INTO `img_detail` VALUES (103, '', 43);
INSERT INTO `img_detail` VALUES (104, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-jean-hong-cham-bi-cho-cho-meo-fb.png?v=1669015732350', 44);
INSERT INTO `img_detail` VALUES (105, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-a28f5e42-8f72-41b2-aa1a-f78004c9c59e.png?v=1669015736987', 44);
INSERT INTO `img_detail` VALUES (106, '', 44);
INSERT INTO `img_detail` VALUES (107, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ren-dinh-hoa-tim.jpg?v=1669101648030', 45);
INSERT INTO `img_detail` VALUES (108, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/htb1zgcravbj-uvjszfpq6a0sxxas.jpg?v=1669101653243', 45);
INSERT INTO `img_detail` VALUES (109, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/htb19idfdogf3kvjszfvq6z-nxxap.jpg?v=1669101662017', 45);
INSERT INTO `img_detail` VALUES (110, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-tet-lan-nut-tau1.jpg?v=1671781902510', 46);
INSERT INTO `img_detail` VALUES (111, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-tet-lan-nut-tau.jpg?v=1671781909510', 46);
INSERT INTO `img_detail` VALUES (112, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/size-ao-df2a1052-6852-43e2-ae19-95467724381a.png?v=1672031919560', 46);
INSERT INTO `img_detail` VALUES (113, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-ren-4-tang2.jpg?v=1671781949590', 47);
INSERT INTO `img_detail` VALUES (114, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-ren-4-tang.jpg?v=1671781956400', 47);
INSERT INTO `img_detail` VALUES (115, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/size-ao-5404532e-f476-4199-91f1-7b0db2bae372.png?v=1672285342443', 47);
INSERT INTO `img_detail` VALUES (116, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-truc-tho1.jpg?v=1671788681297', 48);
INSERT INTO `img_detail` VALUES (117, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-truc-tho2.jpg?v=1671788798083', 48);
INSERT INTO `img_detail` VALUES (118, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-truc-tho3.jpg?v=1671788803687', 48);
INSERT INTO `img_detail` VALUES (119, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-meo-ca-chep1.jpg?v=1671789215113', 49);
INSERT INTO `img_detail` VALUES (120, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-meo-ca-chep2.jpg?v=1671789247710', 49);
INSERT INTO `img_detail` VALUES (121, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/size-ao-76d2d357-a6d4-4bb5-8457-81d9c62d3651.png?v=1672302732340', 49);
INSERT INTO `img_detail` VALUES (122, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vo-2.jpg?v=1676101601007', 50);
INSERT INTO `img_detail` VALUES (123, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vo-3.jpg?v=1676101606677', 50);
INSERT INTO `img_detail` VALUES (124, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vo-4.jpg?v=1676101613243', 50);
INSERT INTO `img_detail` VALUES (125, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/giay-jeans-cho-cho-meo-2.jpg?v=1679911072143', 51);
INSERT INTO `img_detail` VALUES (126, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/giay-jeans-cho-cho-meo-3.jpg?v=1679911076120', 51);
INSERT INTO `img_detail` VALUES (127, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/giay-jean-1.jpg?v=1679911081273', 51);
INSERT INTO `img_detail` VALUES (128, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-mom-silicon-cho-cho-2-f386c664-3bd5-4305-9aad-d9ee44bd6a0b.jpg?v=1680854064137', 52);
INSERT INTO `img_detail` VALUES (129, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-mom-silicon-cho-cho-1.jpg?v=1680854068610', 52);
INSERT INTO `img_detail` VALUES (130, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-mom-silicon-cho-cho-2.jpg?v=1680854073323', 52);
INSERT INTO `img_detail` VALUES (131, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-vai-cho-cho-mom-ngan-1.jpg?v=1680668284387', 53);
INSERT INTO `img_detail` VALUES (132, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/m-m-pug-2.jpg?v=1680668293320', 53);
INSERT INTO `img_detail` VALUES (133, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/m-m-pug-1.jpg?v=1680668299660', 53);
INSERT INTO `img_detail` VALUES (134, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-no-gan-chuong-2.jpg?v=1678438069697', 54);
INSERT INTO `img_detail` VALUES (135, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-no-gan-chuong-3.jpg?v=1678438075243', 54);
INSERT INTO `img_detail` VALUES (136, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-no-gan-chuong-4.jpg?v=1678438081217', 54);
INSERT INTO `img_detail` VALUES (137, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-den-led-kitty-1.jpg?v=1678436887337', 55);
INSERT INTO `img_detail` VALUES (138, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-den-led-kitty-2.jpg?v=1678436892627', 55);
INSERT INTO `img_detail` VALUES (139, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-hello-kitty-da-quang-7.jpg?v=1678436897800', 55);
INSERT INTO `img_detail` VALUES (140, '', 56);
INSERT INTO `img_detail` VALUES (141, '', 56);
INSERT INTO `img_detail` VALUES (142, '', 56);
INSERT INTO `img_detail` VALUES (143, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-tri-viem-da-bravecto-cho-cho-2-4-5kg.jpg?v=1678343061337', 57);
INSERT INTO `img_detail` VALUES (144, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-tri-viem-da-bravecto-cho-cho-4-5-10kg.jpg?v=1678343066233', 57);
INSERT INTO `img_detail` VALUES (145, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-tri-viem-da-bravecto-cho-cho-10-20kg.jpg?v=1678343072523', 57);
INSERT INTO `img_detail` VALUES (146, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-tam-tri-ghe-va-nam-da-bio-derma-cho-cho-200ml.jpg?v=1677480934710', 58);
INSERT INTO `img_detail` VALUES (147, '', 58);
INSERT INTO `img_detail` VALUES (148, '', 58);
INSERT INTO `img_detail` VALUES (149, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/gel-gimcat-hairball1.jpg?v=1669088332373', 59);
INSERT INTO `img_detail` VALUES (150, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/gel-gimcat-hairball.jpg?v=1669088340867', 59);
INSERT INTO `img_detail` VALUES (151, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/gel-gimcat-hairball3.jpg?v=1669088347707', 59);
INSERT INTO `img_detail` VALUES (152, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-so-giun-b-i-o-r-a-n-t-e-l-cho-cho-meo-2.png?v=1669083865077', 60);
INSERT INTO `img_detail` VALUES (153, '', 60);
INSERT INTO `img_detail` VALUES (154, '', 60);
INSERT INTO `img_detail` VALUES (155, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-xo-giun-drontal-cho-cho-le-1v.jpg?v=1679633912273', 61);
INSERT INTO `img_detail` VALUES (156, '', 61);
INSERT INTO `img_detail` VALUES (157, '', 61);
INSERT INTO `img_detail` VALUES (158, '', 62);
INSERT INTO `img_detail` VALUES (159, '', 62);
INSERT INTO `img_detail` VALUES (160, '', 62);
INSERT INTO `img_detail` VALUES (161, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-nho-gay-broadline-3-a58bf77c-8bd3-42d3-a471-e7e63a3fd6aa.jpg?v=1669091104203', 63);
INSERT INTO `img_detail` VALUES (162, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-nho-gay-broadline-2-063b4f7b-9aba-444b-a818-360d9389441e.jpg?v=1669091112720', 63);
INSERT INTO `img_detail` VALUES (163, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-nho-gay-broadline-4-0d58a2c6-5c49-48cb-8e45-083946febec0.jpg?v=1669091119567', 63);
INSERT INTO `img_detail` VALUES (164, '', 64);
INSERT INTO `img_detail` VALUES (165, '', 64);
INSERT INTO `img_detail` VALUES (166, '', 64);
INSERT INTO `img_detail` VALUES (167, '', 65);
INSERT INTO `img_detail` VALUES (168, '', 65);
INSERT INTO `img_detail` VALUES (169, '', 65);
INSERT INTO `img_detail` VALUES (170, '', 66);
INSERT INTO `img_detail` VALUES (171, '', 66);
INSERT INTO `img_detail` VALUES (172, '', 66);
INSERT INTO `img_detail` VALUES (173, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/men-tieu-hoa-biotic-cho-cho-meo-17aaee22-7ed0-401a-a281-302711582d26.jpg?v=1680943815153', 67);
INSERT INTO `img_detail` VALUES (174, '', 67);
INSERT INTO `img_detail` VALUES (175, '', 67);
INSERT INTO `img_detail` VALUES (176, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bo-day-dat-nit-bung-1.jpg?v=1682052219440', 68);
INSERT INTO `img_detail` VALUES (177, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bo-day-dat-nit-bung-4.jpg?v=1682052225000', 68);
INSERT INTO `img_detail` VALUES (178, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bo-day-dat-nit-bung-3.jpg?v=1682052231573', 68);
INSERT INTO `img_detail` VALUES (179, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/day-dat-balo-1.jpg?v=1681186315777', 69);
INSERT INTO `img_detail` VALUES (180, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/day-dat-balo-2.jpg?v=1681186321663', 69);
INSERT INTO `img_detail` VALUES (181, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/day-dat-balo-3.jpg?v=1681186328590', 69);
INSERT INTO `img_detail` VALUES (182, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/balo-so-dua-cho-cho-meo-3.jpg?v=1683518981947', 70);
INSERT INTO `img_detail` VALUES (183, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/balo-so-dua-cho-cho-meo-4.jpg?v=1683518991283', 70);
INSERT INTO `img_detail` VALUES (184, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/balo-so-dua-cho-cho-meo-4.jpg?v=1683518991283', 70);
INSERT INTO `img_detail` VALUES (185, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/diu-do-1.jpg?v=1683365990927', 71);
INSERT INTO `img_detail` VALUES (186, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/diu-do-5.jpg?v=1683365997567', 71);
INSERT INTO `img_detail` VALUES (187, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/diu-do-6.jpg?v=1683366015497', 71);
INSERT INTO `img_detail` VALUES (188, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-van-chuyen-hello-charmy-1.jpg?v=1669110329787', 72);
INSERT INTO `img_detail` VALUES (189, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-van-chuyen-hello-charmy-1.jpg?v=1669110329787', 72);
INSERT INTO `img_detail` VALUES (190, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-van-chuyen-hello-charmy-1.jpg?v=1669110329787', 72);
INSERT INTO `img_detail` VALUES (191, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-keo-dan-hinh-ech.jpg?v=1669109331587', 73);
INSERT INTO `img_detail` VALUES (192, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-keo-dan-hinh-cho.jpg?v=1669109337107', 73);
INSERT INTO `img_detail` VALUES (193, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-keo-dan-hinh-gau.jpg?v=1669109350083', 73);
INSERT INTO `img_detail` VALUES (194, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-thu-bong-tho.jpg?v=1669110523420', 74);
INSERT INTO `img_detail` VALUES (195, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-thu-bong-huou.jpg?v=1669110528777', 74);
INSERT INTO `img_detail` VALUES (196, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-thu-bong-tho.jpg?v=1669110523420', 74);
INSERT INTO `img_detail` VALUES (200, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-ve-sinh-thanh-gon-song-cho-cho-3.png?v=1669020313787', 76);
INSERT INTO `img_detail` VALUES (201, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-ve-sinh-thanh-gon-song-cho-cho-2.png?v=1669020319710', 76);
INSERT INTO `img_detail` VALUES (202, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-ve-sinh-thanh-gon-song-cho-cho-1.png?v=1669020325333', 76);
INSERT INTO `img_detail` VALUES (203, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dau-tam-spa-tropiclean-huong-kiwi-chai-473ml.jpg?v=1669109994307', 77);
INSERT INTO `img_detail` VALUES (204, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dau-tam-spa-tropiclean-huong-man-chai-473ml.jpg?v=1669110001480', 77);
INSERT INTO `img_detail` VALUES (205, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dau-tam-spa-tropiclean-huong-dua-leo-chai-473ml.jpg?v=1669110007290', 77);
INSERT INTO `img_detail` VALUES (206, '', 78);
INSERT INTO `img_detail` VALUES (207, '', 78);
INSERT INTO `img_detail` VALUES (208, '', 78);
INSERT INTO `img_detail` VALUES (209, '', 79);
INSERT INTO `img_detail` VALUES (210, '', 79);
INSERT INTO `img_detail` VALUES (211, '', 79);
INSERT INTO `img_detail` VALUES (212, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-meo-de-nhua-nlc-3w-xanh.jpg?v=1669103159607', 85);
INSERT INTO `img_detail` VALUES (213, '', 85);
INSERT INTO `img_detail` VALUES (214, '', 85);
INSERT INTO `img_detail` VALUES (215, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/110020574-332933331063659-5389922007356043673-n.jpg?v=1669104975267', 81);
INSERT INTO `img_detail` VALUES (216, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/117038388-2380133452290803-4056404279011547719-o.jpg?v=1669104981560', 81);
INSERT INTO `img_detail` VALUES (217, '', 81);
INSERT INTO `img_detail` VALUES (218, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/74893753-693126284543597-6245852209049763840-n.png?v=1669172906127', 82);
INSERT INTO `img_detail` VALUES (219, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/73404036-2819499778083244-3226500181465759744-n.png?v=1669172912297', 82);
INSERT INTO `img_detail` VALUES (220, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/70099687-400752854146739-7043541654413770752-n.png?v=1669172922867', 82);
INSERT INTO `img_detail` VALUES (221, '', 83);
INSERT INTO `img_detail` VALUES (222, '', 83);
INSERT INTO `img_detail` VALUES (223, '', 83);
INSERT INTO `img_detail` VALUES (224, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-cho-meo-c227-den.jpg?v=1669104935097', 84);
INSERT INTO `img_detail` VALUES (225, '', 84);
INSERT INTO `img_detail` VALUES (226, '', 84);
INSERT INTO `img_detail` VALUES (227, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-d219a-b.jpg?v=1669105005057', 80);
INSERT INTO `img_detail` VALUES (228, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-d219a-a.jpg?v=1669105013420', 80);
INSERT INTO `img_detail` VALUES (229, '', 80);
INSERT INTO `img_detail` VALUES (230, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bot-cam-mau-bioline-danh-cho-cho-meo.png?v=1669020606767', 87);
INSERT INTO `img_detail` VALUES (231, '', 87);
INSERT INTO `img_detail` VALUES (232, '', 87);
INSERT INTO `img_detail` VALUES (233, 'https://bizweb.dktcdn.net/thumb/medium/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-2.jpg?v=1674095387173', NULL);
INSERT INTO `img_detail` VALUES (234, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-3.jpg?v=1674095406430', NULL);
INSERT INTO `img_detail` VALUES (235, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-4.jpg?v=1674098597583', NULL);
INSERT INTO `img_detail` VALUES (236, 'https://bizweb.dktcdn.net/thumb/medium/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-2.jpg?v=1674095387173', 1);
INSERT INTO `img_detail` VALUES (237, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-3.jpg?v=1674095406430', 1);
INSERT INTO `img_detail` VALUES (238, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-4.jpg?v=1674098597583', 1);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `quality` int NOT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `day_order` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKb8bg2bkty0oksa3wiq5mp5qnc`(`product_id`) USING BTREE,
  INDEX `FKrg4kxl9gq4hnhvm49sixgjydf`(`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 80000, 1, 3, 2, '2023-05-02');
INSERT INTO `order_detail` VALUES (2, 15000, 1, 4, 3, '2023-05-03');
INSERT INTO `order_detail` VALUES (3, 2050000, 1, 1, 5, '2023-05-05');
INSERT INTO `order_detail` VALUES (4, 15000, 1, 4, 6, '2023-05-06');
INSERT INTO `order_detail` VALUES (5, 2050000, 1, 1, 7, '2023-05-07');
INSERT INTO `order_detail` VALUES (6, 80000, 2, 2, 7, '2023-05-07');
INSERT INTO `order_detail` VALUES (7, 80000, 1, 3, 7, '2023-05-07');
INSERT INTO `order_detail` VALUES (8, 15000, 1, 4, 7, '2023-05-07');
INSERT INTO `order_detail` VALUES (9, 2050000, 1, 1, 8, '2023-05-08');
INSERT INTO `order_detail` VALUES (10, 80000, 1, 3, 9, '2023-05-08');
INSERT INTO `order_detail` VALUES (11, 40000, 1, 2, 9, '2023-05-08');
INSERT INTO `order_detail` VALUES (12, 2050000, 1, 1, 9, '2023-05-08');
INSERT INTO `order_detail` VALUES (13, 80000, 1, 3, 10, '2023-05-08');
INSERT INTO `order_detail` VALUES (14, 160000, 4, 2, 10, '2023-05-08');
INSERT INTO `order_detail` VALUES (15, 15000, 1, 5, 12, '2023-05-09');
INSERT INTO `order_detail` VALUES (16, 236000, 1, 6, 12, '2023-05-09');
INSERT INTO `order_detail` VALUES (17, 141000, 1, 7, 12, '2023-05-09');
INSERT INTO `order_detail` VALUES (18, 30000, 1, 8, 12, '2023-05-09');
INSERT INTO `order_detail` VALUES (19, 141000, 1, 7, 13, '2023-05-12');
INSERT INTO `order_detail` VALUES (20, 60000, 2, 8, 14, '2023-05-13');
INSERT INTO `order_detail` VALUES (21, 80000, 1, 3, 15, '2023-05-14');
INSERT INTO `order_detail` VALUES (22, 141000, 1, 7, 15, '2023-05-14');
INSERT INTO `order_detail` VALUES (23, 30000, 1, 8, 15, '2023-05-14');
INSERT INTO `order_detail` VALUES (24, 47000, 1, 15, 15, '2023-05-14');
INSERT INTO `order_detail` VALUES (31, 45000, 3, 4, 19, '2023-06-01');
INSERT INTO `order_detail` VALUES (36, 300000, 2, 43, 22, '2023-06-05');
INSERT INTO `order_detail` VALUES (37, 45000, 3, 4, 23, '2023-06-05');
INSERT INTO `order_detail` VALUES (38, 120000, 1, 9, 23, '2023-06-05');
INSERT INTO `order_detail` VALUES (39, 80000, 2, 2, 24, '2023-06-06');
INSERT INTO `order_detail` VALUES (40, 2050000, 1, 1, 24, '2023-06-06');
INSERT INTO `order_detail` VALUES (41, 120000, 1, 9, 25, '2023-06-06');
INSERT INTO `order_detail` VALUES (42, 30000, 2, 4, 25, '2023-06-06');
INSERT INTO `order_detail` VALUES (43, 188000, 4, 15, 26, '2023-06-07');
INSERT INTO `order_detail` VALUES (44, 95000, 1, 16, 26, '2023-06-07');

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status_order` int NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `total_price` float NOT NULL,
  `other_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKo9xn5tfed9g2dqctro3cg0h0`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (2, 2, 1, 80000, '');
INSERT INTO `order_product` VALUES (3, 2, 1, 15000, '');
INSERT INTO `order_product` VALUES (5, 2, 1, 2050000, '');
INSERT INTO `order_product` VALUES (6, 2, 1, 15000, '');
INSERT INTO `order_product` VALUES (7, 2, 1, 2225000, '');
INSERT INTO `order_product` VALUES (8, 2, 1, 2050000, '');
INSERT INTO `order_product` VALUES (9, 1, 2, 2170000, '');
INSERT INTO `order_product` VALUES (10, 1, 2, 240000, '');
INSERT INTO `order_product` VALUES (12, 2, 3, 422000, '');
INSERT INTO `order_product` VALUES (13, 2, 3, 141000, '148/10 ở đây');
INSERT INTO `order_product` VALUES (14, 2, 3, 60000, '');
INSERT INTO `order_product` VALUES (15, 3, 1, 298000, '148/10 ở đây');
INSERT INTO `order_product` VALUES (19, 1, 3, 45000, '');
INSERT INTO `order_product` VALUES (22, 1, 17, 300000, '');
INSERT INTO `order_product` VALUES (23, 1, 17, 165000, '');
INSERT INTO `order_product` VALUES (24, 1, 17, 2130000, '');
INSERT INTO `order_product` VALUES (25, 1, 17, 150000, '');
INSERT INTO `order_product` VALUES (26, 1, 25, 283000, '148/10 ở đây');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `img` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` int NOT NULL,
  `big_id` bigint NULL DEFAULT NULL,
  `small_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKphhlmrnutibd1g77mrigvybec`(`big_id`) USING BTREE,
  INDEX `FKbgehtgf82a2nnowg57lgy9mtr`(`small_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Máy Cho Chó Mèo Ăn Tự Động PetKit Solo', '-Sản phẩm có chất liệu chính là nhựa PP bền đẹp, thân thiện với môi trường, không gây độc hại cho chó mèo', 2050000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo.jpg', 0, 8, 28);
INSERT INTO `product` VALUES (2, 'Tô Cho Chó Mèo Hình Trái Dâu', '-Sản phẩm có chất liệu chính là nhựa PP bền đẹp, thân thiện với môi trường, không gây độc hại cho chó mèo', 40000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/092/840/products/to-trai-dau3.jpg?v=1669279141290', 1, 8, 28);
INSERT INTO `product` VALUES (3, 'Bộ Khay Ăn Cho Chó Mèo Có Bình Cấp Thức Ăn Tự Động', '-Sản phẩm có chất liệu chính là nhựa PP bền đẹp, thân thiện với môi trường, không gây độc hại cho chó mèo', 80000, 'https://bizweb.dktcdn.net/100/092/840/products/bo-thuc-an-tu-dong-cho-cho-meo.jpg?v=1679631152000', 1, 8, 28);
INSERT INTO `product` VALUES (4, 'Cây Lăn Lông Chó Mèo Bám Trên Quần Áo', '-Sản phẩm có chất liệu chính là nhựa PP bền đẹp, thân thiện với môi trường, không gây độc hại cho chó mèo', 15000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/cay-lan-lay-long-cho-meo-tren-quan-ao.jpg?v=1679969971267', 1, 8, 29);
INSERT INTO `product` VALUES (5, 'Thức Ăn Cho Chó Trưởng Thành Fib\'s', 'Thức ăn cho chó trưởng thành Fib\'s là thức ăn hạt cung cấp đầy đủ và cân bằng các nhu cầu dinh dưỡng cho chó trưởng thành và cho', 15000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-cho-fibs-400g-1.jpg?v=1683517016857', 1, 1, 1);
INSERT INTO `product` VALUES (6, 'Thức Ăn Hạt Mềm Cho Chó Con Dr.Soft Lamb Vị Cừu 1.2Kg (300g x 4 gói)', 'Dr.Soft Lamb là thức ăn cao cấp hạt mềm dành cho chó con vị thịt cừu\r\n\r\n-Da & lông đẹp chắc khỏe\r\n\r\n-Tăng cường hệ miễn dịch\r\n\r\n', 236000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-hat-mem-drsoft-cho-cho-cont-vi-cuu-1kg2.jpg?v=1681370623590', 1, 1, 1);
INSERT INTO `product` VALUES (7, 'Pate Cho Chó ROYAL CANIN Urinary S/O Hỗ Trợ Điều Trị Sỏi Thận', 'Royal Canin Urinary S/O là thức ăn dinh dưỡng hoàn chỉnh cho chó, công thức hỗ trợ hòa tan sỏi Struvite và giảm tái phát nhờ các', 141000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-urinary-ho-tro-dieu-tri-soi-than-cho-cho-100g.jpg?v=1674093956223', 1, 1, 2);
INSERT INTO `product` VALUES (8, 'Pate Cho Chó Mèo Absolute Holistic RawStew', 'Pate Cho Chó Mèo - Pate Absolute Holistic RawStew là thức ăn đặc biệt đầy ắp thịt tươi ngon rất giàu dinh dưỡng, phù hợp cho chó', 30000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-ab-bia-b97e89e0-56c9-48d9-aad4-940a669934bc.jpg?v=1674986474903', 1, 1, 2);
INSERT INTO `product` VALUES (9, 'Tô Cho Chó Mèo - Tô Mèo Gắn Chai Nước', 'Tô đôi ăn uống cho chó mèo 3 trong 1: ăn, uống & trữ nước', 120000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-doi-chen-meo5.jpg?v=1669279185323', 1, 8, 28);
INSERT INTO `product` VALUES (13, 'Thức Ăn Cho Chó Giống Lớn LuvCare Large Breed', 'Nguyên liệu chất lượng cao dễ tiêu hóa\r\n\r\nNguồn Protein chất lượng giúp xây dựng cơ thể\r\n\r\nGlucosamine HCL và Chondroitine Sulphate hỗ trợ sức khỏe khớp', 120000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pp-large-breed-1-5kg-1.jpg?v=1669280013783', 0, 1, 1);
INSERT INTO `product` VALUES (14, 'Thức Ăn Cho Chó Giống Trung LuvCare Medium Breed', 'Cân bằng Canxi & Phospho giúp xương răng chắc khỏe\r\n\r\nNguyên liệu chất lượng cao dễ tiêu hóa\r\n\r\nNguồn Protein chất lượng giúp xây dựng cơ thể', 49000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pp-medium-breed-500g-1.jpg?v=1669280059873', 0, 1, 1);
INSERT INTO `product` VALUES (15, 'Pate Cho Chó Mèo King\'s Pet Lon 380g', 'Được làm từ thịt gà đã được kiểm dịch chặt chẽ, kết hợp cùng gan gà tươi mọng được thanh trùng ở nhiệt độ cao nhằm giữ nguyên hương vị thơm ngon và hàm lượng dinh dưỡng', 47000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-cho-cho-meo-king-pet-380g.jpg?v=1677310309263', 0, 1, 2);
INSERT INTO `product` VALUES (16, 'Pate Cho Chó Mèo The Pet - 1Kg', 'Thức ăn tươi cho thú cưng với công thức độc quyền được bác sĩ thú y chế biến từ thịt bò gà ẩm mọng, cá tươi mỡ màng, gan béo bùi thơm mới, ninh nhừ trong nhiều giờ với nồi áp suất để giữ trọn hương vị đậm đà và cốt thịt giàu dinh dưỡng.\r\n<br />\r\nSức khoẻ:\r\n<br />\r\nTốt cho sức khỏe, giảm nguy cơ sỏi thận: Đa số thức ăn cho mèo hiện nay, kể cả những loại thức ăn ướt đóng gói tốt nhất thế giới mà bạn phải bỏ cả núi tiền để phục vụ cho các boss đều có chứa chất bảo quản, hoặc các loại phẩm màu, chất tạo hương vị tổng hợp để kích thích vị giác các boss. Ngoài ra nếu chỉ cho chó, mèo lười uống nước ăn thức ăn khô kém chất lượng sẽ dễ dẫn đến sỏi thận. Pate cho chó mèo - pate do The Pet Vietnam phân phối là sản phẩm đẩu tiên có nguyên liệu 100% cá, thịt tươi, bổ sung vitamin & khoáng chất dùng trong thú y đặc trị cho các boss biếng ăn, đang cần phục hồi sau bệnh, đang mang thai, giúp giảm rụng lông, đẹp da & chắc khỏe xương.', 95000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-tuoi-the-pet-hop-1kg.jpg?v=1678088219587', 0, 1, 2);
INSERT INTO `product` VALUES (17, 'Bánh Thưởng Cho Chó Snack Bowwow', '1. Đặc điểm nổi bật:\r\n<br />\r\nSnack Bowwow chứa nhiều dinh dưỡng bổ sung cho chó con đang trong giai đoạn phát triển và chó mẹ biếng ăn sau sinh. Thích hợp trong việc huấn luyện và làm thức ăn thưởng\r\n<br />\r\nGiảm tỷ lệ cholesterol xấu trong huyết thanh, ngăn ngừa béo phì<br />\r\nKhông gây hại cho tim, thận nhờ lượng muối thấp<br />\r\nPhô mai chứa nhiều lợi khuẩn tốt cho hệ tiêu hóa, tăng khả năng hấp thu<br />\r\nThịt cừu tốt cho tim mạch, duy trì làn da khỏe mạnh<br />\r\nBổ sung canxi, vitamin A, vitamin B1 cho cơ thể<br />\r\nKéo dài tuổi thọ của thú cưng, cải thiện chức năng gan<br />\r\nDành cho mọi giống chó, mọi lứa tuổi<br />', 65000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/snack-cho-cho-bowwow-vi-hon-hop-350g.jpg?v=1683533458020', 0, 1, 3);
INSERT INTO `product` VALUES (18, 'Bánh Thưởng Cho Chó Bánh Quy Doggyman', 'Bánh quy dinh dưỡng, có độ cứng phù hợp, giòn tan khi nhai. Cung cấp nhiều vitamin và khoáng chất. Ngoài ra còn chứa nhiều lợi khuẩn hỗ trợ tiêu hóa.  Có 3 vị:\r\n<br/>\r\nBánh quy cho chó vị sữa: hương sữa đậm đà khoái khẩu<br/>\r\nBánh quy cho chó rau củ mix: kết hợp 3 loại rau củ (cà rốt, rau bina, bí đỏ)<br/>\r\nBánh quy cho chó khoai lang & gan: khoai lang bổ sung dinh dưỡng kết hợp cùng hương vị gan khoái khẩu', 35000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/banh-quy-cho-cho-doggyman-160g-rau-cu.jpg?v=1683516925470', 0, 1, 3);
INSERT INTO `product` VALUES (19, 'Snack Cho Chó Bowwow Dạng Thịt Que', 'Thịt que giúp hỗ trợ việc huấn luyện chó và nâng cao khả năng học hỏi\r\n<br/>\r\n<br/>\r\nChứa nhiều Vitamin và khoáng chất<br/>\r\nHàm lượng protein cao, hỗ trợ tiêu hóa và khả năng hấp thụ dưỡng chất<br/>\r\nMang lại làn da và bộ lông khỏe mạnh<br/>\r\nThích hợp trong việc huấn luyện và làm bánh thưởng cho chó<br/>\r\nKhông có hại cho tim và thận nhờ lượng muối thấp<br/>\r\nĐược sản xuất với những tiêu chuẩn vệ sinh hàng đầu, được tiệt trùng ở nhiệt độ cao<br/>\r\nThành phần:<br/>\r\n<br/>\r\nPhô mai: thịt cá, bột mì, đường, phô mai, sorbitol, đạm đậu nành, gluten lúa mì, chất nhũ hóa, sữa bột tách béo, muối tinh luyện, chất kiểm soát độ chua, kali sorbate<br/>\r\nCá hồi: thịt cá hồi, bột mì, bột đậu nành, đường, bột cá, sorbitol. chất nhũ hóa, gluten lúa mì, muối tinh, chất kiểm soát độ chua, kali sorbate, màu thực phẩm vàng số 5', 20000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thit-que-cho-cho-bow-wow-vi-pho-mai-50g.jpg?v=1683256404030', 0, 1, 3);
INSERT INTO `product` VALUES (20, 'Xúc Xích Cho Chó Bowwow Vị Phô Mai', 'Xúc Xích Cho Chó Phô Mai Bowwow bổ dưỡng được cả chó và mèo yêu thích. Đây là sản phẩm bổ sung giúp việc huấn luyện thú cưng dễ dàng và hiệu quả hơn<br/>\r\n<br/>\r\nChứa hơn 64,7% phô mai Imsil/Cheddar nguyên chất<br/>\r\nHàm lượng muối thấp, không gây hại cho tim mạch và thận của thú cưng<br/>\r\nKhông sử dụng các chất bảo quản và bột màu nhân tạo<br/>\r\nCung cấp Protenin, Canxi, Vitamin A, B2 giúp thú cưng có cuộc sống khỏe mạnh<br/>\r\nHương vị hấp dẫn, kích thích vị giác giúp thú cưng ngon miệng hơn<br/>\r\nXúc xích mềm mịn, phù hợp cho thú cưng mọi lứa tuổi', 70000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xuc-xich-cho-cho-bow-wow-vi-pho-mai-240g.jpg?v=1681360280897', 0, 1, 3);
INSERT INTO `product` VALUES (21, 'Sữa Bột Cho Chó Predogen', 'Sữa cho chó của Dr. Kyan được tư vấn công thức và công nghệ sản xuất bởi Wonderlife Pharma – một trong những công ty phát triển công thức hàng đầu của Mỹ.<br/>\r\nDr. Kyan cung cấp không chỉ các sản phẩm tốt mà còn có chất lượng vượt trội cũng như đề cao việc cung cấp hàm lượng dinh dưỡng cân bằng cho thú cưng giúp chúng có khả năng hấp thu tốt, đảm bảo cơ thể dẻo dai và có sức đề kháng đầy đủ.<br/>\r\n<br/>\r\nĐối với chó yêu sữa đóng một vai trò rất quan trọng sau khi chào đời và trong cả quá trình phát triển sau này, sữa có thể cung cấp những dưỡng chất đặc biệt mà các thực phẩm khác không có.<br/>\r\n<br/>\r\nSữa cho chó PREDOGEN được sản xuất theo công thức của WONDERLIFE PHARMA  (mỹ) là một thực phẩm bổ dưỡng cho chó yêu của bạn ngoài những thức ăn thông thường, giúp chó yêu cảm thấy ngon miệng hơn, bồi bổ cơ thể và cung cấp những thứ cần thiết để phát triển toàn diện.', 48000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-predogen-lon-400gr.jpg?v=1669090836950', 0, 1, 4);
INSERT INTO `product` VALUES (22, 'Sữa Bột Cho Chó Mèo Petlac Lon 300G', '1. Đặc điểm nổi bật<br/>\r\nKhối lượng: 300g<br/>\r\n<br/>\r\n+ Sữa cho chó mèo PetLac là sản phẩm sữa bột cho chó mèo sơ sinh của PetAg, Mỹ.<br/>\r\n<br/>\r\n+ Sữa cho chó mèo PetLac được khuyến khích sử dụng như nguồn dinh dưỡng chính cho chó mèo sơ sinh, chó mèo con mất mẹ hoặc chó mèo mẹ không đủ sữa.<br/>\r\n<br/>\r\n+ Bao gồm nguồn dinh dưỡng dồi dào dễ tiêu hóa bao gồm các protein cần thiết, carbohydrate, vitamin, chất khoáng và hàm lượng calories cao tương tự như nguồn sữa tự nhiên từ chó mèo mẹ, PetLac với hương vị thơm ngon giúp chó mèo sơ sinh dễ dàng tiêu hóa, đảm bảo phát triển và tăng trưởng toàn diện.<br/>\r\n<br/>\r\nĐối Tượng Sử Dụng:<br/>\r\n<br/>\r\nThú nuôi sơ sinh: chó, mèo, chồn sương và thỏ<br/>\r\n<br/>\r\nThú nuôi mẹ đang nuôi con và cho con bú<br/>\r\n<br/>\r\nThú nuôi stress, biếng ăn, bệnh, sau cuộc giải phẫu, dưỡng bệnh<br/>\r\n<br/>\r\nHướng Dẫn Sử Dụng :<br/>\r\n<br/>\r\n+ Đối Với Chó Mèo Sơ Sinh : Khuấy bột sữa Pet Lạc với nước ấm hoặc nước uống với tỉ lệ 1:4 trong cùng 1 đơn vị đo lường mà bạn sử dụng<br/>\r\n<br/>\r\nví dụ: muỗng cà phê, muỗng uống canh... Mỗi ngày nên cho bú khoảng 15ml – 25ml sữa PetLac 5 - 6 lần, cho bú sau mỗi 2 - 3 giờ.<br/>\r\n<br/>\r\n+ Đối Với Các Đối Tượng Sử Dụng Còn Lại: Khuấy bột sữa Pet Lạc với nước ấm hoặc nước uống với tỉ lệ 1:6 trong cùng 1 đơn vị đo lường mà bạn sử dụng<br/>\r\n<br/>\r\n ví dụ: muỗng cà phê, muỗng uống canh... Bạn có thể khuấy đặc hơn hay lỏng hơn tùy khẩu vị của chó mèo. Nếu sử dụng sữa như nguồn dinh dưỡng/ thức ăn phụ cho chó mèo nên pha sữa loãng.<br/>\r\n<br/>\r\nHướng Dẫn Bảo Quản : Để nơi khô thoáng mát hoặc trong tủ lạnh.<br/>\r\n<br/>\r\nLưu Ý :<br/>\r\n<br/>\r\n- Sữa PetLac đã pha nên cho bú ở nhiệt độ phòng (không nóng, không lạnh).<br/>\r\n<br/>\r\n- Sữa đã pha chưa sử dụng nên bảo quản trong tủ lạnh, và để ở nhiệt độ phòng cho hết lạnh rồi hẵng sử dụng.<br/>\r\n<br/>\r\n- Sữa đã pha nên sử dụng hết trong vòng 24 giờ. Phần sữa dư để quá 24 giờ nên bỏ đi<br/>\r\n<br/>\r\nKHỐI LƯỢNG: 300G', 310000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-petlac-hop-300gr.jpg?v=1681380115240', 0, 1, 4);
INSERT INTO `product` VALUES (25, 'Sữa Bột Cho Chó Mèo Bio Milk', '1. Đặc điểm nổi bật<br/>\r\nBio Milk cho PET với thành phần giàu chất dinh dưỡng, cân đối và rất dễ tiêu hóa tương tự sữa mẹ, có tác dụng thay thế sữa mẹ trong trường hợp chó, mèo mất sữa, kém sữa hoặc thiếu sữa do bầy con quá đông, đồng thời là nguồn bổ sung dinh dưỡng cho chó mèo còi cọc, chậm lớn.<br/>\r\n<br/>\r\nNguyên liệu: Sữa bột, men tiêu hóa, các vitamin, khoáng, chất điện giải và đường lactose.', 34000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-bio-milk-goi-100gr.jpg?v=1683364773567', 0, 1, 4);
INSERT INTO `product` VALUES (26, 'Thức Ăn Cho Mèo Lapaw', '1. Đặc điểm nổi bật:<br/>\r\n<br/>\r\nThức ăn hạt cho mèo con là hạt hỗn hợp dinh dưỡng hoàn chỉnh có công thức và công nghệ chuẩn Châu Âu<br/>\r\n-Tăng cường thị lực<br/>\r\n<br/>\r\n-Cải thiện tiêu hóa<br/>\r\n<br/>\r\n-Chắc răng & xương<br/>\r\n<br/>\r\n-Da & lông chắc khỏe<br/>\r\n<br/>\r\nThức ăn hạt cho mèo trưởng thành là hạt hỗn hợp dinh dưỡng hoàn chỉnh có công thức và công nghệ chuẩn Châu Âu<br/>\r\n-Kiểm soát búi lông<br/>\r\n<br/>\r\n-Duy trì vóc dáng<br/>\r\n<br/>\r\n-Chắc xương & răng<br/>\r\n<br/>\r\n-Lông khỏe, óng mượt<br/>', 166000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-con-lapaw-1.jpg?v=1681360405847', 0, 2, 5);
INSERT INTO `product` VALUES (27, 'Thức Ăn Hạt Cho Mèo Con Whiskas Vị Cá Thu & Sữa', 'Thích hợp cho mèo con từ 2-12 tháng tuổi<br/>\r\n<br/>\r\nCông thức đặc biệt thích hợp cho cả mèo đang mang thai và cho con bú<br/>\r\n<br/>\r\nBổ sung canxi, phốt pho và vitamin D cho hệ xương chắc khỏe và thúc đẩy phát triển toàn diện<br/>\r\n<br/>\r\nChứa chất chống oxi hóa tự nhiên cho hệ thống miễn dịch khỏe mạnh<br/>\r\n<br/>\r\nViên thức ăn nhỏ, dễ ăn', 140000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-whiskas-meo-con-vi-ca-thu-va-sua.jpg?v=1674112900853', 0, 2, 5);
INSERT INTO `product` VALUES (28, 'Thức Ăn Cho Mèo Reflex', '- Dành cho mèo con/mèo trưởng thành (sản xuất Thổ Nhĩ Kỳ)<br/>\r\n<br/>\r\nMô tả sản phẩm:<br/>\r\n<br/>\r\n- Công thức đặc biệt cao cấp dành cho các giống mèo con/mèo trường thành<br/>\r\n<br/>\r\n- Sự cân bằng của Omega 3 & Omega 6 đã đạt được bằng cách sử dụng hạt lanh giúp lông bóng mượt.<br/>\r\n<br/>\r\n- Chiết xuất cây Yucca giúp tăng khả năng hấp thụ dinh dưỡng, kiểm soát mùi. Men bia giúp hệ thống miễn dịch được tăng cường & năng suất vật nuôi được cải thiện.<br/>\r\n<br/>\r\n- Xylo-oligosaccharides (XOS) giúp giảm các vấn đề như chất béo không mong muốn và đường huyết ở mèo với giá trị Calo xấp xỉ bằng không. Cải thiện quá trình tiêu hóa và chuyển hóa thức ăn bằng cách cải thiện hệ vi khuẩn đường ruột. Tác dụng chống oxy hóa tự nhiên.<br/>\r\n<br/>\r\n- Bổ sung Vitamin A, D3, E, C và khoáng chất.', 191000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-reflex-cho-meo.jpg?v=1669024781853', 0, 2, 5);
INSERT INTO `product` VALUES (29, 'Thức Ăn Cho Mèo Me-O Bao Xá 7kg', 'Thông tin sản phẩm thức ăn Cho Mèo trưởng thành trên 12 tháng tuổi<br/>\r\n<br/>\r\nCó 3 vị Cá Ngừ và vị Hải Sản và Vị Cá Thu<br/>\r\n<br/>\r\nBảo đảm an toàn, không bị hư hỏng khi để bên ngoài và thời gian bảo quản sử dụng lâu (18 tháng), giúp giữ vệ sinh, giảm sự tích tụ cao răng làm hư răng và đặc biệt nhất là giúp chất thải (phân) của thú cưng giảm hẳn những mùi hôi khó chịu.<br/>\r\n<br/>\r\nTHÀNH PHẦN VÀ TÍNH NĂNG VƯỢT TRỘI<br/>\r\n<br/>\r\nLà Acid Amino cần thiết cho chức năng của mắt và cải thiện thị giác của mèo<br/>\r\n<br/>\r\n- Vitamin C: Tăng cường hệ thống miễn dịch và giúp giảm tác động của stress lên sức khỏe của mèo<br/>\r\n<br/>\r\n- Canxi,Photpho và Vitamin D: Giúp làm chắc răng và xương<br/>\r\n<br/>\r\n- Flutd: Công thức này giúp ngăn ngừa bệnh đường tiết niệu trên mèo và sỏi bàng quang<br/>\r\n<br/>\r\n- Omega 3&6 và Kẽm: Omega 3 và Omega 6 từ dầu chất lượng cao trong hợp chất với kẽm giúp nuôi dưỡng lông và da mèo<br/>\r\n<br/>\r\n- Natri thấp: Công thức Natri thấp giúp giảm nguy cơ cao huyết áp, bệnh thận, tiết liệu và tim ở Mèo<br/>\r\n<br/>\r\nXuất xứ: Thái Lan', 430000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-me-o-7kg-vi-ca-ngu-bao-xa.jpg?v=1676431634633', 0, 2, 5);
INSERT INTO `product` VALUES (30, 'Pate Cho Mèo King\'s Pet Cá Ngừ Jelly By Bảo Anh Lon 80g', 'Pate King\'s Pet Cá Ngừ Jelly By Bảo Anh sử dụng thịt cá ngừ trắng thơm ngon hảo hạng nên khi mở nắp hộp bạn sẽ cảm nhận được mùi thơm tươi mới của thành phần khác biệt so với mùi tanh như các dòng sản phẩm thông thường<br/>\r\n<br/>\r\nCá ngừ có nguồn vitamin và khoáng chất khác vô cùng quan trọng như: Vitamin B6, Kali, Selen, Iot. Trong một khẩu phần cá ngừ có trọng lượng 113g chứa: lượng calo 145, chất đạm 26.77g, chất béo 3.37g<br/>\r\n<br/>\r\nĐồng thời nguyên liệu tươi ngon còn giúp sản phẩm tuyệt đối không cần dùng thêm các loại phụ liệu hóa học, chất độc hại hay mùi hương nhân tạo để kích thích vị giác của mèo<br/>', 28000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-king-pet-bao-anh-cho-meo-lon-80g.jpg?v=1677232601217', 0, 2, 6);
INSERT INTO `product` VALUES (31, 'Pate Cho Mèo Kitcat Complete Cuisine', 'Pate Cho Mèo Kitcat Complete Cuisine là thức ăn dạng ướt, đảm bảo cung cấp đủ dinh dưỡng, chất xơ, khoáng chất như một khẩu phần ăn hoàn chỉnh. Sản phẩm phù hợp với các chủ nuôi bận rộn không có thời gian chuẩn bị bữa ăn hoàn chỉnh cho các bé mèo.<br/>\r\n<br/>\r\nKitCat Complete là dạng thức ăn hoàn chỉnh, thành phần thịt trắng 100%, đồng thời có kết hợp với các Supperfoods như Hạt Chia/ quả Kỷ Tử/ Cá ngừ Vằn/ Cá mồi trắng, phù hợp cho mèo ở mọi lứa tuổi.<br/>\r\n<br/>\r\nBẢNG THÀNH PHẦN DINH DƯỠNG CHÍNH:<br/>\r\n<br/>\r\nCá ngừ, nước, dầu đậu nành, Chiết xuất cá, Cá mồi trắng, Vitamin và khoáng chất, Taurine.<br/>\r\nChỉ tiêu chất lượng: Protein thô (min) 11%; Béo thô (min) 2%; Xơ thô (max) 0.3%; Khoáng tổng số (max)2%.<br/>\r\nKhối lượng: 150g/lon<br/>\r\n<br/>\r\nLuôn đáp ứng tiêu chí có sẵn nước sạch - mát và thuận tiện nhất cho mèo uống<br/>\r\nLượng thức ăn điều chỉnh theo CÂN NẶNG, TÍNH NĂNG ĐỘNG, TUỔI, GIỐNG, MÔI TRƯỜNG SỐNG.<br/>\r\nXem hướng dẫn trên bao bì trước khi cho ăn.<br/>\r\nSỬ DỤNG và BẢO QUẢN:<br/>\r\n<br/>\r\nTránh nơi có ánh sáng trực tiếp.<br/>\r\nCho ăn nơi thoáng mát.<br/>\r\nSau khi khui hộp sử dụng, nếu còn thức ăn thì bọc kín hộp, đặt trong ngăn mát tủ lạnh, nên sử dụng hết trong ngày', 46000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-dong-hop-kitcat-complete-cho-meo-12-vi.png?v=1669015221950', 0, 2, 6);
INSERT INTO `product` VALUES (32, 'Pate Cho Chó Mèo Absolute Holistic RawStew', '1. Thông tin sản phẩm<br/>\r\nPate Cho Chó Mèo - Pate Absolute Holistic RawStew là thức ăn đặc biệt đầy ắp thịt tươi ngon rất giàu dinh dưỡng, phù hợp cho chó & mèo mọi lứa tuổi<br/>\r\n<br/>\r\nBẢNG THÀNH PHẦN DINH DƯỠNG CHÍNH:<br/>\r\n<br/>\r\nĐạm tối thiểu 12,0%, Béo tối thiểu 0,5%, Xơ tối đa 1,0%, Khoáng tổng số tối đa 1,0%, Độ ẩm tốt đa 87,0%.<br/>\r\nNăng lượng chuyển hóa: 50 Kcal/100g.<br/>\r\nKhối lượng: 80g/lon<br/>\r\nHƯỚNG DẪN CHO ĂN:<br/>\r\n<br/>\r\nLuôn đáp ứng tiêu chí có sẵn nước sạch - mát và thuận tiện nhất cho mèo uống<br/>\r\nLượng thức ăn điều chỉnh theo CÂN NẶNG, TÍNH NĂNG ĐỘNG, TUỔI, GIỐNG, MÔI TRƯỜNG SỐNG.<br/>\r\nXem hướng dẫn trên bao bì trước khi cho ăn.<br/>\r\nSỬ DỤNG và BẢO QUẢN:<br/>\r\n<br/>\r\nCho ăn nơi thoáng mát.<br/>\r\nSau khi khui hộp sử dụng, nếu còn thức ăn thì bọc kín hộp, đặt trong ngăn mát tủ lạnh, nên sử dụng hết trong ngày', 30000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-ab-bia-b97e89e0-56c9-48d9-aad4-940a669934bc.jpg?v=1674986474903', 0, 2, 6);
INSERT INTO `product` VALUES (33, 'Pate Cho Mèo KitCat Sữa Dê Lon 70gr', '1. Đặc điểm nổi bật<br/>\r\n- Hoàn toàn từ thịt trắng, thịt được xé nhỏ<br/>\r\n- 12 công thức là 12 hương vị<br/>\r\n<br/>\r\n- Phù hợp cho mèo mọi lứa tuổi<br/>\r\n<br/>\r\n- Đặc biệt phù hợp với những bé mèo có hệ tiêu hóa nhạy cảm với sự thay đổi thức ăn và những bé hệ tiêu hóa có vấn đề<br/>\r\n<br/>\r\n- Thành phần sữa dê dễ tiêu hóa, giảm chất nhầy bên trong đường tiêu hóa , kháng viêm và tăng cường hệ miễn dịch', 29000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/pate-kitcat-goat-milk.jpg?v=1669104140460', 0, 2, 6);
INSERT INTO `product` VALUES (34, 'Viên Tiêu Búi Lông Cho Mèo Cattyman', 'Sử dụng thịt cá ngừ mà mèo yêu thích kêt hợp cùng thịt gà, thịt cá thu, thịt cá tuyết tạo nên hương vị khoái khẩu cho mèo. Viên thịt có độ mềm vừa phải, hương thơm lan tỏa trong miệng<br/>\r\n<br/>\r\nThành phần: cá ngừ, cá bào, collagen, bột đạm cá sấy khô, đường, dextrin, tinh dầu cá, chiết xuất nấm men, hương liệu xông khói, tinh bột biến tính, sorbitol, sodium chloride, chất xơ, taurine...<br/>\r\n<br/>\r\n*Liều lượng sử dụng: <br/>\r\nMèo con: 1-5 viên/ngày<br/>\r\n Mèo trưởng thành: 5-10 viên/ngày<br/>', 32000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vien-tieu-bui-long-cho-meo-cattyman.jpg?v=1674094449577', 0, 2, 7);
INSERT INTO `product` VALUES (35, 'Xúc Xích Cho Chó Mèo Bioline', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\n- Xúc Xích Cho Chó Mèo Bioline chứa Vitamin & khoáng chất cho cơ thể những thú cưng luôn khỏe mạnh, linh hoạt. Chất xơ cho hệ thống tiêu hóa tốt, tăng cường khả năng hấp thu chất dinh dưỡng, góp phần vào sự phát triển đồng đều cho thú cưng.<br/>\r\n- Chọn nguyên liệu tươi tự nhiên chất lượng cao, tất cả các nguyên liệu được kiểm tra nghiêm ngặt.<br/>\r\n- Giúp ổn định hệ thống vi khuẩn đường ruột, tiêu hóa khỏe, bé ăn ngon<br/>\r\n- Xúc Xích Bioline với đầy đủ dưỡng chất giúp bé ăn ngon.<br/>\r\n- Sản phẩm chứa đầy đủ các dưỡng chất thiết yếu, hỗ trợ cho quá trình hoạt động và phát triển của thú cưng nhà bạn, bao gồm:<br/>\r\n- Chất đạm: được chọn từ thịt có chất lượng, cung cấp acid amin cần thiết để xây dựng cơ bắp khỏe mạnh.<br/>\r\n<br/>\r\n- Chất béo: cung cấp năng lượng và nguồn acid béo thiết yếu để duy trì một làn da khỏe mạnh và một bộ lông bóng mượt.<br/>\r\n- Vitamin: giúp cơ thể phát triển khỏe mạnh và tăng cường hệ thống miễn dịch.<br/>\r\n- Khoáng chất: giúp cơ thể phát triển khỏe mạnh, xương chắc và răng khỏe.', 5000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xuc-xich-bioline-cho-cho-meo-1-33a2e4e2-ed1c-44de-a216-90c5edf376e4.jpg?v=1669090960897', 0, 2, 7);
INSERT INTO `product` VALUES (36, 'Snack Cho Mèo Kitcat Freezebites', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nBánh thưởng cho mèo Kitcat Freezebites là một loại thức ăn bổ sung, thức ăn thưởng khi chơi đùa hoặc huấn luyện mèo. <br/>\r\n<br/>\r\nMột thành phần, nhiều lợi ích. Kit Cat Freezebites cho mèo chỉ được làm từ 1 nguyên liệu duy nhất tuy nhiên lại rất giàu protein, lý tưởng cho mèo ở mọi giai đoạn cuộc đời và đặc biệt được chế biến lý tưởng cho những bé kén ăn, mèo bị dị ứng thức ăn, dạ dày nhạy cảm hoặc đang ăn kiêng. Được thiết kế như một món ăn nhẹ lành mạnh hàng ngày được làm từ protein tự nhiên và tinh khiết. Bánh thưởng Kit Cat Freezebites được chế biến bằng cách hấp nhẹ và sau đó làm đông lạnh món ăn này để khóa chất dinh dưỡng và cô đặc hương vị tự nhiên. Sản phẩm cam kết không có ngũ cốc và không chứa gluten, không có chất nhân tạo, an toàn cho mèo.<br/>\r\n<br/>\r\nCách bảo quản:<br/>\r\n<br/>\r\nBảo quản nơi khô ráo và thoáng mát. Sau khi mở, bảo quản phần chưa sử dụng trong tủ lạnh tối đa trong 2 ngày.<br/>\r\n<br/>\r\nĐối với mèo trên 2 tháng tuổi, nên trộn với thức ăn dinh dưỡng khác để đáp ứng nhu cầu ăn uống của mèo. Tiếp tục cung cấp nước cho mèo thường xuyên.', 40000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/kitcat-freezebites-cod-fish-15gr.jpg?v=1669091215230', 0, 2, 7);
INSERT INTO `product` VALUES (37, 'Xốt Thưởng Cho Mèo Ciao Churu Hộp 50 Tuýp', '1. Đặc điểm sản phẩm:<br/>\r\nAn toàn cho hệ tiêu hóa của thú cưng, không chất bảo quản<br/>\r\n<br/>\r\n- Bổ sung tinh chất trà xanh chống lão hóa, hỗ trợ tiêu hóa<br/>\r\n<br/>\r\n- Bổ sung Vitamin E chống Oxy hóa, tăng cường chuyển hóa thức ăn thành dinh dưỡng, bảo vệ da cho thú cưng.<br/>\r\n<br/>\r\n- Sử dụng như bữa ăn chính.<br/>\r\n<br/>\r\nĐược sản xuất bằng các nguyên liệu chất lượng cao như thực phẩm của con người.<br/>\r\n<br/>\r\nXốt Ciao dành cho mèo trưởng thành có mùi vị mix giữa cá & mực, cá ngừ & sò điệp, thịt gà & hải sản', 10000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xot-ciao-cho-meo-hop-50-tuyp-vi-ca.jpg?v=1676704444787', 0, 2, 7);
INSERT INTO `product` VALUES (38, 'Sữa Bột Cho Mèo Precaten', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nSữa cho mèo của Dr. Kyan được tư vấn công thức và công nghệ sản xuất bởi Wonderlife Pharma – một trong những công ty phát triển công thức hàng đầu của Mỹ.<br/>\r\nDr. Kyan cung cấp không chỉ các sản phẩm tốt mà còn có chất lượng vượt trội cũng như đề cao việc cung cấp hàm lượng dinh dưỡng cân bằng cho thú cưng giúp chúng có khả năng hấp thu tốt, đảm bảo cơ thể dẻo dai và có sức đề kháng đầy đủ.<br/>\r\n<br/>\r\nThành Phần: <br/>\r\n<br/>\r\nSữa bột nguyên kem, Sữa bột gầy, Nondairy creamer, Maltodextrin,Sucrose,Whey protein concentrate,Hương dùng trong thực phẩm,Chất xơ Inulin, Lysine, Nano - Precipitated Calcium Carbonate,Vitamin C, Vitamin K1, Vitamin B6, Vitamin B1, VitaminB2, Vitamin D3, Vitamin A, Vitamin B12, Vitamin Axit Pantothenic, Biotine, Axit Folic...', 48000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-precaten-hop-giay-110gr-1.jpg?v=1684936838183', 0, 2, 8);
INSERT INTO `product` VALUES (39, 'Sữa Bột Cho Chó Mèo Petlac Lon 300G', '1. Đặc điểm nổi bật<br/>\r\nKhối lượng: 300g<br/>\r\n<br/>\r\n+ Sữa cho chó mèo PetLac là sản phẩm sữa bột cho chó mèo sơ sinh của PetAg, Mỹ.<br/>\r\n<br/>\r\n+ Sữa cho chó mèo PetLac được khuyến khích sử dụng như nguồn dinh dưỡng chính cho chó mèo sơ sinh, chó mèo con mất mẹ hoặc chó mèo mẹ không đủ sữa.<br/>\r\n<br/>\r\n+ Bao gồm nguồn dinh dưỡng dồi dào dễ tiêu hóa bao gồm các protein cần thiết, carbohydrate, vitamin, chất khoáng và hàm lượng calories cao tương tự như nguồn sữa tự nhiên từ chó mèo mẹ, PetLac với hương vị thơm ngon giúp chó mèo sơ sinh dễ dàng tiêu hóa, đảm bảo phát triển và tăng trưởng toàn diện.', 310000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-petlac-hop-300gr.jpg?v=1681380115240', 0, 2, 8);
INSERT INTO `product` VALUES (40, 'Sữa Cho Mèo Sơ Sinh KMR Thay Thế Sữa Mèo Mẹ', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nSữa cho mèo KMR có hàm lượng đạm 42% (cực cao), cùng lượng chất béo 25% là công thức hoàn hảo cho mèo sơ sinh hay để bổ sung dinh dưỡng cho mèo mang thai, cho con bú, mèo ốm bệnh, giảm thiểu stress. (với nhu cầu dinh dưỡng đặc biệt, sữa dành riêng cho mèo con có hàm lượng chất dinh dưỡng cao hơn sữa công thức của người rất nhiều).<br/>\r\nTrọng lượng hộp: 340g', 610000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-kmr-lon-340gr.jpg?v=1682759829280', 0, 2, 8);
INSERT INTO `product` VALUES (41, 'Sữa Bột Cho Chó Mèo Bio Milk', '1. Đặc điểm nổi bật<br/>\r\nBio Milk cho PET với thành phần giàu chất dinh dưỡng, cân đối và rất dễ tiêu hóa tương tự sữa mẹ, có tác dụng thay thế sữa mẹ trong trường hợp chó, mèo mất sữa, kém sữa hoặc thiếu sữa do bầy con quá đông, đồng thời là nguồn bổ sung dinh dưỡng cho chó mèo còi cọc, chậm lớn.<br/>\r\n<br/>\r\nNguyên liệu: Sữa bột, men tiêu hóa, các vitamin, khoáng, chất điện giải và đường lactose.', 34000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-bio-milk-goi-100gr.jpg?v=1683364773567', 0, 2, 8);
INSERT INTO `product` VALUES (42, 'Đầm Cho Chó Mèo Họa Tiết Ngôi Sao', '1. Đặc điểm nổi bật<br/>\r\nÁo cho chó mèo - Đầm ren đen xòe có họa tiết ngôi sao cho chó mèo, được thiết kế và sản xuất trực tiếp tại Việt Nam, có độ bền cao, chất liệu thoáng mát cho các bé thú cưng vui chơi cả ngày dài. Sản phẩm phù hợp cho các bé chó mèo ở mọi độ tuổi. Khách đặt hàng vui lòng chọn size theo hướng dẫn ở mục hình ảnh, ngoài ra sản phẩm có thể sai số 1-2cm do chất liệu, phom áo  khách nên inbox trực tiếp bên shop để được tư vấn size chính xác nhất. <br/>\r\n<br/>\r\nThông tin sản phẩm:<br/>\r\n<br/>\r\n- Tên sản phẩm: Áo thun sát nách in hoạt hình<br/>\r\n<br/>\r\n- Chất liệu vải: Vải thun thoáng mát, ít bám lông thích hợp mặc hè, mặc đi chơi, đi ngủ,...<br/>\r\n<br/>\r\n- Chất Hình in/ hình thêu: Chi tiết chắc chắn giặt máy, vò tay không hỏng<br/>\r\n<br/>\r\n- Sản phẩm có size từ 1kg đến 17-18kg<br/>\r\n<br/>\r\n- Màu sắc: Như hình<br/>\r\n<br/>\r\n- Kích thước:<br/>\r\n<br/>\r\nSize 2: Dài 19-20cm Ngực 28cm<br/>\r\n<br/>\r\nSize 3: Dài 22-23cm Ngực 32cm<br/>\r\n<br/>\r\nSize 4: Dài 24-25cm Ngực 36cm<br/>\r\n<br/>\r\nSize 5: Dài 26-27cm Ngực 40cm<br/>\r\n<br/>\r\nSize 6: Dài 28-29cm Ngực 44cm<br/>\r\n<br/>\r\nSize 7: Dài 30-31cm Ngực 48cm<br/>\r\n<br/>\r\nSize 8: Dài 32-33cm Ngực 52cm<br/>\r\n<br/>\r\nSize 9: Dài 34-35cm Ngực 56cm<br/>\r\n<br/>\r\nSize 10: Dài 36-37cm Ngực 60cm<br/>\r\n<br/>\r\nSize 11: Dài 38-39cm Ngực 64cm<br/>\r\n<br/>\r\nSize 12: Dài 40-41cm Ngực 68cm', 170000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ngoi-sao-cho-cho-meo.png?v=1669018214190', 0, 3, 9);
INSERT INTO `product` VALUES (43, 'Áo Cho Chó Mèo Vải Nỉ Caro Có Nón', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nÁo từ chất liệu nỉ vô cùng dày dặn và ấm áp  sẽ làm cho thú cưng của bạn thêm phần nổi bật, thu hút sự chú ý bởi vẻ ngoài thật sự xinh xắn và ngộ nghĩnh cùng với chiếc nón đi kèm', 150000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-ni-caro-co-non-cho-cho-meo-0c43fdf6-f0cf-4fd8-91cf-7c193c0b08f3-46e9e7ac-b84f-4f34-a671-ac4fdd13ace2.jpg?v=1669024167677', 0, 3, 9);
INSERT INTO `product` VALUES (44, 'Đầm Cho Chó Mèo Jean Hồng Chấm Bi', '1. Đặc điểm nổi bật<br/>\r\nÁo cho chó mèo - Đầm Jean Hồng Chấm Bi, được thiết kế và sản xuất trực tiếp tại Việt Nam, có độ bền cao, chất liệu thoáng mát cho các bé thú cưng vui chơi cả ngày dài. Áo cho chó mèo - Đầm Jean Hồng Chấm Bi phù hợp cho các bé chó mèo ở mọi độ tuổi.<br/>\r\n<br/>\r\nKhách đặt hàng vui lòng chọn size theo hướng dẫn ở mục hình ảnh, ngoài ra sản phẩm có thể sai số 1-2cm do chất liệu, phom áo  khách nên inbox trực tiếp bên shop để được tư vấn size chính xác nhất. <br/>\r\n<br/>\r\nThông tin sản phẩm:<br/>\r\n<br/>\r\n- Tên sản phẩm: Áo thun in hoạt hình<br/>\r\n<br/>\r\n- Chất liệu vải: Vải thun thoáng mát, ít bám lông thích hợp mặc hè, mặc đi chơi, đi ngủ,...<br/>\r\n<br/>\r\n- Chất Hình in/ hình thêu: Chi tiết chắc chắn giặt máy, vò tay không hỏng<br/>\r\n<br/>\r\n- Sản phẩm có size từ 1kg đến 17-18kg<br/>\r\n<br/>\r\n- Màu sắc: Như hình', 130000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-jean-hong-cham-bi-cho-cho-meo.png?v=1669015727617', 0, 3, 9);
INSERT INTO `product` VALUES (45, 'Đầm Cho Chó Mèo Dạng Ren Đính Hoa', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nĐầm ren đính hoa dễ thương dành cho thú cưng. Ren xòe tạo độ bồng bềnh giúp thú cưng trông như một nàng công chúa. <br/>\r\n<br/>\r\nÁo đầy đủ các size cho thú cưng từ XS đến XXL.', 120000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ren-dinh-hoa-hong.jpg?v=1669101641057', 0, 3, 9);
INSERT INTO `product` VALUES (46, 'Áo Tết Cho Chó Mèo - Áo Tết Mèo Lân Nút Tàu', 'Áo Tết Mèo Lân Nút Tàu nằm trong bộ sưu tập Áo Tết Cho Chó Mèo 2023 với chất liệu từ vải thun co giãn tốt, thoáng mát, kiểu dáng mới lạ, màu sắc tươi sáng<br/>\r\n<br/>\r\nThích hợp để mặc đi dạo, đi chơi tết, đi chụp ảnh...', 90000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-tet-lan-nut-tau2.jpg?v=1671781892800', 0, 3, 10);
INSERT INTO `product` VALUES (47, 'Áo Tết Cho Chó Mèo - Đầm Tết Ren 4 Tầng', 'Đầm Tết Ren 4 Tầng nằm trong bộ sưu tập Áo Tết Cho Chó Mèo 2023 với chất liệu từ vải tơ xước, phi, lưới, thoáng mát, kiểu dáng mới lạ, sang trọng, màu sắc tươi sáng<br/>\r\n<br/>\r\nThích hợp để mặc đi dạo, đi chơi tết, đi chụp ảnh...', 158000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-ren-4-tang1.jpg?v=1671781942137', 0, 3, 10);
INSERT INTO `product` VALUES (48, 'Áo Tết Cho Chó Mèo - Đầm Tết Trúc Thọ', 'Đầm Tết Trúc Thọ nằm trong bộ sưu tập Áo Tết Cho Chó Mèo 2023 với chất liệu từ vải gấm ít bám lông, thoáng mát, kiểu dáng mới lạ, sang trọng, màu sắc tươi sáng<br/>\r\n<br/>\r\nThích hợp để mặc đi dạo, đi chơi tết, đi chụp ảnh...', 164000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-tet-truc-tho.jpg?v=1671788675530', 0, 3, 10);
INSERT INTO `product` VALUES (49, 'Áo Tết Cho Chó Mèo - Áo Tết Mèo Cá Chép', 'Áo Tết Mèo Cá Chép nằm trong bộ sưu tập Áo Tết Cho Chó Mèo 2023 với chất liệu từ vải thun co giãn tốt, thoáng mát, kiểu dáng mới lạ, sang trọng, màu sắc tươi sáng<br/>\r\n<br/>\r\nThích hợp để mặc đi dạo, đi chơi tết, đi chụp ảnh...', 110000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ao-tet-meo-ca-chep.jpg?v=1671789207317', 0, 3, 10);
INSERT INTO `product` VALUES (50, 'Vớ Cho Chó Mèo Nhiều Mẫu', '1. Đặc điểm nổi bật<br/>\r\n<br/>\r\nSản phẩm vớ cho thú cưng giúp các bé giữ ấm cũng như giữ sạch lòng bàn chân khi cần thiết phải đi ra khu vực ngoài nhà. Vớ cho thú cưng phù hợp với các bé đang sống ở trong nhà hoặc thú cưng đang sống ở vùng có khí hậu lạnh.', 30000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vo-1.jpg?v=1676101589423', 0, 3, 11);
INSERT INTO `product` VALUES (51, 'Giày Cho Chó Mèo Bằng Vải Jeans', 'Giày jean có thiết kế chống thấm nước, chống trượt, giúp cún dễ di chuyển<br/>\r\nGiày được làm từ vải jean, chất liệu cao cấp, mang thoáng khí, thoải mái <br/>\r\nCó thể siết chặt dây giày tạo độ vững chắc.<br/>\r\nCó thể giặt sạch và mau khô', 150000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/giay-jeans-cho-cho-meo-1.jpg?v=1679911066620', 0, 3, 11);
INSERT INTO `product` VALUES (52, 'Rọ Mõm Cho Chó Bằng Nhựa Silicon', 'Chất Liệu: silicone siêu mềm<br/>\r\n<br/>\r\nCó nhiều lỗ thoáng khí, không làm cho chó bị ngộp<br/>\r\n<br/>\r\nĐược thiết kế khóa điều chỉnh size cho phù hợp mõm của thú cưng.\r\n\r\nRọ mõm giúp ngăn chặn thú cưng sủa, cắn, liếm vết thương, thói quen ăn bậy của thú cưng', 160000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-mom-silicon-cho-cho-1-c8237d6a-a174-439d-b203-b6039e432d7a.jpg?v=1680854058157', 0, 3, 12);
INSERT INTO `product` VALUES (53, 'Rọ Mõm Cho Chó Mõm Ngắn Bằng Vải', 'Được làm từ chất liệu lưới mềm mại, an toàn và không gây đau cho thú cưng nhưng vẫn chắc chắn, trên rọ mõm có lỗ ngay phần mũi giúp thú cưng không bị ngộp <br/>\r\n<br/>\r\nDễ điều chỉnh size phù hợp cho thú cưng<br/>\r\n<br/>\r\nNgăn chặn các tật xấu của thú cưng như liếm vết thương, cắn, ăn bậy...<br/>\r\n<br/>\r\nRọ mõm dành cho các dòng chó mõm ngắn như: Pug, Bully, Bull Dog, Bull Pháp, Boston Terrier, Bắc Kinh, Shi Tzu', 170000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/ro-vai-cho-cho-mom-ngan.jpg?v=1680668277873', 0, 3, 12);
INSERT INTO `product` VALUES (54, 'Vòng Cổ Cho Chó Mèo Có Nơ Gắn Chuông', 'Vòng cổ được làm từ chất liệu da kim tuyến và được làm nổi bật hơn nhờ chiếc nơ xinh xắn và chiếc chuông bé xinh phía dưới chiếc vòng cổ này sẽ giúp chú cún của bạn lộng lẫy hơn.', 30000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-no-co-chuong.jpg?v=1678438062253', 0, 4, 13);
INSERT INTO `product` VALUES (55, 'Vòng Cổ Cho Chó Mèo Có Đèn Led Hình Kitty', 'Chiếc vòng cổ có gắn đèn LED này sẽ giúp cho bé nổi bật hơn khi đi ngoài đường vào buổi tối.<br/>\r\n<br/>\r\nCó logo Hồng Kitty đáng yêu dành cho các bé.<br/>', 50000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-den-led-kitty.jpg?v=1678436880333', 0, 3, 13);
INSERT INTO `product` VALUES (56, 'Thức Ăn Cho Mèo Bị Bệnh Thận Mãn Tính Royal Canin Renal 2kg', 'Với EPA và DHA, hệ dưỡng chất chống oxy hóa và lượng phospho thấp, công thức đặc chế để hỗ trợ, tăng cường chức năng thận đối với bệnh thận mãn tính.<br/>\r\n<br/>\r\nThận hoạt động quá mức có thể gây ra khủng hoảng urê huyết. Protein chất lượng cao giúp giảm hoạt động ở thận và giảm lượng chất thải tích tụ.<br/>\r\n<br/>\r\nĐặc chế alkalinizing, công thức giúp chống nhiễm axit chuyển hóa ở thận, cân bằng nồng độ pH.<br/>\r\n<br/>\r\nThiết kế đặc biệt để đáp ứng sở thích của mèo, chống lại các vấn đề chán ăn, bỏ ăn, sợ thực phẩm dẫn đến giảm sức khỏe.', 676000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuc-an-cho-meo-royal-canin-renal-2kg.jpg?v=1679904716547', 0, 4, 14);
INSERT INTO `product` VALUES (57, 'Bravecto Cho Chó Viên Uống Điều Trị Viêm Da', 'Thuốc Bravecto Cho Chó Viên Uống Điều Trị Viêm Da – dạng viên nhai có tác dụng điều trị các bệnh viêm da, ghẻ Demodex, ký sinh trùng trên da chó và có tác dụng bảo vệ chó không bị nhiễm các bệnh trên trong vòng 12 tuần chỉ với 1 liệu trình sử dụng 1 viên duy nhất.<br/>\r\n<br/>\r\nThuốc Bravecto Cho Chó - Viên uống điều trị viêm da có thể sử dụng cho tất cả các loài chó khác nhau với nhiều trọng lượng khác nhau. An toàn tuyệt đối với chó đang mang thai và cho con bú.', 550000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-tri-viem-da-bravecto-cho-cho.jpg?v=1678343041213', 0, 4, 14);
INSERT INTO `product` VALUES (58, 'Sữa Tắm Trị Viêm Da Cho Chó Bio Derma 200ml', 'Sữa tắm trị viêm da, ghẻ cho chó Bio Derma có công dụng phòng & trị bệnh ghẻ do demodex, sarcoptes, bọ chét trên chó kết hợp với nấm da gây triệu chứng: hôi lông, rụng lông, khô da hoặc chảy dịch vàng, chảy máu trên da <br/>\r\n<br/>\r\nCách dùng: làm ướt toàn bộ lông, cho dầu tắm lên lông và xát đều trong 1-2 phút, để yên 5 phút rồi tắm sạch bằng nước thường. Mỗi tuần tắm 1 lần', 80000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-tam-tri-ghe-nam-da-bio-derma-cho-cho-200ml.jpg?v=1677480928930', 0, 4, 15);
INSERT INTO `product` VALUES (59, 'Gel Ngăn Ngừa Búi Lông Cho Mèo Gimcat Tuýp 50G', 'Sản phẩm giúp ngăn ngừa búi lông. Với sự kết hợp của mạch nha, dầu hạt lanh, cellulose và beta-glucan giúp bài tiết các búi lông một cách tự nhiên. Giúp làm giảm sự tích tụ của búi lông trong dạ dày và nôn ra ngoài. Beta-glucan giúp tránh kích ứng đường tiêu hóa.<br/>\r\nHDSD: 6cm mỗi ngày, trực tiếp từ ống hoặc thêm vào thực phẩm (1cm=0,5g)', 189000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/gimcat-ngua-bui-long-cho-meo.jpg?v=1669088322973', 0, 4, 15);
INSERT INTO `product` VALUES (60, 'Thuốc Sổ Giun Cho Chó Mèo Bio Rantel', 'Thuốc Tẩy Giun Cho Chó Mèo B.I.O-R.A.N.T.E.L là một loại thuốc tẩy giun sán trên chó mèo. Với công dụng tẩy sạch các loại giun sán ký sinh trong ruột chó mèo như: giun đũa, giun móc, giun tóc, sán dây. CHỈ DÙNG TRONG THÚ Y.', 10000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-so-giun-b-i-o-r-a-n-t-e-l-cho-cho-meo.png?v=1675051130327', 0, 4, 16);
INSERT INTO `product` VALUES (61, 'Thuốc Sổ Giun Cho Chó Drontal', 'Thuốc tẩy giun cho chó Bayer Dron-tal là thuốc xổ lãi dành riêng cho chó thuộc thương hiệu Dron-tal của nhà sản xuất Bayer, Pháp. Thuốc xổ giun Dron-tal Plus dạng viên tròn, có màu đậm đậm với hình dấu cộng (+) trên thuốc nhằm giúp chủ nuôi dễ dàng chia liều thuốc cho chó bằng cách bẻ thuốc theo dấu cộng (+). Mỗi viên thuốc chứa 50 mg  Praziquantel, 144 mg Pyrantel Embonate và 150 mg  Febantel và hương vị thịt bò để hấp dẫn chó uống thuốc xổ lãi dễ dàng hơn. 1 viên thuốc Dron-tal Plus có hiệu quả cho thể trọng 10kg. Đặc biệt, Drontal Plus an toàn cho chó con từ 2 tuần tuổi và chó mẹ mang thai và đang cho bú.<br/>\r\n<br/>\r\nTrên mỗi vỉ thuốc có đóng hạn sử dụng, khách hàng sẽ an tâm hơn khi sử dụng.', 35000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-xo-giun-drontal-cho-cho-hop-24v.jpg?v=1679633902980', 0, 4, 16);
INSERT INTO `product` VALUES (62, 'Vòng Cổ Ngừa Ve & Bọ Chét Cho Chó Bioline', 'Vòng cổ trị ve chó - Vòng cổ ngừa ve & bọ chét cho chó Bioline sử dụng tinh dầu khuynh diệp tự nhiên giúp bảo vệ thú cưng hiệu quả khỏi ve và bọ chét. Hoạt chất được lan tỏa ra liên tục khắp bề mặt lông sau khi đeo vòng cổ<br/>\r\n<br/>\r\nThêm vào đó, vòng cổ được phủ một lớp phản quang giúp ta có thể dễ dàng quan sát thú cưng khi đi dưới trời tối<br/>\r\n<br/>\r\nVòng cổ ngừa ve & bọ chét cho chó Bioline thích hợp cho chó trên 12 tuần tuổi<br/>\r\n<br/>\r\nĐộ dài dây 60cm<br/>\r\n<br/>\r\nHDSD: đeo vòng cổ cho thú cưng rồi điều chỉnh sao cho vừa sát cổ, không đeo quá rộng hoặc quá chật (có thể dùng 2 ngón tay để luồn vào giữa vòng cổ và cổ thú cưng, nếu luồn tay vào được thì có nghĩa là vừa) sau đó cắt bỏ phần vòng cổ bị dư ra. Vòng cổ nên được thay mới khoảng 2 tháng/lần. Tháo vòng cổ ra trước khi tắm, chỉ đeo khi lông của thú cưng đang khô', 65000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/vong-co-ngua-ve-bo-chet-bioline-cho-cho.jpg?v=1677214865153', 0, 4, 17);
INSERT INTO `product` VALUES (63, 'Thuốc Nhỏ Gáy Cho Mèo Broadline', 'Trị bọ chét trong 24h, kéo dài hơn 1 tháng.<br/>\r\n<br/>\r\nPhòng bọ chét hơn 1 tháng.<br/>\r\n<br/>\r\nĐiều trị viêm da dị ứng do bọ chét<br/>\r\n<br/>\r\nPhòng và trị ve trong 48h, kéo dài 3 tuần.<br/>\r\n<br/>\r\nDiều trị ghẻ Notoedres cati<br/>\r\n<br/>\r\nĐiều trị nhiễm sán dây, <br/>\r\n<br/>\r\nĐiều trị giun đũa, giun móc, giun phổi, giun bàng quang, giun thận Capillaria plica.<br/>\r\n<br/>\r\nPhòng bệnh giun tim.<br/>\r\n<br/>\r\nHộp 3 ống Sản phẩm dùng ngoài da cho mèo từ 7 tuần tuổi.', 315000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/thuoc-nho-gay-broadline-1-dd9b6044-97bf-4934-ae3b-af8f7fa42cfd.jpg?v=1669091094900', 0, 4, 17);
INSERT INTO `product` VALUES (64, 'Nước Rửa Tai Cho Chó Mèo Bioline 50ml', 'Nước vệ sinh tai cho chó mèo/rửa tai Bioline 50ML là loại sản phẩm chuyên dùng để vệ sinh tai cho các bé chó mèo. Sản phẩm giúp ngăn ngừa các bệnh về tai như viêm tai, vàng tai và hỗ trợ làm sạch sâu, khử mùi hôi hiệu quả. Nước rửa tai Bioline thích hợp cho các bé thú cưng có tai bẩn và mùi hôi khó chịu. ', 70000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/nuoc-rua-tai-bioline-50ml.png?v=1669438600457', 0, 4, 18);
INSERT INTO `product` VALUES (65, 'Xịt Vệ Sinh Răng Miệng Cho Mèo Lee Webster 130ml', '- Xịt Vệ Sinh Răng Miệng Lee Webster Cho Mèo 130ml có thành phần nguyên liệu tự nhiên.<br/>\r\n<br/>\r\n- Dung dịch vệ sinh răng giúp loại bỏ mùi hôi miệng, vôi răng và các mảng bám để thú cưng cảm thấy thoải mái và dễ chịu.<br/>\r\n<br/>\r\n- Lưu lại hương thơm cho hơi thở thơm mát.<br/>\r\n<br/>\r\n- Các thành phần tự nhiên không gây kích ứng khi sử dụng.<br/>\r\n<br/>\r\n- Sản phẩm sẽ góp phần mang đến cho thú cưng của bạn hơi thở thơm tho để tự tin vui đùa suốt ngày dài.', 120000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/xit-ve-sinh-mieng-cho-meo-lee-webster.jpg?v=1669090209790', 0, 4, 18);
INSERT INTO `product` VALUES (66, 'Men Tiêu Hóa Cho Chó Mèo Bene Bac Plus Dạng Ống 15g', 'Men tiêu hóa cho chó mèo Bene-bac Plus với phiên bản mới hình ống, có vạch chia trên thân giúp ta dễ dàng bơm cho chó mèo ăn<br/>\r\n<br/>\r\nMen tiêu hóa cho chó mèo Bene-bac plus gel là men tiêu hóa dành cho chó/mèo/thỏ/bọ...có vấn đề về tiêu hóa: tiêu chảy, táo bón, khó tiêu....gây ra bởi sự di chuyển, thay đổi thức ăn, đầy bụng, thay đổi môi trường<br/>\r\n<br/>\r\nTác Dụng của men tiêu hóa Bene-Bac plus cho chó mèo<br/>\r\n<br/>\r\nBene-Bac Plus Gel cung cấp nguồn lợi khuẩn sống cho hệ tiêu hóa, và cân bằng độ pH trong đường ruột để cơ thể sản sinh các lợi khuẩn cho cơ thể chó mèo và thú nuôi sơ sinh. Khi được sinh ra, cơ thể thú nuôi sơ sinh thường bị thiếu hụt lợi khuẩn - do hấp thu gián tiếp qua cơ thể thú nuôi mẹ; hoặc khi thú nuôi tiêu chảy, đi phân lỏng, cơ thể sẽ mất đi 1 lượng lợi khuẩn, điều này sẽ ảnh hưởng đến sự phát triển và tăng trưởng tự nhiên của thú nuôi.', 280000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/men-tieu-hoa-bene-bac-plus-d83ffcff-6d58-4107-83fb-8cbdcace4cd1.jpg?v=1669192986797', 0, 4, 19);
INSERT INTO `product` VALUES (67, 'Men Tiêu Hoá Cho Chó Mèo Biotic Gói 5G', '-Cung cấp vitamin và vi khuẩn có lợi, giúp ức chế các vi khuẩn có hại trong đường ruột, làm giảm tiêu chảy ở thú cưng, gia súc, gia cầm<br/>\r\n-Tăng tiêu hóa và hấp thu thức ăn, giúp tăng trọng nhanh<br/>\r\n-Giảm khí độc và mùi hôi trong chuồng nuôi<br/>\r\n-Khối lượng: 5G<br/>\r\n-1 Hộp: 50 Gói', 7000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/men-tieu-hoa-biotic-cho-cho-meo-goi-le-5gr.jpg?v=1680943808547', 0, 4, 19);
INSERT INTO `product` VALUES (68, 'Dây Dắt Cho Chó Kèm Đai Lưng Cho Chủ', 'Bộ dây dắt nịt bụng gồm phần dây dắt và phần đai lưng vòng qua bụng giúp cún chạy bộ tập thể dục cùng chủ. Giúp chúng ta dễ dàng kiểm soát và điều hướng thú cưng. An toàn hơn khi ra đường.', 230000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bo-day-dat-nit-bung-2.jpg?v=1682052208530', 0, 5, 30);
INSERT INTO `product` VALUES (69, 'Balo Cho Chó Mèo Kèm Dây Dắt', '+ Chất liệu mềm mại, êm ái, không kích ứng da, phù hợp cho cún yêu nhà bạn<br/>\r\n<br/>\r\nMèo+ Size nhỏ : 3kg-8kg<br/>\r\n<br/>\r\n+Size lớn : 8kg-15kg<br/>\r\n<br/>\r\n+Dây đeo có thể tùy chỉnh độ rộng chật<br/>\r\n<br/>\r\nBa lô 1 gồm dây dắt, 2 dây đeo 2 bên chân bé, 1 dây đeo ngang bụng', 220000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/day-dat-balo-1-882e1a77-843b-4048-873f-ad484f1b4c9c.jpg?v=1681186260243', 0, 5, 30);
INSERT INTO `product` VALUES (70, 'Balo Cho Chó Mèo Hình Sọ Dừa', 'Balo cho chó mèo hình sọ dừa với chất liệu nhựa bền đẹp, chắc chắn, bên trong được thiết kế ổ nằm bằng lông giúp chó mèo nằm thoải mái hơn, có thể sử dụng như balo hoặc ổ ngủ đều được<br/>\r\n<br/>\r\nPhần nệm bên trong dễ dàng tháo rời dễ vệ sinh<br/>\r\n<br/>\r\nKích thước: 46*36*34cm<br/>\r\n<br/>\r\nThích hợp cho chó dưới 3kg, mèo dưới 5kg', 460000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/balo-so-dua-cho-cho-meo-2.jpg?v=1683518970493', 0, 6, 20);
INSERT INTO `product` VALUES (71, 'Địu Cho Chó Mèo', '- Địu cún được làm từ chất liệu vải mềm mịn , thoáng mát và chắc chắn . Giúp bạn dễ dàng địu thú cưng của mình đi chơi bất kỳ nơi đâu và bất kỳ lúc nào.<br/>\r\n- Địu cún vừa đem đến nhiều lợi ích cho chủ , vừa giúp thú cưng thoải mái , dễ chịu , đem đến sự an toàn cho thú cưng khi đi chơi.<br/>\r\nĐịu có 3 size: Nhỏ 200k,Trung 230k, Lớn 260k', 200000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/diu-do-2.jpg?v=1683365984557', 0, 6, 21);
INSERT INTO `product` VALUES (72, 'Lồng Vận Chuyển Cho Chó Mèo Hello Charmmy', 'Lồng xách bằng nhựa cho thú cưng.<br/>\r\nTrọng lượng sản phẩm nhẹ.<br/>\r\nDễ dàng vệ sinh.<br/>\r\nChịu được trọng lượng thú cưng lên đến 10kg.<br/>\r\nSản xuất tại Việt Nam<br/>\r\n<br/>\r\nChất liệu: Nhựa.\r\n\r\nKích thước sản phẩm (cm) :   rộng 29.5 x cao 40 x dài 50cm', 300000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-van-chuyen-hello-charmy-2-7918d1d0-7e9e-4c42-a3eb-69d6fa52dd26-7c9563c7-64cc-435e-948c-8c0bb92df4ef.jpg?v=1669110320370', 0, 6, 22);
INSERT INTO `product` VALUES (73, 'Đồ Chơi Cho Chó Mèo Thú Bông Kéo Dãn', 'Đồ chơi được nhồi bông, phần thân có thể kéo dãn. Cho thú cưng cắn, gặm. Có còi và giấy bóng bên trong, tạo âm thanh gây thích thú cho thú cưng<br/>\r\n<br/>\r\nChất liệu: Polyeste, Polyethylene, cao su, giấy bóng<br/>\r\n<br/>\r\nKích thước: 13x22x40cm', 80000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-keo-dan-hinh-su-tu.jpg?v=1669109324383', 0, 7, 23);
INSERT INTO `product` VALUES (74, 'Đồ Chơi Cho Chó Mèo Thú Bông', 'Tính năng sản phẩm: <br/>\r\n<br/>\r\nThú bông dành cho chó cưng.<br/>\r\nCó âm thanh khi chó cưng chơi.<br/>\r\nSản phẩm từ thương hiệu Doggyman Nhật Bản, được gia công sản xuất tại Việt Nam<br/>\r\n<br/>\r\nChất liệu : polyester, cotton', 65000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/do-choi-thu-bong-soc.jpg?v=1669110517387', 0, 7, 24);
INSERT INTO `product` VALUES (76, 'Khay Vệ Sinh Cho Chó Có Thành Gợn Sóng', 'Khay Vệ Sinh Cho Chó Có Thành Gợn Sóng  với kích thước cao 15cm, chiều rộng và dài đều 40cm giúp cho thú cưng đi vệ sinh không văng chất thải ra ngoài.<br/>\r\nSản phẩm được thiết kế chống tràn, có 1 tấm lưới có thể tháo rời, có thể để cát vệ sinh hoặc tấm tã giấy vệ sinh bên dưới để thấm hút chống mùi. <br/>\r\nChất liệu bền đẹp bằng nhựa cao cấp đảm bảo an toàn cho sức khỏe của thú cưng, không độc hại khi sử dụng. Tấm lưới giúp ngăn nước văng ra sàn, và chân vật nuôi không bị dính nước tiểu, giữ bàn chân được khô ráo. Lưới được thiết kế bằng vật liệu có tính đàn hồi vừa phải không làm đau chân, cũng không quá mềm làm chó con sợ hãi. Hơn nữa, thiết kế đệm mặt dưới giúp cố định sản phẩm, bảo vệ sàn nhà. <br/>\r\nGiúp bạn dễ dọn dẹp, lau chùi, vệ sinh hơn, không vấy bẩn ra khắp nhà. Rất tiện lợi cho những gia đình không có nhiều không gian như ở thành phố.<br/>\r\nSản phẩm là trợ thủ đắc lực trong việc đào tạo cún cưng của bạn đi toilet đúng chỗ, sạch sẽ, dễ dàng vệ sinh.', 200000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/khay-ve-sinh-thanh-gon-song-cho-cho-123.png?v=1669020267877', 0, 8, 29);
INSERT INTO `product` VALUES (77, 'Dầu Tắm Cho Chó Mèo Spa Tropiclean - 473ml', 'Sự kết hợp giữa kiwi dưỡng ẩm và các vitamin thiết yếu mang lại cho làn da và lông thú cưng cảm giác mềm mượt. Hương hoa oải hương giảm căng thẳng và thư giãn. Bột yến mạch làm dịu làn da<br/>\r\n<br/>\r\nThành phần: nước, yến mạch, Kiwi, đạm lúa mì thủy phân, dưa leo, chất tẩy rửa dịu nhẹ chiết xuất từ dừa, Lavender, gừng, Vitamin E, Pro-vitamin B5<br/>\r\n<br/>\r\nHướng dẫn sử dụng: làm ướt lông thú cưng và cho một lượng dầu gội vừa đủ, xoa nhẹ nhàng lên bộ lông thú cưng.', 450000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dau-tam-spa-tropiclean-long-trang-chai-473ml.jpg?v=1669109985393', 0, 9, 30);
INSERT INTO `product` VALUES (78, 'Lồng Cho Chó Di Động Cao Cấp Bằng Sắt Mã D222A', '- Lồng được làm bằng sắt cao cấp, độ bền cao, chịu lực tốt, không bị gỉ sét, có 4 bánh xe ở phía dưới nên có thể di chuyển lồng đến bất cứ nơi đâu.<br/>\r\n<br/>\r\n- Các song sắt được thiết kế để giữ thú cưng không lọt ra được.<br/>\r\n<br/>\r\n- Lồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\nKích thước : 154*95*119cm', 4500000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-d222a-df739880-5b25-404d-957d-812e7b4204e6.jpg?v=1669103411093', 0, 10, 30);
INSERT INTO `product` VALUES (79, 'Lồng Cho Chó Mèo Di Động Cao Cấp Bằng Sắt Mã D221A', '- Lồng được làm bằng sắt cao cấp, độ bền cao, chịu lực tốt, không bị gỉ sét, có 4 bánh xe ở phía dưới nên có thể di chuyển lồng đến bất cứ nơi đâu.<br/>\r\n<br/>\r\n- Lồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\n- Size: 125*95*114', 3385000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-d221a.jpg?v=1669105026277', 0, 10, 30);
INSERT INTO `product` VALUES (80, 'Lồng Cho Chó Mèo Di Động Cao Cấp Bằng Sắt Mã D219A', '- Lồng được làm bằng sắt cao cấp, độ bền cao, chịu lực tốt, không bị gỉ sét, có 4 bánh xe ở phía dưới nên có thể di chuyển lồng đến bất cứ nơi đâu.<br/>\r\n<br/>\r\n- Lồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\n- Size: 93*58*77cm', 1750000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-d219a.jpg?v=1669104995250', 0, 10, 30);
INSERT INTO `product` VALUES (81, 'Lồng Cho Mèo Di Động Cao Cấp Bằng Sắt Mã C224-C', 'Đặc điểm của một cái lồng sắt di động cao cấp có diện tích lớn thích hợp cho việc nuôi mèo :<br/>\r\n<br/>\r\nCó nhiều tầng và mỗi tầng bạn có thể để khay vệ sinh , đồ chơi , nệm cho bé .<br/>\r\n<br/>\r\nCó không gian thoải mái , thoáng mát<br/>\r\n<br/>\r\nCó bậc thang cho mèo dễ di chuyển lên xuống<br/>\r\n<br/>\r\nCó kèm theo vòng vải để cho bé có thể nằm đong đưa<br/>\r\n<br/>\r\nLồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\nNhững song sắt  có một khoảng cách vừa đủ giúp cho mèo cưng không thể lọt ra được.<br/>\r\n<br/>\r\nPhần cánh của của chuồng cho mèo nhiều tầng sơn tĩnh điện dễ dàng tháo mở nên không làm mất nhiều thời gian cho người sử dụng<br/>\r\n<br/>\r\n- Size : 94*58*142cm', 2700000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-cho-meo-c224-c.jpg?v=1669104957697', 0, 10, 30);
INSERT INTO `product` VALUES (82, 'Lồng Cho Mèo Đế Nhựa Có Tầng', 'Lồng kích thước lớn, có tầng để mèo thoải mái leo trèo và hoạt động. Một ngôi nhà an toàn và hoàn hảo cho mèo khi bạn phải ra ngoài không có thời gian chăm giữ bé.<br/>\r\n<br/>\r\nPetsaigon.vn có sẵn 3 size với kích thước như sau:<br/>\r\n<br/>\r\nS - 74*53*117.5cm<br/>\r\nM - 75*54*170cm<br/>\r\nL - 91*61*192.5cm<br/>\r\nNgoài ra, lồng có bánh xe và khay nhựa dễ dàng vệ sinh chỉ với vài thao tác tháo lắp đơn giản.', 200000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-meo-de-nhua-co-tang-1.jpg?v=1669172897427', 0, 10, 30);
INSERT INTO `product` VALUES (83, 'Lồng Cho Chó Mèo Di Động Mã D231A', 'Chuồng chó D231A là sản phẩm lồng/chuồng được thiết kế đặc biệt dành riêng cho chó mèo. Các song sắt đều được tính toán khoảng cách giúp trông giữ thú cưng tốt hơn, an toàn hơn. Bạn có thể gắn thêm các loại tô ăn và bính nước gắn chuồng cho thú cưng để bé có thể tự ăn uống khi đang ở trong. Lồng có 4 bánh xe di động dễ dàng di chuyển đến khu vực bạn muốn. Lồng thích hợp để nuôi chó hoặc mèo. <br/>\r\n<br/>\r\nNgoài ra, trong chuồng có thể chứa thêm thau cát vệ sinh mèo, võng, một số loại đồ chơi,... giúp bé giải trí, giảm căng thẳng khi phải ở trong chuồng quá thường xuyên. Lồng được làm bằng sắt liệu sắt cao cấp, bền chắc, chống gỉ sét và có khay di động để bạn có thể dọn dẹp thường xuyên cho thú cưng.<br/>\r\n<br/>\r\nKích thước lồng D231A: 93x59x81cm', 1950000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-d231a.jpg?v=1669099707427', 0, 10, 30);
INSERT INTO `product` VALUES (84, 'Lồng Cho Mèo Di Động Cao Cấp Bằng Sắt Mã C227', 'Đặc điểm của một cái lồng sắt di động cao cấp có diện tích lớn thích hợp cho việc nuôi mèo :<br/>\r\n<br/>\r\nCó nhiều tầng và mỗi tầng bạn có thể để khay vệ sinh , đồ chơi , nệm cho bé .<br/>\r\n<br/>\r\nCó không gian thoải mái , thoáng mát<br/>\r\n<br/>\r\nCó bậc thang cho mèo dễ di chuyển lên xuống<br/>\r\n<br/>\r\nLồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\nNhững song sắt  có một khoảng cách vừa đủ giúp cho mèo cưng không thể lọt ra được.<br/>\r\n<br/>\r\nPhần cánh của của chuồng cho mèo nhiều tầng sơn tĩnh điện dễ dàng tháo mở nên không làm mất nhiều thời gian cho người sử dụng', 1900000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-sat-di-dong-cao-cap-cho-meo-c227.jpg?v=1669104928853', 0, 10, 30);
INSERT INTO `product` VALUES (85, 'Lồng Cho Mèo Đế Nhựa Mã NLC-3W', 'Lồng mèo 3 tầng có những đặc điểm:<br/>\r\n<br/>\r\n- Có nhiều tầng và mỗi tầng bạn có thể để khay vệ sinh , đồ chơi , nệm cho bé .<br/>\r\n<br/>\r\n- Có không gian thoải mái , thoáng mát<br/>\r\n<br/>\r\n- Có bậc thang cho mèo dễ di chuyển lên xuống<br/>\r\n<br/>\r\n- Có kèm theo vòng vải để cho bé có thể nằm đong đưa<br/>\r\n<br/>\r\n- Lồng có kèm khay vệ sinh bên dưới giúp dễ dàng kéo ra vệ sinh<br/>\r\n<br/>\r\n- Những song sắt  có một khoảng cách vừa đủ giúp cho mèo cưng không thể lọt ra được.<br/>\r\n<br/>\r\n- Màu sắc nổi bật thu hút từ ánh nhìn đầu tiên<br/>\r\n<br/>\r\nKích thước : 91*61*192cm', 2800000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/long-meo-de-nhua-nlc-3w.jpg?v=1669103152853', 0, 10, 30);
INSERT INTO `product` VALUES (87, 'Bột Cầm Máu Cho Chó Mèo Bioline - 14g', 'CÔNG DỤNG<br/>\r\n<br/>\r\nBioline sử dụng bên ngoài để kiểm soát chảy máu gây ra bởi cắt móng tay, đuôi, vết cắt bề ngoài.<br/>\r\nNgăn chặn cơn đau do những vết cắt nhỏ trên bề mặt.<br/>\r\nCầm máu và ngừng chảy máu cho thú cưng rất tốt và hiệu quả cao.<br/>\r\nSản phẩm có tác dụng làm giảm cảm giác đau và làm giảm các căng thẳng của thú cưng với người cắt móng.', 100000, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bot-cam-mau-danh-cho-cho-meo.png?v=1669020580643', 0, 11, 30);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_permission` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Najoo', '$2a$10$7lI8.1u0QWExeEQnJOsAaOoiZFdngfA4wpB/7bZbtzJVSvrv9dfmq', 'vonam123@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-07-11', 'Nam', '0123456789', 'admin');
INSERT INTO `user` VALUES (2, 'Najoo2', '$2a$10$crmajb3w9twlOn38awMLX.U3jwkbqs7QVahpxrajgaici0AHycWQG', 'vonam@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-07-08', 'Nam', '0583142055', 'user');
INSERT INTO `user` VALUES (3, 'Najoo3', '$2a$10$crmajb3w9twlOn38awMLX.U3jwkbqs7QVahpxrajgaici0AHycWQG', 'vnamapp1678@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2002-12-12', 'Nữ', '0583142055', 'user');
INSERT INTO `user` VALUES (17, 'Najoo4', '$2a$10$g9YXLRiLxlc6tCm5ERI2QeuZMhmNQ9Jp6MUkSuRnQPkzEIU8PK2mO', 'vnamapp1679@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-12-12', 'Nam', '0583142055', 'user');
INSERT INTO `user` VALUES (24, 'App Nam', '$2a$10$tP2IiCvxuBbFZjeacPOJd.DKVmw0capHaaDiAlzhAYcweCD/IAU4.', 'vnamapp1677@gmail.com', 'Empty', '2023-06-07', 'Nam', '0123456789', 'user');
INSERT INTO `user` VALUES (25, 'Najoo5', '$2a$10$f6cP3pet7rW6vJwJasMjvuLq5mCn6HHX5aYAJ9P1OxnNTuf7MUa5S', 'vnamapp167@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2023-06-05', 'Nam', '0583142055', 'user');

SET FOREIGN_KEY_CHECKS = 1;
