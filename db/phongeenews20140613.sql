# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.14)
# Database: phongeenews
# Generation Time: 2014-06-13 03:01:34 +0000
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
	(1,'Sản phẩm',0,'san-pham','Đẳng cấp của bạn.',0,1,NULL,'2014-06-12 17:47:01','2014-06-04 14:21:24','glyphicon glyphicon-link',0),
	(2,'Dây chuyền sản xuất',0,'day-chuyen-san-xuat','',0,2,NULL,'2014-06-12 17:48:31','2014-06-04 14:21:39','glyphicon glyphicon-link',0),
	(3,'Hộp',1,'hop','',0,0,'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg','2014-06-12 17:47:20','2014-06-04 14:22:00','glyphicon glyphicon-link',0),
	(4,'Bìa lưng',1,'bia-lung','',0,0,'S85nbAnPygMFGjeoNmU9r7oERyxPGHeR.jpg','2014-06-12 17:47:27','2014-06-04 14:22:10','glyphicon glyphicon-link',0),
	(5,'Samsung',2,'samsung','',0,0,NULL,'2014-06-04 14:22:26','2014-06-04 14:22:26','glyphicon glyphicon-link',0),
	(6,'HTC',2,'htc','',0,0,NULL,'2014-06-04 14:22:36','2014-06-04 14:22:36','glyphicon glyphicon-link',0),
	(7,'Tin tức',0,'tin-tuc','',0,4,NULL,'2014-06-04 17:48:46','2014-06-04 15:31:11','glyphicon glyphicon-link',1),
	(8,'Tin khuyến mãi',7,'tin-khuyen-mai','',0,0,NULL,'2014-06-04 17:49:03','2014-06-04 15:31:27','glyphicon glyphicon-link',1),
	(9,'Tin công ty',7,'tin-cong-ty','',0,0,NULL,'2014-06-04 17:49:07','2014-06-04 15:31:32','glyphicon glyphicon-link',1),
	(10,'Tin báo chí',7,'tin-bao-chi','',0,0,NULL,'2014-06-04 17:49:11','2014-06-04 15:32:37','glyphicon glyphicon-link',1),
	(11,'Đối tác',0,'doi-tac','',0,3,NULL,'2014-06-12 17:48:54','2014-06-04 15:33:24','glyphicon glyphicon-link',0),
	(12,'Tin nổi bật',7,'tin-noi-bat','',0,0,NULL,'2014-06-04 17:49:15','2014-06-04 15:35:09','glyphicon glyphicon-link',1),
	(13,'Review',7,'review','',1,0,NULL,'2014-06-06 17:00:03','2014-06-06 17:00:03','glyphicon glyphicon-link',1),
	(14,'Liên hệ',0,'lien-he','',0,6,NULL,'2014-06-12 17:49:32','2014-06-10 17:31:02','glyphicon glyphicon-link',0),
	(15,'Bảo hành',0,'bao-hanh','',1,5,NULL,'2014-06-12 16:12:45','2014-06-10 17:31:10','glyphicon glyphicon-link',0),
	(16,'Chi nhánh',0,'chi-nhanh','',0,7,NULL,'2014-06-10 17:33:19','2014-06-10 17:31:19','glyphicon glyphicon-link',0),
	(17,'Tem nhãn',1,'tem-nhan','',0,0,NULL,'2014-06-12 17:48:14','2014-06-12 17:48:14','glyphicon glyphicon-link',0);

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
	(1,'slide','SXEUqDHBLIEFaFfSiIz8SDuxfDDsKB5b.png||#\r\nxGczPQQdNGcFVaXdzSqyLc8Ms8BoDpcU.png||#\r\nK9wb0Ep2QawV1ZALfPUzyRXimJ7KHwEV.png||#\r\ndMpuIuRHcXWY1qQD4IvHlsbcpLx6xpMV.png||#\r\nRyvQATxKnUaImpKJj6e4NWRqiPFdoGZN.png||#\r\ntzsJL3EHV8PIHpZ72Hd8IAOtGcFMpJm7.png||#\r\n','2014-06-10 13:44:53','2014-06-04 15:25:46'),
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
	(9,'jdVZxK6RdDObQrJlX7SWPcSEloc8BZg4.png','',3,'2014-06-06 14:25:05','2014-06-06 14:25:05'),
	(17,'hWyxeFxA8Fdoaie9jKlbPSefRtfivsXF.jpg','',9,'2014-06-06 15:09:50','2014-06-06 15:09:50'),
	(18,'nLc9TDOJoKdxt4SLGKEpqzhHukLjBSHR.jpg','',8,'2014-06-06 15:10:19','2014-06-06 15:10:19'),
	(19,'S0DM1tR0xzFrhUulD1XVcFdxCpiq2NZ3.jpg','',7,'2014-06-06 15:10:31','2014-06-06 15:10:31'),
	(20,'oJBDcKQJ0jpMsD02FeBeFQDuudbvRHin.jpg','',10,'2014-06-06 15:10:46','2014-06-06 15:10:46'),
	(23,'eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png','',1,'2014-06-10 15:16:56','2014-06-10 15:16:56');

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
	(1,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray','2014-06-11 11:37:23','2014-06-04 15:12:54','','',49,'',0,''),
	(2,'Sidebarads','',NULL,'','','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',0,0,0,0,0,'0',1,'sidebarads','2014-06-04 15:20:07','2014-06-04 15:20:07','','',0,'',0,''),
	(3,'DISCOGRAPHY','glyphicon glyphicon-wrench',NULL,'Sui blanditiistes es prtiup\r\nTaum Delenitatququdolos\r\nEtrste molestiasexceuri','<ul>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Sui blanditiistes es prtiup</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Taum Delenitatququdolos</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Etrste molestiasexceuri</a></li>\r\n</ul>\r\n','','jdVZxK6RdDObQrJlX7SWPcSEloc8BZg4.png',12,0,0,0,0,'-25200',0,'discography','2014-06-06 17:02:35','2014-06-04 15:35:59','','',2,'',0,''),
	(4,'IN MY LIFE','glyphicon glyphicon-fire',NULL,'Sui blanditiistes es prtiuptatum delenitimatququdolore etreste quamolestiasexceuri sintsuincupaqui officiadeserunt.','<p><span style=\"color:rgb(142, 142, 142); font-family:ubuntu,sans-serif\">Sui blanditiistes es prtiuptatum delenitimatququdolore etreste quamolestiasexceuri sintsuincupaqui officiadeserunt.</span></p>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'in-my-life','2014-06-06 17:02:43','2014-06-04 15:36:23','','',8,'',0,''),
	(5,'EVENTS','glyphicon glyphicon-gift',NULL,'Sui blanditiistes es prtiup\r\nTaum Delenitatququdolos\r\nEtrste molestiasexceuri','<ul>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Sui blanditiistes es prtiup</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(255, 255, 255); outline: 0px;\">Taum Delenitatququdolos</a></li>\r\n	<li><a href=\"http://livedemo00.template-help.com/joomla_47117/#\" style=\"margin: 0px; padding: 0px; text-decoration: none; -webkit-transition: all 0.5s; transition: all 0.5s; color: rgb(156, 159, 163);\">Etrste molestiasexceuri</a></li>\r\n</ul>\r\n','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'events','2014-06-06 16:53:53','2014-06-04 15:37:09','','',4,'',0,''),
	(6,'MY TOURS','glyphicon glyphicon-fire',NULL,'Sui blanditiistes es prtiuptatum delenitimatququdolore setreste quamolestiasexceuri sintsuincupaqui officiadeserunt.','','','BBuQTaQP5SGruLf0fqSvit7oL2IFzOcg.jpg',12,0,0,0,0,'-25200',0,'my-tours','2014-06-06 01:57:26','2014-06-04 15:37:34','','',0,'',0,''),
	(7,'LOREM IPSUM DOLORE MASSA AS TUM','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','','','S0DM1tR0xzFrhUulD1XVcFdxCpiq2NZ3.jpg',9,0,0,0,0,'-25200',0,'lorem-ipsum-dolore-massa-as-tum','2014-06-06 17:04:14','2014-06-04 16:25:01','','',5,'',0,''),
	(8,'MASSA AS LAOREET DOLORE EST','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','','','nLc9TDOJoKdxt4SLGKEpqzhHukLjBSHR.jpg',9,0,0,0,0,'-25200',0,'massa-as-laoreet-dolore-est','2014-06-06 17:01:59','2014-06-04 16:25:21','','',5,'',0,''),
	(9,'MORBI VITAE PORTA PURUS','',NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.','<p><span style=\"background-color:rgb(24, 24, 24); color:rgb(131, 134, 138); font-family:ubuntu,sans-serif\">Ut enim ad minim veniam, quis nostrud exercitation ullamcode laboris nisi dolore massa. Etaliquipx eato commodo conse cupiditate non.</span></p>\r\n','','hWyxeFxA8Fdoaie9jKlbPSefRtfivsXF.jpg',9,0,0,0,0,'-25200',0,'morbi-vitae-porta-purus','2014-06-06 17:01:56','2014-06-04 16:59:32','','',2,'',0,''),
	(10,'Khuyến mãi 1','',NULL,'khuyễn mãi 1','','','oJBDcKQJ0jpMsD02FeBeFQDuudbvRHin.jpg',8,0,0,0,0,'-25200',0,'khuyen-mai-1','2014-06-06 17:24:04','2014-06-06 02:00:00','','',13,'',0,''),
	(11,'Giới thiệu','',NULL,'','<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Sau hơn 3 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, thương hiệu PhonGee đ&atilde; đi v&agrave;o l&ograve;ng kh&aacute;ch h&agrave;ng bằng niềm tin cậy trọn vẹn v&agrave; sự h&agrave;i l&ograve;ng về chất lượng dịch vụ. V&agrave; giờ đ&acirc;y, PhonGee quyết định n&acirc;ng cấp ch&iacute;nh m&igrave;nh l&ecirc;n một tầm cao mới, dịch vụ đa dạng v&agrave; chuy&ecirc;n nghiệp hơn, c&aacute;c d&ograve;ng sản phẩm cung cấp phong ph&uacute; hơn chứ kh&ocirc;ng chỉ g&oacute;i gọn trong d&ograve;ng sản phẩm Apple cụ thể ở c&aacute;c thương hiệu mạnh kh&aacute;c như Samsung, HTC, Sony, Blackberry,...</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Ở PhonGee, bạn t&igrave;m thấy được l&ograve;ng tin, t&igrave;m thấy được sự th&acirc;n thiện, sự tận t&acirc;m phục vụ v&agrave; sự chuy&ecirc;n nghiệp trong tư vấn cũng như sự &acirc;n cần trong hỗ trợ.</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Ở PhonGee, bạn nhận được c&aacute;c gi&aacute; trị cốt l&otilde;i của c&ocirc;ng nghệ từ c&aacute;c sản phẩm ch&iacute;nh h&atilde;ng, nguồn gốc r&otilde; r&agrave;ng minh bạch.</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Ở PhonGee, bạn biết rằng bạn đ&uacute;ng khi đặt trọn niềm tin, v&agrave; bạn kh&ocirc;ng thất vọng khi trao ban niềm tin đ&oacute;.</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Giờ đ&acirc;y, PhonGee kh&ocirc;ng chỉ l&agrave; PhonGee, PhonGee đ&atilde; vươn l&ecirc;n 1 tầm mới cao hơn, đa dạng hơn, chuy&ecirc;n nghiệp hơn, CH&Uacute;NG T&Ocirc;I GỌI Đ&Oacute; L&Agrave; SẮC M&Agrave;U PHONGEE, hay dưới t&ecirc;n gọi ngắn gọn: PHONGEE COLOR&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Bạn đ&atilde; kh&ocirc;ng thất vọng về PhonGee, bạn sẽ c&agrave;ng h&agrave;i l&ograve;ng hơn với PhonGee Color.</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Ch&uacute;ng t&ocirc;i triển khai hệ thống PhonGee Color ở 02 vị tr&iacute;:</span><br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">- 12 Trần Quốc Ho&agrave;n, phường 4, quận T&acirc;n B&igrave;nh, TP HCM</span><br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">- 12 T&ocirc;n Thất T&ugrave;ng, Phường Bến Th&agrave;nh, quận 1, TPHCM</span><br />\r\n<br />\r\n<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">C&aacute;c địa điểm kh&aacute;c đang nhượng quyền thương hiệu PhonGee (chứ kh&ocirc;ng d&ugrave;ng PhonGee Color) kh&ocirc;ng trực thuộc hệ thống PhonGee ch&uacute;ng t&ocirc;i.</span></p>\r\n','',NULL,7,0,0,0,0,'-25200',0,'gioi-thieu','2014-06-11 11:40:19','2014-06-06 17:06:34','','',8,'',0,''),
	(12,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray1','2014-06-11 17:12:57','2014-06-04 15:12:54','','',47,'',0,''),
	(14,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray2','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(15,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray3','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(16,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray4','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(17,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray5','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(18,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray6','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(19,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray7','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(20,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray8','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(21,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray9','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(22,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray0','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,''),
	(23,'Iphone 5S 32G Gray','',NULL,'','<p>iphone 5</p>\r\n','','eBMTrDijmM9YqDuedHb4ZtnoO3FeYTw9.png',3,1,15000000,14000000,0,'-25200',0,'iphone-5s-32g-gray11','2014-06-10 15:16:56','2014-06-04 15:12:54','','',45,'',0,'');

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




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
