# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.14)
# Database: phongeenews
# Generation Time: 2014-06-06 05:30:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table facebookuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `facebookuser`;

CREATE TABLE `facebookuser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `facebookname` text,
  `facebookid` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fanpage_id` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table fanpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fanpage`;

CREATE TABLE `fanpage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pageid` varchar(50) DEFAULT NULL,
  `pageusername` varchar(50) DEFAULT NULL,
  `pagename` varchar(50) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `about` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lacategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lacategories`;

CREATE TABLE `lacategories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latitle` varchar(50) DEFAULT NULL,
  `laparent_id` int(11) DEFAULT NULL,
  `laurl` varchar(50) DEFAULT NULL,
  `lainfo` text,
  `ladeleted` int(11) NOT NULL DEFAULT '0',
  `laorder` int(11) DEFAULT NULL,
  `laimage` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laicon` varchar(100) NOT NULL DEFAULT 'glyphicon glyphicon-link',
  `isnews` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`laurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lacategories` WRITE;
/*!40000 ALTER TABLE `lacategories` DISABLE KEYS */;

INSERT INTO `lacategories` (`id`, `latitle`, `laparent_id`, `laurl`, `lainfo`, `ladeleted`, `laorder`, `laimage`, `updated_at`, `created_at`, `laicon`, `isnews`)
VALUES
	(1,'Apple',0,'apple','Đẳng cấp của bạn.',0,1,NULL,'2014-06-06 10:30:32','2014-06-04 14:21:24','glyphicon glyphicon-link',0),
	(2,'Hãng khác',0,'hang-khac','',0,2,NULL,'2014-06-04 14:21:39','2014-06-04 14:21:39','glyphicon glyphicon-link',0),
	(3,'iPhone',1,'iphone','',0,0,'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg','2014-06-06 10:56:16','2014-06-04 14:22:00','glyphicon glyphicon-link',0),
	(4,'iPad',1,'ipad','',0,0,'S85nbAnPygMFGjeoNmU9r7oERyxPGHeR.jpg','2014-06-06 10:56:08','2014-06-04 14:22:10','glyphicon glyphicon-link',0),
	(5,'Samsung',2,'samsung','',0,0,NULL,'2014-06-04 14:22:26','2014-06-04 14:22:26','glyphicon glyphicon-link',0),
	(6,'HTC',2,'htc','',0,0,NULL,'2014-06-04 14:22:36','2014-06-04 14:22:36','glyphicon glyphicon-link',0),
	(7,'Tin tức',0,'tin-tuc','',0,4,NULL,'2014-06-04 17:48:46','2014-06-04 15:31:11','glyphicon glyphicon-link',1),
	(8,'Tin khuyến mãi',7,'tin-khuyen-mai','',0,0,NULL,'2014-06-04 17:49:03','2014-06-04 15:31:27','glyphicon glyphicon-link',1),
	(9,'Tin công ty',7,'tin-cong-ty','',0,0,NULL,'2014-06-04 17:49:07','2014-06-04 15:31:32','glyphicon glyphicon-link',1),
	(10,'Tin báo chí',7,'tin-bao-chi','',0,0,NULL,'2014-06-04 17:49:11','2014-06-04 15:32:37','glyphicon glyphicon-link',1),
	(11,'Kho máy cũ',0,'kho-may-cu','',0,3,NULL,'2014-06-04 15:33:30','2014-06-04 15:33:24','glyphicon glyphicon-link',0),
	(12,'Tin nổi bật',7,'tin-noi-bat','',0,0,NULL,'2014-06-04 17:49:15','2014-06-04 15:35:09','glyphicon glyphicon-link',1);

/*!40000 ALTER TABLE `lacategories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table laconfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laconfig`;

CREATE TABLE `laconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lavar` varchar(20) DEFAULT NULL,
  `lavalue` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `laconfig` WRITE;
/*!40000 ALTER TABLE `laconfig` DISABLE KEYS */;

INSERT INTO `laconfig` (`id`, `lavar`, `lavalue`, `updated_at`, `created_at`)
VALUES
	(1,'slide','3bzfAaeFCrTKutiuUObQyeSFRVceUSJw.jpg|abc|#\r\npWJlZBBBSw2WBACkVxTwIKz9xFlnZT6S.jpg|xyz|#\r\nxe35BlLIKjBujTl8Ch1hlAeX2ZrTmi4G.jpg|npk|#\r\n','2014-06-04 15:25:46','2014-06-04 15:25:46'),
	(2,'sidebarads','','2014-06-04 15:25:46','2014-06-04 15:25:46');

/*!40000 ALTER TABLE `laconfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lafacebookcomments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lafacebookcomments`;

CREATE TABLE `lafacebookcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lafullname` text,
  `lacontent` text,
  `laurl` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lafacebookprofiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lafacebookprofiles`;

