# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.14)
# Database: la_shop
# Generation Time: 2014-06-04 04:03:41 +0000
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

LOCK TABLES `facebookuser` WRITE;
/*!40000 ALTER TABLE `facebookuser` DISABLE KEYS */;

INSERT INTO `facebookuser` (`id`, `facebookname`, `facebookid`, `gender`, `locale`, `username`, `fanpage_id`, `updated_at`, `created_at`)
VALUES
	(1,'Táo Nhỏ','100001146679068','male','vi_VN','tao.nho145','234651959992097','2014-04-24 15:02:14','2014-04-24 15:02:14'),
	(2,'Hung Possible','100002732526976','male','vi_VN','hung.letien.12','234651959992097','2014-04-24 15:02:16','2014-04-24 15:02:16'),
	(3,'Định Đỗ Thừa','100004099876171','male','vi_VN','xuandinh040293','234651959992097','2014-04-24 15:02:17','2014-04-24 15:02:17'),
	(4,'Đại Công Tử','100004644640093','male','vi_VN','tony.dai.902','234651959992097','2014-04-24 15:02:19','2014-04-24 15:02:19'),
	(5,'Nguyễn Chiến','100003844352966','male','vi_VN','hinh.duong.3','234651959992097','2014-04-24 15:02:21','2014-04-24 15:02:21'),
	(6,'Ray','100002710377379','male','vi_VN','tuan.anhgau','234651959992097','2014-04-24 15:02:22','2014-04-24 15:02:22'),
	(7,'Gấu Mập','100006740015679','male','vi_VN','anhhao.nguyen.752','234651959992097','2014-04-24 15:02:23','2014-04-24 15:02:23'),
	(8,'Duy Tân','100000205829421','male','vi_VN','duy.tan.3591','234651959992097','2014-04-24 15:02:24','2014-04-24 15:02:24'),
	(9,'Khoa Nguyen Dinh','100001645010190','male','en_US','khoa.nguyendinh.777','234651959992097','2014-04-24 15:02:26','2014-04-24 15:02:26'),
	(10,'Jangchara Chan','100001913586742','male','en_US','zed.fisk','234651959992097','2014-04-24 15:02:27','2014-04-24 15:02:27'),
	(11,'Trung Tran Quoc','100000289430109','male','vi_VN','trung.tranquoc.148','234651959992097','2014-04-24 15:02:28','2014-04-24 15:02:28'),
	(12,'Zp Nguyễn','100001139439680','male','vi_VN','nhozpatoz.subin','234651959992097','2014-04-24 15:02:29','2014-04-24 15:02:29'),
	(13,'Roman Hdk','100001621234476','male','vi_VN','romanhdk','234651959992097','2014-04-24 15:02:31','2014-04-24 15:02:31'),
	(14,'Trung Hiếu','100007204023519','male','vi_VN','hieujz','234651959992097','2014-04-24 15:02:32','2014-04-24 15:02:32'),
	(15,'Nguyen Ba Dung','100002924715574','male','vi_VN','dung09xd4','234651959992097','2014-04-24 15:02:33','2014-04-24 15:02:33'),
	(16,'Thien Chi','100003814268594','male','vi_VN','thien.chi.969','234651959992097','2014-04-24 15:02:36','2014-04-24 15:02:36'),
	(17,'Ken Nguyễn','100004790166502','male','vi_VN','kun.con.1654','234651959992097','2014-04-24 15:02:37','2014-04-24 15:02:37'),
	(18,'Nguyễn Mạnh Toàn','100000151994700','male','vi_VN','nguyenmanh.toan.56','234651959992097','2014-04-24 15:02:38','2014-04-24 15:02:38'),
	(19,'Duy Sak','100005658944489','male','vi_VN','oce.lk','234651959992097','2014-04-24 15:02:40','2014-04-24 15:02:40'),
	(20,'Khôi Nguyễn','100001634606405','male','vi_VN','khoinguyenhcm','234651959992097','2014-04-24 15:02:41','2014-04-24 15:02:41'),
	(21,'Tùng Lâm Hoàng','100000067876343','male','vi_VN','tunglam.hoang.75','234651959992097','2014-04-24 15:02:42','2014-04-24 15:02:42'),
	(22,'Nhat Ngo','100003264909683','male','vi_VN','nhat.ngo.10','234651959992097','2014-04-24 15:02:44','2014-04-24 15:02:44'),
	(23,'Vương Dũng','1798179018','male','vi_VN','vuong.tri','234651959992097','2014-04-24 15:02:45','2014-04-24 15:02:45'),
	(24,'Anh Vu Nguyen','100001912763952','male','vi_VN','anh.vu.520125','234651959992097','2014-04-24 15:02:47','2014-04-24 15:02:47'),
	(25,'Ừ Tao Ngèo','100004089053753','male','vi_VN','nguyenhoainam.hoainam.9','234651959992097','2014-04-24 15:02:48','2014-04-24 15:02:48'),
	(26,'Trung Duong De','100003096170868','male','vi_VN','trung.duongde','234651959992097','2014-04-24 15:02:49','2014-04-24 15:02:49'),
	(27,'Jerry Nguyen','100003915720366','female','vi_VN','hoaitho.nguyen','234651959992097','2014-04-24 15:02:51','2014-04-24 15:02:51'),
	(28,'Zumpj Chúa','100003726495901','male','vi_VN','zumpj.do','234651959992097','2014-04-24 15:02:52','2014-04-24 15:02:52'),
	(29,'Minh Khoa Hoàng','100000207086572','male','vi_VN','minhkhoa.hoang.7','234651959992097','2014-04-24 15:02:53','2014-04-24 15:02:53'),
	(30,'Kyle Dave Daring','100006906013504','male','en_US','davedarling.kyle','234651959992097','2014-04-24 15:02:54','2014-04-24 15:02:54'),
	(31,'Kheng Kheng','100004907438814','male','vi_VN','tu.lang.710','234651959992097','2014-04-24 15:02:56','2014-04-24 15:02:56'),
	(32,'Anh Thy','100005458291740','female','vi_VN','thy.ly.925','234651959992097','2014-04-24 15:02:57','2014-04-24 15:02:57'),
	(33,'Toi Yeu Top','100008098867126','male','vi_VN','holy.holy.3382','234651959992097','2014-04-24 15:02:58','2014-04-24 15:02:58'),
	(34,'Hang Miu','100000184299763','female','vi_VN','hangmiu0616','234651959992097','2014-04-24 15:03:00','2014-04-24 15:03:00'),
	(35,'Tường Ninh','100000122088347','male','vi_VN','okia.nhingi','234651959992097','2014-04-24 15:03:01','2014-04-24 15:03:01'),
	(36,'Boy Danger','100002912405733','male','en_US','Boy.Danger.91','234651959992097','2014-04-24 15:03:05','2014-04-24 15:03:05'),
	(37,'Duy Hưng','100002957507461','male','vi_VN','pham.hung.92123','234651959992097','2014-04-24 15:03:16','2014-04-24 15:03:16'),
	(38,'Phong Trần','100004159350568','male','vi_VN','smallwind.nuskin','234651959992097','2014-04-24 15:03:18','2014-04-24 15:03:18'),
	(39,'Niềm Vui Khó Tìm','100003679483741','male','vi_VN','niemvuikhotim','234651959992097','2014-04-24 15:03:19','2014-04-24 15:03:19'),
	(40,'Nguyen Phu','100002698463599','male','vi_VN','phu.nguyen.370','234651959992097','2014-04-24 15:03:21','2014-04-24 15:03:21'),
	(41,'Maxkeeper Sơn','100003126518567','male','vi_VN','son.hoang.7161','234651959992097','2014-04-24 15:03:22','2014-04-24 15:03:22'),
	(42,'Châu Chăm Chỉ','100002589586671','male','vi_VN','chaucham.chi.3','234651959992097','2014-04-24 15:03:23','2014-04-24 15:03:23'),
	(43,'Toan Ngo','100003109239686','male','vi_VN','toan.ngo.357','234651959992097','2014-04-24 15:03:24','2014-04-24 15:03:24'),
	(44,'Tuan Dang','1814437477','male','vi_VN','tuan.dang.7946','234651959992097','2014-04-24 15:03:27','2014-04-24 15:03:27'),
	(45,'Tung Su','100001662928199','male','vi_VN','tungsu1991','234651959992097','2014-04-24 15:03:28','2014-04-24 15:03:28'),
	(46,'Mán','100004236660867','male','vi_VN','ngoc.trung.585','234651959992097','2014-04-24 15:03:30','2014-04-24 15:03:30'),
	(47,'Bố Trẻ Con','100003849400877','male','vi_VN','anhphuon','234651959992097','2014-04-24 15:03:31','2014-04-24 15:03:31'),
	(48,'Người Bí Ẩn','100006716580041','male','vi_VN','binh.quoc.12935','234651959992097','2014-04-24 15:03:32','2014-04-24 15:03:32'),
	(49,'Dương Tuấn','100000968352607','male','vi_VN','Dosongbinh','234651959992097','2014-04-24 15:03:34','2014-04-24 15:03:34'),
	(50,'Tú Tê Tái','100003182481020','male','vi_VN','tu.lag.5','234651959992097','2014-04-24 15:03:35','2014-04-24 15:03:35'),
	(51,'Phạm Trường','100002382323150','male','en_US','truongthedeath','234651959992097','2014-04-24 15:03:36','2014-04-24 15:03:36'),
	(52,'Lê Hiển','100005695872685','male','vi_VN','hienlv.nhigia','234651959992097','2014-04-24 15:03:38','2014-04-24 15:03:38'),
	(53,'Đàm Việt','100001351920470','male','en_US','Derrick.Dam','234651959992097','2014-04-24 15:03:39','2014-04-24 15:03:39'),
	(54,'Nien Nguyen','100001636354815','male','vi_VN','nien.nguyen.752','234651959992097','2014-04-24 15:03:40','2014-04-24 15:03:40'),
	(55,'Gấu Panda','1293553532','male','vi_VN','gau.panda.581','234651959992097','2014-04-24 15:03:41','2014-04-24 15:03:41'),
	(56,'Ellen Huynh','100001422895851','female','vi_VN','tranhhuynh91','234651959992097','2014-04-24 15:03:43','2014-04-24 15:03:43'),
	(57,'Pham Hoang Nam','100003820078764','male','vi_VN','hoangnam.pham.397','234651959992097','2014-04-24 15:03:44','2014-04-24 15:03:44'),
	(58,'Kỳ Thư Đinh','100003142517112','female','vi_VN','dinh.kythu','234651959992097','2014-04-24 15:03:45','2014-04-24 15:03:45'),
	(59,'Kang Đỗ','100001270830461','male','vi_VN','dotanlanh','234651959992097','2014-04-24 15:03:46','2014-04-24 15:03:46'),
	(60,'Võ Viết Chí','100001874780336','male','vi_VN','vvietchi','234651959992097','2014-04-24 15:03:48','2014-04-24 15:03:48'),
	(61,'Shino Yusan','100002729313459','female','vi_VN','ngochanh.dao.1','234651959992097','2014-04-24 15:03:50','2014-04-24 15:03:50'),
	(62,'Tu Anh','100002580493709','female','en_US','nguyenlamtuanh','234651959992097','2014-04-24 15:03:53','2014-04-24 15:03:53'),
	(63,'Sống Khác','100004742530758','male','vi_VN','vinhhung.nguyen.737','234651959992097','2014-04-24 15:03:54','2014-04-24 15:03:54'),
	(64,'Hoai Nam Vu','100004390505868','male','vi_VN','hoainam.vu.980','234651959992097','2014-04-24 15:03:57','2014-04-24 15:03:57'),
	(65,'Cole David','100004391524851','male','vi_VN','pham.bang.3538','234651959992097','2014-04-24 15:03:58','2014-04-24 15:03:58'),
	(66,'Tuấn Triệu','100006531284431','male','vi_VN','tuan.trieu.94064','234651959992097','2014-04-24 15:04:00','2014-04-24 15:04:00'),
	(67,'Quoc Trinh','100003830556876','male','en_US','quoc.trinh.7923','234651959992097','2014-04-24 15:04:01','2014-04-24 15:04:01'),
	(68,'Trí Thông','100004059093766','male','vi_VN','jaughingnguyen','234651959992097','2014-04-24 15:04:02','2014-04-24 15:04:02'),
	(69,'Sơn Kon','100002614989538','male','vi_VN','son.kon.7','234651959992097','2014-04-24 15:04:04','2014-04-24 15:04:04'),
	(70,'Nguyenngocdieu Heobabe','100003785928741','female','vi_VN','nguyenngocdieu.heobabe','234651959992097','2014-04-24 15:04:05','2014-04-24 15:04:05'),
	(71,'Hoang Duc Anh','100002254503826','male','vi_VN','doila.bekho.3','234651959992097','2014-04-24 15:04:06','2014-04-24 15:04:06'),
	(72,'Chính Mình','100006291008323','male','vi_VN','quoc.dat.9693001','234651959992097','2014-04-24 15:04:08','2014-04-24 15:04:08'),
	(73,'Zen','100001837074886','male','vi_VN','zen.irh','234651959992097','2014-04-24 15:04:09','2014-04-24 15:04:09'),
	(74,'Nô Bi','100002561983892','male','en_US','dinh.lan2','234651959992097','2014-04-24 15:04:10','2014-04-24 15:04:10'),
	(75,'Danny Trần','100001812893719','male','en_US','tranhaidangst00','234651959992097','2014-04-24 15:04:11','2014-04-24 15:04:11'),
	(76,'Văn Nghĩa Huỳnh','100007789663240','male','vi_VN','vannghia.huynh.773','234651959992097','2014-04-24 15:06:51','2014-04-24 15:06:51'),
	(77,'Phạm Nguyễn Văn Long','1693207487','male','en_US','DDreamwalker','234651959992097','2014-04-24 15:06:53','2014-04-24 15:06:53'),
	(78,'Minh Van','100003141703248','male','vi_VN','minh.van.355','234651959992097','2014-04-24 15:06:54','2014-04-24 15:06:54'),
	(79,'Anh Ba Hô','100000210007890','male','en_US','quocvo.tedwade','234651959992097','2014-04-24 15:06:55','2014-04-24 15:06:55'),
	(80,'Khoa Tồ','1783976832','male','vi_VN','khoa.to.391','234651959992097','2014-04-24 15:06:57','2014-04-24 15:06:57'),
	(81,'Trung Pham','100003184943447','male','vi_VN','pham.trung.7127','234651959992097','2014-04-24 15:07:00','2014-04-24 15:07:00'),
	(82,'Buidoi Govap','100003615511619','male','vi_VN','tung500','234651959992097','2014-04-24 15:07:01','2014-04-24 15:07:01'),
	(83,'He Le','100002589427725','female','en_US','peep.le.85','234651959992097','2014-04-24 15:07:02','2014-04-24 15:07:02'),
	(84,'Vũ Hoài Nam','100004136315761','male','vi_VN','littlepepper1991','234651959992097','2014-04-24 15:07:06','2014-04-24 15:07:06'),
	(85,'Nam Cao','100002838155070','male','vi_VN','kore79','234651959992097','2014-04-24 15:07:09','2014-04-24 15:07:09'),
	(86,'Lân Warau Niji','100001289064403','male','vi_VN','ThykThyChik','234651959992097','2014-04-24 15:07:10','2014-04-24 15:07:10'),
	(87,'Ngoc Dien Pham','100000157204886','male','en_US','ngocdien.pham.92','234651959992097','2014-04-24 15:07:11','2014-04-24 15:07:11'),
	(88,'Ckíp','100004243896811','female','vi_VN','maickyp1202','234651959992097','2014-04-24 15:07:12','2014-04-24 15:07:12'),
	(89,'Bình Yên','100002890868856','male','vi_VN','binh.banhbao','234651959992097','2014-04-24 15:07:14','2014-04-24 15:07:14'),
	(90,'Thanh Binh','100001685472730','male','vi_VN','thanhbinh0891','234651959992097','2014-04-24 15:07:15','2014-04-24 15:07:15'),
	(91,'Thanh Tân Nguyễn','100004957964386','male','vi_VN','thanhtan.nguyen.98499','234651959992097','2014-04-24 15:07:16','2014-04-24 15:07:16'),
	(92,'Trương Mây Mây','100004025153435','female','vi_VN','truong.maymay','234651959992097','2014-04-24 15:07:19','2014-04-24 15:07:19'),
	(93,'Tao Tử Tế','100004400975037','male','vi_VN','vietkutetn.nguyen','234651959992097','2014-04-24 15:07:22','2014-04-24 15:07:22'),
	(94,'Ty Hades','100005313304026','male','vi_VN','ty.hades.1','234651959992097','2014-04-24 15:07:24','2014-04-24 15:07:24'),
	(95,'Toàn Xíu','1647364390','male','vi_VN','toan.xiu','234651959992097','2014-04-24 15:07:25','2014-04-24 15:07:25'),
	(96,'Ngọc Nguyễn','100003208398945','male','vi_VN','CanibalSoul','234651959992097','2014-04-24 15:07:26','2014-04-24 15:07:26'),
	(97,'Phan Mỹ','100004081494328','female','vi_VN','phanmy.my.75','234651959992097','2014-04-24 15:07:27','2014-04-24 15:07:27'),
	(98,'Mugen Yume','100003083512500','male','vi_VN','duythanh.nguyen.737','234651959992097','2014-04-24 15:07:29','2014-04-24 15:07:29'),
	(99,'Long Hai','100001210392323','male','en_US','hai.long.52','234651959992097','2014-04-24 15:07:30','2014-04-24 15:07:30'),
	(100,'Jake Wu','100001266670755','male','vi_VN','jake.wu.923','234651959992097','2014-04-24 15:07:31','2014-04-24 15:07:31'),
	(101,'Dung Tran','100002040486390','male','en_US','dung.tran.54540218','234651959992097','2014-04-24 15:07:33','2014-04-24 15:07:33'),
	(102,'Hoai Nam Vu','100006972756837','male','vi_VN','hoainam.vu.12935','234651959992097','2014-04-24 15:07:34','2014-04-24 15:07:34'),
	(103,'Huy Mai Dinh','100000286220054','male','en_US','huy.maidinh','234651959992097','2014-04-24 15:07:35','2014-04-24 15:07:35'),
	(104,'Kiên Phạm','100004897350129','male','vi_VN','kientk1993','234651959992097','2014-04-24 15:07:36','2014-04-24 15:07:36'),
	(105,'Khánh Kẹo Kéo','100003536637722','male','vi_VN','khanh.leduy.758','234651959992097','2014-04-24 15:07:38','2014-04-24 15:07:38'),
	(106,'Tùng Lê','100000245211266','male','vi_VN','tung.le.7146557','234651959992097','2014-04-24 15:07:39','2014-04-24 15:07:39'),
	(107,'Tiết Thành Nghĩa','100003290142694','male','vi_VN','tiet.thanhnghia','234651959992097','2014-04-24 15:07:41','2014-04-24 15:07:41'),
	(108,'Tien Phan','100005747736233','male','en_US','tien.phan.50999','234651959992097','2014-04-24 15:07:42','2014-04-24 15:07:42'),
	(109,'Tải Đạn','100000494671154','male','en_US','tai.dan.54','234651959992097','2014-04-24 15:07:44','2014-04-24 15:07:44'),
	(110,'Thi Ngoc Anh Dang','100001562223008','female','en_GB','anh.n.dang.5','234651959992097','2014-04-24 15:07:45','2014-04-24 15:07:45'),
	(111,'Hương Ngô Thanh','100001825927138','female','vi_VN','ngothanh.huong.79','234651959992097','2014-04-24 15:07:46','2014-04-24 15:07:46'),
	(112,'Mai Mèo','100005723112908','female','vi_VN','mai.diamond.98','181614945361734','2014-04-24 15:10:25','2014-04-24 15:10:25'),
	(113,'Linh Bún','100004029024322','female','vi_VN','linh.pucca.165','181614945361734','2014-04-24 15:10:27','2014-04-24 15:10:27'),
	(114,'PY Nquyễn','100006811332261','female','vi_VN','huynh.nquyen.5','181614945361734','2014-04-24 15:10:28','2014-04-24 15:10:28'),
	(115,'Lan Anh Trần','100005401901946','female','vi_VN','lananh.tran.58367','181614945361734','2014-04-24 15:10:29','2014-04-24 15:10:29'),
	(116,'Suri Bich Hau','100004008301928','female','vi_VN','suri.bichhau','181614945361734','2014-04-24 15:10:31','2014-04-24 15:10:31'),
	(117,'Sonsuzluk Nez','100006311311386','female','tr_TR','nez.bayraktar.12','181614945361734','2014-04-24 15:10:32','2014-04-24 15:10:32'),
	(118,'Cà Phê','100001882584103','female','vi_VN','rosynhinho','181614945361734','2014-04-24 15:10:33','2014-04-24 15:10:33'),
	(119,'Trynk Vizta','100001041927590','female','vi_VN','trinh.ngoc.9047','181614945361734','2014-04-24 15:10:35','2014-04-24 15:10:35'),
	(120,'Zanariah Bahari','100000608056443','female','en_US','zanariah.bahari.1','181614945361734','2014-04-24 15:10:36','2014-04-24 15:10:36'),
	(121,'Bon Bon','100004306239411','female','vi_VN','vanmaithanh.mai','181614945361734','2014-04-24 15:10:38','2014-04-24 15:10:38'),
	(122,'Lê Tú Thiên','100006262033493','female','vi_VN','tuthien.le.92','181614945361734','2014-04-24 15:10:40','2014-04-24 15:10:40'),
	(123,'Much Điệu Điệu','100003968721966','female','vi_VN','nhieuhuynh.90','181614945361734','2014-04-24 15:10:41','2014-04-24 15:10:41'),
	(124,'Pé Heo Kute','100006762846080','female','vi_VN','khanhquyen.huynh.7','181614945361734','2014-04-24 15:10:44','2014-04-24 15:10:44'),
	(125,'Mj Ta','100004557484495','female','vi_VN','mj.ta.5','181614945361734','2014-04-24 15:10:45','2014-04-24 15:10:45'),
	(126,'Gà Bông','100004617904233','female','vi_VN','ga.bong.568847','181614945361734','2014-04-24 15:10:48','2014-04-24 15:10:48'),
	(127,'Ngọc Thảo','100007742924374','female','vi_VN','ngocthao.nguyen.7505468','181614945361734','2014-04-24 15:10:51','2014-04-24 15:10:51'),
	(128,'Loan Hồng','100005731569807','female','vi_VN','hongcamloan.hong','181614945361734','2014-04-24 15:10:52','2014-04-24 15:10:52'),
	(129,'Linh Liều Lĩnh','100003697673824','female','vi_VN','linhde.thuong.56','181614945361734','2014-04-24 15:10:54','2014-04-24 15:10:54'),
	(130,'Maria Luz','1201628552','female','es_LA','omarialuz','181614945361734','2014-04-24 15:10:57','2014-04-24 15:10:57'),
	(131,'Elly Vân','100004332462817','female','vi_VN','pe.py.140','181614945361734','2014-04-24 15:11:00','2014-04-24 15:11:00'),
	(132,'Nam Hư Hỏng','100007721262566','male','vi_VN','susi.cahoi.9','181614945361734','2014-04-24 15:11:01','2014-04-24 15:11:01'),
	(133,'Duong Tran','100003984439421','male','vi_VN','Duongduong123','181614945361734','2014-04-24 15:11:02','2014-04-24 15:11:02'),
	(134,'Pyshi Duong','100004354505477','female','vi_VN','uyen.duong.73307','181614945361734','2014-04-24 15:11:05','2014-04-24 15:11:05'),
	(135,'Thanh Tâm','100005292783507','female','vi_VN','thanhtam.pham.1272','181614945361734','2014-04-24 15:11:07','2014-04-24 15:11:07'),
	(136,'Tieuthulovely Hodo','100008004458127','female','vi_VN','tieuthu.do.16','181614945361734','2014-04-24 15:11:09','2014-04-24 15:11:09'),
	(137,'Eliza Kim','100000893017865','female','vi_VN','eliza.kim.18','181614945361734','2014-04-24 15:11:10','2014-04-24 15:11:10'),
	(138,'MP PM','100003891656959','female','vi_VN','my.phung.58','181614945361734','2014-04-24 15:11:11','2014-04-24 15:11:11'),
	(139,'Thỏ Kymi','100004966989922','female','vi_VN','nguyen.my.3979489','181614945361734','2014-04-24 15:11:12','2014-04-24 15:11:12'),
	(140,'Hiền Japann','100004172131542','female','vi_VN','hien.nguyen.05.12.94','181614945361734','2014-04-24 15:11:15','2014-04-24 15:11:15'),
	(141,'Nguyen Han Thuy Tram','100006283573863','female','vi_VN','nguyen.hanthuytram','181614945361734','2014-04-24 15:11:17','2014-04-24 15:11:17'),
	(142,'Tieu Mui Mui','100004411090633','female','en_US','tieu.muimui.50','181614945361734','2014-04-24 15:11:18','2014-04-24 15:11:18'),
	(143,'Binn Kelly','100006543346243','female','vi_VN','bin.kelly.37','181614945361734','2014-04-24 15:11:22','2014-04-24 15:11:22'),
	(144,'Kanwal Hazran','100003930964790','female','en_GB','kanwal.hazran','181614945361734','2014-04-24 15:11:23','2014-04-24 15:11:23'),
	(145,'Nga Trần','100007674104441','female','vi_VN','tran.loi.1612','181614945361734','2014-04-24 15:11:24','2014-04-24 15:11:24'),
	(146,'Hoàn Nguyễn','100007957025436','female','vi_VN','she.neva.knowhoan','181614945361734','2014-04-24 15:11:27','2014-04-24 15:11:27'),
	(147,'Phương Trầnn','100004017825760','female','vi_VN','jenny.tran114','181614945361734','2014-04-24 15:11:28','2014-04-24 15:11:28'),
	(148,'Mai Quỳnh','100002827320519','female','vi_VN','Amakusa94','181614945361734','2014-04-24 15:11:30','2014-04-24 15:11:30'),
	(149,'Truong Huong Thanh','100007269725131','female','vi_VN','truong.huongthanh','181614945361734','2014-04-24 15:11:31','2014-04-24 15:11:31'),
	(150,'Mua Ki Niem','100006488171736','female','vi_VN','muaki.niem.752','181614945361734','2014-04-24 15:11:33','2014-04-24 15:11:33'),
	(151,'Bà Táo','100003732523033','female','vi_VN','huongthao.truong','181614945361734','2014-04-24 15:11:34','2014-04-24 15:11:34'),
	(152,'Nâu Đỏ','100003773291094','female','vi_VN','4t.super','181614945361734','2014-04-24 15:11:35','2014-04-24 15:11:35'),
	(153,'Cún Sociu','100005868010458','female','vi_VN','meopeo1311','181614945361734','2014-04-24 15:11:37','2014-04-24 15:11:37'),
	(154,'Jane Chong','100001942677775','female','zh_CN','chong.maychen','181614945361734','2014-04-24 15:11:38','2014-04-24 15:11:38'),
	(155,'Ta Khanhlinh','100003212199254','female','vi_VN','ta.khanhlinh.31','181614945361734','2014-04-24 15:11:41','2014-04-24 15:11:41'),
	(156,'Ngọc Thắm','100002741788102','female','vi_VN','ngoc.tham.564','181614945361734','2014-04-24 15:11:43','2014-04-24 15:11:43'),
	(157,'Thu Nga Lam','100006623791261','female','vi_VN','thunga.lam.92','181614945361734','2014-04-24 15:11:45','2014-04-24 15:11:45'),
	(158,'Candy Yoorie','100005355092959','female','vi_VN','candy.yoorie006','181614945361734','2014-04-24 15:11:46','2014-04-24 15:11:46'),
	(159,'Uyên Tôn','100002547146360','female','vi_VN','Uyenton95','181614945361734','2014-04-24 15:11:49','2014-04-24 15:11:49'),
	(160,'Hà Trang','100005419806438','female','vi_VN','hatrangle18601','181614945361734','2014-04-24 15:11:51','2014-04-24 15:11:51'),
	(161,'Nguyễn Đức Tú Anh','100003882347241','female','vi_VN','Nhok95','181614945361734','2014-04-24 15:11:52','2014-04-24 15:11:52'),
	(162,'Hùynh Nhi','100004792718002','female','vi_VN','nhi.huynh.3572','181614945361734','2014-04-24 15:11:54','2014-04-24 15:11:54'),
	(163,'Lê Nhi','100001503888789','female','en_US','yennhi95lk','181614945361734','2014-04-24 15:11:55','2014-04-24 15:11:55'),
	(164,'Kim Yến','100006954785735','female','vi_VN','nganha.thai.18','181614945361734','2014-04-24 15:11:57','2014-04-24 15:11:57'),
	(165,'Ký Ức Lãng Quên','100005917359524','male','vi_VN','chiconlaiquakhu.cs','181614945361734','2014-04-24 15:12:00','2014-04-24 15:12:00'),
	(166,'Miu Miu','100005012764232','female','vi_VN','oanh.phan.37853','181614945361734','2014-04-24 15:12:01','2014-04-24 15:12:01'),
	(167,'Hi Vọng','100004769200263','female','vi_VN','vy.le.5264382','181614945361734','2014-04-24 15:12:02','2014-04-24 15:12:02'),
	(168,'Nqọc Tú','100007768416703','female','vi_VN','pe.tu.96155','181614945361734','2014-04-24 15:12:07','2014-04-24 15:12:07'),
	(169,'Gọi Tên Ngày Mới','100003621973594','female','vi_VN','buithi.men.1','181614945361734','2014-04-24 15:12:09','2014-04-24 15:12:09'),
	(170,'Nguyễn Quỳnh Chi','100002698300180','female','vi_VN','chi.nguyenquynh.37','181614945361734','2014-04-24 15:12:11','2014-04-24 15:12:11'),
	(171,'Mary Gomez','100006864660975','female','es_ES','mary.gaitan.739','181614945361734','2014-04-24 15:12:13','2014-04-24 15:12:13'),
	(172,'Yến Nguyễn','1784928609','female','vi_VN','yen.nguyen.908132','181614945361734','2014-04-24 15:12:14','2014-04-24 15:12:14'),
	(173,'Blt Dương','100000398792272','female','vi_VN','duong.dieu.5','181614945361734','2014-04-24 15:12:16','2014-04-24 15:12:16'),
	(174,'Kei Xi','100002944470185','female','vi_VN','chi.tran.71','181614945361734','2014-04-24 15:12:17','2014-04-24 15:12:17'),
	(175,'Hân Huỳnh','100004038013028','female','vi_VN','s2nho49','181614945361734','2014-04-24 15:12:20','2014-04-24 15:12:20'),
	(176,'ʚɞKẹo Súnʚɞ','100003272632373','female','vi_VN','keo.sun.9','181614945361734','2014-04-24 15:12:21','2014-04-24 15:12:21'),
	(177,'Ti Heo','100007658227259','female','vi_VN','bach.tuyet.75641','181614945361734','2014-04-24 15:12:22','2014-04-24 15:12:22'),
	(178,'Pig Cry','100005312708300','female','vi_VN','heongo.susj','181614945361734','2014-04-24 15:12:24','2014-04-24 15:12:24'),
	(179,'Tiny Lê','100003570484731','female','vi_VN','lethanh.phuongvy','181614945361734','2014-04-24 15:12:28','2014-04-24 15:12:28'),
	(180,'Kim Phung Nguyen','100000256599927','female','vi_VN','kimphung167','181614945361734','2014-04-24 15:12:31','2014-04-24 15:12:31'),
	(181,'Thủy Tiên','100007832442317','female','vi_VN','an.tam.750','181614945361734','2014-04-24 15:12:36','2014-04-24 15:12:36'),
	(182,'Suri Kun','100003706367518','female','vi_VN','susu.hoa','181614945361734','2014-04-24 15:12:37','2014-04-24 15:12:37'),
	(183,'Craven Từ','100001860669450','female','vi_VN','tu.trang.549','181614945361734','2014-04-24 15:12:38','2014-04-24 15:12:38'),
	(184,'Ivelisse Matos','100002318297658','female','es_LA','matos.ivelisse','181614945361734','2014-04-24 15:12:40','2014-04-24 15:12:40'),
	(185,'Tuyen Mai','100005745458193','female','vi_VN','kimtuyen.mai.12','181614945361734','2014-04-24 15:12:45','2014-04-24 15:12:45'),
	(186,'Hai Loc','100005069379726','female','en_GB','hai.loc.752','181614945361734','2014-04-24 15:12:46','2014-04-24 15:12:46'),
	(187,'Lann Anhh','100006452713301','female','vi_VN','la.phan.33','181614945361734','2014-04-24 15:12:48','2014-04-24 15:12:48'),
	(188,'Uyên Phương','100003950262987','female','vi_VN','kelly.nguyen.92167789','181614945361734','2014-04-24 15:12:50','2014-04-24 15:12:50'),
	(189,'Mắt Hí','100005990132725','female','vi_VN','cam.nguyen.75457081','181614945361734','2014-04-24 15:12:55','2014-04-24 15:12:55'),
	(190,'Yuliati Fazelly','100003011878671','female','en_GB','yuliati.fazelly','181614945361734','2014-04-24 15:12:57','2014-04-24 15:12:57'),
	(191,'Bé Cua','100000179036893','female','en_US','hanh.zi','181614945361734','2014-04-24 15:12:58','2014-04-24 15:12:58'),
	(192,'Nhi Huỳnh','100007189207743','female','vi_VN','htrucnhi','181614945361734','2014-04-24 15:13:00','2014-04-24 15:13:00'),
	(193,'KyEe Bella','100003722853220','female','vi_VN','nhu.sino','181614945361734','2014-04-24 15:13:01','2014-04-24 15:13:01');

