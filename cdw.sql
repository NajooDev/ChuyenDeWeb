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

 Date: 20/05/2023 14:46:19
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
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of img_detail
-- ----------------------------
INSERT INTO `img_detail` VALUES (1, 'https://bizweb.dktcdn.net/thumb/medium/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-2.jpg?v=1674095387173', 1);
INSERT INTO `img_detail` VALUES (2, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-3.jpg?v=1674095406430', 1);
INSERT INTO `img_detail` VALUES (3, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/may-cho-cho-meo-an-tu-dong-petkit-solo-4.jpg?v=1674098597583', 1);
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
INSERT INTO `img_detail` VALUES (37, 'https://bizweb.dktcdn.net/thumb/large/100/092/840/products/sua-bot-predogen-hop-giay-110gr.jpg?v=1669090855030', 21);

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
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (2, 3, 1, 80000, '');
INSERT INTO `order_product` VALUES (3, 2, 1, 15000, '');
INSERT INTO `order_product` VALUES (5, 1, 1, 2050000, '');
INSERT INTO `order_product` VALUES (6, 1, 1, 15000, '');
INSERT INTO `order_product` VALUES (7, 1, 1, 2225000, '');
INSERT INTO `order_product` VALUES (8, 1, 1, 2050000, '');
INSERT INTO `order_product` VALUES (9, 1, 2, 2170000, '');
INSERT INTO `order_product` VALUES (10, 1, 2, 240000, '');
INSERT INTO `order_product` VALUES (12, 1, 3, 422000, '');
INSERT INTO `order_product` VALUES (13, 1, 3, 141000, '148/10 ở đây');
INSERT INTO `order_product` VALUES (14, 1, 3, 60000, '');
INSERT INTO `order_product` VALUES (15, 3, 1, 298000, '148/10 ở đây');

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
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Najoo', '123', 'vonam123@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-07-12', 'Nam', '0123456789', 'admin');
INSERT INTO `user` VALUES (2, 'Najoo2', '123', 'vonam@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-07-11', 'Nữ', '0583142055', 'admin');
INSERT INTO `user` VALUES (3, 'Najoo3', '123', 'vnamapp167@gmail.com', '148/10 nguyen van khanh ,phuong 12 ,quan tan binh, thanh pho ho chi minh', '2001-07-15', 'Nữ', '0583142055', 'user');

SET FOREIGN_KEY_CHECKS = 1;