CREATE TABLE `lafacebookprofiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `username` text CHARACTER SET latin1,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `laaccess_token` text CHARACTER SET latin1,
  `laaccess_token_secret` text CHARACTER SET latin1,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table laimages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laimages`;

CREATE TABLE `laimages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lapic` varchar(50) DEFAULT NULL,
  `latitle` varchar(100) DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `laimages` WRITE;
/*!40000 ALTER TABLE `laimages` DISABLE KEYS */;

INSERT INTO `laimages` (`id`, `lapic`, `latitle`, `laproduct_id`, `updated_at`, `created_at`)
VALUES
	(2,'BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg','',1,'2014-06-04 15:15:53','2014-06-04 15:15:53'),
	(3,'AGBMOrcCxwamfqVBXmoGCmHIxVaE0ZQo.jpg','',10,'2014-06-06 02:00:00','2014-06-06 02:00:00'),
	(4,'LPJiH70gkH5zWj84Uh3rNB0tfPpAuGlq.jpg','',1,'2014-06-06 11:45:09','2014-06-06 11:45:09'),
	(5,'cOZeIQToD5pDOGs4mv0zU9V9tv2z3fTG.jpg','',1,'2014-06-06 11:45:09','2014-06-06 11:45:09'),
	(6,'Yla3icQMx39ZXCCtvj0qgK4gxlW9IIsR.jpg','',9,'2014-06-06 11:52:47','2014-06-06 11:52:47'),
	(7,'oEnNs0z54vDmg1SJgboBoRLiWGbOLbPO.jpg','',8,'2014-06-06 11:52:59','2014-06-06 11:52:59'),
	(8,'1gjKrDrbwjZJjIrtd8I3deLciQs0vCwv.jpg','',7,'2014-06-06 11:53:07','2014-06-06 11:53:07');

/*!40000 ALTER TABLE `laimages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lamanufactors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lamanufactors`;

CREATE TABLE `lamanufactors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latitle` varchar(50) DEFAULT NULL,
  `laurl` varchar(50) DEFAULT NULL,
  `ladeleted` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lainfo` text,
  `laimage` varchar(50) DEFAULT NULL,
  `laorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`laurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lamanufactors` WRITE;
/*!40000 ALTER TABLE `lamanufactors` DISABLE KEYS */;

INSERT INTO `lamanufactors` (`id`, `latitle`, `laurl`, `ladeleted`, `updated_at`, `created_at`, `lainfo`, `laimage`, `laorder`)
VALUES
	(1,'Apple','apple',NULL,'2014-06-06 11:08:00','2014-06-06 09:38:22','','ZpzfOcYcp3HnCUKdXI7dcm3SOjjpTmqQ.jpg',1),
	(2,'Samsung','samsung',NULL,'2014-06-06 11:07:56','2014-06-06 09:38:34','','FyDfuFEeQX5iMS7yk49fY5EhMX3HWdAR.jpg',2),
	(3,'windows phone','windows-phone',NULL,'2014-06-06 11:07:52','2014-06-06 09:38:50','','SOatDqPd6URWgtRKUiWYNXbO2glvHe9A.jpg',3),
	(4,'LG','lg',NULL,'2014-06-06 11:07:47','2014-06-06 09:39:03','','CABP1VfC0XNLPQLxpsFnVC5J2J2JbVBS.jpg',4),
	(5,'htc','htc',NULL,'2014-06-06 11:07:43','2014-06-06 09:39:12','','SwR7vNGBPk3Fm9InjttjJy8efvcPDHS3.png',5),
	(6,'blackberry','blackberry',NULL,'2014-06-06 09:39:25','2014-06-06 09:39:25','','PTEkw7lxn752sjHPC8Si30w32d2VsXml.jpg',6);