/*!40000 ALTER TABLE `facebookuser` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `fanpage` WRITE;
/*!40000 ALTER TABLE `fanpage` DISABLE KEYS */;

INSERT INTO `fanpage` (`id`, `pageid`, `pageusername`, `pagename`, `likes`, `category`, `about`, `updated_at`, `created_at`)
VALUES
	(3,'234651959992097','L2VNFanpage','L2vn.com',5527,'Games/toys','L2VN - Lindvior. Client 3D MMORPG. Open Beta 24/4\nTrang chủ: http://l2vn.com/. \nDownload: http://l2vn.com/tin-tuc/Chinh-thuc-cho-Download-Lindvior--93','2014-04-24 11:47:50','2014-04-23 17:55:54'),
	(4,'181614945361734','ThaiBoutique88','Thái Boutique',22822,'Local business','Quần áo thời trang - Phụ kiện - Mỹ phẩm \nMade in Thailand','2014-04-24 15:10:14','2014-04-24 15:10:14');

/*!40000 ALTER TABLE `fanpage` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `lacategories` WRITE;
/*!40000 ALTER TABLE `lacategories` DISABLE KEYS */;

INSERT INTO `lacategories` (`id`, `latitle`, `laparent_id`, `laurl`, `lainfo`, `ladeleted`, `laorder`, `laimage`, `updated_at`, `created_at`, `laicon`)
VALUES
	(1,'Chăm sóc da',0,'cham-soc-da','Các bộ Dưỡng chính hãng giá tốt nhất thị trường giao Các bộ Dưỡng da Hàn Quốc nhanh tận nơi trên toàn quốc.',0,1,NULL,'2014-04-08 00:42:23','2014-04-08 00:42:23','glyphicon glyphicon-link'),
	(2,'Sữa rửa mặt',1,'sua-rua-mat','',0,1,NULL,'2014-04-08 00:43:16','2014-04-08 00:43:16','glyphicon glyphicon-link'),
	(3,'Tẩy tế bào chết',1,'tay-te-bao-chet','',0,2,NULL,'2014-04-08 00:43:32','2014-04-08 00:43:32','glyphicon glyphicon-link'),
	(4,'Kem dưỡng',1,'kem-duong','',0,3,NULL,'2014-04-08 00:43:44','2014-04-08 00:43:44','glyphicon glyphicon-link'),
	(5,'Mặt nạ',1,'mat-na','',0,4,NULL,'2014-04-08 00:43:58','2014-04-08 00:43:58','glyphicon glyphicon-link'),
	(6,'Chống nắng',1,'chong-nang','',0,5,NULL,'2014-04-08 00:44:10','2014-04-08 00:44:10','glyphicon glyphicon-link'),
	(7,'Dưỡng thể và tóc',0,'duong-the-va-toc','',0,2,NULL,'2014-04-08 00:44:55','2014-04-08 00:44:55','glyphicon glyphicon-link'),
	(8,'Tắm trắng - Ủ trắng',7,'tam-trang-u-trang','',0,1,NULL,'2014-04-08 00:45:24','2014-04-08 00:45:24','glyphicon glyphicon-link'),
	(9,'Sữa tắm - Muối tắm',7,'sua-tam-muoi-tam','',0,2,NULL,'2014-04-08 00:45:42','2014-04-08 00:45:42','glyphicon glyphicon-link'),
	(10,'Dưỡng thể',7,'duong-the','',0,3,NULL,'2014-04-08 00:45:57','2014-04-08 00:45:57','glyphicon glyphicon-link'),
	(12,'Tẩy tế bào chết body',7,'tay-te-bao-chet-body','',0,4,NULL,'2014-04-08 00:46:50','2014-04-08 00:46:50','glyphicon glyphicon-link'),
	(13,'Mặt nạ body',7,'mat-na-body','',0,5,NULL,'2014-04-08 00:47:05','2014-04-08 00:47:05','glyphicon glyphicon-link'),
	(14,'Chăm sóc tóc',7,'cham-soc-toc','',0,6,NULL,'2014-04-08 00:47:16','2014-04-08 00:47:16','glyphicon glyphicon-link'),
	(15,'Trang điểm',0,'trang-diem','',0,3,NULL,'2014-04-08 00:47:34','2014-04-08 00:47:34','glyphicon glyphicon-link'),
	(16,'Kem lót nền',15,'kem-lot-nen','',0,1,NULL,'2014-04-08 00:47:57','2014-04-08 00:47:57','glyphicon glyphicon-link'),
	(17,'Phấn phủ - Phấn nền',15,'phan-phu-phan-nen','',0,2,NULL,'2014-04-08 00:48:16','2014-04-08 00:48:16','glyphicon glyphicon-link'),
	(18,'Phấn má hồng - Phấn mắt',15,'phan-ma-hong-phan-mat','',0,3,NULL,'2014-04-08 00:48:36','2014-04-08 00:48:36','glyphicon glyphicon-link'),
	(19,'Eyeliner - Kẻ mày - Mascara',15,'eyeliner-ke-may-mascara','',0,4,NULL,'2014-04-08 00:48:54','2014-04-08 00:48:54','glyphicon glyphicon-link'),
	(20,'Son dưỡng - Son môi',15,'son-duong-son-moi','',0,5,NULL,'2014-04-08 00:49:13','2014-04-08 00:49:13','glyphicon glyphicon-link'),
	(21,'Tẩy trang',15,'tay-trang','',0,6,NULL,'2014-04-08 00:49:26','2014-04-08 00:49:26','glyphicon glyphicon-link'),
	(22,'Thời trang',0,'thoi-trang','',0,4,NULL,'2014-04-08 00:51:09','2014-04-08 00:51:09','glyphicon glyphicon-link'),
	(23,'Tin tức',0,'tin-tuc','',0,5,NULL,'2014-04-08 00:51:26','2014-04-08 00:51:26','glyphicon glyphicon-link');

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
	(1,'slide','wQ3P7QnAxNIRfC9FTKTQSRf7EZ3mXFLX.png|Thái Bouqique Facebook|https://www.facebook.com/ThaiBoutique88','2014-04-08 10:40:55','2014-04-08 10:40:55'),
	(2,'sidebarads','','2014-04-08 10:40:55','2014-04-08 10:40:55');

