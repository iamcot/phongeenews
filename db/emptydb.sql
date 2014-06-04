# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.14)
# Database: phongeenews
# Generation Time: 2014-06-04 04:08:30 +0000
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`laurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
   `c`.`laicon` AS `laicon`,count(`p`.`id`) AS `numproduct`
FROM (`lacategories` `c` left join `v_products` `p` on(((`p`.`cat1id` = `c`.`id`) or (`p`.`cat2id` = `c`.`id`) or (`p`.`cat3id` = `c`.`id`)))) where ((`c`.`ladeleted` <> 1) or isnull(`c`.`ladeleted`)) group by `c`.`id`;


# Replace placeholder table for v_products with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`oxid`@`localhost` SQL SECURITY DEFINER VIEW `v_products`
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
FROM `laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`laproducts` `p` left join `lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `lacategories` `c1` on((`c1`.`id` = `p`.`lacategory_id`))) left join `lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`))) where (((`p`.`ladeleted` <> 1) or isnull(`p`.`ladeleted`)) and (`p`.`lavariant_id` = 0));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