/*!40000 ALTER TABLE `lamanufactors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table laorderitems
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laorderitems`;

CREATE TABLE `laorderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `latitle` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `laprice` int(11) DEFAULT NULL,
  `variantname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producturl` text COLLATE utf8_unicode_ci,
  `caturl` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantid` int(11) DEFAULT NULL,
  `laimage` text COLLATE utf8_unicode_ci,
  `lakhoiluong` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table laorders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laorders`;

CREATE TABLE `laorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lashipping` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lapayment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lasumkhoiluong` int(11) DEFAULT NULL,
  `lafeeshipping` int(11) DEFAULT NULL,
  `laordername` text COLLATE utf8_unicode_ci,
  `laordertel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laorderemail` text COLLATE utf8_unicode_ci,
  `laorderaddr` text COLLATE utf8_unicode_ci,
  `laorderprovince` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laorderdistrict` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `voucher` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giamvoucher` int(11) DEFAULT NULL,
  `sumsanpham` int(11) DEFAULT NULL,
  `laordernote` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table laproducts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laproducts`;

CREATE TABLE `laproducts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latitle` varchar(100) DEFAULT '',
  `lakeyword` text,
  `ladescription` text,
  `lashortinfo` text,
  `lainfo` text,
  `lauseguide` text,
  `laimage` varchar(50) DEFAULT NULL,
  `lacategory_id` int(11) DEFAULT '0',
  `lamanufactor_id` int(11) DEFAULT '0',
  `laoldprice` int(11) DEFAULT '0',
  `laprice` int(11) DEFAULT '0',
  `laamount` int(11) DEFAULT '0',
  `ladatenew` varchar(50) DEFAULT '0',
  `ladeleted` int(11) DEFAULT '0',
  `laurl` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lakhoiluong` varchar(20) DEFAULT NULL,
  `ladungtich` varchar(20) DEFAULT NULL,
  `laview` int(11) NOT NULL DEFAULT '0',
  `lachucnang` varchar(100) DEFAULT NULL,
  `lavariant_id` int(11) NOT NULL DEFAULT '0',
  `laproduct_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`laurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `laproducts` WRITE;
/*!40000 ALTER TABLE `laproducts` DISABLE KEYS */;

INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`)
VALUES
	(1,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray','2014-06-06 11:45:50','2014-06-04 15:12:54','','',41,'',0,''),
	(2,'Sidebarads','',NULL,'','','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',0,0,0,0,0,'0',1,'sidebarads','2014-06-04 15:20:07','2014-06-04 15:20:07','','',0,'',0,''),
	(3,'DISCOGRAPHY','glyphicon glyphicon-wrench',NULL,'Sui blanditiistes es prtiup\r\nTaum Delenitatququdolos\r\nEtrste molestiasexceuri','<ul>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Sui blanditiistes es prtiup</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Taum Delenitatququdolos</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Etrste molestiasexceuri</a></li>\r\n</ul>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'discography','2014-06-06 01:57:01','2014-06-04 15:35:59','','',0,'',0,''),
	(4,'IN MY LIFE','glyphicon glyphicon-fire',NULL,'Sui blanditiistes es prtiuptatum delenitimatququdolore etreste quamolestiasexceuri sintsuincupaqui officiadeserunt.','<p><span style=\"color:rgb(142, 142, 142); font-family:ubuntu,sans-serif\">Sui blanditiistes es prtiuptatum delenitimatququdolore etreste quamolestiasexceuri sintsuincupaqui officiadeserunt.</span></p>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'in-my-life','2014-06-06 01:57:56','2014-06-04 15:36:23','','',0,'',0,''),
	(5,'EVENTS','glyphicon glyphicon-gift',NULL,'Sui blanditiistes es prtiup\r\nTaum Delenitatququdolos\r\nEtrste molestiasexceuri','<ul>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Sui blanditiistes es prtiup</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(255, 255, 255); outline: 0px;\">Taum Delenitatququdolos</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Etrste molestiasexceuri</a></li>\r\n</ul>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'events','2014-06-06 01:58:16','2014-06-04 15:37:09','','',1,'',0,''),
	(6,'MY TOURS','glyphicon glyphicon-fire',NULL,'Sui blanditiistes es prtiuptatum delenitimatququdolore setreste quamolestiasexceuri sintsuincupaqui officiadeserunt.','','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'my-tours','2014-06-06 01:57:26','2014-06-04 15:37:34','','',0,'',0,''),
	(7,'LOREM IPSUM DOLORE MASSA AS TUM','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','','','1gjKrDrbwjZJjIrtd8I3deLciQs0vCwv.jpg',9,0,0,0,0,'-25200',0,'lorem-ipsum-dolore-massa-as-tum','2014-06-06 11:53:07','2014-06-04 16:25:01','','',2,'',0,''),
	(8,'MASSA AS LAOREET DOLORE EST','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','','','oEnNs0z54vDmg1SJgboBoRLiWGbOLbPO.jpg',9,0,0,0,0,'-25200',0,'massa-as-laoreet-dolore-est','2014-06-06 11:52:59','2014-06-04 16:25:21','','',1,'',0,''),
	(9,'MORBI VITAE PORTA PURUS','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','<p><span style=\"background-color:rgb(24, 24, 24); color:rgb(131, 134, 138); font-family:ubuntu,sans-serif\">Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.</span></p>\r\n','','Yla3icQMx39ZXCCtvj0qgK4gxlW9IIsR.jpg',9,0,0,0,0,'-25200',0,'morbi-vitae-porta-purus','2014-06-06 11:52:47','2014-06-04 16:59:32','','',0,'',0,''),
	(10,'Khuyến mãi 1','',NULL,'khuyễn mãi 1','','','AGBMOrcCxwamfqVBXmoGCmHIxVaE0ZQo.jpg',8,0,0,0,0,'0',0,'khuyen-mai-1','2014-06-06 02:00:00','2014-06-06 02:00:00','','',0,'',0,'');

/*!40000 ALTER TABLE `laproducts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table latags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `latags`;