/*!40000 ALTER TABLE `laconfig` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'Of9MR4Rs3fuyi2vZlYIeQDQzpX8VIakl.jpg','',1,'2014-04-08 01:19:00','2014-04-08 01:19:00'),
	(2,'EzD785JUThUf2ajaZyf91a40StiL7Iq8.gif','',2,'2014-04-08 01:35:49','2014-04-08 01:35:49'),
	(3,'nloacYkLCsAH9NXKb5c2vGTzshp6W8uc.jpg','',3,'2014-04-08 01:37:41','2014-04-08 01:37:41'),
	(4,'wQ3P7QnAxNIRfC9FTKTQSRf7EZ3mXFLX.png','',4,'2014-04-08 10:40:14','2014-04-08 10:40:14');

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
	(1,'The Face Shop','the-face-shop',NULL,'2014-04-08 00:54:04','2014-04-08 00:54:04','',NULL,0),
	(2,'Holika','holika',NULL,'2014-04-08 00:54:31','2014-04-08 00:54:31','',NULL,0),
	(3,'Tonymoly','tonymoly',NULL,'2014-04-08 00:54:43','2014-04-08 00:54:43','',NULL,0),
	(4,'Nyx','nyx',NULL,'2014-04-08 00:54:54','2014-04-08 00:54:54','',NULL,0),
	(5,'L\'aila Spa','laila-spa',NULL,'2014-04-08 00:55:29','2014-04-08 00:55:29','',NULL,0),
	(6,'Karmart','karmart',NULL,'2014-04-08 00:55:42','2014-04-08 00:55:42','',NULL,0),
	(7,'Thailand','thailand',NULL,'2014-04-08 00:56:01','2014-04-08 00:56:01','',NULL,0);

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

LOCK TABLES `laorderitems` WRITE;
/*!40000 ALTER TABLE `laorderitems` DISABLE KEYS */;

