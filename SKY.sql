-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for greencity
CREATE DATABASE IF NOT EXISTS `moonshine` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `moonshine`;

-- Dumping structure for table greencity.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.addon_account: ~8 rows (approximately)
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'Caution', 0),
	('society_ambulance', 'ambulance', 1),
	('society_fbi', 'fbi', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_nojob', 'nojob', 1),
	('society_police', 'police', 1),
	('society_sheriff', 'sheriff', 1),
	('society_taxi', 'taxi', 1),
	('society_weazel', 'reporterr', 1);

-- Dumping structure for table greencity.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`) USING BTREE,
  KEY `index_addon_account_data_account_name` (`account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7667 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.addon_account_data: ~35 rows (approximately)
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(3, 'society_police', 349, NULL),
	(16, 'society_taxi', 0, NULL),
	(5986, 'society_sheriff', 0, NULL),
	(7084, 'society_fbi', 0, NULL),
	(7087, 'society_ambulance', 198750, NULL),
	(7088, 'society_mechanic', 0, NULL),
	(7089, 'society_nojob', 0, NULL),
	(7092, 'society_weazel', 0, NULL),
	(7640, 'caution', 0, 'steam:1100001448e7465'),
	(7641, 'caution', 0, 'steam:110000144eefef0'),
	(7642, 'caution', 102040, 'steam:110000147e44dc2'),
	(7643, 'caution', 0, 'steam:11000014acc3380'),
	(7644, 'caution', 0, 'steam:11000014caaec6c'),
	(7645, 'caution', 0, 'steam:11000014707d7a0'),
	(7646, 'caution', 0, 'steam:110000147922f75'),
	(7647, 'caution', 0, 'steam:11000013dc12c8c'),
	(7648, 'caution', 0, 'steam:110000133a52955'),
	(7649, 'caution', 0, 'steam:110000155f2b86e'),
	(7650, 'caution', 0, 'steam:1100001459c8079'),
	(7651, 'caution', 0, 'steam:1100001440d17a7'),
	(7652, 'caution', 0, 'steam:11000011844f231'),
	(7653, 'caution', 0, 'steam:110000141b38366'),
	(7654, 'caution', 0, 'steam:110000144942744'),
	(7655, 'caution', 0, 'steam:11000014c1b3e07'),
	(7656, 'caution', 0, 'steam:110000144792e0f'),
	(7657, 'caution', 0, 'steam:110000146da759a'),
	(7658, 'caution', 0, 'steam:1100001549580b4'),
	(7659, 'caution', 0, 'steam:110000158694e50'),
	(7660, 'caution', 0, 'steam:11000013c08fe4f'),
	(7661, 'caution', 0, 'steam:11000014ba5153b'),
	(7662, 'caution', 0, 'steam:11000014771fef7'),
	(7663, 'caution', 0, 'steam:11000014907b78d'),
	(7664, 'caution', 0, 'steam:11000014e7a769f'),
	(7665, 'caution', 0, 'steam:110000149f1696f'),
	(7666, 'caution', 0, 'steam:1100001557dcb69');

-- Dumping structure for table greencity.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.addon_inventory: ~9 rows (approximately)
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('gang_vikings', 'gang', 1),
	('property', 'PropriÃƒÂ©tÃƒÂ©', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_fbi', 'fbi', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'police', 1),
	('society_sheriff', 'sheriff', 1),
	('society_taxi', 'taxi', 1),
	('society_weazel', 'reporterr', 1);

-- Dumping structure for table greencity.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`) USING BTREE,
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`) USING BTREE,
  KEY `index_addon_inventory_inventory_name` (`inventory_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.addon_inventory_items: ~20 rows (approximately)
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(1, 'society_police', 'silencer', 0, NULL),
	(2, 'society_police', 'grip', 0, NULL),
	(3, 'society_police', 'lsd', 2, NULL),
	(4, 'society_police', 'water', 6, NULL),
	(5, 'society_police', 'bread', 3, NULL),
	(6, 'society_fbi', 'water', 56, NULL),
	(7, 'society_police', 'clip', 7, NULL),
	(8, 'society_sheriff', 'clip', 0, NULL),
	(9, 'society_sheriff', 'bread', 10, NULL),
	(10, 'society_sheriff', 'water', 12, NULL),
	(11, 'society_sheriff', 'silencer', 0, NULL),
	(12, 'society_sheriff', 'grip', 0, NULL),
	(13, 'society_sheriff', 'lsd', 1, NULL),
	(14, 'society_fbi', 'clip', 0, NULL),
	(18, 'society_fbi', 'bread', 987, NULL),
	(19, 'society_taxi', 'vodka', 0, NULL),
	(22, 'society_fbi', 'silencer', 0, NULL),
	(24, 'society_taxi', 'bread', 0, NULL),
	(25, 'society_mechanic', 'bread', 73, NULL),
	(26, 'society_taxi', 'wool', 19, NULL);

-- Dumping structure for table greencity.bank_transfer
CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.bank_transfer: ~0 rows (approximately)

-- Dumping structure for table greencity.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5121 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.billing: ~6 rows (approximately)
INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
	(5096, 'steam:1100001161bef71', 'steam:110000144eefef0', 'player', 'steam:110000144eefef0', 'Fine: aa', 5000),
	(5103, 'steam:110000147e44dc2', 'steam:110000144eefef0', 'player', 'steam:110000144eefef0', 'Fine: aa', 100000),
	(5104, 'steam:110000147e44dc2', 'steam:110000144eefef0', 'player', 'steam:110000144eefef0', 'Fine: shop', 57000),
	(5106, 'steam:11000014707d7a0', 'steam:11000014d8c2f56', 'player', 'steam:11000014d8c2f56', 'Fine: NAMARDI', 100000),
	(5116, 'steam:11000014907b78d', 'steam:11000014e7a769f', 'player', 'steam:11000014e7a769f', 'Translation [en][fine_total] Peyda Nashod', 85),
	(5117, 'steam:11000014907b78d', 'steam:11000014e7a769f', 'player', 'steam:11000014e7a769f', 'Translation [en][fine_total] Peyda Nashod', 85);

-- Dumping structure for table greencity.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.datastore: ~17 rows (approximately)
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('gang_vikings', 'gang', 1),
	('property', 'Property', 0),
	('society_ambulance', 'ambulance', 1),
	('society_artesh', 'artesh', 1),
	('society_dadgostari', 'dadgostari', 1),
	('society_fbi', 'fbi', 1),
	('society_government', 'government', 1),
	('society_nightclub', 'nightclub', 1),
	('society_police', 'police', 1),
	('society_sheriff', 'Sheriff Department', 1),
	('society_taxi', 'taxi', 1),
	('society_weazel', 'reporterr', 1),
	('user_bag', 'Bag', 0),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0);

-- Dumping structure for table greencity.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8_persian_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`) USING BTREE,
  KEY `index_datastore_data_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104868 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.datastore_data: ~251 rows (approximately)
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(104609, 'society_ambulance', NULL, '{}'),
	(104610, 'society_artesh', NULL, '{}'),
	(104611, 'society_dadgostari', NULL, '{}'),
	(104612, 'society_fbi', NULL, '{"weapons":[{"name":"WEAPON_NIGHTSTICK","count":354},{"name":"WEAPON_STUNGUN","count":155},{"name":"WEAPON_PISTOL","count":119},{"name":"WEAPON_COMBATPISTOL","count":19},{"name":"WEAPON_BULLPUPRIFLE","count":120},{"name":"WEAPON_CARBINERIFLE","count":120},{"name":"WEAPON_GUSENBERG","count":118},{"name":"WEAPON_ASSAULTSMG","count":118},{"name":"WEAPON_SMG","count":58},{"name":"WEAPON_PISTOL50","count":77},{"name":"WEAPON_PISTOL_MK2","count":1},{"name":"WEAPON_PUMPSHOTGUN","count":2},{"name":"WEAPON_MARKSMANPISTOL","count":1},{"name":"WEAPON_HEAVYSNIPER_MK2","count":1},{"name":"WEAPON_RAILGUN","count":1},{"name":"WEAPON_FLASHLIGHT","count":1}]}'),
	(104613, 'society_government', NULL, '{}'),
	(104614, 'society_nightclub', NULL, '{}'),
	(104615, 'society_police', NULL, '{"weapons":[{"name":"WEAPON_NIGHTSTICK","count":275},{"name":"WEAPON_STUNGUN","count":213},{"name":"WEAPON_PISTOL","count":194},{"name":"WEAPON_COMBATPISTOL","count":134},{"name":"WEAPON_PISTOL50","count":74},{"name":"WEAPON_SMG","count":56},{"name":"WEAPON_ASSAULTSMG","count":96},{"name":"WEAPON_GUSENBERG","count":78},{"name":"WEAPON_CARBINERIFLE","count":56},{"name":"WEAPON_BULLPUPRIFLE","count":97}]}'),
	(104616, 'society_sheriff', NULL, '{"weapons":[{"name":"WEAPON_NIGHTSTICK","count":179},{"name":"WEAPON_STUNGUN","count":18},{"name":"WEAPON_PISTOL","count":57},{"name":"WEAPON_COMBATPISTOL","count":79},{"name":"WEAPON_PISTOL50","count":159},{"name":"WEAPON_SMG","count":40},{"name":"WEAPON_ASSAULTSMG","count":40},{"name":"WEAPON_GUSENBERG","count":20},{"name":"WEAPON_CARBINERIFLE","count":40},{"name":"WEAPON_BULLPUPRIFLE","count":79}]}'),
	(104617, 'society_taxi', NULL, '{}'),
	(104618, 'society_weazel', NULL, '{}'),
	(104619, 'property', 'steam:110000144eefef0', '{}'),
	(104620, 'user_ears', 'steam:110000144eefef0', '{}'),
	(104621, 'user_bag', 'steam:110000144eefef0', '{}'),
	(104622, 'user_glasses', 'steam:110000144eefef0', '{}'),
	(104623, 'user_helmet', 'steam:110000144eefef0', '{}'),
	(104624, 'user_mask', 'steam:110000144eefef0', '{}'),
	(104625, 'property', 'steam:110000147e44dc2', '{"dressing":[{"label":"lati","skin":{"hair_color_1":0,"ears_1":-1,"chin_4":0,"sun_1":-1,"bags_1":0,"dad":0,"eyebrows_4":0,"lip_thickness":0,"face_md_weight":50.0,"makeup_3":0,"bproof_2":0,"bodyb_4":0,"complexion_1":-1,"cheeks_2":0,"nose_5":0,"tshirt_1":72,"eye_color":0,"eyebrows_5":0,"tshirt_2":3,"chest_2":10,"blush_2":10,"ears_2":0,"eyebrows_3":0,"nose_6":0,"moles_2":10,"watches_1":-1,"helmet_2":0,"age_2":10,"makeup_2":10,"moles_1":-1,"skin_md_weight":6,"eyebrows_6":0,"decals_1":0,"nose_3":0,"cheeks_3":0,"chest_3":0,"bracelets_1":-1,"mom":21,"mask_1":-1,"glasses_1":-1,"sun_2":10,"chest_1":-1,"chin_1":0,"nose_4":0,"sex":0,"shoes_1":10,"blush_3":0,"bodyb_1":-1,"complexion_2":10,"watches_2":0,"beard_1":11,"hair_1":0,"bodyb_2":0,"eyebrows_2":10,"pants_2":0,"age_1":-1,"eyebrows_1":0,"makeup_1":-1,"lipstick_4":0,"cheeks_1":0,"chin_3":0,"glasses_2":0,"bags_2":0,"jaw_1":0,"chin_2":0,"chain_1":0,"lipstick_3":0,"nose_2":0,"mask_2":0,"neck_thickness":0,"beard_3":3,"decals_2":0,"blemishes_1":-1,"arms_2":0,"torso_1":142,"chain_2":0,"jaw_2":0,"pants_1":24,"makeup_4":0,"hair_color_2":0,"blemishes_2":10,"eye_squint":0,"nose_1":0,"arms":47,"shoes_2":0,"torso_2":0,"bproof_1":0,"bodyb_3":-1,"hair_2":0,"helmet_1":-1,"beard_2":10,"beard_4":0,"blush_1":-1,"lipstick_2":10,"bracelets_2":0,"lipstick_1":-1}},{"label":"vsi","skin":{"hair_color_1":0,"ears_1":-1,"chin_4":0,"sun_1":-1,"mask_2":0,"dad":0,"eyebrows_4":0,"lip_thickness":0,"face_md_weight":50.0,"makeup_3":0,"bproof_2":0,"bodyb_4":0,"complexion_1":-1,"cheeks_2":0,"nose_5":0,"tshirt_1":74,"eye_color":0,"bags_2":0,"tshirt_2":3,"chest_2":10,"blush_2":10,"torso_2":0,"eyebrows_3":0,"nose_6":0,"moles_2":10,"watches_1":-1,"helmet_2":0,"age_2":10,"makeup_2":10,"moles_1":-1,"skin_md_weight":6,"eyebrows_6":0,"decals_1":0,"chain_2":0,"cheeks_3":0,"chest_3":0,"bracelets_1":-1,"mom":21,"jaw_2":0,"glasses_1":0,"sun_2":10,"chest_1":-1,"makeup_4":0,"nose_4":0,"sex":0,"shoes_1":10,"bodyb_2":0,"bodyb_1":-1,"complexion_2":10,"torso_1":229,"watches_2":0,"hair_1":0,"chin_2":0,"blush_3":0,"age_1":-1,"pants_2":0,"eyebrows_1":0,"chin_1":0,"nose_2":0,"cheeks_1":0,"chin_3":0,"mask_1":0,"nose_3":0,"bags_1":0,"makeup_1":-1,"chain_1":0,"lipstick_3":0,"hair_2":0,"lipstick_4":0,"glasses_2":0,"beard_3":3,"decals_2":0,"blemishes_1":-1,"arms_2":0,"neck_thickness":0,"ears_2":0,"jaw_1":0,"pants_1":62,"eyebrows_2":10,"hair_color_2":0,"blemishes_2":10,"eye_squint":0,"blush_1":-1,"arms":100,"shoes_2":0,"bodyb_3":-1,"bproof_1":0,"beard_2":10,"eyebrows_5":0,"beard_1":11,"helmet_1":-1,"beard_4":0,"nose_1":0,"lipstick_2":10,"bracelets_2":0,"lipstick_1":-1}},{"label":"vsi 2","skin":{"hair_color_1":0,"ears_1":-1,"chin_4":0,"sun_1":-1,"mask_2":0,"skin":12,"eyebrows_4":0,"lip_thickness":0,"face":0,"face_md_weight":50.0,"makeup_3":0,"bproof_2":0,"bodyb_4":0,"complexion_1":-1,"cheeks_2":0,"nose_5":0,"tshirt_1":15,"eye_color":0,"eyebrows_5":0,"eyebrows_2":10,"chest_2":10,"blush_2":10,"ears_2":0,"eyebrows_3":0,"nose_6":0,"moles_2":10,"watches_1":-1,"face_2":21,"helmet_2":0,"age_2":10,"makeup_2":10,"moles_1":-1,"skin_md_weight":6,"eyebrows_6":0,"decals_1":0,"chain_2":0,"cheeks_3":0,"chest_3":0,"bracelets_1":-1,"mom":21,"mask_1":0,"glasses_1":0,"nose_3":0,"sun_2":10,"dad":0,"glasses_2":0,"chest_1":-1,"beard_4":0,"nose_4":0,"sex":0,"shoes_1":28,"beard_2":10,"makeup_1":-1,"bodyb_1":-1,"complexion_2":10,"torso_2":3,"hair_1":0,"chin_2":0,"neck_thickness":0,"nose_2":0,"nose_1":0,"eyebrows_1":0,"chin_1":0,"pants_2":1,"cheeks_1":0,"chin_3":0,"torso_1":165,"lipstick_4":0,"face_3":5,"jaw_2":0,"beard_1":11,"lipstick_3":0,"hair_2":0,"blush_3":0,"makeup_4":0,"beard_3":3,"decals_2":0,"blemishes_1":-1,"arms_2":0,"chain_1":0,"pants_1":46,"watches_2":0,"face_1":0,"bags_1":0,"hair_color_2":0,"blemishes_2":10,"eye_squint":0,"age_1":-1,"arms":1,"shoes_2":0,"bags_2":0,"bproof_1":0,"bodyb_3":-1,"bodyb_2":0,"jaw_1":0,"helmet_1":-1,"tshirt_2":0,"blush_1":-1,"lipstick_2":10,"bracelets_2":0,"lipstick_1":-1}}]}'),
	(104626, 'user_ears', 'steam:110000147e44dc2', '{}'),
	(104627, 'user_glasses', 'steam:110000147e44dc2', '{"hasGlasses":true,"skin":{"glasses_2":6,"glasses_1":8}}'),
	(104628, 'user_helmet', 'steam:110000147e44dc2', '{"hasHelmet":true,"skin":{"helmet_1":30,"helmet_2":0}}'),
	(104629, 'user_bag', 'steam:110000147e44dc2', '{}'),
	(104630, 'user_mask', 'steam:110000147e44dc2', '{"skin":{"mask_1":14,"mask_2":2},"hasMask":true}'),
	(104631, 'property', 'steam:110000147922f75', '{}'),
	(104632, 'user_bag', 'steam:110000147922f75', '{}'),
	(104633, 'user_mask', 'steam:110000147922f75', '{}'),
	(104634, 'user_glasses', 'steam:110000147922f75', '{"hasGlasses":true,"skin":{"glasses_2":2,"glasses_1":7}}'),
	(104635, 'user_ears', 'steam:110000147922f75', '{}'),
	(104636, 'user_helmet', 'steam:110000147922f75', '{}'),
	(104637, 'property', 'steam:1100001161bef71', '{}'),
	(104638, 'user_bag', 'steam:1100001161bef71', '{}'),
	(104639, 'user_ears', 'steam:1100001161bef71', '{}'),
	(104640, 'user_glasses', 'steam:1100001161bef71', '{}'),
	(104641, 'user_helmet', 'steam:1100001161bef71', '{}'),
	(104642, 'user_mask', 'steam:1100001161bef71', '{}'),
	(104643, 'property', 'steam:110000155f2b86e', '{"dressing":[{"label":"king","skin":{"nose_2":0,"mask_2":0,"nose_1":0.1,"cheeks_1":0,"nose_6":0,"makeup_3":0,"sex":0,"moles_1":-1,"bracelets_2":0,"makeup_4":0,"eyebrows_1":0,"hair_color_2":26,"age_2":10,"arms_2":0,"bodyb_2":0,"blush_3":0,"bags_2":0,"chest_3":0,"complexion_2":10,"beard_4":28,"helmet_2":0,"chin_2":0,"beard_1":8,"eye_color":8,"blemishes_2":10,"helmet_1":-1,"hair_2":0,"complexion_1":-1,"face_md_weight":100,"lipstick_3":0,"ears_1":11,"arms":30,"blush_2":10,"lip_thickness":0,"moles_2":10,"bproof_1":43,"watches_1":-1,"hair_color_1":28,"torso_2":2,"glasses_2":3,"shoes_2":3,"mask_1":-1,"shoes_1":51,"watches_2":0,"glasses_1":8,"hair_1":50,"skin_md_weight":12,"decals_1":0,"chain_2":0,"bags_1":0,"bproof_2":0,"chin_1":0,"chain_1":0,"age_1":-1,"cheeks_2":0,"lipstick_2":10,"makeup_2":10,"blush_1":-1,"bracelets_1":-1,"sun_2":10,"nose_3":0,"mom":21,"chest_1":-1,"decals_2":0,"ears_2":1,"beard_3":28,"eyebrows_3":28,"neck_thickness":0,"makeup_1":-1,"jaw_1":0,"bodyb_1":-1,"pants_2":0,"eyebrows_4":28,"chin_4":0,"jaw_2":0,"bodyb_4":0,"eyebrows_5":-0.5,"eyebrows_2":10,"tshirt_2":0,"nose_5":0,"chin_3":0,"bodyb_3":-1,"eyebrows_6":-0.5,"lipstick_1":-1,"cheeks_3":0,"nose_4":0,"eye_squint":0,"blemishes_1":-1,"pants_1":62,"dad":17,"chest_2":10,"beard_2":10,"tshirt_1":12,"sun_1":-1,"torso_1":12,"lipstick_4":0}}]}'),
	(104644, 'user_bag', 'steam:110000155f2b86e', '{}'),
	(104645, 'user_ears', 'steam:110000155f2b86e', '{"hasEars":true,"skin":{"ears_2":1,"ears_1":11}}'),
	(104646, 'user_glasses', 'steam:110000155f2b86e', '{"skin":{"glasses_1":8,"glasses_2":3},"hasGlasses":true}'),
	(104647, 'user_helmet', 'steam:110000155f2b86e', '{}'),
	(104648, 'user_mask', 'steam:110000155f2b86e', '{"skin":{"mask_2":9,"mask_1":62},"hasMask":true}'),
	(104649, 'property', 'steam:1100001454d38b1', '{}'),
	(104650, 'user_bag', 'steam:1100001454d38b1', '{}'),
	(104651, 'user_ears', 'steam:1100001454d38b1', '{}'),
	(104652, 'user_glasses', 'steam:1100001454d38b1', '{}'),
	(104653, 'user_helmet', 'steam:1100001454d38b1', '{}'),
	(104654, 'user_mask', 'steam:1100001454d38b1', '{}'),
	(104655, 'property', 'steam:1100001558fc9b5', '{}'),
	(104656, 'user_bag', 'steam:1100001558fc9b5', '{}'),
	(104657, 'user_ears', 'steam:1100001558fc9b5', '{}'),
	(104658, 'user_glasses', 'steam:1100001558fc9b5', '{}'),
	(104659, 'user_helmet', 'steam:1100001558fc9b5', '{}'),
	(104660, 'user_mask', 'steam:1100001558fc9b5', '{}'),
	(104661, 'property', 'steam:1100001459c8079', '{}'),
	(104662, 'user_bag', 'steam:1100001459c8079', '{}'),
	(104663, 'user_ears', 'steam:1100001459c8079', '{}'),
	(104664, 'user_glasses', 'steam:1100001459c8079', '{"hasGlasses":true,"skin":{"glasses_2":5,"glasses_1":5}}'),
	(104665, 'user_helmet', 'steam:1100001459c8079', '{}'),
	(104666, 'user_mask', 'steam:1100001459c8079', '{"hasMask":true,"skin":{"mask_1":14,"mask_2":11}}'),
	(104667, 'property', 'steam:110000158b67752', '{}'),
	(104668, 'user_bag', 'steam:110000158b67752', '{}'),
	(104669, 'user_ears', 'steam:110000158b67752', '{}'),
	(104670, 'user_glasses', 'steam:110000158b67752', '{}'),
	(104671, 'user_helmet', 'steam:110000158b67752', '{}'),
	(104672, 'user_mask', 'steam:110000158b67752', '{}'),
	(104673, 'property', 'steam:11000014bdfcc06', '{}'),
	(104674, 'user_bag', 'steam:11000014bdfcc06', '{}'),
	(104675, 'user_ears', 'steam:11000014bdfcc06', '{}'),
	(104676, 'user_glasses', 'steam:11000014bdfcc06', '{}'),
	(104677, 'user_helmet', 'steam:11000014bdfcc06', '{}'),
	(104678, 'user_mask', 'steam:11000014bdfcc06', '{}'),
	(104679, 'property', 'steam:110000149f1696f', '{}'),
	(104680, 'user_bag', 'steam:110000149f1696f', '{}'),
	(104681, 'user_ears', 'steam:110000149f1696f', '{}'),
	(104682, 'user_glasses', 'steam:110000149f1696f', '{}'),
	(104683, 'user_helmet', 'steam:110000149f1696f', '{}'),
	(104684, 'user_mask', 'steam:110000149f1696f', '{}'),
	(104685, 'property', 'steam:1100001582ebd8c', '{}'),
	(104686, 'user_bag', 'steam:1100001582ebd8c', '{}'),
	(104687, 'user_glasses', 'steam:1100001582ebd8c', '{}'),
	(104688, 'user_ears', 'steam:1100001582ebd8c', '{}'),
	(104689, 'user_helmet', 'steam:1100001582ebd8c', '{}'),
	(104690, 'user_mask', 'steam:1100001582ebd8c', '{}'),
	(104691, 'property', 'steam:11000014e0b7704', '{}'),
	(104692, 'user_bag', 'steam:11000014e0b7704', '{}'),
	(104693, 'user_glasses', 'steam:11000014e0b7704', '{}'),
	(104694, 'user_helmet', 'steam:11000014e0b7704', '{}'),
	(104695, 'user_mask', 'steam:11000014e0b7704', '{}'),
	(104696, 'user_ears', 'steam:11000014e0b7704', '{}'),
	(104697, 'property', 'steam:110000152338086', '{}'),
	(104698, 'user_bag', 'steam:110000152338086', '{}'),
	(104699, 'user_ears', 'steam:110000152338086', '{}'),
	(104700, 'user_glasses', 'steam:110000152338086', '{}'),
	(104701, 'user_helmet', 'steam:110000152338086', '{}'),
	(104702, 'user_mask', 'steam:110000152338086', '{}'),
	(104703, 'user_bag', 'steam:110000151c26a29', '{}'),
	(104704, 'property', 'steam:110000151c26a29', '{}'),
	(104705, 'user_glasses', 'steam:110000151c26a29', '{}'),
	(104706, 'user_mask', 'steam:110000151c26a29', '{}'),
	(104707, 'user_ears', 'steam:110000151c26a29', '{}'),
	(104708, 'user_helmet', 'steam:110000151c26a29', '{}'),
	(104709, 'property', 'steam:110000158df5507', '{}'),
	(104710, 'user_bag', 'steam:110000158df5507', '{}'),
	(104711, 'user_ears', 'steam:110000158df5507', '{}'),
	(104712, 'user_mask', 'steam:110000158df5507', '{}'),
	(104713, 'user_helmet', 'steam:110000158df5507', '{}'),
	(104714, 'user_glasses', 'steam:110000158df5507', '{}'),
	(104715, 'user_bag', 'steam:110000144792e0f', '{}'),
	(104716, 'user_ears', 'steam:110000144792e0f', '{}'),
	(104717, 'property', 'steam:110000144792e0f', '{}'),
	(104718, 'user_glasses', 'steam:110000144792e0f', '{}'),
	(104719, 'user_helmet', 'steam:110000144792e0f', '{}'),
	(104720, 'user_mask', 'steam:110000144792e0f', '{}'),
	(104721, 'user_bag', 'steam:11000011844f231', '{}'),
	(104722, 'user_ears', 'steam:11000011844f231', '{}'),
	(104723, 'property', 'steam:11000011844f231', '{}'),
	(104724, 'user_glasses', 'steam:11000011844f231', '{}'),
	(104725, 'user_mask', 'steam:11000011844f231', '{}'),
	(104726, 'user_helmet', 'steam:11000011844f231', '{}'),
	(104727, 'property', 'steam:11000014ba5153b', '{}'),
	(104728, 'user_bag', 'steam:11000014ba5153b', '{}'),
	(104729, 'user_ears', 'steam:11000014ba5153b', '{}'),
	(104730, 'user_helmet', 'steam:11000014ba5153b', '{}'),
	(104731, 'user_glasses', 'steam:11000014ba5153b', '{}'),
	(104732, 'user_mask', 'steam:11000014ba5153b', '{}'),
	(104733, 'property', 'steam:1100001448e7465', '{}'),
	(104734, 'user_bag', 'steam:1100001448e7465', '{}'),
	(104735, 'user_ears', 'steam:1100001448e7465', '{}'),
	(104736, 'user_glasses', 'steam:1100001448e7465', '{}'),
	(104737, 'user_mask', 'steam:1100001448e7465', '{}'),
	(104738, 'user_helmet', 'steam:1100001448e7465', '{}'),
	(104739, 'property', 'steam:1100001456c71d1', '{}'),
	(104740, 'user_bag', 'steam:1100001456c71d1', '{}'),
	(104741, 'user_ears', 'steam:1100001456c71d1', '{}'),
	(104742, 'user_mask', 'steam:1100001456c71d1', '{}'),
	(104743, 'user_glasses', 'steam:1100001456c71d1', '{}'),
	(104744, 'user_helmet', 'steam:1100001456c71d1', '{}'),
	(104745, 'user_ears', 'steam:110000133a52955', '{}'),
	(104746, 'user_bag', 'steam:110000133a52955', '{}'),
	(104747, 'property', 'steam:110000133a52955', '{}'),
	(104748, 'user_helmet', 'steam:110000133a52955', '{}'),
	(104749, 'user_mask', 'steam:110000133a52955', '{}'),
	(104750, 'user_glasses', 'steam:110000133a52955', '{}'),
	(104751, 'property', 'steam:110000144580ce0', '{}'),
	(104752, 'user_bag', 'steam:110000144580ce0', '{}'),
	(104753, 'user_ears', 'steam:110000144580ce0', '{}'),
	(104754, 'user_glasses', 'steam:110000144580ce0', '{}'),
	(104755, 'user_helmet', 'steam:110000144580ce0', '{}'),
	(104756, 'user_mask', 'steam:110000144580ce0', '{}'),
	(104762, 'property', 'steam:11000013dc12c8c', '{"dressing":[]}'),
	(104763, 'user_bag', 'steam:11000013dc12c8c', '{}'),
	(104764, 'user_glasses', 'steam:11000013dc12c8c', '{"hasGlasses":true,"skin":{"glasses_2":5,"glasses_1":5}}'),
	(104765, 'user_mask', 'steam:11000013dc12c8c', '{}'),
	(104766, 'user_ears', 'steam:11000013dc12c8c', '{"skin":{"ears_2":0,"ears_1":0},"hasEars":true}'),
	(104767, 'user_helmet', 'steam:11000013dc12c8c', '{"skin":{"helmet_2":0,"helmet_1":3},"hasHelmet":true}'),
	(104769, 'property', 'steam:110000141b38366', '{}'),
	(104770, 'user_helmet', 'steam:110000141b38366', '{}'),
	(104771, 'user_glasses', 'steam:110000141b38366', '{}'),
	(104772, 'user_bag', 'steam:110000141b38366', '{}'),
	(104773, 'user_mask', 'steam:110000141b38366', '{}'),
	(104774, 'user_ears', 'steam:110000141b38366', '{}'),
	(104775, 'property', 'steam:11000014acc3380', '{}'),
	(104776, 'user_bag', 'steam:11000014acc3380', '{}'),
	(104777, 'user_ears', 'steam:11000014acc3380', '{}'),
	(104778, 'user_glasses', 'steam:11000014acc3380', '{}'),
	(104779, 'user_helmet', 'steam:11000014acc3380', '{}'),
	(104780, 'user_mask', 'steam:11000014acc3380', '{}'),
	(104781, 'property', 'steam:11000014d8c2f56', '{"dressing":[{"skin":{"moles_2":10,"eye_squint":0,"complexion_2":10,"mask_2":0,"lip_thickness":0,"makeup_3":0,"hair_color_2":0,"nose_5":0,"torso_2":2,"blemishes_2":10,"chin_3":0,"bags_1":1,"bracelets_2":0,"decals_1":24,"lipstick_4":0,"watches_2":0,"chin_2":0,"skin_md_weight":6,"hair_2":0,"eyebrows_4":0,"nose_1":0,"tshirt_2":0,"ears_1":-1,"dad":0,"lipstick_2":10,"nose_4":0,"age_2":10,"eyebrows_2":10,"shoes_2":0,"jaw_1":0,"sun_2":10,"bproof_2":0,"nose_3":0,"mask_1":-1,"eyebrows_1":0,"blush_3":0,"nose_2":0,"chin_4":0,"eye_color":0,"arms":21,"helmet_1":-1,"bags_2":0,"makeup_4":0,"hair_1":35,"bracelets_1":-1,"lipstick_3":0,"torso_1":3,"shoes_1":10,"eyebrows_6":0,"blemishes_1":-1,"nose_6":0,"chest_2":10,"chin_1":0,"beard_4":0,"bproof_1":0,"glasses_2":0,"bodyb_2":0,"tshirt_1":17,"beard_3":0,"hair_color_1":0,"glasses_1":-1,"beard_2":10,"arms_2":0,"eyebrows_3":0,"cheeks_3":0,"chain_2":0,"sun_1":-1,"bodyb_4":0,"chest_1":-1,"age_1":-1,"lipstick_1":-1,"helmet_2":0,"blush_2":10,"ears_2":0,"watches_1":-1,"makeup_1":-1,"bodyb_1":-1,"pants_1":34,"moles_1":-1,"sex":0,"jaw_2":0,"neck_thickness":0,"face_md_weight":50.0,"pants_2":0,"chest_3":0,"chain_1":0,"blush_1":-1,"cheeks_2":0,"cheeks_1":0,"eyebrows_5":0,"mom":21,"makeup_2":10,"complexion_1":-1,"bodyb_3":-1,"beard_1":-1,"decals_2":3},"label":"asdasd"}]}'),
	(104782, 'user_bag', 'steam:11000014d8c2f56', '{}'),
	(104783, 'user_ears', 'steam:11000014d8c2f56', '{}'),
	(104784, 'user_mask', 'steam:11000014d8c2f56', '{}'),
	(104785, 'user_helmet', 'steam:11000014d8c2f56', '{}'),
	(104786, 'user_glasses', 'steam:11000014d8c2f56', '{}'),
	(104787, 'user_bag', 'steam:11000014707d7a0', '{}'),
	(104788, 'property', 'steam:11000014707d7a0', '{}'),
	(104789, 'user_ears', 'steam:11000014707d7a0', '{}'),
	(104790, 'user_helmet', 'steam:11000014707d7a0', '{}'),
	(104791, 'user_glasses', 'steam:11000014707d7a0', '{}'),
	(104792, 'user_mask', 'steam:11000014707d7a0', '{}'),
	(104793, 'user_bag', 'steam:11000014caaec6c', '{}'),
	(104794, 'property', 'steam:11000014caaec6c', '{}'),
	(104795, 'user_ears', 'steam:11000014caaec6c', '{}'),
	(104796, 'user_helmet', 'steam:11000014caaec6c', '{}'),
	(104797, 'user_glasses', 'steam:11000014caaec6c', '{}'),
	(104798, 'user_mask', 'steam:11000014caaec6c', '{}'),
	(104800, 'property', 'steam:1100001440d17a7', '{}'),
	(104801, 'user_bag', 'steam:1100001440d17a7', '{}'),
	(104802, 'user_ears', 'steam:1100001440d17a7', '{}'),
	(104803, 'user_helmet', 'steam:1100001440d17a7', '{}'),
	(104804, 'user_glasses', 'steam:1100001440d17a7', '{}'),
	(104805, 'user_mask', 'steam:1100001440d17a7', '{}'),
	(104806, 'property', 'steam:110000144942744', '{"dressing":[{"skin":{"chain_2":0,"blemishes_2":10,"blush_3":0,"age_1":-1,"face_md_weight":50.0,"hair_color_2":0,"eye_color":0,"bodyb_4":0,"hair_1":9,"chest_2":10,"arms_2":0,"arms":26,"decals_2":0,"ears_2":0,"chest_1":-1,"makeup_2":10,"helmet_2":0,"hair_2":0,"chest_3":0,"bproof_2":0,"eye_squint":0,"nose_6":0,"neck_thickness":0,"tshirt_2":0,"tshirt_1":10,"nose_1":0,"pants_1":62,"glasses_1":-1,"chin_1":0,"eyebrows_3":0,"chain_1":-1,"eyebrows_6":0,"eyebrows_2":10,"beard_1":20,"skin_md_weight":6,"chin_2":0,"age_2":10,"mask_1":-1,"shoes_2":3,"jaw_1":0,"blush_1":-1,"makeup_4":0,"lipstick_2":10,"chin_3":0,"nose_2":0,"beard_3":0,"beard_4":0,"watches_2":0,"eyebrows_1":0,"dad":0,"jaw_2":0,"cheeks_2":0,"eyebrows_4":0,"bags_1":-1,"cheeks_1":0,"complexion_1":-1,"chin_4":0,"lipstick_3":0,"lipstick_4":0,"makeup_1":-1,"bodyb_1":-1,"pants_2":8,"sun_1":-1,"torso_1":57,"bags_2":0,"ears_1":-1,"bodyb_3":-1,"bracelets_2":0,"moles_2":10,"eyebrows_5":0,"lip_thickness":0,"bracelets_1":-1,"watches_1":-1,"decals_1":0,"lipstick_1":-1,"nose_3":0,"moles_1":-1,"blemishes_1":-1,"sun_2":10,"torso_2":0,"makeup_3":0,"nose_4":0,"helmet_1":-1,"mom":21,"hair_color_1":0,"glasses_2":0,"cheeks_3":0,"blush_2":10,"sex":0,"beard_2":10,"shoes_1":51,"complexion_2":10,"nose_5":0,"mask_2":0,"bodyb_2":0,"bproof_1":-1},"label":"Sepehr"}]}'),
	(104807, 'user_bag', 'steam:110000144942744', '{}'),
	(104808, 'user_ears', 'steam:110000144942744', '{}'),
	(104809, 'user_glasses', 'steam:110000144942744', '{}'),
	(104810, 'user_helmet', 'steam:110000144942744', '{}'),
	(104811, 'user_mask', 'steam:110000144942744', '{}'),
	(104812, 'property', 'steam:11000014c1b3e07', '{}'),
	(104813, 'user_bag', 'steam:11000014c1b3e07', '{}'),
	(104814, 'user_ears', 'steam:11000014c1b3e07', '{}'),
	(104815, 'user_glasses', 'steam:11000014c1b3e07', '{}'),
	(104816, 'user_helmet', 'steam:11000014c1b3e07', '{}'),
	(104817, 'user_mask', 'steam:11000014c1b3e07', '{}'),
	(104818, 'property', 'steam:110000146da759a', '{}'),
	(104819, 'user_glasses', 'steam:110000146da759a', '{}'),
	(104820, 'user_ears', 'steam:110000146da759a', '{}'),
	(104821, 'user_bag', 'steam:110000146da759a', '{}'),
	(104822, 'user_mask', 'steam:110000146da759a', '{}'),
	(104823, 'user_helmet', 'steam:110000146da759a', '{}'),
	(104824, 'property', 'steam:1100001549580b4', '{}'),
	(104825, 'user_bag', 'steam:1100001549580b4', '{}'),
	(104826, 'user_ears', 'steam:1100001549580b4', '{}'),
	(104827, 'user_glasses', 'steam:1100001549580b4', '{}'),
	(104828, 'user_helmet', 'steam:1100001549580b4', '{}'),
	(104829, 'user_mask', 'steam:1100001549580b4', '{}'),
	(104830, 'property', 'steam:110000158694e50', '{}'),
	(104831, 'user_bag', 'steam:110000158694e50', '{}'),
	(104832, 'user_ears', 'steam:110000158694e50', '{}'),
	(104833, 'user_glasses', 'steam:110000158694e50', '{}'),
	(104834, 'user_helmet', 'steam:110000158694e50', '{}'),
	(104835, 'user_mask', 'steam:110000158694e50', '{}'),
	(104836, 'property', 'steam:11000013c08fe4f', '{}'),
	(104837, 'user_bag', 'steam:11000013c08fe4f', '{}'),
	(104838, 'user_ears', 'steam:11000013c08fe4f', '{}'),
	(104839, 'user_glasses', 'steam:11000013c08fe4f', '{}'),
	(104840, 'user_mask', 'steam:11000013c08fe4f', '{}'),
	(104841, 'user_helmet', 'steam:11000013c08fe4f', '{}'),
	(104843, 'gang_vikings', NULL, '[]'),
	(104844, 'property', 'steam:11000014771fef7', '{"dressing":[{"skin":{"beard_1":18,"beard_4":0,"hair_2":0,"bags_2":0,"sex":0,"lip_thickness":0.89999999999999,"eyebrows_5":3.0,"mask_2":0,"decals_1":0,"eyebrows_6":2.1,"nose_2":-2.1,"age_2":10,"blush_3":0,"moles_1":-1,"chest_1":0,"watches_1":-1,"hair_color_1":2,"makeup_2":10,"glasses_1":-1,"hair_1":10,"nose_4":1.7,"bodyb_3":-1,"chin_3":0.8,"chest_3":0,"eyebrows_2":10,"chin_2":6.5,"torso_2":2,"ears_2":0,"eye_squint":0,"blush_2":10,"torso_1":159,"complexion_1":-1,"mask_1":-1,"sun_2":10,"bodyb_4":0,"bproof_1":0,"lipstick_1":-1,"complexion_2":10,"makeup_1":-1,"lipstick_4":0,"lipstick_3":0,"pants_2":3,"arms":35,"watches_2":0,"arms_2":0,"nose_1":5.89999999999999,"chin_4":-10,"chin_1":3.4,"nose_3":3.7,"bags_1":0,"tshirt_1":11,"ears_1":-1,"beard_3":0,"eye_color":21,"jaw_1":9.9,"makeup_3":0,"chain_2":0,"bodyb_2":0,"tshirt_2":2,"sun_1":-1,"eyebrows_3":0,"lipstick_2":10,"age_1":5,"neck_thickness":9.9,"decals_2":0,"bodyb_1":-1,"shoes_2":0,"bproof_2":0,"face_md_weight":50.0,"chest_2":10,"shoes_1":36,"helmet_1":-1,"eyebrows_1":31,"nose_6":0,"jaw_2":0,"dad":19,"eyebrows_4":0,"blemishes_1":-1,"mom":21,"pants_1":10,"nose_5":-1.5,"moles_2":10,"cheeks_1":-10,"skin_md_weight":10,"cheeks_2":9.9,"blemishes_2":10,"blush_1":-1,"helmet_2":0,"makeup_4":0,"bracelets_1":-1,"beard_2":10,"bracelets_2":0,"glasses_2":0,"chain_1":0,"hair_color_2":1,"cheeks_3":5.4},"label":"fbi"},{"skin":{"chest_2":10,"nose_6":0,"dad":19,"bags_2":0,"sex":0,"lip_thickness":0.89999999999999,"eyebrows_5":3.0,"mask_2":0,"decals_1":0,"eyebrows_6":2.1,"nose_2":-2.1,"age_2":10,"blush_3":0,"moles_1":-1,"chest_1":0,"watches_1":-1,"hair_color_1":2,"makeup_2":10,"glasses_1":-1,"hair_1":10,"nose_4":1.7,"bodyb_3":-1,"chin_3":0.8,"beard_3":0,"eyebrows_2":10,"chin_2":6.5,"torso_2":6,"ears_2":0,"eye_squint":0,"blush_2":10,"torso_1":379,"complexion_1":-1,"mask_1":-1,"sun_2":10,"bodyb_4":0,"bproof_1":63,"lipstick_1":-1,"complexion_2":10,"makeup_1":-1,"lipstick_4":0,"lipstick_3":0,"pants_2":15,"arms":35,"watches_2":0,"arms_2":0,"nose_1":5.89999999999999,"chin_4":-10,"chin_1":3.4,"nose_3":3.7,"bags_1":0,"tshirt_1":2,"ears_1":-1,"eye_color":21,"jaw_1":9.9,"cheeks_2":9.9,"makeup_3":0,"chain_2":0,"bodyb_2":0,"bodyb_1":-1,"mom":21,"eyebrows_3":0,"lipstick_2":10,"tshirt_2":7,"neck_thickness":9.9,"chest_3":0,"skin_md_weight":10,"shoes_2":1,"bproof_2":2,"moles_2":10,"face_md_weight":50.0,"shoes_1":71,"helmet_1":-1,"eyebrows_1":31,"blush_1":-1,"hair_2":0,"sun_1":-1,"beard_1":18,"blemishes_1":-1,"jaw_2":0,"eyebrows_4":0,"nose_5":-1.5,"beard_4":0,"age_1":5,"pants_1":62,"decals_2":0,"blemishes_2":10,"cheeks_1":-10,"helmet_2":0,"makeup_4":0,"bracelets_1":-1,"beard_2":10,"bracelets_2":0,"glasses_2":0,"chain_1":0,"hair_color_2":1,"cheeks_3":5.4},"label":"fbi2"},{"skin":{"beard_1":18,"beard_4":0,"dad":19,"bags_2":0,"sex":0,"lip_thickness":0.89999999999999,"eyebrows_5":3.0,"age_1":5,"sun_1":-1,"eyebrows_6":2.1,"nose_2":-2.1,"age_2":10,"blush_3":0,"moles_1":-1,"chest_1":0,"watches_1":-1,"hair_color_1":2,"makeup_2":10,"glasses_1":-1,"hair_1":10,"nose_4":1.7,"bodyb_3":-1,"chin_3":0.8,"chest_3":0,"eyebrows_2":10,"chin_2":6.5,"torso_2":6,"ears_2":0,"eye_squint":0,"blush_2":10,"torso_1":379,"complexion_1":-1,"mask_1":-1,"sun_2":10,"bodyb_4":0,"bproof_1":63,"lipstick_1":-1,"complexion_2":10,"makeup_1":-1,"lipstick_4":0,"lipstick_3":0,"pants_2":0,"arms":35,"watches_2":0,"arms_2":0,"nose_1":5.89999999999999,"chin_4":-10,"chin_1":3.4,"nose_3":3.7,"bags_1":0,"tshirt_1":11,"ears_1":-1,"face_md_weight":50.0,"cheeks_2":9.9,"mom":21,"eye_color":21,"chain_2":0,"bodyb_2":0,"tshirt_2":0,"jaw_1":9.9,"eyebrows_3":0,"lipstick_2":10,"skin_md_weight":10,"neck_thickness":9.9,"makeup_3":0,"blush_1":-1,"shoes_2":0,"bproof_2":2,"moles_2":10,"glasses_2":0,"shoes_1":10,"helmet_1":-1,"eyebrows_1":31,"hair_2":0,"chest_2":10,"beard_3":0,"bodyb_1":-1,"blemishes_1":-1,"nose_6":0,"decals_2":0,"nose_5":-1.5,"jaw_2":0,"cheeks_1":-10,"eyebrows_4":0,"mask_2":0,"blemishes_2":10,"decals_1":0,"pants_1":62,"makeup_4":0,"bracelets_1":-1,"beard_2":10,"bracelets_2":0,"helmet_2":0,"chain_1":0,"hair_color_2":1,"cheeks_3":5.4},"label":"fbi2 sahih"}]}'),
	(104845, 'user_mask', 'steam:11000014771fef7', '{"hasMask":true,"skin":{"mask_1":9,"mask_2":5}}'),
	(104846, 'user_ears', 'steam:11000014771fef7', '{"hasEars":true,"skin":{"ears_1":2,"ears_2":0}}'),
	(104847, 'user_bag', 'steam:11000014771fef7', '{}'),
	(104848, 'user_helmet', 'steam:11000014771fef7', '{}'),
	(104849, 'user_glasses', 'steam:11000014771fef7', '{"hasGlasses":true,"skin":{"glasses_2":6,"glasses_1":5}}'),
	(104850, 'user_bag', 'steam:11000014907b78d', '{}'),
	(104851, 'property', 'steam:11000014907b78d', '{"dressing":[{"skin":{"beard_2":10,"cheeks_2":0.4,"mom":21,"chain_1":13,"ears_2":0,"hair_2":0,"decals_1":0,"chest_2":10,"torso_1":50,"cheeks_1":2.7,"beard_3":29,"eye_squint":0,"age_1":-1,"lipstick_2":10,"age_2":10,"sun_2":10,"eyebrows_5":0,"hair_1":66,"pants_1":46,"bracelets_1":-1,"skin_md_weight":6,"watches_1":-1,"makeup_4":0,"decals_2":0,"blemishes_2":10,"helmet_1":2,"nose_5":0,"chain_2":0,"bracelets_2":0,"jaw_2":0,"blemishes_1":-1,"lipstick_3":0,"bproof_2":0,"nose_6":0,"moles_2":10,"eyebrows_2":10,"shoes_1":7,"blush_3":0,"blush_2":10,"complexion_2":10,"nose_2":0,"makeup_3":0,"tshirt_2":0,"shoes_2":0,"lipstick_4":0,"moles_1":-1,"torso_2":1,"lipstick_1":-1,"ears_1":2,"eyebrows_3":29,"chest_3":0,"chin_2":0,"eyebrows_4":0,"makeup_2":10,"watches_2":0,"eyebrows_1":21,"pants_2":1,"chin_4":0,"glasses_2":3,"eye_color":0,"lip_thickness":0,"bags_1":-1,"sun_1":-1,"beard_1":27,"bodyb_3":-1,"nose_4":0,"mask_2":9,"chest_1":2,"glasses_1":5,"dad":0,"blush_1":-1,"nose_1":0,"eyebrows_6":0,"jaw_1":0,"cheeks_3":0,"neck_thickness":0,"hair_color_1":29,"sex":0,"bodyb_1":-1,"helmet_2":0,"beard_4":29,"complexion_1":-1,"hair_color_2":0,"bags_2":0,"makeup_1":-1,"chin_3":0,"tshirt_1":15,"bodyb_2":0,"chin_1":0,"mask_1":13,"nose_3":0,"arms":6,"bodyb_4":0,"arms_2":0,"face_md_weight":50.0,"bproof_1":-1},"label":"PIREMARD"}]}'),
	(104852, 'user_glasses', 'steam:11000014907b78d', '{}'),
	(104853, 'user_helmet', 'steam:11000014907b78d', '{}'),
	(104854, 'user_ears', 'steam:11000014907b78d', '{}'),
	(104855, 'user_mask', 'steam:11000014907b78d', '{"skin":{"mask_1":13,"mask_2":9},"hasMask":true}'),
	(104856, 'property', 'steam:11000014e7a769f', '{}'),
	(104857, 'user_bag', 'steam:11000014e7a769f', '{}'),
	(104858, 'user_ears', 'steam:11000014e7a769f', '{}'),
	(104859, 'user_helmet', 'steam:11000014e7a769f', '{}'),
	(104860, 'user_glasses', 'steam:11000014e7a769f', '{}'),
	(104861, 'user_mask', 'steam:11000014e7a769f', '{}'),
	(104862, 'property', 'steam:1100001557dcb69', '{}'),
	(104863, 'user_bag', 'steam:1100001557dcb69', '{}'),
	(104864, 'user_ears', 'steam:1100001557dcb69', '{}'),
	(104865, 'user_glasses', 'steam:1100001557dcb69', '{}'),
	(104866, 'user_helmet', 'steam:1100001557dcb69', '{}'),
	(104867, 'user_mask', 'steam:1100001557dcb69', '{}');

-- Dumping structure for table greencity.denied
CREATE TABLE IF NOT EXISTS `denied` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(20) DEFAULT NULL,
  `hardwareid` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `icname` varchar(30) DEFAULT NULL,
  `timestamp` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.denied: 0 rows
/*!40000 ALTER TABLE `denied` DISABLE KEYS */;
/*!40000 ALTER TABLE `denied` ENABLE KEYS */;

-- Dumping structure for table greencity.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table greencity.dpkeybinds: ~32 rows (approximately)
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144eefef0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147e44dc2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147922f75', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144792e0f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000158df5507', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000011844f231', 'num4', 'tablet', 'num5', '', 'num6', 'sit8', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149f1696f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014ba5153b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001448e7465', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000151c26a29', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001456c71d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000133a52955', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144580ce0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001459c8079', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013dc12c8c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141b38366', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014acc3380', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014d8c2f56', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014707d7a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014caaec6c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000155f2b86e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001440d17a7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144942744', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014c1b3e07', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146da759a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001549580b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000158694e50', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013c08fe4f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014771fef7', 'num4', 'notepad2', 'num5', 'salute', 'num6', 'reaching', 'num7', 'clipboard2', 'num8', 'cop2', 'num9', 'prosthigh'),
	('steam:11000014907b78d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014e7a769f', 'num4', '', 'num5', 'pickup', 'num6', '', 'num7', '', 'num8', 'hammer', 'num9', ''),
	('steam:1100001557dcb69', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- Dumping structure for table greencity.duckcad_data
CREATE TABLE IF NOT EXISTS `duckcad_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secondryid` int(11) NOT NULL,
  `steam` text NOT NULL,
  `reason` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.duckcad_data: ~0 rows (approximately)

-- Dumping structure for table greencity.fines
CREATE TABLE IF NOT EXISTS `fines` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fineamount` int(100) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `punisher` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.fines: ~0 rows (approximately)

-- Dumping structure for table greencity.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.fine_types: ~53 rows (approximately)
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Aloodegi soti', 15000, 0),
	(2, 'Oboor az cheraghe ghermez', 25500, 0),
	(3, 'Vorood mamnoo', 40500, 0),
	(4, 'Dor zadan gheyr e mojaz', 22000, 0),
	(5, 'Ranandegi dar line mokhalef', 50000, 0),
	(6, 'Ranandegi khatarnak', 70000, 0),
	(7, 'Tavaghof mamnoo', 2000, 0),
	(8, 'Park e bad', 3000, 0),
	(9, 'Adam tavajoh be hagh e taghadom', 2000, 0),
	(10, 'Adam tavajo be fasele tooli', 1000, 0),
	(11, 'Adam tavajoh be tavaghof', 50000, 0),
	(12, 'Adam e tavajoh be alayeme ranandegi', 40000, 0),
	(13, 'Harakat e khatarnak', 70000, 0),
	(14, 'tajavoz be harime khososi', 60000, 0),
	(15, 'Ranandegi bedoone govahinam', 200000, 0),
	(16, 'Zadan o dar raftan', 7000, 0),
	(17, 'Sorat e kamtar az 60Km/h', 2000, 0),
	(18, 'Soraat mojaz 60Km/h', 2000, 0),
	(19, 'Soraat mojaz 80Km/h', 4000, 0),
	(20, 'Soraat mojaz 120Km/h', 6000, 0),
	(21, 'Ijad e traffic', 25000, 1),
	(22, 'Bastan e khiyaboon', 7000, 1),
	(23, 'Beham rikhtan e nazm ', 45000, 1),
	(24, 'Bi tavajohi be ekhtar e police', 80000, 1),
	(25, 'Bi ehterami', 3000, 1),
	(26, 'Tohin be mamoor e police', 50000, 1),
	(27, 'Tahdid shahrvandan', 95000, 1),
	(28, 'Tahdid Police', 120000, 1),
	(29, 'Eteraz be ghanoon', 3000, 1),
	(30, 'Ijad e fesad', 150000, 1),
	(31, 'Estefade az selahe sard dar shahr', 1000000, 2),
	(32, 'Estefade az selahe garm dar shahr', 2000000, 2),
	(33, 'Hamle aslahe bedoon e mojavez', 150000, 2),
	(34, 'Dashtan e aslahe gheyre mojaz', 550000, 2),
	(35, 'hamkari nakardan ba mamore ghanon', 25000, 2),
	(36, 'Dozdi khodro', 50000, 2),
	(37, 'Foroosh e mavad e mokhader', 200000, 2),
	(38, 'Tolid e mavad e mokhader', 350000, 2),
	(39, 'Dashtan e mavad e mokhader', 25000, 2),
	(40, 'Majrooh kardan shahrvand', 35000, 2),
	(41, 'Majrooh kardan e mamoor e ghanoon', 50000, 2),
	(42, 'Dozdi', 150000, 2),
	(43, 'Dozdi az maghaze', 5000, 2),
	(44, 'Dozdi az bank', 10000, 2),
	(45, 'Shelik be shahrvandan', 40000, 3),
	(46, 'Shelik be samte mamoor e ghanoon', 70000, 3),
	(47, 'Eghdam be ghatle shahrvand', 50000, 3),
	(48, 'Eghdam be ghatle mamoor e ghanoon', 100000, 3),
	(49, 'Koshtan e shahrvand', 75000, 3),
	(50, 'Koshtan e mamoor e ghanoon', 125000, 3),
	(51, 'Ghatl e gheyre amd', 50000, 3),
	(52, 'Kolah bardari kari', 2500, 2),
	(53, 'Mojavez Aslahe', 15000, 1);

-- Dumping structure for table greencity.gangs
CREATE TABLE IF NOT EXISTS `gangs` (
  `name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `label` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.gangs: ~2 rows (approximately)
INSERT INTO `gangs` (`name`, `label`) VALUES
	('nogang', 'nogang'),
	('vikings', 'gang');

-- Dumping structure for table greencity.gangs_data
CREATE TABLE IF NOT EXISTS `gangs_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) DEFAULT 0,
  `XP` int(11) DEFAULT 0,
  `gang_name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `bulletproof` int(100) DEFAULT 0,
  `slot` int(100) DEFAULT 5,
  `gps` int(1) DEFAULT 0,
  `heli` int(1) DEFAULT 0,
  `gps_color` int(2) DEFAULT 4,
  `invite_access` int(1) DEFAULT 6,
  `heli_access` int(1) DEFAULT 6,
  `buy_access` int(1) DEFAULT 1,
  `garage_access` int(1) DEFAULT 1,
  `garage_limit` int(2) DEFAULT 10,
  `blip_sprite` int(3) DEFAULT 378,
  `blip_color` int(2) DEFAULT 1,
  `armory_access` int(1) DEFAULT 2,
  `vest_access` int(1) DEFAULT 1,
  `logpower` int(1) DEFAULT 1,
  `webhook` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `search` varchar(254) COLLATE utf8_persian_ci DEFAULT '1',
  `logo` varchar(254) COLLATE utf8_persian_ci DEFAULT 'https://uupload.ir/files/3zmq_default.png',
  `expire_time` date DEFAULT NULL,
  `blip` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `armory` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `locker` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `boss` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `vehicles` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `veh` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `vehprop` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `vehdel` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `vehspawn` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `register_time` date DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.gangs_data: ~1 rows (approximately)
INSERT INTO `gangs_data` (`ID`, `Level`, `XP`, `gang_name`, `bulletproof`, `slot`, `gps`, `heli`, `gps_color`, `invite_access`, `heli_access`, `buy_access`, `garage_access`, `garage_limit`, `blip_sprite`, `blip_color`, `armory_access`, `vest_access`, `logpower`, `webhook`, `search`, `logo`, `expire_time`, `blip`, `armory`, `locker`, `boss`, `vehicles`, `veh`, `vehprop`, `vehdel`, `vehspawn`, `register_time`) VALUES
	(129, 0, 250, 'vikings', 100, 20, 1, 0, 4, 6, 6, 1, 1, 10, 378, 1, 2, 1, 1, NULL, '1', 'https://uupload.ir/files/3zmq_default.png', '2023-03-15', '{"z":56.14446640014648,"y":118.3443603515625,"x":-1525.024169921875}', '{"z":55.75093460083008,"y":95.7307357788086,"x":-1541.692626953125}', '{"z":59.84640884399414,"y":106.2741928100586,"x":-1497.0604248046876}', '{"z":59.79018783569336,"y":148.73638916015626,"x":-1525.71240234375}', '[]', '{"z":55.70953750610351,"y":80.87120056152344,"x":-1520.6083984375}', '[]', '{"z":55.51630020141601,"y":91.09259796142578,"x":-1524.5811767578126}', '{"z":56.68294525146484,"a":315.8079833984375,"x":-1530.1456298828126,"y":85.09366607666016}', NULL);

-- Dumping structure for table greencity.gang_account
CREATE TABLE IF NOT EXISTS `gang_account` (
  `name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `label` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `shared` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.gang_account: ~1 rows (approximately)
INSERT INTO `gang_account` (`name`, `label`, `shared`) VALUES
	('gang_vikings', 'gang', 1);

-- Dumping structure for table greencity.gang_account_data
CREATE TABLE IF NOT EXISTS `gang_account_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gang_name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `money` double DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `owner` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `dirty_money` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.gang_account_data: ~1 rows (approximately)
INSERT INTO `gang_account_data` (`ID`, `gang_name`, `money`, `pay`, `owner`, `dirty_money`) VALUES
	(265, 'gang_vikings', 0, NULL, NULL, 0);

-- Dumping structure for table greencity.gang_grades
CREATE TABLE IF NOT EXISTS `gang_grades` (
  `ID` int(11) NOT NULL,
  `gang_name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `name` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `label` varchar(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `skin_male` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `skin_female` longtext COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.gang_grades: ~13 rows (approximately)
INSERT INTO `gang_grades` (`ID`, `gang_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(0, 'nogang', 0, 'nogang', 'nogang', 0, '[]', '[]'),
	(0, 'vikings', 1, 'Rank 1', 'one', 100, '[]', '[]'),
	(0, 'vikings', 2, 'Rank 2', 'two', 200, '[]', '[]'),
	(0, 'vikings', 3, 'Rank 3', 'three', 300, '[]', '[]'),
	(0, 'vikings', 4, 'Rank 4', 'four', 400, '[]', '[]'),
	(0, 'vikings', 9, 'Rank 9', 'nine', 900, '[]', '[]'),
	(0, 'vikings', 8, 'Rank 8', 'eight', 800, '[]', '[]'),
	(0, 'vikings', 7, 'Rank 7', 'seven', 700, '[]', '[]'),
	(0, 'vikings', 6, 'Rank 6', 'six', 600, '[]', '[]'),
	(0, 'vikings', 5, 'Rank 5', 'five', 500, '[]', '[]'),
	(0, 'vikings', 11, 'Rank 11', 'eleven', 1100, '[]', '[]'),
	(0, 'vikings', 10, 'Rank 10', 'ten', 1000, '[]', '[]'),
	(0, 'vikings', 12, 'Rank 12', 'twelve', 1200, '[]', '[]');

-- Dumping structure for table greencity.gc_bansystem
CREATE TABLE IF NOT EXISTS `gc_bansystem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `License` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Discord` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Xbox` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Live` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Tokens` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `Reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `isBanned` int(11) NOT NULL DEFAULT 0,
  `Expire` int(11) NOT NULL DEFAULT 0,
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gc_bansystem: ~24 rows (approximately)
INSERT INTO `gc_bansystem` (`ID`, `Steam`, `License`, `IP`, `Discord`, `Xbox`, `Live`, `Tokens`, `Reason`, `isBanned`, `Expire`) VALUES
	(158, 'steam:11000014b6334bc', 'license:908eb575b10044b45f43f155979834526e18c069', 'ip:78.174.127.119', 'discord:740830145367113778', 'None', 'None', '["2:fe28f5e66d145a7388247d19232635894d0ccd1e569d7909c4a75f3a7ca9e71a","3:801af6e70edcef486f9c05d7548130f088e7683aae1a1875c83a7e3d06898b16","5:519eff19a04d5f04967773c85eb297976d6f25fe293182cae40f9b13161618aa","4:391fcf2125f443d66f6fa9de72d4dbde9875171606a6d83a3f0aff91a0b9a19e","4:28647a6710beec312684f950b79c34e80f86073c69ab23130e16a976eebd1c17","4:8f9631ae295653aeffe36395c758279f8e6566c1bb666e0799c7fc51d73b34ac"]', '', 0, 0),
	(159, 'steam:110000144eefef0', 'license:908eb575b10044b45f43f155979834526e18c069', 'ip:78.174.127.119', 'discord:740830145367113778', 'None', 'None', '["2:fe28f5e66d145a7388247d19232635894d0ccd1e569d7909c4a75f3a7ca9e71a","3:801af6e70edcef486f9c05d7548130f088e7683aae1a1875c83a7e3d06898b16","5:519eff19a04d5f04967773c85eb297976d6f25fe293182cae40f9b13161618aa","4:391fcf2125f443d66f6fa9de72d4dbde9875171606a6d83a3f0aff91a0b9a19e","4:28647a6710beec312684f950b79c34e80f86073c69ab23130e16a976eebd1c17","4:8f9631ae295653aeffe36395c758279f8e6566c1bb666e0799c7fc51d73b34ac"]', '', 0, 0),
	(160, 'steam:11000014771fef7', 'license:d043053149a60e154c028e46e11dc799211433b7', 'ip:37.98.61.12', 'None', 'None', 'live:844425908209867', '["3:25867b5f7a6dadb414cf6041670d9ad7dd155ab2044190b4a8d311eeea6d8bea","2:7e8fed8f961084cd82c0778c5a921c14f6c18048e381d9deabea0c2c9f46bcd8","5:6380bad4f38118a7214a26736999161df8f78b89ea4baa085166300a72d227d4","4:35efea9f324307e22e70a10f0ea1773726f6c090a437216c2a1ec1ed2d332c46","4:941d58c6aaa21a05d2d0fa2f57b2881664d2c4e879c3ce7755782eb4b118b074","4:31150fb4dc35eea2dc5e647fff93d180fbf08b56b1bd7c122d55e48350163a1f"]', '', 0, 0),
	(161, 'steam:110000147922f75', 'license:89a377a1797163b276c02f84d9b6849360836f11', 'ip:91.133.200.167', 'discord:766238296539922443', 'None', 'None', '["3:567560d5811ee451837393b240679ab32f802d152b811ee251c27673b6258290","5:f79aebc864087c8156150f4bb5a27c36cb327e69ba58bc1334e3acf948cda673","2:2dcf06cf4b854784a4c6e6e746b3a3df2637bf5ea365e22c7ec05c8c4d350b63","4:d54e62e0b50c0e53a9a1e0bdc42c7aa1bc94464619425f70bf061d73378f467a","4:2428dfad043ec588fd231cb52fac2f56b37e5fa0c8c2e67d5d96e1d63135cec1","4:70af05f56e02b1fdbd545c904a871be2e02d5607a4049d1b0840951f18612f60"]', '', 0, 0),
	(162, 'steam:11000011844f231', 'license:18ab6a04386d986d7a2f957d8362de4244d7e7b5', 'ip:5.200.124.139', 'discord:682647477933047858', 'None', 'live:985154700451757', '["2:065697c70e219e5af4e25f4ddbad761d358da2ed84a82d9bef9339c62d9c1961","5:086d8c4f16e13ef2f910817a5bd6bccc7a4e02ea51c3693a9c24bc0acd77d700","3:802661a22b1f66b6aec16ba34b9b7797a4aa9f3ad7e796df3b5951c1e6d9e21f","4:83e2e4166d607799564ff6db12674f6097ed01f8881d169c7280f73f0c5a7eb5","4:60a89610485dee85e21c1b53f7d6e2f8029a188f917fc1e1b2596625be7ba8aa","4:228b8f56bdac8b8687f16fabbd85e425181a48ee802a05ed4f8491e21b958cf1"]', '', 0, 0),
	(163, 'steam:110000144792e0f', 'license:4eaec2f9c6032050a2c0e4b497d2811f935e8ab6', 'ip:2.191.40.146', 'discord:842710680880807958', 'None', 'live:1055519311325802', '["3:3c6d9522d909d0396730e4733fb36472dd0ccfd5ae34cc52bd7d9d9eb87f17c0","2:1019cfc9266c8610d0c099008e02245fed406fce6d5a7fa385ebeef5f2a472e0","2:1e4bf25169aab3df02b4e585c060f9056f02494006e9ff8abde45b9b4eae5af5","3:fa6a37ee6ed577533570f548da8fdc655cca5097b42b1b116bdc60b8203d3c84","4:7602a0e8ec8e798fa63caaaef22c034a269e9562964c5fdfc655916d508a94fc","4:6d1c79c77e249431140b6e6d3667708f90234cd4c14d5ede76d1f71126bb8745","4:5d825ad9f1fbddc275624a758427183f3ed4d135514603e546a04b83cdac97f2"]', '', 0, 0),
	(164, 'steam:11000013dc12c8c', 'license:e497c26c9e5f4a9f6529bd272e60935be68cc52b', 'ip:195.181.107.15', 'None', 'None', 'None', '["3:097bda752f139fddb098c86f950ec47b7efe6744f59be66a810b023fb7d5dd13","5:98f2b176a28be4181aaac68b12abd5650cc3590513005a28763eefac135ce7c0","2:331a5e82ae04ff52c5e4d8d6f98ebb6881cc14c0035f89f613942ca30b77d4ce","4:f0fa8cf0d58eeb1c5c5c78015c8a733b4956c495fa665815917ec3e3150e139a","4:3e76999f2b9dd5a2807b296952b908771b3dd96d4e69b1841efdfb675249c530","4:1789427ad34fb7ad4046bee3b83ecd6aec2afb813d3312bb7b22ea18585830b9"]', '', 0, 0),
	(165, 'steam:110000141b38366', 'license:0c9b063193c6aec75364675476f5e1c530daac76', 'ip:204.18.184.166', 'discord:852841334305325097', 'None', 'None', '["3:5d2861b379bce64a339805152d689aa7a95264bc7bdfde826bcf07f836d32814","5:b1b84523cd4a1de4e23775ff87710bbb177f62786fed491212c362137323e80e","4:068a788299081eac36609b16b823930d1aff6689e0aea900eed3eda3160f12de","4:3563b742205c898d68a2af146e9ce774238cf46e393b5794c7edc4f5eba38e51","4:fc3bebec41d4e9c2188748aac64fbcd8406aa8031e5859f9fbf4e76d6bb58686"]', '', 0, 0),
	(166, 'steam:11000014907b78d', 'license:ddebde7f667f7ec32485f2f3080d4932c0e06da0', 'ip:151.247.119.108', 'discord:844885082615185428', 'None', 'live:844426079060169', '["3:a95d59dd314be4284786558c4c058acdbbb7b1e229a4a5f81b2252da725dd01f","4:30da9026147fe3e2b5b127c7cda5a9b2938d59572a988f5e5f04bab9f7e01f41","4:56233ba993dfe508eaa24349bfdae6bb59aec9ea569d2ee5494595af811ccb4e","4:d80a81c1017345b5b24654120e2df1b671f7ebf851e20d4476fadf1c4b4f4c25"]', '', 0, 0),
	(167, 'steam:1100001448e7465', 'license:661f44ae69003bc35f88cd97c04e634390acde54', 'ip:2.183.35.242', 'discord:861099331415441448', 'None', 'None', '["3:e4f34e3c8ee99da509165f8d1520f0877320e729f13736955169ecc374c1ce60","2:0af67aa7febcfa86e42f3419eefcaccbfd4643a9856a30bf70bb664b314f05b8","4:2d778b73cca9213090e891a205ff4c014b6fc12fb57615ceb71d2904c559293a","4:a3135686dc55dfdecd30c4be46d6fe17e9c6fd786c02fec37bd73ff85c897f7f","4:8c910fc69bce7ec9029445901f196d8f0bf4c85d82ebd980bdff8bfdcfeaf24f"]', '', 0, 0),
	(168, 'steam:11000014ca7eb37', 'license:dea0232f0c323b9ce20f1aa3938f79afd7d615a9', 'ip:2.147.234.68', 'None', 'None', 'live:914799135314032', '["3:05ef858a304fd6e6dc080a52c795d2e1180de98a27eae6607e6e43dda029aa95","5:245e012f25f2fb70122f6bab193767091fd2299cc7bcbeb9b2547c6a495e0cb0","4:c2fc5156f100ab3062fd9c68823a124b9ed4a744eb3fb2436dbfb0001bd66baa","4:217fb5de249b5061d9217e917e93368485910e5b6b4f9b086233472234a6c83a","4:c18f7f0efcb7d02d1cea5947aff460c4aff2721e8b7f07cd9b519b93f0ab583d"]', '', 0, 0),
	(169, 'steam:11000015493f8bd', 'license:c09cac89ee606e367682e56249754b7f0854c1ea', 'ip:5.160.144.178', 'None', 'None', 'None', '["5:694e5eed8b9944f86ce67aaaa77cea4eab3d4ff785c46f313eb6f44b69367be0","2:c1ad558b0923286b4c891b0b9bd003d5c096493ea3e3afe65a63aeab06b526c0","3:d6f3f2f00b140965686a046075ceb538ce1dfd7d25b5881def888acd921a44a2","4:e2c9feb7985391fd7fbf849b9b0100d9eda2bfcd299d8e480ef26c649c2ceac9","4:d5338b3431694483b564aeac17c882137d41e770c938778b6ef99de703c73466","4:a8ccd4222bea9fd4f0ffbc697efcc52222c1d236a7a7590311de065a5840e350"]', '', 0, 0),
	(170, 'steam:11000014e7a769f', 'license:ff63ee887e39a510c033fa2eef96ee4d7de3bcaf', 'ip:83.122.254.34', 'discord:740125951496552459', 'None', 'live:1759222479488110', '["2:a03c8f0473810ea1ed4f00342ebf44bc157bc5b8a84bba2473e01326cc1cc418","5:6a4d9613d3fd3745e967b27a9e0eea74ade043ff74d323154e00caa72fefa089","3:3c2c0e266786e43b24448e218b9f510a454578df03decb97394109f8293cc825","4:b22cee62f9c0fbb5fcf98f6f6ecaafff31d8e6357f4feacc9ddbb4c496e72a9e","4:0dd01a120b61cb259e9d9d8e79663fba750a13124e77db65bf14d666b3105029","4:6216dcf25e914965e6cc847d3cee0d6a1d2f64fb34848924cacd6243a6cac99c"]', '', 0, 0),
	(171, 'steam:11000013c08fe4f', 'license:4624be518cc8d92c747a06a7cb40da184a961ec4', 'ip:93.117.176.212', 'discord:759777732573265940', 'None', 'None', '["3:dca4cd7cd7839fac0cd5cf0d60d4c72fcac95e9495f5985a6110d56a3519ab29","4:a1a91ed01cf2fa0c6a200fb8b3dfd5f2b0e1459d66d15e9ba82b36cca1fddd2c","4:3c26febebaecd81a422fb020b3aef84824ed36c9bfd213ff895f8bcba8ea964b","4:bd30cbbe53032a4c01149f8135f7d253e38b51f0fdfec3549b09927ca5f80261"]', '', 0, 0),
	(172, 'steam:1100001477c6c8f', 'license:6fd22337b22708e480d8bb80499b5e1caea01f4f', 'ip:37.129.0.26', 'discord:822171673024921630', 'None', 'live:985155000346654', '["5:8cb549e3eea4bb6cd1753746ae1ed5502b784cef9effde028ee99cddbed4184f","2:8e1bc0114073639c046de04a2a3aebba0af9ea86c98881a9419f0c3d98ee0cf4","3:cceb5d7861b0665e66b621dd4a86c55cbc4aba2dd90f0820d2d938e15ac78989","4:bc030b55796f5c2d081e7677b77a508b175761118eb31f4b214e7278dc682a75","4:05ff4d7f3373cbec133a765af2e10c69c8abbc60202c4df96bab1974fcf80de4","4:d6865a984174a14e6218db3ea81d811ffbfeeaa518a3fce02f68df47a82cb595"]', '', 0, 0),
	(173, 'steam:11000014b80fb7d', 'license:195ae8c8701ad32be6751ef3cd77f2486ec76ab4', 'ip:2.68.123.131', 'discord:920456780755132427', 'None', 'live:914798991687287', '["5:84afecd605fd8a8b332659f38c94e2d5d47b3cbbdefdf15b017a4d28defe3263","2:5d0be609555477d4e9d1cfd57f15d234b17c145a15ba8bafb7a6c1f40b00905e","3:bbcb4ebc3e0711a6ee7751f71a1f6cdc5979c260fbd3dad28fd72c3cf7ea4dbc","4:44da2d1cf1a0d426e633ab0ea7c10aa1708d760e3263bf39cc6090b61515e5ab","4:cd93c90459c0afbcbb78da8ecf189da1daf72095fa5d50004c6d0486303b5a5e","4:718afa447c7e71503d11fec7d8999b688f7f4bcd59ce3f604986bc2a29e4f988"]', '', 0, 0),
	(174, 'steam:110000149f1696f', 'license:3e050efaa68d3722260b7f5750873fd9728e56fb', 'ip:2.181.82.153', 'None', 'None', 'live:914798104397016', '["3:b2edec55de85b87f221fbaa8bd6be2bdc3477f0d5afed29198a5ee66eeaecd60","2:ca793bf30814022826c38e48f4e4e38b53174cbb39a04d4ca5bd12cfd2180d74","5:319a415ba909587933ae4376e74e9810ae35055779363440f4580904943cd9bd","4:d0bde76b20d84f15c40ad1654de03c6f76c2c7d3ba138c4ea0f9d55442faefaa","4:e41d3b017c747e8af439c2c006e891639cab777a8b150c1ce3442ccb1e26f80a","4:218c49929ac0b27a04c77eeeb1809710a0937a4eae257c5177d3e845902c0ca4"]', '', 0, 0),
	(175, 'steam:110000152d114f9', 'license:ea1281a7a985d8f862971ee33a2302dfe4ad4efd', 'ip:2.178.23.170', 'discord:1015665977242955778', 'None', 'None', '["3:7f030647d50fe85ed53c4b431b5e1e1962d6f96d34abcfcd91670d8635df45fe","2:d0eaf0b4ba452b36e3b350f6e53550e0e7e1b3d4cd8164098c4abc26ca0edb25","4:100c5986173e8e39ed391589441dc37cd1e2cde75b7114be8ace8e85e0962492","4:3663d497f139a27abc306922243fb09a6a686a997b5ae86ff3091ff804ae4a11","4:2c9040eaa18681cdf1aa6e5c5d520a63c46a19ccb637cf4853467bb6e50728e4"]', '', 0, 0),
	(176, 'steam:1100001557dcb69', 'license:fb59e86710ee7c3fc338b27d5bb6d59b1ef100af', 'ip:37.129.53.229', 'discord:965304142493007882', 'None', 'None', '["5:fec33eeba1366157a9706df546f3f5b6c3308ccba7f6eeeaf3843d32341cd747","2:9f45f4804d0f70fff45e476d64a9fc5bfe66ec25baffa544497e83990b09a024","3:12ee99458e75029a61f7493004c939f5929471bfb5cdeb6e9966c0351f78d0f7","4:5d08d532a4846a2d230cce02e36d32fb2cadfc05bdb2dcf8915af9879a713dec","4:55fd98e9252bbda28ab068c1baf1ea3b5cfe5e51d1ffb37c152b02b92408e77f","4:179458c2d89cf5ce07e8f884efc0ca1a82142223ffe8d533264b4854c652989e"]', '', 0, 0),
	(177, 'steam:11000014b18bd2e', 'license:bae670f819a12a4eec1fa56d0ab8d0a299f9d4b7', 'ip:5.127.58.45', 'None', 'None', 'live:1055519157718024', '["3:a95691de995e9890fafaf47d50baf6ed6dc595689b9b714ecd70d77490a33f56","2:d91c9cb1263eef37f627fe276624f4f766416583acd7869df78ce0c4b23cd24d","5:692966d51c87b298b2fbe4f8573d252a1f39c0645c913b0662adc344f834ba18","4:966b74f0daa751a57fbf2b61b51057d2e3216e418a2639d5c00aadefa4bd6232","4:ae062bfd91725e42fcd4cb58cc098968666c8eedefdf40f0caabd9c31cfd5a5a","4:b086888c4ee705c3641924e68b5f53f786a08326171592adb8c70fed500f8332"]', '', 0, 0),
	(178, 'steam:11000013c81df6a', 'license:762d38fd4c4e52c04a36b8000060b9c914e8e57b', 'ip:151.240.227.228', 'None', 'None', 'live:985154651901413', '["3:186abc32eb838f5b18c8f5d00dfda4b27a520316b036cc11ceb848573051f28b","4:ff9f3bbb39e616778fe9f0218e556736e1d7f6e357521f4da3674cdde2062c61","4:c7bd09f426f2fd61e6e5752689721287d940229d3a7b2785f3400c235e71dff0","4:39898f5b6456d6e6a099cb78448d2a1c613bba1f21afa02dc26911eee51c0a3c"]', '', 0, 0),
	(179, 'steam:11000014e6e2363', 'license:a98120dc8d745c1ae12ca9dfeb858bfcf4a76c2a', 'ip:5.198.186.203', 'None', 'None', 'None', '["3:8d7e92be9a8044c4c04abb75bde03765025bbf38193712abbd2121a661aee3e6","5:ddf73fb75d87e49384a92c77c3bfce0e0b0ab107fc10ec52ca77917691561550","2:1f07dc0b34355327ec95e46312d65edab26be8bbb810d92425b80f42ea519c3f","4:b71c706329d72d86cdf966364e15cb23f2ff694124bb178ae85e8cdbf49fb139","4:69d50384e993d19f3d7019dc293842c880cfa845281f22f144c935c5ed46dbe0","4:038a20b53c33863c97b5cb885f4dd31a0d8229d8b7157253999a18b248761bbc"]', '', 0, 0),
	(180, 'steam:11000013ccd4e9b', 'license:4e6614478dddef0f43cc142bfeadbdb0e5d36061', 'ip:62.102.138.217', 'discord:616479991659495444', 'None', 'live:914798416410053', '["2:fbb3de9bedf0354f195abd2ddded20d0840d899e521f7796c7859060337df694","4:25eb3e799db29c5c1dddedeee94feff922b5470a792875a5ebe54fa834d0c2a7","4:8e8e3274b45033b2519b36e44c021af363442e244279b09b5b7efd7a5a8100b2","4:5039e0dd323b8725a47db7c4df09d3d30e7928fbf49f7fbe9861e875bee916b7"]', '', 0, 0),
	(181, 'steam:110000147e44dc2', 'license:b5d3c5a4158757faea5c4ed4dc232f2d8fc94948', 'ip:178.131.133.170', 'discord:828610213958385684', 'None', 'live:1055519542621089', '["5:7194b8f32801b3d6242b46792860086a8c0c87fb0471b9168ce44755bd21d739","2:31dc00a3448325acc9b0150327573efd1629cc72afc70f4a58c19841e42036d2","4:ca04459b41fc8f1343579fbac59a7fa5c953565179417c35fe6028a63c6b043b","4:49f6b889379b1251c15ec375db9c4c79c90e9c925f90a649e2793a9074e519bc","4:964706553aa3e7765fbb274f605937eb812fe79a0963d1156cbe1b4bb30ec5bc"]', '', 0, 0);

-- Dumping structure for table greencity.gksphone_app_chat
CREATE TABLE IF NOT EXISTS `gksphone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_app_chat: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_bank_transfer
CREATE TABLE IF NOT EXISTS `gksphone_bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_bank_transfer: ~11 rows (approximately)
INSERT INTO `gksphone_bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
	(1, 2, 'steam:11000014771fef7', '165', 'buy 1 monero', '2023-01-20 14:40:34'),
	(2, 2, 'steam:11000011844f231', '21151', 'buy 1 bitcoin', '2023-01-20 15:11:25'),
	(3, 2, 'steam:11000011844f231', '0', 'buy 10 ', '2023-01-20 15:11:38'),
	(4, 1, 'steam:11000014771fef7', '178', '1 monero sale', '2023-01-22 16:19:49'),
	(5, 2, 'steam:11000014771fef7', '17461', 'buy 100 monero', '2023-01-26 08:34:47'),
	(6, 2, 'steam:11000014771fef7', '87305', 'buy 500 monero', '2023-01-26 08:35:33'),
	(7, 2, 'steam:11000014771fef7', '104766', 'buy 600 monero', '2023-01-26 08:35:52'),
	(8, 2, 'steam:11000014771fef7', '104766', 'buy 600 monero', '2023-01-26 08:35:55'),
	(9, 2, 'steam:11000014771fef7', '104766', 'buy 600 monero', '2023-01-26 08:36:00'),
	(10, 2, 'steam:11000014771fef7', '34922', 'buy 200 monero', '2023-01-26 08:36:09'),
	(11, 1, 'steam:11000014771fef7', '456352', '2600 monero sale', '2023-01-26 10:03:39');

-- Dumping structure for table greencity.gksphone_blockednumber
CREATE TABLE IF NOT EXISTS `gksphone_blockednumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_blockednumber: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_calls
CREATE TABLE IF NOT EXISTS `gksphone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_calls: ~28 rows (approximately)
INSERT INTO `gksphone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(1, '1775360', '1775360', 1, '2023-01-06 17:21:02', 0),
	(2, '1775360', '1775360', 0, '2023-01-06 17:21:02', 0),
	(3, '7710723', '7710723', 1, '2023-01-08 13:57:55', 0),
	(4, '7710723', '7710723', 0, '2023-01-08 13:57:55', 0),
	(5, '7710723', '7710723', 0, '2023-01-08 13:59:08', 0),
	(6, '7710723', '7710723', 1, '2023-01-08 13:59:08', 0),
	(7, '7710723', '3897094', 1, '2023-01-09 13:39:15', 1),
	(8, '3897094', '7710723', 0, '2023-01-09 13:39:15', 1),
	(9, '3897094', '7710723', 1, '2023-01-09 13:39:29', 1),
	(10, '7710723', '3897094', 0, '2023-01-09 13:39:29', 1),
	(11, '6185272', '6185272', 1, '2023-01-20 16:43:09', 0),
	(12, '6185272', '6185272', 0, '2023-01-20 16:43:09', 0),
	(13, '1775360', '6390167', 1, '2023-01-21 11:13:18', 0),
	(14, '6390167', '1775360', 0, '2023-01-21 11:13:18', 0),
	(15, '6938934', '6185272', 1, '2023-01-25 17:18:54', 1),
	(16, '6185272', '6938934', 0, '2023-01-25 17:18:54', 1),
	(17, '6185272', '6938934', 1, '2023-01-25 17:19:10', 0),
	(18, '6938934', '6185272', 0, '2023-01-25 17:19:10', 0),
	(19, '6185272', '6938934', 1, '2023-01-25 17:19:17', 1),
	(20, '6938934', '6185272', 0, '2023-01-25 17:19:17', 1),
	(21, '6938934', '6185272', 1, '2023-01-25 17:19:33', 1),
	(22, '6185272', '6938934', 0, '2023-01-25 17:19:33', 1),
	(23, '6185272', '6938934', 1, '2023-01-25 17:27:51', 0),
	(24, '6938934', '6185272', 0, '2023-01-25 17:27:51', 0),
	(25, '6185272', '6938934', 1, '2023-01-25 17:28:09', 0),
	(26, '6938934', '6185272', 0, '2023-01-25 17:28:09', 0),
	(27, '6185272', '9807189', 1, '2023-01-25 18:31:14', 1),
	(28, '9807189', '6185272', 0, '2023-01-25 18:31:14', 1);

-- Dumping structure for table greencity.gksphone_gallery
CREATE TABLE IF NOT EXISTS `gksphone_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_gallery: ~5 rows (approximately)
INSERT INTO `gksphone_gallery` (`id`, `hex`, `image`, `time`) VALUES
	(2, 'steam:110000141b38366', '0', '2023-01-04 13:14:26'),
	(3, 'steam:110000147e44dc2', '0', '2023-01-09 13:36:57'),
	(4, 'steam:110000144eefef0', '0', '2023-01-09 13:37:34'),
	(5, 'steam:110000144eefef0', '0', '2023-01-09 17:34:42'),
	(6, 'steam:11000014771fef7', '0', '2023-01-22 18:06:25');

-- Dumping structure for table greencity.gksphone_gotur
CREATE TABLE IF NOT EXISTS `gksphone_gotur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext NOT NULL,
  `price` int(11) DEFAULT 0,
  `count` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `kapat` varchar(50) DEFAULT 'false',
  `adet` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_gotur: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_gps
CREATE TABLE IF NOT EXISTS `gksphone_gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `nott` longtext DEFAULT NULL,
  `gps` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_gps: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_group_message
CREATE TABLE IF NOT EXISTS `gksphone_group_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `owner` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `gksphone_messages_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table greencity.gksphone_group_message: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_insto_accounts
CREATE TABLE IF NOT EXISTS `gksphone_insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` longtext COLLATE utf8mb4_bin NOT NULL,
  `surname` longtext COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `takip` longtext COLLATE utf8mb4_bin DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.gksphone_insto_accounts: ~3 rows (approximately)
INSERT INTO `gksphone_insto_accounts` (`id`, `forename`, `surname`, `username`, `password`, `avatar_url`, `takip`) VALUES
	(2, 'ARIA', 'ARIAESL', 'ARIA', 'ARIA1386', 'https://cdn.discordapp.com/attachments/1020360990736527363/1061631888361529384/xantia.png', '[]'),
	(3, 'amir', 'k4', 'amirk4', '13731010', 'https://image.flaticon.com/icons/png/512/149/149071.png', '[]'),
	(4, 'bigmoti', 'moti', 'bigmoti_official', '0925809365', 'https://image.flaticon.com/icons/png/512/149/149071.png', '[]');

-- Dumping structure for table greencity.gksphone_insto_instas
CREATE TABLE IF NOT EXISTS `gksphone_insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_insto_instas_gksphone_insto_accounts` (`authorId`),
  CONSTRAINT `FK_gksphone_insto_instas_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table greencity.gksphone_insto_instas: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_insto_likes
CREATE TABLE IF NOT EXISTS `gksphone_insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_insto_likes_gksphone_insto_accounts` (`authorId`),
  KEY `FK_gksphone_insto_likes_gksphone_insto_instas` (`inapId`),
  CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`),
  CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `gksphone_insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.gksphone_insto_likes: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_insto_story
CREATE TABLE IF NOT EXISTS `gksphone_insto_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_gksphone_insto_story_gksphone_insto_accounts` (`authorId`) USING BTREE,
  CONSTRAINT `FK_gksphone_insto_story_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table greencity.gksphone_insto_story: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_job_message
CREATE TABLE IF NOT EXISTS `gksphone_job_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_job_message: ~7 rows (approximately)
INSERT INTO `gksphone_job_message` (`id`, `name`, `number`, `message`, `photo`, `gps`, `owner`, `jobm`, `time`) VALUES
	(21, 'amir_jackson user', '6185272', 'help', '', 'GPS: 1480.3208007813, 3315.541015625', 1, 'mechanic', '2023-01-27 10:31:20'),
	(22, 'amir_jackson user', '6185272', 'help', '', 'GPS: 1484.6348876953, 3303.1369628906', 1, 'mechanic', '2023-01-27 10:33:08'),
	(23, 'amir_jackson user', '6185272', 'nnnnnnnnnn', '', 'GPS: 1485.7237548828, 3303.4477539063', 1, 'mechanic', '2023-01-27 10:34:19'),
	(24, 'amir_jackson user', '6185272', 'help', '', 'GPS: 243.09527587891, -1440.6370849609', 0, 'mechanic', '2023-01-27 11:00:48'),
	(25, 'amir_jackson user', '6185272', 'help', '', 'GPS: 220.22703552246, -1464.3587646484', 0, 'mechanic', '2023-01-27 11:01:35'),
	(26, 'amir_jackson user', '6185272', 'hh', '', 'GPS: 105.19557189941, -1407.9986572266', 0, 'mechanic', '2023-01-27 11:02:33'),
	(27, 'amir_jackson user', '6185272', 'help', '', 'GPS: 1459.6110839844, 6624.259765625', 0, 'mechanic', '2023-01-27 13:57:51');

-- Dumping structure for table greencity.gksphone_mails
CREATE TABLE IF NOT EXISTS `gksphone_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_mails: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_messages
CREATE TABLE IF NOT EXISTS `gksphone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_messages: 21 rows
/*!40000 ALTER TABLE `gksphone_messages` DISABLE KEYS */;
INSERT INTO `gksphone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
	(1, '7710723', '7710723', 'fgf', '2022-12-29 13:33:33', 1, 0),
	(2, '7710723', '7710723', 'fgf', '2022-12-29 13:33:33', 1, 1),
	(3, '###-####', '7298736', 'janam', '2023-01-08 13:56:30', 1, 1),
	(4, '7710723', '7710723', 'df', '2023-01-08 13:59:29', 1, 0),
	(5, '7710723', '7710723', 'df', '2023-01-08 13:59:29', 1, 1),
	(6, '9807189', '6185272', 'سلام درخواست شما قبول و یک ماشین به موقیعت شما ارسال شد ', '2023-01-25 17:20:30', 1, 0),
	(7, '6185272', '9807189', 'سلام درخواست شما قبول و یک ماشین به موقیعت شما ارسال شد ', '2023-01-25 17:20:30', 1, 1),
	(8, '9807189', '3981964', 'سلام درخواست شما قبول و یک ماشین به موقیعت شما ارسال شد ', '2023-01-25 17:20:36', 1, 0),
	(9, '3981964', '9807189', 'سلام درخواست شما قبول و یک ماشین به موقیعت شما ارسال شد ', '2023-01-25 17:20:36', 1, 1),
	(10, '9807189', '3981964', 'سفیر منتظر شماست', '2023-01-25 17:23:45', 0, 0),
	(11, '3981964', '9807189', 'سفیر منتظر شماست', '2023-01-25 17:23:45', 1, 1),
	(12, '9807189', '6185272', 'شهروند گرامی لطفا رضایت خود را از خدمات تاکسیرانی 1 تا 5 اعلام کنید ', '2023-01-25 17:28:19', 1, 0),
	(13, '6185272', '9807189', 'شهروند گرامی لطفا رضایت خود را از خدمات تاکسیرانی 1 تا 5 اعلام کنید ', '2023-01-25 17:28:19', 1, 1),
	(14, '9807189', '6185272', '0', '2023-01-25 17:28:27', 1, 1),
	(15, '6185272', '9807189', '0', '2023-01-25 17:28:27', 1, 0),
	(16, '9807189', '6185272', 'متشکرم بابت شرکت در نظرسنجی ولی نظر شما بکیرمان است !', '2023-01-25 17:31:18', 1, 0),
	(17, '6185272', '9807189', 'متشکرم بابت شرکت در نظرسنجی ولی نظر شما بکیرمان است !', '2023-01-25 17:31:18', 1, 1),
	(18, '9807189', '6185272', 'امیر', '2023-01-25 20:25:48', 1, 0),
	(19, '6185272', '9807189', 'امیر', '2023-01-25 20:25:48', 1, 1),
	(20, '6185272', '9807189', 'jonam ', '2023-01-25 20:30:56', 1, 0),
	(21, '9807189', '6185272', 'jonam ', '2023-01-25 20:30:56', 1, 1);
/*!40000 ALTER TABLE `gksphone_messages` ENABLE KEYS */;

-- Dumping structure for table greencity.gksphone_messages_group
CREATE TABLE IF NOT EXISTS `gksphone_messages_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_messages_group: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_news
CREATE TABLE IF NOT EXISTS `gksphone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext DEFAULT NULL,
  `haber` longtext DEFAULT NULL,
  `baslik` longtext DEFAULT NULL,
  `resim` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `zaman` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_news: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_settings
CREATE TABLE IF NOT EXISTS `gksphone_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.gksphone_settings: ~40 rows (approximately)
INSERT INTO `gksphone_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
	(2, 'steam:110000144eefef0', '{}', '3897094', NULL),
	(3, 'steam:110000147e44dc2', '{}', '7710723', NULL),
	(4, 'steam:110000147922f75', '{}', '7644805', NULL),
	(5, 'steam:1100001161bef71', '{}', '3924011', NULL),
	(6, 'steam:110000155f2b86e', '{}', '2538909', NULL),
	(7, 'steam:1100001454d38b1', '{}', '7912048', NULL),
	(8, 'steam:1100001558fc9b5', '{}', '6222076', NULL),
	(9, 'steam:1100001459c8079', '{}', '3520263', NULL),
	(10, 'steam:110000158b67752', '{}', '1546844', NULL),
	(11, 'steam:11000014bdfcc06', '{}', '5074554', NULL),
	(12, 'steam:110000149f1696f', '{}', '1351562', NULL),
	(13, 'steam:1100001582ebd8c', '{}', '6569244', NULL),
	(14, 'steam:11000014e0b7704', '{}', '2936340', NULL),
	(15, 'steam:110000152338086', '{}', '7906280', NULL),
	(16, 'steam:110000151c26a29', '{}', '9914581', NULL),
	(17, 'steam:110000158df5507', '{}', '2339508', NULL),
	(18, 'steam:110000144792e0f', '{}', '2813018', NULL),
	(19, 'steam:11000011844f231', '{"":10,"bitcoin":1}', '6390167', NULL),
	(20, 'steam:11000014ba5153b', '{}', '1666870', NULL),
	(21, 'steam:1100001448e7465', '{}', '3981964', NULL),
	(22, 'steam:1100001456c71d1', '{}', '5672210', NULL),
	(23, 'steam:110000133a52955', '{}', '3244232', NULL),
	(24, 'steam:110000144580ce0', '{}', '8252349', NULL),
	(25, 'steam:11000013dc12c8c', '{}', '1775360', NULL),
	(26, 'steam:110000141b38366', '{}', '2672668', NULL),
	(27, 'steam:11000014acc3380', '{}', '7298736', NULL),
	(28, 'steam:11000014d8c2f56', '{}', '2160156', NULL),
	(29, 'steam:11000014707d7a0', '{}', '9919799', NULL),
	(30, 'steam:11000014caaec6c', '{}', '4026733', NULL),
	(31, 'steam:1100001440d17a7', '{}', '8302886', NULL),
	(32, 'steam:110000144942744', '{}', '6223175', NULL),
	(33, 'steam:11000014c1b3e07', '{}', '4199768', NULL),
	(34, 'steam:110000146da759a', '{}', '9045837', NULL),
	(35, 'steam:1100001549580b4', '{}', '6698059', NULL),
	(36, 'steam:110000158694e50', '{}', '7841735', NULL),
	(37, 'steam:11000013c08fe4f', '{}', '8160614', NULL),
	(38, 'steam:11000014771fef7', '{"monero":0}', '6185272', NULL),
	(39, 'steam:11000014907b78d', '{}', '6938934', NULL),
	(40, 'steam:11000014e7a769f', '{}', '9807189', NULL),
	(41, 'steam:1100001557dcb69', '{}', '5904846', NULL);

-- Dumping structure for table greencity.gksphone_tinderacc
CREATE TABLE IF NOT EXISTS `gksphone_tinderacc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passaword` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_tinderacc: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_tindermatch
CREATE TABLE IF NOT EXISTS `gksphone_tindermatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  `is_match` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_tindermatch: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_tindermessage
CREATE TABLE IF NOT EXISTS `gksphone_tindermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `tinderes` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_tindermessage: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_twitter_accounts
CREATE TABLE IF NOT EXISTS `gksphone_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilavatar` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.gksphone_twitter_accounts: ~1 rows (approximately)
INSERT INTO `gksphone_twitter_accounts` (`id`, `username`, `password`, `avatar_url`, `profilavatar`) VALUES
	(1, 'amirvsi', 'AMIRVSI1383', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
	(2, 'amir', '13731010', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg');

-- Dumping structure for table greencity.gksphone_twitter_likes
CREATE TABLE IF NOT EXISTS `gksphone_twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_twitter_likes_gksphone_twitter_accounts` (`authorId`),
  KEY `FK_gksphone_twitter_likes_gksphone_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`),
  CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `gksphone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.gksphone_twitter_likes: ~2 rows (approximately)
INSERT INTO `gksphone_twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
	(1, 2, 2),
	(2, 2, 1);

-- Dumping structure for table greencity.gksphone_twitter_tweets
CREATE TABLE IF NOT EXISTS `gksphone_twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table greencity.gksphone_twitter_tweets: ~1 rows (approximately)
INSERT INTO `gksphone_twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `image`, `time`, `likes`) VALUES
	(1, 1, 'steam:110000147e44dc2', 'ASFDASDF', '', '2023-01-09 15:35:15', 1),
	(2, 2, 'steam:11000014771fef7', 'test', '', '2023-01-22 18:31:59', 1);

-- Dumping structure for table greencity.gksphone_users_contacts
CREATE TABLE IF NOT EXISTS `gksphone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_users_contacts: 3 rows
/*!40000 ALTER TABLE `gksphone_users_contacts` DISABLE KEYS */;
INSERT INTO `gksphone_users_contacts` (`id`, `identifier`, `number`, `display`, `avatar`) VALUES
	(1, 'steam:11000014771fef7', '6938934', 'ali baba', 'https://image.flaticon.com/icons/png/512/194/194938.png'),
	(2, 'steam:11000014771fef7', '9807189', 'mehdi jon', 'https://image.flaticon.com/icons/png/512/194/194938.png'),
	(3, 'steam:11000014771fef7', '6390167', 'moti', 'https://image.flaticon.com/icons/png/512/194/194938.png');
/*!40000 ALTER TABLE `gksphone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table greencity.gksphone_vehicle_sales
CREATE TABLE IF NOT EXISTS `gksphone_vehicle_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.gksphone_vehicle_sales: ~0 rows (approximately)

-- Dumping structure for table greencity.gksphone_yellow
CREATE TABLE IF NOT EXISTS `gksphone_yellow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table greencity.gksphone_yellow: ~0 rows (approximately)

-- Dumping structure for table greencity.glovebox_inventory
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.glovebox_inventory: ~0 rows (approximately)

-- Dumping structure for table greencity.granted
CREATE TABLE IF NOT EXISTS `granted` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(30) DEFAULT NULL,
  `hardwareid` varchar(100) DEFAULT NULL,
  `timestamp` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2861 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.granted: 0 rows
/*!40000 ALTER TABLE `granted` DISABLE KEYS */;
/*!40000 ALTER TABLE `granted` ENABLE KEYS */;

-- Dumping structure for table greencity.greencad_data
CREATE TABLE IF NOT EXISTS `greencad_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secondryid` int(11) NOT NULL,
  `steam` text NOT NULL,
  `reason` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.greencad_data: ~0 rows (approximately)

-- Dumping structure for table greencity.hungerthirst
CREATE TABLE IF NOT EXISTS `hungerthirst` (
  `idSteam` varchar(255) NOT NULL,
  `hunger` int(11) NOT NULL DEFAULT 100,
  `thirst` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table greencity.hungerthirst: ~0 rows (approximately)

-- Dumping structure for table greencity.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.items: ~99 rows (approximately)
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('medikit', 'Medikit', 30, 0, 1),
	('bread', 'Noon', 20, 0, 1),
	('water', 'Ab', 20, 0, 1),
	('weed', 'ShahDane', 50, 0, 1),
	('marijuana', 'Marijuana', 150, 0, 1),
	('coca', 'Tokhm Kokayin', 50, 0, 1),
	('cocaine', 'Kokayin', 25, 0, 1),
	('ephedra', 'Ephedra', 25, 0, 1),
	('ephedrine', 'Ephedrine', 50, 0, 1),
	('poppy', 'Khashkhaash', 50, 0, 1),
	('opium', 'Teryak', 25, 0, 1),
	('meth', 'Shishe', 10, 0, 1),
	('hookah', 'Shisha', 1, 0, 1),
	('beer', 'Abjo', 10, 0, 1),
	('crack', 'Crack', 50, 0, 1),
	('drugtest', 'Test Mavad', 5, 0, 1),
	('breathalyzer', 'Test Alchol', 5, 0, 1),
	('fakepee', 'Aragh Hesarak', 10, 0, 1),
	('cocacola', 'Coca Cola', 10, 0, 1),
	('fanta', 'Sandis', 10, 0, 1),
	('macka', 'Felafel', 5, 0, 1),
	('lighter', 'Fandak', 1, 0, 1),
	('fish', 'Mahi', 50, 0, 1),
	('washed_stone', 'Sange Boresh Khorde', 50, 0, 1),
	('copper', 'Mes', 150, 0, 1),
	('iron', 'Ahan', 150, 0, 1),
	('gold', 'Tala', 150, 0, 1),
	('wood', 'Choob', 100, 0, 1),
	('packaged_plank', 'Choobe baste bandi shode', 40, 0, 1),
	('petrol', 'Benzin', 25, 0, 1),
	('petrol_raffin', 'Rafin', 50, 0, 1),
	('essence', 'Asans', 100, 0, 1),
	('wool', 'Pashm', 80, 0, 1),
	('fabric', 'Parche', 20, 0, 1),
	('phone', 'Goshi', 5, 0, 1),
	('lockpick', 'Sanjagh', 5, 0, 1),
	('yusuf', 'Skin Talaii', 1, 0, 1),
	('grip', 'Grip', 3, 0, 1),
	('flashlight', 'FlashLight', 3, 0, 1),
	('silencer', 'Silencer', 3, 0, 1),
	('clip', 'Kheshab', 20, 0, 1),
	('jewels', 'Jewels', 400, 0, 1),
	('meat', 'Gosht', 20, 0, 1),
	('net_cracker', 'Laptop Hack ', 3, 0, 1),
	('loka', 'Abmive', 10, 0, 1),
	('cheesebows', 'Snack', 10, 0, 1),
	('chips', 'Chips', 5, 0, 1),
	('marabou', 'Shokolat', 10, 0, 1),
	('pizza', 'pitza', 5, 0, 1),
	('burger', 'Burger', 5, 0, 1),
	('cigarett', 'Cigar', 20, 0, 1),
	('lotteryticket', 'Blit Bakht Azmayi', 15, 0, 1),
	('blowtorch', 'Blowtorch', 3, 0, 1),
	('alive_chicken', 'Morq', 20, 0, 1),
	('slaughtered_chicken', 'Morq morde', 20, 0, 1),
	('packaged_chicken', 'Morq baste bandi shode', 40, 0, 1),
	('stone', 'Sang', 100, 0, 1),
	('diamond', 'Almas', 20, 0, 1),
	('thermite', 'Thermite Bomb', 3, 0, 1),
	('radio', 'Radio', 5, 0, 1),
	('mixapero', 'Ajil', 10, 0, 1),
	('vodka', 'Vodka', 10, 0, 1),
	('tequila', 'Tequila', 10, 0, 1),
	('soda', 'Noshabe', 10, 0, 1),
	('energy', 'Red Bull', 10, 0, 1),
	('limonade', 'Limonade', 10, 0, 1),
	('bandage', 'Bandage', 30, 0, 1),
	('headbag', 'Headbag', 1, 0, 1),
	('gazbottle', 'Ghooti gaz', 3, 0, 1),
	('fixtool', 'Abzar Tamir', 30, 0, 1),
	('carotool', 'Abzar Badane', 30, 0, 1),
	('fixkit', 'Kit Tamir', 30, 0, 1),
	('carokit', 'Kit Badane', 30, 0, 1),
	('armor', 'Vest', 1, 0, 1),
	('eclip', 'Kheshab Siz 10', 5, 0, 1),
	('dclip', 'Kheshab Size 5', 10, 0, 1),
	('tintgreen', 'Skin Sabz', 1, 0, 1),
	('tintgold', 'Skin Talaii', 1, 0, 1),
	('tintpink', 'Skin Sorati', 1, 0, 1),
	('tintcream', 'Skin Cream', 1, 0, 1),
	('tintblack', 'Skin Black', 1, 0, 1),
	('tintorange', 'Skin Narenji', 1, 0, 1),
	('tintplat', 'Skin Plat', 1, 0, 1),
	('lsd', 'LSD', 3, 0, 1),
	('heroine', 'Heroine', 10, 0, 1),
	('xpshop', 'Shop XP', 3, 0, 1),
	('xpbank', 'Bank XP', 3, 0, 1),
	('xpjewel', 'Javaheri XP', 3, 0, 1),
	('xpfleeca', 'Fleeca XP', 3, 0, 1),
	('xpmythic', 'Mythic XP', 3, 0, 1),
	('xpbime', 'Bime XP', 3, 0, 1),
	('xptreasury', 'Treasury XP', 3, 0, 1),
	('xpcargo', 'Cargo XP', 3, 0, 1),
	('cutted_wood', 'Chob Boresh Khorde', 200, 0, 1),
	('clothe', 'Lebas', 5, 0, 1),
	('police_card', 'POLICE CARD', -1, 0, 1),
	('id_card', 'ID CARD', -1, 0, 1),
	('license_drive', 'DRIVING LICENSE', -1, 0, 1),
	('license_weapon', 'WEAPON LICENSE', -1, 0, 1);

-- Dumping structure for table greencity.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.jobs: ~20 rows (approximately)
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'Ambulance', 1),
	('fbi', 'FBI', 1),
	('fisherman', 'Mahi Gir', 1),
	('fueler', 'Sherekat Naft', 0),
	('lumberjack', 'Najar', 0),
	('miner', 'Madanchi', 0),
	('nojob', 'Bikar', 0),
	('offambulance', 'Off-Duty', 1),
	('offmechanic', 'Off-Duty', 1),
	('offpolice', 'Off-Duty', 1),
	('offtaxi', 'Off-Duty', 1),
	('police', 'Police', 1),
	('weazel', 'Wazel News', 1),
	('slaughterer', 'Qasab', 0),
	('tailor', 'Khayat', 0),
	('taxi', 'Taxi', 1),
	('sheriff', 'Sheriff', 1),
	('mechanic', 'Mechanic', 1),
	('offsheriff', 'Off-Duty', 1),
	('offweazel', 'Off-Duty', 1);

-- Dumping structure for table greencity.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8_bin NOT NULL,
  `skin_female` longtext COLLATE utf8_bin NOT NULL,
  `Weapons` longtext COLLATE utf8_bin NOT NULL DEFAULT '',
  `Vehicles` longtext COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.job_grades: ~167 rows (approximately)
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`, `Weapons`, `Vehicles`) VALUES
	(1, 'nojob', 0, 'Bikar', 'nojob', 0, '', '', '', ''),
	(2, 'lumberjack', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(3, 'fisherman', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(4, 'fueler', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(5, 'tailor', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(6, 'miner', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(7, 'slaughterer', 0, 'employee', 'Karmand', 1500, '{}', '{}', '', ''),
	(8, 'mechanic', 1, 'karamouz', 'Karamouz', 10000, '{"bproof_2":0,"shoes_1":40,"helmet_2":0,"bags_1":0,"chain_2":0,"arms":36,"pants_1":131,"torso_1":334,"mask_2":0,"bproof_1":0,"glasses_2":5,"mask_1":-1,"torso_2":3,"decals_1":0,"helmet_1":-1,"chain_1":0,"decals_2":0,"tshirt_1":92,"pants_2":5,"shoes_2":0,"bags_2":0,"tshirt_2":0,"glasses_1":5}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":3,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":15,"glasses_2":5,"pants_2":5,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '["sadler","towtruck","flatbed"]'),
	(9, 'mechanic', 2, 'safkar', 'Safkar', 12000, '{"bproof_2":0,"shoes_1":40,"torso_1":334,"mask_2":0,"helmet_2":0,"torso_2":4,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"tshirt_1":92,"pants_2":2,"decals_2":0,"chain_2":0,"shoes_2":0,"bags_2":0,"pants_1":93,"bproof_1":-1,"tshirt_2":0,"arms":36,"chain_1":0,"decals_1":0,"glasses_2":2}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":4,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":58,"glasses_2":5,"pants_2":1,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '["sugoi","sadler","towtruck","flatbed"]'),
	(10, 'mechanic', 3, 'aparati', 'Aparati', 13000, '{"bproof_2":0,"shoes_2":0,"torso_1":334,"bproof_1":-1,"helmet_2":0,"torso_2":1,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":3,"decals_2":0,"arms":36,"glasses_2":5,"tshirt_1":92,"tshirt_2":0}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":1,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":58,"glasses_2":5,"pants_2":3,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '["caracara2","sadler","verus","towtruck","flatbed"]'),
	(11, 'mechanic', 4, 'batrisaz', 'Batrisaz', 14000, '{"bproof_2":0,"shoes_1":40,"torso_1":334,"mask_2":0,"helmet_2":0,"torso_2":24,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"tshirt_1":92,"pants_2":13,"decals_2":0,"chain_2":0,"shoes_2":0,"bags_2":0,"pants_1":131,"bproof_1":-1,"tshirt_2":1,"arms":36,"chain_1":0,"decals_1":0,"glasses_2":3}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":24,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":58,"glasses_2":5,"pants_2":13,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '["kamacho","sugoi","sadler","verus","towtruck","flatbed"]'),
	(12, 'mechanic', 5, 'tavizroghani', 'Taviz Roghani', 15000, '{"bproof_2":0,"shoes_2":0,"torso_1":334,"bproof_1":-1,"helmet_2":0,"torso_2":15,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":16,"decals_2":0,"arms":36,"glasses_2":5,"tshirt_1":92,"tshirt_2":1}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":15,"bproof_2":0,"mask_2":0,"helmet_1":-1,"tshirt_2":0,"glasses_2":3,"glasses_1":5,"bproof_1":-1,"mask_1":-1,"bags_1":-1,"tshirt_1":58,"helmet_2":0,"pants_2":16,"decals_2":0,"decals_1":0,"pants_1":136,"chain_1":147,"shoes_1":25,"torso_1":364,"chain_2":0}', '"all"', '["sanchez2","kamacho","sugoi","sadler","verus","towtruck","flatbed"]'),
	(13, 'mechanic', 6, 'tarashkar', 'Tarashkar', 16000, '{"bproof_2":0,"shoes_2":0,"torso_1":334,"bproof_1":-1,"helmet_2":0,"torso_2":9,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":11,"decals_2":0,"arms":36,"glasses_2":3,"tshirt_1":92,"tshirt_2":1}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":9,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":58,"glasses_2":5,"pants_2":11,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '["sanchez2","kamacho","sugoi","sadler","jackal","verus","towtruck","flatbed"]'),
	(14, 'mechanic', 7, 'naghash', 'Naghash', 17000, '{"bproof_2":0,"shoes_1":40,"torso_1":334,"mask_2":0,"helmet_2":0,"torso_2":18,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"tshirt_1":92,"pants_2":15,"decals_2":0,"chain_2":0,"shoes_2":0,"bags_2":0,"pants_1":131,"bproof_1":-1,"tshirt_2":1,"arms":36,"chain_1":0,"decals_1":0,"glasses_2":3}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":18,"bproof_2":0,"mask_2":0,"helmet_1":-1,"tshirt_2":0,"glasses_2":3,"glasses_1":5,"bproof_1":-1,"mask_1":-1,"bags_1":-1,"tshirt_1":58,"helmet_2":0,"pants_2":15,"decals_2":0,"decals_1":0,"pants_1":136,"chain_1":147,"shoes_1":25,"torso_1":364,"chain_2":0}', '"all"', '["sanchez2","kamacho","tailgater2","sugoi","sadler","jackal","verus","towtruck","flatbed"]'),
	(15, 'mechanic', 8, 'jolobandi', 'jolo Bandi', 18000, '{"bproof_2":0,"shoes_2":0,"torso_1":334,"bproof_1":-1,"helmet_2":0,"torso_2":13,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":19,"decals_2":0,"arms":36,"glasses_2":5,"tshirt_1":92,"tshirt_2":1}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":13,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":58,"glasses_2":5,"pants_2":19,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":364,"bags_1":0}', '"all"', '"all"'),
	(16, 'mechanic', 9, 'ostakar', 'Ostakar', 19000, '{"bproof_2":0,"shoes_1":40,"torso_1":338,"mask_2":0,"helmet_2":0,"torso_2":24,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"tshirt_1":15,"pants_2":24,"decals_2":0,"chain_2":0,"shoes_2":0,"bags_2":0,"pants_1":131,"bproof_1":-1,"tshirt_2":0,"arms":23,"chain_1":0,"decals_1":0,"glasses_2":3}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":24,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":0,"glasses_2":5,"pants_2":24,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":368,"bags_1":0}', '"all"', '"all"'),
	(17, 'mechanic', 10, 'tuner', 'Tuner', 21000, '{"bproof_2":0,"shoes_2":0,"torso_1":338,"bproof_1":-1,"helmet_2":0,"torso_2":8,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":8,"decals_2":0,"arms":34,"glasses_2":5,"tshirt_1":15,"tshirt_2":1}', '{"shoes_2":0,"bags_2":0,"arms":37,"torso_2":8,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":0,"glasses_2":5,"pants_2":8,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":147,"shoes_1":25,"torso_1":368,"bags_1":0}', '"all"', '"all"'),
	(18, 'mechanic', 11, 'bazras', 'Bazras', 23000, '{"bproof_2":0,"shoes_1":40,"torso_1":464,"mask_2":0,"helmet_2":0,"torso_2":6,"bags_1":-1,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"tshirt_1":15,"pants_2":14,"decals_2":0,"chain_2":1,"shoes_2":0,"bags_2":0,"pants_1":131,"bproof_1":-1,"tshirt_2":0,"arms":34,"chain_1":147,"decals_1":0,"glasses_2":3}', '{"shoes_2":0,"bags_2":0,"arms":31,"torso_2":6,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":1,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":13,"glasses_2":5,"pants_2":14,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":110,"shoes_1":85,"torso_1":504,"bags_1":0}', '"all"', '"all"'),
	(19, 'mechanic', 12, 'karshenas', 'Karshenas', 25000, '{"bproof_2":0,"shoes_2":0,"torso_1":464,"bproof_1":-1,"helmet_2":0,"torso_2":15,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":1,"mask_2":0,"chain_1":147,"bags_2":0,"decals_1":0,"pants_1":131,"pants_2":23,"decals_2":0,"arms":34,"glasses_2":5,"tshirt_1":15,"tshirt_2":0}', '{"shoes_2":0,"bags_2":0,"arms":31,"torso_2":15,"bproof_2":0,"mask_2":0,"helmet_1":-1,"chain_2":1,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":-1,"pants_1":136,"tshirt_1":13,"glasses_2":5,"pants_2":23,"decals_2":0,"decals_1":0,"tshirt_2":0,"chain_1":110,"shoes_1":85,"torso_1":504,"bags_1":0}', '"all"', '"all"'),
	(20, 'mechanic', 13, 'boss', 'Deputy Chief', 28000, '{"shoes_2":0,"glasses_1":5,"arms":34,"mask_2":0,"pants_1":93,"helmet_1":-1,"tshirt_1":15,"torso_1":464,"helmet_2":0,"decals_2":0,"chain_1":147,"bproof_1":-1,"bags_1":-1,"torso_2":19,"mask_1":-1,"chain_2":0,"bags_2":0,"decals_1":0,"pants_2":0,"bproof_2":0,"tshirt_2":0,"shoes_1":40,"glasses_2":3}', '{}', '"all"', '"all"'),
	(21, 'mechanic', 14, 'boss', 'Chief', 30000, '{"bproof_2":0,"shoes_2":0,"torso_1":464,"bproof_1":0,"helmet_2":0,"torso_2":20,"bags_1":0,"helmet_1":-1,"mask_1":-1,"glasses_1":5,"shoes_1":40,"chain_2":0,"mask_2":0,"chain_1":147,"bags_2":0,"decals_1":0,"pants_1":86,"pants_2":1,"decals_2":0,"arms":34,"glasses_2":5,"tshirt_1":15,"tshirt_2":0}', '{}', '"all"', '"all"'),
	(22, 'offmechanic', 1, 'karamouz', 'Karamouz', 0, '{}', '{}', '"all"', '"all"'),
	(23, 'offmechanic', 2, 'safkar', 'Safkar', 0, '{}', '{}', '"all"', '"all"'),
	(24, 'offmechanic', 3, 'aparati', 'Aparati', 0, '{}', '{}', '"all"', '"all"'),
	(25, 'offmechanic', 4, 'batrisaz', 'Batrisaz', 0, '{}', '{}', '"all"', '"all"'),
	(26, 'offmechanic', 5, 'tavizroghani', 'Taviz Roghani', 0, '{}', '{}', '"all"', '"all"'),
	(27, 'offmechanic', 6, 'tarashkar', 'Tarashkar', 0, '{}', '{}', '"all"', '"all"'),
	(28, 'offmechanic', 7, 'naghash', 'Naghash', 0, '{}', '{}', '"all"', '"all"'),
	(29, 'offmechanic', 8, 'jolobandi', 'jolo Bandi', 0, '{}', '{}', '"all"', '"all"'),
	(30, 'offmechanic', 9, 'ostakar', 'Ostakar', 0, '{}', '{}', '"all"', '"all"'),
	(31, 'offmechanic', 10, 'tuner', 'Tuner', 0, '{}', '{}', '"all"', '"all"'),
	(32, 'offmechanic', 11, 'bazras', 'Bazras', 0, '{}', '{}', '"all"', '"all"'),
	(33, 'offmechanic', 12, 'karshenas', 'Karshenas', 0, '{}', '{}', '"all"', '"all"'),
	(34, 'offmechanic', 13, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(35, 'offmechanic', 14, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"'),
	(36, 'sheriff', 1, 'cadet', 'Cadet', 15000, '{"mask_1":9,"shoes_2":0,"bags_1":-1,"glasses_1":0,"chain_2":0,"bags_2":0,"tshirt_1":39,"bproof_2":0,"helmet_2":0,"torso_1":25,"chain_1":0,"mask_2":5,"helmet_1":13,"decals_2":0,"pants_1":40,"arms":4,"glasses_2":0,"torso_2":0,"tshirt_2":0,"pants_2":0,"bproof_1":29,"shoes_1":39,"decals_1":0}', '{}', '"all"', '"all"'),
	(37, 'sheriff', 2, 'officeriii', 'Officer III', 17000, '{}', '{}', '"all"', '"all"'),
	(38, 'sheriff', 3, 'officerii', 'Officer II', 19000, '{}', '{}', '"all"', '"all"'),
	(39, 'sheriff', 4, 'officeri', 'Officer I', 21000, '{}', '{}', '"all"', '"all"'),
	(40, 'sheriff', 5, 'detective', 'Detective', 23000, '{}', '{}', '"all"', '"all"'),
	(41, 'sheriff', 6, 'sergeantiii', 'Sergeant  III', 25000, '{}', '{}', '"all"', '"all"'),
	(42, 'sheriff', 7, 'sergeantii', 'Sergeant  II', 27000, '{}', '{}', '"all"', '"all"'),
	(43, 'sheriff', 8, 'sergeanti', 'Sergeant  I', 29000, '{}', '{}', '"all"', '"all"'),
	(44, 'sheriff', 9, 'lieutenant', 'Lieutenant', 31000, '{}', '{}', '"all"', '"all"'),
	(45, 'sheriff', 10, 'captainii', 'Captain II', 33000, '{}', '{}', '"all"', '"all"'),
	(46, 'sheriff', 11, 'captaini', 'Captain I', 35000, '{}', '{}', '"all"', '"all"'),
	(47, 'sheriff', 12, 'commander', 'Commander', 37000, '{}', '{}', '"all"', '"all"'),
	(48, 'sheriff', 13, 'boss', 'Specialist', 39000, '{}', '{}', '"all"', '"all"'),
	(49, 'sheriff', 14, 'boss', 'Deputy Chief', 41000, '{"mask_1":0,"shoes_2":1,"torso_2":1,"glasses_1":15,"chain_2":0,"bags_2":0,"tshirt_1":18,"bproof_2":0,"helmet_2":3,"torso_1":25,"chain_1":0,"mask_2":0,"helmet_1":13,"glasses_2":2,"pants_1":22,"arms":8,"tshirt_2":1,"bags_1":0,"decals_2":0,"pants_2":3,"bproof_1":0,"shoes_1":53,"decals_1":0}', '{"chain_2":0,"arms":2,"decals_1":0,"mask_2":9,"decals_2":0,"bags_2":0,"pants_1":48,"tshirt_1":19,"helmet_1":38,"bproof_1":0,"glasses_1":9,"shoes_2":1,"glasses_2":1,"chain_1":0,"bproof_2":0,"tshirt_2":0,"helmet_2":1,"mask_1":0,"pants_2":1,"bags_1":0,"torso_1":61,"torso_2":9,"shoes_1":38}', '"all"', '"all"'),
	(50, 'sheriff', 15, 'boss', 'Chief', 45000, '{"chain_2":0,"arms":24,"decals_1":0,"mask_2":0,"decals_2":0,"shoes_1":3,"pants_1":10,"tshirt_1":17,"torso_2":0,"bproof_1":29,"glasses_1":0,"shoes_2":4,"glasses_2":0,"chain_1":0,"bproof_2":0,"helmet_2":0,"tshirt_2":0,"mask_1":0,"pants_2":7,"bags_1":-1,"torso_1":302,"bags_2":0,"helmet_1":-1}', '{}', '"all"', '"all"'),
	(51, 'offsheriff', 1, 'cadet', 'Cadet', 0, '{}', '{}', '"all"', '"all"'),
	(52, 'offsheriff', 2, 'officeriii', 'Officer III', 0, '{}', '{}', '"all"', '"all"'),
	(53, 'offsheriff', 3, 'officerii', 'Officer II', 0, '{}', '{}', '"all"', '"all"'),
	(54, 'offsheriff', 4, 'officeri', 'Officer I', 0, '{}', '{}', '"all"', '"all"'),
	(55, 'offsheriff', 5, 'detective', 'Detective', 0, '{}', '{}', '"all"', '"all"'),
	(56, 'offsheriff', 6, 'sergeantiii', 'Sergeant  III', 0, '{}', '{}', '"all"', '"all"'),
	(57, 'offsheriff', 7, 'sergeantii', 'Sergeant  II', 0, '{}', '{}', '"all"', '"all"'),
	(58, 'offsheriff', 8, 'sergeanti', 'Sergeant  I', 0, '{}', '{}', '"all"', '"all"'),
	(59, 'offsheriff', 9, 'lieutenant', 'Lieutenant', 0, '{}', '{}', '"all"', '"all"'),
	(60, 'offsheriff', 10, 'captainii', 'Captain II', 0, '{}', '{}', '"all"', '"all"'),
	(61, 'offsheriff', 11, 'captaini', 'Captain I', 0, '{}', '{}', '"all"', '"all"'),
	(62, 'offsheriff', 12, 'commander', 'Commander', 0, '{}', '{}', '"all"', '"all"'),
	(63, 'offsheriff', 13, 'boss', 'Specialist', 0, '{}', '{}', '"all"', '"all"'),
	(64, 'offsheriff', 14, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(65, 'offsheriff', 15, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"'),
	(66, 'police', 1, 'cadet', 'Cadet', 15000, '{"decals_2":0,"bproof_1":-1,"chain_1":0,"shoes_1":19,"glasses_2":3,"shoes_2":0,"arms":41,"tshirt_2":0,"torso_2":0,"bags_1":-1,"helmet_1":50,"glasses_1":5,"torso_1":406,"mask_1":0,"mask_2":0,"pants_2":0,"tshirt_1":155,"chain_2":0,"bags_2":0,"bproof_2":0,"pants_1":58,"decals_1":133,"helmet_2":0}', '{}', '"all"', '"all"'),
	(67, 'police', 2, 'officeriii', 'Officer III', 17000, '{}', '{}', '"all"', '"all"'),
	(68, 'police', 3, 'officerii', 'Officer II', 19000, '{}', '{}', '"all"', '"all"'),
	(69, 'police', 4, 'officeri', 'Officer I', 21000, '{}', '{}', '"all"', '"all"'),
	(70, 'police', 5, 'detective', 'Detective', 23000, '{}', '{}', '"all"', '"all"'),
	(71, 'police', 6, 'sergeantiii', 'Sergeant III', 25000, '{}', '{}', '"all"', '"all"'),
	(72, 'police', 7, 'sergeantii', 'Sergeant II', 27000, '{}', '{}', '"all"', '"all"'),
	(73, 'police', 8, 'sergeanti', 'Sergeant I', 29000, '{}', '{}', '"all"', '"all"'),
	(74, 'police', 9, 'lieutenant', 'Lieutenant', 31000, '{}', '{}', '"all"', '"all"'),
	(75, 'police', 10, 'captainii', 'Captain II', 33000, '{}', '{}', '"all"', '"all"'),
	(76, 'police', 11, 'captaini', 'Captain I', 35000, '{}', '{}', '"all"', '"all"'),
	(77, 'police', 12, 'commander', 'Commander', 37000, '{}', '{}', '"all"', '"all"'),
	(78, 'police', 13, 'boss', 'Specialist', 39000, '{}', '{}', '"all"', '"all"'),
	(79, 'police', 14, 'boss', 'Deputy Chief', 41000, '{}', '{}', '"all"', '"all"'),
	(80, 'police', 15, 'boss', 'Chief', 45000, '{}', '{}', '"all"', '"all"'),
	(81, 'offpolice', 1, 'cadet', 'Cadet', 0, '{}', '{}', '"all"', '"all"'),
	(82, 'offpolice', 2, 'officeriii', 'Officer III', 0, '{}', '{}', '"all"', '"all"'),
	(83, 'offpolice', 3, 'officerii', 'Officer II', 0, '{}', '{}', '"all"', '"all"'),
	(84, 'offpolice', 4, 'officeri', 'Officer I', 0, '{}', '{}', '"all"', '"all"'),
	(85, 'offpolice', 5, 'detective', 'Detective', 0, '{}', '{}', '"all"', '"all"'),
	(86, 'offpolice', 6, 'sergeantiii', 'Sergeant III', 0, '{}', '{}', '"all"', '"all"'),
	(87, 'offpolice', 7, 'sergeantii', 'Sergeant II', 0, '{}', '{}', '"all"', '"all"'),
	(88, 'offpolice', 8, 'sergeanti', 'Sergeant I', 0, '{}', '{}', '"all"', '"all"'),
	(89, 'offpolice', 9, 'lieutenant', 'Lieutenant', 0, '{}', '{}', '"all"', '"all"'),
	(90, 'offpolice', 10, 'captainii', 'Captain II', 0, '{}', '{}', '"all"', '"all"'),
	(91, 'offpolice', 11, 'captaini', 'Captain I', 0, '{}', '{}', '"all"', '"all"'),
	(92, 'offpolice', 12, 'commander', 'Commander', 0, '{}', '{}', '"all"', '"all"'),
	(93, 'offpolice', 13, 'boss', 'Specialist', 0, '{}', '{}', '"all"', '"all"'),
	(94, 'offpolice', 14, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(95, 'offpolice', 15, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"'),
	(96, 'ambulance', 1, 'amoozeshi', 'Amoozeshi', 1000, '{"tshirt_2":0,"bags_2":0,"arms":25,"torso_2":0,"bproof_2":0,"mask_2":0,"helmet_1":10,"shoes_2":0,"helmet_2":1,"glasses_1":5,"bproof_1":0,"mask_1":8,"pants_1":31,"tshirt_1":15,"glasses_2":2,"pants_2":0,"decals_2":0,"decals_1":0,"bags_1":0,"chain_1":0,"shoes_1":15,"torso_1":33,"chain_2":0}', '{}', '"all"', '"all"'),
	(97, 'ambulance', 2, 'intern', 'Intern', 12000, '{"tshirt_2":0,"bags_2":0,"arms":34,"torso_2":0,"bproof_2":0,"mask_2":0,"helmet_1":-1,"shoes_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":8,"pants_1":62,"tshirt_1":15,"glasses_2":0,"pants_2":0,"decals_2":0,"decals_1":74,"bags_1":0,"chain_1":0,"shoes_1":10,"torso_1":33,"chain_2":0}', '{}', '"all"', '"all"'),
	(98, 'ambulance', 3, 'nurse', 'Nurse', 13000, '{"tshirt_2":0,"bags_2":0,"arms":34,"torso_2":0,"bproof_2":0,"mask_2":0,"helmet_1":-1,"shoes_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":8,"pants_1":62,"tshirt_1":15,"glasses_2":0,"pants_2":0,"decals_2":0,"decals_1":74,"bags_1":0,"chain_1":0,"shoes_1":10,"torso_1":34,"chain_2":0}', '{}', '"all"', '"all"'),
	(99, 'ambulance', 4, 'emt', 'EMT', 14000, '{"tshirt_2":0,"bags_2":0,"arms":34,"torso_2":0,"bproof_2":0,"mask_2":0,"helmet_1":-1,"shoes_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":8,"pants_1":62,"tshirt_1":15,"glasses_2":5,"pants_2":0,"decals_2":0,"decals_1":75,"bags_1":0,"chain_1":0,"shoes_1":10,"torso_1":33,"chain_2":0}', '{}', '"all"', '"all"'),
	(100, 'ambulance', 5, 'doctor', 'Doctor', 15000, '{"tshirt_2":0,"bags_2":0,"arms":34,"torso_2":2,"bproof_2":0,"mask_2":0,"helmet_1":-1,"shoes_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":8,"pants_1":62,"tshirt_1":15,"glasses_2":4,"pants_2":0,"decals_2":0,"decals_1":0,"bags_1":0,"chain_1":0,"shoes_1":10,"torso_1":33,"chain_2":0}', '{}', '"all"', '"all"'),
	(101, 'ambulance', 6, 'resident', 'Resident', 16000, '{"tshirt_2":0,"bags_2":0,"arms":34,"torso_2":1,"bproof_2":0,"mask_2":2,"helmet_1":-1,"shoes_2":0,"helmet_2":0,"glasses_1":5,"bproof_1":0,"mask_1":23,"pants_1":62,"tshirt_1":15,"glasses_2":4,"pants_2":0,"decals_2":0,"decals_1":74,"bags_1":0,"chain_1":0,"shoes_1":10,"torso_1":38,"chain_2":0}', '{}', '"all"', '"all"'),
	(102, 'ambulance', 7, 'surgeon', 'Surgeon', 17000, '{}', '{}', '"all"', '"all"'),
	(103, 'ambulance', 8, 'dispatchii', 'Dispatch II', 18000, '{}', '{}', '"all"', '"all"'),
	(104, 'ambulance', 9, 'dispatchi', 'Dispatch I', 19000, '{}', '{}', '"all"', '"all"'),
	(105, 'ambulance', 10, 'boss', 'Assist', 21000, '{}', '{}', '"all"', '"all"'),
	(106, 'ambulance', 11, 'boss', 'Specialist', 23000, '{}', '{}', '"all"', '"all"'),
	(107, 'ambulance', 12, 'boss', 'Technician', 25000, '{}', '{}', '"all"', '"all"'),
	(108, 'ambulance', 13, 'boss', 'Radiologist', 26000, '{}', '{}', '"all"', '"all"'),
	(109, 'ambulance', 14, 'boss', 'Staff', 27000, '{}', '{}', '"all"', '"all"'),
	(110, 'ambulance', 15, 'boss', 'Deputy Chief', 28000, '{}', '{}', '"all"', '"all"'),
	(111, 'ambulance', 16, 'boss', 'Chief', 30000, '{}', '{}', '"all"', '"all"'),
	(112, 'offambulance', 1, 'amoozeshi', 'Amoozeshi', 0, '{}', '{}', '"all"', '"all"'),
	(113, 'offambulance', 2, 'intern', 'Intern', 0, '{}', '{}', '"all"', '"all"'),
	(114, 'offambulance', 3, 'nurse', 'Nurse', 0, '{}', '{}', '"all"', '"all"'),
	(115, 'offambulance', 4, 'emt', 'EMT', 0, '{}', '{}', '"all"', '"all"'),
	(116, 'offambulance', 5, 'doctor', 'Doctor', 0, '{}', '{}', '"all"', '"all"'),
	(117, 'offambulance', 6, 'resident', 'Resident', 0, '{}', '{}', '"all"', '"all"'),
	(118, 'offambulance', 7, 'surgeon', 'Surgeon', 0, '{}', '{}', '"all"', '"all"'),
	(119, 'offambulance', 8, 'dispatchii', 'Dispatch II', 0, '{}', '{}', '"all"', '"all"'),
	(120, 'offambulance', 9, 'dispatchi', 'Dispatch I', 0, '{}', '{}', '"all"', '"all"'),
	(121, 'offambulance', 10, 'boss', 'Assist', 0, '{}', '{}', '"all"', '"all"'),
	(122, 'offambulance', 11, 'boss', 'Specialist', 0, '{}', '{}', '"all"', '"all"'),
	(123, 'offambulance', 12, 'boss', 'Technician', 0, '{}', '{}', '"all"', '"all"'),
	(124, 'offambulance', 13, 'boss', 'Radiologist', 0, '{}', '{}', '"all"', '"all"'),
	(125, 'offambulance', 14, 'boss', 'Staff', 0, '{}', '{}', '"all"', '"all"'),
	(126, 'offambulance', 15, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(127, 'offambulance', 16, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"'),
	(128, 'taxi', 1, 'intern', 'Training Driver', 10000, '{"decals_2":0,"bproof_1":0,"chain_1":35,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":6,"bags_1":0,"tshirt_1":160,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":6,"bags_2":0,"bproof_2":0,"torso_1":112,"decals_1":0,"helmet_2":0}', '{}', '["WEAPON_NIGHTSTICK","WEAPON_STUNGUN","WEAPON_PISTOL","WEAPON_COMBATPISTOL","WEAPON_PISTOL50","WEAPON_SMG","WEAPON_ASSAULTSMG","WEAPON_GUSENBERG","WEAPON_CARBINERIFLE","WEAPON_BULLPUPRIFLE"]', '"all"'),
	(129, 'taxi', 2, 'unskilled', 'Amateur Driver', 12000, '{"decals_2":0,"bproof_1":0,"chain_1":35,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":3,"bags_1":0,"tshirt_1":160,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":10,"bags_2":0,"bproof_2":0,"torso_1":112,"decals_1":0,"helmet_2":0}', '{}', '"all"', '["taxi"]'),
	(130, 'taxi', 3, 'driveriii', 'Linear Driver', 14000, '{"decals_2":0,"bproof_1":0,"chain_1":35,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":0,"bags_1":0,"tshirt_1":160,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":8,"tshirt_2":0,"chain_2":7,"bags_2":0,"bproof_2":0,"torso_1":112,"decals_1":0,"helmet_2":0}', '{}', '"all"', '["taxi","taxi2"]'),
	(131, 'taxi', 4, 'driverii', 'Taxi Driver', 16000, '{"decals_2":0,"bproof_1":0,"chain_1":35,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":2,"bags_1":0,"tshirt_1":160,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":3,"bags_2":0,"bproof_2":0,"torso_1":112,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(132, 'taxi', 5, 'driveri', 'Classic Driver', 18000, '{"decals_2":0,"bproof_1":0,"chain_1":35,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":3,"bags_1":0,"tshirt_1":160,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":9,"bags_2":0,"bproof_2":0,"torso_1":207,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(133, 'taxi', 6, 'trainer', 'Professional Driver', 20000, '{"decals_2":0,"bproof_1":0,"chain_1":31,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":30,"helmet_1":-1,"torso_2":1,"bags_1":0,"tshirt_1":146,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":2,"bags_2":0,"bproof_2":0,"torso_1":11,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(134, 'taxi', 7, 'master', 'Taxi Specialist', 22000, '{"decals_2":0,"bproof_1":0,"chain_1":27,"shoes_1":10,"glasses_2":5,"shoes_2":0,"arms":26,"helmet_1":-1,"torso_2":2,"bags_1":0,"tshirt_1":33,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":0,"tshirt_2":0,"chain_2":1,"bags_2":0,"bproof_2":0,"torso_1":118,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(135, 'taxi', 8, 'boss', 'Taxi Manager', 25000, '{"decals_2":0,"bproof_1":0,"chain_1":32,"shoes_1":35,"glasses_2":5,"shoes_2":3,"arms":24,"helmet_1":-1,"torso_2":5,"bags_1":0,"tshirt_1":35,"glasses_1":5,"pants_1":62,"mask_1":8,"mask_2":0,"pants_2":8,"tshirt_2":0,"chain_2":5,"bags_2":0,"bproof_2":0,"torso_1":118,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(136, 'taxi', 9, 'boss', 'Deputy Chief', 28000, '{"decals_2":0,"bproof_1":0,"chain_1":12,"shoes_1":10,"glasses_2":3,"shoes_2":0,"arms":24,"helmet_1":-1,"torso_2":0,"bags_1":-1,"tshirt_1":152,"glasses_1":5,"pants_1":62,"mask_1":0,"mask_2":0,"pants_2":0,"tshirt_2":10,"chain_2":0,"bags_2":0,"bproof_2":0,"torso_1":118,"decals_1":0,"helmet_2":0}', '{}', '"all"', '"all"'),
	(137, 'taxi', 10, 'boss', 'Chief', 30000, '{"decals_2":0,"bproof_1":0,"chain_1":10,"shoes_1":35,"glasses_2":3,"shoes_2":3,"arms":26,"helmet_1":68,"torso_2":0,"bags_1":-1,"tshirt_1":23,"glasses_1":5,"pants_1":62,"mask_1":13,"mask_2":8,"pants_2":8,"tshirt_2":3,"chain_2":0,"bags_2":0,"bproof_2":0,"torso_1":57,"decals_1":0,"helmet_2":4}', '{}', '"all"', '"all"'),
	(138, 'offtaxi', 1, 'intern', 'Intern', 0, '{}', '{}', '"all"', '"all"'),
	(139, 'offtaxi', 2, 'unskilled', 'Unskilled', 0, '{}', '{}', '"all"', '"all"'),
	(140, 'offtaxi', 3, 'driveriii', 'Driver III', 0, '{}', '{}', '"all"', '"all"'),
	(141, 'offtaxi', 4, 'driverii', 'Driver II', 0, '{}', '{}', '"all"', '"all"'),
	(142, 'offtaxi', 5, 'driveri', 'Driver I', 0, '{}', '{}', '"all"', '"all"'),
	(143, 'offtaxi', 6, 'trainer', 'Trainer', 0, '{}', '{}', '"all"', '"all"'),
	(144, 'offtaxi', 7, 'master', 'Master', 0, '{}', '{}', '"all"', '"all"'),
	(145, 'offtaxi', 8, 'boss', 'Adminstor', 0, '{}', '{}', '"all"', '"all"'),
	(146, 'offtaxi', 9, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(147, 'offtaxi', 10, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"'),
	(148, 'fbi', 1, 'agent', 'Agent', 20000, '{"mask_2":0,"torso_2":2,"glasses_2":3,"pants_2":3,"bproof_2":0,"tshirt_1":2,"chain_1":8,"shoes_2":0,"glasses_1":5,"decals_1":0,"pants_1":62,"bags_2":0,"arms":24,"torso_1":100,"helmet_2":0,"tshirt_2":0,"shoes_1":10,"decals_2":0,"helmet_1":-1,"bproof_1":86,"mask_1":8,"chain_2":0,"bags_1":0}', '{}', '"all"', '"all"'),
	(149, 'fbi', 2, 'specialagent', 'Special Agent', 25000, '{"bproof_1":54,"chain_1":0,"mask_1":8,"shoes_2":0,"pants_1":62,"glasses_1":2,"tshirt_2":0,"pants_2":0,"torso_2":0,"helmet_1":139,"shoes_1":10,"chain_2":0,"bags_1":0,"glasses_2":0,"helmet_2":7,"decals_2":0,"bags_2":0,"mask_2":0,"bproof_2":0,"torso_1":398,"decals_1":0,"tshirt_1":31,"arms":16}', '{}', '"all"', '"all"'),
	(150, 'fbi', 3, 'boss', 'Deputy Dirctor', 30000, '{"mask_2":5,"torso_2":2,"glasses_2":3,"pants_2":0,"bproof_2":0,"tshirt_1":22,"chain_1":8,"shoes_2":1,"glasses_1":5,"decals_1":0,"pants_1":62,"bags_2":0,"arms":24,"torso_1":12,"helmet_2":0,"tshirt_2":0,"shoes_1":71,"decals_2":0,"helmet_1":-1,"bproof_1":96,"mask_1":9,"chain_2":0,"bags_1":-1}', '{}', '"all"', '"all"'),
	(151, 'fbi', 4, 'boss', 'Dirctor', 45000, '{"mask_2":2,"torso_2":0,"glasses_2":2,"pants_2":0,"bproof_2":0,"tshirt_1":10,"chain_1":29,"shoes_2":0,"glasses_1":4,"decals_1":0,"pants_1":16,"bags_2":0,"arms":24,"torso_1":32,"helmet_2":7,"tshirt_2":0,"shoes_1":10,"decals_2":0,"helmet_1":139,"bproof_1":0,"mask_1":9,"chain_2":1,"bags_1":0}', '{}', '"all"', '"all"'),
	(152, 'weazel', 1, 'intern', 'Intern', 10000, '{}', '{}', '"all"', '"all"'),
	(153, 'weazel', 2, 'unskilled', 'Unskilled', 12000, '{}', '{}', '"all"', '"all"'),
	(154, 'weazel', 3, 'photographer', 'Photographer', 14000, '{}', '{}', '"all"', '"all"'),
	(155, 'weazel', 4, 'cameraman', 'Cameraman', 16000, '{}', '{}', '"all"', '"all"'),
	(156, 'weazel', 5, 'reporter', 'Reporter', 20000, '{}', '{}', '"all"', '"all"'),
	(157, 'weazel', 6, 'boss', 'Adminstor', 24000, '{}', '{}', '"all"', '"all"'),
	(158, 'weazel', 7, 'boss', 'Deputy Chief', 28000, '{}', '{}', '"all"', '"all"'),
	(159, 'weazel', 8, 'boss', 'Chief', 30000, '{}', '{}', '"all"', '"all"'),
	(160, 'offweazel', 1, 'intern', 'Intern', 0, '{}', '{}', '"all"', '"all"'),
	(161, 'offweazel', 2, 'unskilled', 'Unskilled', 0, '{}', '{}', '"all"', '"all"'),
	(162, 'offweazel', 3, 'photographer', 'Photographer', 0, '{}', '{}', '"all"', '"all"'),
	(163, 'offweazel', 4, 'cameraman', 'Cameraman', 0, '{}', '{}', '"all"', '"all"'),
	(164, 'offweazel', 5, 'reporter', 'Reporter', 0, '{}', '{}', '"all"', '"all"'),
	(165, 'offweazel', 6, 'boss', 'Adminstor', 0, '{}', '{}', '"all"', '"all"'),
	(166, 'offweazel', 7, 'boss', 'Deputy Chief', 0, '{}', '{}', '"all"', '"all"'),
	(167, 'offweazel', 8, 'boss', 'Chief', 0, '{}', '{}', '"all"', '"all"');

-- Dumping structure for table greencity.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.lapraces: ~0 rows (approximately)

-- Dumping structure for table greencity.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.licenses: ~8 rows (approximately)
INSERT INTO `licenses` (`type`, `label`) VALUES
	('aircraft', 'Aircraft License'),
	('boat', 'Boat License'),
	('boating', 'Boating License'),
	('dmv', 'Ayin Naame'),
	('drive', 'Govahiname Mashin'),
	('drive_bike', 'Govahiname Motor'),
	('drive_truck', 'Govahiname Kamiyon'),
	('weapon', 'Mojavez Aslahe');

-- Dumping structure for table greencity.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `idSteam` varchar(255) NOT NULL,
  `dad` int(11) NOT NULL DEFAULT 0,
  `mum` int(11) NOT NULL DEFAULT 0,
  `dadmumpercent` int(11) NOT NULL DEFAULT 0,
  `skinton` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `acne` int(11) NOT NULL DEFAULT 0,
  `skinproblem` int(11) NOT NULL DEFAULT 0,
  `freckle` int(11) NOT NULL DEFAULT 0,
  `wrinkle` int(11) NOT NULL DEFAULT 0,
  `wrinkleopacity` int(11) NOT NULL DEFAULT 0,
  `eyebrow` int(11) NOT NULL DEFAULT 0,
  `eyebrowopacity` int(11) NOT NULL DEFAULT 0,
  `beard` int(11) NOT NULL DEFAULT 0,
  `beardopacity` int(11) NOT NULL DEFAULT 0,
  `beardcolor` int(11) NOT NULL DEFAULT 0,
  `hair` int(11) NOT NULL DEFAULT 0,
  `hairtext` int(11) NOT NULL DEFAULT 0,
  `torso` int(11) NOT NULL DEFAULT 0,
  `torsotext` int(11) NOT NULL DEFAULT 0,
  `leg` int(11) NOT NULL DEFAULT 0,
  `legtext` int(11) NOT NULL DEFAULT 0,
  `shoes` int(11) NOT NULL DEFAULT 0,
  `shoestext` int(11) NOT NULL DEFAULT 0,
  `accessory` int(11) NOT NULL DEFAULT 0,
  `accessorytext` int(11) NOT NULL DEFAULT 0,
  `undershirt` int(11) NOT NULL DEFAULT 0,
  `undershirttext` int(11) NOT NULL DEFAULT 0,
  `torso2` int(11) NOT NULL DEFAULT 0,
  `torso2text` int(11) NOT NULL DEFAULT 0,
  `prop_hat` int(11) NOT NULL DEFAULT 0,
  `prop_hat_text` int(11) NOT NULL DEFAULT 0,
  `prop_glasses` int(11) NOT NULL DEFAULT 0,
  `prop_glasses_text` int(11) NOT NULL DEFAULT 0,
  `prop_earrings` int(11) NOT NULL DEFAULT 0,
  `prop_earrings_text` int(11) NOT NULL DEFAULT 0,
  `prop_watches` int(11) NOT NULL DEFAULT 0,
  `prop_watches_text` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table greencity.outfits: ~0 rows (approximately)

-- Dumping structure for table greencity.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.owned_properties: ~1 rows (approximately)

-- Dumping structure for table greencity.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `vehicle` longtext COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT 'car',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `job` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `modelname` varchar(150) COLLATE utf8_persian_ci DEFAULT NULL,
  `WantedLevel` text COLLATE utf8_persian_ci DEFAULT 'standard',
  `Profile_Pic` text COLLATE utf8_persian_ci DEFAULT 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png',
  `carseller` int(11) DEFAULT 0,
  `gang` text COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.owned_vehicles: ~21 rows (approximately)
INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `stored`, `job`, `modelname`, `WantedLevel`, `Profile_Pic`, `carseller`, `gang`) VALUES
	('vikings', 'HJT 8481', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":1,"modWindows":-1,"plate":"HJT 8481","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":1,"modDoorSpeaker":-1,"modSeats":-1,"windows":[false,false,false,false,false,false,false,false,false,false,false,false,false],"dirtLevel":0.0019722925499,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":0,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":6,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":86520421,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":111,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":5,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":156,"modHood":-1,"modDashboard":-1,"color2":38,"modHydrolic":-1,"fuelLevel":64.95500183105469,"dashColor":111,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('vikings', 'BPY 9157', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":1,"modWindows":-1,"plate":"BPY 9157","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modSeats":-1,"windows":[false,false,false,false,false,false,false,false,false,false,false,false,false],"dirtLevel":14.00270366668701,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":0,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":6,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":86520421,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":111,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":5,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":156,"modHood":-1,"modDashboard":-1,"color2":38,"modHydrolic":-1,"fuelLevel":31.92500495910644,"dashColor":111,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('vikings', 'JHW 6094', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":2,"modWindows":-1,"plate":"JHW 6094","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modSeats":-1,"windows":[1,1,1,1,1,1,1,false,false,false,false,false,false],"dirtLevel":3.00526404380798,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":0,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":0,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":-1372848492,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":0,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":7,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":156,"modHood":-1,"modDashboard":-1,"color2":2,"modHydrolic":-1,"fuelLevel":69.68000793457031,"dashColor":0,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('vikings', 'KDR 4376', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":2,"modWindows":-1,"plate":"KDR 4376","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modSeats":-1,"windows":[1,1,1,1,1,1,1,false,false,false,false,false,false],"dirtLevel":3.00136876106262,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":3,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":0,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":-1372848492,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":0,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":7,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":156,"modHood":-1,"modDashboard":-1,"color2":2,"modHydrolic":-1,"fuelLevel":59.32000732421875,"dashColor":0,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('vikings', 'GIU 3316', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":12,"modWindows":-1,"plate":"GIU 3316","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modSeats":-1,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"dirtLevel":8.0,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":0,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":0,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":-2107990196,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":0,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":13,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":0,"modHood":-1,"modDashboard":-1,"color2":12,"modHydrolic":-1,"fuelLevel":35.09500503540039,"dashColor":0,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('vikings', 'ZJH 2970', '{"modRightFender":-1,"tyreSmokeColor":[255,255,255],"color1":12,"modWindows":-1,"plate":"ZJH 2970","modArchCover":-1,"modSteeringWheel":-1,"modAirFilter":-1,"modSpeakers":-1,"modRoof":-1,"bodyHealth":1000.0,"windowTint":-1,"modStruts":-1,"modFrame":-1,"modPlateHolder":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modSeats":-1,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"dirtLevel":8.00261211395263,"modLivery":-1,"modDial":-1,"modTrimA":-1,"plateIndex":0,"modFender":-1,"modHorns":-1,"modAPlate":-1,"wheels":0,"modGrille":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modXenon":false,"engineHealth":1000.0,"modTurbo":false,"modFrontBumper":-1,"modTrunk":-1,"health":1000,"modBackWheels":-1,"modVanityPlate":-1,"modEngine":-1,"doors":[false,false,false,false,false,false],"model":-2107990196,"modSpoilers":-1,"modExhaust":-1,"modBrakes":-1,"modAerials":-1,"interiorColor":0,"neonColor":[255,0,255],"modFrontWheels":-1,"modRearBumper":-1,"modArmor":-1,"tyres":[false,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modTank":-1,"modEngineBlock":-1,"pearlescentColor":13,"modSideSkirt":-1,"modTransmission":-1,"xenonColor":255,"modShifterLeavers":-1,"wheelColor":0,"modHood":-1,"modDashboard":-1,"color2":12,"modHydrolic":-1,"fuelLevel":76.98001861572266,"dashColor":0,"modOrnaments":-1}', 'car', 1, 'gang', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000013dc12c8c', 'QTW 2464', '{"modDoorSpeaker":-1,"interiorColor":3,"modExhaust":-1,"modTrimA":-1,"modPlateHolder":-1,"modWindows":-1,"modDial":-1,"modTurbo":false,"modAPlate":-1,"modGrille":-1,"windows":[1,1,1,false,false,false,1,false,false,false,false,false,false],"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modBackWheels":-1,"modRightFender":-1,"modHorns":-1,"health":897,"modSpoilers":-1,"modBrakes":-1,"modSideSkirt":-1,"modFrame":-1,"engineHealth":639.5625,"modSteeringWheel":-1,"modFrontWheels":-1,"pearlescentColor":6,"modShifterLeavers":-1,"wheelColor":0,"doors":[false,false,false,false,false,false],"dashColor":156,"wheels":1,"modArmor":-1,"modTrimB":-1,"modTank":-1,"modSmokeEnabled":1,"plate":"QTW 2464","modHydrolic":-1,"color1":29,"modFender":-1,"modRoof":-1,"modHood":-1,"bodyHealth":897.9168701171875,"plateIndex":0,"modSuspension":-1,"tyres":[false,false,false,false,false,false,false],"modTransmission":-1,"modAirFilter":-1,"neonEnabled":[false,false,false,false],"modAerials":-1,"color2":29,"modEngine":1,"modTrunk":-1,"modStruts":-1,"windowTint":-1,"modSeats":-1,"fuelLevel":24.00500297546386,"dirtLevel":1.79437386989593,"modFrontBumper":-1,"modLivery":-1,"modXenon":false,"modOrnaments":-1,"neonColor":[255,0,255],"tyreSmokeColor":[255,255,255],"model":1644055914,"modEngineBlock":-1,"modSpeakers":-1,"modArchCover":-1,"xenonColor":255,"modVanityPlate":-1,"modRearBumper":-1,"modDashboard":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:110000144eefef0', 'WFU 8365', '{"tyres":[false,false,false,false,false,false,false],"tyreSmokeColor":[255,255,255],"neonColor":[0,255,0],"modSpeakers":-1,"modBackWheels":-1,"modFrontBumper":3,"modRoof":-1,"modDashboard":-1,"modAerials":-1,"modStruts":-1,"engineHealth":998.49853515625,"modHood":0,"modHorns":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modGrille":-1,"modHydrolic":-1,"modSeats":-1,"modTank":-1,"modEngineBlock":-1,"modTrimB":-1,"windowTint":1,"modFender":3,"modPlateHolder":-1,"modArchCover":-1,"modVanityPlate":-1,"modSteeringWheel":-1,"modArmor":4,"windows":[false,1,1,false,false,1,1,false,false,false,false,false,false],"modTurbo":false,"modEngine":3,"modFrontWheels":-1,"modFrame":2,"fuelLevel":38.24000930786133,"modShifterLeavers":-1,"modSmokeEnabled":1,"modOrnaments":-1,"modRearBumper":0,"doors":[false,false,false,false,false,false],"xenonColor":4,"wheelColor":0,"neonEnabled":[1,1,1,1],"modTrimA":-1,"modExhaust":2,"model":1644055914,"modAirFilter":-1,"modSuspension":0,"modSideSkirt":3,"pearlescentColor":125,"modAPlate":-1,"plate":"WFU 8365","modLivery":2,"modDial":-1,"color1":12,"modXenon":1,"modBrakes":2,"modRightFender":0,"bodyHealth":998.75,"dashColor":156,"modDoorSpeaker":-1,"health":998,"interiorColor":3,"color2":59,"modWindows":-1,"dirtLevel":1.43607258796691,"plateIndex":1,"wheels":1,"modTrunk":-1,"modSpoilers":-1,"modTransmission":2}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000011844f231', 'GSC 0454', '{"modFrontWheels":7,"modSpeakers":-1,"health":968,"modRightFender":-1,"modExhaust":-1,"modHorns":-1,"modAPlate":-1,"dashColor":0,"modRoof":-1,"modSpoilers":-1,"modAirFilter":-1,"color2":2,"modDashboard":-1,"model":1777363799,"modSeats":-1,"neonEnabled":[false,false,false,false],"modLivery":-1,"modTrimB":-1,"xenonColor":255,"plate":"GSC 0454","modDial":-1,"modSmokeEnabled":1,"modStruts":-1,"windowTint":1,"modPlateHolder":-1,"modArchCover":-1,"modTrunk":-1,"tyreSmokeColor":[255,255,255],"dirtLevel":9.232469011521971e-8,"modFrontBumper":-1,"modSuspension":3,"modSideSkirt":-1,"wheels":2,"modVanityPlate":-1,"color1":12,"modTransmission":2,"modEngine":3,"modHydrolic":-1,"modTurbo":false,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modXenon":false,"modDoorSpeaker":-1,"interiorColor":0,"modFender":-1,"modBrakes":2,"modAerials":-1,"modHood":-1,"modGrille":-1,"modTank":-1,"wheelColor":27,"modFrame":-1,"modTrimA":-1,"modOrnaments":-1,"modEngineBlock":-1,"modArmor":-1,"pearlescentColor":83,"neonColor":[255,0,255],"modWindows":-1,"plateIndex":0,"modSteeringWheel":-1,"modShifterLeavers":-1,"modRearBumper":-1,"modBackWheels":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:110000144792e0f', 'DHK 6484', '{"modFrontWheels":10,"modSpeakers":-1,"wheelColor":156,"modRightFender":-1,"modStruts":-1,"tyreSmokeColor":[112,128,144],"model":-1566741232,"modArchCover":-1,"dirtLevel":9.78208541870117,"wheels":2,"modSteeringWheel":-1,"modPlateHolder":-1,"modDashboard":-1,"modSpoilers":0,"plate":"DHK 6484","modFrame":1,"modExhaust":-1,"modTrimB":-1,"xenonColor":2,"interiorColor":0,"modVanityPlate":-1,"modSmokeEnabled":1,"modLivery":-1,"modBrakes":-1,"modRoof":-1,"modTransmission":-1,"modTrunk":-1,"modXenon":1,"neonEnabled":[false,false,false,false],"modSeats":-1,"modSuspension":-1,"modBackWheels":-1,"modDoorSpeaker":-1,"dashColor":0,"windowTint":-1,"modSideSkirt":-1,"modEngine":-1,"modHydrolic":-1,"modTurbo":false,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modFrontBumper":-1,"modHorns":0,"health":1000,"color1":3,"modFender":-1,"modAerials":-1,"color2":3,"modGrille":1,"modHood":-1,"modTank":-1,"modAirFilter":-1,"modTrimA":-1,"modOrnaments":-1,"modEngineBlock":-1,"modArmor":-1,"pearlescentColor":134,"neonColor":[255,0,255],"modWindows":-1,"plateIndex":0,"modAPlate":-1,"modShifterLeavers":-1,"modRearBumper":-1,"modDial":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014771fef7', 'KKH 7586', '{"windowTint":1,"modTrimB":-1,"wheelColor":0,"modOrnaments":-1,"modTurbo":false,"modPlateHolder":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modFrontBumper":-1,"modSeats":-1,"modAirFilter":-1,"modGrille":-1,"wheels":0,"modFender":-1,"modBrakes":-1,"pearlescentColor":78,"fuelLevel":76.80999755859375,"modHood":-1,"modSpoilers":-1,"modVanityPlate":-1,"modTrimA":-1,"dashColor":0,"modSuspension":-1,"modRearBumper":-1,"modXenon":false,"color1":22,"neonEnabled":[false,false,false,false],"doors":[false,false,false,false,1,false],"plateIndex":1,"modDashboard":-1,"modAPlate":-1,"engineHealth":911.0,"modSpeakers":-1,"model":1348744438,"modLivery":-1,"modTrunk":-1,"modBackWheels":-1,"tyreSmokeColor":[255,255,255],"modWindows":-1,"color2":0,"interiorColor":0,"modSmokeEnabled":1,"modFrame":-1,"modArchCover":-1,"modExhaust":-1,"xenonColor":255,"dirtLevel":7.00026369094848,"neonColor":[255,0,255],"modTank":-1,"modHorns":1,"bodyHealth":928.0,"modAerials":-1,"modHydrolic":-1,"modShifterLeavers":-1,"plate":"KKH 7586","modArmor":-1,"modSteeringWheel":-1,"modEngineBlock":-1,"modRightFender":-1,"modRoof":-1,"tyres":[false,false,false,false,false,false,false],"health":880,"modEngine":3,"modDoorSpeaker":-1,"modDial":-1,"modSideSkirt":-1,"modTransmission":0,"modStruts":-1,"windows":[1,1,1,1,1,1,1,false,false,false,false,false,false],"modFrontWheels":1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:110000144eefef0', '00VC0563', '{"tyres":[false,false,false,false,false,false,false],"tyreSmokeColor":[255,255,255],"neonColor":[255,0,255],"modSpeakers":-1,"modBackWheels":-1,"modFrontBumper":-1,"modRoof":-1,"modDashboard":-1,"modAerials":-1,"modStruts":-1,"engineHealth":999.09912109375,"modHood":-1,"modHorns":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modGrille":-1,"modHydrolic":-1,"modSeats":-1,"modTank":-1,"modEngineBlock":-1,"modTrimB":-1,"windowTint":4,"modFender":-1,"modPlateHolder":-1,"modArchCover":-1,"modVanityPlate":-1,"modSteeringWheel":-1,"modArmor":0,"windows":[1,false,false,false,false,1,1,false,false,false,false,false,false],"modTurbo":false,"modEngine":3,"modFrontWheels":-1,"modFrame":-1,"fuelLevel":28.7850112915039,"modShifterLeavers":-1,"modSmokeEnabled":1,"modOrnaments":-1,"modRearBumper":-1,"doors":[false,false,false,false,false,false],"xenonColor":255,"wheelColor":112,"neonEnabled":[false,false,false,false],"modTrimA":-1,"modExhaust":-1,"model":1034187331,"modAirFilter":-1,"modSuspension":-1,"modSideSkirt":-1,"pearlescentColor":18,"modAPlate":-1,"plate":"00VC0563","modLivery":-1,"modDial":-1,"color1":21,"modXenon":false,"modBrakes":2,"modRightFender":-1,"bodyHealth":999.25,"dashColor":65,"modDoorSpeaker":-1,"health":999,"interiorColor":33,"color2":33,"modWindows":-1,"dirtLevel":0.66936457157135,"plateIndex":0,"wheels":7,"modTrunk":-1,"modSpoilers":-1,"modTransmission":2}', 'car', 1, NULL, NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'KLO 8242', '{"modTrimA":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,1,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":951,"modSideSkirt":-1,"modEngine":-1,"plateIndex":0,"modHorns":-1,"modSuspension":-1,"dirtLevel":5.00000953674316,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":4,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"KLO 8242","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":111,"modAirFilter":-1,"model":-808831384,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":0,"modDial":-1,"wheels":3,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'AIA 7482', '{"windowTint":-1,"modTrimB":-1,"wheelColor":156,"modOrnaments":-1,"modTurbo":false,"bodyHealth":913.0,"modTransmission":-1,"modFrontBumper":-1,"modSeats":-1,"modAirFilter":-1,"modGrille":-1,"wheels":3,"modFender":-1,"modBrakes":-1,"pearlescentColor":111,"fuelLevel":45.64502334594726,"modHood":-1,"modSpoilers":-1,"modVanityPlate":-1,"modTrimA":-1,"modEngine":1,"modSuspension":-1,"modRearBumper":-1,"modXenon":false,"color1":5,"neonEnabled":[false,false,false,false],"doors":[false,false,false,false,false,false],"plateIndex":0,"modDashboard":-1,"modAPlate":-1,"engineHealth":654.3399658203125,"modSpeakers":-1,"model":-808831384,"modLivery":-1,"modTrunk":-1,"modBackWheels":-1,"tyreSmokeColor":[255,255,255],"modWindows":-1,"color2":0,"interiorColor":0,"modSmokeEnabled":1,"modFrame":-1,"modArchCover":-1,"modExhaust":-1,"xenonColor":255,"dirtLevel":10.05421257019043,"modArmor":-1,"modTank":-1,"modHorns":-1,"neonColor":[255,0,255],"modSideSkirt":-1,"modHydrolic":-1,"plate":"AIA 7482","modShifterLeavers":-1,"modPlateHolder":-1,"modSteeringWheel":-1,"modDial":-1,"modRightFender":-1,"modRoof":-1,"tyres":[false,false,false,false,false,false,false],"health":913,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,1,false],"modDoorSpeaker":-1,"modEngineBlock":-1,"modAerials":-1,"dashColor":0,"modFrontWheels":-1,"windows":[1,1,1,1,false,1,false,false,false,false,false,false,false],"modStruts":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'LHS 4951', '{"modTrimA":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":970,"modSideSkirt":-1,"modEngine":-1,"plateIndex":3,"modHorns":-1,"modSuspension":-1,"dirtLevel":6.0000033378601,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":96,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"LHS 4951","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":0,"modAirFilter":-1,"model":-1205801634,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":95,"modDial":-1,"wheels":1,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'FKD 1875', '{"modTrimA":-1,"extraEnabled":[false,false,false,false,false,false,false,false,false,false,false,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":986,"modSideSkirt":-1,"modEngine":-1,"plateIndex":0,"modHorns":-1,"modSuspension":-1,"dirtLevel":8.00029373168945,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":87,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"FKD 1875","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":0,"modAirFilter":-1,"model":-1205801634,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":87,"modDial":-1,"wheels":1,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'DAV 7078', '{"modTrimA":-1,"extraEnabled":[1,false,false,false,false,false,false,false,false,false,false,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":1000,"modSideSkirt":-1,"modEngine":-1,"plateIndex":2,"modHorns":-1,"modSuspension":-1,"dirtLevel":13.00011444091796,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":46,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"DAV 7078","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":0,"modAirFilter":-1,"model":1126868326,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":48,"modDial":-1,"wheels":4,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:110000144eefef0', 'SYG 8524', '{"tyres":[false,false,false,false,false,false,false],"tyreSmokeColor":[255,255,255],"neonColor":[255,0,255],"modSpeakers":-1,"modBackWheels":-1,"modFrontBumper":-1,"modRoof":-1,"modDashboard":-1,"modAerials":-1,"modStruts":-1,"engineHealth":1000.0,"modHood":-1,"modHorns":-1,"extraEnabled":[1,false,false,false,false,false,false,false,false,false,1,false],"modGrille":-1,"modHydrolic":-1,"modSeats":-1,"modTank":-1,"modEngineBlock":-1,"modTrimB":-1,"windowTint":-1,"modFender":-1,"modPlateHolder":-1,"modArchCover":-1,"modVanityPlate":-1,"modSteeringWheel":-1,"modArmor":-1,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"modTurbo":false,"modEngine":-1,"modFrontWheels":-1,"modFrame":-1,"fuelLevel":63.96998977661133,"modShifterLeavers":-1,"modSmokeEnabled":1,"modOrnaments":-1,"modRearBumper":-1,"doors":[false,false,false,false,false,false],"xenonColor":255,"wheelColor":156,"neonEnabled":[false,false,false,false],"modTrimA":-1,"modExhaust":-1,"model":1126868326,"modAirFilter":-1,"modSuspension":-1,"modSideSkirt":-1,"pearlescentColor":0,"modAPlate":-1,"plate":"SYG 8524","modLivery":-1,"modDial":-1,"color1":116,"modXenon":false,"modBrakes":-1,"modRightFender":-1,"bodyHealth":1000.0,"dashColor":0,"modDoorSpeaker":-1,"health":1000,"interiorColor":0,"color2":132,"modWindows":-1,"dirtLevel":6.03481531143188,"plateIndex":1,"wheels":4,"modTrunk":-1,"modSpoilers":-1,"modTransmission":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:110000144eefef0', 'PPD 0304', '{"extraEnabled":[1,false,false,false,false,false,false,false,false,false,1,false],"modArchCover":-1,"fuelLevel":77.33000183105469,"color1":21,"modAerials":-1,"modLivery":-1,"modHydrolic":-1,"plate":"PPD 0304","modAPlate":-1,"plateIndex":2,"modExhaust":-1,"modFrontBumper":-1,"modTrimA":-1,"modShifterLeavers":-1,"modSuspension":-1,"modSeats":-1,"modOrnaments":-1,"doors":[false,false,false,false,false,false],"modFrontWheels":-1,"modBackWheels":-1,"modSpeakers":-1,"modBrakes":-1,"wheels":4,"modFender":-1,"modGrille":-1,"windowTint":-1,"modEngine":-1,"modPlateHolder":-1,"modTransmission":-1,"modTrunk":-1,"wheelColor":156,"modRearBumper":-1,"modDial":-1,"modEngineBlock":-1,"modSpoilers":-1,"modHorns":-1,"modArmor":-1,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"modDoorSpeaker":-1,"modSmokeEnabled":1,"modDashboard":-1,"engineHealth":1000.0,"modWindows":-1,"modTrimB":-1,"modHood":-1,"color2":85,"dirtLevel":13.01186180114746,"modTank":-1,"dashColor":0,"bodyHealth":1000.0,"modSideSkirt":-1,"neonEnabled":[false,false,false,false],"modRoof":-1,"modStruts":-1,"neonColor":[255,0,255],"modAirFilter":-1,"modRightFender":-1,"pearlescentColor":22,"modFrame":-1,"tyres":[false,false,false,false,false,false,false],"model":1126868326,"modXenon":false,"tyreSmokeColor":[255,255,255],"modVanityPlate":-1,"modSteeringWheel":-1,"modTurbo":false,"xenonColor":255,"health":1000,"interiorColor":0}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'KMZ 1116', '{"modTrimA":-1,"extraEnabled":[1,false,false,false,false,false,false,false,false,false,false,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":1000,"modSideSkirt":-1,"modEngine":-1,"plateIndex":0,"modHorns":-1,"modSuspension":-1,"dirtLevel":9.00001335144043,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":116,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"KMZ 1116","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":0,"modAirFilter":-1,"model":1126868326,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":132,"modDial":-1,"wheels":4,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL),
	('steam:11000014e7a769f', 'JVY 8210', '{"modTrimA":-1,"extraEnabled":[false,1,false,false,false,false,false,false,false,false,1,false],"modRoof":-1,"modPlateHolder":-1,"modDashboard":-1,"modRightFender":-1,"modHood":-1,"health":997,"modSideSkirt":-1,"modEngine":-1,"plateIndex":0,"modHorns":-1,"modSuspension":-1,"dirtLevel":10.00000762939453,"windowTint":-1,"modStruts":-1,"modShifterLeavers":-1,"modVanityPlate":-1,"interiorColor":0,"modAerials":-1,"modSpeakers":-1,"modTank":-1,"modSmokeEnabled":false,"modFrame":-1,"modExhaust":-1,"color1":123,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modAPlate":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modArmor":-1,"plate":"JVY 8210","modFrontWheels":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"modWindows":-1,"modOrnaments":-1,"pearlescentColor":0,"modAirFilter":-1,"model":1126868326,"modSeats":-1,"modRearBumper":-1,"modFrontBumper":-1,"modArchCover":-1,"modGrille":-1,"modDoorSpeaker":-1,"modTrunk":-1,"modBackWheels":-1,"wheelColor":156,"color2":130,"modDial":-1,"wheels":4,"dashColor":0,"xenonColor":255,"modSteeringWheel":-1,"modTrimB":-1,"modFender":-1,"modSpoilers":-1,"modLivery":-1}', 'car', 1, '', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057354345378742333/5e2fd80e972ad9028a05d63dd17feb98.png', 0, NULL);

-- Dumping structure for table greencity.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.playerstattoos: ~0 rows (approximately)

-- Dumping structure for table greencity.police_ext
CREATE TABLE IF NOT EXISTS `police_ext` (
  `identifier` varchar(50) NOT NULL DEFAULT 'noident',
  `division` varchar(50) DEFAULT 'police',
  PRIMARY KEY (`identifier`) USING BTREE,
  KEY `division` (`division`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.police_ext: ~0 rows (approximately)

-- Dumping structure for table greencity.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.properties: ~42 rows (approximately)
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 1500000),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1500000),
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1500000),
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1500000),
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1500000),
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1500000),
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1500000),
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1500000),
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1500000),
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1500000),
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1500000),
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1500000),
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1500000),
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1500000),
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1500000),
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1500000),
	(28, 'Seductive1Apartment', 'Appartement SÃƒÂ©duisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1500000),
	(29, 'Seductive2Apartment', 'Appartement SÃƒÂ©duisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1500000),
	(30, 'Seductive3Apartment', 'Appartement SÃƒÂ©duisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1500000),
	(31, 'Regal1Apartment', 'Appartement RÃƒÂ©gal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1500000),
	(32, 'Regal2Apartment', 'Appartement RÃƒÂ©gal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1500000),
	(33, 'Regal3Apartment', 'Appartement RÃƒÂ©gal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1500000),
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1500000),
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1500000),
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1500000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);

-- Dumping structure for table greencity.quest
CREATE TABLE IF NOT EXISTS `quest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `daily_data` longtext CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'None',
  `weekly_data` longtext CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'None',
  `bigtime_data` longtext CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'None',
  `quests` longtext CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT 'None',
  `job` tinyint(5) DEFAULT 0,
  `gang` tinyint(5) DEFAULT 0,
  `farm` tinyint(5) DEFAULT 0,
  `give` tinyint(5) DEFAULT 0,
  `sell` tinyint(5) DEFAULT 0,
  `dailyquests` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`,`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.quest: ~0 rows (approximately)

-- Dumping structure for table greencity.question
CREATE TABLE IF NOT EXISTS `question` (
  `identifier` varchar(250) NOT NULL,
  `stats` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.question: ~0 rows (approximately)

-- Dumping structure for table greencity.quest_list
CREATE TABLE IF NOT EXISTS `quest_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  `mission2` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `amount2` int(11) DEFAULT 0,
  `xp` int(11) DEFAULT 0,
  `gangxp` int(11) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `coin` int(11) DEFAULT 0,
  `expire` int(15) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `trigger` longtext CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.quest_list: ~0 rows (approximately)

-- Dumping structure for table greencity.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.rented_vehicles: ~0 rows (approximately)

-- Dumping structure for table greencity.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.shipments: ~0 rows (approximately)

-- Dumping structure for table greencity.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.shops: ~12 rows (approximately)
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(1, 'TwentyFourSeven', 'bread', 400),
	(2, 'TwentyFourSeven', 'water', 500),
	(3, 'RobsLiquor', 'bread', 400),
	(4, 'RobsLiquor', 'water', 500),
	(5, 'LTDgasoline', 'bread', 400),
	(6, 'LTDgasoline', 'water', 500),
	(10, 'LTDgasoline', 'croquettes', 1000),
	(11, 'LTDgasoline', 'croquettes', 100),
	(12, 'LTDgasoline', 'croquettes', 100),
	(13, 'LTDgasoline', 'croquettes', 100);

-- Dumping structure for table greencity.shops2
CREATE TABLE IF NOT EXISTS `shops2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table greencity.shops2: ~15 rows (approximately)
INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
	(1, 'narekshop', 'grip', 5000),
	(2, 'narekshop', 'flashlight', 3000),
	(3, 'narekshop', 'clip', 2500),
	(4, 'narekshop', 'eclip', 2500),
	(5, 'narekshop', 'dclip', 2500),
	(6, 'narekshop', 'net_cracker', 35000),
	(8, 'narekshop', 'headbag', 150000),
	(9, 'narekshop', 'silencer', 3000),
	(10, 'narekshop', 'tintplat', 10000),
	(11, 'narekshop', 'tintorange', 10000),
	(12, 'narekshop', 'tintblack', 10000),
	(13, 'narekshop', 'tintcream', 10000),
	(14, 'narekshop', 'tintpink', 10000),
	(15, 'narekshop', 'tintgold', 10000),
	(16, 'narekshop', 'tintgreen', 10000);

-- Dumping structure for table greencity.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table greencity.society_moneywash: ~0 rows (approximately)

-- Dumping structure for table greencity.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=3803 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.trunk_inventory: ~11 rows (approximately)
INSERT INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
	(3700, 'GWA 7351', '{}', 1),
	(3718, 'AUO 9373', '{}', 1),
	(3732, '  TAXI  ', '{}', 1),
	(3746, '40NTQ660', '{}', 1),
	(3750, 'YQZ 9359', '{}', 1),
	(3751, 'UNU 1152', '{}', 1),
	(3763, 'PQZ 4682', '{}', 1),
	(3764, 'XOE 2306', '{}', 1),
	(3765, 'WFU 8365', '{}', 1),
	(3774, 'GSC 0454', '{"weapons":[{"name":"WEAPON_PISTOL","ammo":137,"label":"Pistol"}]}', 1),
	(3775, 'KKH 7586', '{}', 1);

-- Dumping structure for table greencity.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerName` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `adminpoint` int(11) DEFAULT 0,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT 10000,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `comserv` int(11) DEFAULT 0,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `crafting_level` int(11) NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `gang` varchar(255) COLLATE utf8mb4_bin DEFAULT 'nogang',
  `gang_grade` int(2) DEFAULT 0,
  `division` varchar(2525) COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '{"type": 0, "part": 0, "time": 0, "reason": 0}',
  `solitary` tinyint(1) DEFAULT NULL,
  `cell` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `IsBeingCprd` tinyint(1) NOT NULL DEFAULT 0,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL,
  `quiz` int(1) NOT NULL DEFAULT 0,
  `dateofbirth` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `timePlay` int(11) DEFAULT 0,
  `reports` int(5) NOT NULL DEFAULT 0,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_male` int(11) DEFAULT 1,
  `accessories` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `kits` int(1) NOT NULL DEFAULT 0,
  `phone` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `iban` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `XP` int(11) DEFAULT 0,
  `Level` int(11) DEFAULT 0,
  `hair` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `quest` int(5) NOT NULL DEFAULT 0,
  `hquest` int(5) NOT NULL DEFAULT 0,
  `mquest` int(5) NOT NULL DEFAULT 0,
  `mdw_image` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `mdw_description` longtext COLLATE utf8mb4_bin NOT NULL,
  `mdw_alias` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `mdw_staffdata` longtext COLLATE utf8mb4_bin NOT NULL,
  `callsign` varchar(50) COLLATE utf8mb4_bin DEFAULT '0',
  `aranma` mediumtext COLLATE utf8mb4_bin DEFAULT '[]',
  `photo` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `WantedLevel` text COLLATE utf8mb4_bin DEFAULT 'standard',
  `Profile_Pic` text COLLATE utf8mb4_bin DEFAULT 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png',
  `animations` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.users: ~47 rows (approximately)
INSERT INTO `users` (`id`, `identifier`, `license`, `playerName`, `adminpoint`, `money`, `bank`, `permission_level`, `group`, `comserv`, `position`, `inventory`, `loadout`, `crafting_level`, `gender`, `skin`, `gang`, `gang_grade`, `division`, `job`, `job_grade`, `is_dead`, `last_property`, `jail`, `solitary`, `cell`, `IsBeingCprd`, `status`, `phone_number`, `quiz`, `dateofbirth`, `salary`, `timePlay`, `reports`, `tattoos`, `dob`, `is_male`, `accessories`, `kits`, `phone`, `iban`, `XP`, `Level`, `hair`, `quest`, `hquest`, `mquest`, `mdw_image`, `mdw_description`, `mdw_alias`, `mdw_staffdata`, `callsign`, `aranma`, `photo`, `WantedLevel`, `Profile_Pic`, `animations`) VALUES
	(18186, 'steam:110000144eefef0', 'license:908eb575b10044b45f43f155979834526e18c069', 'Arshia_Mhr', 22, 29000, 4757816, 9, 'user', 0, '{"x":217.46,"y":-794.55,"z":30.79}', '[{"count":0,"item":"lockpick"},{"count":0,"item":"medikit"},{"count":0,"item":"net_cracker"},{"count":0,"item":"radio"},{"count":0,"item":"grip"},{"count":0,"item":"bandage"},{"count":0,"item":"weed"},{"count":0,"item":"wood"},{"count":0,"item":"jewels"},{"count":0,"item":"packaged_plank"},{"count":0,"item":"stone"},{"count":0,"item":"copper"},{"count":0,"item":"iron"},{"count":0,"item":"gold"},{"count":0,"item":"diamond"},{"count":0,"item":"packaged_chicken"},{"count":0,"item":"wool"},{"count":0,"item":"fabric"},{"count":0,"item":"id_card"},{"count":0,"item":"water"},{"count":1,"item":"CarKey|WFU 8365"},{"count":1,"item":"CarKey|00VC0563"},{"count":1,"item":"CarKey|SYG 8524"}]', '[{"components":[],"ammo":0,"name":"WEAPON_FLASHLIGHT","label":"Flashlight"},{"components":["clip_default"],"ammo":76,"name":"WEAPON_PISTOL","label":"Pistol"}]', 50, NULL, '{"glasses_1":0,"chin_1":7.0,"eyebrows_1":24,"eyebrows_5":1.1,"arms_2":0,"helmet_2":6,"tshirt_1":15,"watches_1":-1,"torso_2":0,"sun_2":10,"beard_2":10,"chain_1":0,"bags_1":-1,"cheeks_1":7.1,"makeup_2":10,"cheeks_2":-0.89999999999999,"neck_thickness":-10,"bodyb_3":-1,"chin_3":9.9,"bracelets_2":0,"face_md_weight":50.0,"glasses_2":0,"torso_1":5,"bodyb_1":-1,"moles_2":10,"skin_md_weight":3,"blush_1":-1,"decals_1":0,"lip_thickness":0,"makeup_3":0,"chain_2":0,"bproof_2":0,"shoes_2":0,"bodyb_2":0,"arms":5,"eyebrows_2":10,"nose_2":2.5,"eyebrows_6":1.4,"eye_color":19,"nose_5":0.6,"cheeks_3":9.9,"age_2":10,"mask_2":8,"ears_2":0,"chest_3":0,"hair_color_1":0,"hair_1":0,"beard_3":29,"watches_2":0,"blush_2":10,"ears_1":-1,"blush_3":0,"shoes_1":10,"pants_2":1,"beard_1":8,"blemishes_2":10,"lipstick_1":-1,"chest_2":10,"makeup_4":0,"sex":0,"chest_1":0,"mom":21,"beard_4":0,"jaw_1":9.9,"chin_4":1.5,"decals_2":0,"lipstick_2":10,"nose_6":0,"complexion_1":-1,"pants_1":16,"nose_4":5.1,"eyebrows_3":29,"complexion_2":10,"tshirt_2":0,"bproof_1":0,"lipstick_3":0,"nose_1":3.8,"age_1":-1,"eyebrows_4":0,"nose_3":-0.8,"blemishes_1":-1,"lipstick_4":0,"mask_1":13,"sun_1":-1,"helmet_1":-1,"bags_2":0,"eye_squint":0,"bracelets_1":-1,"moles_1":-1,"hair_2":0,"jaw_2":9.9,"dad":2,"chin_2":0.2,"hair_color_2":0,"makeup_1":-1,"bodyb_4":0}', 'vikings', 1, 'division_4', 'police', 14, 0, NULL, '{"part":0,"time":0,"type":0,"reason":0}', NULL, NULL, 0, '[{"val":595600,"name":"hunger","percent":59.56},{"val":696700,"name":"thirst","percent":69.67},{"val":100,"name":"health","percent":100},{"val":0,"name":"armor","percent":0}]', '8501477044', 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18194, 'steam:110000149c32a28', 'license:cdce5eeb9c1c283ee71e1307bb930a9d01f46b50', 'MRI_Morteza', 0, 35000, 205280, 0, 'user', 0, '{"z":28.57,"y":-1015.8,"x":446.69}', '[{"item":"medikit","count":26},{"item":"bandage","count":28}]', '[{"ammo":246,"components":["clip_default","suppressor"],"name":"WEAPON_PISTOL","label":"Pistol"},{"ammo":238,"components":["clip_default","suppressor"],"name":"WEAPON_SPECIALCARBINE","label":"Special Carbine"},{"ammo":238,"components":["clip_default"],"name":"WEAPON_BULLPUPRIFLE","label":"Bullpup Rifle"}]', 0, NULL, '{"torso_1":53,"complexion_2":10,"chin_3":-2.1,"nose_1":1.7,"bproof_2":0,"lip_thickness":0.89999999999999,"age_2":10,"shoes_2":0,"torso_2":1,"blemishes_2":10,"chin_4":0.2,"lipstick_1":-1,"hair_1":21,"pants_1":47,"eyebrows_2":10,"helmet_2":0,"chin_1":2.0,"beard_3":0,"eyebrows_5":-0.89999999999999,"sun_2":10,"beard_1":20,"skin_md_weight":0,"chain_1":-1,"nose_4":-4.4,"eyebrows_1":30,"blush_3":0,"tshirt_1":15,"jaw_2":3.1,"jaw_1":-6.1,"tshirt_2":0,"makeup_3":0,"bags_1":-1,"arms":1,"moles_1":-1,"age_1":-1,"mask_1":-1,"glasses_1":-1,"bracelets_1":-1,"beard_4":0,"nose_3":-2.4,"bracelets_2":0,"dad":6,"eyebrows_3":0,"cheeks_3":-0.89999999999999,"hair_color_1":0,"bags_2":0,"complexion_1":-1,"moles_2":10,"watches_1":-1,"blush_2":10,"beard_2":10,"makeup_4":0,"sun_1":-1,"eyebrows_4":0,"hair_2":0,"nose_5":-5.4,"helmet_1":-1,"cheeks_1":0.1,"shoes_1":2,"chest_2":10,"pants_2":8,"lipstick_4":0,"mask_2":0,"makeup_1":-1,"watches_2":0,"glasses_2":0,"face_md_weight":35.0,"chest_1":1,"eyebrows_6":-0.6,"nose_2":-2.9,"lipstick_3":0,"chain_2":0,"eye_color":4,"chin_2":-2.4,"hair_color_2":26,"blush_1":-1,"nose_6":3.4,"blemishes_1":-1,"bproof_1":-1,"sex":0,"makeup_2":10,"neck_thickness":-0.8,"cheeks_2":-1.0,"lipstick_2":10,"chest_3":0,"mom":22}', 'nogang', 0, '', 'police', 16, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":38.78,"val":387800},{"name":"thirst","percent":39.085,"val":390850},{"name":"health","percent":50,"val":50},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18196, 'steam:110000145499156', 'license:48dcd6e293933d36f131c4b10db1a4d66a728c31', 'MAMAD_NOT', 0, 5000, 200000, 0, 'user', 0, '{"x":408.92,"y":-976.57,"z":29.42}', '[]', '[]', 0, NULL, '{"lipstick_2":10,"lipstick_3":0,"pants_2":0,"nose_2":0,"watches_1":-1,"arms":1,"makeup_4":0,"chest_1":-1,"beard_4":0,"pants_1":128,"jaw_2":0,"chest_3":0,"bags_1":-1,"torso_2":2,"tshirt_1":11,"bproof_2":0,"eyebrows_1":12,"eye_color":12,"bproof_1":-1,"eyebrows_5":0,"chin_2":0,"helmet_1":-1,"eyebrows_4":0,"makeup_1":-1,"beard_2":10,"glasses_2":0,"beard_3":0,"mask_2":0,"cheeks_2":0,"tshirt_2":0,"eyebrows_6":0,"skin_md_weight":6,"hair_color_2":0,"neck_thickness":0,"lipstick_4":0,"moles_2":10,"blush_3":0,"sun_2":10,"mom":21,"nose_3":0,"nose_6":0,"dad":0,"bracelets_2":0,"glasses_1":-1,"nose_5":0,"watches_2":0,"chain_2":0,"jaw_1":0,"age_2":10,"makeup_3":0,"hair_color_1":0,"hair_2":0,"moles_1":-1,"shoes_1":9,"chin_3":0,"chest_2":10,"cheeks_1":0,"face_md_weight":50.0,"cheeks_3":0,"shoes_2":1,"hair_1":37,"chin_4":0,"torso_1":356,"nose_1":0,"chain_1":-1,"complexion_1":-1,"complexion_2":10,"lipstick_1":-1,"mask_1":-1,"nose_4":0,"helmet_2":0,"lip_thickness":0,"eyebrows_3":0,"age_1":2,"blemishes_1":-1,"sun_1":-1,"beard_1":10,"blemishes_2":10,"bracelets_1":-1,"chin_1":0,"sex":0,"blush_2":10,"blush_1":-1,"bags_2":0,"makeup_2":10,"eyebrows_2":10}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":85.66,"val":856600},{"name":"thirst","percent":89.24499999999999,"val":892450},{"name":"health","percent":100,"val":100},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18197, 'steam:11000014b0fc0b4', 'license:fb59e86710ee7c3fc338b27d5bb6d59b1ef100af', 'meraj_torabi', 0, 10000, 320000, 0, 'user', 0, '{"x":143.58,"y":-941.09,"z":29.84}', '[]', '[{"name":"WEAPON_NIGHTSTICK","ammo":0,"components":[],"label":"Nightstick"},{"name":"WEAPON_PISTOL","ammo":220,"components":["clip_default"],"label":"Pistol"},{"name":"WEAPON_APPISTOL","ammo":220,"components":["clip_default"],"label":"AP Pistol"},{"name":"WEAPON_CARBINERIFLE","ammo":23,"components":["clip_default"],"label":"Carbine Rifle"},{"name":"WEAPON_SNIPERRIFLE","ammo":10,"components":["clip_default","scope"],"label":"Sniper Rifle"}]', 0, NULL, '{"lip_thickness":0,"dad":0,"torso_1":84,"helmet_1":-1,"makeup_1":-1,"tshirt_2":0,"eyebrows_3":0,"nose_6":0,"chin_4":0,"eye_color":0,"hair_color_2":0,"complexion_1":-1,"bags_2":0,"sex":0,"chest_3":0,"chest_2":10,"hair_1":4,"chin_3":0,"age_2":10,"complexion_2":10,"cheeks_3":0,"nose_5":0,"hair_color_1":0,"shoes_2":0,"watches_2":0,"makeup_4":0,"blemishes_1":-1,"jaw_2":0,"moles_1":-1,"makeup_3":0,"chin_2":0,"eyebrows_1":0,"mask_1":-1,"bproof_2":0,"pants_2":5,"blush_1":-1,"shoes_1":9,"makeup_2":10,"helmet_2":0,"chain_1":-1,"chain_2":0,"beard_2":10,"beard_4":0,"nose_3":0,"chin_1":0,"hair_2":0,"tshirt_1":15,"beard_3":0,"glasses_1":-1,"blush_3":0,"mom":21,"arms":1,"eyebrows_6":0,"bracelets_2":0,"face_md_weight":50.0,"nose_4":0,"lipstick_3":0,"cheeks_2":0,"age_1":-1,"neck_thickness":0,"moles_2":10,"lipstick_4":0,"sun_1":-1,"skin_md_weight":6,"pants_1":51,"glasses_2":0,"nose_1":0,"sun_2":10,"eyebrows_2":10,"chest_1":-1,"bproof_1":-1,"beard_1":-1,"bags_1":-1,"jaw_1":0,"bracelets_1":-1,"eyebrows_4":0,"nose_2":0,"lipstick_1":-1,"cheeks_1":0,"blush_2":10,"torso_2":0,"mask_2":0,"blemishes_2":10,"lipstick_2":10,"eyebrows_5":0,"watches_1":-1}', 'nogang', 0, '', 'police', 16, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":712300,"name":"hunger","percent":71.23},{"val":784225,"name":"thirst","percent":78.4225},{"val":100,"name":"health","percent":100},{"val":1,"name":"armor","percent":1}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18198, 'steam:1100001448e7465', 'license:661f44ae69003bc35f88cd97c04e634390acde54', 'Mohammad_Mehdi', 0, 86833, 1435000, 0, 'user', 0, '{"x":218.56,"y":-797.08,"z":30.76}', '[{"count":1,"item":"phone"}]', '[{"label":"Pistol","components":["clip_default"],"name":"WEAPON_PISTOL","ammo":250},{"label":"Taser","components":[],"name":"WEAPON_STUNGUN","ammo":250},{"label":"Assault SMG","components":["clip_default"],"name":"WEAPON_ASSAULTSMG","ammo":236}]', 0, NULL, '{"lipstick_4":0,"helmet_2":0,"hair_color_1":55,"chest_1":-1,"tshirt_2":0,"watches_1":6,"nose_2":0,"chest_2":10,"eyebrows_2":10,"nose_5":0,"moles_2":10,"bproof_1":0,"hair_2":2,"skin_md_weight":6,"blush_2":10,"mask_1":0,"helmet_1":-1,"arms_2":0,"ears_1":-1,"beard_2":10,"pants_2":0,"bproof_2":0,"hair_color_2":5,"blemishes_1":-1,"chin_4":0,"complexion_2":10,"cheeks_1":0,"chin_3":0,"face_1":0,"complexion_1":-1,"sex":0,"eyebrows_3":0,"sun_2":10,"cheeks_3":0,"sun_1":-1,"nose_3":0,"neck_thickness":0,"moles_1":-1,"bracelets_2":0,"chain_1":2,"bodyb_1":-1,"bodyb_2":0,"bodyb_3":-1,"blush_1":-1,"age_1":-1,"jaw_2":0,"age_2":10,"face_md_weight":50.0,"chest_3":0,"eyebrows_6":0,"nose_1":0.4,"makeup_2":10,"skin":12,"makeup_3":0,"jaw_1":0,"nose_4":0,"decals_2":0,"hair_1":50,"mom":21,"bracelets_1":-1,"lipstick_3":0,"blemishes_2":10,"torso_1":12,"watches_2":0,"eyebrows_4":0,"lip_thickness":0,"chin_1":0,"eyebrows_1":0,"shoes_2":0,"eye_squint":0,"face_3":5,"face_2":21,"arms":23,"eye_color":0,"nose_6":0,"beard_3":0,"bodyb_4":0,"makeup_1":-1,"pants_1":62,"makeup_4":0,"beard_4":0,"glasses_1":5,"glasses_2":9,"beard_1":11,"eyebrows_5":0,"dad":0,"shoes_1":10,"mask_2":0,"chin_2":0,"bags_1":-1,"lipstick_1":-1,"decals_1":0,"torso_2":2,"cheeks_2":0,"chain_2":0,"bags_2":0,"blush_3":0,"lipstick_2":10,"ears_2":0,"tshirt_1":18}', 'nogang', 0, 'division_4', 'nojob', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":72.91,"val":729100,"name":"hunger"},{"percent":79.6825,"val":796825,"name":"thirst"},{"percent":50,"val":50,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18199, 'steam:110000144580ce0', 'license:60c2726ea926d4a464e0e4db7211cd17227362ad', 'Anthony_Andersone', 0, 9200, 220000, 0, 'user', 0, '{"z":42.56,"y":-75.73,"x":-416.02}', '[]', '[{"ammo":4500,"components":[],"name":"WEAPON_PETROLCAN","label":"Jerrycan"}]', 0, NULL, '{"beard_4":0,"tshirt_1":15,"shoes_2":0,"makeup_1":-1,"pants_2":0,"beard_2":10,"eye_color":0,"cheeks_3":0,"complexion_1":-1,"beard_3":0,"neck_thickness":0,"age_2":10,"watches_2":0,"eyebrows_5":0,"cheeks_2":0,"sun_2":10,"helmet_2":0,"nose_2":0,"eyebrows_2":10,"jaw_2":0,"eyebrows_4":0,"jaw_1":0,"shoes_1":2,"pants_1":4,"chest_1":-1,"glasses_1":-1,"chin_4":0,"nose_1":0,"blush_3":0,"makeup_4":0,"bproof_2":0,"complexion_2":10,"age_1":-1,"chest_3":0,"lipstick_1":-1,"lipstick_3":0,"bags_1":-1,"nose_5":0,"chin_2":0,"nose_3":0,"bags_2":0,"blush_2":10,"torso_2":0,"makeup_2":10,"hair_color_2":0,"bracelets_1":-1,"eyebrows_1":0,"nose_6":0,"lipstick_2":10,"hair_2":0,"makeup_3":0,"sun_1":-1,"tshirt_2":0,"chin_1":0,"helmet_1":-1,"skin_md_weight":6,"blemishes_1":-1,"eyebrows_6":0,"chest_2":10,"torso_1":17,"mask_1":-1,"lip_thickness":0,"mask_2":0,"hair_1":33,"hair_color_1":27,"face_md_weight":50.0,"chin_3":0,"moles_2":10,"arms":12,"moles_1":-1,"glasses_2":0,"blemishes_2":10,"cheeks_1":0,"chain_1":-1,"dad":0,"beard_1":11,"watches_1":-1,"nose_4":0,"blush_1":-1,"bproof_1":-1,"chain_2":0,"eyebrows_3":0,"sex":0,"bracelets_2":0,"mom":21,"lipstick_4":0}', 'nogang', 0, '', 'police', 1, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":46.28,"val":462800,"name":"hunger"},{"percent":47.21,"val":472100,"name":"thirst"},{"percent":14,"val":14,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18200, 'steam:110000148175754', 'license:b5132086c24fec74e010a45be4180b9bc2eafb42', 'gholam_gholami', 0, 10000, 200000, 0, 'user', 0, '{"z":30.7,"y":-810.18,"x":217.19}', '[]', '[]', 0, NULL, '{"beard_2":10,"tshirt_2":0,"chin_4":0,"beard_3":0,"bproof_2":0,"bproof_1":-1,"cheeks_2":0,"nose_2":0,"mask_1":-1,"lipstick_1":-1,"blemishes_2":10,"makeup_3":0,"tshirt_1":15,"helmet_1":-1,"bags_2":0,"torso_2":1,"hair_1":4,"blemishes_1":-1,"beard_1":-1,"eyebrows_4":0,"makeup_2":10,"helmet_2":0,"age_2":10,"jaw_1":0,"sun_1":-1,"nose_5":0,"glasses_2":0,"lip_thickness":0,"chain_2":0,"chain_1":-1,"nose_4":0,"eyebrows_3":0,"blush_2":10,"chin_3":0,"nose_6":0,"lipstick_4":0,"bags_1":-1,"chest_1":-1,"nose_3":0,"skin_md_weight":6,"jaw_2":0,"arms":1,"blush_1":-1,"chest_2":10,"blush_3":0,"age_1":-1,"dad":0,"cheeks_3":0,"neck_thickness":0,"mom":21,"hair_color_2":0,"makeup_1":-1,"mask_2":0,"bracelets_1":-1,"chin_2":0,"eyebrows_1":0,"shoes_1":2,"pants_1":45,"torso_1":50,"watches_1":-1,"sex":0,"shoes_2":0,"beard_4":0,"bracelets_2":0,"complexion_1":-1,"chin_1":0,"moles_2":10,"glasses_1":-1,"makeup_4":0,"eyebrows_5":0,"hair_2":0,"lipstick_3":0,"cheeks_1":0,"hair_color_1":0,"moles_1":-1,"complexion_2":10,"chest_3":0,"eye_color":0,"eyebrows_2":10,"lipstick_2":10,"sun_2":10,"pants_2":0,"watches_2":0,"nose_1":0,"eyebrows_6":0,"face_md_weight":50.0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":467100,"percent":46.71},{"name":"thirst","val":475325,"percent":47.5325},{"name":"health","val":64,"percent":64},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18201, 'steam:110000155f2b86e', 'license:3bd53f77bc85efdfbc1bf882a1870fff0e5ebb5a', 'sina_sadeghi', 0, 215, 117122, 0, 'user', 0, '{"z":16.29,"x":1445.58,"y":6533.22}', '[{"count":1,"item":"phone"},{"count":1,"item":"radio"},{"count":8,"item":"water"},{"count":4,"item":"vodka"},{"count":4,"item":"bread"}]', '[{"components":["clip_default"],"label":"Pistol","ammo":250,"name":"WEAPON_PISTOL"},{"components":["clip_default"],"label":"Assault SMG","ammo":250,"name":"WEAPON_ASSAULTSMG"}]', 0, NULL, '{"makeup_3":0,"watches_2":0,"age_1":-1,"lipstick_1":-1,"moles_1":-1,"pants_2":0,"decals_2":0,"eyebrows_3":28,"chest_2":10,"beard_4":28,"eye_squint":0,"blush_2":10,"decals_1":0,"sun_2":10,"chest_3":0,"beard_3":28,"nose_5":0,"eyebrows_1":0,"bodyb_1":-1,"lipstick_2":10,"nose_2":0,"chain_2":0,"chin_1":0,"chin_2":0,"eyebrows_6":-0.5,"chest_1":-1,"arms":30,"mom":21,"nose_3":0,"beard_1":8,"sex":0,"dad":17,"torso_2":2,"nose_6":0,"eyebrows_2":10,"nose_1":0.1,"neck_thickness":0,"nose_4":0,"age_2":10,"hair_color_2":26,"complexion_1":-1,"blush_3":0,"chain_1":0,"lipstick_3":0,"chin_4":0,"watches_1":-1,"blemishes_2":10,"eye_color":8,"mask_2":0,"bags_1":0,"tshirt_2":0,"mask_1":-1,"ears_1":11,"shoes_2":3,"shoes_1":51,"moles_2":10,"bodyb_2":0,"makeup_4":0,"face_md_weight":100,"eyebrows_4":28,"bodyb_3":-1,"complexion_2":10,"torso_1":12,"eyebrows_5":-0.5,"lipstick_4":0,"glasses_1":8,"makeup_2":10,"hair_2":0,"hair_1":50,"helmet_2":0,"glasses_2":3,"beard_2":10,"skin_md_weight":12,"helmet_1":-1,"bodyb_4":0,"sun_1":-1,"hair_color_1":28,"bracelets_2":0,"cheeks_1":0,"bproof_2":0,"ears_2":1,"tshirt_1":12,"blush_1":-1,"pants_1":62,"jaw_1":0,"arms_2":0,"bags_2":0,"blemishes_1":-1,"bproof_1":43,"chin_3":0,"jaw_2":0,"cheeks_2":0,"cheeks_3":0,"bracelets_1":-1,"makeup_1":-1,"lip_thickness":0}', 'vikings', 6, '', 'nojob', 0, 0, NULL, '{"time":0,"reason":0,"part":0,"type":0}', NULL, NULL, 0, '[{"val":490900,"percent":49.09,"name":"hunger"},{"val":493175,"percent":49.31749999999999,"name":"thirst"},{"val":50,"percent":50,"name":"health"},{"val":0,"percent":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[{"dlc":"mpbeach_overlays","nameHash":"FM_Hair_Fuzz"}]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18202, 'steam:110000147922f75', 'license:89a377a1797163b276c02f84d9b6849360836f11', 'steven_jonez', 0, 289301, 4466650, 8, 'user', 0, '{"x":-131.64,"y":-640.76,"z":168.82}', '[{"count":1,"item":"clip"},{"count":2,"item":"wool"}]', '[{"label":"Flashlight","components":[],"name":"WEAPON_FLASHLIGHT","ammo":0},{"label":"Pistol","components":["clip_default"],"name":"WEAPON_PISTOL","ammo":201},{"label":"Pistol .50","components":["clip_default"],"name":"WEAPON_PISTOL50","ammo":201},{"label":"Assault SMG","components":["clip_default"],"name":"WEAPON_ASSAULTSMG","ammo":0},{"label":"Sniper Rifle","components":["clip_default","scope"],"name":"WEAPON_SNIPERRIFLE","ammo":241}]', 0, NULL, '{"glasses_2":5,"eyebrows_6":-10,"sex":0,"shoes_2":0,"eyebrows_3":0,"age_2":10,"lipstick_2":10,"pants_1":84,"bracelets_2":0,"neck_thickness":0,"beard_4":0,"cheeks_1":0,"tshirt_1":36,"sun_1":-1,"torso_1":381,"helmet_2":0,"blush_2":10,"jaw_2":0,"sun_2":10,"moles_2":10,"eyebrows_5":0.1,"ears_1":-1,"beard_1":10,"chin_4":0,"moles_1":-1,"nose_5":0,"chest_2":10,"makeup_1":41,"watches_2":0,"bproof_2":0,"arms_2":0,"bodyb_2":0,"eyebrows_4":0,"complexion_2":10,"watches_1":-1,"nose_4":0,"hair_color_1":29,"eyebrows_2":10,"skin_md_weight":0,"hair_color_2":29,"shoes_1":33,"nose_3":0,"cheeks_2":-0.5,"glasses_1":5,"bags_1":0,"jaw_1":0,"blemishes_2":10,"pants_2":2,"torso_2":4,"blush_1":-1,"eyebrows_1":0,"bodyb_3":-1,"chin_2":-0.1,"hair_2":0,"nose_6":0,"chin_3":0,"complexion_1":-1,"blemishes_1":-1,"chest_3":0,"beard_2":10,"bodyb_4":0,"chain_1":31,"dad":6,"cheeks_3":0,"bproof_1":0,"nose_2":0.1,"makeup_3":0,"eye_squint":0,"makeup_2":10,"helmet_1":-1,"lipstick_3":0,"hair_1":10,"ears_2":0,"mom":29,"arms":12,"makeup_4":0,"eye_color":23,"decals_2":0,"bodyb_1":-1,"lipstick_4":0,"bracelets_1":-1,"chest_1":-1,"mask_1":-1,"nose_1":-5.89999999999999,"bags_2":0,"mask_2":0,"tshirt_2":0,"lip_thickness":0,"chin_1":9.9,"age_1":-1,"face_md_weight":100,"lipstick_1":-1,"blush_3":0,"beard_3":0,"chain_2":0,"decals_1":0}', 'nogang', 0, 'division_4', 'police', 14, 0, NULL, '{"type":"Admin","reason":"test","part":0,"time":10', NULL, NULL, 0, '[{"percent":85.2,"val":852000,"name":"hunger"},{"percent":88.9,"val":889000,"name":"thirst"},{"percent":77,"val":77,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, '[{"nameHash":"MP_LUXE_TAT_010_F","Count":1,"collection":"mpluxe2_overlays"},{"nameHash":"MP_MP_Stunt_tat_002_F","Count":1,"collection":"mpstunt_overlays"},{"nameHash":"MP_LUXE_TAT_009_F","Count":1,"collection":"mpluxe_overlays"},{"nameHash":"MP_MP_Stunt_tat_036_F","Count":3,"collection":"mpstunt_overlays"},{"nameHash":"MP_Christmas2017_Tattoo_028_F","Count":3,"collection":"mpchristmas2017_overlays"},{"nameHash":"MP_Christmas2017_Tattoo_017_F","Count":3,"collection":"mpchristmas2017_overlays"}]', NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18203, 'steam:1100001459c8079', 'license:d471ad6db6d42a4cbd0b4cdd51a137151b934509', 'Mahdi_RZL', 0, 4402000, 3, 0, 'user', 0, '{"y":-300.82,"x":-147.7,"z":39.34}', '[]', '[{"ammo":105,"components":["clip_default"],"label":"Pistol .50","name":"WEAPON_PISTOL50"},{"ammo":44,"components":["clip_default"],"label":"Bullpup Rifle","name":"WEAPON_BULLPUPRIFLE"}]', 0, NULL, '{"eyebrows_1":0,"eye_color":0,"shoes_1":75,"ears_1":-1,"mom":21,"beard_4":0,"chain_1":0,"bodyb_4":0,"arms_2":0,"chest_3":0,"sex":0,"hair_1":0,"chin_4":0,"tshirt_2":0,"nose_6":0,"helmet_1":-1,"jaw_2":0,"beard_2":10,"eye_squint":0,"watches_1":-1,"bproof_2":0,"glasses_1":5,"chin_2":0,"blush_3":0,"bracelets_1":-1,"hair_color_1":0,"eyebrows_5":0,"chest_2":10,"cheeks_3":0,"pants_1":49,"neck_thickness":0,"hair_color_2":0,"moles_2":10,"nose_1":0,"skin_md_weight":6,"age_2":10,"cheeks_1":0,"shoes_2":0,"sun_1":-1,"torso_1":89,"mask_1":14,"lipstick_2":10,"jaw_1":0,"hair_2":0,"dad":0,"makeup_4":0,"eyebrows_4":0,"blush_2":10,"complexion_1":-1,"mask_2":11,"nose_2":0,"lipstick_3":0,"blemishes_1":-1,"nose_5":0,"arms":30,"bodyb_3":-1,"cheeks_2":0,"nose_4":0,"watches_2":0,"ears_2":0,"eyebrows_3":0,"bproof_1":0,"helmet_2":0,"decals_1":0,"decals_2":0,"chest_1":-1,"chain_2":0,"bags_2":0,"bags_1":-1,"eyebrows_2":10,"pants_2":2,"beard_3":0,"beard_1":-1,"eyebrows_6":0,"face_md_weight":50.0,"blush_1":-1,"chin_1":0,"age_1":-1,"sun_2":10,"bodyb_1":-1,"moles_1":-1,"bracelets_2":0,"glasses_2":5,"torso_2":7,"lip_thickness":0,"makeup_3":0,"lipstick_1":-1,"lipstick_4":0,"makeup_2":10,"blemishes_2":10,"nose_3":0,"complexion_2":10,"bodyb_2":0,"makeup_1":-1,"chin_3":0,"tshirt_1":89}', 'vikings', 6, '', 'police', 16, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":391000,"percent":39.1,"name":"hunger"},{"val":418250,"percent":41.825,"name":"thirst"},{"val":50,"percent":50,"name":"health"},{"val":0,"percent":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18204, 'steam:11000015503f1f0', 'license:09e2e3114c24d6861094dc2c7d7fe478d8a8b30a', 'nima_mid', 0, 10000, 200000, 0, 'user', 0, '{"z":28.26,"y":-1290.12,"x":116.99}', '[]', '[]', 0, NULL, '{"chin_3":0,"torso_1":286,"pants_2":10,"lipstick_1":-1,"chain_1":-1,"nose_1":0,"mask_2":0,"hair_2":0,"watches_1":-1,"sun_1":-1,"sun_2":10,"blush_3":0,"blush_2":10,"eyebrows_2":10,"mom":21,"nose_6":0,"lipstick_3":0,"lipstick_2":10,"blemishes_1":-1,"blush_1":-1,"moles_2":10,"shoes_2":1,"cheeks_3":0,"sex":0,"beard_2":10,"chest_2":10,"glasses_2":0,"pants_1":162,"age_1":-1,"chain_2":0,"chin_4":0,"tshirt_2":0,"arms":1,"jaw_2":0,"jaw_1":0,"beard_4":0,"mask_1":-1,"lipstick_4":0,"beard_3":0,"face_md_weight":50.0,"skin_md_weight":6,"hair_color_2":0,"cheeks_1":0,"chin_1":0,"eyebrows_1":0,"age_2":10,"blemishes_2":10,"cheeks_2":0,"beard_1":-1,"glasses_1":-1,"bproof_1":-1,"bags_2":0,"dad":0,"hair_1":4,"shoes_1":20,"nose_4":0,"lip_thickness":0,"makeup_4":0,"makeup_1":-1,"nose_3":0,"tshirt_1":11,"chest_3":0,"makeup_2":10,"torso_2":2,"complexion_2":10,"watches_2":0,"chest_1":-1,"moles_1":-1,"complexion_1":-1,"eyebrows_5":0,"nose_2":0,"nose_5":0,"helmet_1":-1,"bags_1":-1,"hair_color_1":0,"bracelets_2":0,"eyebrows_4":0,"helmet_2":0,"eye_color":0,"bracelets_1":-1,"eyebrows_6":0,"bproof_2":0,"eyebrows_3":0,"neck_thickness":0,"makeup_3":0,"chin_2":0}', 'nogang', 0, '', 'slaughterer', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":97.52,"val":975200},{"name":"thirst","percent":98.14,"val":981400},{"name":"health","percent":100,"val":100},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18205, 'steam:110000153d0f087', 'license:8f1158e3ea4b9b3ed1b5efd01951fdc0bf7d4a45', 'Taylor_Swift', 0, 41650, 0, 0, 'user', 0, '{"z":28.44,"y":-598.84,"x":388.17}', '[{"item":"lotteryticket","count":2},{"item":"phone","count":1}]', '[{"name":"WEAPON_KNIFE","ammo":0,"label":"Knife","components":[]},{"name":"WEAPON_PETROLCAN","ammo":70,"label":"Jerrycan","components":[]}]', 0, NULL, '{"chin_3":4.2,"torso_1":57,"pants_2":0,"lipstick_1":5,"chain_1":-1,"nose_1":-10,"mask_2":0,"hair_2":0,"watches_1":-1,"sun_1":-1,"sun_2":10,"eye_color":5,"blush_2":10,"eyebrows_2":10,"mom":45,"nose_6":4.69999999999999,"eyebrows_5":7.4,"bracelets_1":-1,"blemishes_1":-1,"bodyb_4":0,"blush_1":-1,"arms_2":0,"makeup_2":10,"shoes_2":3,"cheeks_3":2.6,"ears_2":0,"sex":1,"beard_2":10,"chest_2":10,"glasses_2":0,"pants_1":26,"age_1":-1,"ears_1":-1,"chain_2":0,"lip_thickness":-6.8,"bproof_2":0,"arms":1,"bodyb_1":-1,"jaw_2":-2.1,"bracelets_2":0,"beard_4":0,"mask_1":-1,"lipstick_4":0,"beard_3":0,"face_md_weight":100,"skin_md_weight":4,"hair_color_2":0,"eye_squint":0,"cheeks_1":5.2,"chin_1":-0.89999999999999,"nose_5":-3.5,"eyebrows_1":3,"eyebrows_3":0,"age_2":10,"blemishes_2":10,"cheeks_2":-10,"helmet_2":0,"beard_1":-1,"moles_1":-1,"bproof_1":0,"bags_2":0,"dad":5,"hair_1":10,"complexion_2":10,"shoes_1":2,"nose_4":-2.6,"lipstick_3":0,"makeup_4":0,"decals_1":2,"nose_3":-9.1,"neck_thickness":-10,"chest_3":0,"tshirt_1":25,"torso_2":0,"eyebrows_4":0,"tshirt_2":0,"chest_1":-1,"bodyb_2":0,"complexion_1":-1,"blush_3":0,"jaw_1":-3.4,"watches_2":0,"helmet_1":-1,"bags_1":-1,"makeup_1":-1,"moles_2":10,"glasses_1":-1,"eyebrows_6":-9.5,"bodyb_3":-1,"chin_4":1.2,"lipstick_2":10,"decals_2":0,"nose_2":-3.2,"hair_color_1":0,"makeup_3":0,"chin_2":-2.3}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":58.25,"val":582500},{"name":"thirst","percent":68.6875,"val":686875},{"name":"health","percent":37,"val":37},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18206, 'steam:1100001321da8c9', 'license:d8ca6180cd4d0700c0d63041e99dd7cdaa94fb8d', 'ABU_LAHAB', 0, 3450, 20000, 0, 'user', 0, '{"z":29.67,"y":-1286.82,"x":287.01}', '[{"item":"phone","count":1}]', '[]', 0, NULL, '{"chin_3":8.7,"torso_1":23,"pants_2":0,"helmet_2":0,"chain_1":-1,"nose_1":5.3,"mask_2":0,"hair_2":0,"eyebrows_3":61,"sun_1":9,"sun_2":10,"blush_3":0,"blush_2":10,"eyebrows_2":10,"watches_2":0,"nose_6":1.6,"eyebrows_5":9.9,"bracelets_1":-1,"blemishes_1":-1,"blush_1":-1,"moles_2":10,"shoes_2":0,"cheeks_3":-8.6,"sex":0,"beard_2":10,"chest_2":10,"glasses_2":0,"pants_1":62,"age_1":-1,"chain_2":0,"lip_thickness":9.9,"bproof_2":0,"arms":4,"jaw_2":7.8,"bracelets_2":0,"makeup_4":0,"mask_1":-1,"lipstick_4":0,"beard_3":53,"eyebrows_6":9.9,"skin_md_weight":3,"hair_color_2":16,"cheeks_1":3.9,"chin_1":9.5,"eyebrows_1":27,"nose_5":0.4,"blemishes_2":10,"cheeks_2":7.1,"beard_1":12,"glasses_1":-1,"bproof_1":-1,"bags_2":0,"dad":5,"hair_1":22,"hair_color_1":24,"nose_4":0,"watches_1":-1,"moles_1":-1,"eyebrows_4":61,"nose_3":-3.7,"tshirt_1":15,"chest_3":0,"face_md_weight":0,"torso_2":0,"makeup_1":-1,"mom":31,"chest_1":12,"lipstick_2":10,"complexion_1":3,"chin_4":-1.9,"eye_color":13,"jaw_1":5.3,"helmet_1":-1,"bags_1":-1,"beard_4":53,"lipstick_1":-1,"shoes_1":10,"tshirt_2":0,"age_2":10,"nose_2":9.9,"lipstick_3":0,"neck_thickness":9.9,"makeup_2":10,"complexion_2":10,"makeup_3":0,"chin_2":8.2}', 'nogang', 0, '', 'fueler', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":58.68,"val":586800},{"name":"thirst","percent":69.01,"val":690100},{"name":"health","percent":50,"val":50},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18207, 'steam:110000153cdf5c8', 'license:8f1158e3ea4b9b3ed1b5efd01951fdc0bf7d4a45', 'ABU_JAHL', 0, 0, 8450, 0, 'user', 0, '{"z":28.92,"y":-1166.74,"x":66.75}', '[{"item":"phone","count":1}]', '[]', 0, NULL, '{"chin_3":0,"torso_1":121,"pants_2":0,"helmet_2":0,"chain_1":-1,"nose_1":0.3,"mask_2":0,"hair_2":0,"watches_1":-1,"sun_1":-1,"sun_2":10,"blush_3":0,"blush_2":10,"eyebrows_2":10,"watches_2":0,"nose_6":0,"eyebrows_5":0.7,"lipstick_2":10,"blemishes_1":-1,"blush_1":-1,"makeup_2":10,"shoes_2":3,"cheeks_3":0,"sex":0,"beard_2":10,"chest_2":10,"glasses_2":0,"pants_1":10,"age_1":-1,"chain_2":0,"chin_4":0,"bproof_2":0,"arms":16,"jaw_2":0,"bracelets_2":0,"beard_4":0,"mask_1":-1,"lipstick_4":0,"beard_3":0,"face_md_weight":100,"skin_md_weight":12,"hair_color_2":0,"cheeks_1":0,"chin_1":0,"eyebrows_1":0,"age_2":10,"blemishes_2":10,"cheeks_2":0,"beard_1":10,"moles_1":-1,"bproof_1":-1,"bags_2":0,"dad":42,"hair_1":14,"shoes_1":58,"nose_4":0.7,"neck_thickness":0,"eyebrows_3":2,"nose_3":0.2,"tshirt_1":15,"chest_3":0,"eye_color":0,"torso_2":0,"lip_thickness":0.6,"lipstick_3":0,"chest_1":6,"bracelets_1":-1,"complexion_1":-1,"complexion_2":10,"tshirt_2":0,"makeup_4":0,"helmet_1":-1,"bags_1":-1,"jaw_1":0,"glasses_1":-1,"lipstick_1":-1,"makeup_1":-1,"eyebrows_6":-10,"nose_5":1.2,"nose_2":0.3,"eyebrows_4":2,"hair_color_1":0,"moles_2":10,"makeup_3":0,"chin_2":0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":60.48,"val":604800},{"name":"thirst","percent":70.36,"val":703600},{"name":"health","percent":82,"val":82},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18208, 'steam:110000133ae7fe5', 'license:8f1158e3ea4b9b3ed1b5efd01951fdc0bf7d4a45', 'aboo_khar', 0, 0, 210000, 0, 'user', 0, '{"z":29.65,"y":-1282.4,"x":288.8}', '[]', '[{"ammo":0,"components":[],"name":"WEAPON_BAT","label":"Bat"},{"ammo":0,"components":[],"name":"WEAPON_CROWBAR","label":"Crowbar"},{"ammo":9,"components":[],"name":"WEAPON_PUMPSHOTGUN","label":"Pump Shotgun"}]', 0, NULL, '{"chin_3":0,"torso_1":356,"pants_2":0,"helmet_2":0,"chain_1":-1,"nose_1":-9.7,"mask_2":0,"hair_2":0,"watches_1":-1,"sun_1":0,"sun_2":10,"blush_3":0,"blush_2":10,"eyebrows_2":10,"watches_2":0,"nose_6":9.9,"eyebrows_5":0,"bracelets_1":-1,"blemishes_1":-1,"blush_1":-1,"moles_2":10,"shoes_2":1,"cheeks_3":0,"sex":0,"beard_2":10,"chest_2":10,"glasses_2":0,"pants_1":128,"age_1":-1,"chain_2":0,"chin_4":0,"tshirt_2":0,"arms":1,"jaw_2":0,"bracelets_2":0,"beard_4":0,"mask_1":-1,"lipstick_4":62,"beard_3":0,"eyebrows_6":0,"skin_md_weight":12,"hair_color_2":0,"cheeks_1":0,"chin_1":0,"eyebrows_1":0,"nose_5":-3.59999999999999,"blemishes_2":10,"cheeks_2":0,"beard_1":23,"glasses_1":-1,"bproof_1":-1,"bags_2":0,"dad":18,"hair_1":22,"hair_color_1":58,"nose_4":6.6,"face_md_weight":100,"makeup_2":10,"nose_3":-1.79999999999999,"neck_thickness":0,"complexion_2":10,"eyebrows_4":0,"torso_2":2,"lipstick_1":-1,"makeup_4":0,"chest_1":11,"chest_3":1,"complexion_1":-1,"bproof_2":0,"shoes_1":9,"makeup_1":22,"helmet_1":-1,"bags_1":-1,"eyebrows_3":0,"moles_1":-1,"jaw_1":0,"lipstick_3":62,"tshirt_1":11,"nose_2":-5.4,"age_2":10,"eye_color":23,"lipstick_2":10,"lip_thickness":0,"makeup_3":0,"chin_2":0}', 'nogang', 0, '', 'fisherman', 0, 1, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":38.78,"val":387800},{"name":"thirst","percent":39.085,"val":390850},{"name":"health","percent":50,"val":50},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18209, 'steam:1100001440d17a7', 'license:d72f4d45859fec53b44993878783f5da5357213b', 'Nima_Rashidi', 0, 1040, 196450, 0, 'user', 0, '{"x":1404.49,"z":114.84,"y":1117.62}', '[{"count":1,"item":"phone"},{"count":1,"item":"radio"},{"count":22,"item":"weed"}]', '[]', 0, NULL, '{"glasses_1":-1,"moles_2":10,"eyebrows_2":10,"makeup_2":10,"nose_4":0,"bracelets_2":0,"eyebrows_4":0,"pants_2":0,"bags_1":-1,"dad":7,"torso_1":50,"eyebrows_5":0,"watches_2":0,"tshirt_2":0,"neck_thickness":0.5,"makeup_3":0,"nose_3":0,"age_1":-1,"hair_color_2":0,"chin_2":0,"eyebrows_1":0,"chain_2":0,"blush_2":10,"jaw_1":0,"sun_2":10,"glasses_2":0,"beard_3":0,"cheeks_2":0,"mask_1":-1,"sex":0,"watches_1":-1,"jaw_2":0,"skin_md_weight":0,"cheeks_3":0,"hair_1":3,"beard_1":10,"lipstick_1":-1,"chain_1":-1,"shoes_1":2,"helmet_2":0,"helmet_1":-1,"tshirt_1":15,"complexion_1":-1,"pants_1":45,"lipstick_2":10,"chest_2":10,"blemishes_1":-1,"mask_2":0,"chin_1":0.2,"sun_1":-1,"blush_1":-1,"lip_thickness":0.8,"blush_3":0,"chest_1":-1,"beard_4":0,"complexion_2":10,"moles_1":-1,"nose_6":0,"makeup_4":0,"bproof_1":-1,"shoes_2":0,"nose_5":0,"torso_2":1,"chin_4":0,"bracelets_1":-1,"hair_color_1":0,"lipstick_3":0,"face_md_weight":80.0,"cheeks_1":1.5,"bags_2":0,"eyebrows_3":0,"chin_3":0,"lipstick_4":0,"nose_2":3.4,"makeup_1":-1,"chest_3":0,"eye_color":6,"arms":1,"bproof_2":0,"eyebrows_6":0,"beard_2":10,"blemishes_2":10,"hair_2":0,"age_2":10,"nose_1":-8.9,"mom":32}', 'vikings', 5, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":275500,"percent":27.55},{"name":"thirst","val":331625,"percent":33.1625},{"name":"health","val":50,"percent":50},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18210, 'steam:1100001161bef71', 'license:d635c638eb8df627aa565e95aa2be225c52ed1ff', 'ashkan_amini', 0, 0, 200000, 0, 'user', 0, '{"z":33.74,"y":-1383.26,"x":240.73}', '[{"item":"phone","count":1}]', '[{"ammo":7,"name":"WEAPON_PUMPSHOTGUN","label":"Pump Shotgun","components":[]}]', 0, NULL, '{"eyebrows_1":2,"moles_2":10,"beard_1":10,"lipstick_4":0,"eye_color":19,"bags_1":0,"bodyb_1":-1,"mask_2":0,"watches_1":-1,"tshirt_1":15,"nose_2":3.5,"chain_1":0,"beard_4":26,"bodyb_4":0,"nose_6":0.1,"torso_1":107,"hair_2":0,"blemishes_2":10,"bags_2":0,"arms_2":0,"chest_3":0,"makeup_2":10,"ears_2":0,"complexion_2":10,"sun_1":-1,"watches_2":0,"makeup_3":0,"eye_squint":0,"chin_2":0,"pants_1":78,"dad":6,"complexion_1":-1,"moles_1":-1,"lip_thickness":1.79999999999999,"hair_color_2":29,"cheeks_1":0,"chest_1":-1,"age_1":2,"ears_1":-1,"chest_2":10,"decals_2":0,"beard_2":10,"eyebrows_5":6.2,"eyebrows_3":0,"glasses_1":-1,"beard_3":26,"skin_md_weight":6,"neck_thickness":0,"pants_2":2,"jaw_1":0,"helmet_2":0,"nose_3":-1.7,"bracelets_1":-1,"nose_4":4.3,"sun_2":10,"glasses_2":0,"helmet_1":-1,"age_2":10,"chin_3":0,"eyebrows_2":10,"bodyb_3":-1,"cheeks_2":0,"mom":27,"cheeks_3":0,"bproof_1":0,"makeup_4":0,"torso_2":1,"shoes_1":25,"hair_1":21,"blush_2":10,"hair_color_1":26,"mask_1":-1,"chain_2":0,"tshirt_2":0,"shoes_2":0,"arms":1,"lipstick_1":-1,"decals_1":0,"eyebrows_4":0,"lipstick_2":10,"chin_4":0,"lipstick_3":0,"face_md_weight":50.0,"nose_1":-2.9,"blush_3":0,"bracelets_2":0,"blemishes_1":-1,"chin_1":0,"nose_5":0,"bproof_2":0,"jaw_2":0,"blush_1":-1,"eyebrows_6":0.1,"makeup_1":-1,"bodyb_2":0,"sex":0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":614100,"name":"hunger","percent":61.41},{"val":710575,"name":"thirst","percent":71.05749999999999},{"val":100,"name":"health","percent":100},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18211, 'steam:1100001454d38b1', 'license:021bb691110f059f8fa7ca241e622e77e9884b50', 'Hamid_Amiri', 0, 10000, 200000, 0, 'user', 0, '{"z":39.01,"y":-118.65,"x":-344.56}', '[]', '[]', 0, NULL, '{"nose_3":0,"skin_md_weight":6,"torso_1":356,"lipstick_2":10,"torso_2":2,"hair_color_2":42,"bags_1":-1,"tshirt_2":0,"mom":21,"blush_1":-1,"eyebrows_4":0,"eyebrows_1":0,"chest_2":10,"nose_5":0,"nose_6":0,"glasses_2":0,"chin_2":0,"beard_1":11,"blemishes_1":-1,"bracelets_2":0,"beard_4":63,"chest_3":0,"lip_thickness":0,"eye_color":0,"makeup_2":10,"lipstick_3":0,"age_1":-1,"hair_1":21,"mask_1":-1,"bags_2":0,"eyebrows_5":0,"chin_1":0,"pants_2":0,"makeup_3":0,"hair_2":0,"nose_4":0,"chest_1":-1,"face_md_weight":50.0,"sun_1":-1,"shoes_1":9,"glasses_1":-1,"shoes_2":1,"pants_1":128,"beard_3":63,"nose_1":0,"lipstick_1":-1,"dad":0,"watches_1":-1,"moles_2":10,"cheeks_1":0,"chin_3":0,"helmet_1":-1,"eyebrows_2":10,"blemishes_2":10,"bproof_2":0,"blush_3":0,"nose_2":0,"neck_thickness":0,"jaw_1":0,"arms":1,"sun_2":10,"complexion_2":10,"blush_2":10,"moles_1":-1,"tshirt_1":11,"chain_1":-1,"jaw_2":0,"chain_2":0,"eyebrows_3":0,"bproof_1":-1,"sex":0,"eyebrows_6":0,"lipstick_4":0,"beard_2":10,"makeup_1":-1,"makeup_4":0,"bracelets_1":-1,"hair_color_1":29,"helmet_2":0,"chin_4":0,"cheeks_2":0,"mask_2":0,"age_2":10,"watches_2":0,"complexion_1":-1,"cheeks_3":0}', 'nogang', 0, '', 'nojob', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":376500,"percent":37.65},{"name":"thirst","val":407375,"percent":40.7375},{"name":"health","val":45,"percent":45},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18212, 'steam:1100001558fc9b5', 'license:8371f84cdd2ea3255301976d87d9a8f6113f6877', 'Arash_Sagsibil', 0, 10000, 200000, 0, 'user', 0, '{"x":-1139.72,"y":-1991.33,"z":13.17}', '[]', '[]', 0, NULL, '{"bracelets_2":0,"helmet_2":0,"hair_1":21,"cheeks_3":0,"eyebrows_2":10,"eyebrows_4":0,"beard_1":-1,"complexion_1":-1,"nose_2":0,"glasses_1":-1,"blush_1":-1,"makeup_4":0,"chin_2":0,"lipstick_2":10,"pants_1":6,"mask_2":0,"chest_3":0,"moles_1":-1,"beard_4":0,"skin_md_weight":6,"nose_1":0,"eyebrows_3":0,"chest_2":10,"complexion_2":10,"beard_2":10,"moles_2":10,"jaw_2":0,"chin_1":0,"age_2":10,"nose_6":0,"sun_2":10,"shoes_2":0,"chin_4":0,"bags_2":0,"tshirt_2":1,"eye_color":8,"hair_2":0,"sex":0,"cheeks_1":0,"sun_1":-1,"dad":0,"nose_5":0,"chain_1":-1,"cheeks_2":0,"arms":26,"nose_4":0,"lipstick_3":0,"blemishes_1":-1,"lip_thickness":0,"helmet_1":-1,"face_md_weight":50.0,"mom":21,"bproof_1":-1,"glasses_2":0,"blush_3":0,"bags_1":-1,"chain_2":0,"bproof_2":0,"watches_1":-1,"mask_1":-1,"watches_2":0,"tshirt_1":25,"makeup_3":0,"lipstick_4":0,"eyebrows_6":-0.1,"torso_1":64,"hair_color_1":36,"bracelets_1":-1,"torso_2":0,"lipstick_1":-1,"hair_color_2":43,"blemishes_2":10,"jaw_1":0,"shoes_1":44,"chest_1":-1,"pants_2":1,"beard_3":0,"makeup_2":10,"makeup_1":-1,"neck_thickness":0,"blush_2":10,"eyebrows_1":12,"age_1":-1,"nose_3":0,"chin_3":0,"eyebrows_5":-2.2}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":970100,"percent":97.00999999999999},{"name":"thirst","val":977575,"percent":97.7575},{"name":"health","val":100,"percent":100},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18213, 'steam:110000158b67752', 'license:ee8a86ed7fbbf3a0d51cbd587d091f54610ceeac', 'SIlent_Satan', 0, 10000, 200000, 0, 'user', 0, '{"z":31.22,"y":-978.94,"x":-258.27}', '[]', '[]', 0, NULL, '{"face_md_weight":50.0,"jaw_2":0,"bracelets_2":0,"jaw_1":0,"bproof_1":-1,"age_2":10,"chin_3":0,"nose_6":0,"tshirt_1":15,"blemishes_1":-1,"pants_2":0,"eyebrows_6":0,"makeup_4":0,"beard_4":0,"helmet_2":0,"sun_2":10,"nose_3":0,"chest_1":-1,"beard_2":10,"blush_2":10,"eye_color":0,"beard_1":-1,"mom":21,"moles_2":10,"nose_2":0,"bags_1":-1,"torso_2":0,"blemishes_2":10,"makeup_3":0,"chin_2":0,"bags_2":0,"dad":0,"skin_md_weight":6,"mask_2":0,"eyebrows_4":0,"chest_3":0,"watches_2":0,"cheeks_2":0,"chin_4":0,"sex":0,"hair_1":4,"makeup_2":10,"nose_1":0,"shoes_2":0,"pants_1":26,"tshirt_2":0,"chain_2":0,"glasses_2":0,"helmet_1":-1,"hair_2":0,"blush_3":0,"complexion_2":10,"chin_1":0,"shoes_1":1,"hair_color_2":0,"mask_1":-1,"chest_2":10,"beard_3":0,"complexion_1":-1,"bracelets_1":-1,"makeup_1":-1,"lipstick_2":10,"torso_1":64,"chain_1":-1,"eyebrows_3":0,"lip_thickness":0,"glasses_1":-1,"hair_color_1":0,"eyebrows_1":0,"neck_thickness":0,"sun_1":-1,"nose_4":0,"watches_1":-1,"blush_1":-1,"arms":1,"cheeks_3":0,"nose_5":0,"age_1":-1,"cheeks_1":0,"eyebrows_2":10,"lipstick_3":0,"lipstick_4":0,"moles_1":-1,"lipstick_1":-1,"eyebrows_5":0,"bproof_2":0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":986200,"percent":98.61999999999999},{"name":"thirst","val":989650,"percent":98.965},{"name":"health","val":100,"percent":100},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18214, 'steam:11000014bdfcc06', 'license:62e9e24e85ed240bd0492dbe6386d7fa6dc7c9fe', 'amir_kermanshahi', 0, 10000, 200000, 0, 'user', 0, '{"z":31.08,"y":-986.53,"x":-271.49}', '[]', '[]', 0, NULL, '{"age_2":10,"bags_1":-1,"chest_3":0,"eyebrows_5":0,"beard_4":0,"nose_1":0,"lipstick_1":-1,"makeup_4":0,"eyebrows_6":0,"chin_3":0,"beard_2":10,"lipstick_4":0,"lipstick_3":0,"skin_md_weight":6,"chest_2":10,"helmet_1":-1,"face_md_weight":50.0,"makeup_1":-1,"hair_color_1":0,"sun_2":10,"lip_thickness":0,"bproof_1":-1,"bproof_2":0,"glasses_1":-1,"eyebrows_2":10,"watches_1":-1,"jaw_2":0,"makeup_3":0,"nose_3":0,"helmet_2":0,"torso_2":1,"mom":21,"bracelets_2":0,"hair_color_2":0,"blemishes_1":-1,"tshirt_2":0,"chin_4":0,"chest_1":-1,"moles_2":10,"shoes_1":2,"torso_1":50,"complexion_1":-1,"bags_2":0,"chin_1":0,"eyebrows_1":0,"hair_1":4,"blush_3":0,"lipstick_2":10,"chin_2":0,"eye_color":0,"cheeks_3":0,"eyebrows_3":0,"nose_5":0,"eyebrows_4":0,"jaw_1":0,"blush_2":10,"mask_1":-1,"nose_6":0,"nose_2":0,"blush_1":-1,"cheeks_2":0,"blemishes_2":10,"makeup_2":10,"dad":0,"arms":1,"complexion_2":10,"bracelets_1":-1,"sun_1":-1,"pants_2":0,"tshirt_1":15,"shoes_2":0,"watches_2":0,"cheeks_1":0,"beard_3":0,"glasses_2":0,"nose_4":0,"chain_1":-1,"chain_2":0,"hair_2":0,"sex":0,"pants_1":45,"beard_1":-1,"mask_2":0,"moles_1":-1,"age_1":-1,"neck_thickness":0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":978400,"percent":97.84},{"name":"thirst","val":983800,"percent":98.38},{"name":"health","val":100,"percent":100},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18215, 'steam:110000149f1696f', 'license:3e050efaa68d3722260b7f5750873fd9728e56fb', 'Mosi_Y', 2, 7681, 180280, 4, 'user', 0, '{"z":32.93,"x":-1434.41,"y":-508.68}', '[]', '[{"components":["clip_default"],"name":"WEAPON_CARBINERIFLE","ammo":90,"label":"Carbine Rifle"}]', 0, NULL, '{"chain_2":0,"lipstick_3":0,"hair_1":38,"lipstick_2":10,"sex":0,"nose_3":5.6,"chin_2":-8.4,"age_2":10,"makeup_1":-1,"nose_1":2.7,"complexion_2":10,"eyebrows_4":0,"arms":0,"eye_squint":0,"eye_color":23,"lip_thickness":2.1,"makeup_3":0,"bracelets_2":0,"beard_4":6,"lipstick_4":0,"blemishes_2":10,"ears_1":-1,"torso_2":5,"nose_4":2.9,"bracelets_1":-1,"nose_6":-0.4,"face_md_weight":100,"bags_1":0,"arms_2":0,"decals_2":0,"bags_2":0,"hair_2":0,"cheeks_1":-10,"dad":14,"moles_2":10,"helmet_2":0,"shoes_1":29,"bproof_1":0,"helmet_1":-1,"beard_1":7,"torso_1":59,"eyebrows_6":0,"hair_color_2":10,"mask_2":0,"cheeks_3":-4.0,"chest_2":10,"decals_1":0,"tshirt_1":15,"makeup_2":10,"bodyb_1":-1,"blush_1":-1,"nose_5":-6.4,"watches_2":0,"bodyb_4":0,"bodyb_3":-1,"eyebrows_3":0,"sun_2":10,"pants_2":1,"beard_3":5,"chest_1":15,"jaw_2":0.6,"chin_4":-2.2,"eyebrows_1":29,"watches_1":-1,"moles_1":-1,"glasses_1":-1,"eyebrows_5":7.4,"blemishes_1":-1,"makeup_4":0,"bproof_2":0,"beard_2":10,"sun_1":-1,"tshirt_2":0,"glasses_2":0,"nose_2":-5.89999999999999,"mask_1":-1,"neck_thickness":6.8,"complexion_1":-1,"mom":31,"eyebrows_2":10,"blush_3":0,"cheeks_2":3.59999999999999,"chain_1":141,"lipstick_1":-1,"ears_2":0,"pants_1":60,"hair_color_1":19,"shoes_2":2,"chest_3":21,"chin_1":-10,"skin_md_weight":7,"blush_2":10,"age_1":-1,"jaw_1":-1.4,"chin_3":-5.6,"bodyb_2":0}', 'nogang', 0, '', 'nojob', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":905200,"name":"hunger","percent":90.52},{"val":928900,"name":"thirst","percent":92.89},{"val":100,"name":"health","percent":100},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[{"nameHash":"FM_Hair_Fuzz","dlc":"mpbeach_overlays"}]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18216, 'steam:1100001582ebd8c', 'license:9deaf1f5428ea64ec2fdbcc4a7f0025d8b544d3f', 'mahdi_XRO', 0, 10000, 200000, 0, 'user', 0, '{"y":-982.67,"x":-257.1,"z":31.22}', '[]', '[]', 0, NULL, '{"blush_1":-1,"blush_2":10,"chain_1":-1,"arms":20,"eyebrows_5":0,"hair_color_2":0,"cheeks_1":0,"makeup_2":10,"tshirt_2":0,"eyebrows_2":10,"eyebrows_4":0,"nose_1":0,"beard_4":0,"blush_3":0,"glasses_2":0,"skin_md_weight":6,"bags_1":-1,"blemishes_1":-1,"nose_5":0,"helmet_2":0,"torso_2":2,"sun_2":10,"bproof_2":0,"lipstick_4":0,"blemishes_2":10,"mask_2":0,"makeup_3":0,"cheeks_2":0,"helmet_1":-1,"moles_1":-1,"makeup_4":0,"beard_2":10,"sex":0,"watches_1":-1,"complexion_1":-1,"shoes_2":0,"chest_2":10,"lipstick_2":10,"mom":21,"mask_1":-1,"chin_1":0,"jaw_2":0,"beard_1":-1,"nose_3":0,"makeup_1":-1,"chest_3":0,"chin_3":0,"chin_4":0,"dad":0,"bracelets_2":0,"nose_6":0,"jaw_1":0,"lipstick_3":0,"eye_color":0,"neck_thickness":0,"bproof_1":-1,"glasses_1":-1,"pants_1":10,"sun_1":-1,"lip_thickness":0,"bracelets_1":-1,"cheeks_3":0,"pants_2":8,"age_1":-1,"lipstick_1":-1,"torso_1":138,"shoes_1":4,"tshirt_1":15,"complexion_2":10,"eyebrows_3":0,"chest_1":-1,"watches_2":0,"chain_2":0,"nose_4":0,"age_2":10,"beard_3":0,"eyebrows_6":0,"chin_2":0,"eyebrows_1":0,"nose_2":0,"hair_color_1":0,"face_md_weight":50.0,"hair_1":4,"bags_2":0,"moles_2":10,"hair_2":0}', 'nogang', 0, '', 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":95.26,"name":"hunger","val":952600},{"percent":96.44500000000001,"name":"thirst","val":964450},{"percent":100,"name":"health","val":100},{"percent":0,"name":"armor","val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18217, 'steam:11000014e0b7704', 'license:250a73508b58c3e0c96d255a78d559ef8f5323b4', 'hyper_killer', 0, 113680, 49950, 0, 'user', 0, '{"z":103.43,"x":367.46,"y":318.87}', '[]', '[{"name":"WEAPON_PISTOL","label":"Pistol","components":["clip_default"],"ammo":185}]', 0, NULL, '{"eyebrows_3":0,"cheeks_2":0,"mom":21,"chain_1":-1,"bags_1":-1,"complexion_2":10,"hair_color_1":29,"bags_2":0,"watches_2":0,"eyebrows_4":0,"blush_1":-1,"jaw_1":0,"tshirt_2":0,"makeup_3":0,"glasses_1":-1,"bproof_1":-1,"helmet_1":-1,"makeup_1":-1,"dad":0,"blush_3":0,"skin_md_weight":6,"bracelets_1":-1,"nose_3":0,"eye_color":0,"chest_2":10,"arms":24,"bracelets_2":0,"pants_1":4,"torso_1":50,"beard_3":29,"lip_thickness":0,"beard_4":29,"helmet_2":0,"glasses_2":0,"nose_6":0,"sex":0,"lipstick_3":0,"face_md_weight":50.0,"sun_2":10,"shoes_2":0,"chest_3":0,"lipstick_4":0,"eyebrows_6":0,"mask_2":0,"chin_2":0,"blush_2":10,"pants_2":0,"makeup_4":0,"lipstick_1":-1,"jaw_2":0,"nose_4":0,"moles_2":10,"blemishes_1":-1,"hair_2":0,"eyebrows_1":0,"chain_2":0,"age_1":-1,"hair_1":5,"nose_5":0,"nose_2":0,"nose_1":0,"tshirt_1":25,"chin_1":0,"lipstick_2":10,"sun_1":-1,"moles_1":-1,"complexion_1":-1,"cheeks_1":0,"eyebrows_5":0,"chest_1":-1,"beard_1":9,"shoes_1":1,"beard_2":10,"makeup_2":10,"watches_1":-1,"eyebrows_2":10,"bproof_2":0,"chin_3":0,"age_2":10,"hair_color_2":16,"neck_thickness":0,"cheeks_3":0,"chin_4":0,"blemishes_2":10,"torso_2":0,"mask_1":-1}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":972400,"percent":97.24000000000001},{"name":"thirst","val":979300,"percent":97.92999999999999},{"name":"health","val":100,"percent":100},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18218, 'steam:110000152338086', 'license:ceef7b7f4316ba5441d9b5dba9607a54e0161827', 'amir_azd', 0, 10000, 200000, 0, 'user', 0, '{"y":-920.64,"z":22.35,"x":-176.58}', '[]', '[]', 0, NULL, '{"hair_color_1":0,"blush_3":0,"nose_4":0,"nose_1":0,"beard_3":0,"hair_color_2":0,"neck_thickness":0,"watches_1":-1,"sex":0,"blush_1":-1,"tshirt_1":15,"chain_2":0,"eyebrows_1":0,"watches_2":0,"eye_color":0,"dad":0,"blemishes_2":10,"chest_2":10,"beard_4":0,"lipstick_4":0,"chest_1":-1,"helmet_2":0,"beard_1":-1,"makeup_1":-1,"lipstick_3":0,"hair_2":0,"mask_2":0,"skin_md_weight":6,"hair_1":4,"cheeks_3":0,"age_2":10,"chin_2":0,"cheeks_1":0,"lipstick_2":10,"blemishes_1":-1,"beard_2":10,"complexion_2":10,"eyebrows_5":0,"makeup_2":10,"makeup_3":0,"bracelets_2":0,"chain_1":-1,"lip_thickness":0,"moles_1":-1,"sun_2":10,"moles_2":10,"blush_2":10,"chin_3":0,"nose_2":0,"mask_1":-1,"sun_1":-1,"shoes_1":7,"nose_3":0,"mom":21,"jaw_1":0,"nose_6":0,"chest_3":0,"torso_2":2,"eyebrows_2":10,"lipstick_1":-1,"cheeks_2":0,"makeup_4":0,"chin_1":0,"pants_1":61,"bags_2":0,"bproof_2":0,"pants_2":3,"shoes_2":0,"torso_1":84,"tshirt_2":0,"chin_4":0,"face_md_weight":50.0,"glasses_1":-1,"eyebrows_3":0,"complexion_1":-1,"age_1":-1,"bracelets_1":-1,"eyebrows_4":0,"eyebrows_6":0,"arms":4,"bproof_1":-1,"jaw_2":0,"nose_5":0,"helmet_1":-1,"glasses_2":0,"bags_1":-1}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":979600,"name":"hunger","percent":97.96000000000001},{"val":984700,"name":"thirst","percent":98.47},{"val":95,"name":"health","percent":95},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18219, 'steam:110000151c26a29', 'license:433f0a46d550f59fa06a112f90996f150f022df8', 'sepehr_gorba', 0, 10000, 230000, 0, 'user', 0, '{"y":3696.2,"x":1876.28,"z":33.54}', '[]', '[{"components":["clip_default"],"label":"Pistol","name":"WEAPON_PISTOL","ammo":250},{"components":[],"label":"Taser","name":"WEAPON_STUNGUN","ammo":250}]', 0, NULL, '{"face_md_weight":50.0,"eyebrows_6":0,"torso_1":64,"torso_2":0,"bags_2":0,"cheeks_3":0,"bags_1":-1,"bracelets_1":-1,"shoes_1":44,"dad":0,"eyebrows_4":0,"eye_color":0,"blemishes_1":-1,"nose_1":0,"moles_1":-1,"tshirt_1":25,"eyebrows_2":10,"hair_2":0,"complexion_2":10,"makeup_2":10,"makeup_1":-1,"shoes_2":0,"chest_1":-1,"chin_2":0,"arms":26,"lipstick_3":0,"moles_2":10,"makeup_4":0,"pants_1":6,"glasses_1":-1,"beard_2":10,"cheeks_2":0,"beard_3":2,"nose_6":0,"skin_md_weight":6,"chin_4":0,"nose_2":0,"hair_color_2":0,"nose_4":0,"hair_color_1":26,"eyebrows_1":0,"sex":0,"cheeks_1":0,"chin_1":0,"mask_1":-1,"sun_1":-1,"lip_thickness":0,"eyebrows_3":0,"chain_1":-1,"age_2":10,"neck_thickness":0,"blush_1":-1,"sun_2":10,"glasses_2":0,"tshirt_2":1,"chest_2":10,"beard_1":11,"lipstick_1":-1,"blemishes_2":10,"bracelets_2":0,"helmet_2":0,"age_1":-1,"makeup_3":0,"chin_3":0,"beard_4":2,"watches_2":0,"complexion_1":-1,"blush_3":0,"mom":21,"watches_1":-1,"pants_2":1,"nose_3":0,"nose_5":0,"lipstick_4":0,"chain_2":0,"blush_2":10,"jaw_1":0,"helmet_1":-1,"hair_1":9,"bproof_2":0,"chest_3":0,"jaw_2":0,"bproof_1":-1,"eyebrows_5":0,"lipstick_2":10,"mask_2":0}', 'nogang', 0, NULL, 'sheriff', 1, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":81.52000000000001,"val":815200,"name":"hunger"},{"percent":86.14,"val":861400,"name":"thirst"},{"percent":99,"val":99,"name":"health"},{"percent":100,"val":100,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18220, 'steam:110000158df5507', 'license:8f43afffda4b44dd88cd51038f70bd5e3ebe96a1', 'Mehdi_Tavakoli', 0, 9000, 587000, 0, 'user', 0, '{"y":-996.86,"z":30.69,"x":459.14}', '[]', '[]', 0, NULL, '{"bproof_2":0,"glasses_2":0,"eyebrows_3":0,"glasses_1":-1,"chest_3":0,"complexion_2":10,"lipstick_4":0,"beard_3":37,"chest_2":10,"blush_1":-1,"lipstick_1":-1,"chest_1":-1,"helmet_2":0,"blush_3":0,"arms":1,"hair_1":25,"bracelets_2":0,"cheeks_3":0,"face_md_weight":50.0,"torso_2":0,"nose_5":0,"makeup_1":-1,"age_1":-1,"mask_1":-1,"eyebrows_2":10,"makeup_4":0,"moles_1":-1,"torso_1":64,"tshirt_2":0,"makeup_2":10,"eyebrows_5":0,"chin_4":0,"skin_md_weight":6,"watches_1":-1,"chin_3":0,"nose_3":0,"lipstick_2":10,"blemishes_2":10,"nose_6":0,"bproof_1":-1,"shoes_1":1,"mask_2":0,"eyebrows_4":0,"hair_2":0,"nose_4":0,"complexion_1":-1,"mom":21,"lipstick_3":0,"cheeks_2":0,"neck_thickness":0,"eyebrows_6":0,"sex":0,"jaw_2":0,"cheeks_1":0,"chain_2":0,"hair_color_2":63,"nose_1":0,"pants_2":0,"blemishes_1":-1,"sun_1":-1,"makeup_3":0,"dad":0,"lip_thickness":9.9,"chin_2":0,"eyebrows_1":0,"blush_2":10,"beard_2":10,"helmet_1":-1,"jaw_1":0,"sun_2":10,"watches_2":0,"bracelets_1":-1,"beard_1":9,"age_2":10,"eye_color":16,"chin_1":0,"nose_2":0,"hair_color_1":40,"moles_2":10,"bags_2":0,"beard_4":37,"chain_1":-1,"pants_1":26,"shoes_2":0,"tshirt_1":15,"bags_1":-1}', 'nogang', 0, NULL, 'police', 15, 1, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":8.03,"val":80300},{"name":"thirst","percent":16.0225,"val":160225},{"name":"health","percent":50,"val":50},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18221, 'steam:110000144792e0f', 'license:4eaec2f9c6032050a2c0e4b497d2811f935e8ab6', 'lucifer_heisenberg', 0, 19785, 507500, 0, 'user', 0, '{"x":890.92,"y":-2102.02,"z":34.89}', '[{"count":1,"item":"phone"},{"count":1,"item":"radio"},{"count":12,"item":"water"},{"count":12,"item":"bread"}]', '[{"label":"Combat Pistol","components":["clip_default"],"name":"WEAPON_COMBATPISTOL","ammo":54}]', 0, NULL, '{"bproof_2":0,"glasses_2":0,"eyebrows_3":0,"glasses_1":-1,"chest_3":0,"complexion_2":10,"lipstick_4":0,"jaw_1":0,"chest_2":10,"blush_1":-1,"lipstick_1":-1,"chest_1":-1,"helmet_2":0,"beard_2":10,"arms":1,"hair_1":7,"bracelets_2":0,"cheeks_3":0,"hair_2":0,"torso_2":1,"nose_5":0,"makeup_1":-1,"age_1":-1,"mask_1":-1,"moles_2":10,"makeup_4":0,"moles_1":-1,"torso_1":50,"chin_2":0,"makeup_2":10,"eyebrows_5":0,"chin_4":0,"skin_md_weight":6,"watches_1":-1,"chin_3":0,"nose_3":0,"lipstick_2":10,"blemishes_2":10,"nose_6":0,"bproof_1":-1,"shoes_1":2,"bags_1":-1,"eyebrows_4":0,"blush_2":10,"dad":0,"beard_3":0,"mom":21,"lipstick_3":0,"cheeks_2":0,"neck_thickness":0,"eyebrows_6":0,"nose_4":0,"sun_2":10,"face_md_weight":70.0,"chain_2":0,"chain_1":-1,"nose_1":0,"pants_2":0,"beard_1":0,"mask_2":0,"makeup_3":0,"watches_2":0,"cheeks_1":0,"eyebrows_1":21,"helmet_1":-1,"sex":0,"tshirt_2":0,"blush_3":0,"eyebrows_2":10,"hair_color_2":41,"jaw_2":0,"bracelets_1":-1,"complexion_1":-1,"sun_1":-1,"eye_color":2,"chin_1":0,"nose_2":0,"hair_color_1":63,"blemishes_1":1,"bags_2":0,"beard_4":0,"age_2":10,"pants_1":45,"lip_thickness":0,"tshirt_1":15,"shoes_2":0}', 'nogang', 0, NULL, 'mechanic', 14, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":63.59,"val":635900,"name":"hunger"},{"percent":72.69250000000001,"val":726925,"name":"thirst"},{"percent":60,"val":60,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18222, 'steam:11000011844f231', 'license:18ab6a04386d986d7a2f957d8362de4244d7e7b5', 'Moti_Heisenberg', 0, 110237, 592169, 0, 'user', 0, '{"z":30.48,"y":-2099.08,"x":873.85}', '[{"item":"radio","count":1},{"item":"phone","count":1},{"item":"water","count":7},{"item":"bread","count":10}]', '[]', 0, NULL, '{"bproof_2":0,"glasses_2":0,"eyebrows_3":0,"glasses_1":-1,"chest_3":0,"helmet_1":-1,"lipstick_4":0,"beard_3":0,"chest_2":10,"blush_1":-1,"lipstick_1":-1,"chest_1":1,"helmet_2":0,"age_2":10,"arms":24,"hair_1":25,"bracelets_2":0,"cheeks_3":0,"face_md_weight":80.0,"torso_2":0,"nose_5":0,"complexion_1":-1,"age_1":-1,"mask_1":-1,"eyebrows_2":10,"makeup_4":0,"moles_1":-1,"torso_1":50,"chin_2":0,"makeup_2":10,"eyebrows_5":0,"chin_4":0,"skin_md_weight":5,"watches_1":-1,"chin_3":0,"nose_3":0,"lipstick_2":10,"blemishes_2":10,"nose_6":0,"bproof_1":-1,"shoes_1":1,"mask_2":0,"eyebrows_4":0,"jaw_1":0,"tshirt_2":0,"lip_thickness":0,"mom":31,"lipstick_3":0,"cheeks_2":0,"sex":0,"eyebrows_6":0,"nose_4":0,"moles_2":10,"makeup_1":-1,"cheeks_1":0,"hair_2":0,"nose_1":0,"pants_2":0,"eyebrows_1":0,"dad":13,"makeup_3":0,"beard_1":13,"blush_2":10,"bags_1":-1,"complexion_2":10,"pants_1":4,"beard_2":10,"chain_1":-1,"blemishes_1":-1,"hair_color_2":0,"watches_2":0,"bracelets_1":-1,"chain_2":0,"sun_1":-1,"eye_color":0,"chin_1":0,"nose_2":0,"hair_color_1":4,"sun_2":10,"bags_2":0,"beard_4":0,"blush_3":0,"neck_thickness":0,"shoes_2":0,"tshirt_1":25,"jaw_2":0}', 'nogang', 0, NULL, 'mechanic', 13, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":420100,"name":"hunger","percent":42.01},{"val":265075,"name":"thirst","percent":26.5075},{"val":71,"name":"health","percent":71},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18223, 'steam:11000014ba5153b', 'license:527b671c32ae638f46cf7a0f76e6bd5404a22577', 'Arad_Rezvan', 0, 90438, 215000, 0, 'user', 0, '{"y":0.13,"z":0.85,"x":-0.0}', '[{"count":1,"item":"phone"}]', '[{"ammo":3132,"components":[],"name":"WEAPON_PETROLCAN","label":"Jerrycan"}]', 0, NULL, '{"makeup_1":-1,"eyebrows_2":10,"chin_2":0,"moles_2":10,"eyebrows_3":0,"nose_5":0,"bproof_2":0,"torso_1":17,"beard_3":27,"nose_2":0,"skin_md_weight":6,"cheeks_1":0,"mask_2":0,"eyebrows_1":0,"shoes_2":0,"bracelets_1":-1,"nose_4":0,"hair_2":0,"blemishes_2":10,"blush_3":0,"helmet_2":0,"mom":26,"cheeks_3":0,"watches_1":-1,"hair_color_2":28,"eyebrows_5":0,"complexion_1":-1,"eye_color":0,"chest_3":0,"mask_1":-1,"glasses_1":-1,"nose_6":0,"shoes_1":2,"sun_1":-1,"helmet_1":-1,"chin_1":0,"bproof_1":-1,"chain_1":-1,"jaw_1":0,"moles_1":-1,"dad":6,"face_md_weight":50.0,"neck_thickness":0,"lip_thickness":0,"cheeks_2":0,"chest_1":-1,"chain_2":0,"blush_1":-1,"chin_3":0,"beard_1":0,"beard_2":10,"eyebrows_6":0,"chin_4":0,"lipstick_3":0,"jaw_2":0,"makeup_3":0,"sex":0,"eyebrows_4":0,"hair_color_1":26,"blush_2":10,"age_2":10,"age_1":-1,"blemishes_1":-1,"arms":12,"lipstick_1":-1,"nose_1":0,"bags_1":-1,"makeup_4":0,"bracelets_2":0,"tshirt_2":0,"pants_1":4,"lipstick_2":10,"pants_2":0,"glasses_2":0,"nose_3":0,"torso_2":0,"chest_2":10,"watches_2":0,"hair_1":13,"lipstick_4":0,"complexion_2":10,"tshirt_1":15,"makeup_2":10,"sun_2":10,"beard_4":27,"bags_2":0}', 'nogang', 0, NULL, 'nojob', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":943400,"name":"hunger","percent":94.34},{"val":957550,"name":"thirst","percent":95.755},{"val":100,"name":"health","percent":100},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18224, 'steam:1100001456c71d1', 'license:c7d5d14f3fd331d95e0e19b90c73ec3df201d38e', 'ermia_hassn', 0, 10000, 200000, 0, 'user', 0, '{"y":-1035.74,"x":147.82,"z":29.34}', '[]', '[]', 0, NULL, '{"blemishes_1":-1,"blemishes_2":10,"glasses_1":-1,"beard_2":10,"age_1":-1,"watches_1":-1,"cheeks_3":0,"tshirt_2":0,"bags_1":-1,"pants_2":8,"makeup_2":10,"mom":21,"eyebrows_3":0,"sun_2":10,"nose_3":0,"glasses_2":0,"hair_2":0,"sex":0,"chest_2":10,"chin_4":0,"lip_thickness":0,"chin_3":0,"bproof_2":0,"chain_1":-1,"helmet_2":0,"chin_1":0,"eye_color":26,"chin_2":0,"blush_2":10,"bracelets_2":0,"eyebrows_4":0,"hair_color_2":0,"hair_1":5,"nose_2":0,"beard_3":61,"bags_2":0,"nose_4":0,"hair_color_1":61,"shoes_2":0,"cheeks_2":0,"dad":0,"blush_3":0,"makeup_4":0,"beard_4":61,"eyebrows_6":0,"bracelets_1":-1,"cheeks_1":0,"moles_2":10,"lipstick_1":-1,"complexion_2":10,"neck_thickness":0,"face_md_weight":50.0,"helmet_1":-1,"chest_1":-1,"nose_5":0,"jaw_1":0,"moles_1":-1,"shoes_1":2,"mask_2":0,"tshirt_1":15,"makeup_1":-1,"pants_1":47,"nose_1":0,"mask_1":-1,"lipstick_3":0,"age_2":10,"eyebrows_1":25,"eyebrows_5":0,"chain_2":0,"bproof_1":-1,"jaw_2":0,"lipstick_4":0,"torso_1":53,"lipstick_2":10,"complexion_1":-1,"torso_2":1,"eyebrows_2":10,"nose_6":0,"chest_3":0,"skin_md_weight":6,"makeup_3":0,"beard_1":10,"sun_1":-1,"watches_2":0,"arms":1,"blush_1":-1}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":95.72,"val":957200,"name":"hunger"},{"percent":96.78999999999999,"val":967900,"name":"thirst"},{"percent":100,"val":100,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18225, 'steam:110000133a52955', 'license:605cc0de8818eaec5010b6e6ec924e83e1e26059', 'KAMBAX_oldMANGOld', 0, 481500, 2200000, 0, 'user', 0, '{"z":30.84,"y":-847.46,"x":195.86}', '[{"count":9,"item":"cocacola"},{"count":8,"item":"pizza"},{"count":1,"item":"phone"}]', '[{"ammo":0,"components":[],"name":"WEAPON_CROWBAR","label":"Crowbar"}]', 0, NULL, '{"blemishes_1":-1,"blemishes_2":10,"glasses_1":-1,"beard_2":10,"age_1":-1,"watches_1":-1,"cheeks_3":0,"pants_1":4,"complexion_1":-1,"pants_2":0,"makeup_2":10,"mom":26,"eyebrows_3":0,"sun_2":10,"nose_3":0,"glasses_2":0,"hair_2":0,"sex":0,"chest_2":10,"chest_3":0,"lip_thickness":0,"sun_1":-1,"lipstick_1":-1,"chain_1":-1,"helmet_2":0,"chin_1":0,"eye_color":12,"chin_2":0,"blush_2":10,"bracelets_2":0,"eyebrows_4":0,"hair_color_2":0,"hair_1":10,"nose_2":0,"blush_1":-1,"bags_2":0,"nose_4":0,"hair_color_1":29,"shoes_2":0,"cheeks_2":0,"dad":9,"blush_3":0,"makeup_4":0,"beard_4":29,"moles_2":10,"bracelets_1":-1,"cheeks_1":0,"face_md_weight":50.0,"tshirt_2":0,"mask_1":-1,"neck_thickness":0,"bproof_1":-1,"jaw_2":0,"chest_1":-1,"nose_5":0,"moles_1":-1,"jaw_1":0,"eyebrows_5":0,"mask_2":0,"tshirt_1":15,"chin_4":0,"age_2":10,"nose_1":0.1,"chin_3":0,"lipstick_3":0,"shoes_1":1,"eyebrows_1":0,"bproof_2":0,"chain_2":0,"bags_1":-1,"beard_1":11,"lipstick_4":0,"makeup_3":0,"helmet_1":-1,"eyebrows_6":0,"torso_2":2,"eyebrows_2":10,"nose_6":0,"watches_2":0,"skin_md_weight":6,"makeup_1":-1,"beard_3":29,"torso_1":17,"arms":12,"complexion_2":10,"lipstick_2":10}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":88.39,"name":"hunger","val":883900},{"percent":91.2925,"name":"thirst","val":912925},{"percent":96,"name":"health","val":96},{"percent":0,"name":"armor","val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18226, 'steam:11000013dc12c8c', 'license:e497c26c9e5f4a9f6529bd272e60935be68cc52b', 'Aria_eslami', 0, 0, 942901, 0, 'user', 0, '{"z":69.18,"x":1178.5,"y":-329.3}', '[{"count":0,"item":"bread"},{"count":0,"item":"radio"},{"count":0,"item":"tequila"},{"count":1,"item":"phone"}]', '[]', 0, NULL, '{"torso_2":3,"nose_2":9.9,"tshirt_1":11,"watches_2":0,"jaw_1":-4.3,"watches_1":-1,"torso_1":209,"nose_3":-2.8,"cheeks_1":-10,"eyebrows_3":0,"bracelets_1":-1,"hair_color_1":0,"sun_2":10,"eye_color":5,"chin_2":-10,"blush_3":0,"glasses_1":-1,"shoes_2":1,"eyebrows_5":-10,"chest_2":10,"complexion_1":-1,"age_2":10,"beard_1":8,"chain_1":-1,"lipstick_1":-1,"sun_1":6,"bags_2":0,"nose_1":-1.4,"mask_1":-1,"chest_3":0,"hair_color_2":0,"blush_1":-1,"nose_5":2.0,"moles_2":10,"bags_1":-1,"bproof_2":0,"lip_thickness":8.0,"nose_4":0.89999999999999,"eyebrows_6":-5.4,"lipstick_4":0,"dad":9,"nose_6":5.89999999999999,"makeup_3":0,"moles_1":-1,"complexion_2":10,"chin_3":0.7,"beard_3":0,"cheeks_3":-3.8,"bracelets_2":0,"face_md_weight":70.0,"lipstick_3":0,"lipstick_2":10,"blemishes_1":-1,"makeup_4":0,"pants_2":0,"mom":45,"makeup_1":-1,"eyebrows_2":10,"beard_2":10,"tshirt_2":0,"age_1":12,"helmet_1":-1,"hair_2":0,"arms":1,"neck_thickness":-10,"eyebrows_4":0,"glasses_2":0,"blemishes_2":10,"chin_4":-10,"shoes_1":45,"bproof_1":-1,"helmet_2":0,"blush_2":10,"mask_2":0,"chain_2":0,"hair_1":29,"skin_md_weight":12,"beard_4":0,"makeup_2":10,"jaw_2":-10,"chin_1":3.59999999999999,"pants_1":62,"eyebrows_1":1,"chest_1":-1,"sex":0,"cheeks_2":-1.7}', 'nogang', 0, NULL, 'nojob', 0, 1, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":392800,"name":"hunger","percent":39.28},{"val":394600,"name":"thirst","percent":39.46},{"val":50,"name":"health","percent":50},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18227, 'steam:110000141b38366', 'license:0c9b063193c6aec75364675476f5e1c530daac76', 'MISS_FATEMEH', 0, 91000, 1340000, 0, 'user', 0, '{"x":997.13,"z":30.51,"y":-2263.49}', '[{"count":1,"item":"phone"},{"count":30,"item":"medikit"},{"count":30,"item":"bandage"},{"count":1,"item":"radio"},{"count":1,"item":"bread"},{"count":1,"item":"water"}]', '[{"label":"Flashlight","name":"WEAPON_FLASHLIGHT","ammo":0,"components":[]}]', 0, NULL, '{"helmet_1":-1,"ears_1":-1,"bracelets_2":0,"hair_color_1":12,"lipstick_1":3,"cheeks_1":0,"age_1":-1,"beard_3":0,"skin_md_weight":6,"decals_1":0,"beard_2":10,"makeup_4":0,"chain_2":0,"nose_2":-1.7,"lipstick_2":10,"sex":1,"eyebrows_3":5,"nose_5":-4.4,"chin_2":0,"eyebrows_6":0,"eyebrows_4":0,"eyebrows_5":0,"chest_2":10,"lip_thickness":-10,"mom":45,"nose_4":1.1,"eye_squint":0,"torso_1":51,"bags_2":0,"moles_1":-1,"glasses_2":0,"chin_3":0,"eye_color":0,"bproof_1":0,"nose_6":0.89999999999999,"makeup_1":13,"moles_2":10,"arms_2":0,"jaw_2":0,"bodyb_1":-1,"hair_1":112,"pants_2":0,"bodyb_4":0,"complexion_2":10,"decals_2":0,"beard_1":-1,"bodyb_3":-1,"beard_4":0,"helmet_2":0,"chain_1":-1,"shoes_1":22,"complexion_1":-1,"lipstick_4":0,"bodyb_2":0,"torso_2":3,"tshirt_2":0,"age_2":10,"chest_3":0,"chin_4":0,"blemishes_2":10,"glasses_1":-1,"ears_2":0,"mask_2":0,"hair_color_2":13,"nose_1":-5.4,"face_md_weight":50.0,"cheeks_2":0,"chin_1":0,"bracelets_1":-1,"chest_1":-1,"watches_2":0,"lipstick_3":0,"watches_1":-1,"blush_1":-1,"sun_2":10,"blemishes_1":-1,"bags_1":-1,"neck_thickness":0,"hair_2":0,"arms":15,"pants_1":38,"makeup_2":10,"blush_2":10,"sun_1":-1,"mask_1":-1,"jaw_1":0,"bproof_2":0,"tshirt_1":14,"makeup_3":0,"blush_3":0,"dad":6,"eyebrows_2":10,"eyebrows_1":2,"nose_3":1.1,"cheeks_3":0,"shoes_2":15}', 'nogang', 0, NULL, 'ambulance', 16, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":551100,"percent":55.11000000000001,"name":"hunger"},{"val":438325,"percent":43.8325,"name":"thirst"},{"val":95,"percent":95,"name":"health"},{"val":35,"percent":35,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[{"dlc":"multiplayer_overlays","nameHash":"NG_M_Hair_004"}]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18228, 'steam:11000014acc3380', 'license:d0b6fc87c32a97af925379a90efec54fd8fede6f', 'ahmad_fury', 0, 405, 10658000, 0, 'user', 0, '{"y":-1230.59,"x":-1460.55,"z":3.06}', '[{"item":"weed","count":2},{"item":"tequila","count":1},{"item":"lsd","count":1},{"item":"phone","count":1},{"item":"clip","count":18}]', '[{"ammo":0,"label":"Nightstick","components":[],"name":"WEAPON_NIGHTSTICK"},{"ammo":185,"label":"Pistol","components":["clip_default"],"name":"WEAPON_PISTOL"},{"ammo":185,"label":"Combat Pistol","components":["clip_default"],"name":"WEAPON_COMBATPISTOL"},{"ammo":250,"label":"Taser","components":[],"name":"WEAPON_STUNGUN"},{"ammo":185,"label":"Pistol .50","components":["clip_default"],"name":"WEAPON_PISTOL50"},{"ammo":216,"label":"SMG","components":["clip_default"],"name":"WEAPON_SMG"},{"ammo":216,"label":"Assault SMG","components":["clip_default"],"name":"WEAPON_ASSAULTSMG"},{"ammo":133,"label":"Carbine Rifle","components":["clip_default"],"name":"WEAPON_CARBINERIFLE"},{"ammo":133,"label":"Bullpup Rifle","components":["clip_default"],"name":"WEAPON_BULLPUPRIFLE"},{"ammo":250,"label":"Gusenberg Sweeper","components":["clip_default"],"name":"WEAPON_GUSENBERG"},{"ammo":75,"label":"Sniper Rifle","components":["clip_default","scope"],"name":"WEAPON_SNIPERRIFLE"},{"ammo":797,"label":"Fire Extinguisher","components":[],"name":"WEAPON_FIREEXTINGUISHER"}]', 0, NULL, '{"helmet_1":-1,"nose_3":0,"bracelets_2":0,"hair_color_1":0,"lipstick_1":-1,"cheeks_1":0,"age_1":14,"beard_3":0,"skin_md_weight":6,"beard_2":10,"makeup_4":0,"chain_2":0,"nose_2":0,"lipstick_2":10,"sex":0,"eyebrows_3":0,"nose_5":0,"chin_2":0,"eyebrows_6":0,"eyebrows_4":0,"eyebrows_5":0,"chest_2":10,"lip_thickness":0,"mom":21,"nose_4":0,"mask_2":0,"torso_1":84,"bags_2":0,"moles_1":-1,"glasses_2":0,"face_md_weight":50.0,"eye_color":0,"bproof_1":-1,"nose_6":0,"makeup_1":62,"moles_2":10,"makeup_2":10,"sun_1":10,"beard_1":14,"beard_4":0,"helmet_2":0,"shoes_1":9,"complexion_1":-1,"blush_3":0,"hair_1":9,"tshirt_2":0,"nose_1":0,"chest_3":0,"chin_3":0,"glasses_1":-1,"jaw_1":0,"blemishes_1":-1,"complexion_2":10,"hair_color_2":55,"neck_thickness":0,"tshirt_1":15,"chin_4":0,"chin_1":0,"bracelets_1":-1,"chest_1":-1,"arms":1,"lipstick_3":0,"cheeks_3":0,"blush_1":-1,"sun_2":10,"watches_1":-1,"bags_1":-1,"lipstick_4":0,"hair_2":0,"cheeks_2":0,"pants_1":51,"blush_2":10,"torso_2":0,"mask_1":-1,"bproof_2":0,"blemishes_2":10,"age_2":10,"eyebrows_1":0,"dad":0,"watches_2":0,"makeup_3":0,"eyebrows_2":10,"chain_1":-1,"pants_2":5,"jaw_2":0,"shoes_2":0}', 'nogang', 0, 'division_4', 'police', 15, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":93.83,"name":"hunger","val":938300},{"percent":95.3725,"name":"thirst","val":953725},{"percent":100,"name":"health","val":100},{"percent":100,"name":"armor","val":100}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18229, 'steam:11000014d8c2f56', 'license:92742a75f547d3f906ab20928e012ad2a27a4ad8', 'AMIR_vix', 0, 0, 215000, 0, 'user', 0, '{"x":345.14,"y":-964.23,"z":29.43}', '[]', '[{"ammo":0,"name":"WEAPON_FLASHLIGHT","components":[],"label":"Flashlight"},{"ammo":172,"name":"WEAPON_PISTOL","components":["clip_default"],"label":"Pistol"},{"ammo":0,"name":"WEAPON_PUMPSHOTGUN","components":[],"label":"Pump Shotgun"}]', 0, NULL, '{"hair_color_1":0,"blush_2":10,"bodyb_4":0,"eyebrows_1":0,"bracelets_1":-1,"chest_1":-1,"nose_2":0,"eyebrows_3":0,"nose_5":0,"sun_1":-1,"bracelets_2":0,"decals_1":24,"sun_2":10,"lipstick_3":0,"dad":0,"face_md_weight":50.0,"mom":21,"mask_1":-1,"eye_squint":0,"nose_4":0,"makeup_4":0,"glasses_1":-1,"lipstick_1":-1,"tshirt_1":17,"chin_1":0,"beard_4":0,"torso_1":3,"eyebrows_4":0,"cheeks_2":0,"helmet_1":-1,"decals_2":3,"pants_1":34,"complexion_1":-1,"nose_3":0,"eyebrows_6":0,"bproof_2":0,"watches_1":-1,"chin_2":0,"bags_2":0,"ears_1":-1,"eye_color":0,"moles_2":10,"blemishes_2":10,"chin_4":0,"nose_6":0,"lip_thickness":0,"helmet_2":0,"chest_3":0,"bproof_1":0,"makeup_1":-1,"arms_2":0,"age_1":-1,"blush_1":-1,"chain_1":0,"age_2":10,"makeup_3":0,"chest_2":10,"bodyb_2":0,"beard_3":0,"eyebrows_5":0,"lipstick_2":10,"beard_2":10,"hair_color_2":0,"beard_1":-1,"sex":0,"nose_1":0,"cheeks_1":0,"shoes_2":0,"lipstick_4":0,"hair_1":35,"arms":21,"complexion_2":10,"cheeks_3":0,"torso_2":2,"makeup_2":10,"hair_2":0,"neck_thickness":0,"pants_2":0,"moles_1":-1,"chain_2":0,"jaw_1":0,"bodyb_1":-1,"mask_2":0,"skin_md_weight":6,"shoes_1":10,"bags_1":1,"watches_2":0,"chin_3":0,"eyebrows_2":10,"bodyb_3":-1,"ears_2":0,"tshirt_2":0,"blush_3":0,"glasses_2":0,"jaw_2":0,"blemishes_1":-1}', 'nogang', 0, 'division_1', 'police', 1, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":438300,"name":"hunger","percent":43.83},{"val":453725,"name":"thirst","percent":45.3725},{"val":16,"name":"health","percent":16},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18230, 'steam:11000014707d7a0', 'license:dddb987c3c0645fd410533149f4617b14aaf92b8', 'Mani_KG', 0, 34121, 0, 0, 'user', 0, '{"y":5283.0,"x":-550.83,"z":73.55}', '[]', '[{"components":["clip_default"],"ammo":15,"label":"Vintage Pistol","name":"WEAPON_VINTAGEPISTOL"}]', 0, NULL, '{"hair_color_1":0,"blush_2":10,"bodyb_4":0,"eyebrows_1":0,"bracelets_1":-1,"chest_1":-1,"nose_2":0,"blush_1":-1,"nose_6":0,"sun_1":-1,"makeup_2":10,"watches_2":0,"sex":0,"bodyb_3":-1,"dad":0,"face_md_weight":50.0,"mom":21,"mask_1":-1,"beard_3":0,"shoes_2":3,"beard_1":7,"glasses_1":-1,"lipstick_1":-1,"tshirt_1":15,"chin_1":0,"beard_4":0,"torso_1":168,"eyebrows_4":0,"cheeks_2":0,"jaw_2":0,"decals_2":0,"pants_1":128,"glasses_2":0,"nose_3":0,"eyebrows_6":0,"bproof_1":0,"watches_1":-1,"bracelets_2":0,"bags_2":0,"hair_2":0,"eye_color":0,"cheeks_3":0,"torso_2":0,"sun_2":10,"bproof_2":0,"lip_thickness":0,"helmet_1":-1,"chest_3":0,"eyebrows_5":0,"chain_2":0,"eyebrows_2":10,"nose_5":0,"tshirt_2":0,"chain_1":-1,"makeup_3":0,"nose_1":0,"lipstick_2":10,"complexion_1":-1,"moles_2":10,"makeup_1":-1,"cheeks_1":0,"beard_2":10,"hair_color_2":0,"ears_1":-1,"chin_4":0,"chest_2":10,"lipstick_3":0,"helmet_2":0,"chin_2":0,"arms_2":0,"arms":23,"complexion_2":10,"nose_4":0,"blemishes_2":10,"eye_squint":0,"hair_1":5,"neck_thickness":0,"pants_2":0,"moles_1":-1,"bags_1":13,"jaw_1":0,"age_2":10,"eyebrows_3":0,"skin_md_weight":6,"shoes_1":20,"age_1":-1,"bodyb_2":0,"chin_3":0,"bodyb_1":-1,"decals_1":0,"ears_2":0,"makeup_4":0,"blush_3":0,"lipstick_4":0,"mask_2":0,"blemishes_1":-1}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type":"police","reason":"MASHIN PD DODFZI","part', NULL, NULL, 0, '[{"val":909100,"percent":90.91,"name":"hunger"},{"val":931825,"percent":93.1825,"name":"thirst"},{"val":100,"percent":100,"name":"health"},{"val":0,"percent":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18231, 'steam:11000014caaec6c', 'license:9a7e74bc41dca2854394a55a1583d57304bc79fb', 'alireza_charvande', 0, 10000, 192200, 0, 'user', 0, '{"y":-1111.78,"x":-53.58,"z":26.07}', '[{"count":6,"item":"bread"},{"count":1,"item":"phone"}]', '[]', 0, NULL, '{"eyebrows_5":0.2,"eye_color":18,"makeup_3":0,"nose_4":0,"shoes_1":2,"nose_5":0,"hair_2":0,"bags_1":-1,"tshirt_2":0,"neck_thickness":0,"jaw_2":0,"helmet_2":0,"eyebrows_3":0,"helmet_1":-1,"nose_1":0,"eyebrows_2":10,"moles_2":10,"tshirt_1":15,"mask_1":-1,"skin_md_weight":5,"chin_4":0,"eyebrows_4":0,"chain_1":-1,"dad":0,"bracelets_1":-1,"mom":34,"torso_1":50,"bproof_1":-1,"cheeks_3":0,"blush_3":63,"eyebrows_6":-2.8,"eyebrows_1":16,"bracelets_2":0,"watches_1":-1,"sun_2":10,"face_md_weight":0,"jaw_1":0,"lipstick_3":0,"blemishes_1":-1,"beard_4":0,"makeup_1":-1,"watches_2":0,"blush_1":-1,"blemishes_2":10,"chin_3":0,"cheeks_1":0,"hair_color_2":5,"chest_3":0,"glasses_1":-1,"glasses_2":0,"chain_2":0,"arms":1,"makeup_2":10,"pants_2":0,"complexion_1":-1,"complexion_2":10,"lip_thickness":0,"lipstick_2":10,"chin_2":0,"cheeks_2":0,"makeup_4":0,"pants_1":45,"nose_2":0,"bags_2":0,"hair_1":13,"nose_6":0,"blush_2":10,"chin_1":0,"chest_2":10,"age_2":10,"mask_2":0,"bproof_2":0,"chest_1":-1,"sun_1":10,"moles_1":-1,"age_1":-1,"beard_1":10,"lipstick_1":-1,"sex":0,"torso_2":1,"shoes_2":0,"beard_3":0,"beard_2":10,"nose_3":0,"hair_color_1":8,"lipstick_4":0}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","percent":90.94,"val":909400},{"name":"thirst","percent":89.32,"val":893200},{"name":"health","percent":100,"val":100},{"name":"armor","percent":0,"val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18232, 'steam:110000144942744', 'license:e3c80b6a3c9725409742bdcbffd3bb15cfdf82d6', 'Sepehr_King', 1, 10000, 200000, 0, 'user', 0, '{"y":-1013.46,"x":143.73,"z":29.4}', '[{"item":"phone","count":1},{"item":"radio","count":1}]', '[{"name":"WEAPON_KNIFE","ammo":0,"components":[],"label":"Knife"},{"name":"WEAPON_PISTOL","ammo":211,"components":["clip_default","suppressor"],"label":"Pistol"},{"name":"WEAPON_COMBATPISTOL","ammo":211,"components":["clip_default"],"label":"Combat Pistol"},{"name":"WEAPON_STUNGUN","ammo":250,"components":[],"label":"Taser"},{"name":"WEAPON_PISTOL50","ammo":211,"components":["clip_default"],"label":"Pistol .50"},{"name":"WEAPON_SMG","ammo":225,"components":["clip_default"],"label":"SMG"},{"name":"WEAPON_CARBINERIFLE","ammo":0,"components":["clip_default"],"label":"Carbine Rifle"},{"name":"WEAPON_BULLPUPRIFLE","ammo":0,"components":["clip_default"],"label":"Bullpup Rifle"}]', 0, NULL, '{"lipstick_2":10,"bracelets_1":-1,"chest_3":0,"cheeks_3":0,"complexion_2":10,"watches_1":-1,"chin_3":0,"jaw_1":0,"moles_2":10,"glasses_1":-1,"eyebrows_1":0,"ears_1":-1,"nose_3":0,"mask_1":-1,"bodyb_2":0,"chin_1":0,"hair_2":0,"sun_2":10,"watches_2":0,"cheeks_2":0,"decals_2":0,"age_2":10,"tshirt_2":0,"hair_color_1":0,"eye_color":0,"torso_1":57,"nose_4":0,"moles_1":-1,"decals_1":0,"bracelets_2":0,"complexion_1":-1,"nose_2":0,"mom":21,"blush_3":0,"face_md_weight":50.0,"beard_3":0,"tshirt_1":10,"eyebrows_3":0,"bodyb_4":0,"blush_1":-1,"eyebrows_4":0,"hair_1":9,"arms":26,"chain_2":0,"bproof_1":-1,"bags_2":0,"arms_2":0,"shoes_1":51,"chin_4":0,"torso_2":0,"beard_2":10,"chest_1":-1,"nose_1":0,"helmet_2":0,"ears_2":0,"glasses_2":0,"blemishes_1":-1,"sun_1":-1,"lip_thickness":0,"bproof_2":0,"eye_squint":0,"skin_md_weight":6,"cheeks_1":0,"pants_1":62,"eyebrows_5":0,"blemishes_2":10,"nose_6":0,"shoes_2":3,"bodyb_3":-1,"hair_color_2":0,"age_1":-1,"lipstick_4":0,"makeup_2":10,"lipstick_3":0,"makeup_1":-1,"pants_2":8,"sex":0,"chest_2":10,"bodyb_1":-1,"mask_2":0,"dad":0,"eyebrows_6":0,"nose_5":0,"lipstick_1":-1,"helmet_1":-1,"makeup_3":0,"beard_4":0,"chin_2":0,"neck_thickness":0,"jaw_2":0,"makeup_4":0,"beard_1":20,"blush_2":10,"bags_1":-1,"eyebrows_2":10,"chain_1":-1}', 'nogang', 0, NULL, 'police', 15, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":399800,"percent":39.98},{"name":"thirst","val":424850,"percent":42.485},{"name":"health","val":50,"percent":50},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18233, 'steam:11000014c1b3e07', 'license:406eacd3464b7a990a8db528395afbfaa6d6a523', 'amir_saeedi', 0, 10000, 200000, 0, 'user', 0, '{"y":-960.42,"x":-226.05,"z":29.15}', '[]', '[]', 0, NULL, '{"chin_1":0,"eyebrows_5":0,"hair_color_1":0,"tshirt_1":15,"moles_1":-1,"moles_2":10,"eyebrows_4":0,"hair_2":0,"torso_2":1,"makeup_1":-1,"eyebrows_3":0,"glasses_2":0,"nose_1":0,"neck_thickness":0,"watches_2":0,"bags_2":0,"beard_4":0,"blush_2":10,"mom":21,"eyebrows_1":0,"bproof_1":-1,"eyebrows_2":10,"makeup_3":0,"shoes_1":2,"blush_1":-1,"arms":1,"sex":0,"lipstick_4":0,"age_1":-1,"beard_3":0,"chin_2":0,"complexion_1":-1,"bproof_2":0,"beard_2":10,"lipstick_1":-1,"makeup_2":10,"face_md_weight":50.0,"skin_md_weight":6,"jaw_2":0,"pants_1":45,"bracelets_2":0,"sun_1":-1,"mask_2":0,"blush_3":0,"mask_1":-1,"chest_1":-1,"hair_1":3,"chin_3":0,"pants_2":0,"cheeks_2":0,"cheeks_3":0,"helmet_1":-1,"nose_5":0,"chest_2":10,"chain_1":-1,"beard_1":2,"hair_color_2":0,"complexion_2":10,"age_2":10,"nose_2":0,"lipstick_3":0,"nose_6":0,"chain_2":0,"lip_thickness":0,"watches_1":-1,"eye_color":0,"cheeks_1":0,"glasses_1":-1,"chest_3":0,"nose_4":0,"bags_1":-1,"chin_4":0,"tshirt_2":0,"jaw_1":0,"makeup_4":0,"shoes_2":0,"bracelets_1":-1,"lipstick_2":10,"blemishes_2":10,"nose_3":0,"eyebrows_6":0,"blemishes_1":-1,"helmet_2":0,"sun_2":10,"dad":0,"torso_1":50}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":980300,"percent":98.03},{"name":"thirst","val":985225,"percent":98.52250000000001},{"name":"health","val":100,"percent":100},{"name":"armor","val":0,"percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18234, 'steam:110000146da759a', 'license:dae7794d4b3ac21688c8b849181ae4170b69abcb', 'taha_nadimi', 0, 10000, 200000, 0, 'user', 0, '{"z":29.32,"y":-1453.13,"x":234.32}', '[]', '[{"name":"WEAPON_MICROSMG","ammo":250,"components":["clip_default"],"label":"Micro SMG"},{"name":"WEAPON_ADVANCEDRIFLE","ammo":227,"components":["clip_default"],"label":"Advanced Rifle"},{"name":"WEAPON_SNIPERRIFLE","ammo":249,"components":["clip_default","scope"],"label":"Sniper Rifle"},{"name":"WEAPON_HEAVYSNIPER","ammo":249,"components":["clip_default","advanced_scope"],"label":"Heavy Sniper"},{"name":"WEAPON_HEAVYSNIPER_MK2","ammo":249,"components":["clip_default","advanced_scope","default_barrel"],"label":"Heavy Sniper MK2"},{"name":"WEAPON_PIPEBOMB","ammo":9,"components":[],"label":"Pipe Bomb"}]', 0, NULL, '{"skin_md_weight":6,"nose_2":0,"nose_4":0,"watches_1":-1,"eyebrows_6":0,"sex":0,"beard_1":-1,"arms":1,"lip_thickness":0,"makeup_2":10,"lipstick_1":-1,"beard_2":10,"chin_1":0,"pants_2":0,"beard_3":0,"torso_2":2,"blush_1":-1,"hair_color_2":0,"pants_1":128,"beard_4":0,"chin_2":0,"sun_1":-1,"blemishes_2":10,"helmet_2":0,"mom":21,"bags_2":0,"complexion_1":-1,"tshirt_1":11,"glasses_1":-1,"dad":0,"eye_color":0,"hair_2":0,"nose_5":0,"eyebrows_5":0,"nose_3":0,"face_md_weight":50.0,"cheeks_1":0,"nose_6":0,"makeup_3":0,"bracelets_1":-1,"makeup_4":0,"moles_2":10,"blush_2":10,"chest_2":10,"watches_2":0,"chain_1":-1,"sun_2":10,"makeup_1":-1,"eyebrows_3":0,"eyebrows_1":0,"helmet_1":-1,"hair_color_1":0,"chin_4":0,"jaw_2":0,"chain_2":0,"chin_3":0,"bproof_2":0,"neck_thickness":0,"bracelets_2":0,"chest_1":-1,"age_1":-1,"chest_3":0,"glasses_2":0,"bags_1":-1,"lipstick_2":10,"complexion_2":10,"blemishes_1":-1,"bproof_1":-1,"jaw_1":0,"shoes_1":9,"hair_1":4,"moles_1":-1,"blush_3":0,"cheeks_3":0,"cheeks_2":0,"eyebrows_2":10,"mask_2":0,"lipstick_4":0,"nose_1":0,"age_2":10,"lipstick_3":0,"mask_1":-1,"shoes_2":1,"tshirt_2":0,"eyebrows_4":0,"torso_1":356}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"name":"hunger","val":865600,"percent":86.56},{"name":"thirst","val":899200,"percent":89.92},{"name":"health","val":50,"percent":50},{"name":"armor","val":100,"percent":100}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18237, 'steam:11000013c08fe4f', 'license:4624be518cc8d92c747a06a7cb40da184a961ec4', 'jordan_jordanzade', 1, 5001, 592000, 8, 'user', 0, '{"z":29.84,"y":-2116.52,"x":888.56}', '[{"count":1,"item":"armor"}]', '[]', 0, NULL, '{"chain_2":0,"lipstick_3":0,"hair_1":38,"lipstick_2":10,"sex":0,"nose_3":0,"chin_2":0,"tshirt_2":0,"makeup_1":-1,"eyebrows_3":0,"chain_1":-1,"eyebrows_4":0,"arms":16,"eye_squint":0,"eye_color":0,"lip_thickness":0,"makeup_3":0,"bodyb_3":-1,"beard_4":0,"glasses_2":0,"blemishes_2":10,"ears_1":-1,"blush_1":-1,"jaw_1":0,"bracelets_1":-1,"nose_6":0,"face_md_weight":50.0,"bags_1":-1,"bodyb_1":-1,"torso_1":121,"bags_2":0,"hair_2":0,"cheeks_1":0,"dad":0,"moles_2":10,"helmet_2":0,"shoes_1":58,"bproof_1":0,"torso_2":0,"beard_1":11,"chest_2":10,"hair_color_2":0,"complexion_2":10,"age_1":-1,"chin_4":0,"tshirt_1":15,"decals_1":0,"eyebrows_5":0,"age_2":10,"watches_2":0,"makeup_2":10,"nose_5":0,"nose_2":0,"bodyb_4":0,"eyebrows_6":0,"nose_1":0,"sun_2":10,"arms_2":0,"beard_3":0,"chest_1":-1,"jaw_2":0,"lipstick_4":0,"mask_2":0,"watches_1":-1,"nose_4":0,"glasses_1":-1,"helmet_1":-1,"blemishes_1":-1,"makeup_4":0,"bproof_2":0,"beard_2":10,"cheeks_3":0,"lipstick_1":-1,"shoes_2":3,"eyebrows_1":0,"pants_2":0,"neck_thickness":0,"complexion_1":-1,"mom":21,"mask_1":-1,"blush_3":0,"cheeks_2":0,"blush_2":10,"bracelets_2":0,"ears_2":0,"pants_1":10,"hair_color_1":26,"skin_md_weight":6,"chest_3":0,"chin_1":0,"decals_2":0,"chin_3":0,"moles_1":-1,"eyebrows_2":10,"sun_1":-1,"bodyb_2":0}', 'nogang', 0, NULL, 'mechanic', 13, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":88.61,"val":886100,"name":"hunger"},{"percent":91.4575,"val":914575,"name":"thirst"},{"percent":100,"val":100,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18238, 'steam:110000147e44dc2', 'license:406eacd3464b7a990a8db528395afbfaa6d6a523', 'AMIR_VSI', 0, 10000, 200000, 9, 'user', 0, '{"y":-797.03,"x":231.06,"z":30.58}', '[{"count":1,"item":"phone"}]', '[]', 0, NULL, '{"nose_2":-0.5,"glasses_1":-1,"hair_color_1":0,"makeup_4":0,"bracelets_1":-1,"lipstick_1":-1,"lipstick_4":0,"bags_1":-1,"chest_3":5,"complexion_1":-1,"chain_2":0,"eyebrows_1":12,"chain_1":-1,"eye_color":4,"sex":0,"eyebrows_6":-0.4,"chin_2":4.5,"skin_md_weight":7,"lipstick_2":10,"sun_1":-1,"chin_1":4.9,"cheeks_1":3.3,"neck_thickness":5.69999999999999,"helmet_2":0,"watches_2":0,"blemishes_2":10,"blush_2":10,"shoes_1":58,"eyebrows_5":-0.2,"cheeks_3":2.4,"lip_thickness":7.4,"blemishes_1":-1,"moles_1":-1,"sun_2":10,"makeup_3":0,"nose_6":0,"face_md_weight":65.0,"hair_color_2":0,"beard_2":10,"chest_1":3,"jaw_1":2.6,"glasses_2":0,"mom":21,"torso_2":0,"nose_3":6.3,"complexion_2":10,"moles_2":10,"hair_1":0,"helmet_1":-1,"mask_1":-1,"hair_2":0,"lipstick_3":0,"watches_1":-1,"makeup_1":-1,"eyebrows_4":1,"blush_1":-1,"makeup_2":10,"shoes_2":3,"beard_4":0,"nose_4":0,"beard_1":11,"pants_2":0,"arms":16,"eyebrows_2":10,"chest_2":10,"blush_3":0,"pants_1":10,"jaw_2":3.7,"age_2":10,"mask_2":0,"cheeks_2":-9.8,"beard_3":0,"tshirt_2":0,"nose_5":-2.0,"nose_1":-3.59999999999999,"bracelets_2":0,"tshirt_1":15,"bags_2":0,"bproof_2":0,"torso_1":121,"eyebrows_3":1,"age_1":-1,"bproof_1":-1,"chin_3":1.1,"chin_4":0.3}', 'nogang', 0, NULL, 'unemployed', 0, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"val":394700,"name":"hunger","percent":39.47},{"val":421025,"name":"thirst","percent":42.1025},{"val":50,"name":"health","percent":50},{"val":0,"name":"armor","percent":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18239, 'steam:11000014771fef7', 'license:d043053149a60e154c028e46e11dc799211433b7', 'amir_jackson', 0, 21851, 2358688, 0, 'user', 0, '{"z":9.25,"y":6622.78,"x":1460.8}', '[{"item":"phone","count":1},{"item":"clip","count":0},{"item":"radio","count":0},{"item":"weed","count":4}]', '[{"components":[],"name":"WEAPON_NIGHTSTICK","ammo":0,"label":"Nightstick"},{"components":["clip_default"],"name":"WEAPON_COMBATPISTOL","ammo":0,"label":"Combat Pistol"},{"components":[],"name":"WEAPON_STUNGUN","ammo":250,"label":"Taser"},{"components":["clip_default"],"name":"WEAPON_CARBINERIFLE","ammo":0,"label":"Carbine Rifle"},{"components":["clip_default"],"name":"WEAPON_GUSENBERG","ammo":0,"label":"Gusenberg Sweeper"}]', 0, NULL, '{"tshirt_2":2,"complexion_2":10,"skin_md_weight":10,"mom":21,"nose_3":3.7,"tshirt_1":11,"eyebrows_2":10,"nose_5":-1.5,"chin_3":0.8,"nose_1":5.89999999999999,"chin_4":-10,"lipstick_4":0,"chest_3":0,"cheeks_2":9.9,"arms":35,"moles_2":10,"sex":0,"bodyb_1":-1,"decals_1":0,"hair_2":0,"hair_color_2":1,"makeup_4":0,"face_md_weight":50.0,"ears_2":0,"beard_1":18,"nose_2":-2.1,"age_1":5,"shoes_1":36,"complexion_1":-1,"helmet_2":0,"eyebrows_4":0,"nose_4":1.7,"eyebrows_6":2.1,"chin_2":6.5,"dad":19,"hair_1":10,"bracelets_1":-1,"eye_squint":0,"hair_color_1":2,"pants_1":10,"chain_2":0,"blemishes_2":10,"cheeks_1":-10,"beard_4":0,"chain_1":0,"beard_3":0,"bags_1":0,"blemishes_1":-1,"lipstick_3":0,"lipstick_1":-1,"blush_2":10,"arms_2":0,"bags_2":0,"makeup_2":10,"chin_1":3.4,"eyebrows_5":3.0,"sun_2":10,"lip_thickness":0.89999999999999,"shoes_2":0,"nose_6":0,"chest_2":10,"chest_1":0,"pants_2":3,"eyebrows_3":0,"decals_2":0,"mask_1":-1,"bracelets_2":0,"bodyb_4":0,"bproof_2":0,"ears_1":-1,"helmet_1":-1,"glasses_2":0,"blush_3":0,"moles_1":-1,"makeup_3":0,"sun_1":-1,"blush_1":-1,"torso_1":159,"mask_2":0,"jaw_1":9.9,"bodyb_2":0,"torso_2":2,"eye_color":21,"eyebrows_1":31,"age_2":10,"lipstick_2":10,"beard_2":10,"bodyb_3":-1,"cheeks_3":5.4,"watches_1":-1,"neck_thickness":9.9,"watches_2":0,"glasses_1":-1,"jaw_2":0,"makeup_1":-1,"bproof_1":0}', 'nogang', 0, NULL, 'fbi', 4, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":47.76,"name":"hunger","val":477600},{"percent":48.32,"name":"thirst","val":483200},{"percent":46,"name":"health","val":46},{"percent":0,"name":"armor","val":0}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18240, 'steam:11000014907b78d', 'license:ddebde7f667f7ec32485f2f3080d4932c0e06da0', 'Ali_Baba', 0, 93000, 960000, 0, 'user', 0, '{"x":-133.29,"y":-641.43,"z":168.82}', '[{"count":1,"item":"phone"},{"count":2,"item":"weed"}]', '[{"label":"Pump Shotgun","ammo":215,"name":"WEAPON_PUMPSHOTGUN","components":[]}]', 0, NULL, '{"chain_2":0,"lipstick_3":0,"pants_2":1,"lipstick_2":10,"sex":0,"nose_3":0,"chin_2":0,"age_2":10,"makeup_1":-1,"eyebrows_3":29,"complexion_2":10,"eyebrows_4":0,"arms":6,"eye_squint":0,"eye_color":0,"lip_thickness":0,"makeup_3":0,"bodyb_3":-1,"beard_4":29,"lipstick_1":-1,"blemishes_2":10,"chest_2":10,"torso_2":1,"jaw_1":0,"bracelets_1":-1,"nose_6":0,"face_md_weight":50.0,"bags_1":-1,"arms_2":0,"decals_2":0,"bags_2":0,"hair_2":0,"cheeks_1":2.7,"dad":0,"helmet_1":2,"helmet_2":0,"shoes_1":7,"bproof_1":-1,"moles_2":10,"beard_1":27,"nose_1":0,"hair_color_2":0,"age_1":-1,"cheeks_3":0,"hair_1":66,"skin_md_weight":6,"decals_1":0,"tshirt_1":15,"chain_1":13,"eyebrows_1":21,"blush_1":-1,"nose_5":0,"watches_2":0,"bodyb_4":0,"mask_1":13,"sun_1":-1,"hair_color_1":29,"lipstick_4":0,"beard_3":29,"chest_1":2,"jaw_2":0,"chin_4":0,"mask_2":9,"watches_1":-1,"eyebrows_6":0,"glasses_1":5,"nose_2":0,"blemishes_1":-1,"makeup_4":0,"bproof_2":0,"beard_2":10,"eyebrows_2":10,"makeup_2":10,"blush_2":10,"glasses_2":3,"nose_4":0,"neck_thickness":0,"complexion_1":-1,"mom":21,"bracelets_2":0,"blush_3":0,"cheeks_2":0.4,"torso_1":50,"eyebrows_5":0,"ears_2":0,"pants_1":46,"sun_2":10,"shoes_2":0,"chest_3":0,"chin_1":0,"tshirt_2":0,"bodyb_1":-1,"moles_1":-1,"ears_1":2,"chin_3":0,"bodyb_2":0}', 'nogang', 0, NULL, 'taxi', 10, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":99.86,"val":998600,"name":"hunger"},{"percent":99.895,"val":998950,"name":"thirst"},{"percent":100,"val":100,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[{"nameHash":"FM_Hair_Fuzz","dlc":"mpbeach_overlays"}]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', '{}'),
	(18241, 'steam:11000014e7a769f', 'license:ff63ee887e39a510c033fa2eef96ee4d7de3bcaf', 'TNT_Mahdi', 0, 117101, 7400000, 0, 'user', 0, '{"x":-135.76,"y":-642.61,"z":168.82}', '[{"count":2,"item":"phone"},{"count":1,"item":"radio"}]', '[{"label":"Bullpup Rifle","components":["clip_default"],"name":"WEAPON_BULLPUPRIFLE","ammo":0}]', 0, NULL, '{"chain_2":2,"lipstick_3":0,"hair_1":48,"lipstick_2":10,"sex":0,"nose_3":0,"chin_2":-0.1,"tshirt_2":0,"makeup_1":-1,"eyebrows_3":27,"chain_1":10,"eyebrows_4":27,"arms":14,"eye_squint":0,"eye_color":0,"lip_thickness":0.1,"makeup_3":0,"bodyb_3":-1,"beard_4":27,"glasses_2":5,"blemishes_2":10,"chest_2":10,"blush_1":-1,"nose_4":0,"bracelets_1":-1,"nose_6":0,"face_md_weight":50.0,"bags_1":-1,"bodyb_1":-1,"decals_2":0,"bags_2":0,"hair_2":0,"cheeks_1":0.2,"dad":0,"moles_2":10,"helmet_2":0,"mask_1":0,"bproof_1":0,"tshirt_1":37,"beard_1":10,"eyebrows_6":0,"hair_color_2":0,"chin_3":0,"torso_1":10,"age_1":-1,"chin_4":0,"decals_1":0,"eyebrows_5":0,"ears_1":-1,"sun_2":10,"eyebrows_1":0,"nose_5":0,"watches_2":0,"bodyb_4":0,"nose_2":0,"lipstick_4":0,"hair_color_1":27,"arms_2":0,"beard_3":26,"chest_1":1,"jaw_2":0,"torso_2":0,"mask_2":5,"watches_1":-1,"helmet_1":-1,"glasses_1":5,"lipstick_1":-1,"blemishes_1":-1,"makeup_4":0,"bproof_2":0,"beard_2":10,"cheeks_3":0,"sun_1":10,"pants_2":0,"jaw_1":0,"makeup_2":10,"neck_thickness":0.4,"complexion_1":-1,"mom":21,"shoes_1":10,"blush_3":0,"cheeks_2":0,"bracelets_2":0,"shoes_2":0,"ears_2":0,"pants_1":31,"age_2":10,"skin_md_weight":6,"chest_3":27,"chin_1":0,"nose_1":0.5,"complexion_2":10,"moles_1":-1,"eyebrows_2":10,"blush_2":10,"bodyb_2":0}', 'nogang', 0, NULL, 'taxi', 9, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":49.57,"val":495700,"name":"hunger"},{"percent":49.6775,"val":496775,"name":"thirst"},{"percent":50,"val":50,"name":"health"},{"percent":0,"val":0,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '[]', 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL),
	(18242, 'steam:1100001557dcb69', 'license:fb59e86710ee7c3fc338b27d5bb6d59b1ef100af', 'rabert_jackson', 0, 11000, 605000, 0, 'user', 0, '{"x":408.39,"y":-995.52,"z":29.27}', '[]', '[{"label":"Pistol .50","ammo":243,"name":"WEAPON_PISTOL50","components":["clip_default"]}]', 0, NULL, '{"chain_2":0,"lipstick_3":0,"pants_2":0,"lipstick_2":10,"sex":0,"nose_3":0,"chin_2":0,"age_2":10,"makeup_1":-1,"nose_1":0,"chain_1":-1,"eyebrows_4":0,"arms":24,"eye_color":0,"lip_thickness":0,"makeup_3":0,"bracelets_2":0,"beard_4":56,"glasses_2":0,"blemishes_2":10,"chest_2":10,"torso_2":0,"jaw_1":0,"bracelets_1":-1,"nose_6":0,"face_md_weight":50.0,"bags_1":-1,"blush_2":10,"torso_1":50,"bags_2":0,"hair_2":0,"cheeks_1":0,"dad":0,"helmet_1":-1,"helmet_2":0,"shoes_1":1,"bproof_1":-1,"beard_1":0,"eyebrows_6":0,"eyebrows_5":0,"complexion_2":10,"nose_5":0,"nose_2":0,"chin_3":0,"hair_color_2":49,"eyebrows_3":0,"sun_2":10,"chin_4":0,"beard_3":56,"chest_1":-1,"jaw_2":0,"moles_1":-1,"mask_2":0,"watches_1":-1,"moles_2":10,"glasses_1":-1,"chin_1":0,"blemishes_1":-1,"makeup_4":0,"bproof_2":0,"beard_2":10,"eyebrows_2":10,"skin_md_weight":6,"eyebrows_1":0,"tshirt_1":25,"lipstick_4":0,"neck_thickness":0,"complexion_1":-1,"mom":21,"hair_1":31,"blush_3":0,"cheeks_2":0,"blush_1":-1,"mask_1":-1,"cheeks_3":0,"pants_1":4,"tshirt_2":0,"shoes_2":0,"chest_3":0,"makeup_2":10,"watches_2":0,"hair_color_1":47,"age_1":-1,"sun_1":-1,"lipstick_1":-1,"nose_4":0}', 'nogang', 0, 'division_4', 'police', 15, 0, NULL, '{"type": 0, "part": 0, "time": 0, "reason": 0}', NULL, NULL, 0, '[{"percent":91.4,"val":914000,"name":"hunger"},{"percent":93.55,"val":935500,"name":"thirst"},{"percent":100,"val":100,"name":"health"},{"percent":1,"val":1,"name":"armor"}]', NULL, 0, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 0, '', '', '', '', '0', '[]', NULL, 'standard', 'https://cdn.discordapp.com/attachments/1051168032598282290/1057353555402555422/61e852831fb1bbd9027b243414f37786.png', NULL);

-- Dumping structure for table greencity.user_documents
CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(45) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.user_documents: ~0 rows (approximately)

-- Dumping structure for table greencity.user_levels
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `crafting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table greencity.user_levels: ~0 rows (approximately)

-- Dumping structure for table greencity.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2031 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.user_licenses: ~36 rows (approximately)
INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
	(1987, 'dmv', 'steam:1100001161bef71'),
	(1988, 'drive', 'steam:1100001161bef71'),
	(1989, 'weapon', 'steam:110000155f2b86e'),
	(1992, 'drive', 'steam:110000144eefef0'),
	(1995, 'weapon', 'steam:110000149f1696f'),
	(1998, 'weapon', 'steam:11000014e0b7704'),
	(1999, 'weapon', 'steam:11000011844f231'),
	(2000, 'dmv', 'steam:110000133a52955'),
	(2001, 'drive', 'steam:110000133a52955'),
	(2002, 'dmv', 'steam:11000013dc12c8c'),
	(2003, 'drive', 'steam:11000013dc12c8c'),
	(2004, 'weapon', 'steam:11000013dc12c8c'),
	(2005, 'weapon', 'steam:11000014d8c2f56'),
	(2007, 'weapon', 'steam:110000147e44dc2'),
	(2008, 'weapon', 'steam:1100001459c8079'),
	(2009, 'dmv', 'steam:1100001440d17a7'),
	(2010, 'drive', 'steam:1100001440d17a7'),
	(2012, 'dmv', 'steam:110000155f2b86e'),
	(2013, 'drive', 'steam:110000155f2b86e'),
	(2014, 'drive', 'steam:110000144942744'),
	(2015, 'weapon', 'steam:110000144942744'),
	(2016, 'weapon', 'steam:1100001549580b4'),
	(2017, 'dmv', 'steam:1100001549580b4'),
	(2018, 'drive', 'steam:1100001549580b4'),
	(2019, 'dmv', 'steam:11000014771fef7'),
	(2020, 'drive', 'steam:11000014771fef7'),
	(2021, 'weapon', 'steam:11000014771fef7'),
	(2022, 'dmv', 'steam:11000011844f231'),
	(2023, 'drive_truck', 'steam:11000014771fef7'),
	(2024, 'drive', 'steam:11000011844f231'),
	(2025, 'dmv', 'steam:110000144792e0f'),
	(2026, 'drive', 'steam:110000144792e0f'),
	(2027, 'drive_bike', 'steam:11000014771fef7'),
	(2028, 'drive', 'steam:11000014e7a769f'),
	(2029, 'dmv', 'steam:110000149f1696f'),
	(2030, 'drive', 'steam:110000149f1696f');

-- Dumping structure for table greencity.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table greencity.vehicles: ~248 rows (approximately)
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`) VALUES
	('Akuma', 'akuma', 700000, 'motorcycles', NULL),
	('Alpha', 'alpha', 900000, 'sports', NULL),
	('Asea', 'asea', 2100000, 'compacts', NULL),
	('Asterope', 'asterope', 1000000, 'compacts', NULL),
	('Autarch', 'autarch', 48000000, 'sports', NULL),
	('Avarus', 'avarus', 800000, 'motorcycles', NULL),
	('Bagger', 'bagger', 500000, 'motorcycles', NULL),
	('Baller 2012', 'baller', 900000, 'suvs', NULL),
	('Baller 2016', 'baller2', 1200000, 'suvs', NULL),
	('Baller 2017', 'baller3', 4000000, 'suvs', NULL),
	('Banshee', 'banshee', 1300000, 'sports', NULL),
	('Banshee Custom', 'banshee2', 4700000, 'super', NULL),
	('Bati', 'bati', 1000000, 'motorcycles', NULL),
	('Bati Sport', 'bati2', 1300000, 'motorcycles', NULL),
	('Bestia GTS', 'bestiagts', 1500000, 'sports', NULL),
	('BF 400', 'bf400', 500000, 'motorcycles', NULL),
	('BF Injection', 'bfinjection', 300000, 'offroad', NULL),
	('Bifta', 'bifta', 350000, 'offroad', NULL),
	('Bison', 'bison', 1400000, 'vans', NULL),
	('BJ XL', 'bjxl', 8100000, 'gold', NULL),
	('Blade', 'blade', 450000, 'muscle', NULL),
	('Blazer', 'blazer', 300000, 'offroad', NULL),
	('Blazer Sport', 'blazer3', 350000, 'offroad', NULL),
	('Blista', 'blista', 480000, 'compacts', NULL),
	('Blista 1999', 'blista2', 450000, 'compacts', NULL),
	('Bobcat XL', 'bobcatxl', 780000, 'vans', NULL),
	('Bodhi', 'bodhi2', 350000, 'vans', NULL),
	('Boxville', 'boxville4', 1400000, 'vans', NULL),
	('Brawler', 'brawler', 600000, 'offroad', NULL),
	('Brioso', 'brioso', 650000, 'compacts', NULL),
	('B Type', 'btype2', 4000000, 'sportsclassics', NULL),
	('B Type Sport', 'btype3', 1900000, 'sportsclassics', NULL),
	('Buccaneer Custom', 'buccaneer2', 670000, 'coupes', NULL),
	('Buffalo', 'buffalo', 500000, 'sedans', NULL),
	('Buffalo Sport', 'buffalo3', 630000, 'sports', NULL),
	('Bullet', 'bullet', 2000000, 'sports', NULL),
	('Burrito', 'burrito3', 600000, 'vans', NULL),
	('Camper', 'camper', 780000, 'vans', NULL),
	('Carbon RS', 'carbonrs', 1780000, 'motorcycles', NULL),
	('Cavalcade', 'cavalcade', 1100000, 'suvs', NULL),
	('Cavalcade 2018', 'cavalcade2', 4000000, 'suvs', NULL),
	('Cheburek', 'cheburek', 4000000, 'compacts', NULL),
	('Cheetah Classic', 'cheetah2', 9000000, 'sportsclassics', NULL),
	('Chimera', 'chimera', 1500000, 'motorcycles', NULL),
	('Chino', 'chino2', 780000, 'coupes', NULL),
	('Cliffhanger', 'cliffhanger', 650000, 'motorcycles', NULL),
	('Clique', 'clique', 25000000, 'sportsclassics', NULL),
	('Cognosenti', 'cog55', 9000000, 'sedans', NULL),
	('Cognosenti Cabrio', 'cogcabrio', 15000000, 'sports', NULL),
	('Comet Sport', 'comet2', 1380000, 'sports', NULL),
	('Comet Custom', 'comet3', 9000000, 'coupes', NULL),
	('Comet Super', 'comet5', 24500000, 'super', NULL),
	('Contender', 'contender', 1200000, 'offroad', NULL),
	('Coquette', 'coquette', 1460000, 'sports', NULL),
	('Coquette Classic Sport', 'coquette2', 65000000, 'sportsclassics', NULL),
	('Coquette Classic', 'coquette3', 1300000, 'sportsclassics', NULL),
	('Cyclone', 'cyclone', 34000000, 'sports', NULL),
	('Daemon', 'daemon2', 540000, 'motorcycles', NULL),
	('Defiler', 'defiler', 500000, 'motorcycles', NULL),
	('Deveste', 'deveste', 25000000, 'super', NULL),
	('Deviant', 'deviant', 2000000, 'muscle', NULL),
	('Diablous Gen', 'diablous', 500000, 'motorcycles', NULL),
	('Diablous', 'diablous2', 1500000, 'motorcycles', NULL),
	('Dilettante', 'dilettante', 4000000, 'compacts', NULL),
	('D Loader', 'dloader', 1500000, 'vans', NULL),
	('Dominator ', 'dominator2', 900000, 'muscle', NULL),
	('Dominator Sport', 'dominator3', 80000000, 'gold', NULL),
	('Double', 'double', 700000, 'motorcycles', NULL),
	('Dubsta', 'dubsta', 2000000, 'suvs', NULL),
	('Dubsta Sport', 'dubsta2', 2500000, 'suvs', NULL),
	('Dubsta Offroad', 'dubsta3', 950000, 'offroad', NULL),
	('Dune', 'dune', 250000, 'offroad', NULL),
	('Elegy Custom', 'elegy', 20000000, 'coupes', NULL),
	('Ellie', 'ellie', 1500000, 'muscle', NULL),
	('Enduro', 'enduro', 500000, 'motorcycles', NULL),
	('Entitiy', 'entity2', 9000000, 'sports', NULL),
	('Esskey', 'esskey', 400000, 'motorcycles', NULL),
	('Exemplar', 'exemplar', 700000, 'sedans', NULL),
	('Faction 2012', 'faction2', 600000, 'coupes', NULL),
	('Faction 2015', 'faction3', 720000, 'coupes', NULL),
	('Faggio', 'faggio', 500000, 'motorcycles', NULL),
	('Vespa', 'faggio2', 500000, 'motorcycles', NULL),
	('FCR', 'fcr', 1200000, 'motorcycles', NULL),
	('FCR Sport', 'fcr2', 1400000, 'motorcycles', NULL),
	('Felon ', 'felon', 800000, 'sedans', NULL),
	('Felon Convt', 'felon2', 1200000, 'sedans', NULL),
	('Feltzer Sport', 'feltzer2', 1500000, 'sports', NULL),
	('Feltzer Classic', 'feltzer3', 1500000, 'sportsclassics', NULL),
	('Flash GT', 'flashgt', 36000000, 'sports', NULL),
	('FMJ', 'fmj', 4000000, 'sports', NULL),
	('FQ 2', 'fq2', 4000000, 'suvs', NULL),
	('Free Crawler', 'freecrawler', 23000000, 'gold', NULL),
	('Furore GT', 'furoregt', 1000000, 'sports', NULL),
	('Gargoyle', 'gargoyle', 1300000, 'motorcycles', NULL),
	('Gauntlet Sport', 'gauntlet2', 1300000, 'muscle', NULL),
	('G Burrito', 'gburrito', 4000000, 'vans', NULL),
	('GP 1', 'gp1', 4000000, 'sportsclassics', NULL),
	('Granger', 'granger', 1500000, 'suvs', NULL),
	('GT 500', 'gt500', 1500000, 'sportsclassics', NULL),
	('Guardian', 'guardian', 550000, 'offroad', NULL),
	('Hakuchou', 'hakuchou', 900000, 'motorcycles', NULL),
	('Hakuchou Drag', 'hakuchou2', 2000000, 'motorcycles', NULL),
	('Hermes', 'hermes', 13500000, 'muscle', NULL),
	('HotKnife', 'hotknife', 4900000, 'muscle', NULL),
	('Impaler', 'impaler', 500000, 'muscle', NULL),
	('Infernus Classic', 'infernus2', 4000000, 'sportsclassics', NULL),
	('Innovation', 'innovation', 900000, 'motorcycles', NULL),
	('Italia GTB', 'italigtb', 8000000, 'sports', NULL),
	('Itali GTB Custom', 'italigtb2', 45000000, 'coupes', NULL),
	('Itali GTO', 'italigto', 10000000, 'super', NULL),
	('Jackal', 'jackal', 800000, 'sedans', NULL),
	('Jester ', 'jester', 1420000, 'sports', NULL),
	('Jester Sport', 'jester2', 2600000, 'sports', NULL),
	('Journey', 'journey', 600000, 'vans', NULL),
	('Kalahari', 'kalahari', 1500000, 'compacts', NULL),
	('Kamacho', 'kamacho', 9000000, 'offroad', NULL),
	('Khamelion', 'khamelion', 1300000, 'sports', NULL),
	('Kuruma', 'Kuruma', 650000, 'sedans', NULL),
	('Le7B', 'le7b', 10000000, 'sports', NULL),
	('Lectro', 'lectro', 250000, 'motorcycles', NULL),
	('Lynx', 'lynx', 1200000, 'sports', NULL),
	('Mamba', 'mamba', 1300001, 'sportsclassics', NULL),
	('Manchez', 'manchez', 530000, 'motorcycles', NULL),
	('Massacro', 'massacro', 1500000, 'sports', NULL),
	('Massacro Sport', 'massacro2', 1900000, 'sports', NULL),
	('Mesa ', 'mesa3', 600000, 'offroad', NULL),
	('Minivan', 'minivan2', 700000, 'coupes', NULL),
	('Monroe', 'monroe', 7000000, 'sportsclassics', NULL),
	('Moonbeam', 'moonbeam2', 1000000, 'coupes', NULL),
	('Nemesis', 'nemesis', 360000, 'motorcycles', NULL),
	('Neo', 'neo', 35000000, 'super', NULL),
	('Neon', 'neon', 34000000, 'sports', NULL),
	('Nero', 'nero', 18000000, 'sports', NULL),
	('Nero Custom', 'nero2', 50000000, 'coupes', NULL),
	('Night Blade', 'nightblade', 920000, 'motorcycles', NULL),
	('NightShade', 'nightshade', 1450000, 'muscle', NULL),
	('Ninef', 'ninef', 7000000, 'sports', NULL),
	('Ninef Convt', 'ninef2', 40000000, 'sports', NULL),
	('Oracle 2012', 'oracle', 1100000, 'sedans', NULL),
	('Oracle 2017', 'oracle2', 1800000, 'sedans', NULL),
	('Osiris', 'osiris', 4000000, 'sports', NULL),
	('Panto', 'panto', 450000, 'compacts', NULL),
	('Paradise', 'paradise', 700000, 'vans', NULL),
	('Pariah', 'pariah', 28000000, 'sports', NULL),
	('Patriot', 'patriot', 1300000, 'gold', NULL),
	('Penetrator', 'penetrator', 8000000, 'sportsclassics', NULL),
	('Penumbra', 'penumbra', 650000, 'sports', NULL),
	('Peyote', 'peyote', 500000, 'sportsclassics', NULL),
	('Prister', 'pfister811', 8000000, 'sports', NULL),
	('Pigalle', 'pigalle', 6000000, 'sportsclassics', NULL),
	('Primo', 'primo2', 1000000, 'coupes', NULL),
	('Prototipo', 'prototipo', 12000000, 'sports', NULL),
	('Raiden', 'raiden', 30000000, 'sedans', NULL),
	('Rancher XL', 'rancherxl', 4000000, 'suvs', NULL),
	('Rapid GT', 'rapidgt', 8000000, 'sports', NULL),
	('Rapid GTS', 'rapidgt2', 13000000, 'sports', NULL),
	('Rapid GT', 'rapidgt3', 20000000, 'muscle', NULL),
	('RatLoader', 'ratloader', 800000, 'muscle', NULL),
	('Reaper', 'reaper', 34000000, 'sports', NULL),
	('Rebel', 'rebel2', 230000, 'offroad', NULL),
	('Rental Bus', 'rentalbus', 4000000, 'vans', NULL),
	('Rhapsody', 'rhapsody', 4000000, 'compacts', NULL),
	('Riata', 'riata', 9000000, 'gold', NULL),
	('Rrocket', 'rrocket', 15000000, 'goldmotos', NULL),
	('Ruffian', 'ruffian', 450000, 'motorcycles', NULL),
	('Ruston', 'ruston', 1500000, 'sports', NULL),
	('Sabre GT', 'sabregt2', 1000000, 'coupes', NULL),
	('Sadler', 'sadler', 4000000, 'vans', NULL),
	('Sanchez', 'sanchez', 500000, 'motorcycles', NULL),
	('Sanchez Sport', 'sanchez2', 700000, 'motorcycles', NULL),
	('Sanctus', 'sanctus', 1200000, 'goldmotos', NULL),
	('SandKing', 'sandking', 500000, 'offroad', NULL),
	('SandKing Coupe', 'sandking2', 1500000, 'offroad', NULL),
	('SC 1', 'sc1', 32000000, 'sports', NULL),
	('Schafter ', 'schafter3', 1000000, 'sedans', NULL),
	('Schlagen', 'schlagen', 70000000, 'gold', NULL),
	('Schwarzer', 'schwarzer', 1500000, 'sports', NULL),
	('Sentinel', 'sentinel', 800000, 'sports', NULL),
	('Sentinel Sport', 'sentinel2', 900000, 'sports', NULL),
	('Sentinel Classic', 'sentinel3', 14000000, 'sports', NULL),
	('Seven 70', 'seven70', 12000000, 'sports', NULL),
	('Sheava', 'sheava', 10000000, 'sports', NULL),
	('Shotaro', 'shotaro', 6700000, 'goldmotos', NULL),
	('SlamVan ', 'slamvan3', 3000000, 'coupes', NULL),
	('Sovereign', 'sovereign', 1200000, 'motorcycles', NULL),
	('Specter', 'specter', 8000000, 'gold', NULL),
	('Specter Custom', 'specter2', 10000000, 'gold', NULL),
	('Speedo ', 'speedo4', 3000000, 'vans', NULL),
	('Stafford', 'stafford', 8100000, 'gold', NULL),
	('Stalion Convt', 'stalion', 900000, 'muscle', NULL),
	('Stalion Sport', 'stalion2', 500000, 'muscle', NULL),
	('Stinger', 'stinger', 1800000, 'sportsclassics', NULL),
	('Stinger GT', 'stingergt', 1500000, 'sportsclassics', NULL),
	('Streiter', 'streiter', 2000000, 'suvs', NULL),
	('Sultan', 'sultan', 500000, 'sports', NULL),
	('Sultan RS', 'sultanrs', 1500000, 'coupes', NULL),
	('Superd', 'superd', 2500000, 'sedans', NULL),
	('Surfer', 'surfer', 600000, 'vans', NULL),
	('Surge', 'surge', 500000, 'sedans', NULL),
	('Swinger', 'swinger', 4000000, 'sportsclassics', NULL),
	('T 20', 't20', 6000000, 'sports', NULL),
	('Tailgater', 'tailgater', 780000, 'sedans', NULL),
	('Taipan', 'taipan', 5000000, 'sports', NULL),
	('Tampa', 'tampa2', 500000, 'muscle', NULL),
	('Tempesta', 'tempesta', 10000000, 'sports', NULL),
	('Tezeract', 'tezeract', 90000000, 'vip', NULL),
	('Torero', 'torero', 2000000, 'sportsclassics', NULL),
	('Tornado Custom', 'tornado2', 3500000, 'coupes', NULL),
	('Tornado', 'tornado6', 500000, 'muscle', NULL),
	('Toros', 'toros', 50000000, 'suvs', NULL),
	('Trophy Truck A', 'trophytruck', 1500000, 'offroad', NULL),
	('Trophy Truck', 'trophytruck2', 1500000, 'offroad', NULL),
	('Tropos', 'tropos', 1200000, 'sports', NULL),
	('Tulip', 'tulip', 1500000, 'muscle', NULL),
	('Tursmo ', 'turismo2', 3000000, 'sportsclassics', NULL),
	('Turismo R', 'turismor', 7000000, 'sports', NULL),
	('Tyrant', 'tyrant', 5000000, 'sports', NULL),
	('Tyrus', 'tyrus', 12000000, 'sports', NULL),
	('Utilli Truck', 'utillitruck3', 1500000, 'vans', NULL),
	('Vacca', 'vacca', 2700000, 'sports', NULL),
	('Vader', 'vader', 580000, 'motorcycles', NULL),
	('Vagner', 'vagner', 40000000, 'sports', NULL),
	('Vamos', 'vamos', 1500000, 'muscle', NULL),
	('Vigero', 'vigero', 450000, 'muscle', NULL),
	('Virgo', 'virgo', 350000, 'muscle', NULL),
	('Virgo Custom', 'virgo3', 500000, 'coupes', NULL),
	('Visione', 'visione', 45000000, 'sports', NULL),
	('Voltic', 'voltic', 2000000, 'super', NULL),
	('Voodoo', 'voodoo', 670000, 'coupes', NULL),
	('Vortex', 'vortex', 4000000, 'goldmotos', NULL),
	('Warrener', 'warrener', 4000000, 'compacts', NULL),
	('Washington', 'washington', 460000, 'compacts', NULL),
	('Windsor', 'windsor', 2000000, 'gold', NULL),
	('Windsor Convt', 'windsor2', 3000000, 'sedans', NULL),
	('Wolfsbane', 'wolfsbane', 700000, 'motorcycles', NULL),
	('Xa21', 'xa21', 50000000, 'sports', NULL),
	('XLS', 'xls', 1000000, 'suvs', NULL),
	('Yosemite', 'yosemite', 9400000, 'muscle', NULL),
	('Youga ', 'youga', 500000, 'vans', NULL),
	('Youga Sport', 'youga2', 450000, 'vans', NULL),
	('Z 190', 'z190', 20000000, 'sportsclassics', NULL),
	('Zentorno', 'zentorno', 40000000, 'sports', NULL),
	('Zion', 'zion2', 900000, 'sports', NULL),
	('Zombiea', 'zombiea', 900000, 'motorcycles', NULL),
	('Zombieb', 'zombieb', 700000, 'motorcycles', NULL),
	('Z TYPE', 'ztype', 7000000, 'sportsclassics', NULL),
	('Weevil', 'weevil', 1100000, 'cayo', NULL),
	('Italirsx', 'italirsx', 9000000, 'cayo', NULL);

-- Dumping structure for table greencity.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.vehicle_categories: ~16 rows (approximately)
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('coupes', 'Bennys'),
	('gold', 'Gold'),
	('goldmotos', 'Gold Motos'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans'),
	('vip', 'Vip'),
	('cayo', 'Cayo'),
	('compacts', 'Economical');

-- Dumping structure for table greencity.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table greencity.vehicle_sold: ~0 rows (approximately)

-- Dumping structure for table greencity.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table greencity.weashops: ~12 rows (approximately)
INSERT INTO `weashops` (`id`, `zone`, `type`, `item`, `price`) VALUES
	(1, 'GunShop', 'Gun', 'WEAPON_BAT', 50000),
	(2, 'GunShop', 'Gun', 'WEAPON_KNIFE', 80000),
	(3, 'GunShop', 'Gun', 'WEAPON_PISTOL', 120000),
	(4, 'GunShop', 'Item', 'clip', 2000),
	(8, 'GunShop', 'Item', 'armor', 50000),
	(9, 'Medic', 'Item', 'water', 2000),
	(10, 'Medic', 'Item', 'bread', 2000),
	(11, 'Medic', 'Item', 'phone', 10000),
	(12, 'Medic', 'Item', 'radio', 20000),
	(5, 'GunShop', 'Item', 'silencer', 10000),
	(7, 'GunShop', 'Item', 'grip', 20000),
	(6, 'GunShop', 'Item', 'flashlight', 10000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