CREATE TABLE `latags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latitle` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lauser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lauser`;

CREATE TABLE `lauser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `larole` varchar(20) DEFAULT NULL,
  `lastatus` int(11) DEFAULT NULL,
  `lafullname` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laemail` varchar(50) DEFAULT NULL,
  `laphoto` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lauser` WRITE;
/*!40000 ALTER TABLE `lauser` DISABLE KEYS */;

INSERT INTO `lauser` (`id`, `username`, `password`, `larole`, `lastatus`, `lafullname`, `updated_at`, `created_at`, `laemail`, `laphoto`)
VALUES
	(1,'admin','$2y$10$cn2evPkX0GMyAWcUZ37ab.1ilTXucy9oitCo7qOnUzBso0KAgQmsi','admin',1,'Administrator','2014-04-07 23:53:53',NULL,NULL,NULL);

/*!40000 ALTER TABLE `lauser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lausers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lausers`;

CREATE TABLE `lausers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laemail` text COLLATE utf8_unicode_ci,
  `laphoto` text COLLATE utf8_unicode_ci,
  `laname` text COLLATE utf8_unicode_ci,
  `lapassword` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table v_categories
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_categories`;

CREATE TABLE `v_categories` (
   `id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `latitle` VARCHAR(50) NULL DEFAULT NULL,
   `laparent_id` INT(11) NULL DEFAULT NULL,
   `laurl` VARCHAR(50) NULL DEFAULT NULL,
   `lainfo` TEXT NULL DEFAULT NULL,
   `ladeleted` INT(11) NOT NULL DEFAULT '0',
   `laorder` INT(11) NULL DEFAULT NULL,
   `laimage` VARCHAR(50) NULL DEFAULT NULL,
   `updated_at` TIMESTAMP NULL DEFAULT NULL,
   `created_at` TIMESTAMP NULL DEFAULT NULL,
   `laicon` VARCHAR(100) NOT NULL DEFAULT 'glyphicon glyphicon-link',
   `isnews` INT(1) NOT NULL DEFAULT '0',
   `numproduct` BIGINT(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;



# Dump of table v_products
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_products`;

CREATE TABLE `v_products` (
   `id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `latitle` VARCHAR(100) NULL DEFAULT '',
   `lakeyword` TEXT NULL DEFAULT NULL,
   `ladescription` TEXT NULL DEFAULT NULL,
   `lashortinfo` TEXT NULL DEFAULT NULL,
   `lainfo` TEXT NULL DEFAULT NULL,
   `lauseguide` TEXT NULL DEFAULT NULL,
   `laimage` VARCHAR(50) NULL DEFAULT NULL,
   `lacategory_id` INT(11) NULL DEFAULT '0',
   `lamanufactor_id` INT(11) NULL DEFAULT '0',
   `laoldprice` INT(11) NULL DEFAULT '0',
   `laprice` INT(11) NULL DEFAULT '0',
   `laamount` INT(11) NULL DEFAULT '0',
   `ladatenew` VARCHAR(50) NULL DEFAULT '0',
   `ladeleted` INT(11) NULL DEFAULT '0',
   `laurl` VARCHAR(100) NULL DEFAULT NULL,
   `updated_at` TIMESTAMP NULL DEFAULT NULL,
   `created_at` TIMESTAMP NULL DEFAULT NULL,
   `lakhoiluong` VARCHAR(20) NULL DEFAULT NULL,
   `ladungtich` VARCHAR(20) NULL DEFAULT NULL,
   `laview` INT(11) NOT NULL DEFAULT '0',
   `lachucnang` VARCHAR(100) NULL DEFAULT NULL,
   `lavariant_id` INT(11) NOT NULL DEFAULT '0',
   `laproduct_id` VARCHAR(50) NULL DEFAULT NULL,
   `sumvariant` BIGINT(21) NULL DEFAULT NULL,
   `cat1id` INT(11) UNSIGNED NULL DEFAULT '0',
   `cat1name` VARCHAR(50) NULL DEFAULT NULL,
   `cat1url` VARCHAR(50) NULL DEFAULT NULL,
   `isnews` INT(1) NULL DEFAULT '0',
   `cat2id` DECIMAL(11) NULL DEFAULT NULL,
   `cat2name` VARCHAR(50) NULL DEFAULT NULL,
   `cat2url` VARCHAR(50) NULL DEFAULT NULL,
   `cat3id` DECIMAL(11) NULL DEFAULT NULL,
   `cat3name` VARCHAR(50) NULL DEFAULT NULL,
   `cat3url` VARCHAR(50) NULL DEFAULT NULL,
   `factorid` INT(11) UNSIGNED NULL DEFAULT '0',
   `factorname` VARCHAR(50) NULL DEFAULT NULL,
   `factorurl` VARCHAR(50) NULL DEFAULT NULL,
   `pricechange` BIGINT(12) NULL DEFAULT NULL,
   `numorder` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for v_categories with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_categories`
AS SELECT
   `c`.`id` AS `id`,
   `c`.`latitle` AS `latitle`,
   `c`.`laparent_id` AS `laparent_id`,
   `c`.`laurl` AS `laurl`,
   `c`.`lainfo` AS `lainfo`,
   `c`.`ladeleted` AS `ladeleted`,
   `c`.`laorder` AS `laorder`,
   `c`.`laimage` AS `laimage`,
   `c`.`updated_at` AS `updated_at`,
   `c`.`created_at` AS `created_at`,
   `c`.`laicon` AS `laicon`,
   `c`.`isnews` AS `isnews`,count(`p`.`id`) AS `numproduct`
FROM (`lacategories` `c` left join `v_products` `p` on(((`p`.`cat1id` = `c`.`id`) or (`p`.`cat2id` = `c`.`id`) or (`p`.`cat3id` = `c`.`id`)))) where ((`c`.`ladeleted` <> 1) or isnull(`c`.`ladeleted`)) group by `c`.`id`;


# Replace placeholder table for v_products with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_products`
AS SELECT
   `p`.`id` AS `id`,
   `p`.`latitle` AS `latitle`,
   `p`.`lakeyword` AS `lakeyword`,
   `p`.`ladescription` AS `ladescription`,
   `p`.`lashortinfo` AS `lashortinfo`,
   `p`.`lainfo` AS `lainfo`,
   `p`.`lauseguide` AS `lauseguide`,
   `p`.`laimage` AS `laimage`,
   `p`.`lacategory_id` AS `lacategory_id`,
   `p`.`lamanufactor_id` AS `lamanufactor_id`,
   `p`.`laoldprice` AS `laoldprice`,
   `p`.`laprice` AS `laprice`,
   `p`.`laamount` AS `laamount`,
   `p`.`ladatenew` AS `ladatenew`,
   `p`.`ladeleted` AS `ladeleted`,
   `p`.`laurl` AS `laurl`,
   `p`.`updated_at` AS `updated_at`,
   `p`.`created_at` AS `created_at`,
   `p`.`lakhoiluong` AS `lakhoiluong`,
   `p`.`ladungtich` AS `ladungtich`,
   `p`.`laview` AS `laview`,
   `p`.`lachucnang` AS `lachucnang`,
   `p`.`lavariant_id` AS `lavariant_id`,
   `p`.`laproduct_id` AS `laproduct_id`,(select count(`p2`.`id`)
FROM `laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,`c1`.`isnews` AS `isnews`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`laproducts` `p` left join `lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `lacategories` `c1` on((`c1`.`id` = `p`.`lacategory_id`))) left join `lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`))) where (((`p`.`ladeleted` <> 1) or isnull(`p`.`ladeleted`)) and (`p`.`lavariant_id` = 0));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
