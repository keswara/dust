/*
MySQL Backup
Database: sb
Backup Time: 2018-09-13 21:00:28
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
BEGIN;
LOCK TABLES `sb`.`lot` WRITE;
DELETE FROM `sb`.`lot`;
INSERT INTO `sb`.`lot` (`id`,`name`,`row`,`no`) VALUES (15, 'แปลง A', '1', 'หมวด AAA'),(16, 'แปลง A', '2', 'หมวด AAA'),(17, 'แปลง A', '3', 'หมวด AAA'),(18, 'แปลง A', '4', 'หมวด AAA'),(19, 'แปลง A', '5', 'หมวด AAA'),(20, 'แปลง A', '1', 'หมวด BBB'),(21, 'แปลง A', '2', 'หมวด BBB'),(22, 'แปลง A', '3', 'หมวด BBB'),(23, 'แปลง A', '4', 'หมวด BBB'),(24, 'แปลง A', '5', 'หมวด BBB'),(25, 'แปลง B', '1', 'หมวด CCC'),(26, 'แปลง B', '2', 'หมวด CCC'),(27, 'แปลง B', '3', 'หมวด CCC'),(28, 'แปลง B', '4', 'หมวด CCC'),(29, 'แปลง B', '5', 'หมวด CCC');
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
INSERT INTO `sb`.`sb_user` (`id`,`no_card`,`fname`,`lname`,`username`,`password`,`old`,`position`,`tel`) VALUES (6, '1300101172473', 'เกศวรา ', 'กุยแก้วพะเนา', 'keswara', 'e10adc3949ba59abbe56e057f20f883e', '21', 'admin', '0909533094'),(7, '111111111111', 'มุธิตา ', 'ลาวรรณ', 'mutita', '7b3d92f24936e5c126c68c7181c6d9fe', '35', 'user', '0856363925'),(8, '4224242', 'ห', 'ห', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '20', 'admin', '0909533094');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`shot_history` WRITE;
DELETE FROM `sb`.`shot_history`;
INSERT INTO `sb`.`shot_history` (`id`,`no_tree`,`lot_tree`,`datehi`,`comment`,`num_w`,`num_f`,`status`,`sumnum`,`user`) VALUES (37, 'SB610913000001', 'ลอต', '13-09-2018 20:57:25', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' keswara'),(38, 'SB610913000001', 'ลอต', '13-09-2018 20:57:29', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' keswara'),(39, 'SB610913000001', 'ลอต', '13-09-2018 20:57:32', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' keswara'),(40, 'SB610913000001', 'ลอต', '13-09-2018 20:57:46', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' admin'),(41, 'SB610913000015', 'ลอต', '13-09-2018 20:57:52', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' admin'),(42, 'SB610913000001', 'ลอต', '13-09-2018 20:58:30', '', '10', '0', 'เน่าเสีย เนื่องจาก ไม่ได้รับการดูแล', '10', ' mutita');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`status` WRITE;
DELETE FROM `sb`.`status`;
INSERT INTO `sb`.`status` (`id`,`name`,`detail`) VALUES (8, 'เน่าเสีย', 'ไม่ได้รับการดูแล'),(9, 'เน่าเสีย', 'หนองเจาะ'),(10, 'ขาดน้ำ', 'นาดน้ำ ยืนต้นใกล้ตาย'),(11, 'สมบูรณ์ดี', 'แข็งแรงสมบูรณ์ครบบถ้วน');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`tree` WRITE;
DELETE FROM `sb`.`tree`;
INSERT INTO `sb`.`tree` (`id`,`notree`,`datetree`,`groupt`,`actor`,`type`,`lot`,`comment`,`orderno`) VALUES (11, 'SB610913000001', '13-09-2561 18:05:23pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', 'หัวแถวฝั่งกระท่อม', '1'),(12, 'SB610913000012', '13-09-2561 18:07:43pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', '', '2'),(13, 'SB610913000013', '13-09-2561 18:08:48pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', '', '3'),(14, 'SB610913000014', '13-09-2561 18:08:55pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', '', '4'),(15, 'SB610913000015', '13-09-2561 18:09:20pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', '', '5'),(16, 'SB610913000016', '13-09-2561 18:09:28pm', 'แปลงA', ' keswara', 'ฝรั่งกิมจู จำพวก ไม้ผล', 'แปลง A แถว1  หมวด AAA  แปลง A', '', '6'),(17, 'SB610913000017', '13-09-2561 18:09:48pm', 'แปลงB', ' keswara', 'ฉะอม จำพวก ไม้ล้มลุก', 'แปลง B แถว1  หมวด CCC  แปลง B', '', 'ไม่มีลำดับ'),(18, 'SB61091300018', '13-09-2561 18:17:53pm', 'แปลงE', ' keswara', 'ลำใย จำพวก ไม้ผล', 'แปลง B แถว5  หมวด CCC  แปลง B', '', '1');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sb`.`type` WRITE;
DELETE FROM `sb`.`type`;
INSERT INTO `sb`.`type` (`id`,`name`,`detail`) VALUES (10, 'ฝรั่งกิมจู', 'ไม้ผล'),(11, 'ฉะอม', 'ไม้ล้มลุก'),(12, 'มะพร้าวน้ำห้อม', 'ไม้ผล'),(13, 'ลำใย', 'ไม้ผล');
UNLOCK TABLES;
COMMIT;