INSERT INTO `laorderitems` (`id`, `order_id`, `latitle`, `amount`, `laprice`, `variantname`, `producturl`, `caturl`, `variantid`, `laimage`, `lakhoiluong`, `updated_at`, `created_at`, `product_id`)
VALUES
	(1,1,'Huyết thanh bông tuyết',1,190000,'','huyet-thanh-bong-tuyet','kem-duong',0,'Of9MR4Rs3fuyi2vZlYIeQDQzpX8VIakl.jpg',0,'2014-04-08 01:30:58','2014-04-08 01:30:58',1);

/*!40000 ALTER TABLE `laorderitems` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `laorders` WRITE;
/*!40000 ALTER TABLE `laorders` DISABLE KEYS */;

INSERT INTO `laorders` (`id`, `lashipping`, `lapayment`, `lasumkhoiluong`, `lafeeshipping`, `laordername`, `laordertel`, `laorderemail`, `laorderaddr`, `laorderprovince`, `laorderdistrict`, `updated_at`, `created_at`, `uid`, `user_id`, `order_status`, `voucher`, `giamvoucher`, `sumsanpham`, `laordernote`)
VALUES
	(1,'ship_hcm','pay_tienmat',0,25000,'Trương Công Thắng','01695359198','thang102@gmail.com','90 Thăng Long','hcm','tb','2014-04-08 01:33:14','2014-04-08 01:30:58',NULL,NULL,'0','online05',20000,190000,'test đơn hàng');

