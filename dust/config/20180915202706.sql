/*
MySQL Backup
Database: sb
Backup Time: 2018-09-15 20:27:07
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `sb`.`lot`;
DROP TABLE IF EXISTS `sb`.`note`;
DROP TABLE IF EXISTS `sb`.`sb_user`;
DROP TABLE IF EXISTS `sb`.`shot_history`;
DROP TABLE IF EXISTS `sb`.`status`;
DROP TABLE IF EXISTS `sb`.`tree`;
DROP TABLE IF EXISTS `sb`.`type`;
CREATE TABLE `lot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `row` varchar(255) DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `detail` text,
  `actor` varchar(255) DEFAULT NULL,
  `datenote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
CREATE TABLE `sb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_card` varchar(13) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `old` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`no_card`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `shot_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tree` varchar(255) DEFAULT NULL,
  `lot_tree` varchar(255) DEFAULT NULL,
  `datehi` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `num_w` varchar(255) DEFAULT NULL COMMENT 'ผลผลิตดี',
  `num_f` varchar(255) DEFAULT NULL COMMENT 'ผลผลิตเสีย',
  `status` varchar(255) DEFAULT NULL,
  `sumnum` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `ordert` varchar(255) DEFAULT NULL,
  `grouph` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notree` varchar(255) NOT NULL,
  `datetree` varchar(255) DEFAULT NULL,
  `groupt` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `orderno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`notree`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `insite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
BEGIN;
LOCK TABLES `sb`.`lot` WRITE;
DELETE FROM `sb`.`lot`;
INSERT INTO `sb`.`lot` (`id`,`name`,`row`,`no`) VALUES (1, 'ตอน 1', '1', 'หมวด ก'),(2, 'ตอน 1', '2', 'หมวด ก'),(3, 'ตอน 1', '3', 'หมวด ก'),(4, 'ตอน 1', '4', 'หมวด ก'),(5, 'ตอน 1', '5', 'หมวด ก'),(6, 'ตอน 1', '6', 'หมวด ก'),(7, 'ตอน 1', '7', 'หมวด ก'),(8, 'ตอน 1', '8', 'หมวด ก'),(9, 'ตอน 1', '9', 'หมวด ก'),(10, 'ตอน 1', '10', 'หมวด ก'),(11, 'ตอน 1', '1', 'หมวด ข'),(12, 'ตอน 1', '2', 'หมวด ข'),(13, 'ตอน 1', '3', 'หมวด ข'),(15, 'ตอน 1', '4', 'หมวด ข'),(16, 'ตอน 1', '5', 'หมวด ข'),(17, 'ตอน 1', '6', 'หมวด ข'),(18, 'ตอน 1', '7', 'หมวด ข'),(19, 'ตอน 1', '8', 'หมวด ข'),(20, 'ตอน 1', '9', 'หมวด ข'),(21, 'ตอน 1', '10', 'หมวด ข'),(22, 'ตอน 1', '1', 'หมวด ค'),(23, 'ตอน 1', '2', 'หมวด ค'),(24, 'ตอน 1', '3', 'หมวด ค'),(25, 'ตอน 1', '4', 'หมวด ค'),(26, 'ตอน 1', '5', 'หมวด ค'),(27, 'ตอน 1', '6', 'หมวด ค'),(29, 'ตอน 1', '7', 'หมวด ค'),(30, 'ตอน 1', '8', 'หมวด ค'),(31, 'ตอน 1', '9', 'หมวด ค'),(32, 'ตอน 1', '10', 'หมวด ค');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`note` WRITE;
DELETE FROM `sb`.`note`;
INSERT INTO `sb`.`note` (`id`,`title`,`detail`,`actor`,`datenote`) VALUES (20, 'ทดสอบ', 'ทดสอบระบบบันทึก', 'keswara', '13-09-2018 18:01:28'),(21, 'มีเรื่องสำคัญเขียนโน๊ตไว้', 'เขียนแปะไว้ได้ทุกอย่าง เพื่อให้คนอื่นเห็นได้ด้วย', 'keswara', '13-09-2018 18:02:13'),(22, 'การใช้งานส่วนใหญ่', 'การใช้งานจะเป็นการตรวจแปลงตามต้นต่างๆ ในเมนู \"ตรวจประจำวัน\"', 'keswara', '13-09-2018 18:04:05');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`sb_user` WRITE;
DELETE FROM `sb`.`sb_user`;
INSERT INTO `sb`.`sb_user` (`id`,`no_card`,`fname`,`lname`,`username`,`password`,`old`,`position`,`tel`) VALUES (13, '1300101172473', 'เกศวรา', 'กุยแก้วพะเนา', 'admin', '12103921f8cd2aaee13e5274b49e9437', '21', 'admin', '0909533094'),(14, '1300101172473', 'เกศวรา', 'กุยแก้วพะเนา', 'keswara', '12103921f8cd2aaee13e5274b49e9437', '21', 'admin', '0909533094'),(15, '1300101172473', 'Keswara', 'Ku.pa.', 'ae', '2e99bf4e42962410038bc6fa4ce40d97', '21', 'user', '0909533094'),(16, '3300600495207', 'mutita', 'toykratok', 'mutita', '21df6c93e7242ab051e13b626f9bad0b', '37', 'user', '0856363925');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`shot_history` WRITE;
DELETE FROM `sb`.`shot_history`;
INSERT INTO `sb`.`shot_history` (`id`,`no_tree`,`lot_tree`,`datehi`,`comment`,`num_w`,`num_f`,`status`,`sumnum`,`user`,`ordert`,`grouph`,`name`) VALUES (1, 'SB61091400001', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 01:04:03', 'ทดสอบ', '24', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '24', 'keswara', '1', 'แปลงA', 'ฝรั่งกิมจู จำพวก ไม้ผล'),(2, 'SB61091500003', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 01:23:43', '', '14', '3', 'ค่อนข้างสมบูรณ์ เนื่องจาก โดยรวมสมบูรณ์ต้องรับการดูแล สม่ำเสมอ', '17', 'keswara', '85', 'แปลงB', 'ฝรั่งกิมจู จำพวก ไม้ผล'),(3, 'SB61091500004', 'ตอน 1 แถว2  หมวด ข', '15-09-2018 01:25:36', '', '23', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '23', 'keswara', '12', 'แปลงA', 'มะพร้าวน้ำหอม จำพวก ไม้ล้มลุก'),(4, 'SB61091500005', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 01:26:50', '', '10', '0', 'สุกงอม เนื่องจาก สุกงอมใกล้จะใช้ไม่ได้  ต้องรีบเก็บ', '10', 'keswara', '1', 'แปลงE', 'เสาวรส จำพวก ไม้ล้มลุก'),(5, 'SB61091500005', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 01:33:54', '', '41', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '41', 'admin', '1', 'แปลงE', 'เสาวรส จำพวก ไม้ล้มลุก'),(6, 'SB61091500004', 'ตอน 1 แถว2  หมวด ข', '15-09-2018 02:00:23', '', '12', '0', 'เหี่ยวเฉา เนื่องจาก หลายสาเหตุ ขาดน้ำ ขาดปุ๋ย', '12', 'admin', '12', 'แปลงA', 'มะพร้าวน้ำหอม จำพวก ไม้ล้มลุก'),(7, 'SB61091500002', 'ตอน 1 แถว2  หมวด ก', '15-09-2018 02:10:17', '', '66', '12', 'ค่อนข้างสมบูรณ์ เนื่องจาก โดยรวมสมบูรณ์ต้องรับการดูแล สม่ำเสมอ', '78', 'admin', '2', 'แปลงA', 'ฝรั่งกิมจู จำพวก ไม้ผล'),(8, 'SB61091500004', 'ตอน 1 แถว2  หมวด ข', '15-09-2018 02:10:35', '', '13', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '13', 'admin', '12', 'แปลงA', 'มะพร้าวน้ำหอม จำพวก ไม้ล้มลุก'),(9, 'SB61091400001', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 02:11:32', '', '14', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '14', 'admin', '1', 'แปลงA', 'ฝรั่งกิมจู จำพวก ไม้ผล'),(10, 'SB61091500002', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 10:06:56', '', '20', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '20', 'mutita', '1', 'แปลงA', 'ฝรั่งกิมจู จำพวก ไม้ผล'),(11, 'SB61091500001', 'ตอน 1 แถว1  หมวด ก', '15-09-2018 10:08:06', '', '100', '0', 'สมบูรณ์ดีเยี่ม เนื่องจาก สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต', '100', 'mutita', '1', 'แปลงC', 'ลำใย จำพวก ไม้ผล');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`status` WRITE;
DELETE FROM `sb`.`status`;
INSERT INTO `sb`.`status` (`id`,`name`,`detail`) VALUES (1, 'เน่าเสีย', 'หนอนเจาะ ไม่ได้ฉีดยา'),(2, 'เน่าเสีย', 'ปล่อยไว้จนสุกงอม ไม่ได้เก็บผลผลิต'),(3, 'สุกงอม', 'สุกงอมใกล้จะใช้ไม่ได้  ต้องรีบเก็บ'),(4, 'ขาดน้ำ', 'ขาดน้ำ หรือระบบน้ำมีปัญหาน้ำมาไม่ถึง และไม่ได้รดน้ำ'),(5, 'เหี่ยวเฉา', 'หลายสาเหตุ ขาดน้ำ ขาดปุ๋ย'),(6, 'ค่อนข้างสมบูรณ์', 'โดยรวมสมบูรณ์ต้องรับการดูแล สม่ำเสมอ'),(7, 'สมบูรณ์ดีเยี่ม', 'สมบูรณ์แข็งแรงดี พร้อมเก็บเกี่ยวผลผลิต');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`tree` WRITE;
DELETE FROM `sb`.`tree`;
INSERT INTO `sb`.`tree` (`id`,`notree`,`datetree`,`groupt`,`actor`,`type`,`lot`,`comment`,`orderno`) VALUES (1, 'SB61091500001', '15-09-2561 10:04:56am', 'แปลงC', 'mutita', 'ลำใย จำพวก ไม้ผล', 'ตอน 1 แถว1  หมวด ก', 'ฝั่งถมที่', '1'),(2, 'SB61091500002', '15-09-2561 10:05:55am', 'แปลงA', 'mutita', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'ตอน 1 แถว1  หมวด ก', '', '1');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`type` WRITE;
DELETE FROM `sb`.`type`;
INSERT INTO `sb`.`type` (`id`,`name`,`detail`,`insite`) VALUES (2, 'ฝรั่งกิมจู', 'ไม้ผล', '2017-01-01'),(3, 'มะพร้าวน้ำหอม', 'ไม้ล้มลุก', '2018-01-31'),(4, 'ลำใย', 'ไม้ผล', '2018-08-16'),(5, 'เสาวรส', 'ไม้ล้มลุก', '2018-02-02'),(6, 'ลิ้นจิ้', 'ไม้ผล', '2018-09-15'),(7, 'กะท้อน', 'ไม้ผล', '2018-09-15'),(8, 'ไผ่ยักษ์น่าน', 'ไม้ล้มลุก', '2018-09-15'),(9, 'มะม่วงสามฤดู', 'ไม้ผล', '2018-09-15'),(10, 'มะนาว', 'ไม้ผล', '2018-09-15'),(11, 'ขนุน', 'ไม้ผล', '2018-09-15'),(12, 'หน่อยน่า', 'ไม้ผล', '2018-09-15'),(13, 'มะละกอ', 'ไม้ผล', '2018-09-15');
UNLOCK TABLES;
COMMIT;