/*!40000 ALTER TABLE `laorders` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'Huyết thanh bông tuyết','huyet thanh, bong tuyet',NULL,'','','','Of9MR4Rs3fuyi2vZlYIeQDQzpX8VIakl.jpg',4,5,230000,190000,20,'1396285200',0,'huyet-thanh-bong-tuyet','2014-05-05 15:30:39','2014-04-08 01:02:33','','20',21,'làm đẹp',0,''),
	(2,'Giới thiệu','',NULL,'Giới thiệu về Thái Boutique và webmypham.vn','','','EzD785JUThUf2ajaZyf91a40StiL7Iq8.gif',23,0,0,0,0,'0',0,'gioi-thieu','2014-04-08 11:05:32','2014-04-08 01:35:49','','',1,'',0,''),
	(3,'Thanh toán','',NULL,'Cách thức thanh toán tại Thái Boutique','','','nloacYkLCsAH9NXKb5c2vGTzshp6W8uc.jpg',23,0,0,0,0,'0',0,'thanh-toan','2014-04-08 01:37:41','2014-04-08 01:37:41','','',0,'',0,'all'),
	(4,'Slider','',NULL,'','','','wQ3P7QnAxNIRfC9FTKTQSRf7EZ3mXFLX.png',0,0,0,0,0,'0',1,'slider','2014-04-08 10:40:14','2014-04-08 10:40:14','','',0,'',0,'');

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
	(1,'admin','$2y$10$cn2evPkX0GMyAWcUZ37ab.1ilTXucy9oitCo7qOnUzBso0KAgQmsi','admin',1,'Administrator','2014-04-07 23:53:53',NULL,NULL,NULL),
	(2,'cot','$2y$10$ZLrOXEKCZGOV9zJb.FRd3.6bDe7m8Ecjr.ce57t5fx3mUzLFnH9cW',NULL,NULL,NULL,'2014-04-07 22:12:23','2014-04-07 22:12:23',NULL,NULL),
	(3,'pepsi','$2y$10$jbeu8qXffWTsQ8qAzdQGceF4QcxmQnfgs62R962IO3IDCWSXzSFSW','admin',NULL,'Pepsi','2014-04-07 23:52:49','2014-04-07 23:52:49','',NULL);

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
