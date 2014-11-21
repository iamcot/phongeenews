-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2014 at 10:27 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phongeenews`
--

-- --------------------------------------------------------

--
-- Table structure for table `facebookuser`
--

CREATE TABLE IF NOT EXISTS `facebookuser` (
`id` int(11) unsigned NOT NULL,
  `facebookname` text,
  `facebookid` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fanpage_id` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fanpage`
--

CREATE TABLE IF NOT EXISTS `fanpage` (
`id` int(11) unsigned NOT NULL,
  `pageid` varchar(50) DEFAULT NULL,
  `pageusername` varchar(50) DEFAULT NULL,
  `pagename` varchar(50) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `about` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lacategories`
--

CREATE TABLE IF NOT EXISTS `lacategories` (
`id` int(11) unsigned NOT NULL,
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
  `isnews` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `lacategories`
--

INSERT INTO `lacategories` (`id`, `latitle`, `laparent_id`, `laurl`, `lainfo`, `ladeleted`, `laorder`, `laimage`, `updated_at`, `created_at`, `laicon`, `isnews`) VALUES
(1, 'Apple', 0, 'apple', 'Đẳng cấp của bạn.', 0, 1, NULL, '2014-06-06 03:30:32', '2014-06-04 07:21:24', 'glyphicon glyphicon-link', 0),
(2, 'Hãng khác', 0, 'hang-khac', '', 0, 2, NULL, '2014-09-08 16:59:10', '2014-06-04 07:21:39', 'glyphicon glyphicon-link', 0),
(3, 'iPhone', 1, 'iphone', '', 0, 1, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:27:56', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(4, 'iPad', 1, 'ipad', '', 0, 2, 'S85nbAnPygMFGjeoNmU9r7oERyxPGHeR.jpg', '2014-08-04 06:28:03', '2014-06-04 07:22:10', 'glyphicon glyphicon-link', 0),
(5, 'Samsung', 2, 'samsung', '', 0, 3, NULL, '2014-09-08 16:57:03', '2014-06-04 07:22:26', 'glyphicon glyphicon-link', 0),
(6, 'HTC', 2, 'htc', '', 0, 5, NULL, '2014-09-08 16:58:01', '2014-06-04 07:22:36', 'glyphicon glyphicon-link', 0),
(7, 'Hệ thống', 0, 'he-thong', '', 1, 7, NULL, '2014-08-16 13:47:33', '2014-06-04 08:31:11', 'glyphicon glyphicon-link', 1),
(8, '', 21, '', '', 1, 0, NULL, '2014-09-04 13:04:16', '2014-06-04 08:31:27', 'glyphicon glyphicon-link', 1),
(9, 'Tin PhonGee', 21, 'tin-phongee', '', 1, 2, NULL, '2014-09-04 13:08:43', '2014-06-04 08:31:32', 'glyphicon glyphicon-link', 1),
(10, 'Tin báo chí', 21, 'tin-bao-chi', '', 1, 1, NULL, '2014-09-04 13:07:51', '2014-06-04 08:32:37', 'glyphicon glyphicon-link', 1),
(11, 'Chất 2nd', 0, 'chat-2nd', '', 0, 5, NULL, '2014-09-08 17:00:12', '2014-06-04 08:33:24', 'glyphicon glyphicon-link', 0),
(12, 'Tin nổi bật', 21, 'tin-noi-bat', '', 1, 0, NULL, '2014-09-04 13:07:59', '2014-06-04 08:35:09', 'glyphicon glyphicon-link', 1),
(13, 'Phụ kiện', 0, 'phu-kien', '', 0, 3, NULL, '2014-08-04 08:39:41', '2014-06-06 11:04:07', 'glyphicon glyphicon-link', 0),
(14, 'Chính sách', 0, 'chinh-sach', '', 1, 6, NULL, '2014-09-04 13:09:28', '2014-06-11 04:47:32', 'glyphicon glyphicon-link', 0),
(15, 'Chi nhánh', 0, 'chi-nhanh', '', 1, 7, NULL, '2014-08-01 13:17:34', '2014-06-11 04:47:44', 'glyphicon glyphicon-link', 0),
(16, 'iPod', 1, 'ipod', '', 0, 3, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:28:08', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(17, 'Mac', 1, 'mac', '', 0, 0, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:27:44', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(18, '... Khác từ Apple', 1, 'khac-tu-apple', '', 0, 4, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-09-04 13:11:29', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(19, 'iPhone 5', 1, 'iphone5', '', 1, 0, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:28:17', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(20, 'Các chi nhánh', 7, 'cac-chi-nhanh', '', 0, 1, NULL, '2014-08-04 09:52:36', '2014-08-01 13:19:44', 'glyphicon glyphicon-link', 0),
(21, 'TIN CÔNG TY', 0, 'tin-cong-ty', '', 0, 7, NULL, '2014-09-04 13:05:32', '2014-08-01 13:20:02', 'glyphicon glyphicon-link', 1),
(22, 'Bảo hành', 14, 'bao-hanh', '', 0, 1, NULL, '2014-08-01 13:35:44', '2014-08-01 13:21:07', 'glyphicon glyphicon-link', 0),
(23, 'Thành viên', 14, 'thanh-vien', '', 0, 2, NULL, '2014-08-01 13:35:39', '2014-08-01 13:21:21', 'glyphicon glyphicon-link', 0),
(24, 'Hỗ trợ', 14, 'ho-tro', '', 0, 3, NULL, '2014-09-04 13:07:35', '2014-08-01 13:34:51', 'glyphicon glyphicon-link', 0),
(25, 'Máy đã dùng', 11, 'may-da-dung', '', 0, 0, NULL, '2014-11-04 02:13:28', '2014-08-01 14:16:02', 'glyphicon glyphicon-link', 0),
(26, 'Linh tinh...', 11, 'linh-tinh', '', 0, 1, NULL, '2014-08-04 08:43:22', '2014-08-01 14:16:47', 'glyphicon glyphicon-link', 0),
(27, 'MacBook Pro', 17, 'macbook-pro', '', 0, 2, NULL, '2014-08-04 06:31:29', '2014-08-04 06:30:26', 'glyphicon glyphicon-link', 0),
(28, 'MacBook Air', 17, 'macbook-air', '', 0, 1, NULL, '2014-08-04 06:31:35', '2014-08-04 06:30:50', 'glyphicon glyphicon-link', 0),
(29, 'iMac', 17, 'imac', '', 0, 0, NULL, '2014-08-04 06:31:24', '2014-08-04 06:31:06', 'glyphicon glyphicon-link', 0),
(30, 'Sony', 2, 'sony', '', 0, 1, NULL, '2014-09-08 16:53:57', '2014-08-04 08:12:21', 'glyphicon glyphicon-link', 0),
(31, 'BlackBerry', 2, 'blackberry', '', 0, 7, NULL, '2014-09-08 17:05:13', '2014-08-04 08:12:55', 'glyphicon glyphicon-link', 0),
(32, 'Tai nghe', 13, 'tai-nghe', '', 0, 0, NULL, '2014-08-04 08:14:26', '2014-08-04 08:14:26', 'glyphicon glyphicon-link', 0),
(33, 'Bao da/ Ốp lưng', 13, 'bao-da-op-lung', '', 0, 4, NULL, '2014-08-04 08:21:32', '2014-08-04 08:14:41', 'glyphicon glyphicon-link', 0),
(34, 'Pin dự phòng ', 39, 'pin-du-phong', '', 0, 3, NULL, '2014-08-04 08:35:59', '2014-08-04 08:16:15', 'glyphicon glyphicon-link', 0),
(35, 'Loa di động', 13, 'loa-di-dong', '', 0, 1, NULL, '2014-08-04 08:20:28', '2014-08-04 08:17:49', 'glyphicon glyphicon-link', 0),
(36, 'Pin (battery)', 39, 'pin-battery', '', 0, 2, NULL, '2014-08-04 08:35:48', '2014-08-04 08:19:30', 'glyphicon glyphicon-link', 0),
(37, 'Phụ kiện khác...', 13, 'phu-kien-khac', '', 0, 4, NULL, '2014-08-04 08:37:32', '2014-08-04 08:24:54', 'glyphicon glyphicon-link', 0),
(38, 'Thương hiệu khác...', 2, 'thuong-hieu-khac', '', 0, 8, NULL, '2014-09-08 17:05:25', '2014-08-04 08:28:53', 'glyphicon glyphicon-link', 0),
(39, 'Pin', 13, 'pin', '', 0, 3, NULL, '2014-08-04 08:36:15', '2014-08-04 08:35:35', 'glyphicon glyphicon-link', 0),
(40, 'Về chúng tôi', 7, 've-chung-toi', '', 0, 0, NULL, '2014-08-04 09:52:48', '2014-08-04 09:52:48', 'glyphicon glyphicon-link', 0),
(41, 'PhonGee Color', 2, 'phongee-color', '', 0, 1, NULL, '2014-09-08 16:53:34', '2014-09-04 13:10:29', 'glyphicon glyphicon-link', 0),
(42, 'Nokia', 2, 'nokia', '', 0, 4, NULL, '2014-09-08 16:57:41', '2014-09-08 14:35:05', 'glyphicon glyphicon-link', 0),
(48, 'Sản phẩm khác', 0, 'san-pham-khac', '', 0, 4, NULL, '2014-09-08 16:59:51', '2014-09-08 16:59:51', 'glyphicon glyphicon-link', 0),
(49, 'LG', 2, 'lg', '', 0, 6, NULL, '2014-09-08 17:04:56', '2014-09-08 17:04:56', 'glyphicon glyphicon-link', 0),
(50, 'Mac Pro', 17, 'mac-pro', '', 0, 0, NULL, '2014-10-10 10:13:39', '2014-10-10 10:13:39', 'glyphicon glyphicon-link', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laconfig`
--

CREATE TABLE IF NOT EXISTS `laconfig` (
`id` int(11) NOT NULL,
  `lavar` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lavalue` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `laconfig`
--

INSERT INTO `laconfig` (`id`, `lavar`, `lavalue`, `updated_at`, `created_at`) VALUES
(1, 'slide', 't1f2SV9mgxeiOdIQPO6244ghBKndZuKz.png||#\r\nwubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png||#\r\nLkbmkP81jCbyJCMeVYW2haM9cTix0Q9x.png||#\r\ntR8kBPBTK6krJCsDf8xzpsJRIHDNrmhR.png||#\r\ndDjvJWMrezjAk56SyBBpkwrxVOrMqnTt.png||#\r\nb6KQtHEmqzP661FcDe195ahmo5OH9e49.png||#', '2014-09-10 09:48:40', '2014-06-04 08:25:46'),
(2, 'sidebarads', '', '2014-06-04 08:25:46', '2014-06-04 08:25:46'),
(3, 'store', 'Hotline 24/7: (08) 222 222 88\r\nTrụ sở chính: tòa nhà 5A, hẻm số 05, <br>Nguyễn Đình Chiểu, P. Đa Kao, Q.1, TP.HCM, Điện thoại: (08) 222 222 88 \r\n12 Tôn Thất Tùng, P. Bến Thành, Q1, TP.HCM <br>Điện thoại: (08) 222 222 99\r\n12 Trần Quốc Hoàn, P.4, Q. Tân Bình, TP. HCM <br>Điện thoại: (08) 222 222 66', '2014-11-04 02:11:20', '2014-09-08 10:10:22'),
(4, 'sliderid', '1', '2014-09-10 10:34:45', '2014-09-10 10:34:45'),
(5, 'sliderorder', 'order', '2014-09-10 10:34:45', '2014-09-10 10:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `laevent`
--

CREATE TABLE IF NOT EXISTS `laevent` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(250) NOT NULL DEFAULT '',
  `laactive` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lainfo` text,
  `laurl` varchar(250) NOT NULL DEFAULT '',
  `lanews` text,
  `laproduct` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `laevent`
--

INSERT INTO `laevent` (`id`, `latitle`, `laactive`, `updated_at`, `created_at`, `lainfo`, `laurl`, `lanews`, `laproduct`) VALUES
(1, 'Ra mắt iPhone 6', 1, '2014-09-10 05:08:07', '2014-09-09 10:56:14', 'sự kiện iphone6', 'ra-mat-iphone-6', '118,14,13', ''),
(2, 'iphone 5s', 0, '2014-09-09 11:18:39', '2014-09-09 11:01:14', 'thông tin thêm', 'iphone-5s', '1', '2'),
(3, 'ipad2', 0, '2014-09-09 11:19:10', '2014-09-09 11:18:48', '', 'ipad2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lafacebookcomments`
--

CREATE TABLE IF NOT EXISTS `lafacebookcomments` (
`id` int(11) NOT NULL,
  `lafullname` text,
  `lacontent` text,
  `laurl` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lafacebookcomments`
--

INSERT INTO `lafacebookcomments` (`id`, `lafullname`, `lacontent`, `laurl`, `updated_at`, `created_at`) VALUES
(1, NULL, NULL, NULL, '2014-06-19 21:38:53', '2014-06-19 21:38:53'),
(2, NULL, NULL, NULL, '2014-08-19 23:49:00', '2014-08-19 23:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `lafacebookprofiles`
--

CREATE TABLE IF NOT EXISTS `lafacebookprofiles` (
`id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `username` text CHARACTER SET latin1,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `laaccess_token` text CHARACTER SET latin1,
  `laaccess_token_secret` text CHARACTER SET latin1,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `laimages`
--

CREATE TABLE IF NOT EXISTS `laimages` (
`id` int(11) unsigned NOT NULL,
  `lapic` varchar(50) DEFAULT NULL,
  `latitle` varchar(100) DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laevent` int(11) DEFAULT NULL,
  `laorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=837 ;

--
-- Dumping data for table `laimages`
--

INSERT INTO `laimages` (`id`, `lapic`, `latitle`, `laproduct_id`, `updated_at`, `created_at`, `laevent`, `laorder`) VALUES
(5, 'W32Z1e4FzNREcZc2y3isgNZBslcvXJsv.png', '', 2, '2014-06-06 16:41:28', '2014-06-06 16:41:28', NULL, 0),
(8, 'L0aZq7OHKSg56SFrtQpynFpH9U2naCWr.png', '', 4, '2014-06-06 16:50:44', '2014-06-06 16:50:44', NULL, 0),
(10, 'LyWSOsF8eYYwPqkA3NJDOjZtP2QNNOmY.png', '', 5, '2014-06-06 16:51:11', '2014-06-06 16:51:11', NULL, 0),
(11, 'qtTsHL2Z5FeRC0fLgD35paA5p0I3O53Y.png', '', 6, '2014-06-06 16:52:20', '2014-06-06 16:52:20', NULL, 0),
(15, '6r9NaZ3Mu0555PHsQSKcpEwewioUl8a4.png', '', 8, '2014-06-06 17:11:04', '2014-06-06 17:11:04', NULL, 0),
(17, 'xJx3aFrKcEg67oS6vvFLcmQxNgI7bu3w.png', '', 9, '2014-06-06 17:11:32', '2014-06-06 17:11:32', NULL, 0),
(19, 'CaRCSCq6EFPBaLx9qCtiR2ah3zMTEg8w.png', '', 10, '2014-06-06 17:11:48', '2014-06-06 17:11:48', NULL, 0),
(20, 'dsP9PM6ZfdSuEDWgONbNKIKeacOzfXz6.png', '', 11, '2014-06-06 17:12:04', '2014-06-06 17:12:04', NULL, 0),
(23, 'm0OJUAkKlCJbsNEboOt80V5Xet5Oax1m.png', '', 12, '2014-06-06 17:12:20', '2014-06-06 17:12:20', NULL, 0),
(24, '7xdXj1CDtCkII3zYdshDsnvMJueD8OIv.jpg', '', 13, '2014-06-06 17:37:34', '2014-06-06 17:37:34', NULL, 0),
(25, 'rGOTuyWkY1wcjMJxqeHIPSSkqsNsRuBw.jpg', '', 14, '2014-06-06 17:45:48', '2014-06-06 17:45:48', NULL, 0),
(26, '9TYLwI6j55DYOO1RvmJbYvUpT26OAHH8.png', '', 16, '2014-06-11 04:51:49', '2014-06-11 04:51:49', NULL, 0),
(32, 'NoVPuRtMUIP4rQOai9fTG8T6TcK8Lb57.png', '', 16, '2014-07-31 14:45:42', '2014-07-31 14:45:42', NULL, 0),
(33, 'r8f6xWgPVNJAHfqocjqUWMQLV4JLcBGi.png', '', 25, '2014-08-28 03:56:19', '2014-08-28 03:56:19', NULL, 0),
(34, 'NKy0N67mHRVDcdQsp6xTsmUmk7Wb7ajI.png', '', 26, '2014-08-28 04:23:45', '2014-08-28 04:23:45', NULL, 0),
(35, 'SKYC1hWzl8TMVRa7FrSMxYcQGzJ28CFP.png', '', 27, '2014-08-28 14:15:00', '2014-08-28 14:15:00', NULL, 0),
(37, 'uO0g7e9jesdt4YNOIj9iqsViOW3z1Rs7.png', '', 31, '2014-08-30 08:24:08', '2014-08-30 08:24:08', NULL, 0),
(42, 'ktnjLooBSCmE4K1KPqR9vBFSvSlQOCWy.png', '', 32, '2014-08-30 08:36:04', '2014-08-30 08:36:04', NULL, 0),
(44, '8CbD0yQsS4ufpb28HFIjGUwPGETOJwiW.png', '', 33, '2014-08-30 08:36:30', '2014-08-30 08:36:30', NULL, 0),
(47, 'kqmPqUCKWPlP1AeSfJu8Ag1xXt7G9tGr.png', '', 35, '2014-08-30 08:51:54', '2014-08-30 08:51:54', NULL, 0),
(49, 'wuKySO1jmzc0STbqSWXdH6PPDiR2pLEf.png', '', 36, '2014-08-30 08:52:30', '2014-08-30 08:52:30', NULL, 0),
(51, 'Z1Vqn1K1mvMBjrFPL1XQN7g7unVmQCA0.png', '', 37, '2014-08-30 08:52:50', '2014-08-30 08:52:50', NULL, 0),
(53, 'AMv3ibeAJYzL9rT9xQvHKtWGWlXrD8nY.png', '', 39, '2014-09-01 14:55:04', '2014-09-01 14:55:04', NULL, 0),
(55, 'JPAMxZTd1WwZARCMIUGwy1AWexvVjsrR.png', '', 41, '2014-09-01 15:07:05', '2014-09-01 15:07:05', NULL, 0),
(57, 'bW0GeijcqGcvb4EUIg0K6oljIIDXKX6p.png', '', 42, '2014-09-01 15:07:47', '2014-09-01 15:07:47', NULL, 0),
(59, 'd5CVxFOGgghCBDSqaQHXxTnMrYlHrFLw.png', '', 43, '2014-09-01 15:08:27', '2014-09-01 15:08:27', NULL, 0),
(61, 'VydEsCuysPes4JVwDn2rY1XQRsuCBfkg.png', '', 44, '2014-09-01 15:08:50', '2014-09-01 15:08:50', NULL, 0),
(63, 'AveY6gq1jFRL8UiBQnD41RS1qVYd3DmJ.png', '', 45, '2014-09-01 15:09:12', '2014-09-01 15:09:12', NULL, 0),
(72, 'tjqz30llgJUH88gY1EfRX0hfbp5pIAbm.png', '', 51, '2014-09-01 15:37:32', '2014-09-01 15:37:32', NULL, 0),
(73, 'V32idkJYZlpeb7abkzyrdWLME2FmtO7v.png', '', 52, '2014-09-01 15:38:55', '2014-09-01 15:38:55', NULL, 0),
(76, 'XqCN9vMOeSupTpoxDqdADNiwAcriOhC4.png', '', 54, '2014-09-01 15:58:23', '2014-09-01 15:58:23', NULL, 0),
(78, 'RGYxwu7yPoqAsUMBsBzoWRDsGMTozrpQ.png', '', 55, '2014-09-01 15:58:41', '2014-09-01 15:58:41', NULL, 0),
(81, 'nmBdpmBHyMQdH74xy25ez5xVnogBLcre.png', '', 57, '2014-09-01 16:06:49', '2014-09-01 16:06:49', NULL, 0),
(83, 'gsBsDjHvqygK0SgiKXzHg0jhmQs8MvO8.png', '', 58, '2014-09-01 16:07:06', '2014-09-01 16:07:06', NULL, 0),
(86, 'Grcx5T2fC8gVtwT9oz0QSSImrRW3eUiN.png', '', 60, '2014-09-01 16:08:26', '2014-09-01 16:08:26', NULL, 0),
(87, 'keQOIglTspnzehMotSDWbuXrTlSB4GBL.png', '', 60, '2014-09-01 16:08:26', '2014-09-01 16:08:26', NULL, 0),
(88, 'GMdSM1YUxl8AZg66lg2h5x50c3uUwhHt.png', '', 61, '2014-09-01 16:08:44', '2014-09-01 16:08:44', NULL, 0),
(91, '75QS32ROUpBg7wBNLvpLIE0ajA6VHgC0.png', '', 63, '2014-09-01 16:11:06', '2014-09-01 16:11:06', NULL, 0),
(93, 'S8b3nK4lU3C5J5GMAwH6Q47f7dqSzuJd.png', '', 64, '2014-09-01 16:11:23', '2014-09-01 16:11:23', NULL, 0),
(96, 'tmrdWMYrAeC4idZxrILajpB0B4BQqHR3.png', '', 66, '2014-09-01 16:12:29', '2014-09-01 16:12:29', NULL, 0),
(98, '8nJFKlQx7jIEaQMHh2lgEPHgqqAQP28c.png', '', 67, '2014-09-01 16:12:44', '2014-09-01 16:12:44', NULL, 0),
(101, 'aNbGQoR42roUBLU84ujTKVVrogQTEn2o.png', '', 69, '2014-09-01 16:14:18', '2014-09-01 16:14:18', NULL, 0),
(103, 'oRiHY30HrMb4RyIdj8vN8czd8mfU38IF.png', '', 70, '2014-09-01 16:14:33', '2014-09-01 16:14:33', NULL, 0),
(106, 'n3McFjalWvQEJEKwjT6S81cYnqJ4nDos.png', '', 72, '2014-09-01 16:15:58', '2014-09-01 16:15:58', NULL, 0),
(108, 'xZqVYnUpH1z4wDHqa2sUiGmj3GHyU81i.png', '', 73, '2014-09-01 16:16:12', '2014-09-01 16:16:12', NULL, 0),
(121, 'RVE3uh5p4UmGUPBtdCCazsIA3fIgHALq.png', '', 84, '2014-09-01 16:48:12', '2014-09-01 16:48:12', NULL, 0),
(125, 'e62e8cZ4ISASxvPdLntTqrtgImB3OiVf.png', '', 86, '2014-09-01 16:49:10', '2014-09-01 16:49:10', NULL, 0),
(127, 'hvIeOMRbzQr9tybFQoP8nuzf68meskzZ.png', '', 87, '2014-09-01 16:49:36', '2014-09-01 16:49:36', NULL, 0),
(129, 'eAIRkYrJJqFp2sJadczmwzKOTzHdSdXH.png', '', 88, '2014-09-01 16:50:03', '2014-09-01 16:50:03', NULL, 0),
(134, 'RDHA31Gd0UYx9Egf3Ur1435u9Xvs5ZNy.png', '', 83, '2014-09-07 06:31:16', '2014-09-07 06:31:16', NULL, 0),
(139, 'cRxfoJn3Jbd5sVTc0aO6GaC5P31Nbcp0.png', '', 88, '2014-09-07 07:23:51', '2014-09-07 07:23:51', NULL, 0),
(145, 'vXDwUgwv5tD70ylvx3NVP79KrkWCc8nt.png', '', 85, '2014-09-07 10:18:59', '2014-09-07 10:18:59', NULL, 0),
(146, 'wtl8UMcnazKzmMTsbMzoM5ykIh3PZYLe.png', '', 85, '2014-09-07 10:18:59', '2014-09-07 10:18:59', NULL, 0),
(147, 'TcgZ7ug6EleR7z5TZaM9h79fmCvnyomO.png', '', 87, '2014-09-07 10:21:03', '2014-09-07 10:21:03', NULL, 0),
(148, 'KJZ46oIJ1xJaALglPN6aReD6yI2O83kd.png', '', 86, '2014-09-07 10:21:58', '2014-09-07 10:21:58', NULL, 0),
(149, 'WyFzjEju4KVO6fNkBO453pza10ZhNSVT.png', '', 84, '2014-09-07 10:23:05', '2014-09-07 10:23:05', NULL, 0),
(163, 'zFmTeGhKdE90j1RipkKQxLxnJ4oxrlvB.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(164, 'ddei1ZdQKf10rs2wstf6HpfMIYPPuJa1.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(165, 'KjfdzNmbsd08MXglJktNpQXIBugpm89i.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(166, 'ACpBpkrBSYM7HtDmeQcyAN6Qx0C7a0za.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(167, 'w5nDfmzK3DhcTJ0i2c1AA2bosBSQEi9w.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(168, 'DIcBlgmlzNr1yiEh6upF9GYGbVmY3zED.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(170, 'rekpRT7JTrLbPZZrdSujykNolK1abV9b.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(171, '03z42fFx0CIrKcePrC10cxx2v1Mvn6ug.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(172, 'vi1snV6N1LI3MgIjHiiDBdStuMG4sfNU.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(174, 'vNrGk0H4Hq8E8nbZHeZ6akTueJPEhZ3C.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(175, '5QPnijDf7s6zPwiz23bNYUMUs2wuavQV.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(176, 'PbYRIX0M0BwWEoUxtWtSzsYjY3mVWgZC.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(178, 'vSqYRT4J5qlZHDfenkApe52Yl60TvDy0.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(179, '11rPFrqgFVfPOiTSkuuvurXezb7iSy21.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(180, 'q0OeLDmxLchRUBqrhqpPzqMuFSR1GZqd.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(191, '5WiLL1EGnScyjUuSGwDFn6t59I94bMZr.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(192, 'p6nKKURIUMJOhybtXnwbW1G6htnBDO7Y.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(193, 'XBPXuACWHTyiuOBljnxsMfvhse51yWqU.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(194, 'jFN9la4SMnesRMCBt18TIfjIwA7WDOPU.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(195, 'fNMoypblydFHhCbCapsqDllJEg4V3zzN.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(196, 'O4sxNDHS6Iv98IWGpWKFCQH36yfwLX2u.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(197, 'pxpnr5fRjKF7Jwvk4OJIC8RUxXEPLRiL.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(198, 'ZdnT8FmHy0KRR4bky1ed7xRj0pDBd7Sw.png', '', 77, '2014-09-07 16:34:51', '2014-09-07 16:34:51', NULL, 0),
(199, 'ZYs4CO4RWJcRdNltLmPk6weGr8T2728H.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(201, 'WU3FllfRP7EtLnJvsHjenh1spN11ga6d.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(202, 'yqBKtudXFPZU7L2WAjyXfjjPbVO5LDM9.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(203, 'CET3sQQu9ZDzZzlHahlBiz43TkS5p7Dh.png', '', 76, '2014-09-07 16:40:07', '2014-09-07 16:40:07', NULL, 0),
(204, 'dpWZUHnGnZgXulhrJ8W7veAanovV0M0k.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(205, 'zBBlT1y1fDnkf9UyLwEJ4Y9IaIwaSMCF.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(206, 'eepkrmtfmUVC0frg2cKHPBhGk65QPSbO.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(207, 'oljIoOUkkIIceNZ8ttmsvhD7NK85ZRps.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(208, 'XJ7sO34CbqyhML5uKVdu9rqY7Gy93uZi.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(209, '6dchgQ9JhN9IpMv10ryvFyQXZIHbXUdu.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(210, '6X5iG0zBll7qyzyo1vX3piGKUHfT9oL8.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(211, 'Ys3IKtSRXNfFQQZ178XhauYqvLVTLfRc.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(212, 'laSgXDRdcoJJGbfBoo48sVcajq2bvbWW.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(213, '1QYMCe05f5KjNpOkJCFacv08t65mYSg6.png', '', 73, '2014-09-07 17:17:22', '2014-09-07 17:17:22', NULL, 0),
(214, 'lPSnzjkAYVW32UFV044BgZ10iCX6OAr9.png', '', 72, '2014-09-07 17:17:56', '2014-09-07 17:17:56', NULL, 0),
(218, 't8kWO9ymXo2wzsr9TTyJyxLP290fsZ1t.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:19:57', NULL, 0),
(223, 'w6vfWIxh4pR1xEIu4Nz1KkoTDPcf0t92.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:32:09', NULL, 0),
(224, 'ffpNuN7LONZceHjc7HebzkbzHYe52O7w.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:32:09', NULL, 0),
(225, 'AefETKbYrAZeWo76LWi2jShCni8R45Lg.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:33:48', NULL, 0),
(228, 'ReE0cVQGgMQ4LIWZi7da7pEEIb54RL38.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(229, 'vL6oTLJJuJqLR13ynsCyh9bStL72BmP7.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(230, 'sNoPcwauebWIdYvYbgTWx69NtBnh7V04.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(231, 'bpWd3Ef3RsLRkd4ActzpcO6OL9LcOhY5.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(232, 'piyZEbm9IpuwcYcI8ZSkBM3KjSzKciGE.png', '', 70, '2014-09-07 17:49:02', '2014-09-07 17:49:02', NULL, 0),
(233, 'NlRCC8dz3zhNFT6eYUuKSkiovdsaSMa3.png', '', 69, '2014-09-07 17:49:21', '2014-09-07 17:49:21', NULL, 0),
(234, 'bRf5I872sTuZoxN0WIg26t0n0Mtr39j3.png', '', 66, '2014-09-07 17:50:14', '2014-09-07 17:50:14', NULL, 0),
(235, 'Iq8vmpVVXxFKNcZfhckqzVUX0iyCpISG.png', '', 67, '2014-09-07 17:50:29', '2014-09-07 17:50:29', NULL, 0),
(236, 'z9Tt6JmiSzdwLkA2UcsSD02Hle9ZX9dG.png', '', 64, '2014-09-07 17:51:05', '2014-09-07 17:51:05', NULL, 0),
(237, 'hoGTdgH3jcWDBbbfJZelgcHdvsHsojGv.png', '', 63, '2014-09-07 17:51:23', '2014-09-07 17:51:23', NULL, 0),
(238, 'RhQ45RFWWM4O2xCTloez1MhJHg4hNyC5.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(239, 'vgHtTSD1X5honSJaxoEpxYR10GZBvOFg.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(240, '2bbJHeQc2KwIPxYcAsNl91LxJ2x8rRKw.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(241, 'qeYUVsUnoNulXUVTEj3wRnvkYVQChWMa.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(242, 'y9hcT6xjLdkjD7xFthkSh7Ur0ALdYx8e.png', '', 61, '2014-09-07 17:52:21', '2014-09-07 17:52:21', NULL, 0),
(243, 'k1bWUQ6c0LowBxInqJERkUnY4R0lnCmh.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(244, '9Hm5qZaAxxW9JpCmcNWvcMrTvAJEhUHp.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(245, 'efBCMzQsBnlfH9wt1ZwG2bey9V8Ejjr1.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(246, 'p5aBTvmw5sEqkPcceD8gv97HB12Ifeex.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(247, 'SppL0FuPJzrtndyQGZqcXEanyimdxQJw.png', '', 58, '2014-09-07 17:53:43', '2014-09-07 17:53:43', NULL, 0),
(248, 'tEYLCkZS63jpl8hsCrif0MK9StcNBZAq.png', '', 57, '2014-09-07 17:53:58', '2014-09-07 17:53:58', NULL, 0),
(249, 'xHIFTpeyhgEdbUk3258ZTJnMOi0robjb.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(250, '266SPTtRl5fYhp1aJnXEaVBy1zJQOvdn.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(251, '3tXyvdHmPA3z7aLPWSYPAFYRhlUIjFPo.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(252, 'q03ByS9ctzfVdnWSqZlovkGeDgp6Dw73.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(253, 'sJty678rpcoNlpzm4OM05vbz73Kbl4Vh.png', '', 55, '2014-09-07 17:55:17', '2014-09-07 17:55:17', NULL, 0),
(254, 'IwOrOhZxxiarRpNQ1IjbwJImBm7Qpvan.png', '', 54, '2014-09-07 17:55:42', '2014-09-07 17:55:42', NULL, 0),
(255, 'SShh6r1q4tp3h4eELBKNCFcHqwpOE6La.png', '', 53, '2014-10-31 07:42:57', '2014-09-07 17:56:14', NULL, 0),
(256, '5NK1xy16P0jpP8jroDmMpsGPjhtUOtR0.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(257, '9Doo1Re1EyNePkXnBxlod85UJZxYbFnY.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(258, 'Mis4b3iZ8zjUgF1VKpjHx88Wg9ZioIXF.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(259, 'Y2koTrJj5zYREHaTb1THeyDIKpZSjJU6.png', '', 52, '2014-09-07 17:56:35', '2014-09-07 17:56:35', NULL, 0),
(260, '0etSwa0V9UusMuaq5qUU4uOHVOGAXvXf.png', '', 51, '2014-09-07 17:56:52', '2014-09-07 17:56:52', NULL, 0),
(261, 'pgWBdRYN1Ftj4QcjfFK0TTu2dWiRBYI7.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(262, 'SF4Uz05Tq5FEp2WCZqX18OPueZl1AwYv.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(263, 'FZSTfhhHD4rh0TNOLyD4qAZSsrjKSQth.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(264, 'Y4UtjCbebIsxM0MDVRmLJf94rIrw7TaG.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(265, 'AKQ89cpMvfwrmuO26FgRnYdpQivpnviv.png', '', 49, '2014-09-07 19:11:27', '2014-09-07 19:11:27', NULL, 0),
(266, 'SPfJTUYQH8HdYj5Q7XPQ5PnWjSgf6fiR.png', '', 49, '2014-09-07 19:11:27', '2014-09-07 19:11:27', NULL, 0),
(269, '9zXq9Ojq7Ah4kGKDtz4qsRuzWQ6h4dwp.png', '', 49, '2014-09-07 19:17:16', '2014-09-07 19:17:16', NULL, 0),
(270, '0oMEm0bxraO2KwrgBf3YUXrtbA7yMgDl.png', '', 48, '2014-09-07 19:17:56', '2014-09-07 19:17:56', NULL, 0),
(271, 'MyKuQVEssvyhU49m1K5sbhmuWDvK9sB0.png', '', 48, '2014-09-07 19:17:56', '2014-09-07 19:17:56', NULL, 0),
(274, 'MjSWKQHsVuVGMUSHR35B27gvBsy1PkyM.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(275, 'wwltgIz6j49zthz2dpFujPosHRtEkYJ4.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(277, 'j2MHQWdAZptfMNs2xdAter2Lf74A48m1.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(278, 'YYSiIf7Ct3L2eZVVeM1Xyzurc1CfAUyt.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(279, 'gmvbQC8E7t7UBFORI3mljIpBYCb45FEf.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(281, 'HJU2BpMWXCB9TtBqR2Ua6drA7kZRdnGI.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(282, 'Up1VJvij59o19vcXpYmIZZIAJyUNIMl5.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(283, '4H6trwcO14OqIMUKBIeuNGN42JIt1YvC.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(284, 'QKk1NYqSQYXY8sCOXdcsjGphcG8juvaa.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(285, 'ymvs7eL8luTVq3g8FXsYEmXPNgM7C8S0.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(286, '3spfC9Jvl1rl7dhWoe32Bx4nn0yCJaJP.png', '', 41, '2014-09-07 20:21:23', '2014-09-07 20:21:23', NULL, 0),
(287, 'iiUbnSPLYU43FcDkRQNXHINHT9lac3Ev.png', '', 42, '2014-09-07 20:21:55', '2014-09-07 20:21:55', NULL, 0),
(288, '0CqZHiXK0eHqBkyOcLFmI2LkmNFuDTjo.png', '', 43, '2014-09-07 20:22:24', '2014-09-07 20:22:24', NULL, 0),
(289, 'MRVLEs2eZlX7PZ03DhlPyapowJSwDZxT.png', '', 44, '2014-09-07 20:23:14', '2014-09-07 20:23:14', NULL, 0),
(290, 'M3L27jzJedW1mltfHPMntMXZmDUlDWMB.png', '', 45, '2014-09-07 20:23:57', '2014-09-07 20:23:57', NULL, 0),
(291, 'Ipsh7V2veGxnY4zy6bNoTDCz0de9l9JM.png', '', 37, '2014-09-07 20:26:13', '2014-09-07 20:26:13', NULL, 0),
(292, 'ZYCQQKVeEQbCfiKWaf8xgjM5Jcn2RtCO.png', '', 36, '2014-09-07 20:26:51', '2014-09-07 20:26:51', NULL, 0),
(293, '367S9ChhTjbYmHMLkEHbmiFXFLJKchNt.png', '', 35, '2014-09-07 20:27:18', '2014-09-07 20:27:18', NULL, 0),
(295, '6pgP4eAI06tK1mFAvBqoOfIrGnmoDKVJ.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(296, '0ZrDnlegj2bEQWkkWXkTPYZ5Q7U1zvPV.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(297, 'LC1VHKCIpvXAH0ucnh6gIcwUdcHsqJ4J.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(298, 'dSnR8Fp20knTGeMp3Cr8GVdn16cKjBpj.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:29:47', NULL, 0),
(299, 'ImlfoogC4M2gh6Fgra4vPRngKFX9EAbD.png', '', 33, '2014-09-07 20:30:24', '2014-09-07 20:30:24', NULL, 0),
(300, 'lfHbju29jlyvV8wUTjgCF2gWF7CtrSvf.png', '', 32, '2014-09-07 20:30:51', '2014-09-07 20:30:51', NULL, 0),
(301, 'KceFTNr8QdIPs2Ba94ekwwgHOoO0WHw1.png', '', 31, '2014-09-07 20:31:19', '2014-09-07 20:31:19', NULL, 0),
(306, 'rVFwAODA72d6sTEmsaBdqYzOGsaWu0rR.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(307, 'SisGl35VxHk3luDbTL5sPx22uYSqHfjb.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(308, 'gBkLjpL5LACXERP1vqrS3DeJCQ9HHISc.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(310, 'Kfvqi4bRKettMEmaVqESDRm4vT3AmVTy.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(311, 'y5VQwf7kgpXZcTGcDN3U7HGmge3wcHUG.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(312, 'KbpJ5ObeZxBjgULIozhEvCLQNHpD2Y2q.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(313, '9eYRgdA26LOiuq4UHu9Jk4xhEuY35MO4.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(314, 'ND6lcWe5O5MJhvALegasX4yVjlmmVvEj.png', '', 12, '2014-09-07 20:35:04', '2014-09-07 20:35:04', NULL, 0),
(315, 'uMwsWEYB7Rkv0bVUyAOnKhpAzC4SnLh1.png', '', 11, '2014-09-07 20:35:34', '2014-09-07 20:35:34', NULL, 0),
(316, 'b07McshsBkIT4FS1fYWhe5zgMvXTBSJE.png', '', 10, '2014-09-07 20:36:36', '2014-09-07 20:36:36', NULL, 0),
(317, 'Uoov8aB5BoaJ79Ig4YYMxsRgDkd7Nwaz.png', '', 9, '2014-09-07 20:37:02', '2014-09-07 20:37:02', NULL, 0),
(318, 'ak6nSxMD4Yp0HepR1L9sGCHwYuK3PPnl.png', '', 8, '2014-09-07 20:37:55', '2014-09-07 20:37:55', NULL, 0),
(319, 'ooV1u8Ou8rP8cy9GSPAoCDZi0auWPST9.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(320, 'ssfUQKrXmxgqPrhY0wV8V6HGaU2hyziv.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(321, 'JV5ym2zgDxIHKEzUrnIA8KXX3AZi3qor.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(322, 'jX4o2qPfkIeI7zRUUeSWdAlfkVTtUCjf.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(323, 'qQrRMg3InhlKbxxCxH7HeQlvi0xOKNWc.png', '', 4, '2014-09-07 20:39:02', '2014-09-07 20:39:02', NULL, 0),
(324, 'Y8vPBrrqSIuDjp35fH4ulWwYnXxZU45q.png', '', 5, '2014-09-07 20:39:25', '2014-09-07 20:39:25', NULL, 0),
(325, 'ApG2LGiIXt84EREsRExnQW8HxrRlsKXy.png', '', 6, '2014-09-07 20:39:43', '2014-09-07 20:39:43', NULL, 0),
(326, 'RPt53CyPafI2UpnjEbRx8vnWt14LxzZY.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(327, '7ZNWQZY0gH8hiVp6Pv7yaVXzKRAby3wD.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(328, 'Y0exUKUkB9MR6HnHee2tgxdNgajwWF4H.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(329, 'tzbY7IbspYZ9AkTBgfSceH61xTlMs4HS.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(330, 'VjbLmttWuHoLqsqjXgQJRdrN9N4EgfFd.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(331, 's4KY8vWhb84T6YwtOXPmLm3eH4csfz2S.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(332, 'vR3XhX97ii26JHH1TysHYhrWH4KLUCi0.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(333, 'UF5JkkOv9ODDNj15BWICptTLefcv2EZg.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(342, 'osG1ocsjUKjbSyzr68ATjKK9NvN6iDPv.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 20:58:20', NULL, 0),
(343, 'NElMuO6lNP4RLubg396OJ2fB5lOtLi4c.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 20:58:25', NULL, 0),
(350, 'OOgWAJ1Df843j19YEoqabFGJ2juyVTB9.png', '', 48, '2014-09-07 21:07:05', '2014-09-07 21:07:05', NULL, 0),
(353, '6XwC81PPVpV9XBrQxGin87qJmv4IzqYr.png', '', 49, '2014-09-07 21:10:11', '2014-09-07 21:10:11', NULL, 0),
(354, 'U79AUUeHSjN2jzKfnStijRHuV7fwq9vp.png', '', 48, '2014-09-07 21:10:24', '2014-09-07 21:10:24', NULL, 0),
(358, 'ce06u7v3oioYHu86p9ZBrWnyHS7k4Pwx.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 21:14:12', NULL, 0),
(359, 'nH4RrpBffQBx1Kd3s2plhzZl9DYeyeZA.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 21:14:16', NULL, 0),
(361, '5xglI3XjVJs4w0RXIZD5Hrwnj4WHwbUt.png', '', 92, '2014-09-08 03:56:18', '2014-09-08 03:56:18', NULL, 0),
(363, 'WrvlITC1GPTFkOjCdUbxjTwgOtsf9qgs.png', '', 93, '2014-09-08 03:56:38', '2014-09-08 03:56:38', NULL, 0),
(366, 'bu1n6CMJ0vjrBVFyAkwAK59IFubd1aCA.png', '', 95, '2014-09-08 03:59:27', '2014-09-08 03:59:27', NULL, 0),
(368, 'RVcNrY0SyV0GLE4KWOtbRaECAd7PWeoD.png', '', 96, '2014-09-08 03:59:47', '2014-09-08 03:59:47', NULL, 0),
(373, 'csCtfKOl8KaTRlMppszsdozhLDMtqLHe.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:25:06', NULL, 0),
(380, 'bSQhlsLzNHrMtb3jhxhPm7Rn6H28tare.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:25:46', NULL, 0),
(384, 'tTQvk52SFboejjoGt8ItvoiS0gfFDk5q.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:26:12', NULL, 0),
(385, 'yA2m9LKCelE33ZuVyrZNqqTs6x1yUXuD.png', '', 98, '2014-09-08 04:26:58', '2014-09-08 04:26:58', NULL, 0),
(387, 'oHtWvNZpGCzPWP560jTMkqkdznahgTdw.png', '', 99, '2014-09-08 04:27:14', '2014-09-08 04:27:14', NULL, 0),
(390, '4aYIwrcmtSkYQKxeAmMSOUYZm1m41iic.png', '', 98, '2014-09-08 04:28:05', '2014-09-08 04:28:05', NULL, 0),
(392, 'adkYM9WQxXozjFDm2lTrLwGdHdA6D15x.png', '', 99, '2014-09-08 04:28:18', '2014-09-08 04:28:18', NULL, 0),
(393, 'JUbYbp9oN47UnDEABg5VWahAuEFpqbl5.png', '', 96, '2014-09-08 04:28:29', '2014-09-08 04:28:29', NULL, 0),
(394, '89AG7LfAN2Kmy81o1SBUfWQNqUPb5zlH.png', '', 95, '2014-09-08 04:28:39', '2014-09-08 04:28:39', NULL, 0),
(396, '0QjlEkO6TPpWZsdMDqjRDdy7HXaVWOyY.png', '', 93, '2014-09-08 04:29:02', '2014-09-08 04:29:02', NULL, 0),
(397, 'azmSZJ3sLUmXEJQZLFuzi8Ug6VnG9OQn.png', '', 92, '2014-09-08 04:29:15', '2014-09-08 04:29:15', NULL, 0),
(399, 'JTyvkJbYWymiKKyz5Y9gTqcRgH39xg9x.png', '', 101, '2014-09-08 04:29:45', '2014-09-08 04:29:45', NULL, 0),
(401, 'BooVWqlh1IdPKc21is1LmQfL6UNPnQjs.png', '', 102, '2014-09-08 04:30:06', '2014-09-08 04:30:06', NULL, 0),
(405, 'x0rujSMnRLWMxO97Ajmt2zD2XPkuWf9l.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:30:08', NULL, 0),
(407, 'R45tiWmc2VB4JzbAc2jjLxumowWP4j3N.png', '', 101, '2014-09-08 04:32:53', '2014-09-08 04:32:53', NULL, 0),
(408, 'EJ0oXVgUuguYi5APjwlspU2dcqESoCt2.png', '', 102, '2014-09-08 04:33:54', '2014-09-08 04:33:54', NULL, 0),
(409, 'qJRK1Xm0w7IyG44a5dimMVwI7CvXOV0i.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:35:03', NULL, 0),
(410, 'CTMaPAdeX8UzRgLnFKiQqfeIbJexk4UX.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:35:16', NULL, 0),
(411, 'UScKiwXHen3txwmFxepxTqCKKYAVjjap.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:35:28', NULL, 0),
(412, 'oAWxGlHToKWINiSB8IzMQcG0kfLmSWND.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:35:40', NULL, 0),
(414, 'dyZiSuIsnB3vc7WW9egJlrUJ34HHcjVe.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:42:03', NULL, 0),
(415, 'MY6juZjv0DEh4EGGxgkHha3SJhibTD86.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:42:52', NULL, 0),
(416, '5r2cJtG9Z5QsnjNJVeTzhuOvjQ2Oqkud.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:43:03', NULL, 0),
(417, 'iDEv7trzM2KFkIDYu0Hgoqalx0nidDCy.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:43:16', NULL, 0),
(418, 'rDdpSAjgeg7DaojUEQj1o1ltCwlDLaBr.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:45:27', NULL, 0),
(419, 'xuCMjPiRzBmxRy45tZpuhStMMVyh5lpL.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:45:39', NULL, 0),
(420, 'tiLO2fVuRfKtCI1auL1VPgwpmyNgDvWo.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:45:51', NULL, 0),
(421, 'UA0AQTiq8cnzvJXFx8m1ulFmqvRziJPa.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:46:06', NULL, 0),
(422, 'QCR5r1tfyUtqC0fpDmHvMMyJM2K6ruFm.png', '', 30, '2014-09-08 05:05:40', '2014-09-08 05:05:40', NULL, 0),
(423, '1WUjP25f0k85lUkQnCMLC7quJHFMQeV3.png', '', 46, '2014-09-08 05:05:55', '2014-09-08 05:05:55', NULL, 0),
(424, 'ZtVWGmkbJ2TH6uYwoMRrn3jOvMByY1SR.png', '', 47, '2014-09-08 05:06:07', '2014-09-08 05:06:07', NULL, 0),
(426, 'Lz6Q3MPmSo037ZFzowpbf5PlzelJ3P4A.png', '', 105, '2014-09-08 06:26:10', '2014-09-08 06:26:10', NULL, 0),
(428, 'JY3VtxtZJRR31xczhRaASyLouIMUyce6.png', '', 106, '2014-09-08 06:26:30', '2014-09-08 06:26:30', NULL, 0),
(431, 'rjnzVI7shT1o2ir31sTpeUc51xg7mAsP.png', '', 108, '2014-09-08 06:27:50', '2014-09-08 06:27:50', NULL, 0),
(433, 'hZcCylpdDcP7p6uRCh16fXyWEFDTKbr2.png', '', 109, '2014-09-08 06:28:06', '2014-09-08 06:28:06', NULL, 0),
(436, 'rme0L0sbyeesAVs8Zidnc9wxI0ZKVPO3.png', '', 111, '2014-09-08 06:29:17', '2014-09-08 06:29:17', NULL, 0),
(438, '2NKzovRwi2pOEzBtaiZY0yfhDdwxHgAT.png', '', 112, '2014-09-08 06:29:34', '2014-09-08 06:29:34', NULL, 0),
(441, 'ABkNZonfjuaKlfXtd2sjtYgKIOL6iQw0.png', '', 114, '2014-09-08 06:30:40', '2014-09-08 06:30:40', NULL, 0),
(443, 'y7NxOg0NMrE2dC7udo49ucSMGyqiJ9m4.png', '', 115, '2014-09-08 06:30:56', '2014-09-08 06:30:56', NULL, 0),
(445, '6cJZSHoqtaf16rwXOchoGuO8wq3SdxLR.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(446, 'qRMQMcfMLk2LEHiWG7AeVUDvlqgKSrB0.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(447, '8D10pvlIEidxxtpXCJi6hCEOm2X0tKm1.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(448, 'RLoh4LlaEFSvHrXGNhuvwiQUJd6q33dj.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(449, '1OTHscxSbzqECsjM9HwjejP88Hd8w9I5.png', '', 105, '2014-09-08 06:40:10', '2014-09-08 06:40:10', NULL, 0),
(450, 'gn1Iakvx1gMWW3vCJWRwmlCGO6pO85cU.png', '', 106, '2014-09-08 06:40:42', '2014-09-08 06:40:42', NULL, 0),
(451, 'MmDbQ3q1ua8WEvsLicn2v9TaFhzL0IzJ.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(452, 'yPAWrEfa1lc5zMUCzsS4kKxLeTKGzA2r.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(453, 'oBPHVgCWwj1xTFy3sDriBFNAifrhLNah.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(454, 'NoQDCkCjtBSnH7Hi0igKC2VthPrUdKTm.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(455, 'gbR2tSgRkKFLZZrGeoHxhOYiTrOVN927.png', '', 108, '2014-09-08 06:42:22', '2014-09-08 06:42:22', NULL, 0),
(456, 'CI75zZd1mDGVG1TmtBX97yfLLB8B1uiR.png', '', 109, '2014-09-08 06:42:45', '2014-09-08 06:42:45', NULL, 0),
(457, 'Cnubq8hfUGbzRRU5BJZ263ezj9suNihT.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(458, 'Y46dQy377onfiBMzCI89DlwR4GJjDFMx.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(459, 'BFah2ai2JjSWG1d6WpeQ5w1ek6mFgjGG.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(460, '6OAhyPQELEnBSGuiFg7KJOxeioYphPse.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(461, 'H2qSzFHeIpITC0y18wPxtKI2AkHjrN9m.png', '', 111, '2014-09-08 06:47:18', '2014-09-08 06:47:18', NULL, 0),
(462, 'msxSZOHpowzU2bgMEUM9S2l0Dovy0GJo.png', '', 112, '2014-09-08 06:47:28', '2014-09-08 06:47:28', NULL, 0),
(463, 'BgGsPiJGa0lzUPIuvmLfebmRwBMDBb3q.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(464, 'M4alhhsZLX011ZUC16OmGU2OWE3LbnZ0.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(465, 'N9qZsjMwWuJnUScW3UFm6C1z0QPiOXBc.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(466, '5KfWq0LyvcXL4h6oVlFAg5L8RUUCLzel.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(467, 'RqX6fe0E3VZ3AF96hVisnGKic0k2Eq5t.png', '', 114, '2014-09-08 06:48:11', '2014-09-08 06:48:11', NULL, 0),
(468, 'G6Ns3ExAIFsS7PRysyPZeScdBEhZhtFy.png', '', 115, '2014-09-08 06:48:34', '2014-09-08 06:48:34', NULL, 0),
(469, 'wubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 2),
(470, 'LkbmkP81jCbyJCMeVYW2haM9cTix0Q9x.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 3),
(472, 'tR8kBPBTK6krJCsDf8xzpsJRIHDNrmhR.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 4),
(473, 'dDjvJWMrezjAk56SyBBpkwrxVOrMqnTt.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 5),
(474, 'b6KQtHEmqzP661FcDe195ahmo5OH9e49.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 6),
(511, 'VAfD2x8AhQqN1CDGGQg8QvcpMSGMQC8t.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(512, 'Wni0AcYkgJijAnoUTA0RgNQzJbsSiFtp.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(513, 'uyQJ6tBRY8mHqa7AtdAlBiNnr59XGxZa.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(515, 'Saq25bbD0VB4nZZqsozsAckCSVGbHwu1.png', '', 116, '2014-09-08 17:41:31', '2014-09-08 17:41:31', NULL, 0),
(516, 'jzhX5TmGe2NlakYdd6C88Qjc4e9OVChp.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(517, '1HtRB4aK24mqMIdBlI75BaLW0hMAb0H9.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(518, 'k5hNtnCtDyMWQrkKJXqCjAbGWqS5RTyT.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(519, '2RlFf1TIqHxBqOcvDpR64HeKK2pDGIDw.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(520, 'ZsrpbMjx4rScOzBpauTn4Oa4V2zRFgi8.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(521, 'b4QI6LOlFPTmSVdcZWlj5wf4pM3nRTPX.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(522, 'cjmfZWo4l2cgQRVXBTdGzRD4JCR6Er7E.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(523, 'lQgVkc9jmZQme7akaeBHLbWpvkc2Tur4.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(528, '58M4X9A9E0Wx50iuaa7yDSbrNgpa4ve7.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(529, 'JcmECJ4k4OU9xFr7dwMTFkyf2DrWDIrQ.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(530, 'F51iIAgEHQWsVXRKWNvtqLl8TC5R1Z9t.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(531, 'hpgdLJc5r3iuGrPxL4RQO1yOcqfjjr6v.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(552, 'Me96v2o6f7Fresdazm5H0xRzRtptZ4rH.png', '', 122, '2014-09-09 04:40:50', '2014-09-09 04:40:50', NULL, 0),
(553, 'Ahe40SPcj6OuaAvjso4n6YDiVEtc9VAU.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(554, 'pEet9lgv7D82cKkF9Rmasi2eJmHtsTi7.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(555, 'MCNtmVeWuWCVRB78yIBnrJB1FIs3Qr0M.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(556, 'plcO4PDf58oq3hjzvuNlP9s0PtUwF227.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(557, '2TWF24JbNvJLYz5ljTPGIcv6PLWD4PO5.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(558, '47jvDLPu5vz1ze30x5z4BOPRqvIFW0dv.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(559, 'Y3LwgDQPtBirlc6UnBTEXrSmnCu4tAtW.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(560, 'TJWnUbuZYfSSyx9t9W7zbCrbN7iBOFt2.png', '', 124, '2014-09-09 06:59:27', '2014-09-09 06:59:27', NULL, 0),
(561, '525hAU4xg5gKba1P0fFbkP5jElZdVFQD.png', '', 124, '2014-09-09 06:59:27', '2014-09-09 06:59:27', NULL, 0),
(562, 'P9vNnU6ZowBgKyhr69xqv3fmhOwooBhv.png', '', 125, '2014-09-09 07:01:22', '2014-09-09 07:01:22', NULL, 0),
(563, '8GXOBmjfpK0pfFVSFkQmf5RGT0aJXaRa.png', '', 125, '2014-09-09 07:01:22', '2014-09-09 07:01:22', NULL, 0),
(568, 'zkLgZ1LGhux1pLCMEBAGMxxL0c03jp67.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(569, 'klDV0qTNlwSdsV2Artco396Jm4VzSnNW.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(570, 'yJSsLkmUZG03siKZonT1Ip8Y8MLKCecU.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(571, '2h6XzXv32dLtyFZbsE0Dj5dotT6V3LUK.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(572, 'x3LO7wupfwdCTGGe6Ru1k6KQSQNWcwbe.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(573, 'AC86nVY4f0gYLG2JaKjT0BzxmNhECHhN.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(574, 'uQCIdKR6sFNzXNznxoBPsvRgyHaRCQEX.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(575, 'TgaTo5aulzYvKWfLb7a4NkUetHJkrF3E.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(576, 'zuCWvHLHcx8Iz22fPohZmsUiy73GhJhy.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(577, '4J0F5fR6AXaKzl779wYOLXoWneqYvtF2.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(578, 'Xt5BckPu3pJuO7bb8mCwi2DlVpaRKLlN.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(579, 'O5CfgWSVAXZL62m5x5omZl1wUsB46EZs.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(580, 'aab5QdxPMiu17NoZ9d1utKdIyuiMrpI0.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(581, 'xCXplU9UWEVzjuKVHksSZ77sslBzd4zI.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(582, '23FiaVwAA4ic68qtBnnYJvTG3nsfGQoJ.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(583, 'BgD2CO8XNFzLYOJPyJRxVdxafp0a8t7H.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(584, 'Z7mTBYXEap4VcfG70mOf2X1RyfT33o9T.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(585, 'Bb61Xis1DWtOOaktEHxueYSjuEdsbqMn.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(586, 'fPhwpiegE4cU8QauwkiS0KHYmlKyoTaK.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(587, 'c0mHn0APjdNTWXwInKeV3AysF578xWpq.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(588, 'N0a9qUrfhxVilQSqv5dUXBjnvh0nUWfo.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(589, 'qZfDwAd3ZQvt0cTDZ8fylvkntEfbRLXR.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(590, 'URUMB6Dt6vQXQEHQiRDNvhLtoL0gUsnf.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(591, 'Guwt8C4XWp50JUgQ0q3wldLc8xYqSs7v.png', '', 131, '2014-09-09 16:26:49', '2014-09-09 16:26:49', NULL, 0),
(595, 'AlDRJ6KvkXTLeFYHJNRFL5tSAfthe4EB.png', '', 131, '2014-09-09 18:43:06', '2014-09-09 18:43:06', NULL, 0),
(596, 'cailMSX6Ca9yG0vDTGdOvwwt7kJGaawt.png', '', 131, '2014-09-09 18:43:06', '2014-09-09 18:43:06', NULL, 0),
(597, 'FN52qSv1A1jxddx9cm6byUWlcltsk1Am.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(598, '17ffbNjCL9D3W9INCEBPySvToK6fOnGf.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(599, 'TDlmQD6cffgGEsiFo5OsUs3QyboNVWLp.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(600, 'j3iy5P8jcsM2rjFBOy4eb2vKbYTFpVf5.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(601, '4vMccUkHDSggBFA2ZQH4fVkCp8KLj3ZC.png', '', 132, '2014-09-09 18:58:52', '2014-09-09 18:58:52', NULL, 0),
(602, 'r1sifluXntlWux6z74K3KS5ZrRhIQsh2.png', '', 132, '2014-09-09 18:58:52', '2014-09-09 18:58:52', NULL, 0),
(603, 'RnMDDpLEnewzAZSSL1pgDAd9U3gGlCDC.png', '', 132, '2014-09-09 19:01:50', '2014-09-09 19:01:50', NULL, 0),
(604, 'TfNBljiQscKGvaIRqo2wjaFx8JBEEOsL.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(605, 'NbpTpWgfm61ZmEwAZ91B3opxN9CnRck1.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(606, 'AMPCxwJaqIeuxCAqTtuow4GIwVE86i5o.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(607, 'S64SPrIA9SCnOpBaEWG6YbsjoZGyXBGN.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(608, 'zlp2LF8JkbcpqMqnFsDuYnl235r3MS2c.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(609, 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(610, '5prKwwQAUwNXIYTMhm8bMa6A9dBAHAQh.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(611, 'VKlhRqLWk0FDBM5LRZsuxNTPgS68ekpC.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(612, 'zlp2LF8JkbcpqMqnFsDuYnl235r3MS2c.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(613, 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(614, '5prKwwQAUwNXIYTMhm8bMa6A9dBAHAQh.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(615, 'VKlhRqLWk0FDBM5LRZsuxNTPgS68ekpC.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(616, 'bayud0BYA48gYhSx50rd8HoEOe4SBHNk.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(617, 'pEUkwIB9cXS4e1uuP27oWtJfi9MVDaaO.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(618, 'CvvOQNBaEoOwqQ9NJD4k35XGuh4pCpNZ.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(619, 'AsCXXHG3mpt6FUGTCtrwX3aQq90Rescq.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(624, 'ZwCHH4h8GaIoofd7UpRjIwR47MKkOB9E.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(625, 'PTz0c6d6sjDFoP9bAA95mftX3AitSDFA.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(626, 'ktj8WdSTXJqWZ6zP9zYL9WWzqoxdaPeK.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(627, 'lpJmJYPMB0AtueVVW61TKLHLjSVWVUUl.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(628, 'M1nMFUtvr1Or2p3HdGOrT4v4GAcbBp2a.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(629, 'h2eYnMIhE6STsAH6GyQNpTqRp9GtmBYj.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(630, '5k1z61MTMFnqvf4wiCViikutV2C6INh5.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(631, 'f2q7UBKjaw8NnOOBs4nFpUlOG56v8AWE.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(632, 'pBpmgCj4W76KRtvANt4uMOh7mCvpAwPj.jpg', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(633, 'MHmKxbwptxFFPuj5YVnwGgeM5bEki5qx.png', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(634, 'SjqWlNIkgZXyZPWFB658FMHP5RdoRGmj.jpg', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(641, 'xdpvZWBbNIlmFlXC3KI5748Mzs7outkw.png', '', 143, '2014-09-10 09:30:33', '2014-09-10 09:30:33', NULL, 0),
(643, 'BOr0xULVQsRpI7N4pJYxgJ2oQ13zQSV1.png', '', 142, '2014-09-10 09:31:05', '2014-09-10 09:31:05', NULL, 0),
(649, 't1f2SV9mgxeiOdIQPO6244ghBKndZuKz.png', '', 1, '2014-09-10 10:35:57', '2014-09-10 09:48:17', NULL, 1),
(650, 'B3xwmdQqwuaW4eH6la5ipdpeTVJMmEJL.png', '', 140, '2014-11-08 05:23:32', '2014-09-10 09:51:05', NULL, 1),
(651, 'kEQUL0npYXEfc0XA1V2xhRVup5IVqTqa.png', '', 140, '2014-11-08 05:23:32', '2014-09-10 09:51:05', NULL, 2),
(653, 'xqxVBIalDFUSg8UkGXrn739Mf6ZliwR4.png', '', 141, '2014-09-11 10:56:48', '2014-09-10 09:52:14', NULL, 0),
(654, 'mExNQFWv9ZjsoDkWmphtZXIAzG6ksTI3.png', '', 142, '2014-09-10 09:52:37', '2014-09-10 09:52:37', NULL, 0),
(655, '3aZiV3LSCccEQnXNvKw65EH8esvfUhTG.png', '', 143, '2014-09-10 09:53:09', '2014-09-10 09:53:09', NULL, 0),
(660, 'iBqsUm0O5VZHpTa84rjZjz6T7esqmLRW.png', '', 165, '2014-09-11 03:39:14', '2014-09-11 03:07:13', NULL, 0),
(661, '1vZcpke61HdjxuJIfSNKTicCK4swcpXZ.png', '', 166, '2014-09-11 03:31:59', '2014-09-11 03:07:34', NULL, 0),
(663, 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', '', 141, '2014-09-11 10:56:48', '2014-09-11 10:56:48', NULL, 0),
(665, '6RVsHKgjYrjDsvl1AJCJgHJaRmDJe3i4.png', '', 145, '2014-11-12 07:37:01', '2014-09-11 10:58:13', NULL, 1),
(666, 'hI58I6agtFaQ8kK62eLp2IMZgYTKaget.png', '', 145, '2014-11-12 07:37:01', '2014-09-11 10:58:13', NULL, 2),
(668, 'VLClOTT88Wd4tJxjOLLWsT2dWkKwcLHZ.png', '', 146, '2014-09-11 10:59:42', '2014-09-11 10:59:42', NULL, 0),
(669, 'aGLyWwJLpma4PxQUJVTbz1axzUdez4UY.png', '', 146, '2014-09-11 10:59:42', '2014-09-11 10:59:42', NULL, 0),
(670, 'rzJeFvvSeLON5sLZYY05adQKquavLWQY.png', '', 148, '2014-09-11 11:01:28', '2014-09-11 11:01:28', NULL, 0),
(671, 'NJDdVN09G9T1w4RSw0CMrOZMbpzzHheJ.png', '', 148, '2014-09-11 11:01:28', '2014-09-11 11:01:28', NULL, 0),
(672, 'wEeDjDlA0yKbwLGjicBBrVwuANX6n8FO.png', '', 147, '2014-09-11 11:03:51', '2014-09-11 11:01:57', NULL, 0),
(673, 'JHtFZphxLim62SxZhAq738dtxrn2l7Rr.png', '', 147, '2014-09-11 11:03:51', '2014-09-11 11:01:57', NULL, 0),
(674, 'LHAfuODV1pmUHLL4eZPENz9qRkgpAl0i.png', '', 149, '2014-11-12 07:36:43', '2014-09-11 11:02:35', NULL, 1),
(675, 'QNkjrfyuALeAKE0XfEbEo29VIvKjlEDL.png', '', 149, '2014-11-12 07:36:43', '2014-09-11 11:02:35', NULL, 2),
(677, 'z44VBnIyqSHWXYk073gH6zDvMxtHsrdy.png', '', 150, '2014-09-11 11:02:58', '2014-09-11 11:02:58', NULL, 0),
(678, 'sODsbUsMoVkgDVBc2Pugtjc9uy7MxsPS.png', '', 150, '2014-09-11 11:02:58', '2014-09-11 11:02:58', NULL, 0),
(683, 'A9I91RCUg3IFIyxogzKQtbVr6l7Cp97J.jpg', '', 167, '2014-09-18 06:20:43', '2014-09-16 06:35:26', NULL, 0),
(684, 'HAJ7Q8NO75LceYcIsCZmHYaFSGZpKAYi.jpeg', '', 168, '2014-09-18 06:20:49', '2014-09-16 06:57:17', NULL, 0),
(685, 'ywAIEOYLR4DEkMk0f71kb1ky3AL5bbgq.jpg', '', 169, '2014-09-18 06:20:53', '2014-09-16 07:22:15', NULL, 0),
(686, 'OnimueHcNa1PnZA43Joht7SiV1l7ulrM.jpg', '', 169, '2014-09-18 06:20:53', '2014-09-16 07:22:15', NULL, 0),
(687, 'fQaEzp4h8090tJsGBqe8Y4pXzoKc2mzP.png', '', 140, '2014-11-08 05:23:32', '2014-09-18 06:42:44', NULL, 0),
(688, 'gHWcMhRtPnr5Pd8NfNJmgz8RT0tP1OAT.png', '', 140, '2014-11-08 05:23:32', '2014-09-18 06:42:44', NULL, 0),
(689, 'PinFs6ZvfGdTsfkZnll4LerJB3S0UyXV.png', '', 145, '2014-11-12 07:37:01', '2014-09-18 06:43:23', NULL, 3),
(690, 'BRin1BmQrXG9lnfUFo4zs46ZAbVgVRql.png', '', 145, '2014-11-12 07:37:01', '2014-09-18 06:43:23', NULL, 0),
(691, 'WqbfeBugU5JXM49wEiDqEjon9rVw9MMy.png', '', 149, '2014-11-12 07:36:43', '2014-09-18 06:44:06', NULL, 0),
(692, '1HfXW5PEN1dsW6M5AjaOJ4wkuMf8H47Q.png', '', 149, '2014-11-12 07:36:43', '2014-09-18 06:44:06', NULL, 0),
(693, 'nP79A0MGZbwbDQzXXtPldVmgE9QvSgHj.png', '', 151, '2014-09-18 06:44:52', '2014-09-18 06:44:52', NULL, 0),
(694, 'TQOVzBzN1mjwtpfxJXuSSBx7D4CKbGhI.png', '', 151, '2014-09-18 06:44:52', '2014-09-18 06:44:52', NULL, 0),
(695, 'NRcoZNn4RVvlTqaD7gEZwMBT6Rif6AQz.png', '', 152, '2014-09-18 09:22:38', '2014-09-18 06:45:11', NULL, 0),
(696, 'uqHEMs0LfWwUDZSKKvVaRxhiWdGAfmMB.png', '', 152, '2014-09-18 09:22:38', '2014-09-18 06:45:11', NULL, 0),
(697, 'ZbwzTEa6BtZ8BLipjfveJFK6dNUjYmXw.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 1),
(698, 'GRayv5NeWDs8jy2E199PGzyk0LDj3qmC.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 2),
(699, 'KZgGU6r5jw4zvVAyqS2CthFbt0UX0EX4.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 0),
(700, 'C4P8IIMhwMtVffFTvRshl2YBhYG433aM.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:52:23', NULL, 3),
(701, 'WQWJmxBdPho467ffEbqJBG2ICsJN1wcN.png', '', 156, '2014-09-18 09:21:00', '2014-09-18 06:53:06', NULL, 0),
(702, 'oPHfMa4SP1weov8xIxKhmBz3X5eH4gEc.png', '', 156, '2014-09-18 09:21:00', '2014-09-18 06:53:06', NULL, 0),
(703, 'xwznMULDxdW9jQK2dPatny6EfmOMoti4.png', '', 155, '2014-09-18 09:20:51', '2014-09-18 06:53:24', NULL, 0),
(704, '2CQ5aIcTBtkDJOCDkfiHWS75NHjrNSr1.png', '', 155, '2014-09-18 09:20:51', '2014-09-18 06:53:24', NULL, 0),
(705, '3AVF2Tj2gnfLZMEhNGW8rUpKw0OCf9As.png', '', 154, '2014-09-18 09:20:43', '2014-09-18 06:53:49', NULL, 0),
(706, 'QDIAMI0T4ujbo2hYw6K9MyKk2WuEqDMI.png', '', 154, '2014-09-18 09:20:43', '2014-09-18 06:53:49', NULL, 0),
(707, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:08:33', NULL, 3),
(708, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(709, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(710, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(711, '4KtnukBM5GYsIOWhRkHkCh2O9TsE6V0N.png', '', 158, '2014-09-18 10:09:08', '2014-09-18 10:09:08', NULL, 0),
(712, 'wVM8ACB05qrSscO7qbGyxk5m6VE47MTb.png', '', 158, '2014-09-18 10:09:08', '2014-09-18 10:09:08', NULL, 0),
(713, 'KaGThPYbbBFSJumckFTsCR2iptxSlSOX.png', '', 159, '2014-09-18 10:09:26', '2014-09-18 10:09:26', NULL, 0),
(714, 'yElJcljYsZu1iaUPvey7uabGVbUnRhMu.png', '', 159, '2014-09-18 10:09:26', '2014-09-18 10:09:26', NULL, 0),
(715, 'hfIKgDWeIEfKhh25WyndSXhdxLGfyLIg.png', '', 160, '2014-09-18 10:09:43', '2014-09-18 10:09:43', NULL, 0),
(716, 'j3YAo2pBlsAV7WMrXdKqwT7HaDoNnV7h.png', '', 160, '2014-09-18 10:09:43', '2014-09-18 10:09:43', NULL, 0),
(717, 'vEvqhz3Hyo4w6XRZfLpSqR5GSbnBs7Cf.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(718, 'xCyKatyxAxuaRLtFieENp4TnczoefRht.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(719, 'yOgP31E8lCcX6mXzJj59q7POrhWBnP66.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(720, 'bVW9dGD74YCIDFeV8NSywcRog6sZsdmq.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(721, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:10:20', NULL, 3),
(722, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(723, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(724, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(725, 'SYeQB6Vvq0G2TFoRYt44mzopE7XEiPdx.png', '', 162, '2014-09-18 10:10:42', '2014-09-18 10:10:42', NULL, 0),
(726, 'UduGDf9icZezhV4tof7h3P5mdR4Gnlvp.png', '', 162, '2014-09-18 10:10:42', '2014-09-18 10:10:42', NULL, 0),
(731, 'LpzWUK6QUK2Sy8Sj6PcrJ9syRsr836It.png', '', 164, '2014-09-19 02:32:26', '2014-09-18 10:11:42', NULL, 0),
(732, 'Dp0KEegn9YSE3n2zPIm9OEMKAHF9yhSt.png', '', 164, '2014-09-19 02:32:26', '2014-09-18 10:11:42', NULL, 0),
(733, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:11:47', NULL, 3),
(734, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(735, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(736, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(737, 'w1bz1m8JP8Wuf0CYIancUIbholEunsaM.png', '', 163, '2014-09-18 10:15:52', '2014-09-18 10:15:52', NULL, 0),
(738, 'LznrIK7OkxRnAB3sx4fHIeih3T7psYZb.png', '', 163, '2014-09-18 10:15:52', '2014-09-18 10:15:52', NULL, 0),
(744, 'J59cP4slSniwqrmWWW65MpGCejz8un7x.png', '', 174, '2014-10-02 06:47:42', '2014-09-27 04:48:11', NULL, 0),
(746, 'M1FPNk2bm0iGsuFqkTQ99eBMtO29RF9b.png', '', 170, '2014-10-02 06:46:42', '2014-09-27 05:31:25', NULL, 0),
(747, 'Hg6OR0LAWCXBxRFL6RBo4tHYWLxn3GaZ.png', '', 171, '2014-10-02 06:47:20', '2014-09-27 05:33:30', NULL, 0),
(748, 'XNZZHmo0U5EJYq5TOzzy6XRtBXS5U1Br.png', '', 172, '2014-11-04 02:15:42', '2014-09-27 05:40:20', NULL, 0),
(749, '8DjVyo9xvzUxO17DyI4A5WNcYwKrVFis.png', '', 175, '2014-09-27 05:41:52', '2014-09-27 05:41:39', NULL, 0),
(750, 'YGcp4JP3RcSfr4PkWa8qkFEvfXQ9H1xi.jpeg', '', 176, '2014-10-10 10:19:40', '2014-10-10 10:19:40', NULL, 0),
(751, '2WHWN30lkTLOTiDzPd7d5nq2B0g1jZwA.jpeg', '', 177, '2014-10-10 10:21:21', '2014-10-10 10:20:08', NULL, 0),
(752, '1DgsWY20DhRS9VtEqpPsTEKiN6OVIQTq.jpeg', '', 178, '2014-10-10 10:21:09', '2014-10-10 10:20:26', NULL, 0),
(753, 'RAzv730qcxp22bNNT79H6wabUog6mc5x.png', '', 179, '2014-10-31 06:11:58', '2014-10-24 10:48:14', NULL, 0),
(754, '2yMYsuf7Z3AV8EneRsVuSMi5dO47l8Ax.png', '', 180, '2014-10-24 10:54:03', '2014-10-24 10:54:03', NULL, 0),
(755, 'b51QHUAYtChn5l0SlkOuHXQHYHR7zdfL.png', '', 180, '2014-10-24 10:54:03', '2014-10-24 10:54:03', NULL, 0),
(756, 'Lz2V0JKXQZZRatkorI2MvNYlbyvlqFZp.png', '', 181, '2014-10-24 10:54:52', '2014-10-24 10:54:52', NULL, 0),
(757, 'QNV40jtQqgTaCLFRcubTJGoNQuJHmN5u.png', '', 181, '2014-10-24 10:54:52', '2014-10-24 10:54:52', NULL, 0),
(758, '9u8I4YlJZQtKmgdoMz7oXe7TL76Mc6PN.png', '', 182, '2014-10-24 10:56:13', '2014-10-24 10:56:13', NULL, 0),
(759, 'b6aACN6Nfw1QbWp1v1B4LWHyoZDcKsIs.png', '', 182, '2014-10-24 10:56:13', '2014-10-24 10:56:13', NULL, 0),
(760, 'LkAKeCjx5ChkqCZgAINwe2vyMoYiNOXW.png', '', 183, '2014-10-31 06:10:30', '2014-10-24 10:59:06', NULL, 0),
(761, 'LKDocNFG9VURj6GAdebBUkwG22bM5UZ9.png', '', 184, '2014-10-24 10:59:58', '2014-10-24 10:59:58', NULL, 0),
(762, 'L4Bk4Oz7AZ8ZoWVcQ8a88xSsoGUHdTGz.png', '', 184, '2014-10-24 10:59:58', '2014-10-24 10:59:58', NULL, 0),
(763, 'cvh1naHLNnf9CX0YqcjaoidXgvSwgoao.png', '', 185, '2014-10-24 11:00:47', '2014-10-24 11:00:47', NULL, 0),
(764, '08HdkkW0FQWHKhT0URddoaoWY2ajv6TI.png', '', 185, '2014-10-24 11:00:47', '2014-10-24 11:00:47', NULL, 0),
(765, 'h7MVJkwZ76KJVzMeg2xSvb6l0czEqThW.png', '', 186, '2014-10-24 11:01:12', '2014-10-24 11:01:12', NULL, 0),
(766, 'FZldAsSeKQOTz8HJD7ox7yka3CYHoZvE.png', '', 186, '2014-10-24 11:01:12', '2014-10-24 11:01:12', NULL, 0),
(767, 'ZgDOkVnhYt7mxz8bcRCzgluFRwynzNeU.png', '', 187, '2014-10-31 06:08:22', '2014-10-24 11:02:30', NULL, 0),
(768, 'IAo9Qd6jIQQXSK5OCqUkVQHidcwwWJcv.png', '', 188, '2014-10-24 11:03:47', '2014-10-24 11:03:47', NULL, 0),
(769, 'MsqoOzsPM0cZIXRRhIUroJxThmkbkkpF.png', '', 188, '2014-10-24 11:03:47', '2014-10-24 11:03:47', NULL, 0);
INSERT INTO `laimages` (`id`, `lapic`, `latitle`, `laproduct_id`, `updated_at`, `created_at`, `laevent`, `laorder`) VALUES
(770, 'vX3VPjgISn6wgTENGwebnwNiG99l33pe.png', '', 189, '2014-10-24 11:04:12', '2014-10-24 11:04:12', NULL, 0),
(771, 'ZeSAL0rFit9H1UJzxn4256mhGQGJ4gN4.png', '', 189, '2014-10-24 11:04:12', '2014-10-24 11:04:12', NULL, 0),
(772, 'Z1v1AdyIp2vOGuClZxCl01hSecT5Z68L.png', '', 190, '2014-10-24 11:04:31', '2014-10-24 11:04:31', NULL, 0),
(773, 'XRurtC44EY5lYS24a9IK7l2G9kZJZmYW.png', '', 190, '2014-10-24 11:04:31', '2014-10-24 11:04:31', NULL, 0),
(774, 'ZXHbpPvkAAt71XbGXM7jKinEidTAjecG.png', '', 191, '2014-10-31 06:00:04', '2014-10-24 11:16:15', NULL, 0),
(775, 'xUcN4yxzY7ySXo2xrJcz9d0aBiYQCdHi.png', '', 192, '2014-10-31 06:07:48', '2014-10-24 11:18:34', NULL, 0),
(776, 'hk5PevKjcUxvbWs1XdjpnAIlAXVAA7Eb.png', '', 192, '2014-10-31 06:07:48', '2014-10-24 11:18:34', NULL, 0),
(777, 'YEl4Vqz0DzqiLpEkwzoSCLBBM5YsHp0f.png', '', 193, '2014-10-24 11:19:05', '2014-10-24 11:19:05', NULL, 0),
(778, 'C5KYvCgTRZZVEidjXOnTOpxdqT5gR3Ez.png', '', 193, '2014-10-24 11:19:05', '2014-10-24 11:19:05', NULL, 0),
(779, 'qPniCo6o8CwJDpUPRcy8UeOtxfFSfJ9I.png', '', 194, '2014-10-24 11:19:26', '2014-10-24 11:19:26', NULL, 0),
(780, 'SLuvxr1tJ3egxBYrxIJjKreU07vbzrhl.png', '', 194, '2014-10-24 11:19:26', '2014-10-24 11:19:26', NULL, 0),
(781, 'mO1jfJmn2gvHtB80Rty7uCFuPodoDZLZ.png', '', 195, '2014-10-31 06:07:24', '2014-10-24 11:21:41', NULL, 0),
(782, 'Shu0bYDfyQw6AfLK53MbNrwZd4B6zujg.png', '', 196, '2014-10-24 11:23:25', '2014-10-24 11:23:25', NULL, 0),
(783, '5rAJLv01U2uynmCe2A8mmHzaJO4jniZX.png', '', 196, '2014-10-24 11:23:25', '2014-10-24 11:23:25', NULL, 0),
(784, 'hUO7jyUim9QtSbzpd1fR2nSwSOsLwVrB.png', '', 197, '2014-10-24 11:23:51', '2014-10-24 11:23:51', NULL, 0),
(785, '1gNBsBAsMvUpXr2M1Xs4XaSCZyf7oIQD.png', '', 197, '2014-10-24 11:23:51', '2014-10-24 11:23:51', NULL, 0),
(786, 'MoS75tDulQr1IEhcjANXiMBDFSXGBp3M.png', '', 198, '2014-10-24 11:24:16', '2014-10-24 11:24:16', NULL, 0),
(787, 'nx11z1Yh5fGal99QxXaP5fSIQSnX1Mm0.png', '', 198, '2014-10-24 11:24:16', '2014-10-24 11:24:16', NULL, 0),
(788, 'lGhAt6yuAWCWysGrwpjafVwMBzVro96n.png', '', 199, '2014-10-31 06:07:05', '2014-10-24 11:25:51', NULL, 0),
(789, 't60CtMnOyO4MXz71H68LYdzbZs487yRU.png', '', 200, '2014-10-24 11:30:26', '2014-10-24 11:30:26', NULL, 0),
(790, 'AAcQobHc8LHmIOX7QmFqaUevqLkcv2Bo.png', '', 200, '2014-10-24 11:30:26', '2014-10-24 11:30:26', NULL, 0),
(791, 'qBDty1BMQkNfbS1yENFDt7YHnDVoXI37.png', '', 201, '2014-10-24 11:30:57', '2014-10-24 11:30:57', NULL, 0),
(792, 'nlrQXC1dgTkrnkJhZAvO5QvXKRF3tBfg.png', '', 201, '2014-10-24 11:30:57', '2014-10-24 11:30:57', NULL, 0),
(793, 'frwQItSwkZcJsHJh4q88STHOQuUVKfzO.png', '', 202, '2014-10-24 11:31:31', '2014-10-24 11:31:31', NULL, 0),
(794, 'tzhN16ZAyo09SeysGZf7ARpIiCwEvTGv.png', '', 202, '2014-10-24 11:31:31', '2014-10-24 11:31:31', NULL, 0),
(795, 'LYKnoVHlXGna7CH3IwjTIQNlSCOofRjA.png', '', 203, '2014-10-31 06:06:30', '2014-10-24 11:39:03', NULL, 0),
(796, 'ZoMBfDyq1uw5lJChLKi1bnPhptv5ICer.png', '', 204, '2014-10-24 11:40:13', '2014-10-24 11:40:13', NULL, 0),
(797, 'SXIOIhOSMSAY8ycjZuf6bDFfzhXQv6SK.png', '', 204, '2014-10-24 11:40:13', '2014-10-24 11:40:13', NULL, 0),
(798, '2JQDIYhNLj5n6qz5jcCjDnJ7ZPXGmTKc.png', '', 205, '2014-10-24 11:41:11', '2014-10-24 11:41:11', NULL, 0),
(799, 'jlNiUmrlEBsIfx9R11FS4yyN9i04FUVK.png', '', 205, '2014-10-24 11:41:11', '2014-10-24 11:41:11', NULL, 0),
(800, '5GhqDUpwfP2pxXm2IdiyCq1D9x96MBFb.png', '', 206, '2014-10-24 11:41:34', '2014-10-24 11:41:34', NULL, 0),
(801, 'nI9mnTY8jgGlEMXQRCL18NCKGtJnCD08.png', '', 206, '2014-10-24 11:41:34', '2014-10-24 11:41:34', NULL, 0),
(802, 'OicXfivSeHdOaJgdDByqCdRBuYv2SxIk.png', '', 207, '2014-10-31 06:06:05', '2014-10-24 11:43:44', NULL, 0),
(803, 'mWifZkX8PwZYZgLH33zbN4NlPjyEfwIr.png', '', 208, '2014-10-24 11:44:27', '2014-10-24 11:44:27', NULL, 0),
(804, 'YYywjDSNLhpJZ1RuND5Lp4QCd2JuUjiL.png', '', 208, '2014-10-24 11:44:27', '2014-10-24 11:44:27', NULL, 0),
(805, 'UlyEXgkMNwlvw1p7M2Fah9BYlcfR4ERO.png', '', 209, '2014-10-24 11:44:53', '2014-10-24 11:44:53', NULL, 0),
(806, 'HvNPm34CtjdBj5JzFvHFypVVf9rL625P.png', '', 209, '2014-10-24 11:44:53', '2014-10-24 11:44:53', NULL, 0),
(807, 'U7e7kmVYx0SgLmB7NqDvZfInJIdY6rzT.png', '', 210, '2014-10-24 11:45:25', '2014-10-24 11:45:25', NULL, 0),
(808, 'YUOgPjkvXMA9uzMGAABCFer40oDesFoY.png', '', 210, '2014-10-24 11:45:25', '2014-10-24 11:45:25', NULL, 0),
(809, 'Ulehe7rWczQgoJ507GksSeSR2VEVETNv.png', '', 211, '2014-10-31 06:05:18', '2014-10-24 11:47:08', NULL, 0),
(810, 'Y8WqvJGcR1cupJVMeTMdyAcDuGEJ0f7a.png', '', 212, '2014-10-24 11:47:56', '2014-10-24 11:47:56', NULL, 0),
(811, 'HnPSnpNxqKAX80r6YGqr993qV1Qyjyd3.png', '', 212, '2014-10-24 11:47:56', '2014-10-24 11:47:56', NULL, 0),
(812, '9ENhukGLcy8xScmOO5LxhUwXYo8UNbaG.png', '', 213, '2014-10-24 11:48:27', '2014-10-24 11:48:27', NULL, 0),
(813, 'tSyqLVpskH4pfM4Vwr0DFX7gsBGOFIkv.png', '', 213, '2014-10-24 11:48:27', '2014-10-24 11:48:27', NULL, 0),
(814, '365UCuXfafS2ozuONmdPQGajDrJl1bFi.png', '', 214, '2014-10-24 11:48:47', '2014-10-24 11:48:47', NULL, 0),
(815, 'UVVgWkulZKDuEwjQo1uRqyvl59Kx8yFe.png', '', 214, '2014-10-24 11:48:47', '2014-10-24 11:48:47', NULL, 0),
(816, 'EMyYAqI2zgoaBL3Cxu25DswYuQ7Qdr4c.png', '', 215, '2014-10-31 06:04:55', '2014-10-24 11:51:16', NULL, 0),
(817, 'VLfcEtLnNC62Wpsw9jG6hlwQyErFthHw.png', '', 216, '2014-10-24 11:53:39', '2014-10-24 11:53:39', NULL, 0),
(818, 'geZKTJYQl3o6qhoQzOmI184d2RmXEAsy.png', '', 216, '2014-10-24 11:53:39', '2014-10-24 11:53:39', NULL, 0),
(819, 'MkLjXKPtqkyXbunve1ASseg2xEMCjnwC.png', '', 217, '2014-10-24 11:54:49', '2014-10-24 11:54:49', NULL, 0),
(820, 'IC7tref9PxLdpk9DbZenZxy9xc9NwdHg.png', '', 217, '2014-10-24 11:54:49', '2014-10-24 11:54:49', NULL, 0),
(821, 'VvB5dwyKgsAiz6zm0Fich6vtKOuQiIsM.png', '', 218, '2014-10-24 11:55:12', '2014-10-24 11:55:12', NULL, 0),
(822, 'c0Sw2OlfQFiXKXTvEaKYYZ0O1IDLnru6.png', '', 218, '2014-10-24 11:55:12', '2014-10-24 11:55:12', NULL, 0),
(823, 'OEe4i15CRGIfy1pV2v84AW8sg2qHZk3v.png', '', 219, '2014-10-31 06:04:33', '2014-10-24 11:58:16', NULL, 0),
(824, 'fVJnhYr3GDEWC6kofQDDLkr6GbPCOvWD.png', '', 220, '2014-10-24 11:58:47', '2014-10-24 11:58:47', NULL, 0),
(825, 'DIeNYroOamxDWBDdH807KTwHBi1jQVS5.png', '', 220, '2014-10-24 11:58:47', '2014-10-24 11:58:47', NULL, 0),
(826, 'QJDXGquR4az9BSAHTj5dloWAs4cn5VqL.png', '', 221, '2014-10-24 11:59:08', '2014-10-24 11:59:08', NULL, 0),
(827, 'H4olKlcVKII74c9hSYrrVopPR0RT2Sm9.png', '', 221, '2014-10-24 11:59:08', '2014-10-24 11:59:08', NULL, 0),
(828, 'jtygKsDyypeCQFKgU4cC3S8tAzNki4FK.png', '', 222, '2014-10-24 11:59:32', '2014-10-24 11:59:32', NULL, 0),
(829, 'AUSb8tv7qZoFxb8e2q4m8DHwsHj3Ouv3.png', '', 222, '2014-10-24 11:59:32', '2014-10-24 11:59:32', NULL, 0),
(830, 'a6Aa2DsnQ7t3jjs04ZbEfTYGMauhufAd.png', '', 223, '2014-10-31 06:04:10', '2014-10-24 12:00:38', NULL, 0),
(831, 'L9IRzJkwlUPPx4HmfbqYof8PJjYV2Din.png', '', 224, '2014-10-24 12:01:03', '2014-10-24 12:01:03', NULL, 0),
(832, 'A4lbqscuqPOL3EVOiSPzKKrshzsJHQEE.png', '', 224, '2014-10-24 12:01:03', '2014-10-24 12:01:03', NULL, 0),
(833, 'zXoa2OWSFxgT7lBRvEEffBbaoosQxui3.png', '', 225, '2014-10-24 12:01:28', '2014-10-24 12:01:28', NULL, 0),
(834, '2rHVGf7ZJUwkDHhTgcpEOmKARh3ktYS8.png', '', 225, '2014-10-24 12:01:28', '2014-10-24 12:01:28', NULL, 0),
(835, '5XosdgC57PV4l0oSQU8EyMLVnnQhSdoj.png', '', 226, '2014-10-24 12:01:47', '2014-10-24 12:01:47', NULL, 0),
(836, 'NNZyF9EhWKpzLqnCUKBoTAuoFVPFFRqO.png', '', 226, '2014-10-24 12:01:47', '2014-10-24 12:01:47', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lamanufactors`
--

CREATE TABLE IF NOT EXISTS `lamanufactors` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(50) DEFAULT NULL,
  `laurl` varchar(50) DEFAULT NULL,
  `ladeleted` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lainfo` text,
  `laimage` varchar(50) DEFAULT NULL,
  `laorder` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lamanufactors`
--

INSERT INTO `lamanufactors` (`id`, `latitle`, `laurl`, `ladeleted`, `updated_at`, `created_at`, `lainfo`, `laimage`, `laorder`) VALUES
(1, 'Apple', 'apple', NULL, '2014-06-06 04:08:00', '2014-06-06 02:38:22', '', 'ZpzfOcYcp3HnCUKdXI7dcm3SOjjpTmqQ.jpg', 1),
(2, 'Samsung', 'samsung', NULL, '2014-06-06 04:07:56', '2014-06-06 02:38:34', '', 'FyDfuFEeQX5iMS7yk49fY5EhMX3HWdAR.jpg', 2),
(3, 'Nokia', 'nokia', NULL, '2014-09-08 14:31:49', '2014-06-06 02:38:50', '', 'SOatDqPd6URWgtRKUiWYNXbO2glvHe9A.jpg', 3),
(4, 'LG', 'lg', NULL, '2014-06-06 04:07:47', '2014-06-06 02:39:03', '', 'CABP1VfC0XNLPQLxpsFnVC5J2J2JbVBS.jpg', 4),
(5, 'HTC', 'htc', NULL, '2014-09-08 14:31:24', '2014-06-06 02:39:12', '', 'SwR7vNGBPk3Fm9InjttjJy8efvcPDHS3.png', 5),
(6, 'blackberry', 'blackberry', NULL, '2014-06-06 02:39:25', '2014-06-06 02:39:25', '', 'PTEkw7lxn752sjHPC8Si30w32d2VsXml.jpg', 6),
(7, 'Sony', 'sony', NULL, '2014-09-08 14:11:31', '2014-09-08 14:11:31', '', NULL, 7),
(8, 'Bose', 'bose', NULL, '2014-09-16 06:27:20', '2014-09-16 06:27:06', '', 'h3Z1WtYvlhCrHSfxQBwANnK6n0kQDO76.png', 8),
(9, 'Philips', 'philips', NULL, '2014-09-16 06:50:50', '2014-09-16 06:50:43', '', 'PuyerPqJ1fodIYJNYmXg96u2Iv7oPNpe.png', 9),
(10, 'Anker', 'anker', NULL, '2014-09-16 07:15:00', '2014-09-16 07:14:46', '', 'U23i43qC1MM2dtprCJ8xdkUwkgjtBY8A.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `laorderaddress`
--

CREATE TABLE IF NOT EXISTS `laorderaddress` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `laorderaddress`
--

INSERT INTO `laorderaddress` (`id`, `user_id`, `name`, `sex`, `tel`, `address`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'Truong Cong Thang', '', '01695359198', 'Tay Thanh, Tan Phu, HCMC', 0, '2014-09-24 03:42:22', '2014-09-24 03:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `laorderitems`
--

CREATE TABLE IF NOT EXISTS `laorderitems` (
`id` int(11) NOT NULL,
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
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `laorderitems`
--

INSERT INTO `laorderitems` (`id`, `order_id`, `latitle`, `amount`, `laprice`, `variantname`, `producturl`, `caturl`, `variantid`, `laimage`, `lakhoiluong`, `updated_at`, `created_at`, `product_id`) VALUES
(1, 1, 'Iphone 6 16Gb', 1, 35000000, 'Gray', 'iphone-6-16gb', 'iphone', 140, 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', 0, '2014-09-24 03:42:43', '2014-09-24 03:42:43', 141);

-- --------------------------------------------------------

--
-- Table structure for table `laorders`
--

CREATE TABLE IF NOT EXISTS `laorders` (
`id` int(11) NOT NULL,
  `lashipping` int(11) DEFAULT NULL,
  `labillid` int(11) DEFAULT NULL,
  `requireinvole` int(11) DEFAULT NULL,
  `lapayment` int(11) DEFAULT NULL,
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
  `laordernote` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `laorders`
--

INSERT INTO `laorders` (`id`, `lashipping`, `labillid`, `requireinvole`, `lapayment`, `lasumkhoiluong`, `lafeeshipping`, `laordername`, `laordertel`, `laorderemail`, `laorderaddr`, `laorderprovince`, `laorderdistrict`, `updated_at`, `created_at`, `uid`, `user_id`, `order_status`, `voucher`, `giamvoucher`, `sumsanpham`, `laordernote`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-24 03:42:43', '2014-09-24 03:42:43', NULL, 1, '0', '', 0, 35000000, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `laproducts`
--

CREATE TABLE IF NOT EXISTS `laproducts` (
`id` int(11) unsigned NOT NULL,
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
  `ladungtich` varchar(100) DEFAULT NULL,
  `laview` int(11) NOT NULL DEFAULT '0',
  `lachucnang` varchar(100) DEFAULT NULL,
  `lavariant_id` int(11) NOT NULL DEFAULT '0',
  `laproduct_id` varchar(50) DEFAULT NULL,
  `youtubeid` varchar(50) DEFAULT NULL,
  `layear` int(4) DEFAULT NULL,
  `lamonth` int(2) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `laproducts`
--

INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(1, 'Slider', '', NULL, '', '', '', 'wubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png', 0, 0, 0, 0, 0, '-25200', 1, 'slider', '2014-09-10 10:35:57', '2014-06-06 10:56:31', '', '', 0, '', 0, '', '', NULL, NULL),
(2, 'Giới thiệu', '', NULL, '', '<p><span style="font-family:arial,helvetica,sans-serif; font-size:12px">Sau hơn 3 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, thương hiệu PhonGee đ&atilde; đi v&agrave;o l&ograve;ng kh&aacute;ch h&agrave;ng bằng niềm tin cậy trọn vẹn v&agrave; sự h&agrave;i l&ograve;ng về chất lượng dịch vụ. V&agrave; giờ đ&acirc;y, PhonGee quyết định n&acirc;ng cấp ch&iacute;nh m&igrave;nh l&ecirc;n một tầm cao mới, dịch vụ đa dạng v&agrave; chuy&ecirc;n nghiệp hơn, c&aacute;c d&ograve;ng sản phẩm cung cấp phong ph&uacute; hơn chứ kh&ocirc;ng chỉ g&oacute;i gọn trong d&ograve;ng sản phẩm Apple cụ thể ở c&aacute;c thương hiệu mạnh kh&aacute;c như Samsung, HTC, Sony, Blackberry,...</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn t&igrave;m thấy được l&ograve;ng tin, t&igrave;m thấy được sự th&acirc;n thiện, sự tận t&acirc;m phục vụ v&agrave; sự chuy&ecirc;n nghiệp trong tư vấn cũng như sự &acirc;n cần trong hỗ trợ.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn nhận được c&aacute;c gi&aacute; trị cốt l&otilde;i của c&ocirc;ng nghệ từ c&aacute;c sản phẩm ch&iacute;nh h&atilde;ng, nguồn gốc r&otilde; r&agrave;ng minh bạch.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn biết rằng bạn đ&uacute;ng khi đặt trọn niềm tin, v&agrave; bạn kh&ocirc;ng thất vọng khi trao ban niềm tin đ&oacute;.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Giờ đ&acirc;y, PhonGee kh&ocirc;ng chỉ l&agrave; PhonGee, PhonGee đ&atilde; vươn l&ecirc;n 1 tầm mới cao hơn, đa dạng hơn, chuy&ecirc;n nghiệp hơn, CH&Uacute;NG T&Ocirc;I GỌI Đ&Oacute; L&Agrave; SẮC M&Agrave;U PHONGEE, hay dưới t&ecirc;n gọi ngắn gọn: PHONGEE COLOR&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Bạn đ&atilde; kh&ocirc;ng thất vọng về PhonGee, bạn sẽ c&agrave;ng h&agrave;i l&ograve;ng hơn với PhonGee Color.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ch&uacute;ng t&ocirc;i triển khai hệ thống PhonGee Color ở 02 vị tr&iacute;:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">- 12 Trần Quốc Ho&agrave;n, phường 4, quận T&acirc;n B&igrave;nh, TP HCM</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">- 12 T&ocirc;n Thất T&ugrave;ng, Phường Bến Th&agrave;nh, quận 1, TPHCM</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">C&aacute;c địa điểm kh&aacute;c đang nhượng quyền thương hiệu PhonGee (chứ kh&ocirc;ng d&ugrave;ng PhonGee Color) kh&ocirc;ng trực thuộc hệ thống PhonGee ch&uacute;ng t&ocirc;i.</span></p>\r\n', '', 'W32Z1e4FzNREcZc2y3isgNZBslcvXJsv.png', 7, 0, 0, 0, 0, '-25200', 0, 'gioi-thieu', '2014-08-16 12:24:04', '2014-06-06 16:35:57', '', '', 11, '', 0, '', NULL, NULL, NULL),
(3, 'iPhone 5s 16GB', 'iphone, iOS', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 16 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', 'JV5ym2zgDxIHKEzUrnIA8KXX3AZi3qor.png', 3, 1, 0, 13380000, 0, '1404061200', 0, 'iphone-5s-16gb', '2014-11-12 06:14:33', '2014-06-06 16:50:07', '', '', 541, '', 0, '', '', NULL, NULL),
(4, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Sliver', '', '', 'L0aZq7OHKSg56SFrtQpynFpH9U2naCWr.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb1', '2014-09-07 20:39:02', '2014-06-06 16:50:44', '', '', 0, '', 3, '', '', NULL, NULL),
(5, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Gold', '', '', 'LyWSOsF8eYYwPqkA3NJDOjZtP2QNNOmY.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb2', '2014-09-07 20:39:25', '2014-06-06 16:51:11', '', '', 0, '', 3, '', '', NULL, NULL),
(6, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Space Gray', '', '', 'qtTsHL2Z5FeRC0fLgD35paA5p0I3O53Y.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb3', '2014-09-07 20:39:43', '2014-06-06 16:52:07', '', '', 0, '', 3, '', '', NULL, NULL),
(7, 'iPhone 5c 16GB', '', NULL, '', '<h2><br />\r\n&nbsp;</h2>\r\n', '', 'RPt53CyPafI2UpnjEbRx8vnWt14LxzZY.png', 3, 1, 0, 8990000, 0, '1404061200', 0, 'iphone-5c-16gb', '2014-11-12 01:48:56', '2014-06-06 17:10:39', '132', '59.2 mm x 124.4 mm x 9.97 mm', 367, '', 0, '', '', NULL, NULL),
(8, 'iPhone 5c 16GB', '', NULL, 'White', '', '', '6r9NaZ3Mu0555PHsQSKcpEwewioUl8a4.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb1', '2014-09-07 20:37:55', '2014-06-06 17:11:04', '', '', 0, '', 7, '', '', NULL, NULL),
(9, 'iPhone 5c 16GB', '', NULL, 'Blue', '', '', 'xJx3aFrKcEg67oS6vvFLcmQxNgI7bu3w.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb2', '2014-09-07 20:37:02', '2014-06-06 17:11:32', '', '', 0, '', 7, '', '', NULL, NULL),
(10, 'iPhone 5c 16GB', '', NULL, 'Green', '', '', 'CaRCSCq6EFPBaLx9qCtiR2ah3zMTEg8w.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb3', '2014-09-07 20:36:36', '2014-06-06 17:11:48', '', '', 0, '', 7, '', '', NULL, NULL),
(11, 'iPhone 5c 16GB', '', NULL, 'Red', '', '', 'dsP9PM6ZfdSuEDWgONbNKIKeacOzfXz6.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb4', '2014-09-07 20:35:34', '2014-06-06 17:12:04', '', '', 0, '', 7, '', '', NULL, NULL),
(12, 'iPhone 5c 16GB', '', NULL, 'Yellow', '', '', 'm0OJUAkKlCJbsNEboOt80V5Xet5Oax1m.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb5', '2014-09-07 20:35:04', '2014-06-06 17:12:20', '', '', 0, '', 7, '', '', NULL, NULL),
(13, 'Người đẹp và công nghệ ở Computex', '', NULL, 'Ở đâu có công nghệ thì ở đó có người đẹp, dĩ nhiên là kể cả Computex 2014, được diễn ra từ ngày 3-7/6 năm nay ở Đài Bắc, Đài Loan', '<p><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Ở đ&acirc;u c&oacute; c&ocirc;ng nghệ th&igrave; ở đ&oacute; c&oacute; người đẹp, dĩ nhi&ecirc;n l&agrave; kể cả&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/computex+2014/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">Computex 2014</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">, được diễn ra từ ng&agrave;y 3-7/6 năm nay ở Đ&agrave;i Bắc, Đ&agrave;i Loan. Với một sự kiện quốc tế th&igrave; sự xuất hiện của c&aacute;c&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/pg+xinh+%C4%91%E1%BA%B9p/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">PG xinh đẹp</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;cũng nhiều hơn, đều đặn v&agrave; xinh tươi hơn, v&agrave; với sự niềm nở, hiếu kh&aacute;ch, nhiệt t&igrave;nh tư vấn th&igrave; PG ch&iacute;nh l&agrave; cầu nối để sự kiện diễn ra th&agrave;nh c&ocirc;ng. Mời c&aacute;c bạn xem qua v&agrave;i h&igrave;nh ảnh về c&aacute;c c&ocirc; g&aacute;i n&agrave;y ở Computex 2014 năm nay.</span><br />\r\n<br />\r\n<img alt="fh (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504997_fh_1.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="fh (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504998_fh_3.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="fh (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504999_fh_6.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><br />\r\n<img alt="nguoi-dep-o-computex-2014 (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505005_nguoi-dep-o-computex-2014_3.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><br />\r\n<img alt="computex2014 (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505156_computex2014_1.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505157_computex2014_2.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505159_computex2014_4.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (5)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505160_computex2014_5.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505161_computex2014_6.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505162_computex2014_7.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (8)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505163_computex2014_8.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505164_computex2014_9.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505165_computex2014_10.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (11)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505166_computex2014_11.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /></p>\r\n\r\n<div style="margin: 0px; padding: 0px; color: rgb(20, 20, 20); font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: center; background-color: rgb(252, 252, 255);"><img alt="fh (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505000_fh_9.jpg" style="border:0px; max-width:100%" /><img alt="fh (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505001_fh_10.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505003_nguoi-dep-o-computex-2014_1.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505004_nguoi-dep-o-computex-2014_2.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505006_nguoi-dep-o-computex-2014_4.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506628_computex_4.jpg" style="border:0px; max-width:100%" /><br />\r\n<img alt="nguoi-dep-o-computex-2014 (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505009_nguoi-dep-o-computex-2014_7.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505010_nguoi-dep-o-computex-2014_9.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505011_nguoi-dep-o-computex-2014_10.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (11)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505012_nguoi-dep-o-computex-2014_11.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (12)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505013_nguoi-dep-o-computex-2014_12.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (13)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505014_nguoi-dep-o-computex-2014_13.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (14)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505015_nguoi-dep-o-computex-2014_14.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (15)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505016_nguoi-dep-o-computex-2014_15.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (16)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505017_nguoi-dep-o-computex-2014_16.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (17)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505018_nguoi-dep-o-computex-2014_17.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (18)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505019_nguoi-dep-o-computex-2014_18.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506625_computex_1.jpg" style="border:0px; max-width:100%" /><img alt="computex (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506626_computex_2.jpg" style="border:0px; max-width:100%" /><img alt="computex (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506627_computex_3.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506630_computex_6.jpg" style="border:0px; max-width:100%" /><img alt="computex (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506631_computex_7.jpg" style="border:0px; max-width:100%" /><img alt="computex (8)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506632_computex_8.jpg" style="border:0px; max-width:100%" /></div>\r\n', '', '7xdXj1CDtCkII3zYdshDsnvMJueD8OIv.jpg', 10, 0, 0, 0, 0, '0', 0, 'nguoi-dep-va-cong-nghe-o-computex', '2014-08-30 09:29:24', '2014-06-06 17:37:34', '', '', 15, '', 0, '', NULL, 2014, 6),
(14, 'Safari có thêm chức năng đọc thông tin thẻ tín dụng bằng camera', '', NULL, 'Trình duyệt Safari trên iOS 8 có thêm một chức năng mới đó là dùng camera để đọc thông tin trên tín dụng hoặc các loại thẻ ngân hàng', '<p><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Tr&igrave;nh duyệt&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/safari/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">Safari</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;tr&ecirc;n&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/ios+8/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">iOS 8</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;c&oacute; th&ecirc;m một chức năng mới đ&oacute; l&agrave; d&ugrave;ng camera để đọc th&ocirc;ng tin tr&ecirc;n t&iacute;n dụng hoặc c&aacute;c loại thẻ ng&acirc;n h&agrave;ng. Khi đang mua h&agrave;ng online v&agrave; đến phần nhập th&ocirc;ng tin thẻ, thay v&igrave; ngồi nhập từng con số th&igrave; bạn chỉ việc chĩa camera v&agrave;o chiếc thẻ của m&igrave;nh, m&aacute;y sẽ tự động nhận diện c&aacute;c con số v&agrave; điền v&agrave;o chỗ trống gi&uacute;p bạn. Chức năng n&agrave;y trong tương lai sẽ gi&uacute;p ch&uacute;ng ta tiết kiệm được thời gian nhập liệu cũng như hạn chế bớt t&igrave;nh trạng bị hacker đ&aacute;nh cắp th&ocirc;ng tin th&ocirc;ng qua c&aacute;c phần mềm keylogger.</span><br />\r\n<br />\r\n<span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Chức năng n&agrave;y ho&agrave;n to&agrave;n tự động n&ecirc;n người quản trị mạng kh&ocirc;ng cần phải c&agrave;i đặt g&igrave; tr&ecirc;n website của họ. Khi đến &ocirc; nhập th&ocirc;ng tin thẻ (số thẻ), tr&igrave;nh duyệt sẽ tự động nhận biết v&agrave; đưa ra một t&ugrave;y chọn t&ecirc;n l&agrave; &quot;</span><em>Scan Credit Card</em><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&quot; nằm ph&iacute;a tr&ecirc;n b&agrave;n ph&iacute;m, nhấn v&agrave;o đ&oacute; lập tức giao diện chụp h&igrave;nh sẽ xuất hiện c&ugrave;ng với một c&aacute;i khung. Bạn chĩa c&aacute;i khung n&agrave;y v&agrave;o đ&uacute;ng thẻ ng&acirc;n h&agrave;ng của m&igrave;nh th&igrave; m&aacute;y sẽ tự động nhận dạng h&igrave;nh ảnh v&agrave; tr&iacute;ch xuất th&ocirc;ng tin ra từ đ&oacute;.</span><br />\r\n<br />\r\n<span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">M&igrave;nh đ&atilde; thử v&agrave; thấy chức năng n&agrave;y hoạt động được nhưng thời gian nhận dạng qu&aacute; l&acirc;u, c&oacute; lẽ do c&ograve;n l&agrave; bản thử nghiệm (beta 1) n&ecirc;n n&oacute; chưa ph&aacute;t huy hết hiệu quả.</span></p>\r\n', '', 'rGOTuyWkY1wcjMJxqeHIPSSkqsNsRuBw.jpg', 10, 0, 0, 0, 0, '0', 0, 'safari-co-them-chuc-nang-doc-thong-tin-the-tin-dung-bang-camera', '2014-08-22 10:34:53', '2014-06-06 17:45:48', '', '', 20, '', 0, '', NULL, 2013, 7),
(29, 'iPhone 5s 32GB', 'iphone, iOS', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 32 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;u sắc: Trắng v&agrave;ng</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', 'Kfvqi4bRKettMEmaVqESDRm4vT3AmVTy.png', 3, 1, 0, 15380000, 0, '1404061200', 0, 'iphone-5s-32gb', '2014-11-12 03:23:17', '2014-08-28 14:31:47', '', '', 284, '', 0, '', '', 2014, 8),
(30, 'Macbook Pro Rentina MGX72LL', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB &ndash; SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.6Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'QCR5r1tfyUtqC0fpDmHvMMyJM2K6ruFm.png', 27, 1, 0, 27790000, 0, '-25200', 0, 'macbook-pro-rentina-mgx72ll', '2014-11-12 05:00:20', '2014-08-29 00:56:27', '', '', 886, '', 0, '', '', 2014, 8),
(31, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Silver', '', '', 'uO0g7e9jesdt4YNOIj9iqsViOW3z1Rs7.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb1', '2014-09-07 20:31:19', '2014-08-30 08:24:08', '', '', 0, '', 29, '', '', 2014, 8),
(32, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Gray', '', '', 'ktnjLooBSCmE4K1KPqR9vBFSvSlQOCWy.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb2', '2014-09-07 20:30:51', '2014-08-30 08:36:04', '', '', 0, '', 29, '', '', 2014, 8),
(33, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Gold', '', '', '8CbD0yQsS4ufpb28HFIjGUwPGETOJwiW.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb3', '2014-09-07 20:30:24', '2014-08-30 08:36:30', '', '', 0, '', 29, '', '', 2014, 8),
(34, 'iPhone 5s 64Gb', '', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 64 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;u sắc: Trắng v&agrave;ng</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', '0ZrDnlegj2bEQWkkWXkTPYZ5Q7U1zvPV.png', 3, 1, 0, 17380000, 0, '-25200', 0, 'iphone-5s-64gb', '2014-11-11 17:56:46', '2014-08-30 08:49:50', '', '', 217, '', 0, '', '', 2014, 8),
(35, 'iPhone 5s 64Gb', '', NULL, 'Gray', '', '', 'kqmPqUCKWPlP1AeSfJu8Ag1xXt7G9tGr.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb1', '2014-09-07 20:27:18', '2014-08-30 08:51:54', '', '', 0, '', 34, '', '', 2014, 8),
(36, 'iPhone 5s 64Gb', '', NULL, 'Silver', '', '', 'wuKySO1jmzc0STbqSWXdH6PPDiR2pLEf.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb2', '2014-09-07 20:26:51', '2014-08-30 08:52:30', '', '', 0, '', 34, '', '', 2014, 8),
(37, 'iPhone 5s 64Gb', '', NULL, 'Gold', '', '', 'Z1Vqn1K1mvMBjrFPL1XQN7g7unVmQCA0.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb3', '2014-09-07 20:26:13', '2014-08-30 08:52:50', '', '', 0, '', 34, '', '', 2014, 8),
(39, 'iPhone 5c 32 Gb', '', NULL, '', '<p><span style="font-family:cambria; font-size:16px">Chip xử l&yacute;: CPU Apple A6&nbsp;</span><br />\r\n<span style="font-family:cambria; font-size:16px">- M&agrave;n h&igrave;nh Retina k&iacute;ch thước 4-inch sử dụng c&ocirc;ng nghệ LED-backlit IPS LCD với độ ph&acirc;n giải 1136x640 pixels, mật độ điểm ảnh 326ppi</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Camera của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixels, hỗ trợ LED flash. T&iacute;nh năng chạm lấy n&eacute;t rất nhanh v&agrave; ch&iacute;nh x&aacute;c. Khả năng chụp HDR v&agrave; Panorama xuất sắc. Quay phim full HD tuyệt đẹp. Camera trước hỗ trợ quay phim HD 720p, hỗ trợ nhận diện khu&ocirc;n mặt v&agrave; hỗ trợ đ&agrave;m thoại video HD qua FaceTime</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Thời gian thoại 10h tr&ecirc;n s&oacute;ng 3G.</span><br />\r\n<span style="font-family:cambria; font-size:16px">- K&iacute;ch thước : 124,4x59,2x8,97mm</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Trọng lượng: 132g</span><br />\r\n<span style="font-family:cambria; font-size:16px">- M&agrave;u sắc: xanh da trời, xanh l&aacute;, đỏ, v&agrave;ng, trắng.</span><br />\r\n<br />\r\n<br />\r\n<span style="font-family:cambria; font-size:16px">trong hộp NSX:</span><br />\r\n<span style="font-family:cambria; font-size:16px">iphone 5C</span><br />\r\n<span style="font-family:cambria; font-size:16px">Tai nghe Apple EasPods</span><br />\r\n<span style="font-family:cambria; font-size:16px">C&aacute;p Linghtning.</span></p>\r\n', '', 'AMv3ibeAJYzL9rT9xQvHKtWGWlXrD8nY.png', 3, 1, 0, 12790000, 0, '1404061200', 1, 'iphone-5c-32-gb', '2014-09-01 14:56:44', '2014-09-01 14:55:04', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 7, '', '', 2014, 9),
(40, 'iPhone 5c 32GB', '', NULL, '', '<p><span style=\\"font-family:cambria; font-size:16px\\">Chip xử l&yacute;: CPU Apple A6&nbsp;</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- M&agrave;n h&igrave;nh Retina k&iacute;ch thước 4-inch sử dụng c&ocirc;ng nghệ LED-backlit IPS LCD với độ ph&acirc;n giải 1136x640 pixels, mật độ điểm ảnh 326ppi</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Camera của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixels, hỗ trợ LED flash. T&iacute;nh năng chạm lấy n&eacute;t rất nhanh v&agrave; ch&iacute;nh x&aacute;c. Khả năng chụp HDR v&agrave; Panorama xuất sắc. Quay phim full HD tuyệt đẹp. Camera trước hỗ trợ quay phim HD 720p, hỗ trợ nhận diện khu&ocirc;n mặt v&agrave; hỗ trợ đ&agrave;m thoại video HD qua FaceTime</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Thời gian thoại 10h tr&ecirc;n s&oacute;ng 3G.</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- K&iacute;ch thước : 124,4x59,2x8,97mm</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Trọng lượng: 132g</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- M&agrave;u sắc: xanh da trời, xanh l&aacute;, đỏ, v&agrave;ng, trắng.</span><br />\r\n<br />\r\n<br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">trong hộp NSX:</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">iphone 5C</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">Tai nghe Apple EasPods</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">C&aacute;p Linghtning.</span></p>\r\n', '', 'Up1VJvij59o19vcXpYmIZZIAJyUNIMl5.png', 3, 1, 0, 11680000, 0, '1404061200', 0, 'iphone-5c-32gb', '2014-11-12 03:46:56', '2014-09-01 14:57:50', '132', '59.2 mm x 124.4 mm x 9.97 mm', 186, '', 0, '', '', 2014, 9),
(41, 'iPhone 5c 32GB', '', NULL, 'White', '', '', 'JPAMxZTd1WwZARCMIUGwy1AWexvVjsrR.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb1', '2014-09-07 20:21:23', '2014-09-01 15:07:05', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(42, 'iPhone 5c 32GB', '', NULL, 'Blue', '', '', 'bW0GeijcqGcvb4EUIg0K6oljIIDXKX6p.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb2', '2014-09-07 20:21:55', '2014-09-01 15:07:47', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(43, 'iPhone 5c 32GB', '', NULL, 'Green', '', '', 'd5CVxFOGgghCBDSqaQHXxTnMrYlHrFLw.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb3', '2014-09-07 20:22:24', '2014-09-01 15:08:27', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(44, 'iPhone 5c 32GB', '', NULL, 'Red', '', '', 'VydEsCuysPes4JVwDn2rY1XQRsuCBfkg.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb4', '2014-09-07 20:23:14', '2014-09-01 15:08:50', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(45, 'iPhone 5c 32GB', '', NULL, 'Yellow', '', '', 'AveY6gq1jFRL8UiBQnD41RS1qVYd3DmJ.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb5', '2014-09-07 20:23:57', '2014-09-01 15:09:12', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(46, 'Macbook Pro Rentina MGX82LL', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.6Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '1WUjP25f0k85lUkQnCMLC7quJHFMQeV3.png', 27, 1, 0, 31990000, 0, '-25200', 0, 'macbook-pro-rentina-mgx82ll', '2014-11-12 06:40:51', '2014-09-01 15:17:27', '', '', 356, '', 0, '', '', 2014, 9),
(47, 'Macbook Pro Rentina MGX92LL', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>512GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.8Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZtVWGmkbJ2TH6uYwoMRrn3jOvMByY1SR.png', 27, 1, 0, 38990000, 0, '-25200', 0, 'macbook-pro-rentina-mgx92ll', '2014-11-11 17:57:02', '2014-09-01 15:19:24', '', '', 341, '', 0, '', '', 2014, 9);
INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(48, 'Macbook Pro Rentina MGXA2', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>15.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i7 &ndash; Dual Core 2.2Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>16GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'U79AUUeHSjN2jzKfnStijRHuV7fwq9vp.png', 27, 1, 0, 42990000, 0, '-25200', 0, 'macbook-pro-rentina-mgxa2', '2014-11-12 04:04:25', '2014-09-01 15:27:05', '', '', 264, '', 0, '', '', 2014, 9),
(49, 'Macbook Pro Rentina MGXC2', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>15.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>512GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i7 &ndash; Dual Core 2.5Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>16GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics NVIDIA GeForce GT 750M with 2GB GDDR5 memory</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '6XwC81PPVpV9XBrQxGin87qJmv4IzqYr.png', 27, 1, 0, 52990000, 0, '-25200', 0, 'macbook-pro-rentina-mgxc2', '2014-11-12 03:10:32', '2014-09-01 15:29:25', '', '', 270, '', 0, '', '', 2014, 9),
(50, 'Ipad Air Wifi 16GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'SF4Uz05Tq5FEp2WCZqX18OPueZl1AwYv.png', 4, 1, 0, 9980000, 0, '-25200', 0, 'ipad-air-wifi-16gb', '2014-11-12 02:25:12', '2014-09-01 15:36:31', '', '', 213, '', 0, '', '', 2014, 9),
(51, 'Ipad Air Wifi', '', NULL, 'Gray', '', '', 'tjqz30llgJUH88gY1EfRX0hfbp5pIAbm.png', 4, 1, 0, 10790000, 0, '-25200', 0, 'ipad-air-wifi1', '2014-09-07 17:56:52', '2014-09-01 15:37:32', '', '', 0, '', 50, '', '', 2014, 9),
(52, 'Ipad Air Wifi', '', NULL, 'White', '', '', 'V32idkJYZlpeb7abkzyrdWLME2FmtO7v.png', 4, 1, 0, 10790000, 0, '-25200', 0, 'ipad-air-wifi2', '2014-09-07 17:56:35', '2014-09-01 15:38:55', '', '', 0, '', 50, '', '', 2014, 9),
(53, 'Ipad Air Wifi 32GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '9Doo1Re1EyNePkXnBxlod85UJZxYbFnY.png', 4, 1, 0, 11980000, 0, '-25200', 0, 'ipad-air-wifi-32gb', '2014-11-11 23:12:41', '2014-09-01 15:57:45', '', '', 169, '', 0, '', '', 2014, 9),
(54, 'Ipad Air Wifi 32GB', '', NULL, 'Gray', '', '', 'XqCN9vMOeSupTpoxDqdADNiwAcriOhC4.png', 4, 1, 0, 12900000, 0, '-25200', 0, 'ipad-air-wifi-32gb1', '2014-09-07 17:55:42', '2014-09-01 15:58:23', '', '', 0, '', 53, '', '', 2014, 9),
(55, 'Ipad Air Wifi 32GB', '', NULL, 'White', '', '', 'RGYxwu7yPoqAsUMBsBzoWRDsGMTozrpQ.png', 4, 1, 0, 12900000, 0, '-25200', 0, 'ipad-air-wifi-32gb2', '2014-09-07 17:55:17', '2014-09-01 15:58:41', '', '', 0, '', 53, '', '', 2014, 9),
(56, 'Ipad Air Wifi 64GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '266SPTtRl5fYhp1aJnXEaVBy1zJQOvdn.png', 4, 1, 0, 13880000, 0, '-25200', 0, 'ipad-air-wifi-64gb', '2014-11-11 17:56:17', '2014-09-01 16:06:26', '', '', 169, '', 0, '', '', 2014, 9),
(57, 'Ipad Air Wifi 64GB', '', NULL, 'Gray', '', '', 'nmBdpmBHyMQdH74xy25ez5xVnogBLcre.png', 4, 1, 0, 14900000, 0, '-25200', 0, 'ipad-air-wifi-64gb1', '2014-09-07 17:53:58', '2014-09-01 16:06:49', '', '', 0, '', 56, '', '', 2014, 9),
(58, 'Ipad Air Wifi 64GB', '', NULL, 'White', '', '', 'gsBsDjHvqygK0SgiKXzHg0jhmQs8MvO8.png', 4, 1, 0, 14900000, 0, '-25200', 0, 'ipad-air-wifi-64gb2', '2014-09-07 17:53:43', '2014-09-01 16:07:06', '', '', 0, '', 56, '', '', 2014, 9),
(59, 'Ipad Air Wifi 128GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '9Hm5qZaAxxW9JpCmcNWvcMrTvAJEhUHp.png', 4, 1, 0, 14880000, 0, '-25200', 0, 'ipad-air-wifi-128gb', '2014-11-11 18:45:15', '2014-09-01 16:08:08', '', '', 167, '', 0, '', '', 2014, 9),
(60, 'Ipad Air Wifi 128GB', '', NULL, 'Gray', '', '', 'Grcx5T2fC8gVtwT9oz0QSSImrRW3eUiN.png', 4, 1, 0, 16900000, 0, '-25200', 0, 'ipad-air-wifi-128gb1', '2014-09-01 16:08:26', '2014-09-01 16:08:26', '', '', 0, '', 59, '', '', 2014, 9),
(61, 'Ipad Air Wifi 128GB', '', NULL, 'White', '', '', 'GMdSM1YUxl8AZg66lg2h5x50c3uUwhHt.png', 4, 1, 0, 16900000, 0, '-25200', 0, 'ipad-air-wifi-128gb2', '2014-09-07 17:52:21', '2014-09-01 16:08:44', '', '', 0, '', 59, '', '', 2014, 9),
(62, 'Ipad Air 16GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '2bbJHeQc2KwIPxYcAsNl91LxJ2x8rRKw.png', 4, 1, 0, 11880000, 0, '-25200', 0, 'ipad-air-16gb-4g', '2014-11-12 01:06:56', '2014-09-01 16:10:33', '', '', 195, '', 0, '', '', 2014, 9),
(63, 'Ipad Air 16GB 4G', '', NULL, 'Gray', '', '', '75QS32ROUpBg7wBNLvpLIE0ajA6VHgC0.png', 4, 1, 0, 13180000, 0, '-25200', 0, 'ipad-air-16gb-4g1', '2014-09-07 17:51:23', '2014-09-01 16:11:06', '', '', 0, '', 62, '', '', 2014, 9),
(64, 'Ipad Air 16GB 4G', '', NULL, 'White', '', '', 'S8b3nK4lU3C5J5GMAwH6Q47f7dqSzuJd.png', 4, 1, 0, 13180000, 0, '-25200', 0, 'ipad-air-16gb-4g2', '2014-09-07 17:51:05', '2014-09-01 16:11:23', '', '', 0, '', 62, '', '', 2014, 9),
(65, 'Ipad Air 32GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 's4KY8vWhb84T6YwtOXPmLm3eH4csfz2S.png', 4, 1, 0, 13880000, 0, '-25200', 0, 'ipad-air-32gb-4g', '2014-11-11 17:56:05', '2014-09-01 16:12:09', '', '', 255, '', 0, '', '', 2014, 9),
(66, 'Ipad Air 32GB 4G', '', NULL, 'Gray', '', '', 'tmrdWMYrAeC4idZxrILajpB0B4BQqHR3.png', 4, 1, 0, 15380000, 0, '-25200', 0, 'ipad-air-32gb-4g1', '2014-09-07 17:50:14', '2014-09-01 16:12:29', '', '', 0, '', 65, '', '', 2014, 9),
(67, 'Ipad Air 32GB 4G', '', NULL, 'White', '', '', '8nJFKlQx7jIEaQMHh2lgEPHgqqAQP28c.png', 4, 1, 0, 15380000, 0, '-25200', 0, 'ipad-air-32gb-4g2', '2014-09-07 17:50:29', '2014-09-01 16:12:44', '', '', 0, '', 65, '', '', 2014, 9),
(68, 'Ipad Air 64GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'vL6oTLJJuJqLR13ynsCyh9bStL72BmP7.png', 4, 1, 0, 15880000, 0, '-25200', 0, 'ipad-air-64gb-4g', '2014-11-12 06:09:07', '2014-09-01 16:13:58', '', '', 183, '', 0, '', '', 2014, 9),
(69, 'Ipad Air 64GB 4G', '', NULL, 'Gray', '', '', 'aNbGQoR42roUBLU84ujTKVVrogQTEn2o.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-air-64gb-4g1', '2014-09-07 17:49:21', '2014-09-01 16:14:18', '', '', 0, '', 68, '', '', 2014, 9),
(70, 'Ipad Air 64GB 4G', '', NULL, 'White', '', '', 'oRiHY30HrMb4RyIdj8vN8czd8mfU38IF.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-air-64gb-4g2', '2014-09-07 17:49:02', '2014-09-01 16:14:33', '', '', 0, '', 68, '', '', 2014, 9),
(71, 'Ipad Air 128GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 't8kWO9ymXo2wzsr9TTyJyxLP290fsZ1t.png', 4, 1, 0, 16880000, 0, '-25200', 0, 'ipad-air-128gb-4g', '2014-11-11 17:56:01', '2014-09-01 16:15:41', '', '', 200, '', 0, '', '', 2014, 9),
(72, 'Ipad Air 128GB 4G', '', NULL, 'Gray', '', '', 'n3McFjalWvQEJEKwjT6S81cYnqJ4nDos.png', 4, 1, 0, 19900000, 0, '-25200', 0, 'ipad-air-128gb-4g1', '2014-09-07 17:17:56', '2014-09-01 16:15:58', '', '', 0, '', 71, '', '', 2014, 9),
(73, 'Ipad Air 128GB 4G', '', NULL, 'White', '', '', 'xZqVYnUpH1z4wDHqa2sUiGmj3GHyU81i.png', 4, 1, 0, 19900000, 0, '-25200', 0, 'ipad-air-128gb-4g2', '2014-09-07 17:17:22', '2014-09-01 16:16:12', '', '', 0, '', 71, '', '', 2014, 9),
(74, 'Imac 2014 MF 883', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>500GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Core i5 1.4GHz dual-core Intel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ys3IKtSRXNfFQQZ178XhauYqvLVTLfRc.png', 29, 1, 0, 26500000, 0, '-25200', 0, 'imac-2014-mf-883', '2014-11-12 04:57:52', '2014-09-01 16:22:01', '', '', 263, '', 0, '', '', 2014, 9),
(75, 'Imac 2013 ME 089', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>27&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 3.4Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 755M với 02GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'eepkrmtfmUVC0frg2cKHPBhGk65QPSbO.png', 29, 1, 0, 43500000, 0, '-25200', 0, 'imac-2013-me-089', '2014-11-11 21:00:27', '2014-09-01 16:23:45', '', '', 222, '', 0, '', '', 2014, 9),
(76, 'Imac 2013 ME 088', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>27&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 3.2Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 755M với 01GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZYs4CO4RWJcRdNltLmPk6weGr8T2728H.png', 29, 1, 0, 38500000, 0, '-25200', 0, 'imac-2013-me-088', '2014-11-11 20:24:17', '2014-09-01 16:25:10', '', '', 314, '', 0, '', '', 2014, 9),
(77, 'Imac 2013 ME 087', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 2.9Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 750M với 01GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'fNMoypblydFHhCbCapsqDllJEg4V3zzN.png', 29, 1, 0, 32500000, 0, '-25200', 0, 'imac-2013-me-087', '2014-11-12 03:18:45', '2014-09-01 16:26:24', '', '', 198, '', 0, '', '', 2014, 9),
(78, 'Imac 2013 ME 086', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 2.7Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '5WiLL1EGnScyjUuSGwDFn6t59I94bMZr.png', 29, 1, 0, 28500000, 0, '-25200', 0, 'imac-2013-me-086', '2014-11-12 03:18:40', '2014-09-01 16:27:12', '', '', 548, '', 0, '', '', 2014, 9),
(79, 'Macbook Air 2014 MD712LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>11.6&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'osG1ocsjUKjbSyzr68ATjKK9NvN6iDPv.png', 28, 1, 0, 22990000, 0, '-25200', 0, 'macbook-air-2014-md712llb', '2014-11-12 00:10:54', '2014-09-01 16:33:11', '', '', 306, '', 0, '', '', 2014, 9),
(80, 'Macbook Air 2014 MD711LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>11.6&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'NElMuO6lNP4RLubg396OJ2fB5lOtLi4c.png', 28, 1, 0, 18990000, 0, '-25200', 0, 'macbook-air-2014-md711llb', '2014-11-12 03:38:34', '2014-09-01 16:34:44', '', '', 381, '', 0, '', '', 2014, 9),
(81, 'Macbook Air 2014 MD760LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128gb-ssd-pcie</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ce06u7v3oioYHu86p9ZBrWnyHS7k4Pwx.png', 28, 1, 0, 21990000, 0, '-25200', 0, 'macbook-air-2014-md760llb', '2014-11-12 03:38:59', '2014-09-01 16:35:46', '', '', 394, '', 0, '', '', 2014, 9),
(82, 'Macbook Air 2014 MD761LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, cổng 3.5mm, sạc MagSafe 2 45W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'nH4RrpBffQBx1Kd3s2plhzZl9DYeyeZA.png', 28, 1, 0, 24990000, 0, '-25200', 0, 'macbook-air-2014-md761llb', '2014-11-12 05:00:46', '2014-09-01 16:36:53', '', '', 383, '', 0, '', '', 2014, 9),
(83, 'Ipod Touch Jen 5 32GB', '', NULL, '', '<p><strong>Th&ocirc;ng số kỹ thuật.</strong><br />\r\niPod Touch Gen 5 được trang bị chip xử l&yacute; A5 2 nh&acirc;n, xung nhịp 800 MHz, dung lượng Ram 512 MB, m&agrave;n h&igrave;nh 4&Prime; (1136&times;640), camera ch&iacute;nh 5 MP v&agrave; camera phụ 1.2 MP. Như vậy iPod Touch Gen 5 c&oacute; cấu h&igrave;nh tương đương với iPhone 4S, nhưng n&oacute; lại kh&ocirc;ng hỗ trợ GPS, kh&ocirc;ng được t&iacute;ch hợp cảm biến &aacute;nh s&aacute;ng, c&oacute; nghĩa l&agrave; m&agrave;n h&igrave;nh sẽ kh&ocirc;ng tự thay đổi độ s&aacute;ng theo m&ocirc;i trường. Nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; do m&aacute;y qu&aacute; mỏng v&agrave; Apple kh&ocirc;ng thể t&iacute;ch hợp cảm biến n&agrave;y v&agrave;o.</p>\r\n\r\n<p><strong>Thiết kế.</strong><br />\r\niPod Touch từ trước đến nay lu&ocirc;n c&oacute; thiết kế ri&ecirc;ng, đặc trưng v&agrave; kh&ocirc;ng giống với iPhone c&ugrave;ng thời. iPod Touch Gen 5 n&agrave;y cũng kh&ocirc;ng phải ngoại lệ, d&ugrave; n&oacute; c&oacute; lớp vỏ bảo vệ với chất liệu tương tự nhưng thiết kế của n&oacute; th&igrave; c&oacute; thể n&oacute;i c&ograve;n đẹp hơn iPhone 5. Chiếc m&aacute;y nghe nhạc mới n&agrave;y rất mỏng v&agrave; nhẹ. N&oacute; chỉ d&agrave;y 6.1mm v&agrave; nặng 88g, so với iPod Touch Gen 4 l&agrave; 7.2mm v&agrave; 101g.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh.</strong><br />\r\nM&agrave;n h&igrave;nh của iPod Touch Gen 5 đ&atilde; kh&aacute;c nhiều so với c&aacute;c đời trước, m&agrave;n h&igrave;nh của m&aacute;y kh&aacute; tương đồng với m&agrave;n h&igrave;nh của iPhone 5, chất lượng hiển thị đẹp tương đương. Mọi người khi mới cầm v&agrave;o Gen 5 đều bị chinh phục bởi c&aacute;i m&agrave;n h&igrave;nh n&agrave;y.</p>\r\n\r\n<p><strong>M&aacute;y ảnh.</strong><br />\r\nCamera c&oacute; độ ph&acirc;n giải chỉ c&oacute; 5MP chứ kh&ocirc;ng phải 8MP. D&ugrave; sao th&igrave; đ&acirc;y cũng chỉ l&agrave; một thiết bị di dộng c&oacute; camera, n&ecirc;n chất lượng của n&oacute; kh&ocirc;ng so s&aacute;nh được với c&aacute;c m&aacute;y P&amp;S chuy&ecirc;n nghiệp. Tuy nhi&ecirc;n kh&ocirc;ng c&oacute; nghĩa l&agrave; chất lượng n&oacute; k&eacute;m, ảnh chụp bởi iPod Touch Gen 5 kh&aacute; tốt, m&agrave;u sắc đẹp, sắc n&eacute;t.</p>\r\n\r\n<p><strong>Thời lượng d&ugrave;ng pin.</strong><br />\r\nMặc d&ugrave; pin chỉ c&oacute; dung lượng 1030 mAh, tuy nhi&ecirc;n Gen 5 lại c&oacute; thời lượng sử dụng kh&aacute; tốt, c&oacute; lẽ l&agrave; do n&oacute; kh&ocirc;ng phải g&aacute;nh 3G.</p>\r\n', '', 'RDHA31Gd0UYx9Egf3Ur1435u9Xvs5ZNy.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb', '2014-11-12 06:40:38', '2014-09-01 16:39:58', '', '', 301, '', 0, '', '', 2014, 9),
(84, 'Ipod Touch Jen 5 32GB', '', NULL, 'Gray', '', '', 'RVE3uh5p4UmGUPBtdCCazsIA3fIgHALq.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb1', '2014-09-07 10:23:05', '2014-09-01 16:48:12', '', '', 0, '', 83, '', '', 2014, 9),
(85, 'Ipod Touch Jen 5 32GB', '', NULL, 'Yellow', '', '', 'vXDwUgwv5tD70ylvx3NVP79KrkWCc8nt.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb2', '2014-09-07 10:18:59', '2014-09-01 16:48:45', '', '', 0, '', 83, '', '', 2014, 9),
(86, 'Ipod Touch Jen 5 32GB', '', NULL, 'Blue', '', '', 'e62e8cZ4ISASxvPdLntTqrtgImB3OiVf.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb3', '2014-09-07 10:21:58', '2014-09-01 16:49:10', '', '', 0, '', 83, '', '', 2014, 9),
(87, 'Ipod Touch Jen 5 32GB', '', NULL, 'Pink', '', '', 'hvIeOMRbzQr9tybFQoP8nuzf68meskzZ.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb4', '2014-09-07 10:21:03', '2014-09-01 16:49:36', '', '', 0, '', 83, '', '', 2014, 9),
(88, 'Ipod Touch Jen 5 32GB', '', NULL, 'Silver', '', '', 'eAIRkYrJJqFp2sJadczmwzKOTzHdSdXH.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb5', '2014-09-07 07:23:51', '2014-09-01 16:50:03', '', '', 0, '', 83, '', '', 2014, 9),
(91, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'oAWxGlHToKWINiSB8IzMQcG0kfLmSWND.png', 4, 1, 0, 8390000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb', '2014-11-11 17:58:03', '2014-09-08 03:39:10', '', '', 259, '', 0, '', '', 2014, 9),
(92, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, 'Gray', '', '', '5xglI3XjVJs4w0RXIZD5Hrwnj4WHwbUt.png', 4, 1, 0, 8990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb1', '2014-09-08 04:29:15', '2014-09-08 03:56:18', '', '', 0, '', 91, '', '', 2014, 9),
(93, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, 'White', '', '', 'WrvlITC1GPTFkOjCdUbxjTwgOtsf9qgs.png', 4, 1, 0, 8990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb2', '2014-09-08 04:29:02', '2014-09-08 03:56:38', '', '', 0, '', 91, '', '', 2014, 9),
(94, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'UScKiwXHen3txwmFxepxTqCKKYAVjjap.png', 4, 1, 0, 10380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb', '2014-11-11 17:58:00', '2014-09-08 03:58:18', '', '', 183, '', 0, '', '', 2014, 9),
(95, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, 'Gray', '', '', 'bu1n6CMJ0vjrBVFyAkwAK59IFubd1aCA.png', 4, 1, 0, 10990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb1', '2014-09-08 04:28:39', '2014-09-08 03:59:27', '', '', 0, '', 94, '', '', 2014, 9);
INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(96, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, 'White', '', '', 'RVcNrY0SyV0GLE4KWOtbRaECAd7PWeoD.png', 4, 1, 0, 10990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb2', '2014-09-08 04:28:29', '2014-09-08 03:59:47', '', '', 0, '', 94, '', '', 2014, 9),
(97, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'CTMaPAdeX8UzRgLnFKiQqfeIbJexk4UX.png', 4, 1, 0, 12380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb', '2014-11-11 17:56:58', '2014-09-08 04:02:02', '', '', 172, '', 0, '', '', 2014, 9),
(98, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, 'Gray', '', '', 'yA2m9LKCelE33ZuVyrZNqqTs6x1yUXuD.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb1', '2014-09-08 04:28:05', '2014-09-08 04:26:58', '', '', 0, '', 97, '', '', 2014, 9),
(99, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, 'White', '', '', 'oHtWvNZpGCzPWP560jTMkqkdznahgTdw.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb2', '2014-09-08 04:28:18', '2014-09-08 04:27:14', '', '', 0, '', 97, '', '', 2014, 9),
(100, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'qJRK1Xm0w7IyG44a5dimMVwI7CvXOV0i.png', 4, 1, 0, 13380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb', '2014-11-11 17:57:57', '2014-09-08 04:28:12', '', '', 163, '', 0, '', '', 2014, 9),
(101, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, 'Gray', '', '', 'JTyvkJbYWymiKKyz5Y9gTqcRgH39xg9x.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb1', '2014-09-08 04:32:53', '2014-09-08 04:29:45', '', '', 0, '', 100, '', '', 2014, 9),
(102, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, 'White', '', '', 'BooVWqlh1IdPKc21is1LmQfL6UNPnQjs.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb2', '2014-09-08 04:33:54', '2014-09-08 04:30:06', '', '', 0, '', 100, '', '', 2014, 9),
(104, 'Ipad Mini Rentina 4G 16Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '6cJZSHoqtaf16rwXOchoGuO8wq3SdxLR.png', 4, 1, 0, 10890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb', '2014-11-11 22:02:56', '2014-09-08 06:21:59', '', '', 223, '', 0, '', '', 2014, 9),
(105, 'Ipad Mini Rentina 4G 16Gb', '', NULL, 'Gray', '', '', 'Lz6Q3MPmSo037ZFzowpbf5PlzelJ3P4A.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb1', '2014-09-08 06:40:10', '2014-09-08 06:26:10', '', '', 0, '', 104, '', '', 2014, 9),
(106, 'Ipad Mini Rentina 4G 16Gb', '', NULL, 'White', '', '', 'JY3VtxtZJRR31xczhRaASyLouIMUyce6.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb2', '2014-09-08 06:40:42', '2014-09-08 06:26:30', '', '', 0, '', 104, '', '', 2014, 9),
(107, 'Ipad Mini Rentina 4G 32Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'MmDbQ3q1ua8WEvsLicn2v9TaFhzL0IzJ.png', 4, 1, 0, 12790000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb', '2014-11-11 17:56:22', '2014-09-08 06:27:21', '', '', 220, '', 0, '', '', 2014, 9),
(108, 'Ipad Mini Rentina 4G 32Gb', '', NULL, 'Gray', '', '', 'rjnzVI7shT1o2ir31sTpeUc51xg7mAsP.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb1', '2014-09-08 06:42:22', '2014-09-08 06:27:50', '', '', 0, '', 107, '', '', 2014, 9),
(109, 'Ipad Mini Rentina 4G 32Gb', '', NULL, 'White', '', '', 'hZcCylpdDcP7p6uRCh16fXyWEFDTKbr2.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb2', '2014-09-08 06:42:45', '2014-09-08 06:28:06', '', '', 0, '', 107, '', '', 2014, 9),
(110, 'Ipad Mini Rentina 4G 64Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Cnubq8hfUGbzRRU5BJZ263ezj9suNihT.png', 4, 1, 0, 14890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb', '2014-11-11 17:57:55', '2014-09-08 06:28:58', '', '', 175, '', 0, '', '', 2014, 9),
(111, 'Ipad Mini Rentina 4G 64Gb', '', NULL, 'Gray', '', '', 'rme0L0sbyeesAVs8Zidnc9wxI0ZKVPO3.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb1', '2014-09-08 06:47:18', '2014-09-08 06:29:17', '', '', 0, '', 110, '', '', 2014, 9),
(112, 'Ipad Mini Rentina 4G 64Gb', '', NULL, 'White', '', '', '2NKzovRwi2pOEzBtaiZY0yfhDdwxHgAT.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb2', '2014-09-08 06:47:28', '2014-09-08 06:29:34', '', '', 0, '', 110, '', '', 2014, 9),
(113, 'Ipad Mini Rentina 4G 128Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'BgGsPiJGa0lzUPIuvmLfebmRwBMDBb3q.png', 4, 1, 0, 15890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb', '2014-11-12 06:06:03', '2014-09-08 06:30:20', '', '', 193, '', 0, '', '', 2014, 9),
(114, 'Ipad Mini Rentina 4G 128Gb', '', NULL, 'Gray', '', '', 'ABkNZonfjuaKlfXtd2sjtYgKIOL6iQw0.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb1', '2014-09-08 06:48:11', '2014-09-08 06:30:40', '', '', 0, '', 113, '', '', 2014, 9),
(115, 'Ipad Mini Rentina 4G 128Gb', '', NULL, 'White', '', '', 'y7NxOg0NMrE2dC7udo49ucSMGyqiJ9m4.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb2', '2014-09-08 06:48:34', '2014-09-08 06:30:56', '', '', 0, '', 113, '', '', 2014, 9),
(116, 'Samsung Galaxy S5', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.1&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>16.0 MP &ndash; Camera phụ 2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Ion 2800 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'VAfD2x8AhQqN1CDGGQg8QvcpMSGMQC8t.png', 5, 2, 0, 13990000, 0, '-25200', 0, 'samsung-galaxy-s5', '2014-11-11 20:16:21', '2014-09-08 09:37:19', '', '', 238, '', 0, '', '', 2014, 9),
(117, 'Samsung Note 4', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS, v4.4.4 (KitKat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 805 &ndash; Quadcore 2.7 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>16 MP &ndash; Camera phụ 3.7 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3220 mAh Battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'jzhX5TmGe2NlakYdd6C88Qjc4e9OVChp.png', 5, 2, 0, 0, 0, '-25200', 0, 'samsung-note-4', '2014-11-12 03:47:13', '2014-09-08 09:53:21', '', '', 169, '', 0, '', '', 2014, 9),
(118, '13" Apple MacBook Pro Late 2013 Retina Haswell Review', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '0', 0, '13-apple-macbook-pro-late-2013-retina-haswell-review', '2014-09-08 13:35:34', '2014-09-08 13:35:34', '0', '0', 0, '', 0, '49', 'Ng7734dN420', 2014, 9),
(119, 'Samsung Galaxy Note 3 32Gb Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3200 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZsrpbMjx4rScOzBpauTn4Oa4V2zRFgi8.png', 5, 2, 0, 12990000, 0, '-25200', 0, 'samsung-galaxy-note-3-32gb-gold', '2014-11-11 17:57:31', '2014-09-08 13:44:39', '', '', 190, '', 0, '', '', 2014, 9),
(120, 'Samsung Galaxy Tab S 10.5 T805', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>10.5&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>2560 x 1600</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Exynos 5 Octa 5420 8-core, 1900 MHz, ARM Cortex-A15 &amp; ARM Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>7900 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '58M4X9A9E0Wx50iuaa7yDSbrNgpa4ve7.png', 5, 2, 0, 13300000, 0, '-25200', 0, 'samsung-galaxy-tab-s-105-t805', '2014-11-11 22:48:16', '2014-09-08 13:47:42', '', '', 146, '', 0, '', '', 2014, 9),
(121, 'Sony Xperia C3', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 1280</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Quad-core 1.2 GHz Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 305</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>08GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8 MP &ndash; Camera phụ 5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 2500 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'x3LO7wupfwdCTGGe6Ru1k6KQSQNWcwbe.png', 30, 7, 0, 7300000, 0, '-25200', 0, 'sony-xperia-c3', '2014-11-11 17:57:38', '2014-09-08 14:13:45', '', '', 161, '', 0, '', '', 2014, 9),
(122, 'Sony Xperia Z2 D6503', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.2&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>20.7 MP &ndash; Camera phụ 2.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3200 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Me96v2o6f7Fresdazm5H0xRzRtptZ4rH.png', 30, 7, 0, 11600000, 0, '-25200', 0, 'sony-xperia-z2-d6503', '2014-11-11 17:57:43', '2014-09-08 14:17:06', '', '', 190, '', 0, '', '', 2014, 9),
(123, 'Sony Xperia Z Ultra', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>6.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974 Snapdragon 800 &ndash; Quad-core 2.2 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3050 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'plcO4PDf58oq3hjzvuNlP9s0PtUwF227.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra', '2014-11-12 05:10:06', '2014-09-08 14:19:46', '', '', 174, '', 0, '', '', 2014, 9),
(124, 'Sony Xperia Z Ultra', '', NULL, 'Đen', '', '', 'TJWnUbuZYfSSyx9t9W7zbCrbN7iBOFt2.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra1', '2014-09-09 07:12:04', '2014-09-08 14:23:04', '', '', 0, '', 123, '', '', 2014, 9),
(125, 'Sony Xperia Z Ultra', '', NULL, 'Trắng', '', '', 'P9vNnU6ZowBgKyhr69xqv3fmhOwooBhv.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra2', '2014-09-09 07:01:22', '2014-09-08 14:23:37', '', '', 0, '', 123, '', '', 2014, 9),
(126, 'Sony Xperia Z2 Tablet 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>10.1&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po 6000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'zkLgZ1LGhux1pLCMEBAGMxxL0c03jp67.png', 30, 7, 0, 13500000, 0, '-25200', 0, 'sony-xperia-z2-tablet-4g', '2014-11-12 06:40:23', '2014-09-08 14:30:10', '', '', 163, '', 0, '', '', 2014, 9),
(127, 'Nokia Lumia 930', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Windows Phone 8.1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 8974-AA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera ch&iacute;nh 20 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>2420 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'zuCWvHLHcx8Iz22fPohZmsUiy73GhJhy.png', 42, 3, 0, 12500000, 0, '-25200', 0, 'nokia-lumia-930', '2014-11-11 17:57:29', '2014-09-09 00:58:55', '', '', 135, '', 0, '', '', 2014, 9),
(128, 'Nokia Lumia 1520', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Windows Phone 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>6.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 MSM8974</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera ch&iacute;nh 20 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>3400 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'aab5QdxPMiu17NoZ9d1utKdIyuiMrpI0.png', 42, 3, 0, 10990000, 0, '-25200', 0, 'nokia-lumia-1520', '2014-11-11 17:57:24', '2014-09-09 01:02:41', '', '', 142, '', 0, '', '', 2014, 9),
(129, 'Nokia Lumia 630', '', NULL, '', '<table border="">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Mạng 2G</p>\r\n			</td>\r\n			<td>\r\n			<p>GSM 850 / 900 / 1800 / 1900 - SIM 1 &amp; SIM 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mạng 3G</p>\r\n			</td>\r\n			<td>\r\n			<p>HSDPA 850 / 900 / 1900 / 2100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ra mắt</p>\r\n			</td>\r\n			<td>\r\n			<p>Th&aacute;ng 04 năm 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&agrave;y c&oacute; h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>10/05/2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>K&Iacute;CH THƯỚC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>129.5 x 66.7 x 9.2 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Trọng lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>134 g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>HIỂN THỊ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Loại</p>\r\n			</td>\r\n			<td>\r\n			<p>M&agrave;n h&igrave;nh cảm ứng điện dung IPS LCD, 16 triệu m&agrave;u</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>480 x 800 pixels, 4.5 inches, 228 ppi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- Cảm ứng đa điểm<br />\r\n			- C&ocirc;ng nghệ hiển thị ClearBlack&nbsp;<br />\r\n			- Cảm biến gia tốc<br />\r\n			- Cảm biến &aacute;nh s&aacute;ng<br />\r\n			- Cảm biến con quay hồi chuyển<br />\r\n			- Cảm biến la b&agrave;n số</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>&Acirc;M THANH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Kiểu chu&ocirc;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>B&aacute;o rung, nhạc chu&ocirc;ng MP3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&otilde; ra audio 3.5mm</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- C&ocirc;ng nghệ &acirc;m thanh Dolby headphone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>BỘ NHỚ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Danh bạ</p>\r\n			</td>\r\n			<td>\r\n			<p>Khả năng lưu c&aacute;c mục v&agrave; fields kh&ocirc;ng giới hạn, danh bạ h&igrave;nh ảnh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&aacute;c số đ&atilde; gọi</p>\r\n			</td>\r\n			<td>\r\n			<p>Khả năng lưu kh&ocirc;ng giới hạn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ trong</p>\r\n			</td>\r\n			<td>\r\n			<p>8 GB, 512 MB RAM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khe cắm thẻ nhớ</p>\r\n			</td>\r\n			<td>\r\n			<p>microSD (TransFlash) hỗ trợ l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>TRUYỀN DỮ LIỆU</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>GPRS</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>EDGE</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ 3G</p>\r\n			</td>\r\n			<td>\r\n			<p>HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>NFC</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>WLAN</p>\r\n			</td>\r\n			<td>\r\n			<p>Wi-Fi 802.11 b/g/n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bluetooth</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, v4.0 với A2DP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hồng ngoại</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, microUSB v2.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>CHỤP ẢNH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera ch&iacute;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>5 MP, 2592 х 1944 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đặc điểm</p>\r\n			</td>\r\n			<td>\r\n			<p>Geo-tagging</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Quay phim</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, 720p@30fps</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera phụ</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>ĐẶC ĐIỂM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ điều h&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Microsoft Windows Phone 8.1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ xử l&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Quad-core 1.2 GHz Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chipset</p>\r\n			</td>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tin nhắn</p>\r\n			</td>\r\n			<td>\r\n			<p>SMS(threaded view), MMS, Email, Push Mail, IM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tr&igrave;nh duyệt</p>\r\n			</td>\r\n			<td>\r\n			<p>HTML</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Radio</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tr&ograve; chơi</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, c&oacute; thể tải th&ecirc;m tại Mai Nguy&ecirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u sắc</p>\r\n			</td>\r\n			<td>\r\n			<p>Đen, Trắng, Cam, V&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&ocirc;n ngữ</p>\r\n			</td>\r\n			<td>\r\n			<p>Tiếng Anh, Tiếng Việt</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Định vị to&agrave;n cầu</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Java</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, giả lập Java MIDP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- T&iacute;ch hợp mạng x&atilde; hội<br />\r\n			- Nghe nhạc MP3/WMA/WAV/eAAC+<br />\r\n			- Xem video MP4/H.264/H.263/WMV<br />\r\n			- Lịch tổ chức<br />\r\n			- Xem văn bản<br />\r\n			- Chỉnh sửa h&igrave;nh ảnh / video<br />\r\n			- Ghi &acirc;m / Quay số / Ra lệnh bằng giọng n&oacute;i<br />\r\n			- Nhập liệu đo&aacute;n trước từ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>PIN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin chuẩn</p>\r\n			</td>\r\n			<td>\r\n			<p>Li-Ion 1830 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Z7mTBYXEap4VcfG70mOf2X1RyfT33o9T.png', 42, 3, 0, 3490000, 0, '-25200', 0, 'nokia-lumia-630', '2014-11-11 17:57:27', '2014-09-09 01:11:40', '', '', 139, '', 0, '', '', 2014, 9),
(130, 'Nokia 515 Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>S40</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>2.4&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>240 x 320</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>64MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>1200 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'N0a9qUrfhxVilQSqv5dUXBjnvh0nUWfo.png', 42, 3, 0, 2990000, 0, '-25200', 0, 'nokia-515-gold', '2014-11-11 17:57:21', '2014-09-09 01:16:43', '', '', 178, '', 0, '', '', 2014, 9),
(131, 'HTC One M8 (16GB)', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera trước 5.0 MP, Camera đ&ocirc;i 4.0 MP AF &ldquo;UltraPixel&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Po 2600mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Guwt8C4XWp50JUgQ0q3wldLc8xYqSs7v.png', 6, 5, 0, 13200000, 0, '-25200', 0, 'htc-one-m8-16gb', '2014-11-11 17:57:07', '2014-09-09 01:20:35', '', '', 157, '', 0, '', '', 2014, 9),
(132, 'HTC One (M8) Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera trước 5.0 MP, Camera đ&ocirc;i 4.0 MP AF &ldquo;UltraPixel&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Po 2600mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '4vMccUkHDSggBFA2ZQH4fVkCp8KLj3ZC.png', 6, 5, 0, 12900000, 0, '-25200', 0, 'htc-one-m8-gold', '2014-11-11 17:57:05', '2014-09-09 01:22:30', '', '', 165, '', 0, '', '', 2014, 9);
INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(133, 'HTC Desire 816', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 1280</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon&trade; 400, 1,6 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 305</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>1.5GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>08GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 5MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-ion 2600 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'FN52qSv1A1jxddx9cm6byUWlcltsk1Am.png', 6, 5, 0, 6499000, 0, '-25200', 0, 'htc-desire-816', '2014-11-12 07:26:28', '2014-09-09 01:25:17', '', '', 235, '', 0, '', '', 2014, 9),
(134, 'HTC One Max 16GB', '', NULL, '', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:Full HD, 5.9&quot;, 1080 x 1920 pixels</li>\r\n	<li>CPU:Qualcomm Snapdragon 600, 4 nh&acirc;n, 1.7 GHz</li>\r\n	<li>RAM2 GB</li>\r\n	<li>Hệ điều h&agrave;nh:Android 4.3 (Jelly Bean)</li>\r\n	<li>Camera ch&iacute;nh:4,0 UltraPixel, Quay phim FullHD 1080p@30fps</li>\r\n	<li>Camera phụ:2.1 MP</li>\r\n	<li>Bộ nhớ trong:16 GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i:64 GB</li>\r\n	<li>Dung lượng pin:3300 mAh</li>\r\n</ul>\r\n', '', 'TfNBljiQscKGvaIRqo2wjaFx8JBEEOsL.png', 6, 5, 0, 11990000, 0, '-25200', 0, 'htc-one-max-16gb', '2014-11-11 17:57:10', '2014-09-09 01:30:12', '', '', 160, '', 0, '', '', 2014, 9),
(135, 'LG G3 32GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, Airplay, GPS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', 49, 4, 0, 13990000, 0, '-25200', 0, 'lg-g3-32gb', '2014-11-12 06:15:45', '2014-09-09 01:32:01', '', '', 143, '', 0, '', '', 2014, 9),
(136, 'LG G3 16GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, Airplay, GPS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'bayud0BYA48gYhSx50rd8HoEOe4SBHNk.png', 49, 4, 0, 11990000, 0, '-25200', 0, 'lg-g3-16gb', '2014-11-11 17:57:12', '2014-09-09 02:54:32', '', '', 154, '', 0, '', '', 2014, 9),
(138, 'LG Optimus G2 – 32GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974 Snapdragon 800 &ndash; Quad-core 2.2 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'M1nMFUtvr1Or2p3HdGOrT4v4GAcbBp2a.png', 49, 4, 0, 12399000, 0, '-25200', 0, 'lg-optimus-g2-32gb', '2014-11-11 17:57:19', '2014-09-09 03:58:13', '0', '0', 176, '', 0, '', '', 2014, 9),
(139, 'Blackberry Q10', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>BlackBerry 10.1 OS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>3.1&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 720</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon S4 Plus MSM8960</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 225</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 2100 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZwCHH4h8GaIoofd7UpRjIwR47MKkOB9E.png', 31, 6, 0, 6990000, 0, '-25200', 0, 'blackberry-q10', '2014-11-11 17:57:00', '2014-09-09 04:15:34', '0', '0', 181, '', 0, '', '', 2014, 9),
(140, 'Iphone 6 16Gb', '', NULL, '', '', '', 'fQaEzp4h8090tJsGBqe8Y4pXzoKc2mzP.png', 3, 1, 0, 17990000, -1, '1411059600', 0, 'iphone-6-16gb', '2014-11-12 06:14:00', '2014-09-10 09:02:08', '0', '0', 1643, '', 0, '', '', 2014, 9),
(141, 'Iphone 6 16Gb', '', NULL, 'Gray', '', '', 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb1', '2014-09-11 10:56:48', '2014-09-10 09:05:13', '0', '0', 0, '', 140, '', '', 2014, 9),
(142, 'Iphone 6 16Gb', '', NULL, 'Siver', '', '', 'BOr0xULVQsRpI7N4pJYxgJ2oQ13zQSV1.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb2', '2014-09-10 09:52:37', '2014-09-10 09:05:23', '0', '0', 0, '', 140, '', '', 2014, 9),
(143, 'Iphone 6 16Gb', '', NULL, 'Gold', '', '', 'xdpvZWBbNIlmFlXC3KI5748Mzs7outkw.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb3', '2014-09-10 09:53:09', '2014-09-10 09:05:32', '0', '0', 0, '', 140, '', '', 2014, 9),
(145, 'Iphone 6 64Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 4.7&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 750 x 1334 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 64GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'PinFs6ZvfGdTsfkZnll4LerJB3S0UyXV.png', 3, 1, 0, 19990000, -1, '1411059600', 0, 'iphone-6-64gb', '2014-11-12 07:37:01', '2014-09-10 12:40:14', '0', '0', 680, '', 0, '', '', 2014, 9),
(146, 'Iphone 6 64Gb', '', NULL, 'Gray', '', '', 'aGLyWwJLpma4PxQUJVTbz1axzUdez4UY.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb1', '2014-09-11 10:59:42', '2014-09-10 12:40:26', '0', '0', 0, '', 145, '', '', 2014, 9),
(147, 'Iphone 6 64Gb', '', NULL, 'Silver', '', '', 'wEeDjDlA0yKbwLGjicBBrVwuANX6n8FO.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb2', '2014-09-11 11:03:51', '2014-09-10 12:40:36', '0', '0', 0, '', 145, '', '', 2014, 9),
(148, 'Iphone 6 64Gb', '', NULL, 'Gold', '', '', 'rzJeFvvSeLON5sLZYY05adQKquavLWQY.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb3', '2014-09-11 11:01:28', '2014-09-10 12:40:45', '0', '0', 0, '', 145, '', '', 2014, 9),
(149, 'Iphone 6 128Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 4.7&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 750 x 1334 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 128GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '1HfXW5PEN1dsW6M5AjaOJ4wkuMf8H47Q.png', 3, 1, 0, 21990000, -1, '1411059600', 0, 'iphone-6-128gb', '2014-11-12 07:36:43', '2014-09-10 12:41:20', '0', '0', 365, '', 0, '', '', 2014, 9),
(150, 'Iphone 6 128Gb', '', NULL, 'Gray', '', '', 'z44VBnIyqSHWXYk073gH6zDvMxtHsrdy.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb1', '2014-09-11 11:02:58', '2014-09-10 12:41:32', '0', '0', 0, '', 149, '', '', 2014, 9),
(151, 'Iphone 6 128Gb', '', NULL, 'Silver', '', '', 'nP79A0MGZbwbDQzXXtPldVmgE9QvSgHj.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb2', '2014-09-18 06:44:52', '2014-09-10 12:41:46', '0', '0', 0, '', 149, '', '', 2014, 9),
(152, 'Iphone 6 128Gb', '', NULL, 'Gold', '', '', 'NRcoZNn4RVvlTqaD7gEZwMBT6Rif6AQz.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb3', '2014-09-18 09:22:38', '2014-09-10 12:41:57', '0', '0', 0, '', 149, '', '', 2014, 9),
(153, 'Iphone 6 Plus 16Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 16GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'KZgGU6r5jw4zvVAyqS2CthFbt0UX0EX4.png', 3, 1, 0, 19990000, -1, '1411059600', 0, 'iphone-6-plus-16gb', '2014-11-12 07:36:19', '2014-09-10 12:45:53', '0', '0', 634, '', 0, '', '', 2014, 9),
(154, 'Iphone 6 Plus 16Gb', '', NULL, 'Gray', '', '', '3AVF2Tj2gnfLZMEhNGW8rUpKw0OCf9As.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb1', '2014-09-18 09:20:43', '2014-09-10 12:46:05', '0', '0', 0, '', 153, '', '', 2014, 9),
(155, 'Iphone 6 Plus 16Gb', '', NULL, 'Silver', '', '', 'xwznMULDxdW9jQK2dPatny6EfmOMoti4.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb2', '2014-09-18 09:20:51', '2014-09-10 12:46:20', '0', '0', 0, '', 153, '', '', 2014, 9),
(156, 'Iphone 6 Plus 16Gb', '', NULL, 'Gold', '', '', 'WQWJmxBdPho467ffEbqJBG2ICsJN1wcN.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb3', '2014-09-18 09:21:00', '2014-09-10 12:46:32', '0', '0', 0, '', 153, '', '', 2014, 9),
(157, 'Iphone 6 Plus 64Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 64GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', 3, 1, 0, 22990000, -1, '1411059600', 0, 'iphone-6-plus-64gb', '2014-11-12 07:33:51', '2014-09-10 12:47:22', '0', '0', 809, '', 0, '', '', 2014, 9),
(158, 'Iphone 6 Plus 64Gb', '', NULL, 'Gray', '', '', '4KtnukBM5GYsIOWhRkHkCh2O9TsE6V0N.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb1', '2014-09-18 10:09:08', '2014-09-10 12:47:40', '0', '0', 0, '', 157, '', '', 2014, 9),
(159, 'Iphone 6 Plus 64Gb', '', NULL, 'Silver', '', '', 'KaGThPYbbBFSJumckFTsCR2iptxSlSOX.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb2', '2014-09-18 10:09:26', '2014-09-10 12:47:53', '0', '0', 0, '', 157, '', '', 2014, 9),
(160, 'Iphone 6 Plus 64Gb', '', NULL, 'Gold', '', '', 'hfIKgDWeIEfKhh25WyndSXhdxLGfyLIg.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb3', '2014-09-18 10:09:43', '2014-09-10 12:48:00', '0', '0', 0, '', 157, '', '', 2014, 9),
(161, 'Iphone 6 Plus 128Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 128GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'bVW9dGD74YCIDFeV8NSywcRog6sZsdmq.png', 3, 1, 0, 25990000, -1, '1411059600', 0, 'iphone-6-plus-128gb', '2014-11-12 06:31:24', '2014-09-10 12:48:25', '0', '0', 1108, '', 0, '', '', 2014, 9),
(162, 'Iphone 6 Plus 128Gb', '', NULL, 'Gray', '', '', 'SYeQB6Vvq0G2TFoRYt44mzopE7XEiPdx.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb1', '2014-09-18 10:10:42', '2014-09-10 12:48:35', '0', '0', 0, '', 161, '', '', 2014, 9),
(163, 'Iphone 6 Plus 128Gb', '', NULL, 'Silver', '', '', 'w1bz1m8JP8Wuf0CYIancUIbholEunsaM.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb2', '2014-09-18 10:15:52', '2014-09-10 12:48:52', '0', '0', 0, '', 161, '', '', 2014, 9),
(164, 'Iphone 6 Plus 128Gb', '', NULL, 'Gold', '', '', 'LpzWUK6QUK2Sy8Sj6PcrJ9syRsr836It.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb3', '2014-09-19 02:32:26', '2014-09-10 12:49:00', '0', '0', 0, '', 161, '', '', 2014, 9),
(165, 'TungTest', '', NULL, '', '<p>Test</p>\r\n', '', 'iBqsUm0O5VZHpTa84rjZjz6T7esqmLRW.png', 3, 1, 0, 999999999, 0, '-25200', 1, 'tungtest', '2014-09-11 03:39:14', '2014-09-11 03:07:13', '0', '0', 0, '', 0, '', '', 2014, 9),
(166, 'TungTest', '', NULL, 'Gray', '', '', '1vZcpke61HdjxuJIfSNKTicCK4swcpXZ.png', 3, 1, 0, 999999999, 0, '-25200', 1, 'tungtest1', '2014-09-11 03:31:59', '2014-09-11 03:07:34', '0', '0', 0, '', 165, '', '', 2014, 9),
(167, 'SoundLink® Mini Bluetooth® speaker', '', NULL, '', '<p>- Thiết kế đột ph&aacute; mới của Bose gi&uacute;p bạn tận hưởng &acirc;m thanh trung thực, đầy đặn chỉ từ một chiếc loa nhỏ gọn trong l&ograve;ng b&agrave;n tay.<br />\r\n- Bộ tản &acirc;m thụ động được đặt ch&iacute;nh giữa loa gi&uacute;p n&eacute;n hơi nhiều hơn, gi&uacute;p t&aacute;i tạo tiếng bass s&acirc;u trầm mạnh mẽ hơn.<br />\r\n- Hai driver si&ecirc;u nhỏ gọn với v&ograve;ng nam ch&acirc;m được l&agrave;m từ Neodymium gi&uacute;p t&aacute;i tạo &acirc;m Trung-Cao mạnh mẽ.<br />\r\n- Bộ vi xử l&yacute; t&iacute;n hiệu kỹ thuật số gi&uacute;p duy tr&igrave; độ ch&iacute;nh x&aacute;c của c&aacute;c tần số, gi&uacute;p &acirc;m thanh ph&aacute;t ra lu&ocirc;n đạt t&iacute;nh trung thực, tự nhi&ecirc;n d&ugrave; ở bất kỳ mức volume n&agrave;o, hay thể loại nhạc n&agrave;o.<br />\r\n- Sẵn s&agrave;ng c&ugrave;ng bạn đến bất cứ nơi đ&acirc;u với kết nối Bluetooth qua c&aacute;c thiết bị nghe nhạc hay Smartphone, Tablet.<br />\r\n- Vỏ l&agrave;m bằng nh&ocirc;m nguy&ecirc;n khối mang lại vẻ chắc chắn v&agrave; sang trọng trong từng đường n&eacute;t.<br />\r\n- Pin sạc Lithium-Ion gi&uacute;p bạn nghe nhạc li&ecirc;n tục từ 5 - 8 giờ.<br />\r\n- Đế cắm đi k&egrave;m gi&uacute;p bạn thuận tiện hơn khi sạc pin cho loa tại nh&agrave;.<br />\r\n- Nhiều lựa chọn Cover với c&aacute;c m&agrave;u sắc kh&aacute;c nhau ph&ugrave; hợp với từng sở th&iacute;ch của bạn.<br />\r\n- Accessory Travel Bag b&aacute;n rời gi&uacute;p bạn dễ d&agrave;ng hơn trong việc bảo quản loa khi đi xa.<br />\r\n- K&iacute;ch thước: 5.08 x 5.84 x 18.03 cm<br />\r\n- Trọng lượng: 0.67 kg<br />\r\n- Sản phẩm thương hiệu Bose (USA)</p>\r\n', '', 'A9I91RCUg3IFIyxogzKQtbVr6l7Cp97J.jpg', 35, 8, 0, 5990000, 0, '-25200', 1, 'soundlink-mini-bluetooth-speaker', '2014-09-18 06:20:43', '2014-09-16 06:35:26', '0', '0', 2, '', 0, '', '', 2014, 9),
(168, 'Philips Fidelio SoundSphere DS9800w', '', NULL, '', '', '', 'HAJ7Q8NO75LceYcIsCZmHYaFSGZpKAYi.jpeg', 35, 9, 0, 18990000, 0, '-25200', 1, 'philips-fidelio-soundsphere-ds9800w', '2014-09-18 06:20:49', '2014-09-16 06:57:17', '0', '0', 0, '', 0, '', '', 2014, 9),
(169, 'Anker 40W 5-Port Family-Sized Desktop USB Charger with PowerIQ™ Technology', '', NULL, '', '<p>Input AC 100-240V<br />\r\nUSB Output 5V / 8A (total)<br />\r\nColor Black<br />\r\nSize 91 x 58 x 26mm / 3.6 x 2.3 x 1.0in<br />\r\nWeight 130g / 4.6oz</p>\r\n', '', 'ywAIEOYLR4DEkMk0f71kb1ky3AL5bbgq.jpg', 39, 10, 0, 990000, 0, '-25200', 1, 'anker-40w-5-port-family-sized-desktop-usb-charger-with-poweriq-technology', '2014-09-18 06:20:53', '2014-09-16 07:22:15', '0', '0', 2, '', 0, '', '', 2014, 9),
(170, 'Iphone 4s', '', NULL, '', '<p>M&agrave;n h&igrave;nh:DVGA, 3.5&quot;, 640 x 960 pixels<br />\r\nCPU:Apple A5, 2 nh&acirc;n, 1 GHz<br />\r\nRAM512 MB<br />\r\nHệ điều h&agrave;nh:iOS 5<br />\r\nCamera ch&iacute;nh:8.0 MP, Quay phim FullHD 1080p@30fps<br />\r\nCamera phụ:VGA (0.3 Mpx)<br />\r\nBộ nhớ trong:16 GB<br />\r\nThẻ nhớ ngo&agrave;i:Kh&ocirc;ng<br />\r\nDung lượng pin:1420 mAh</p>\r\n', '', 'M1FPNk2bm0iGsuFqkTQ99eBMtO29RF9b.png', 25, 1, 0, 6500000, 0, '-25200', 0, 'iphone-4s', '2014-11-11 17:58:24', '2014-09-27 04:29:27', '0', '0', 157, '', 0, '', '', 2014, 9),
(171, 'Iphone 5 Đen', '', NULL, 'Đen', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:DVGA, 4.0&quot;, 640 x 1136 pixels</li>\r\n	<li>CPU:Apple A6, 2 nh&acirc;n, 1.3 GHz</li>\r\n	<li>RAM1 GB</li>\r\n	<li>Hệ điều h&agrave;nh:iOS 6</li>\r\n	<li>Camera ch&iacute;nh:8.0 MP, Quay phim FullHD 1080p@30fps</li>\r\n	<li>Camera phụ:1.2 MP</li>\r\n	<li>Bộ nhớ trong:16 GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i:Kh&ocirc;ng</li>\r\n	<li>Dung lượng pin:1440 mAh</li>\r\n</ul>\r\n', '', 'Hg6OR0LAWCXBxRFL6RBo4tHYWLxn3GaZ.png', 25, 1, 0, 8900000, 0, '-25200', 0, 'iphone-5-den', '2014-11-12 06:26:00', '2014-09-27 04:40:28', '0', '0', 152, '', 0, '', '', 2014, 9),
(172, 'Iphone 5 Trắng', '', NULL, 'Trắng', '', '', 'XNZZHmo0U5EJYq5TOzzy6XRtBXS5U1Br.png', 25, 1, 0, 8900000, 0, '-25200', 0, 'iphone-5-trang', '2014-11-12 06:25:47', '2014-09-27 04:41:26', '0', '0', 226, '', 0, '', '', 2014, 9),
(174, 'Iphone 5s', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>4.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>640 x 1136</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Ion &ndash; 1570 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'J59cP4slSniwqrmWWW65MpGCejz8un7x.png', 25, 1, 0, 11500000, 0, '-25200', 0, 'iphone-5s', '2014-11-11 17:58:17', '2014-09-27 04:48:11', '0', '0', 425, '', 0, '', '', 2014, 9),
(175, 'Ipad 4', '', NULL, '', '<ul>\r\n	<li>M&agrave;n h&igrave;nhLED-backlit IPS Rentina LCD, 9.7 inch</li>\r\n	<li>Hệ điều h&agrave;nhiOS 6</li>\r\n	<li>Vi xử l&iacute; CPUDual - Core, 1.4 GHz</li>\r\n	<li>RAM1 GB</li>\r\n	<li>Bộ nhớ trong16 GB</li>\r\n	<li>Camera5 MP(2592 x 1944 pixels)</li>\r\n	<li>Kết nốiC&oacute; 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps), Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot</li>\r\n	<li>Đ&agrave;m thoạiFace Time</li>\r\n	<li>Dung lượng pin11.560 mAh</li>\r\n	<li>Trọng lượng662</li>\r\n</ul>\r\n', '', '8DjVyo9xvzUxO17DyI4A5WNcYwKrVFis.png', 25, 1, 0, 0, 0, '-25200', 0, 'ipad-4', '2014-11-09 11:29:22', '2014-09-27 04:51:50', '0', '0', 126, '', 0, '', '', 2014, 9),
(176, 'Mac Pro Late 2013', '', NULL, '', '<p>Introduced&nbsp;&nbsp; &nbsp;June 2013 (Shipped December 2013)<br />\r\nDiscontinued&nbsp;&nbsp; &nbsp;--<br />\r\nModel Identifier&nbsp;&nbsp; &nbsp;MacPro6,1<br />\r\nModel Number&nbsp;&nbsp; &nbsp;A1481<br />\r\nEMC&nbsp;&nbsp; &nbsp;2630<br />\r\nOrder Number&nbsp;&nbsp; &nbsp;ME253LL/A (Quad-Core) MD878LL/A (6-Core)<br />\r\nInitial Price&nbsp;&nbsp; &nbsp;$2,999 (Quad-Core) $3,999 (6-Core)<br />\r\nSupport Status&nbsp;&nbsp; &nbsp;Supported<br />\r\nWeight and Dimensions&nbsp;&nbsp; &nbsp;11 lbs., 9.9&quot; H x 6.6&quot; D<br />\r\nPROCESSOR</p>\r\n\r\n<p>Processor&nbsp;&nbsp; &nbsp;Intel Xeon E5-1620, E5-1650, E5-1680, E5-2697 (&quot;Ivy Bridge&quot;)<br />\r\nProcessor Speed&nbsp;&nbsp; &nbsp;3.7, 3.5, 3.0, or 2.7 GHz<br />\r\nArchitecture&nbsp;&nbsp; &nbsp;64-bit<br />\r\nNumber of Cores&nbsp;&nbsp; &nbsp;4, 6, 8, or 12<br />\r\nCache&nbsp;&nbsp; &nbsp;10 MB (Quad-Core) 12 MB (6-Core) 25 MB (8-Core) 30 MB (12-Core) L3<br />\r\nSystem Bus&nbsp;&nbsp; &nbsp;Intel Direct Media Interface (DMI) 2.0 at 5 GT/s (Quad-Core, 6-Core, 8-Core) or 2 - Intel QuickPath Interconnect (QPI) at 8.0 GT/s (12-Core)<br />\r\nSTORAGE AND MEDIA</p>\r\n\r\n<p>Storage&nbsp;&nbsp; &nbsp;256, 512 GB, or 1 TB flash storage<br />\r\nMedia&nbsp;&nbsp; &nbsp;None<br />\r\nPERIPHERALS</p>\r\n\r\n<p>Peripherals&nbsp;&nbsp; &nbsp;None</p>\r\n', '', 'YGcp4JP3RcSfr4PkWa8qkFEvfXQ9H1xi.jpeg', 50, 1, 0, 0, 0, '0', 0, 'mac-pro-late-2013', '2014-11-11 19:02:08', '2014-10-10 10:19:40', '0', '0', 80, '', 0, '', '', 2014, 10),
(177, 'Mac Pro Late 2013', '', NULL, 'Tổng thể', '', '', '2WHWN30lkTLOTiDzPd7d5nq2B0g1jZwA.jpeg', 50, 1, 0, 0, 0, '-25200', 0, 'mac-pro-late-20131', '2014-10-10 10:21:21', '2014-10-10 10:20:07', '0', '0', 0, '', 176, '', '', 2014, 10),
(178, 'Mac Pro Late 2013', '', NULL, 'Nắp lưng', '', '', '1DgsWY20DhRS9VtEqpPsTEKiN6OVIQTq.jpeg', 50, 1, 0, 0, 0, '-25200', 0, 'mac-pro-late-20132', '2014-10-10 10:21:09', '2014-10-10 10:20:26', '0', '0', 0, '', 176, '', '', 2014, 10),
(179, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'RAzv730qcxp22bNNT79H6wabUog6mc5x.png', 4, 1, 0, 9990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi', '2014-11-12 06:15:50', '2014-10-24 10:48:13', '0', '0', 65, '', 0, '', '', 2014, 10),
(180, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Gray', '', '', '2yMYsuf7Z3AV8EneRsVuSMi5dO47l8Ax.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi1', '2014-10-24 10:54:03', '2014-10-24 10:54:02', '0', '0', 0, '', 179, '', '', 2014, 10),
(181, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Silver', '', '', 'Lz2V0JKXQZZRatkorI2MvNYlbyvlqFZp.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi2', '2014-10-24 10:54:52', '2014-10-24 10:54:52', '0', '0', 0, '', 179, '', '', 2014, 10),
(182, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Gold', '', '', '9u8I4YlJZQtKmgdoMz7oXe7TL76Mc6PN.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi3', '2014-10-24 10:56:13', '2014-10-24 10:56:13', '0', '0', 0, '', 179, '', '', 2014, 10),
(183, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'LkAKeCjx5ChkqCZgAINwe2vyMoYiNOXW.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi', '2014-11-12 06:15:51', '2014-10-24 10:59:06', '0', '0', 61, '', 0, '', '', 2014, 10),
(184, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Gray', '', '', 'LKDocNFG9VURj6GAdebBUkwG22bM5UZ9.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi1', '2014-10-24 10:59:58', '2014-10-24 10:59:58', '0', '0', 0, '', 183, '', '', 2014, 10),
(185, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Silver', '', '', 'cvh1naHLNnf9CX0YqcjaoidXgvSwgoao.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi2', '2014-10-24 11:00:47', '2014-10-24 11:00:46', '0', '0', 0, '', 183, '', '', 2014, 10),
(186, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Gold', '', '', 'h7MVJkwZ76KJVzMeg2xSvb6l0czEqThW.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi3', '2014-10-24 11:01:12', '2014-10-24 11:01:12', '0', '0', 0, '', 183, '', '', 2014, 10),
(187, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZgDOkVnhYt7mxz8bcRCzgluFRwynzNeU.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi', '2014-11-12 06:15:53', '2014-10-24 11:02:30', '0', '0', 40, '', 0, '', '', 2014, 10),
(188, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Gray', '', '', 'IAo9Qd6jIQQXSK5OCqUkVQHidcwwWJcv.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi1', '2014-10-24 11:03:47', '2014-10-24 11:03:47', '0', '0', 0, '', 187, '', '', 2014, 10),
(189, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Silver', '', '', 'vX3VPjgISn6wgTENGwebnwNiG99l33pe.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi2', '2014-10-24 11:04:12', '2014-10-24 11:04:12', '0', '0', 0, '', 187, '', '', 2014, 10),
(190, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Gold', '', '', 'Z1v1AdyIp2vOGuClZxCl01hSecT5Z68L.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi3', '2014-10-24 11:04:31', '2014-10-24 11:04:31', '0', '0', 0, '', 187, '', '', 2014, 10),
(191, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZXHbpPvkAAt71XbGXM7jKinEidTAjecG.png', 4, 1, 0, 14790000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g', '2014-11-12 06:13:02', '2014-10-24 11:16:15', '0', '0', 40, '', 0, '', '', 2014, 10),
(192, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Gray', '', '', 'xUcN4yxzY7ySXo2xrJcz9d0aBiYQCdHi.png', 4, 1, 0, 12790000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g1', '2014-10-31 06:07:48', '2014-10-24 11:18:34', '0', '0', 0, '', 191, '', '', 2014, 10),
(193, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Silver', '', '', 'YEl4Vqz0DzqiLpEkwzoSCLBBM5YsHp0f.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g2', '2014-10-24 11:19:05', '2014-10-24 11:19:05', '0', '0', 0, '', 191, '', '', 2014, 10),
(194, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Gold', '', '', 'qPniCo6o8CwJDpUPRcy8UeOtxfFSfJ9I.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g3', '2014-10-24 11:19:26', '2014-10-24 11:19:26', '0', '0', 0, '', 191, '', '', 2014, 10),
(195, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'mO1jfJmn2gvHtB80Rty7uCFuPodoDZLZ.png', 4, 1, 0, 14790000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g', '2014-11-12 06:13:03', '2014-10-24 11:21:41', '0', '0', 46, '', 0, '', '', 2014, 10),
(196, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Gray', '', '', 'Shu0bYDfyQw6AfLK53MbNrwZd4B6zujg.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g1', '2014-10-24 11:23:25', '2014-10-24 11:23:25', '0', '0', 0, '', 195, '', '', 2014, 10),
(197, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Silver', '', '', 'hUO7jyUim9QtSbzpd1fR2nSwSOsLwVrB.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g2', '2014-10-24 11:23:51', '2014-10-24 11:23:51', '0', '0', 0, '', 195, '', '', 2014, 10),
(198, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Gold', '', '', 'MoS75tDulQr1IEhcjANXiMBDFSXGBp3M.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g3', '2014-10-24 11:24:16', '2014-10-24 11:24:16', '0', '0', 0, '', 195, '', '', 2014, 10),
(199, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'lGhAt6yuAWCWysGrwpjafVwMBzVro96n.png', 4, 1, 0, 16890000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g', '2014-11-12 06:13:04', '2014-10-24 11:25:51', '0', '0', 38, '', 0, '', '', 2014, 10),
(200, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Gray', '', '', 't60CtMnOyO4MXz71H68LYdzbZs487yRU.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g1', '2014-10-24 11:30:26', '2014-10-24 11:30:26', '0', '0', 0, '', 199, '', '', 2014, 10),
(201, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Silver', '', '', 'qBDty1BMQkNfbS1yENFDt7YHnDVoXI37.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g2', '2014-10-24 11:30:57', '2014-10-24 11:30:56', '0', '0', 0, '', 199, '', '', 2014, 10),
(202, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Gold', '', '', 'frwQItSwkZcJsHJh4q88STHOQuUVKfzO.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g3', '2014-10-24 11:31:31', '2014-10-24 11:31:31', '0', '0', 0, '', 199, '', '', 2014, 10),
(203, 'Ipad Air 2 16Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'LYKnoVHlXGna7CH3IwjTIQNlSCOofRjA.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi', '2014-11-12 06:21:37', '2014-10-24 11:39:03', '0', '0', 73, '', 0, '', '', 2014, 10),
(204, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Gray', '', '', 'ZoMBfDyq1uw5lJChLKi1bnPhptv5ICer.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi1', '2014-10-24 11:40:13', '2014-10-24 11:40:13', '0', '0', 0, '', 203, '', '', 2014, 10),
(205, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Silver', '', '', '2JQDIYhNLj5n6qz5jcCjDnJ7ZPXGmTKc.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi2', '2014-10-24 11:41:11', '2014-10-24 11:41:11', '0', '0', 0, '', 203, '', '', 2014, 10),
(206, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Gold', '', '', '5GhqDUpwfP2pxXm2IdiyCq1D9x96MBFb.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi3', '2014-10-24 11:41:34', '2014-10-24 11:41:34', '0', '0', 0, '', 203, '', '', 2014, 10),
(207, 'Ipad Air 2 64Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'OicXfivSeHdOaJgdDByqCdRBuYv2SxIk.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi', '2014-11-12 06:30:27', '2014-10-24 11:43:44', '0', '0', 99, '', 0, '', '', 2014, 10),
(208, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Gray', '', '', 'mWifZkX8PwZYZgLH33zbN4NlPjyEfwIr.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi1', '2014-10-24 11:44:27', '2014-10-24 11:44:27', '0', '0', 0, '', 207, '', '', 2014, 10),
(209, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Silver', '', '', 'UlyEXgkMNwlvw1p7M2Fah9BYlcfR4ERO.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi2', '2014-10-24 11:44:53', '2014-10-24 11:44:53', '0', '0', 0, '', 207, '', '', 2014, 10),
(210, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Gold', '', '', 'U7e7kmVYx0SgLmB7NqDvZfInJIdY6rzT.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi3', '2014-10-24 11:45:25', '2014-10-24 11:45:24', '0', '0', 0, '', 207, '', '', 2014, 10),
(211, 'Ipad Air 2 128Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ulehe7rWczQgoJ507GksSeSR2VEVETNv.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi', '2014-11-12 06:54:44', '2014-10-24 11:47:08', '0', '0', 90, '', 0, '', '', 2014, 10),
(212, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Gray', '', '', 'Y8WqvJGcR1cupJVMeTMdyAcDuGEJ0f7a.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi1', '2014-10-24 11:47:56', '2014-10-24 11:47:56', '0', '0', 0, '', 211, '', '', 2014, 10),
(213, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Silver', '', '', '9ENhukGLcy8xScmOO5LxhUwXYo8UNbaG.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi2', '2014-10-24 11:48:27', '2014-10-24 11:48:27', '0', '0', 0, '', 211, '', '', 2014, 10),
(214, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Gold', '', '', '365UCuXfafS2ozuONmdPQGajDrJl1bFi.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi3', '2014-10-24 11:48:47', '2014-10-24 11:48:47', '0', '0', 0, '', 211, '', '', 2014, 10);
INSERT INTO `laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(215, 'Ipad Air 2 16Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'EMyYAqI2zgoaBL3Cxu25DswYuQ7Qdr4c.png', 4, 1, 0, 14880000, 0, '-25200', 0, 'ipad-air-2-16gb-4g', '2014-11-12 06:06:18', '2014-10-24 11:51:16', '0', '0', 80, '', 0, '', '', 2014, 10),
(216, 'Ipad Air 2 16Gb 4G', '', NULL, 'Gray', '', '', 'VLfcEtLnNC62Wpsw9jG6hlwQyErFthHw.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g1', '2014-10-24 11:53:39', '2014-10-24 11:53:39', '0', '0', 0, '', 215, '', '', 2014, 10),
(217, 'Ipad Air 2 16Gb 4G', '', NULL, 'Silver', '', '', 'MkLjXKPtqkyXbunve1ASseg2xEMCjnwC.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g2', '2014-10-24 11:54:49', '2014-10-24 11:54:49', '0', '0', 0, '', 215, '', '', 2014, 10),
(218, 'Ipad Air 2 16Gb 4G', '', NULL, 'Gold', '', '', 'VvB5dwyKgsAiz6zm0Fich6vtKOuQiIsM.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g3', '2014-10-24 11:55:12', '2014-10-24 11:55:12', '0', '0', 0, '', 215, '', '', 2014, 10),
(219, 'Ipad Air 2 64Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'OEe4i15CRGIfy1pV2v84AW8sg2qHZk3v.png', 4, 1, 0, 16880000, 0, '-25200', 0, 'ipad-air-2-64gb-4g', '2014-11-12 06:41:04', '2014-10-24 11:58:16', '0', '0', 127, '', 0, '', '', 2014, 10),
(220, 'Ipad Air 2 64Gb 4G', '', NULL, 'Gray', '', '', 'fVJnhYr3GDEWC6kofQDDLkr6GbPCOvWD.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g1', '2014-10-24 11:58:47', '2014-10-24 11:58:46', '0', '0', 0, '', 219, '', '', 2014, 10),
(221, 'Ipad Air 2 64Gb 4G', '', NULL, 'Silver', '', '', 'QJDXGquR4az9BSAHTj5dloWAs4cn5VqL.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g2', '2014-10-24 11:59:08', '2014-10-24 11:59:08', '0', '0', 0, '', 219, '', '', 2014, 10),
(222, 'Ipad Air 2 64Gb 4G', '', NULL, 'Gold', '', '', 'jtygKsDyypeCQFKgU4cC3S8tAzNki4FK.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g3', '2014-10-24 11:59:32', '2014-10-24 11:59:32', '0', '0', 0, '', 219, '', '', 2014, 10),
(223, 'Ipad Air 2 128Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'a6Aa2DsnQ7t3jjs04ZbEfTYGMauhufAd.png', 4, 1, 0, 18880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g', '2014-11-12 06:09:59', '2014-10-24 12:00:37', '0', '0', 76, '', 0, '', '', 2014, 10),
(224, 'Ipad Air 2 128Gb 4G', '', NULL, 'Gray', '', '', 'L9IRzJkwlUPPx4HmfbqYof8PJjYV2Din.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g1', '2014-10-24 12:01:03', '2014-10-24 12:01:03', '0', '0', 0, '', 223, '', '', 2014, 10),
(225, 'Ipad Air 2 128Gb 4G', '', NULL, 'Silver', '', '', 'zXoa2OWSFxgT7lBRvEEffBbaoosQxui3.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g2', '2014-10-24 12:01:28', '2014-10-24 12:01:28', '0', '0', 0, '', 223, '', '', 2014, 10),
(226, 'Ipad Air 2 128Gb 4G', '', NULL, 'Gold', '', '', '5XosdgC57PV4l0oSQU8EyMLVnnQhSdoj.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g3', '2014-10-24 12:01:47', '2014-10-24 12:01:47', '0', '0', 0, '', 223, '', '', 2014, 10);

-- --------------------------------------------------------

--
-- Table structure for table `latags`
--

CREATE TABLE IF NOT EXISTS `latags` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lauser`
--

CREATE TABLE IF NOT EXISTS `lauser` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `larole` varchar(20) DEFAULT NULL,
  `lastatus` int(11) DEFAULT NULL,
  `lafullname` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laemail` varchar(50) DEFAULT NULL,
  `laphoto` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lauser`
--

INSERT INTO `lauser` (`id`, `username`, `password`, `larole`, `lastatus`, `lafullname`, `updated_at`, `created_at`, `laemail`, `laphoto`) VALUES
(1, 'admin@phongee.vn', '$2y$10$cn2evPkX0GMyAWcUZ37ab.1ilTXucy9oitCo7qOnUzBso0KAgQmsi', 'admin', 1, 'Administrator', '2014-04-07 16:53:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lausers`
--

CREATE TABLE IF NOT EXISTS `lausers` (
`id` int(11) NOT NULL,
  `laemail` text COLLATE utf8_unicode_ci,
  `laphoto` text COLLATE utf8_unicode_ci,
  `laname` text COLLATE utf8_unicode_ci,
  `lapassword` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pl_facebookuser`
--

CREATE TABLE IF NOT EXISTS `pl_facebookuser` (
`id` int(11) unsigned NOT NULL,
  `facebookname` text,
  `facebookid` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fanpage_id` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pl_fanpage`
--

CREATE TABLE IF NOT EXISTS `pl_fanpage` (
`id` int(11) unsigned NOT NULL,
  `pageid` varchar(50) DEFAULT NULL,
  `pageusername` varchar(50) DEFAULT NULL,
  `pagename` varchar(50) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `about` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pl_lacategories`
--

CREATE TABLE IF NOT EXISTS `pl_lacategories` (
`id` int(11) unsigned NOT NULL,
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
  `isnews` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `pl_lacategories`
--

INSERT INTO `pl_lacategories` (`id`, `latitle`, `laparent_id`, `laurl`, `lainfo`, `ladeleted`, `laorder`, `laimage`, `updated_at`, `created_at`, `laicon`, `isnews`) VALUES
(1, 'Apple', 0, 'apple', 'Đẳng cấp của bạn.', 0, 1, NULL, '2014-06-06 03:30:32', '2014-06-04 07:21:24', 'glyphicon glyphicon-link', 0),
(2, 'Hãng khác', 0, 'hang-khac', '', 0, 2, NULL, '2014-09-08 16:59:10', '2014-06-04 07:21:39', 'glyphicon glyphicon-link', 0),
(3, 'iPhone', 1, 'iphone', '', 0, 1, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:27:56', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(4, 'iPad', 1, 'ipad', '', 0, 2, 'S85nbAnPygMFGjeoNmU9r7oERyxPGHeR.jpg', '2014-08-04 06:28:03', '2014-06-04 07:22:10', 'glyphicon glyphicon-link', 0),
(5, 'Samsung', 2, 'samsung', '', 0, 3, NULL, '2014-09-08 16:57:03', '2014-06-04 07:22:26', 'glyphicon glyphicon-link', 0),
(6, 'HTC', 2, 'htc', '', 0, 5, NULL, '2014-09-08 16:58:01', '2014-06-04 07:22:36', 'glyphicon glyphicon-link', 0),
(7, 'Hệ thống', 0, 'he-thong', '', 1, 7, NULL, '2014-08-16 13:47:33', '2014-06-04 08:31:11', 'glyphicon glyphicon-link', 1),
(8, '', 21, '', '', 1, 0, NULL, '2014-09-04 13:04:16', '2014-06-04 08:31:27', 'glyphicon glyphicon-link', 1),
(9, 'Tin PhonGee', 21, 'tin-phongee', '', 1, 2, NULL, '2014-09-04 13:08:43', '2014-06-04 08:31:32', 'glyphicon glyphicon-link', 1),
(10, 'Tin báo chí', 21, 'tin-bao-chi', '', 1, 1, NULL, '2014-09-04 13:07:51', '2014-06-04 08:32:37', 'glyphicon glyphicon-link', 1),
(11, 'Chất 2nd', 0, 'chat-2nd', '', 0, 5, NULL, '2014-09-08 17:00:12', '2014-06-04 08:33:24', 'glyphicon glyphicon-link', 0),
(12, 'Tin nổi bật', 21, 'tin-noi-bat', '', 1, 0, NULL, '2014-09-04 13:07:59', '2014-06-04 08:35:09', 'glyphicon glyphicon-link', 1),
(13, 'Phụ kiện', 0, 'phu-kien', '', 0, 3, NULL, '2014-08-04 08:39:41', '2014-06-06 11:04:07', 'glyphicon glyphicon-link', 0),
(14, 'Chính sách', 0, 'chinh-sach', '', 1, 6, NULL, '2014-09-04 13:09:28', '2014-06-11 04:47:32', 'glyphicon glyphicon-link', 0),
(15, 'Chi nhánh', 0, 'chi-nhanh', '', 1, 7, NULL, '2014-08-01 13:17:34', '2014-06-11 04:47:44', 'glyphicon glyphicon-link', 0),
(16, 'iPod', 1, 'ipod', '', 0, 3, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:28:08', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(17, 'Mac', 1, 'mac', '', 0, 0, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:27:44', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(18, '... Khác từ Apple', 1, 'khac-tu-apple', '', 0, 4, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-09-04 13:11:29', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(19, 'iPhone 5', 1, 'iphone5', '', 1, 0, 'tO0Jt0aW1DotD4Tya6ifXEslCIm1buAc.jpg', '2014-08-04 06:28:17', '2014-06-04 07:22:00', 'glyphicon glyphicon-link', 0),
(20, 'Các chi nhánh', 7, 'cac-chi-nhanh', '', 0, 1, NULL, '2014-08-04 09:52:36', '2014-08-01 13:19:44', 'glyphicon glyphicon-link', 0),
(21, 'TIN CÔNG TY', 0, 'tin-cong-ty', '', 0, 7, NULL, '2014-09-04 13:05:32', '2014-08-01 13:20:02', 'glyphicon glyphicon-link', 1),
(22, 'Bảo hành', 14, 'bao-hanh', '', 0, 1, NULL, '2014-08-01 13:35:44', '2014-08-01 13:21:07', 'glyphicon glyphicon-link', 0),
(23, 'Thành viên', 14, 'thanh-vien', '', 0, 2, NULL, '2014-08-01 13:35:39', '2014-08-01 13:21:21', 'glyphicon glyphicon-link', 0),
(24, 'Hỗ trợ', 14, 'ho-tro', '', 0, 3, NULL, '2014-09-04 13:07:35', '2014-08-01 13:34:51', 'glyphicon glyphicon-link', 0),
(25, 'Máy đã dùng', 11, 'may-da-dung', '', 0, 0, NULL, '2014-11-04 02:13:28', '2014-08-01 14:16:02', 'glyphicon glyphicon-link', 0),
(26, 'Linh tinh...', 11, 'linh-tinh', '', 0, 1, NULL, '2014-08-04 08:43:22', '2014-08-01 14:16:47', 'glyphicon glyphicon-link', 0),
(27, 'MacBook Pro', 17, 'macbook-pro', '', 0, 2, NULL, '2014-08-04 06:31:29', '2014-08-04 06:30:26', 'glyphicon glyphicon-link', 0),
(28, 'MacBook Air', 17, 'macbook-air', '', 0, 1, NULL, '2014-08-04 06:31:35', '2014-08-04 06:30:50', 'glyphicon glyphicon-link', 0),
(29, 'iMac', 17, 'imac', '', 0, 0, NULL, '2014-08-04 06:31:24', '2014-08-04 06:31:06', 'glyphicon glyphicon-link', 0),
(30, 'Sony', 2, 'sony', '', 0, 1, NULL, '2014-09-08 16:53:57', '2014-08-04 08:12:21', 'glyphicon glyphicon-link', 0),
(31, 'BlackBerry', 2, 'blackberry', '', 0, 7, NULL, '2014-09-08 17:05:13', '2014-08-04 08:12:55', 'glyphicon glyphicon-link', 0),
(32, 'Tai nghe', 13, 'tai-nghe', '', 0, 0, NULL, '2014-08-04 08:14:26', '2014-08-04 08:14:26', 'glyphicon glyphicon-link', 0),
(33, 'Bao da/ Ốp lưng', 13, 'bao-da-op-lung', '', 0, 4, NULL, '2014-08-04 08:21:32', '2014-08-04 08:14:41', 'glyphicon glyphicon-link', 0),
(34, 'Pin dự phòng ', 39, 'pin-du-phong', '', 0, 3, NULL, '2014-08-04 08:35:59', '2014-08-04 08:16:15', 'glyphicon glyphicon-link', 0),
(35, 'Loa di động', 13, 'loa-di-dong', '', 0, 1, NULL, '2014-08-04 08:20:28', '2014-08-04 08:17:49', 'glyphicon glyphicon-link', 0),
(36, 'Pin (battery)', 39, 'pin-battery', '', 0, 2, NULL, '2014-08-04 08:35:48', '2014-08-04 08:19:30', 'glyphicon glyphicon-link', 0),
(37, 'Phụ kiện khác...', 13, 'phu-kien-khac', '', 0, 4, NULL, '2014-08-04 08:37:32', '2014-08-04 08:24:54', 'glyphicon glyphicon-link', 0),
(38, 'Thương hiệu khác...', 2, 'thuong-hieu-khac', '', 0, 8, NULL, '2014-09-08 17:05:25', '2014-08-04 08:28:53', 'glyphicon glyphicon-link', 0),
(39, 'Pin', 13, 'pin', '', 0, 3, NULL, '2014-08-04 08:36:15', '2014-08-04 08:35:35', 'glyphicon glyphicon-link', 0),
(40, 'Về chúng tôi', 7, 've-chung-toi', '', 0, 0, NULL, '2014-08-04 09:52:48', '2014-08-04 09:52:48', 'glyphicon glyphicon-link', 0),
(41, 'PhonGee Color', 2, 'phongee-color', '', 0, 1, NULL, '2014-09-08 16:53:34', '2014-09-04 13:10:29', 'glyphicon glyphicon-link', 0),
(42, 'Nokia', 2, 'nokia', '', 0, 4, NULL, '2014-09-08 16:57:41', '2014-09-08 14:35:05', 'glyphicon glyphicon-link', 0),
(48, 'Sản phẩm khác', 0, 'san-pham-khac', '', 0, 4, NULL, '2014-09-08 16:59:51', '2014-09-08 16:59:51', 'glyphicon glyphicon-link', 0),
(49, 'LG', 2, 'lg', '', 0, 6, NULL, '2014-09-08 17:04:56', '2014-09-08 17:04:56', 'glyphicon glyphicon-link', 0),
(50, 'Mac Pro', 17, 'mac-pro', '', 0, 0, NULL, '2014-10-10 10:13:39', '2014-10-10 10:13:39', 'glyphicon glyphicon-link', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pl_laconfig`
--

CREATE TABLE IF NOT EXISTS `pl_laconfig` (
`id` int(11) NOT NULL,
  `lavar` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lavalue` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pl_laconfig`
--

INSERT INTO `pl_laconfig` (`id`, `lavar`, `lavalue`, `updated_at`, `created_at`) VALUES
(1, 'slide', 't1f2SV9mgxeiOdIQPO6244ghBKndZuKz.png||#\r\nwubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png||#\r\nLkbmkP81jCbyJCMeVYW2haM9cTix0Q9x.png||#\r\ntR8kBPBTK6krJCsDf8xzpsJRIHDNrmhR.png||#\r\ndDjvJWMrezjAk56SyBBpkwrxVOrMqnTt.png||#\r\nb6KQtHEmqzP661FcDe195ahmo5OH9e49.png||#', '2014-09-10 09:48:40', '2014-06-04 08:25:46'),
(2, 'sidebarads', '', '2014-06-04 08:25:46', '2014-06-04 08:25:46'),
(3, 'store', 'Hotline 24/7: (08) 222 222 88\r\nTrụ sở chính: tòa nhà 5A, hẻm số 05, <br>Nguyễn Đình Chiểu, P. Đa Kao, Q.1, TP.HCM, Điện thoại: (08) 222 222 88 \r\n12 Tôn Thất Tùng, P. Bến Thành, Q1, TP.HCM <br>Điện thoại: (08) 222 222 99\r\n12 Trần Quốc Hoàn, P.4, Q. Tân Bình, TP. HCM <br>Điện thoại: (08) 222 222 66', '2014-11-04 02:11:20', '2014-09-08 10:10:22'),
(4, 'sliderid', '1', '2014-09-10 10:34:45', '2014-09-10 10:34:45'),
(5, 'sliderorder', 'order', '2014-09-10 10:34:45', '2014-09-10 10:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `pl_laevent`
--

CREATE TABLE IF NOT EXISTS `pl_laevent` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(250) NOT NULL DEFAULT '',
  `laactive` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lainfo` text,
  `laurl` varchar(250) NOT NULL DEFAULT '',
  `lanews` text,
  `laproduct` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pl_laevent`
--

INSERT INTO `pl_laevent` (`id`, `latitle`, `laactive`, `updated_at`, `created_at`, `lainfo`, `laurl`, `lanews`, `laproduct`) VALUES
(1, 'Ra mắt iPhone 6', 1, '2014-09-10 05:08:07', '2014-09-09 10:56:14', 'sự kiện iphone6', 'ra-mat-iphone-6', '118,14,13', ''),
(2, 'iphone 5s', 0, '2014-09-09 11:18:39', '2014-09-09 11:01:14', 'thông tin thêm', 'iphone-5s', '1', '2'),
(3, 'ipad2', 0, '2014-09-09 11:19:10', '2014-09-09 11:18:48', '', 'ipad2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pl_lafacebookcomments`
--

CREATE TABLE IF NOT EXISTS `pl_lafacebookcomments` (
`id` int(11) NOT NULL,
  `lafullname` text,
  `lacontent` text,
  `laurl` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pl_lafacebookcomments`
--

INSERT INTO `pl_lafacebookcomments` (`id`, `lafullname`, `lacontent`, `laurl`, `updated_at`, `created_at`) VALUES
(1, NULL, NULL, NULL, '2014-06-19 21:38:53', '2014-06-19 21:38:53'),
(2, NULL, NULL, NULL, '2014-08-19 23:49:00', '2014-08-19 23:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `pl_lafacebookprofiles`
--

CREATE TABLE IF NOT EXISTS `pl_lafacebookprofiles` (
`id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `username` text CHARACTER SET latin1,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `laaccess_token` text CHARACTER SET latin1,
  `laaccess_token_secret` text CHARACTER SET latin1,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pl_laimages`
--

CREATE TABLE IF NOT EXISTS `pl_laimages` (
`id` int(11) unsigned NOT NULL,
  `lapic` varchar(50) DEFAULT NULL,
  `latitle` varchar(100) DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laevent` int(11) DEFAULT NULL,
  `laorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=837 ;

--
-- Dumping data for table `pl_laimages`
--

INSERT INTO `pl_laimages` (`id`, `lapic`, `latitle`, `laproduct_id`, `updated_at`, `created_at`, `laevent`, `laorder`) VALUES
(5, 'W32Z1e4FzNREcZc2y3isgNZBslcvXJsv.png', '', 2, '2014-06-06 16:41:28', '2014-06-06 16:41:28', NULL, 0),
(8, 'L0aZq7OHKSg56SFrtQpynFpH9U2naCWr.png', '', 4, '2014-06-06 16:50:44', '2014-06-06 16:50:44', NULL, 0),
(10, 'LyWSOsF8eYYwPqkA3NJDOjZtP2QNNOmY.png', '', 5, '2014-06-06 16:51:11', '2014-06-06 16:51:11', NULL, 0),
(11, 'qtTsHL2Z5FeRC0fLgD35paA5p0I3O53Y.png', '', 6, '2014-06-06 16:52:20', '2014-06-06 16:52:20', NULL, 0),
(15, '6r9NaZ3Mu0555PHsQSKcpEwewioUl8a4.png', '', 8, '2014-06-06 17:11:04', '2014-06-06 17:11:04', NULL, 0),
(17, 'xJx3aFrKcEg67oS6vvFLcmQxNgI7bu3w.png', '', 9, '2014-06-06 17:11:32', '2014-06-06 17:11:32', NULL, 0),
(19, 'CaRCSCq6EFPBaLx9qCtiR2ah3zMTEg8w.png', '', 10, '2014-06-06 17:11:48', '2014-06-06 17:11:48', NULL, 0),
(20, 'dsP9PM6ZfdSuEDWgONbNKIKeacOzfXz6.png', '', 11, '2014-06-06 17:12:04', '2014-06-06 17:12:04', NULL, 0),
(23, 'm0OJUAkKlCJbsNEboOt80V5Xet5Oax1m.png', '', 12, '2014-06-06 17:12:20', '2014-06-06 17:12:20', NULL, 0),
(24, '7xdXj1CDtCkII3zYdshDsnvMJueD8OIv.jpg', '', 13, '2014-06-06 17:37:34', '2014-06-06 17:37:34', NULL, 0),
(25, 'rGOTuyWkY1wcjMJxqeHIPSSkqsNsRuBw.jpg', '', 14, '2014-06-06 17:45:48', '2014-06-06 17:45:48', NULL, 0),
(26, '9TYLwI6j55DYOO1RvmJbYvUpT26OAHH8.png', '', 16, '2014-06-11 04:51:49', '2014-06-11 04:51:49', NULL, 0),
(32, 'NoVPuRtMUIP4rQOai9fTG8T6TcK8Lb57.png', '', 16, '2014-07-31 14:45:42', '2014-07-31 14:45:42', NULL, 0),
(33, 'r8f6xWgPVNJAHfqocjqUWMQLV4JLcBGi.png', '', 25, '2014-08-28 03:56:19', '2014-08-28 03:56:19', NULL, 0),
(34, 'NKy0N67mHRVDcdQsp6xTsmUmk7Wb7ajI.png', '', 26, '2014-08-28 04:23:45', '2014-08-28 04:23:45', NULL, 0),
(35, 'SKYC1hWzl8TMVRa7FrSMxYcQGzJ28CFP.png', '', 27, '2014-08-28 14:15:00', '2014-08-28 14:15:00', NULL, 0),
(37, 'uO0g7e9jesdt4YNOIj9iqsViOW3z1Rs7.png', '', 31, '2014-08-30 08:24:08', '2014-08-30 08:24:08', NULL, 0),
(42, 'ktnjLooBSCmE4K1KPqR9vBFSvSlQOCWy.png', '', 32, '2014-08-30 08:36:04', '2014-08-30 08:36:04', NULL, 0),
(44, '8CbD0yQsS4ufpb28HFIjGUwPGETOJwiW.png', '', 33, '2014-08-30 08:36:30', '2014-08-30 08:36:30', NULL, 0),
(47, 'kqmPqUCKWPlP1AeSfJu8Ag1xXt7G9tGr.png', '', 35, '2014-08-30 08:51:54', '2014-08-30 08:51:54', NULL, 0),
(49, 'wuKySO1jmzc0STbqSWXdH6PPDiR2pLEf.png', '', 36, '2014-08-30 08:52:30', '2014-08-30 08:52:30', NULL, 0),
(51, 'Z1Vqn1K1mvMBjrFPL1XQN7g7unVmQCA0.png', '', 37, '2014-08-30 08:52:50', '2014-08-30 08:52:50', NULL, 0),
(53, 'AMv3ibeAJYzL9rT9xQvHKtWGWlXrD8nY.png', '', 39, '2014-09-01 14:55:04', '2014-09-01 14:55:04', NULL, 0),
(55, 'JPAMxZTd1WwZARCMIUGwy1AWexvVjsrR.png', '', 41, '2014-09-01 15:07:05', '2014-09-01 15:07:05', NULL, 0),
(57, 'bW0GeijcqGcvb4EUIg0K6oljIIDXKX6p.png', '', 42, '2014-09-01 15:07:47', '2014-09-01 15:07:47', NULL, 0),
(59, 'd5CVxFOGgghCBDSqaQHXxTnMrYlHrFLw.png', '', 43, '2014-09-01 15:08:27', '2014-09-01 15:08:27', NULL, 0),
(61, 'VydEsCuysPes4JVwDn2rY1XQRsuCBfkg.png', '', 44, '2014-09-01 15:08:50', '2014-09-01 15:08:50', NULL, 0),
(63, 'AveY6gq1jFRL8UiBQnD41RS1qVYd3DmJ.png', '', 45, '2014-09-01 15:09:12', '2014-09-01 15:09:12', NULL, 0),
(72, 'tjqz30llgJUH88gY1EfRX0hfbp5pIAbm.png', '', 51, '2014-09-01 15:37:32', '2014-09-01 15:37:32', NULL, 0),
(73, 'V32idkJYZlpeb7abkzyrdWLME2FmtO7v.png', '', 52, '2014-09-01 15:38:55', '2014-09-01 15:38:55', NULL, 0),
(76, 'XqCN9vMOeSupTpoxDqdADNiwAcriOhC4.png', '', 54, '2014-09-01 15:58:23', '2014-09-01 15:58:23', NULL, 0),
(78, 'RGYxwu7yPoqAsUMBsBzoWRDsGMTozrpQ.png', '', 55, '2014-09-01 15:58:41', '2014-09-01 15:58:41', NULL, 0),
(81, 'nmBdpmBHyMQdH74xy25ez5xVnogBLcre.png', '', 57, '2014-09-01 16:06:49', '2014-09-01 16:06:49', NULL, 0),
(83, 'gsBsDjHvqygK0SgiKXzHg0jhmQs8MvO8.png', '', 58, '2014-09-01 16:07:06', '2014-09-01 16:07:06', NULL, 0),
(86, 'Grcx5T2fC8gVtwT9oz0QSSImrRW3eUiN.png', '', 60, '2014-09-01 16:08:26', '2014-09-01 16:08:26', NULL, 0),
(87, 'keQOIglTspnzehMotSDWbuXrTlSB4GBL.png', '', 60, '2014-09-01 16:08:26', '2014-09-01 16:08:26', NULL, 0),
(88, 'GMdSM1YUxl8AZg66lg2h5x50c3uUwhHt.png', '', 61, '2014-09-01 16:08:44', '2014-09-01 16:08:44', NULL, 0),
(91, '75QS32ROUpBg7wBNLvpLIE0ajA6VHgC0.png', '', 63, '2014-09-01 16:11:06', '2014-09-01 16:11:06', NULL, 0),
(93, 'S8b3nK4lU3C5J5GMAwH6Q47f7dqSzuJd.png', '', 64, '2014-09-01 16:11:23', '2014-09-01 16:11:23', NULL, 0),
(96, 'tmrdWMYrAeC4idZxrILajpB0B4BQqHR3.png', '', 66, '2014-09-01 16:12:29', '2014-09-01 16:12:29', NULL, 0),
(98, '8nJFKlQx7jIEaQMHh2lgEPHgqqAQP28c.png', '', 67, '2014-09-01 16:12:44', '2014-09-01 16:12:44', NULL, 0),
(101, 'aNbGQoR42roUBLU84ujTKVVrogQTEn2o.png', '', 69, '2014-09-01 16:14:18', '2014-09-01 16:14:18', NULL, 0),
(103, 'oRiHY30HrMb4RyIdj8vN8czd8mfU38IF.png', '', 70, '2014-09-01 16:14:33', '2014-09-01 16:14:33', NULL, 0),
(106, 'n3McFjalWvQEJEKwjT6S81cYnqJ4nDos.png', '', 72, '2014-09-01 16:15:58', '2014-09-01 16:15:58', NULL, 0),
(108, 'xZqVYnUpH1z4wDHqa2sUiGmj3GHyU81i.png', '', 73, '2014-09-01 16:16:12', '2014-09-01 16:16:12', NULL, 0),
(121, 'RVE3uh5p4UmGUPBtdCCazsIA3fIgHALq.png', '', 84, '2014-09-01 16:48:12', '2014-09-01 16:48:12', NULL, 0),
(125, 'e62e8cZ4ISASxvPdLntTqrtgImB3OiVf.png', '', 86, '2014-09-01 16:49:10', '2014-09-01 16:49:10', NULL, 0),
(127, 'hvIeOMRbzQr9tybFQoP8nuzf68meskzZ.png', '', 87, '2014-09-01 16:49:36', '2014-09-01 16:49:36', NULL, 0),
(129, 'eAIRkYrJJqFp2sJadczmwzKOTzHdSdXH.png', '', 88, '2014-09-01 16:50:03', '2014-09-01 16:50:03', NULL, 0),
(134, 'RDHA31Gd0UYx9Egf3Ur1435u9Xvs5ZNy.png', '', 83, '2014-09-07 06:31:16', '2014-09-07 06:31:16', NULL, 0),
(139, 'cRxfoJn3Jbd5sVTc0aO6GaC5P31Nbcp0.png', '', 88, '2014-09-07 07:23:51', '2014-09-07 07:23:51', NULL, 0),
(145, 'vXDwUgwv5tD70ylvx3NVP79KrkWCc8nt.png', '', 85, '2014-09-07 10:18:59', '2014-09-07 10:18:59', NULL, 0),
(146, 'wtl8UMcnazKzmMTsbMzoM5ykIh3PZYLe.png', '', 85, '2014-09-07 10:18:59', '2014-09-07 10:18:59', NULL, 0),
(147, 'TcgZ7ug6EleR7z5TZaM9h79fmCvnyomO.png', '', 87, '2014-09-07 10:21:03', '2014-09-07 10:21:03', NULL, 0),
(148, 'KJZ46oIJ1xJaALglPN6aReD6yI2O83kd.png', '', 86, '2014-09-07 10:21:58', '2014-09-07 10:21:58', NULL, 0),
(149, 'WyFzjEju4KVO6fNkBO453pza10ZhNSVT.png', '', 84, '2014-09-07 10:23:05', '2014-09-07 10:23:05', NULL, 0),
(163, 'zFmTeGhKdE90j1RipkKQxLxnJ4oxrlvB.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(164, 'ddei1ZdQKf10rs2wstf6HpfMIYPPuJa1.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(165, 'KjfdzNmbsd08MXglJktNpQXIBugpm89i.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 11:57:30', NULL, 0),
(166, 'ACpBpkrBSYM7HtDmeQcyAN6Qx0C7a0za.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(167, 'w5nDfmzK3DhcTJ0i2c1AA2bosBSQEi9w.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(168, 'DIcBlgmlzNr1yiEh6upF9GYGbVmY3zED.png', '', 83, '2014-09-07 12:01:39', '2014-09-07 12:01:39', NULL, 0),
(170, 'rekpRT7JTrLbPZZrdSujykNolK1abV9b.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(171, '03z42fFx0CIrKcePrC10cxx2v1Mvn6ug.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(172, 'vi1snV6N1LI3MgIjHiiDBdStuMG4sfNU.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 12:04:01', NULL, 0),
(174, 'vNrGk0H4Hq8E8nbZHeZ6akTueJPEhZ3C.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(175, '5QPnijDf7s6zPwiz23bNYUMUs2wuavQV.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(176, 'PbYRIX0M0BwWEoUxtWtSzsYjY3mVWgZC.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 12:07:36', NULL, 0),
(178, 'vSqYRT4J5qlZHDfenkApe52Yl60TvDy0.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(179, '11rPFrqgFVfPOiTSkuuvurXezb7iSy21.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(180, 'q0OeLDmxLchRUBqrhqpPzqMuFSR1GZqd.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 12:11:27', NULL, 0),
(191, '5WiLL1EGnScyjUuSGwDFn6t59I94bMZr.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(192, 'p6nKKURIUMJOhybtXnwbW1G6htnBDO7Y.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(193, 'XBPXuACWHTyiuOBljnxsMfvhse51yWqU.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(194, 'jFN9la4SMnesRMCBt18TIfjIwA7WDOPU.png', '', 78, '2014-09-07 16:26:23', '2014-09-07 16:26:23', NULL, 0),
(195, 'fNMoypblydFHhCbCapsqDllJEg4V3zzN.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(196, 'O4sxNDHS6Iv98IWGpWKFCQH36yfwLX2u.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(197, 'pxpnr5fRjKF7Jwvk4OJIC8RUxXEPLRiL.png', '', 77, '2014-09-07 16:34:50', '2014-09-07 16:34:50', NULL, 0),
(198, 'ZdnT8FmHy0KRR4bky1ed7xRj0pDBd7Sw.png', '', 77, '2014-09-07 16:34:51', '2014-09-07 16:34:51', NULL, 0),
(199, 'ZYs4CO4RWJcRdNltLmPk6weGr8T2728H.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(201, 'WU3FllfRP7EtLnJvsHjenh1spN11ga6d.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(202, 'yqBKtudXFPZU7L2WAjyXfjjPbVO5LDM9.png', '', 76, '2014-09-07 16:37:41', '2014-09-07 16:37:41', NULL, 0),
(203, 'CET3sQQu9ZDzZzlHahlBiz43TkS5p7Dh.png', '', 76, '2014-09-07 16:40:07', '2014-09-07 16:40:07', NULL, 0),
(204, 'dpWZUHnGnZgXulhrJ8W7veAanovV0M0k.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(205, 'zBBlT1y1fDnkf9UyLwEJ4Y9IaIwaSMCF.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(206, 'eepkrmtfmUVC0frg2cKHPBhGk65QPSbO.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(207, 'oljIoOUkkIIceNZ8ttmsvhD7NK85ZRps.png', '', 75, '2014-09-07 16:41:49', '2014-09-07 16:41:49', NULL, 0),
(208, 'XJ7sO34CbqyhML5uKVdu9rqY7Gy93uZi.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(209, '6dchgQ9JhN9IpMv10ryvFyQXZIHbXUdu.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(210, '6X5iG0zBll7qyzyo1vX3piGKUHfT9oL8.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(211, 'Ys3IKtSRXNfFQQZ178XhauYqvLVTLfRc.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(212, 'laSgXDRdcoJJGbfBoo48sVcajq2bvbWW.png', '', 74, '2014-09-07 16:42:42', '2014-09-07 16:42:42', NULL, 0),
(213, '1QYMCe05f5KjNpOkJCFacv08t65mYSg6.png', '', 73, '2014-09-07 17:17:22', '2014-09-07 17:17:22', NULL, 0),
(214, 'lPSnzjkAYVW32UFV044BgZ10iCX6OAr9.png', '', 72, '2014-09-07 17:17:56', '2014-09-07 17:17:56', NULL, 0),
(218, 't8kWO9ymXo2wzsr9TTyJyxLP290fsZ1t.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:19:57', NULL, 0),
(223, 'w6vfWIxh4pR1xEIu4Nz1KkoTDPcf0t92.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:32:09', NULL, 0),
(224, 'ffpNuN7LONZceHjc7HebzkbzHYe52O7w.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:32:09', NULL, 0),
(225, 'AefETKbYrAZeWo76LWi2jShCni8R45Lg.png', '', 71, '2014-10-31 07:40:00', '2014-09-07 17:33:48', NULL, 0),
(228, 'ReE0cVQGgMQ4LIWZi7da7pEEIb54RL38.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(229, 'vL6oTLJJuJqLR13ynsCyh9bStL72BmP7.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(230, 'sNoPcwauebWIdYvYbgTWx69NtBnh7V04.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(231, 'bpWd3Ef3RsLRkd4ActzpcO6OL9LcOhY5.png', '', 68, '2014-10-31 07:40:24', '2014-09-07 17:48:46', NULL, 0),
(232, 'piyZEbm9IpuwcYcI8ZSkBM3KjSzKciGE.png', '', 70, '2014-09-07 17:49:02', '2014-09-07 17:49:02', NULL, 0),
(233, 'NlRCC8dz3zhNFT6eYUuKSkiovdsaSMa3.png', '', 69, '2014-09-07 17:49:21', '2014-09-07 17:49:21', NULL, 0),
(234, 'bRf5I872sTuZoxN0WIg26t0n0Mtr39j3.png', '', 66, '2014-09-07 17:50:14', '2014-09-07 17:50:14', NULL, 0),
(235, 'Iq8vmpVVXxFKNcZfhckqzVUX0iyCpISG.png', '', 67, '2014-09-07 17:50:29', '2014-09-07 17:50:29', NULL, 0),
(236, 'z9Tt6JmiSzdwLkA2UcsSD02Hle9ZX9dG.png', '', 64, '2014-09-07 17:51:05', '2014-09-07 17:51:05', NULL, 0),
(237, 'hoGTdgH3jcWDBbbfJZelgcHdvsHsojGv.png', '', 63, '2014-09-07 17:51:23', '2014-09-07 17:51:23', NULL, 0),
(238, 'RhQ45RFWWM4O2xCTloez1MhJHg4hNyC5.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(239, 'vgHtTSD1X5honSJaxoEpxYR10GZBvOFg.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(240, '2bbJHeQc2KwIPxYcAsNl91LxJ2x8rRKw.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(241, 'qeYUVsUnoNulXUVTEj3wRnvkYVQChWMa.png', '', 62, '2014-10-31 07:41:21', '2014-09-07 17:52:01', NULL, 0),
(242, 'y9hcT6xjLdkjD7xFthkSh7Ur0ALdYx8e.png', '', 61, '2014-09-07 17:52:21', '2014-09-07 17:52:21', NULL, 0),
(243, 'k1bWUQ6c0LowBxInqJERkUnY4R0lnCmh.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(244, '9Hm5qZaAxxW9JpCmcNWvcMrTvAJEhUHp.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(245, 'efBCMzQsBnlfH9wt1ZwG2bey9V8Ejjr1.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(246, 'p5aBTvmw5sEqkPcceD8gv97HB12Ifeex.png', '', 59, '2014-10-31 07:41:42', '2014-09-07 17:53:18', NULL, 0),
(247, 'SppL0FuPJzrtndyQGZqcXEanyimdxQJw.png', '', 58, '2014-09-07 17:53:43', '2014-09-07 17:53:43', NULL, 0),
(248, 'tEYLCkZS63jpl8hsCrif0MK9StcNBZAq.png', '', 57, '2014-09-07 17:53:58', '2014-09-07 17:53:58', NULL, 0),
(249, 'xHIFTpeyhgEdbUk3258ZTJnMOi0robjb.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(250, '266SPTtRl5fYhp1aJnXEaVBy1zJQOvdn.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(251, '3tXyvdHmPA3z7aLPWSYPAFYRhlUIjFPo.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(252, 'q03ByS9ctzfVdnWSqZlovkGeDgp6Dw73.png', '', 56, '2014-10-31 07:42:18', '2014-09-07 17:54:58', NULL, 0),
(253, 'sJty678rpcoNlpzm4OM05vbz73Kbl4Vh.png', '', 55, '2014-09-07 17:55:17', '2014-09-07 17:55:17', NULL, 0),
(254, 'IwOrOhZxxiarRpNQ1IjbwJImBm7Qpvan.png', '', 54, '2014-09-07 17:55:42', '2014-09-07 17:55:42', NULL, 0),
(255, 'SShh6r1q4tp3h4eELBKNCFcHqwpOE6La.png', '', 53, '2014-10-31 07:42:57', '2014-09-07 17:56:14', NULL, 0),
(256, '5NK1xy16P0jpP8jroDmMpsGPjhtUOtR0.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(257, '9Doo1Re1EyNePkXnBxlod85UJZxYbFnY.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(258, 'Mis4b3iZ8zjUgF1VKpjHx88Wg9ZioIXF.png', '', 53, '2014-10-31 07:42:58', '2014-09-07 17:56:14', NULL, 0),
(259, 'Y2koTrJj5zYREHaTb1THeyDIKpZSjJU6.png', '', 52, '2014-09-07 17:56:35', '2014-09-07 17:56:35', NULL, 0),
(260, '0etSwa0V9UusMuaq5qUU4uOHVOGAXvXf.png', '', 51, '2014-09-07 17:56:52', '2014-09-07 17:56:52', NULL, 0),
(261, 'pgWBdRYN1Ftj4QcjfFK0TTu2dWiRBYI7.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(262, 'SF4Uz05Tq5FEp2WCZqX18OPueZl1AwYv.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(263, 'FZSTfhhHD4rh0TNOLyD4qAZSsrjKSQth.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(264, 'Y4UtjCbebIsxM0MDVRmLJf94rIrw7TaG.png', '', 50, '2014-10-31 07:43:25', '2014-09-07 17:57:22', NULL, 0),
(265, 'AKQ89cpMvfwrmuO26FgRnYdpQivpnviv.png', '', 49, '2014-09-07 19:11:27', '2014-09-07 19:11:27', NULL, 0),
(266, 'SPfJTUYQH8HdYj5Q7XPQ5PnWjSgf6fiR.png', '', 49, '2014-09-07 19:11:27', '2014-09-07 19:11:27', NULL, 0),
(269, '9zXq9Ojq7Ah4kGKDtz4qsRuzWQ6h4dwp.png', '', 49, '2014-09-07 19:17:16', '2014-09-07 19:17:16', NULL, 0),
(270, '0oMEm0bxraO2KwrgBf3YUXrtbA7yMgDl.png', '', 48, '2014-09-07 19:17:56', '2014-09-07 19:17:56', NULL, 0),
(271, 'MyKuQVEssvyhU49m1K5sbhmuWDvK9sB0.png', '', 48, '2014-09-07 19:17:56', '2014-09-07 19:17:56', NULL, 0),
(274, 'MjSWKQHsVuVGMUSHR35B27gvBsy1PkyM.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(275, 'wwltgIz6j49zthz2dpFujPosHRtEkYJ4.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(277, 'j2MHQWdAZptfMNs2xdAter2Lf74A48m1.png', '', 47, '2014-09-07 19:21:46', '2014-09-07 19:21:46', NULL, 0),
(278, 'YYSiIf7Ct3L2eZVVeM1Xyzurc1CfAUyt.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(279, 'gmvbQC8E7t7UBFORI3mljIpBYCb45FEf.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(281, 'HJU2BpMWXCB9TtBqR2Ua6drA7kZRdnGI.png', '', 46, '2014-09-07 19:22:38', '2014-09-07 19:22:38', NULL, 0),
(282, 'Up1VJvij59o19vcXpYmIZZIAJyUNIMl5.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(283, '4H6trwcO14OqIMUKBIeuNGN42JIt1YvC.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(284, 'QKk1NYqSQYXY8sCOXdcsjGphcG8juvaa.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(285, 'ymvs7eL8luTVq3g8FXsYEmXPNgM7C8S0.png', '', 40, '2014-10-26 12:09:44', '2014-09-07 19:45:56', NULL, 0),
(286, '3spfC9Jvl1rl7dhWoe32Bx4nn0yCJaJP.png', '', 41, '2014-09-07 20:21:23', '2014-09-07 20:21:23', NULL, 0),
(287, 'iiUbnSPLYU43FcDkRQNXHINHT9lac3Ev.png', '', 42, '2014-09-07 20:21:55', '2014-09-07 20:21:55', NULL, 0),
(288, '0CqZHiXK0eHqBkyOcLFmI2LkmNFuDTjo.png', '', 43, '2014-09-07 20:22:24', '2014-09-07 20:22:24', NULL, 0),
(289, 'MRVLEs2eZlX7PZ03DhlPyapowJSwDZxT.png', '', 44, '2014-09-07 20:23:14', '2014-09-07 20:23:14', NULL, 0),
(290, 'M3L27jzJedW1mltfHPMntMXZmDUlDWMB.png', '', 45, '2014-09-07 20:23:57', '2014-09-07 20:23:57', NULL, 0),
(291, 'Ipsh7V2veGxnY4zy6bNoTDCz0de9l9JM.png', '', 37, '2014-09-07 20:26:13', '2014-09-07 20:26:13', NULL, 0),
(292, 'ZYCQQKVeEQbCfiKWaf8xgjM5Jcn2RtCO.png', '', 36, '2014-09-07 20:26:51', '2014-09-07 20:26:51', NULL, 0),
(293, '367S9ChhTjbYmHMLkEHbmiFXFLJKchNt.png', '', 35, '2014-09-07 20:27:18', '2014-09-07 20:27:18', NULL, 0),
(295, '6pgP4eAI06tK1mFAvBqoOfIrGnmoDKVJ.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(296, '0ZrDnlegj2bEQWkkWXkTPYZ5Q7U1zvPV.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(297, 'LC1VHKCIpvXAH0ucnh6gIcwUdcHsqJ4J.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:28:25', NULL, 0),
(298, 'dSnR8Fp20knTGeMp3Cr8GVdn16cKjBpj.png', '', 34, '2014-10-26 12:11:00', '2014-09-07 20:29:47', NULL, 0),
(299, 'ImlfoogC4M2gh6Fgra4vPRngKFX9EAbD.png', '', 33, '2014-09-07 20:30:24', '2014-09-07 20:30:24', NULL, 0),
(300, 'lfHbju29jlyvV8wUTjgCF2gWF7CtrSvf.png', '', 32, '2014-09-07 20:30:51', '2014-09-07 20:30:51', NULL, 0),
(301, 'KceFTNr8QdIPs2Ba94ekwwgHOoO0WHw1.png', '', 31, '2014-09-07 20:31:19', '2014-09-07 20:31:19', NULL, 0),
(306, 'rVFwAODA72d6sTEmsaBdqYzOGsaWu0rR.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(307, 'SisGl35VxHk3luDbTL5sPx22uYSqHfjb.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(308, 'gBkLjpL5LACXERP1vqrS3DeJCQ9HHISc.png', '', 30, '2014-09-07 20:32:48', '2014-09-07 20:32:48', NULL, 0),
(310, 'Kfvqi4bRKettMEmaVqESDRm4vT3AmVTy.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(311, 'y5VQwf7kgpXZcTGcDN3U7HGmge3wcHUG.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(312, 'KbpJ5ObeZxBjgULIozhEvCLQNHpD2Y2q.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(313, '9eYRgdA26LOiuq4UHu9Jk4xhEuY35MO4.png', '', 29, '2014-10-26 12:11:30', '2014-09-07 20:34:08', NULL, 0),
(314, 'ND6lcWe5O5MJhvALegasX4yVjlmmVvEj.png', '', 12, '2014-09-07 20:35:04', '2014-09-07 20:35:04', NULL, 0),
(315, 'uMwsWEYB7Rkv0bVUyAOnKhpAzC4SnLh1.png', '', 11, '2014-09-07 20:35:34', '2014-09-07 20:35:34', NULL, 0),
(316, 'b07McshsBkIT4FS1fYWhe5zgMvXTBSJE.png', '', 10, '2014-09-07 20:36:36', '2014-09-07 20:36:36', NULL, 0),
(317, 'Uoov8aB5BoaJ79Ig4YYMxsRgDkd7Nwaz.png', '', 9, '2014-09-07 20:37:02', '2014-09-07 20:37:02', NULL, 0),
(318, 'ak6nSxMD4Yp0HepR1L9sGCHwYuK3PPnl.png', '', 8, '2014-09-07 20:37:55', '2014-09-07 20:37:55', NULL, 0),
(319, 'ooV1u8Ou8rP8cy9GSPAoCDZi0auWPST9.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(320, 'ssfUQKrXmxgqPrhY0wV8V6HGaU2hyziv.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(321, 'JV5ym2zgDxIHKEzUrnIA8KXX3AZi3qor.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(322, 'jX4o2qPfkIeI7zRUUeSWdAlfkVTtUCjf.png', '', 3, '2014-10-26 12:12:07', '2014-09-07 20:38:57', NULL, 0),
(323, 'qQrRMg3InhlKbxxCxH7HeQlvi0xOKNWc.png', '', 4, '2014-09-07 20:39:02', '2014-09-07 20:39:02', NULL, 0),
(324, 'Y8vPBrrqSIuDjp35fH4ulWwYnXxZU45q.png', '', 5, '2014-09-07 20:39:25', '2014-09-07 20:39:25', NULL, 0),
(325, 'ApG2LGiIXt84EREsRExnQW8HxrRlsKXy.png', '', 6, '2014-09-07 20:39:43', '2014-09-07 20:39:43', NULL, 0),
(326, 'RPt53CyPafI2UpnjEbRx8vnWt14LxzZY.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(327, '7ZNWQZY0gH8hiVp6Pv7yaVXzKRAby3wD.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(328, 'Y0exUKUkB9MR6HnHee2tgxdNgajwWF4H.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(329, 'tzbY7IbspYZ9AkTBgfSceH61xTlMs4HS.png', '', 7, '2014-10-26 12:10:31', '2014-09-07 20:41:44', NULL, 0),
(330, 'VjbLmttWuHoLqsqjXgQJRdrN9N4EgfFd.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(331, 's4KY8vWhb84T6YwtOXPmLm3eH4csfz2S.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(332, 'vR3XhX97ii26JHH1TysHYhrWH4KLUCi0.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(333, 'UF5JkkOv9ODDNj15BWICptTLefcv2EZg.png', '', 65, '2014-10-31 07:40:54', '2014-09-07 20:44:31', NULL, 0),
(342, 'osG1ocsjUKjbSyzr68ATjKK9NvN6iDPv.png', '', 79, '2014-09-22 07:43:38', '2014-09-07 20:58:20', NULL, 0),
(343, 'NElMuO6lNP4RLubg396OJ2fB5lOtLi4c.png', '', 80, '2014-09-22 07:42:49', '2014-09-07 20:58:25', NULL, 0),
(350, 'OOgWAJ1Df843j19YEoqabFGJ2juyVTB9.png', '', 48, '2014-09-07 21:07:05', '2014-09-07 21:07:05', NULL, 0),
(353, '6XwC81PPVpV9XBrQxGin87qJmv4IzqYr.png', '', 49, '2014-09-07 21:10:11', '2014-09-07 21:10:11', NULL, 0),
(354, 'U79AUUeHSjN2jzKfnStijRHuV7fwq9vp.png', '', 48, '2014-09-07 21:10:24', '2014-09-07 21:10:24', NULL, 0),
(358, 'ce06u7v3oioYHu86p9ZBrWnyHS7k4Pwx.png', '', 81, '2014-09-22 07:44:01', '2014-09-07 21:14:12', NULL, 0),
(359, 'nH4RrpBffQBx1Kd3s2plhzZl9DYeyeZA.png', '', 82, '2014-09-22 07:44:29', '2014-09-07 21:14:16', NULL, 0),
(361, '5xglI3XjVJs4w0RXIZD5Hrwnj4WHwbUt.png', '', 92, '2014-09-08 03:56:18', '2014-09-08 03:56:18', NULL, 0),
(363, 'WrvlITC1GPTFkOjCdUbxjTwgOtsf9qgs.png', '', 93, '2014-09-08 03:56:38', '2014-09-08 03:56:38', NULL, 0),
(366, 'bu1n6CMJ0vjrBVFyAkwAK59IFubd1aCA.png', '', 95, '2014-09-08 03:59:27', '2014-09-08 03:59:27', NULL, 0),
(368, 'RVcNrY0SyV0GLE4KWOtbRaECAd7PWeoD.png', '', 96, '2014-09-08 03:59:47', '2014-09-08 03:59:47', NULL, 0),
(373, 'csCtfKOl8KaTRlMppszsdozhLDMtqLHe.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:25:06', NULL, 0),
(380, 'bSQhlsLzNHrMtb3jhxhPm7Rn6H28tare.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:25:46', NULL, 0),
(384, 'tTQvk52SFboejjoGt8ItvoiS0gfFDk5q.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:26:12', NULL, 0),
(385, 'yA2m9LKCelE33ZuVyrZNqqTs6x1yUXuD.png', '', 98, '2014-09-08 04:26:58', '2014-09-08 04:26:58', NULL, 0),
(387, 'oHtWvNZpGCzPWP560jTMkqkdznahgTdw.png', '', 99, '2014-09-08 04:27:14', '2014-09-08 04:27:14', NULL, 0),
(390, '4aYIwrcmtSkYQKxeAmMSOUYZm1m41iic.png', '', 98, '2014-09-08 04:28:05', '2014-09-08 04:28:05', NULL, 0),
(392, 'adkYM9WQxXozjFDm2lTrLwGdHdA6D15x.png', '', 99, '2014-09-08 04:28:18', '2014-09-08 04:28:18', NULL, 0),
(393, 'JUbYbp9oN47UnDEABg5VWahAuEFpqbl5.png', '', 96, '2014-09-08 04:28:29', '2014-09-08 04:28:29', NULL, 0),
(394, '89AG7LfAN2Kmy81o1SBUfWQNqUPb5zlH.png', '', 95, '2014-09-08 04:28:39', '2014-09-08 04:28:39', NULL, 0),
(396, '0QjlEkO6TPpWZsdMDqjRDdy7HXaVWOyY.png', '', 93, '2014-09-08 04:29:02', '2014-09-08 04:29:02', NULL, 0),
(397, 'azmSZJ3sLUmXEJQZLFuzi8Ug6VnG9OQn.png', '', 92, '2014-09-08 04:29:15', '2014-09-08 04:29:15', NULL, 0),
(399, 'JTyvkJbYWymiKKyz5Y9gTqcRgH39xg9x.png', '', 101, '2014-09-08 04:29:45', '2014-09-08 04:29:45', NULL, 0),
(401, 'BooVWqlh1IdPKc21is1LmQfL6UNPnQjs.png', '', 102, '2014-09-08 04:30:06', '2014-09-08 04:30:06', NULL, 0),
(405, 'x0rujSMnRLWMxO97Ajmt2zD2XPkuWf9l.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:30:08', NULL, 0),
(407, 'R45tiWmc2VB4JzbAc2jjLxumowWP4j3N.png', '', 101, '2014-09-08 04:32:53', '2014-09-08 04:32:53', NULL, 0),
(408, 'EJ0oXVgUuguYi5APjwlspU2dcqESoCt2.png', '', 102, '2014-09-08 04:33:54', '2014-09-08 04:33:54', NULL, 0),
(409, 'qJRK1Xm0w7IyG44a5dimMVwI7CvXOV0i.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:35:03', NULL, 0),
(410, 'CTMaPAdeX8UzRgLnFKiQqfeIbJexk4UX.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:35:16', NULL, 0),
(411, 'UScKiwXHen3txwmFxepxTqCKKYAVjjap.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:35:28', NULL, 0),
(412, 'oAWxGlHToKWINiSB8IzMQcG0kfLmSWND.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:35:40', NULL, 0),
(414, 'dyZiSuIsnB3vc7WW9egJlrUJ34HHcjVe.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:42:03', NULL, 0),
(415, 'MY6juZjv0DEh4EGGxgkHha3SJhibTD86.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:42:52', NULL, 0),
(416, '5r2cJtG9Z5QsnjNJVeTzhuOvjQ2Oqkud.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:43:03', NULL, 0),
(417, 'iDEv7trzM2KFkIDYu0Hgoqalx0nidDCy.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:43:16', NULL, 0),
(418, 'rDdpSAjgeg7DaojUEQj1o1ltCwlDLaBr.png', '', 100, '2014-10-31 07:46:41', '2014-09-08 04:45:27', NULL, 0),
(419, 'xuCMjPiRzBmxRy45tZpuhStMMVyh5lpL.png', '', 97, '2014-10-31 07:47:23', '2014-09-08 04:45:39', NULL, 0),
(420, 'tiLO2fVuRfKtCI1auL1VPgwpmyNgDvWo.png', '', 94, '2014-10-31 07:48:41', '2014-09-08 04:45:51', NULL, 0),
(421, 'UA0AQTiq8cnzvJXFx8m1ulFmqvRziJPa.png', '', 91, '2014-10-31 07:49:22', '2014-09-08 04:46:06', NULL, 0),
(422, 'QCR5r1tfyUtqC0fpDmHvMMyJM2K6ruFm.png', '', 30, '2014-09-08 05:05:40', '2014-09-08 05:05:40', NULL, 0),
(423, '1WUjP25f0k85lUkQnCMLC7quJHFMQeV3.png', '', 46, '2014-09-08 05:05:55', '2014-09-08 05:05:55', NULL, 0),
(424, 'ZtVWGmkbJ2TH6uYwoMRrn3jOvMByY1SR.png', '', 47, '2014-09-08 05:06:07', '2014-09-08 05:06:07', NULL, 0),
(426, 'Lz6Q3MPmSo037ZFzowpbf5PlzelJ3P4A.png', '', 105, '2014-09-08 06:26:10', '2014-09-08 06:26:10', NULL, 0),
(428, 'JY3VtxtZJRR31xczhRaASyLouIMUyce6.png', '', 106, '2014-09-08 06:26:30', '2014-09-08 06:26:30', NULL, 0),
(431, 'rjnzVI7shT1o2ir31sTpeUc51xg7mAsP.png', '', 108, '2014-09-08 06:27:50', '2014-09-08 06:27:50', NULL, 0),
(433, 'hZcCylpdDcP7p6uRCh16fXyWEFDTKbr2.png', '', 109, '2014-09-08 06:28:06', '2014-09-08 06:28:06', NULL, 0),
(436, 'rme0L0sbyeesAVs8Zidnc9wxI0ZKVPO3.png', '', 111, '2014-09-08 06:29:17', '2014-09-08 06:29:17', NULL, 0),
(438, '2NKzovRwi2pOEzBtaiZY0yfhDdwxHgAT.png', '', 112, '2014-09-08 06:29:34', '2014-09-08 06:29:34', NULL, 0),
(441, 'ABkNZonfjuaKlfXtd2sjtYgKIOL6iQw0.png', '', 114, '2014-09-08 06:30:40', '2014-09-08 06:30:40', NULL, 0),
(443, 'y7NxOg0NMrE2dC7udo49ucSMGyqiJ9m4.png', '', 115, '2014-09-08 06:30:56', '2014-09-08 06:30:56', NULL, 0),
(445, '6cJZSHoqtaf16rwXOchoGuO8wq3SdxLR.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(446, 'qRMQMcfMLk2LEHiWG7AeVUDvlqgKSrB0.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(447, '8D10pvlIEidxxtpXCJi6hCEOm2X0tKm1.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(448, 'RLoh4LlaEFSvHrXGNhuvwiQUJd6q33dj.png', '', 104, '2014-10-31 07:45:53', '2014-09-08 06:35:38', NULL, 0),
(449, '1OTHscxSbzqECsjM9HwjejP88Hd8w9I5.png', '', 105, '2014-09-08 06:40:10', '2014-09-08 06:40:10', NULL, 0),
(450, 'gn1Iakvx1gMWW3vCJWRwmlCGO6pO85cU.png', '', 106, '2014-09-08 06:40:42', '2014-09-08 06:40:42', NULL, 0),
(451, 'MmDbQ3q1ua8WEvsLicn2v9TaFhzL0IzJ.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(452, 'yPAWrEfa1lc5zMUCzsS4kKxLeTKGzA2r.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(453, 'oBPHVgCWwj1xTFy3sDriBFNAifrhLNah.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(454, 'NoQDCkCjtBSnH7Hi0igKC2VthPrUdKTm.png', '', 107, '2014-10-31 07:45:22', '2014-09-08 06:41:41', NULL, 0),
(455, 'gbR2tSgRkKFLZZrGeoHxhOYiTrOVN927.png', '', 108, '2014-09-08 06:42:22', '2014-09-08 06:42:22', NULL, 0),
(456, 'CI75zZd1mDGVG1TmtBX97yfLLB8B1uiR.png', '', 109, '2014-09-08 06:42:45', '2014-09-08 06:42:45', NULL, 0),
(457, 'Cnubq8hfUGbzRRU5BJZ263ezj9suNihT.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(458, 'Y46dQy377onfiBMzCI89DlwR4GJjDFMx.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(459, 'BFah2ai2JjSWG1d6WpeQ5w1ek6mFgjGG.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(460, '6OAhyPQELEnBSGuiFg7KJOxeioYphPse.png', '', 110, '2014-10-31 07:44:38', '2014-09-08 06:44:42', NULL, 0),
(461, 'H2qSzFHeIpITC0y18wPxtKI2AkHjrN9m.png', '', 111, '2014-09-08 06:47:18', '2014-09-08 06:47:18', NULL, 0),
(462, 'msxSZOHpowzU2bgMEUM9S2l0Dovy0GJo.png', '', 112, '2014-09-08 06:47:28', '2014-09-08 06:47:28', NULL, 0),
(463, 'BgGsPiJGa0lzUPIuvmLfebmRwBMDBb3q.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(464, 'M4alhhsZLX011ZUC16OmGU2OWE3LbnZ0.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(465, 'N9qZsjMwWuJnUScW3UFm6C1z0QPiOXBc.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(466, '5KfWq0LyvcXL4h6oVlFAg5L8RUUCLzel.png', '', 113, '2014-10-31 07:44:13', '2014-09-08 06:47:42', NULL, 0),
(467, 'RqX6fe0E3VZ3AF96hVisnGKic0k2Eq5t.png', '', 114, '2014-09-08 06:48:11', '2014-09-08 06:48:11', NULL, 0),
(468, 'G6Ns3ExAIFsS7PRysyPZeScdBEhZhtFy.png', '', 115, '2014-09-08 06:48:34', '2014-09-08 06:48:34', NULL, 0),
(469, 'wubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 2),
(470, 'LkbmkP81jCbyJCMeVYW2haM9cTix0Q9x.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 3),
(472, 'tR8kBPBTK6krJCsDf8xzpsJRIHDNrmhR.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 4),
(473, 'dDjvJWMrezjAk56SyBBpkwrxVOrMqnTt.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 5),
(474, 'b6KQtHEmqzP661FcDe195ahmo5OH9e49.png', '', 1, '2014-09-10 10:35:57', '2014-09-08 06:56:31', NULL, 6),
(511, 'VAfD2x8AhQqN1CDGGQg8QvcpMSGMQC8t.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(512, 'Wni0AcYkgJijAnoUTA0RgNQzJbsSiFtp.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(513, 'uyQJ6tBRY8mHqa7AtdAlBiNnr59XGxZa.png', '', 116, '2014-09-08 17:34:12', '2014-09-08 17:34:12', NULL, 0),
(515, 'Saq25bbD0VB4nZZqsozsAckCSVGbHwu1.png', '', 116, '2014-09-08 17:41:31', '2014-09-08 17:41:31', NULL, 0),
(516, 'jzhX5TmGe2NlakYdd6C88Qjc4e9OVChp.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(517, '1HtRB4aK24mqMIdBlI75BaLW0hMAb0H9.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(518, 'k5hNtnCtDyMWQrkKJXqCjAbGWqS5RTyT.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(519, '2RlFf1TIqHxBqOcvDpR64HeKK2pDGIDw.png', '', 117, '2014-09-08 17:45:14', '2014-09-08 17:45:14', NULL, 0),
(520, 'ZsrpbMjx4rScOzBpauTn4Oa4V2zRFgi8.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(521, 'b4QI6LOlFPTmSVdcZWlj5wf4pM3nRTPX.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(522, 'cjmfZWo4l2cgQRVXBTdGzRD4JCR6Er7E.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(523, 'lQgVkc9jmZQme7akaeBHLbWpvkc2Tur4.png', '', 119, '2014-09-08 20:16:08', '2014-09-08 20:16:08', NULL, 0),
(528, '58M4X9A9E0Wx50iuaa7yDSbrNgpa4ve7.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(529, 'JcmECJ4k4OU9xFr7dwMTFkyf2DrWDIrQ.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(530, 'F51iIAgEHQWsVXRKWNvtqLl8TC5R1Z9t.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(531, 'hpgdLJc5r3iuGrPxL4RQO1yOcqfjjr6v.png', '', 120, '2014-09-08 20:35:27', '2014-09-08 20:35:27', NULL, 0),
(552, 'Me96v2o6f7Fresdazm5H0xRzRtptZ4rH.png', '', 122, '2014-09-09 04:40:50', '2014-09-09 04:40:50', NULL, 0),
(553, 'Ahe40SPcj6OuaAvjso4n6YDiVEtc9VAU.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(554, 'pEet9lgv7D82cKkF9Rmasi2eJmHtsTi7.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(555, 'MCNtmVeWuWCVRB78yIBnrJB1FIs3Qr0M.png', '', 122, '2014-09-09 04:42:43', '2014-09-09 04:42:43', NULL, 0),
(556, 'plcO4PDf58oq3hjzvuNlP9s0PtUwF227.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(557, '2TWF24JbNvJLYz5ljTPGIcv6PLWD4PO5.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(558, '47jvDLPu5vz1ze30x5z4BOPRqvIFW0dv.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(559, 'Y3LwgDQPtBirlc6UnBTEXrSmnCu4tAtW.png', '', 123, '2014-09-09 06:56:57', '2014-09-09 06:56:57', NULL, 0),
(560, 'TJWnUbuZYfSSyx9t9W7zbCrbN7iBOFt2.png', '', 124, '2014-09-09 06:59:27', '2014-09-09 06:59:27', NULL, 0),
(561, '525hAU4xg5gKba1P0fFbkP5jElZdVFQD.png', '', 124, '2014-09-09 06:59:27', '2014-09-09 06:59:27', NULL, 0),
(562, 'P9vNnU6ZowBgKyhr69xqv3fmhOwooBhv.png', '', 125, '2014-09-09 07:01:22', '2014-09-09 07:01:22', NULL, 0),
(563, '8GXOBmjfpK0pfFVSFkQmf5RGT0aJXaRa.png', '', 125, '2014-09-09 07:01:22', '2014-09-09 07:01:22', NULL, 0),
(568, 'zkLgZ1LGhux1pLCMEBAGMxxL0c03jp67.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(569, 'klDV0qTNlwSdsV2Artco396Jm4VzSnNW.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(570, 'yJSsLkmUZG03siKZonT1Ip8Y8MLKCecU.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(571, '2h6XzXv32dLtyFZbsE0Dj5dotT6V3LUK.png', '', 126, '2014-09-09 07:57:47', '2014-09-09 07:57:47', NULL, 0),
(572, 'x3LO7wupfwdCTGGe6Ru1k6KQSQNWcwbe.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(573, 'AC86nVY4f0gYLG2JaKjT0BzxmNhECHhN.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(574, 'uQCIdKR6sFNzXNznxoBPsvRgyHaRCQEX.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(575, 'TgaTo5aulzYvKWfLb7a4NkUetHJkrF3E.png', '', 121, '2014-09-09 08:03:59', '2014-09-09 08:03:59', NULL, 0),
(576, 'zuCWvHLHcx8Iz22fPohZmsUiy73GhJhy.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(577, '4J0F5fR6AXaKzl779wYOLXoWneqYvtF2.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(578, 'Xt5BckPu3pJuO7bb8mCwi2DlVpaRKLlN.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(579, 'O5CfgWSVAXZL62m5x5omZl1wUsB46EZs.png', '', 127, '2014-09-09 09:15:49', '2014-09-09 09:15:49', NULL, 0),
(580, 'aab5QdxPMiu17NoZ9d1utKdIyuiMrpI0.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(581, 'xCXplU9UWEVzjuKVHksSZ77sslBzd4zI.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(582, '23FiaVwAA4ic68qtBnnYJvTG3nsfGQoJ.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(583, 'BgD2CO8XNFzLYOJPyJRxVdxafp0a8t7H.png', '', 128, '2014-09-09 10:35:10', '2014-09-09 10:35:10', NULL, 0),
(584, 'Z7mTBYXEap4VcfG70mOf2X1RyfT33o9T.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(585, 'Bb61Xis1DWtOOaktEHxueYSjuEdsbqMn.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(586, 'fPhwpiegE4cU8QauwkiS0KHYmlKyoTaK.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(587, 'c0mHn0APjdNTWXwInKeV3AysF578xWpq.png', '', 129, '2014-09-09 11:22:38', '2014-09-09 11:22:38', NULL, 0),
(588, 'N0a9qUrfhxVilQSqv5dUXBjnvh0nUWfo.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(589, 'qZfDwAd3ZQvt0cTDZ8fylvkntEfbRLXR.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(590, 'URUMB6Dt6vQXQEHQiRDNvhLtoL0gUsnf.png', '', 130, '2014-09-09 13:54:34', '2014-09-09 13:54:34', NULL, 0),
(591, 'Guwt8C4XWp50JUgQ0q3wldLc8xYqSs7v.png', '', 131, '2014-09-09 16:26:49', '2014-09-09 16:26:49', NULL, 0),
(595, 'AlDRJ6KvkXTLeFYHJNRFL5tSAfthe4EB.png', '', 131, '2014-09-09 18:43:06', '2014-09-09 18:43:06', NULL, 0),
(596, 'cailMSX6Ca9yG0vDTGdOvwwt7kJGaawt.png', '', 131, '2014-09-09 18:43:06', '2014-09-09 18:43:06', NULL, 0),
(597, 'FN52qSv1A1jxddx9cm6byUWlcltsk1Am.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(598, '17ffbNjCL9D3W9INCEBPySvToK6fOnGf.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(599, 'TDlmQD6cffgGEsiFo5OsUs3QyboNVWLp.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(600, 'j3iy5P8jcsM2rjFBOy4eb2vKbYTFpVf5.png', '', 133, '2014-09-09 18:44:48', '2014-09-09 18:44:48', NULL, 0),
(601, '4vMccUkHDSggBFA2ZQH4fVkCp8KLj3ZC.png', '', 132, '2014-09-09 18:58:52', '2014-09-09 18:58:52', NULL, 0),
(602, 'r1sifluXntlWux6z74K3KS5ZrRhIQsh2.png', '', 132, '2014-09-09 18:58:52', '2014-09-09 18:58:52', NULL, 0),
(603, 'RnMDDpLEnewzAZSSL1pgDAd9U3gGlCDC.png', '', 132, '2014-09-09 19:01:50', '2014-09-09 19:01:50', NULL, 0),
(604, 'TfNBljiQscKGvaIRqo2wjaFx8JBEEOsL.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(605, 'NbpTpWgfm61ZmEwAZ91B3opxN9CnRck1.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(606, 'AMPCxwJaqIeuxCAqTtuow4GIwVE86i5o.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(607, 'S64SPrIA9SCnOpBaEWG6YbsjoZGyXBGN.png', '', 134, '2014-09-09 19:27:52', '2014-09-09 19:27:52', NULL, 0),
(608, 'zlp2LF8JkbcpqMqnFsDuYnl235r3MS2c.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(609, 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(610, '5prKwwQAUwNXIYTMhm8bMa6A9dBAHAQh.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(611, 'VKlhRqLWk0FDBM5LRZsuxNTPgS68ekpC.png', '', 135, '2014-09-09 20:49:37', '2014-09-09 20:49:37', NULL, 0),
(612, 'zlp2LF8JkbcpqMqnFsDuYnl235r3MS2c.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(613, 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(614, '5prKwwQAUwNXIYTMhm8bMa6A9dBAHAQh.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(615, 'VKlhRqLWk0FDBM5LRZsuxNTPgS68ekpC.png', '', 135, '2014-09-09 20:49:53', '2014-09-09 20:49:53', NULL, 0),
(616, 'bayud0BYA48gYhSx50rd8HoEOe4SBHNk.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(617, 'pEUkwIB9cXS4e1uuP27oWtJfi9MVDaaO.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(618, 'CvvOQNBaEoOwqQ9NJD4k35XGuh4pCpNZ.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(619, 'AsCXXHG3mpt6FUGTCtrwX3aQq90Rescq.png', '', 136, '2014-09-09 20:50:33', '2014-09-09 20:50:33', NULL, 0),
(624, 'ZwCHH4h8GaIoofd7UpRjIwR47MKkOB9E.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(625, 'PTz0c6d6sjDFoP9bAA95mftX3AitSDFA.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(626, 'ktj8WdSTXJqWZ6zP9zYL9WWzqoxdaPeK.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(627, 'lpJmJYPMB0AtueVVW61TKLHLjSVWVUUl.png', '', 139, '2014-09-09 21:52:07', '2014-09-09 21:52:07', NULL, 0),
(628, 'M1nMFUtvr1Or2p3HdGOrT4v4GAcbBp2a.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(629, 'h2eYnMIhE6STsAH6GyQNpTqRp9GtmBYj.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(630, '5k1z61MTMFnqvf4wiCViikutV2C6INh5.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(631, 'f2q7UBKjaw8NnOOBs4nFpUlOG56v8AWE.png', '', 138, '2014-09-09 21:58:07', '2014-09-09 21:58:07', NULL, 0),
(632, 'pBpmgCj4W76KRtvANt4uMOh7mCvpAwPj.jpg', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(633, 'MHmKxbwptxFFPuj5YVnwGgeM5bEki5qx.png', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(634, 'SjqWlNIkgZXyZPWFB658FMHP5RdoRGmj.jpg', 'Concept iPhone 6', NULL, '2014-09-10 05:07:12', '2014-09-10 05:07:12', 1, 0),
(641, 'xdpvZWBbNIlmFlXC3KI5748Mzs7outkw.png', '', 143, '2014-09-10 09:30:33', '2014-09-10 09:30:33', NULL, 0),
(643, 'BOr0xULVQsRpI7N4pJYxgJ2oQ13zQSV1.png', '', 142, '2014-09-10 09:31:05', '2014-09-10 09:31:05', NULL, 0),
(649, 't1f2SV9mgxeiOdIQPO6244ghBKndZuKz.png', '', 1, '2014-09-10 10:35:57', '2014-09-10 09:48:17', NULL, 1),
(650, 'B3xwmdQqwuaW4eH6la5ipdpeTVJMmEJL.png', '', 140, '2014-11-08 05:23:32', '2014-09-10 09:51:05', NULL, 1),
(651, 'kEQUL0npYXEfc0XA1V2xhRVup5IVqTqa.png', '', 140, '2014-11-08 05:23:32', '2014-09-10 09:51:05', NULL, 2),
(653, 'xqxVBIalDFUSg8UkGXrn739Mf6ZliwR4.png', '', 141, '2014-09-11 10:56:48', '2014-09-10 09:52:14', NULL, 0),
(654, 'mExNQFWv9ZjsoDkWmphtZXIAzG6ksTI3.png', '', 142, '2014-09-10 09:52:37', '2014-09-10 09:52:37', NULL, 0),
(655, '3aZiV3LSCccEQnXNvKw65EH8esvfUhTG.png', '', 143, '2014-09-10 09:53:09', '2014-09-10 09:53:09', NULL, 0),
(660, 'iBqsUm0O5VZHpTa84rjZjz6T7esqmLRW.png', '', 165, '2014-09-11 03:39:14', '2014-09-11 03:07:13', NULL, 0),
(661, '1vZcpke61HdjxuJIfSNKTicCK4swcpXZ.png', '', 166, '2014-09-11 03:31:59', '2014-09-11 03:07:34', NULL, 0),
(663, 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', '', 141, '2014-09-11 10:56:48', '2014-09-11 10:56:48', NULL, 0),
(665, '6RVsHKgjYrjDsvl1AJCJgHJaRmDJe3i4.png', '', 145, '2014-11-12 07:37:01', '2014-09-11 10:58:13', NULL, 1),
(666, 'hI58I6agtFaQ8kK62eLp2IMZgYTKaget.png', '', 145, '2014-11-12 07:37:01', '2014-09-11 10:58:13', NULL, 2),
(668, 'VLClOTT88Wd4tJxjOLLWsT2dWkKwcLHZ.png', '', 146, '2014-09-11 10:59:42', '2014-09-11 10:59:42', NULL, 0),
(669, 'aGLyWwJLpma4PxQUJVTbz1axzUdez4UY.png', '', 146, '2014-09-11 10:59:42', '2014-09-11 10:59:42', NULL, 0),
(670, 'rzJeFvvSeLON5sLZYY05adQKquavLWQY.png', '', 148, '2014-09-11 11:01:28', '2014-09-11 11:01:28', NULL, 0),
(671, 'NJDdVN09G9T1w4RSw0CMrOZMbpzzHheJ.png', '', 148, '2014-09-11 11:01:28', '2014-09-11 11:01:28', NULL, 0),
(672, 'wEeDjDlA0yKbwLGjicBBrVwuANX6n8FO.png', '', 147, '2014-09-11 11:03:51', '2014-09-11 11:01:57', NULL, 0),
(673, 'JHtFZphxLim62SxZhAq738dtxrn2l7Rr.png', '', 147, '2014-09-11 11:03:51', '2014-09-11 11:01:57', NULL, 0),
(674, 'LHAfuODV1pmUHLL4eZPENz9qRkgpAl0i.png', '', 149, '2014-11-12 07:36:43', '2014-09-11 11:02:35', NULL, 1),
(675, 'QNkjrfyuALeAKE0XfEbEo29VIvKjlEDL.png', '', 149, '2014-11-12 07:36:43', '2014-09-11 11:02:35', NULL, 2),
(677, 'z44VBnIyqSHWXYk073gH6zDvMxtHsrdy.png', '', 150, '2014-09-11 11:02:58', '2014-09-11 11:02:58', NULL, 0),
(678, 'sODsbUsMoVkgDVBc2Pugtjc9uy7MxsPS.png', '', 150, '2014-09-11 11:02:58', '2014-09-11 11:02:58', NULL, 0),
(683, 'A9I91RCUg3IFIyxogzKQtbVr6l7Cp97J.jpg', '', 167, '2014-09-18 06:20:43', '2014-09-16 06:35:26', NULL, 0),
(684, 'HAJ7Q8NO75LceYcIsCZmHYaFSGZpKAYi.jpeg', '', 168, '2014-09-18 06:20:49', '2014-09-16 06:57:17', NULL, 0),
(685, 'ywAIEOYLR4DEkMk0f71kb1ky3AL5bbgq.jpg', '', 169, '2014-09-18 06:20:53', '2014-09-16 07:22:15', NULL, 0),
(686, 'OnimueHcNa1PnZA43Joht7SiV1l7ulrM.jpg', '', 169, '2014-09-18 06:20:53', '2014-09-16 07:22:15', NULL, 0),
(687, 'fQaEzp4h8090tJsGBqe8Y4pXzoKc2mzP.png', '', 140, '2014-11-08 05:23:32', '2014-09-18 06:42:44', NULL, 0),
(688, 'gHWcMhRtPnr5Pd8NfNJmgz8RT0tP1OAT.png', '', 140, '2014-11-08 05:23:32', '2014-09-18 06:42:44', NULL, 0),
(689, 'PinFs6ZvfGdTsfkZnll4LerJB3S0UyXV.png', '', 145, '2014-11-12 07:37:01', '2014-09-18 06:43:23', NULL, 3),
(690, 'BRin1BmQrXG9lnfUFo4zs46ZAbVgVRql.png', '', 145, '2014-11-12 07:37:01', '2014-09-18 06:43:23', NULL, 0),
(691, 'WqbfeBugU5JXM49wEiDqEjon9rVw9MMy.png', '', 149, '2014-11-12 07:36:43', '2014-09-18 06:44:06', NULL, 0),
(692, '1HfXW5PEN1dsW6M5AjaOJ4wkuMf8H47Q.png', '', 149, '2014-11-12 07:36:43', '2014-09-18 06:44:06', NULL, 0),
(693, 'nP79A0MGZbwbDQzXXtPldVmgE9QvSgHj.png', '', 151, '2014-09-18 06:44:52', '2014-09-18 06:44:52', NULL, 0),
(694, 'TQOVzBzN1mjwtpfxJXuSSBx7D4CKbGhI.png', '', 151, '2014-09-18 06:44:52', '2014-09-18 06:44:52', NULL, 0),
(695, 'NRcoZNn4RVvlTqaD7gEZwMBT6Rif6AQz.png', '', 152, '2014-09-18 09:22:38', '2014-09-18 06:45:11', NULL, 0),
(696, 'uqHEMs0LfWwUDZSKKvVaRxhiWdGAfmMB.png', '', 152, '2014-09-18 09:22:38', '2014-09-18 06:45:11', NULL, 0),
(697, 'ZbwzTEa6BtZ8BLipjfveJFK6dNUjYmXw.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 1),
(698, 'GRayv5NeWDs8jy2E199PGzyk0LDj3qmC.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 2),
(699, 'KZgGU6r5jw4zvVAyqS2CthFbt0UX0EX4.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:47:44', NULL, 0),
(700, 'C4P8IIMhwMtVffFTvRshl2YBhYG433aM.png', '', 153, '2014-11-12 07:36:19', '2014-09-18 06:52:23', NULL, 3),
(701, 'WQWJmxBdPho467ffEbqJBG2ICsJN1wcN.png', '', 156, '2014-09-18 09:21:00', '2014-09-18 06:53:06', NULL, 0),
(702, 'oPHfMa4SP1weov8xIxKhmBz3X5eH4gEc.png', '', 156, '2014-09-18 09:21:00', '2014-09-18 06:53:06', NULL, 0),
(703, 'xwznMULDxdW9jQK2dPatny6EfmOMoti4.png', '', 155, '2014-09-18 09:20:51', '2014-09-18 06:53:24', NULL, 0),
(704, '2CQ5aIcTBtkDJOCDkfiHWS75NHjrNSr1.png', '', 155, '2014-09-18 09:20:51', '2014-09-18 06:53:24', NULL, 0),
(705, '3AVF2Tj2gnfLZMEhNGW8rUpKw0OCf9As.png', '', 154, '2014-09-18 09:20:43', '2014-09-18 06:53:49', NULL, 0),
(706, 'QDIAMI0T4ujbo2hYw6K9MyKk2WuEqDMI.png', '', 154, '2014-09-18 09:20:43', '2014-09-18 06:53:49', NULL, 0),
(707, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:08:33', NULL, 3),
(708, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(709, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(710, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:08:33', NULL, 0),
(711, '4KtnukBM5GYsIOWhRkHkCh2O9TsE6V0N.png', '', 158, '2014-09-18 10:09:08', '2014-09-18 10:09:08', NULL, 0),
(712, 'wVM8ACB05qrSscO7qbGyxk5m6VE47MTb.png', '', 158, '2014-09-18 10:09:08', '2014-09-18 10:09:08', NULL, 0),
(713, 'KaGThPYbbBFSJumckFTsCR2iptxSlSOX.png', '', 159, '2014-09-18 10:09:26', '2014-09-18 10:09:26', NULL, 0),
(714, 'yElJcljYsZu1iaUPvey7uabGVbUnRhMu.png', '', 159, '2014-09-18 10:09:26', '2014-09-18 10:09:26', NULL, 0),
(715, 'hfIKgDWeIEfKhh25WyndSXhdxLGfyLIg.png', '', 160, '2014-09-18 10:09:43', '2014-09-18 10:09:43', NULL, 0),
(716, 'j3YAo2pBlsAV7WMrXdKqwT7HaDoNnV7h.png', '', 160, '2014-09-18 10:09:43', '2014-09-18 10:09:43', NULL, 0),
(717, 'vEvqhz3Hyo4w6XRZfLpSqR5GSbnBs7Cf.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(718, 'xCyKatyxAxuaRLtFieENp4TnczoefRht.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(719, 'yOgP31E8lCcX6mXzJj59q7POrhWBnP66.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(720, 'bVW9dGD74YCIDFeV8NSywcRog6sZsdmq.png', '', 161, '2014-11-11 08:05:24', '2014-09-18 10:10:15', NULL, 0),
(721, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:10:20', NULL, 3),
(722, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(723, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(724, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:10:20', NULL, 0),
(725, 'SYeQB6Vvq0G2TFoRYt44mzopE7XEiPdx.png', '', 162, '2014-09-18 10:10:42', '2014-09-18 10:10:42', NULL, 0),
(726, 'UduGDf9icZezhV4tof7h3P5mdR4Gnlvp.png', '', 162, '2014-09-18 10:10:42', '2014-09-18 10:10:42', NULL, 0),
(731, 'LpzWUK6QUK2Sy8Sj6PcrJ9syRsr836It.png', '', 164, '2014-09-19 02:32:26', '2014-09-18 10:11:42', NULL, 0),
(732, 'Dp0KEegn9YSE3n2zPIm9OEMKAHF9yhSt.png', '', 164, '2014-09-19 02:32:26', '2014-09-18 10:11:42', NULL, 0),
(733, 'LCuxxkrftHAIv3IDLKeKZJAyw81HIzLC.png', '', 157, '2014-11-12 07:33:51', '2014-09-18 10:11:47', NULL, 3),
(734, 'nhi9DZEEv6gDc02nrRtF58q7e2EhDFkM.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(735, 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(736, 'RYi1FSug3H3jXryYbkaqchxIBD2OFjk3.png', '', 157, '2014-11-12 07:33:52', '2014-09-18 10:11:47', NULL, 0),
(737, 'w1bz1m8JP8Wuf0CYIancUIbholEunsaM.png', '', 163, '2014-09-18 10:15:52', '2014-09-18 10:15:52', NULL, 0),
(738, 'LznrIK7OkxRnAB3sx4fHIeih3T7psYZb.png', '', 163, '2014-09-18 10:15:52', '2014-09-18 10:15:52', NULL, 0),
(744, 'J59cP4slSniwqrmWWW65MpGCejz8un7x.png', '', 174, '2014-10-02 06:47:42', '2014-09-27 04:48:11', NULL, 0),
(746, 'M1FPNk2bm0iGsuFqkTQ99eBMtO29RF9b.png', '', 170, '2014-10-02 06:46:42', '2014-09-27 05:31:25', NULL, 0),
(747, 'Hg6OR0LAWCXBxRFL6RBo4tHYWLxn3GaZ.png', '', 171, '2014-10-02 06:47:20', '2014-09-27 05:33:30', NULL, 0),
(748, 'XNZZHmo0U5EJYq5TOzzy6XRtBXS5U1Br.png', '', 172, '2014-11-04 02:15:42', '2014-09-27 05:40:20', NULL, 0),
(749, '8DjVyo9xvzUxO17DyI4A5WNcYwKrVFis.png', '', 175, '2014-09-27 05:41:52', '2014-09-27 05:41:39', NULL, 0),
(750, 'YGcp4JP3RcSfr4PkWa8qkFEvfXQ9H1xi.jpeg', '', 176, '2014-10-10 10:19:40', '2014-10-10 10:19:40', NULL, 0),
(751, '2WHWN30lkTLOTiDzPd7d5nq2B0g1jZwA.jpeg', '', 177, '2014-10-10 10:21:21', '2014-10-10 10:20:08', NULL, 0),
(752, '1DgsWY20DhRS9VtEqpPsTEKiN6OVIQTq.jpeg', '', 178, '2014-10-10 10:21:09', '2014-10-10 10:20:26', NULL, 0),
(753, 'RAzv730qcxp22bNNT79H6wabUog6mc5x.png', '', 179, '2014-10-31 06:11:58', '2014-10-24 10:48:14', NULL, 0),
(754, '2yMYsuf7Z3AV8EneRsVuSMi5dO47l8Ax.png', '', 180, '2014-10-24 10:54:03', '2014-10-24 10:54:03', NULL, 0),
(755, 'b51QHUAYtChn5l0SlkOuHXQHYHR7zdfL.png', '', 180, '2014-10-24 10:54:03', '2014-10-24 10:54:03', NULL, 0),
(756, 'Lz2V0JKXQZZRatkorI2MvNYlbyvlqFZp.png', '', 181, '2014-10-24 10:54:52', '2014-10-24 10:54:52', NULL, 0),
(757, 'QNV40jtQqgTaCLFRcubTJGoNQuJHmN5u.png', '', 181, '2014-10-24 10:54:52', '2014-10-24 10:54:52', NULL, 0),
(758, '9u8I4YlJZQtKmgdoMz7oXe7TL76Mc6PN.png', '', 182, '2014-10-24 10:56:13', '2014-10-24 10:56:13', NULL, 0),
(759, 'b6aACN6Nfw1QbWp1v1B4LWHyoZDcKsIs.png', '', 182, '2014-10-24 10:56:13', '2014-10-24 10:56:13', NULL, 0),
(760, 'LkAKeCjx5ChkqCZgAINwe2vyMoYiNOXW.png', '', 183, '2014-10-31 06:10:30', '2014-10-24 10:59:06', NULL, 0),
(761, 'LKDocNFG9VURj6GAdebBUkwG22bM5UZ9.png', '', 184, '2014-10-24 10:59:58', '2014-10-24 10:59:58', NULL, 0),
(762, 'L4Bk4Oz7AZ8ZoWVcQ8a88xSsoGUHdTGz.png', '', 184, '2014-10-24 10:59:58', '2014-10-24 10:59:58', NULL, 0),
(763, 'cvh1naHLNnf9CX0YqcjaoidXgvSwgoao.png', '', 185, '2014-10-24 11:00:47', '2014-10-24 11:00:47', NULL, 0),
(764, '08HdkkW0FQWHKhT0URddoaoWY2ajv6TI.png', '', 185, '2014-10-24 11:00:47', '2014-10-24 11:00:47', NULL, 0),
(765, 'h7MVJkwZ76KJVzMeg2xSvb6l0czEqThW.png', '', 186, '2014-10-24 11:01:12', '2014-10-24 11:01:12', NULL, 0),
(766, 'FZldAsSeKQOTz8HJD7ox7yka3CYHoZvE.png', '', 186, '2014-10-24 11:01:12', '2014-10-24 11:01:12', NULL, 0),
(767, 'ZgDOkVnhYt7mxz8bcRCzgluFRwynzNeU.png', '', 187, '2014-10-31 06:08:22', '2014-10-24 11:02:30', NULL, 0),
(768, 'IAo9Qd6jIQQXSK5OCqUkVQHidcwwWJcv.png', '', 188, '2014-10-24 11:03:47', '2014-10-24 11:03:47', NULL, 0),
(769, 'MsqoOzsPM0cZIXRRhIUroJxThmkbkkpF.png', '', 188, '2014-10-24 11:03:47', '2014-10-24 11:03:47', NULL, 0);
INSERT INTO `pl_laimages` (`id`, `lapic`, `latitle`, `laproduct_id`, `updated_at`, `created_at`, `laevent`, `laorder`) VALUES
(770, 'vX3VPjgISn6wgTENGwebnwNiG99l33pe.png', '', 189, '2014-10-24 11:04:12', '2014-10-24 11:04:12', NULL, 0),
(771, 'ZeSAL0rFit9H1UJzxn4256mhGQGJ4gN4.png', '', 189, '2014-10-24 11:04:12', '2014-10-24 11:04:12', NULL, 0),
(772, 'Z1v1AdyIp2vOGuClZxCl01hSecT5Z68L.png', '', 190, '2014-10-24 11:04:31', '2014-10-24 11:04:31', NULL, 0),
(773, 'XRurtC44EY5lYS24a9IK7l2G9kZJZmYW.png', '', 190, '2014-10-24 11:04:31', '2014-10-24 11:04:31', NULL, 0),
(774, 'ZXHbpPvkAAt71XbGXM7jKinEidTAjecG.png', '', 191, '2014-10-31 06:00:04', '2014-10-24 11:16:15', NULL, 0),
(775, 'xUcN4yxzY7ySXo2xrJcz9d0aBiYQCdHi.png', '', 192, '2014-10-31 06:07:48', '2014-10-24 11:18:34', NULL, 0),
(776, 'hk5PevKjcUxvbWs1XdjpnAIlAXVAA7Eb.png', '', 192, '2014-10-31 06:07:48', '2014-10-24 11:18:34', NULL, 0),
(777, 'YEl4Vqz0DzqiLpEkwzoSCLBBM5YsHp0f.png', '', 193, '2014-10-24 11:19:05', '2014-10-24 11:19:05', NULL, 0),
(778, 'C5KYvCgTRZZVEidjXOnTOpxdqT5gR3Ez.png', '', 193, '2014-10-24 11:19:05', '2014-10-24 11:19:05', NULL, 0),
(779, 'qPniCo6o8CwJDpUPRcy8UeOtxfFSfJ9I.png', '', 194, '2014-10-24 11:19:26', '2014-10-24 11:19:26', NULL, 0),
(780, 'SLuvxr1tJ3egxBYrxIJjKreU07vbzrhl.png', '', 194, '2014-10-24 11:19:26', '2014-10-24 11:19:26', NULL, 0),
(781, 'mO1jfJmn2gvHtB80Rty7uCFuPodoDZLZ.png', '', 195, '2014-10-31 06:07:24', '2014-10-24 11:21:41', NULL, 0),
(782, 'Shu0bYDfyQw6AfLK53MbNrwZd4B6zujg.png', '', 196, '2014-10-24 11:23:25', '2014-10-24 11:23:25', NULL, 0),
(783, '5rAJLv01U2uynmCe2A8mmHzaJO4jniZX.png', '', 196, '2014-10-24 11:23:25', '2014-10-24 11:23:25', NULL, 0),
(784, 'hUO7jyUim9QtSbzpd1fR2nSwSOsLwVrB.png', '', 197, '2014-10-24 11:23:51', '2014-10-24 11:23:51', NULL, 0),
(785, '1gNBsBAsMvUpXr2M1Xs4XaSCZyf7oIQD.png', '', 197, '2014-10-24 11:23:51', '2014-10-24 11:23:51', NULL, 0),
(786, 'MoS75tDulQr1IEhcjANXiMBDFSXGBp3M.png', '', 198, '2014-10-24 11:24:16', '2014-10-24 11:24:16', NULL, 0),
(787, 'nx11z1Yh5fGal99QxXaP5fSIQSnX1Mm0.png', '', 198, '2014-10-24 11:24:16', '2014-10-24 11:24:16', NULL, 0),
(788, 'lGhAt6yuAWCWysGrwpjafVwMBzVro96n.png', '', 199, '2014-10-31 06:07:05', '2014-10-24 11:25:51', NULL, 0),
(789, 't60CtMnOyO4MXz71H68LYdzbZs487yRU.png', '', 200, '2014-10-24 11:30:26', '2014-10-24 11:30:26', NULL, 0),
(790, 'AAcQobHc8LHmIOX7QmFqaUevqLkcv2Bo.png', '', 200, '2014-10-24 11:30:26', '2014-10-24 11:30:26', NULL, 0),
(791, 'qBDty1BMQkNfbS1yENFDt7YHnDVoXI37.png', '', 201, '2014-10-24 11:30:57', '2014-10-24 11:30:57', NULL, 0),
(792, 'nlrQXC1dgTkrnkJhZAvO5QvXKRF3tBfg.png', '', 201, '2014-10-24 11:30:57', '2014-10-24 11:30:57', NULL, 0),
(793, 'frwQItSwkZcJsHJh4q88STHOQuUVKfzO.png', '', 202, '2014-10-24 11:31:31', '2014-10-24 11:31:31', NULL, 0),
(794, 'tzhN16ZAyo09SeysGZf7ARpIiCwEvTGv.png', '', 202, '2014-10-24 11:31:31', '2014-10-24 11:31:31', NULL, 0),
(795, 'LYKnoVHlXGna7CH3IwjTIQNlSCOofRjA.png', '', 203, '2014-10-31 06:06:30', '2014-10-24 11:39:03', NULL, 0),
(796, 'ZoMBfDyq1uw5lJChLKi1bnPhptv5ICer.png', '', 204, '2014-10-24 11:40:13', '2014-10-24 11:40:13', NULL, 0),
(797, 'SXIOIhOSMSAY8ycjZuf6bDFfzhXQv6SK.png', '', 204, '2014-10-24 11:40:13', '2014-10-24 11:40:13', NULL, 0),
(798, '2JQDIYhNLj5n6qz5jcCjDnJ7ZPXGmTKc.png', '', 205, '2014-10-24 11:41:11', '2014-10-24 11:41:11', NULL, 0),
(799, 'jlNiUmrlEBsIfx9R11FS4yyN9i04FUVK.png', '', 205, '2014-10-24 11:41:11', '2014-10-24 11:41:11', NULL, 0),
(800, '5GhqDUpwfP2pxXm2IdiyCq1D9x96MBFb.png', '', 206, '2014-10-24 11:41:34', '2014-10-24 11:41:34', NULL, 0),
(801, 'nI9mnTY8jgGlEMXQRCL18NCKGtJnCD08.png', '', 206, '2014-10-24 11:41:34', '2014-10-24 11:41:34', NULL, 0),
(802, 'OicXfivSeHdOaJgdDByqCdRBuYv2SxIk.png', '', 207, '2014-10-31 06:06:05', '2014-10-24 11:43:44', NULL, 0),
(803, 'mWifZkX8PwZYZgLH33zbN4NlPjyEfwIr.png', '', 208, '2014-10-24 11:44:27', '2014-10-24 11:44:27', NULL, 0),
(804, 'YYywjDSNLhpJZ1RuND5Lp4QCd2JuUjiL.png', '', 208, '2014-10-24 11:44:27', '2014-10-24 11:44:27', NULL, 0),
(805, 'UlyEXgkMNwlvw1p7M2Fah9BYlcfR4ERO.png', '', 209, '2014-10-24 11:44:53', '2014-10-24 11:44:53', NULL, 0),
(806, 'HvNPm34CtjdBj5JzFvHFypVVf9rL625P.png', '', 209, '2014-10-24 11:44:53', '2014-10-24 11:44:53', NULL, 0),
(807, 'U7e7kmVYx0SgLmB7NqDvZfInJIdY6rzT.png', '', 210, '2014-10-24 11:45:25', '2014-10-24 11:45:25', NULL, 0),
(808, 'YUOgPjkvXMA9uzMGAABCFer40oDesFoY.png', '', 210, '2014-10-24 11:45:25', '2014-10-24 11:45:25', NULL, 0),
(809, 'Ulehe7rWczQgoJ507GksSeSR2VEVETNv.png', '', 211, '2014-10-31 06:05:18', '2014-10-24 11:47:08', NULL, 0),
(810, 'Y8WqvJGcR1cupJVMeTMdyAcDuGEJ0f7a.png', '', 212, '2014-10-24 11:47:56', '2014-10-24 11:47:56', NULL, 0),
(811, 'HnPSnpNxqKAX80r6YGqr993qV1Qyjyd3.png', '', 212, '2014-10-24 11:47:56', '2014-10-24 11:47:56', NULL, 0),
(812, '9ENhukGLcy8xScmOO5LxhUwXYo8UNbaG.png', '', 213, '2014-10-24 11:48:27', '2014-10-24 11:48:27', NULL, 0),
(813, 'tSyqLVpskH4pfM4Vwr0DFX7gsBGOFIkv.png', '', 213, '2014-10-24 11:48:27', '2014-10-24 11:48:27', NULL, 0),
(814, '365UCuXfafS2ozuONmdPQGajDrJl1bFi.png', '', 214, '2014-10-24 11:48:47', '2014-10-24 11:48:47', NULL, 0),
(815, 'UVVgWkulZKDuEwjQo1uRqyvl59Kx8yFe.png', '', 214, '2014-10-24 11:48:47', '2014-10-24 11:48:47', NULL, 0),
(816, 'EMyYAqI2zgoaBL3Cxu25DswYuQ7Qdr4c.png', '', 215, '2014-10-31 06:04:55', '2014-10-24 11:51:16', NULL, 0),
(817, 'VLfcEtLnNC62Wpsw9jG6hlwQyErFthHw.png', '', 216, '2014-10-24 11:53:39', '2014-10-24 11:53:39', NULL, 0),
(818, 'geZKTJYQl3o6qhoQzOmI184d2RmXEAsy.png', '', 216, '2014-10-24 11:53:39', '2014-10-24 11:53:39', NULL, 0),
(819, 'MkLjXKPtqkyXbunve1ASseg2xEMCjnwC.png', '', 217, '2014-10-24 11:54:49', '2014-10-24 11:54:49', NULL, 0),
(820, 'IC7tref9PxLdpk9DbZenZxy9xc9NwdHg.png', '', 217, '2014-10-24 11:54:49', '2014-10-24 11:54:49', NULL, 0),
(821, 'VvB5dwyKgsAiz6zm0Fich6vtKOuQiIsM.png', '', 218, '2014-10-24 11:55:12', '2014-10-24 11:55:12', NULL, 0),
(822, 'c0Sw2OlfQFiXKXTvEaKYYZ0O1IDLnru6.png', '', 218, '2014-10-24 11:55:12', '2014-10-24 11:55:12', NULL, 0),
(823, 'OEe4i15CRGIfy1pV2v84AW8sg2qHZk3v.png', '', 219, '2014-10-31 06:04:33', '2014-10-24 11:58:16', NULL, 0),
(824, 'fVJnhYr3GDEWC6kofQDDLkr6GbPCOvWD.png', '', 220, '2014-10-24 11:58:47', '2014-10-24 11:58:47', NULL, 0),
(825, 'DIeNYroOamxDWBDdH807KTwHBi1jQVS5.png', '', 220, '2014-10-24 11:58:47', '2014-10-24 11:58:47', NULL, 0),
(826, 'QJDXGquR4az9BSAHTj5dloWAs4cn5VqL.png', '', 221, '2014-10-24 11:59:08', '2014-10-24 11:59:08', NULL, 0),
(827, 'H4olKlcVKII74c9hSYrrVopPR0RT2Sm9.png', '', 221, '2014-10-24 11:59:08', '2014-10-24 11:59:08', NULL, 0),
(828, 'jtygKsDyypeCQFKgU4cC3S8tAzNki4FK.png', '', 222, '2014-10-24 11:59:32', '2014-10-24 11:59:32', NULL, 0),
(829, 'AUSb8tv7qZoFxb8e2q4m8DHwsHj3Ouv3.png', '', 222, '2014-10-24 11:59:32', '2014-10-24 11:59:32', NULL, 0),
(830, 'a6Aa2DsnQ7t3jjs04ZbEfTYGMauhufAd.png', '', 223, '2014-10-31 06:04:10', '2014-10-24 12:00:38', NULL, 0),
(831, 'L9IRzJkwlUPPx4HmfbqYof8PJjYV2Din.png', '', 224, '2014-10-24 12:01:03', '2014-10-24 12:01:03', NULL, 0),
(832, 'A4lbqscuqPOL3EVOiSPzKKrshzsJHQEE.png', '', 224, '2014-10-24 12:01:03', '2014-10-24 12:01:03', NULL, 0),
(833, 'zXoa2OWSFxgT7lBRvEEffBbaoosQxui3.png', '', 225, '2014-10-24 12:01:28', '2014-10-24 12:01:28', NULL, 0),
(834, '2rHVGf7ZJUwkDHhTgcpEOmKARh3ktYS8.png', '', 225, '2014-10-24 12:01:28', '2014-10-24 12:01:28', NULL, 0),
(835, '5XosdgC57PV4l0oSQU8EyMLVnnQhSdoj.png', '', 226, '2014-10-24 12:01:47', '2014-10-24 12:01:47', NULL, 0),
(836, 'NNZyF9EhWKpzLqnCUKBoTAuoFVPFFRqO.png', '', 226, '2014-10-24 12:01:47', '2014-10-24 12:01:47', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pl_lamanufactors`
--

CREATE TABLE IF NOT EXISTS `pl_lamanufactors` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(50) DEFAULT NULL,
  `laurl` varchar(50) DEFAULT NULL,
  `ladeleted` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `lainfo` text,
  `laimage` varchar(50) DEFAULT NULL,
  `laorder` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pl_lamanufactors`
--

INSERT INTO `pl_lamanufactors` (`id`, `latitle`, `laurl`, `ladeleted`, `updated_at`, `created_at`, `lainfo`, `laimage`, `laorder`) VALUES
(1, 'Apple', 'apple', NULL, '2014-06-06 04:08:00', '2014-06-06 02:38:22', '', 'ZpzfOcYcp3HnCUKdXI7dcm3SOjjpTmqQ.jpg', 1),
(2, 'Samsung', 'samsung', NULL, '2014-06-06 04:07:56', '2014-06-06 02:38:34', '', 'FyDfuFEeQX5iMS7yk49fY5EhMX3HWdAR.jpg', 2),
(3, 'Nokia', 'nokia', NULL, '2014-09-08 14:31:49', '2014-06-06 02:38:50', '', 'SOatDqPd6URWgtRKUiWYNXbO2glvHe9A.jpg', 3),
(4, 'LG', 'lg', NULL, '2014-06-06 04:07:47', '2014-06-06 02:39:03', '', 'CABP1VfC0XNLPQLxpsFnVC5J2J2JbVBS.jpg', 4),
(5, 'HTC', 'htc', NULL, '2014-09-08 14:31:24', '2014-06-06 02:39:12', '', 'SwR7vNGBPk3Fm9InjttjJy8efvcPDHS3.png', 5),
(6, 'blackberry', 'blackberry', NULL, '2014-06-06 02:39:25', '2014-06-06 02:39:25', '', 'PTEkw7lxn752sjHPC8Si30w32d2VsXml.jpg', 6),
(7, 'Sony', 'sony', NULL, '2014-09-08 14:11:31', '2014-09-08 14:11:31', '', NULL, 7),
(8, 'Bose', 'bose', NULL, '2014-09-16 06:27:20', '2014-09-16 06:27:06', '', 'h3Z1WtYvlhCrHSfxQBwANnK6n0kQDO76.png', 8),
(9, 'Philips', 'philips', NULL, '2014-09-16 06:50:50', '2014-09-16 06:50:43', '', 'PuyerPqJ1fodIYJNYmXg96u2Iv7oPNpe.png', 9),
(10, 'Anker', 'anker', NULL, '2014-09-16 07:15:00', '2014-09-16 07:14:46', '', 'U23i43qC1MM2dtprCJ8xdkUwkgjtBY8A.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pl_laorderaddress`
--

CREATE TABLE IF NOT EXISTS `pl_laorderaddress` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pl_laorderaddress`
--

INSERT INTO `pl_laorderaddress` (`id`, `user_id`, `name`, `sex`, `tel`, `address`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'Truong Cong Thang', '', '01695359198', 'Tay Thanh, Tan Phu, HCMC', 0, '2014-09-24 03:42:22', '2014-09-24 03:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `pl_laorderitems`
--

CREATE TABLE IF NOT EXISTS `pl_laorderitems` (
`id` int(11) NOT NULL,
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
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pl_laorderitems`
--

INSERT INTO `pl_laorderitems` (`id`, `order_id`, `latitle`, `amount`, `laprice`, `variantname`, `producturl`, `caturl`, `variantid`, `laimage`, `lakhoiluong`, `updated_at`, `created_at`, `product_id`) VALUES
(1, 1, 'Iphone 6 16Gb', 1, 35000000, 'Gray', 'iphone-6-16gb', 'iphone', 140, 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', 0, '2014-09-24 03:42:43', '2014-09-24 03:42:43', 141);

-- --------------------------------------------------------

--
-- Table structure for table `pl_laorders`
--

CREATE TABLE IF NOT EXISTS `pl_laorders` (
`id` int(11) NOT NULL,
  `lashipping` int(11) DEFAULT NULL,
  `labillid` int(11) DEFAULT NULL,
  `requireinvole` int(11) DEFAULT NULL,
  `lapayment` int(11) DEFAULT NULL,
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
  `laordernote` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pl_laorders`
--

INSERT INTO `pl_laorders` (`id`, `lashipping`, `labillid`, `requireinvole`, `lapayment`, `lasumkhoiluong`, `lafeeshipping`, `laordername`, `laordertel`, `laorderemail`, `laorderaddr`, `laorderprovince`, `laorderdistrict`, `updated_at`, `created_at`, `uid`, `user_id`, `order_status`, `voucher`, `giamvoucher`, `sumsanpham`, `laordernote`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-24 03:42:43', '2014-09-24 03:42:43', NULL, 1, '0', '', 0, 35000000, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `pl_laproducts`
--

CREATE TABLE IF NOT EXISTS `pl_laproducts` (
`id` int(11) unsigned NOT NULL,
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
  `ladungtich` varchar(100) DEFAULT NULL,
  `laview` int(11) NOT NULL DEFAULT '0',
  `lachucnang` varchar(100) DEFAULT NULL,
  `lavariant_id` int(11) NOT NULL DEFAULT '0',
  `laproduct_id` varchar(50) DEFAULT NULL,
  `youtubeid` varchar(50) DEFAULT NULL,
  `layear` int(4) DEFAULT NULL,
  `lamonth` int(2) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `pl_laproducts`
--

INSERT INTO `pl_laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(1, 'Slider', '', NULL, '', '', '', 'wubvGONFyJyBK36Y8p3lZPdO1N7U6uDX.png', 0, 0, 0, 0, 0, '-25200', 1, 'slider', '2014-09-10 10:35:57', '2014-06-06 10:56:31', '', '', 0, '', 0, '', '', NULL, NULL),
(2, 'Giới thiệu', '', NULL, '', '<p><span style="font-family:arial,helvetica,sans-serif; font-size:12px">Sau hơn 3 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, thương hiệu PhonGee đ&atilde; đi v&agrave;o l&ograve;ng kh&aacute;ch h&agrave;ng bằng niềm tin cậy trọn vẹn v&agrave; sự h&agrave;i l&ograve;ng về chất lượng dịch vụ. V&agrave; giờ đ&acirc;y, PhonGee quyết định n&acirc;ng cấp ch&iacute;nh m&igrave;nh l&ecirc;n một tầm cao mới, dịch vụ đa dạng v&agrave; chuy&ecirc;n nghiệp hơn, c&aacute;c d&ograve;ng sản phẩm cung cấp phong ph&uacute; hơn chứ kh&ocirc;ng chỉ g&oacute;i gọn trong d&ograve;ng sản phẩm Apple cụ thể ở c&aacute;c thương hiệu mạnh kh&aacute;c như Samsung, HTC, Sony, Blackberry,...</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn t&igrave;m thấy được l&ograve;ng tin, t&igrave;m thấy được sự th&acirc;n thiện, sự tận t&acirc;m phục vụ v&agrave; sự chuy&ecirc;n nghiệp trong tư vấn cũng như sự &acirc;n cần trong hỗ trợ.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn nhận được c&aacute;c gi&aacute; trị cốt l&otilde;i của c&ocirc;ng nghệ từ c&aacute;c sản phẩm ch&iacute;nh h&atilde;ng, nguồn gốc r&otilde; r&agrave;ng minh bạch.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ở PhonGee, bạn biết rằng bạn đ&uacute;ng khi đặt trọn niềm tin, v&agrave; bạn kh&ocirc;ng thất vọng khi trao ban niềm tin đ&oacute;.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Giờ đ&acirc;y, PhonGee kh&ocirc;ng chỉ l&agrave; PhonGee, PhonGee đ&atilde; vươn l&ecirc;n 1 tầm mới cao hơn, đa dạng hơn, chuy&ecirc;n nghiệp hơn, CH&Uacute;NG T&Ocirc;I GỌI Đ&Oacute; L&Agrave; SẮC M&Agrave;U PHONGEE, hay dưới t&ecirc;n gọi ngắn gọn: PHONGEE COLOR&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Bạn đ&atilde; kh&ocirc;ng thất vọng về PhonGee, bạn sẽ c&agrave;ng h&agrave;i l&ograve;ng hơn với PhonGee Color.</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">Ch&uacute;ng t&ocirc;i triển khai hệ thống PhonGee Color ở 02 vị tr&iacute;:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">- 12 Trần Quốc Ho&agrave;n, phường 4, quận T&acirc;n B&igrave;nh, TP HCM</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">- 12 T&ocirc;n Thất T&ugrave;ng, Phường Bến Th&agrave;nh, quận 1, TPHCM</span><br />\r\n<br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:12px">C&aacute;c địa điểm kh&aacute;c đang nhượng quyền thương hiệu PhonGee (chứ kh&ocirc;ng d&ugrave;ng PhonGee Color) kh&ocirc;ng trực thuộc hệ thống PhonGee ch&uacute;ng t&ocirc;i.</span></p>\r\n', '', 'W32Z1e4FzNREcZc2y3isgNZBslcvXJsv.png', 7, 0, 0, 0, 0, '-25200', 0, 'gioi-thieu', '2014-08-16 12:24:04', '2014-06-06 16:35:57', '', '', 11, '', 0, '', NULL, NULL, NULL),
(3, 'iPhone 5s 16GB', 'iphone, iOS', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 16 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', 'JV5ym2zgDxIHKEzUrnIA8KXX3AZi3qor.png', 3, 1, 0, 13380000, 0, '1404061200', 0, 'iphone-5s-16gb', '2014-11-12 06:14:33', '2014-06-06 16:50:07', '', '', 541, '', 0, '', '', NULL, NULL),
(4, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Sliver', '', '', 'L0aZq7OHKSg56SFrtQpynFpH9U2naCWr.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb1', '2014-09-07 20:39:02', '2014-06-06 16:50:44', '', '', 0, '', 3, '', '', NULL, NULL),
(5, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Gold', '', '', 'LyWSOsF8eYYwPqkA3NJDOjZtP2QNNOmY.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb2', '2014-09-07 20:39:25', '2014-06-06 16:51:11', '', '', 0, '', 3, '', '', NULL, NULL),
(6, 'iPhone 5s 16GB', 'iphone, iOS', NULL, 'Space Gray', '', '', 'qtTsHL2Z5FeRC0fLgD35paA5p0I3O53Y.png', 3, 1, 0, 14890000, 0, '1404061200', 0, 'iphone-5s-16gb3', '2014-09-07 20:39:43', '2014-06-06 16:52:07', '', '', 0, '', 3, '', '', NULL, NULL),
(7, 'iPhone 5c 16GB', '', NULL, '', '<h2><br />\r\n&nbsp;</h2>\r\n', '', 'RPt53CyPafI2UpnjEbRx8vnWt14LxzZY.png', 3, 1, 0, 8990000, 0, '1404061200', 0, 'iphone-5c-16gb', '2014-11-12 01:48:56', '2014-06-06 17:10:39', '132', '59.2 mm x 124.4 mm x 9.97 mm', 367, '', 0, '', '', NULL, NULL),
(8, 'iPhone 5c 16GB', '', NULL, 'White', '', '', '6r9NaZ3Mu0555PHsQSKcpEwewioUl8a4.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb1', '2014-09-07 20:37:55', '2014-06-06 17:11:04', '', '', 0, '', 7, '', '', NULL, NULL),
(9, 'iPhone 5c 16GB', '', NULL, 'Blue', '', '', 'xJx3aFrKcEg67oS6vvFLcmQxNgI7bu3w.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb2', '2014-09-07 20:37:02', '2014-06-06 17:11:32', '', '', 0, '', 7, '', '', NULL, NULL),
(10, 'iPhone 5c 16GB', '', NULL, 'Green', '', '', 'CaRCSCq6EFPBaLx9qCtiR2ah3zMTEg8w.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb3', '2014-09-07 20:36:36', '2014-06-06 17:11:48', '', '', 0, '', 7, '', '', NULL, NULL),
(11, 'iPhone 5c 16GB', '', NULL, 'Red', '', '', 'dsP9PM6ZfdSuEDWgONbNKIKeacOzfXz6.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb4', '2014-09-07 20:35:34', '2014-06-06 17:12:04', '', '', 0, '', 7, '', '', NULL, NULL),
(12, 'iPhone 5c 16GB', '', NULL, 'Yellow', '', '', 'm0OJUAkKlCJbsNEboOt80V5Xet5Oax1m.png', 3, 1, 0, 10790000, 0, '1404061200', 0, 'iphone-5c-16gb5', '2014-09-07 20:35:04', '2014-06-06 17:12:20', '', '', 0, '', 7, '', '', NULL, NULL),
(13, 'Người đẹp và công nghệ ở Computex', '', NULL, 'Ở đâu có công nghệ thì ở đó có người đẹp, dĩ nhiên là kể cả Computex 2014, được diễn ra từ ngày 3-7/6 năm nay ở Đài Bắc, Đài Loan', '<p><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Ở đ&acirc;u c&oacute; c&ocirc;ng nghệ th&igrave; ở đ&oacute; c&oacute; người đẹp, dĩ nhi&ecirc;n l&agrave; kể cả&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/computex+2014/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">Computex 2014</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">, được diễn ra từ ng&agrave;y 3-7/6 năm nay ở Đ&agrave;i Bắc, Đ&agrave;i Loan. Với một sự kiện quốc tế th&igrave; sự xuất hiện của c&aacute;c&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/pg+xinh+%C4%91%E1%BA%B9p/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">PG xinh đẹp</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;cũng nhiều hơn, đều đặn v&agrave; xinh tươi hơn, v&agrave; với sự niềm nở, hiếu kh&aacute;ch, nhiệt t&igrave;nh tư vấn th&igrave; PG ch&iacute;nh l&agrave; cầu nối để sự kiện diễn ra th&agrave;nh c&ocirc;ng. Mời c&aacute;c bạn xem qua v&agrave;i h&igrave;nh ảnh về c&aacute;c c&ocirc; g&aacute;i n&agrave;y ở Computex 2014 năm nay.</span><br />\r\n<br />\r\n<img alt="fh (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504997_fh_1.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="fh (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504998_fh_3.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="fh (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2504999_fh_6.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><br />\r\n<img alt="nguoi-dep-o-computex-2014 (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505005_nguoi-dep-o-computex-2014_3.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><br />\r\n<img alt="computex2014 (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505156_computex2014_1.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505157_computex2014_2.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505159_computex2014_4.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (5)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505160_computex2014_5.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505161_computex2014_6.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505162_computex2014_7.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (8)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505163_computex2014_8.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505164_computex2014_9.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505165_computex2014_10.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /><img alt="computex2014 (11)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505166_computex2014_11.jpg" style="background-color:rgb(252, 252, 255); border:0px; color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px; line-height:20.533334732055664px; max-width:100%; text-align:justify" /></p>\r\n\r\n<div style="margin: 0px; padding: 0px; color: rgb(20, 20, 20); font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: center; background-color: rgb(252, 252, 255);"><img alt="fh (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505000_fh_9.jpg" style="border:0px; max-width:100%" /><img alt="fh (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505001_fh_10.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505003_nguoi-dep-o-computex-2014_1.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505004_nguoi-dep-o-computex-2014_2.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505006_nguoi-dep-o-computex-2014_4.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (4)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506628_computex_4.jpg" style="border:0px; max-width:100%" /><br />\r\n<img alt="nguoi-dep-o-computex-2014 (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505009_nguoi-dep-o-computex-2014_7.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (9)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505010_nguoi-dep-o-computex-2014_9.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (10)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505011_nguoi-dep-o-computex-2014_10.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (11)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505012_nguoi-dep-o-computex-2014_11.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (12)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505013_nguoi-dep-o-computex-2014_12.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (13)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505014_nguoi-dep-o-computex-2014_13.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (14)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505015_nguoi-dep-o-computex-2014_14.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (15)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505016_nguoi-dep-o-computex-2014_15.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (16)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505017_nguoi-dep-o-computex-2014_16.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (17)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505018_nguoi-dep-o-computex-2014_17.jpg" style="border:0px; max-width:100%" /><img alt="nguoi-dep-o-computex-2014 (18)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2505019_nguoi-dep-o-computex-2014_18.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (1)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506625_computex_1.jpg" style="border:0px; max-width:100%" /><img alt="computex (2)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506626_computex_2.jpg" style="border:0px; max-width:100%" /><img alt="computex (3)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506627_computex_3.jpg" style="border:0px; max-width:100%" />&nbsp;<br />\r\n<img alt="computex (6)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506630_computex_6.jpg" style="border:0px; max-width:100%" /><img alt="computex (7)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506631_computex_7.jpg" style="border:0px; max-width:100%" /><img alt="computex (8)." class="LbImage bbCodeImage" src="http://photo.tinhte.vn/store/2014/06/2506632_computex_8.jpg" style="border:0px; max-width:100%" /></div>\r\n', '', '7xdXj1CDtCkII3zYdshDsnvMJueD8OIv.jpg', 10, 0, 0, 0, 0, '0', 0, 'nguoi-dep-va-cong-nghe-o-computex', '2014-08-30 09:29:24', '2014-06-06 17:37:34', '', '', 15, '', 0, '', NULL, 2014, 6),
(14, 'Safari có thêm chức năng đọc thông tin thẻ tín dụng bằng camera', '', NULL, 'Trình duyệt Safari trên iOS 8 có thêm một chức năng mới đó là dùng camera để đọc thông tin trên tín dụng hoặc các loại thẻ ngân hàng', '<p><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Tr&igrave;nh duyệt&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/safari/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">Safari</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;tr&ecirc;n&nbsp;</span><a class="Tinhte_XenTag_TagLink" href="http://www.tinhte.vn/tags/ios+8/" style="color: rgb(13, 89, 143); text-decoration: none; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; padding: 0px 3px; margin: 0px -3px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; line-height: 20.533334732055664px; text-align: justify; background-color: rgb(252, 252, 255);" target="_blank">iOS 8</a><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&nbsp;c&oacute; th&ecirc;m một chức năng mới đ&oacute; l&agrave; d&ugrave;ng camera để đọc th&ocirc;ng tin tr&ecirc;n t&iacute;n dụng hoặc c&aacute;c loại thẻ ng&acirc;n h&agrave;ng. Khi đang mua h&agrave;ng online v&agrave; đến phần nhập th&ocirc;ng tin thẻ, thay v&igrave; ngồi nhập từng con số th&igrave; bạn chỉ việc chĩa camera v&agrave;o chiếc thẻ của m&igrave;nh, m&aacute;y sẽ tự động nhận diện c&aacute;c con số v&agrave; điền v&agrave;o chỗ trống gi&uacute;p bạn. Chức năng n&agrave;y trong tương lai sẽ gi&uacute;p ch&uacute;ng ta tiết kiệm được thời gian nhập liệu cũng như hạn chế bớt t&igrave;nh trạng bị hacker đ&aacute;nh cắp th&ocirc;ng tin th&ocirc;ng qua c&aacute;c phần mềm keylogger.</span><br />\r\n<br />\r\n<span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Chức năng n&agrave;y ho&agrave;n to&agrave;n tự động n&ecirc;n người quản trị mạng kh&ocirc;ng cần phải c&agrave;i đặt g&igrave; tr&ecirc;n website của họ. Khi đến &ocirc; nhập th&ocirc;ng tin thẻ (số thẻ), tr&igrave;nh duyệt sẽ tự động nhận biết v&agrave; đưa ra một t&ugrave;y chọn t&ecirc;n l&agrave; &quot;</span><em>Scan Credit Card</em><span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">&quot; nằm ph&iacute;a tr&ecirc;n b&agrave;n ph&iacute;m, nhấn v&agrave;o đ&oacute; lập tức giao diện chụp h&igrave;nh sẽ xuất hiện c&ugrave;ng với một c&aacute;i khung. Bạn chĩa c&aacute;i khung n&agrave;y v&agrave;o đ&uacute;ng thẻ ng&acirc;n h&agrave;ng của m&igrave;nh th&igrave; m&aacute;y sẽ tự động nhận dạng h&igrave;nh ảnh v&agrave; tr&iacute;ch xuất th&ocirc;ng tin ra từ đ&oacute;.</span><br />\r\n<br />\r\n<span style="background-color:rgb(252, 252, 255); color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">M&igrave;nh đ&atilde; thử v&agrave; thấy chức năng n&agrave;y hoạt động được nhưng thời gian nhận dạng qu&aacute; l&acirc;u, c&oacute; lẽ do c&ograve;n l&agrave; bản thử nghiệm (beta 1) n&ecirc;n n&oacute; chưa ph&aacute;t huy hết hiệu quả.</span></p>\r\n', '', 'rGOTuyWkY1wcjMJxqeHIPSSkqsNsRuBw.jpg', 10, 0, 0, 0, 0, '0', 0, 'safari-co-them-chuc-nang-doc-thong-tin-the-tin-dung-bang-camera', '2014-08-22 10:34:53', '2014-06-06 17:45:48', '', '', 20, '', 0, '', NULL, 2013, 7),
(29, 'iPhone 5s 32GB', 'iphone, iOS', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 32 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;u sắc: Trắng v&agrave;ng</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', 'Kfvqi4bRKettMEmaVqESDRm4vT3AmVTy.png', 3, 1, 0, 15380000, 0, '1404061200', 0, 'iphone-5s-32gb', '2014-11-12 03:23:17', '2014-08-28 14:31:47', '', '', 284, '', 0, '', '', 2014, 8),
(30, 'Macbook Pro Rentina MGX72LL', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB &ndash; SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.6Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'QCR5r1tfyUtqC0fpDmHvMMyJM2K6ruFm.png', 27, 1, 0, 27790000, 0, '-25200', 0, 'macbook-pro-rentina-mgx72ll', '2014-11-12 05:00:20', '2014-08-29 00:56:27', '', '', 886, '', 0, '', '', 2014, 8),
(31, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Silver', '', '', 'uO0g7e9jesdt4YNOIj9iqsViOW3z1Rs7.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb1', '2014-09-07 20:31:19', '2014-08-30 08:24:08', '', '', 0, '', 29, '', '', 2014, 8),
(32, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Gray', '', '', 'ktnjLooBSCmE4K1KPqR9vBFSvSlQOCWy.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb2', '2014-09-07 20:30:51', '2014-08-30 08:36:04', '', '', 0, '', 29, '', '', 2014, 8),
(33, 'iPhone 5s 32GB', 'iphone, iOS', NULL, 'Gold', '', '', '8CbD0yQsS4ufpb28HFIjGUwPGETOJwiW.png', 3, 1, 0, 16990000, 0, '1404061200', 0, 'iphone-5s-32gb3', '2014-09-07 20:30:24', '2014-08-30 08:36:30', '', '', 0, '', 29, '', '', 2014, 8),
(34, 'iPhone 5s 64Gb', '', NULL, '', '<p><span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Th&ocirc;ng số kỹ thuật:</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5S sử dụng m&agrave;n h&igrave;nh LED-backlit IPS LCD k&iacute;ch thước 4 inch với độ ph&acirc;n giải 640 x 1136 pixel, mật độ điểm ảnh 326 ppi v&agrave; được bảo vệ b&ecirc;n ngo&agrave;i bằng k&iacute;nh Corning Gorilla Glass.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Lớp tr&aacute;ng chống b&aacute;m v&acirc;n tay cho mặt k&iacute;nh</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU Apple A7- nhanh gấp 5 lần so với iPhone 5 ( th&ocirc;ng tin từ nh&agrave; sản xuất)</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Sử dụng n&uacute;t Home cảm biến nhận dạng v&acirc;n tay</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Đ&egrave;n flash LED k&eacute;p&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; D&ugrave;ng nano-SIM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; CPU: Chip Apple A7 &amp; M7 với cấu tr&uacute;c 64 bit</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Bộ nhớ trong: Flash memory 64 GB</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; RAM: 1GB DDR2 SDRAM</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh: 4&rdquo; Retina display, Multi-Touch. Độ ph&acirc;n giải: 1136 x 640 px, 326 ppi</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối: GPS, 4G &ndash; 3G , Wi-fi (2.4GHz v&agrave; 5GHz), Bluetooth 4.0</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Kết nối truyền dữ liệu v&agrave; sạc pin mới: Lightning tới USB.</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Camera: t&iacute;nh năng Panorama</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước: Quay phim SD 480p VGA 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh, 1.2 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau: Quay phim HD 1080p 30 khung h&igrave;nh/gi&acirc;y với &acirc;m thanh, chụp h&igrave;nh cảm biến &aacute;nh s&aacute;ng, lens tự động, tự động nhận diện khu&ocirc;n mặt, tự động tinh chỉnh, với camera 8.0 megapixels.</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh: iOS 7</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Dịch vụ trực tuyến: iTunes Store, App Store, iCloud, iWork, iBookstore, Safari, Game Center, v.v..</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; M&agrave;u sắc: Trắng v&agrave;ng</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; K&iacute;ch thước: 123.8 x 58.6 x 7.6 mm</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&acirc;n nặng: 112 g</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">Trong hộp nh&agrave; sản xuất:</span><br />\r\n<br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; iPhone 5s</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; Tai nghe Apple EarPods</span><br />\r\n<span style=\\"font-family:arial,helvetica,sans-serif; font-size:12px\\">&nbsp;&nbsp;&nbsp; C&aacute;p Lightning</span></p>\r\n', '', '0ZrDnlegj2bEQWkkWXkTPYZ5Q7U1zvPV.png', 3, 1, 0, 17380000, 0, '-25200', 0, 'iphone-5s-64gb', '2014-11-11 17:56:46', '2014-08-30 08:49:50', '', '', 217, '', 0, '', '', 2014, 8),
(35, 'iPhone 5s 64Gb', '', NULL, 'Gray', '', '', 'kqmPqUCKWPlP1AeSfJu8Ag1xXt7G9tGr.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb1', '2014-09-07 20:27:18', '2014-08-30 08:51:54', '', '', 0, '', 34, '', '', 2014, 8),
(36, 'iPhone 5s 64Gb', '', NULL, 'Silver', '', '', 'wuKySO1jmzc0STbqSWXdH6PPDiR2pLEf.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb2', '2014-09-07 20:26:51', '2014-08-30 08:52:30', '', '', 0, '', 34, '', '', 2014, 8),
(37, 'iPhone 5s 64Gb', '', NULL, 'Gold', '', '', 'Z1Vqn1K1mvMBjrFPL1XQN7g7unVmQCA0.png', 3, 1, 0, 18990000, 0, '-25200', 0, 'iphone-5s-64gb3', '2014-09-07 20:26:13', '2014-08-30 08:52:50', '', '', 0, '', 34, '', '', 2014, 8),
(39, 'iPhone 5c 32 Gb', '', NULL, '', '<p><span style="font-family:cambria; font-size:16px">Chip xử l&yacute;: CPU Apple A6&nbsp;</span><br />\r\n<span style="font-family:cambria; font-size:16px">- M&agrave;n h&igrave;nh Retina k&iacute;ch thước 4-inch sử dụng c&ocirc;ng nghệ LED-backlit IPS LCD với độ ph&acirc;n giải 1136x640 pixels, mật độ điểm ảnh 326ppi</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Camera của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixels, hỗ trợ LED flash. T&iacute;nh năng chạm lấy n&eacute;t rất nhanh v&agrave; ch&iacute;nh x&aacute;c. Khả năng chụp HDR v&agrave; Panorama xuất sắc. Quay phim full HD tuyệt đẹp. Camera trước hỗ trợ quay phim HD 720p, hỗ trợ nhận diện khu&ocirc;n mặt v&agrave; hỗ trợ đ&agrave;m thoại video HD qua FaceTime</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Thời gian thoại 10h tr&ecirc;n s&oacute;ng 3G.</span><br />\r\n<span style="font-family:cambria; font-size:16px">- K&iacute;ch thước : 124,4x59,2x8,97mm</span><br />\r\n<span style="font-family:cambria; font-size:16px">- Trọng lượng: 132g</span><br />\r\n<span style="font-family:cambria; font-size:16px">- M&agrave;u sắc: xanh da trời, xanh l&aacute;, đỏ, v&agrave;ng, trắng.</span><br />\r\n<br />\r\n<br />\r\n<span style="font-family:cambria; font-size:16px">trong hộp NSX:</span><br />\r\n<span style="font-family:cambria; font-size:16px">iphone 5C</span><br />\r\n<span style="font-family:cambria; font-size:16px">Tai nghe Apple EasPods</span><br />\r\n<span style="font-family:cambria; font-size:16px">C&aacute;p Linghtning.</span></p>\r\n', '', 'AMv3ibeAJYzL9rT9xQvHKtWGWlXrD8nY.png', 3, 1, 0, 12790000, 0, '1404061200', 1, 'iphone-5c-32-gb', '2014-09-01 14:56:44', '2014-09-01 14:55:04', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 7, '', '', 2014, 9),
(40, 'iPhone 5c 32GB', '', NULL, '', '<p><span style=\\"font-family:cambria; font-size:16px\\">Chip xử l&yacute;: CPU Apple A6&nbsp;</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- M&agrave;n h&igrave;nh Retina k&iacute;ch thước 4-inch sử dụng c&ocirc;ng nghệ LED-backlit IPS LCD với độ ph&acirc;n giải 1136x640 pixels, mật độ điểm ảnh 326ppi</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Camera của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixels, hỗ trợ LED flash. T&iacute;nh năng chạm lấy n&eacute;t rất nhanh v&agrave; ch&iacute;nh x&aacute;c. Khả năng chụp HDR v&agrave; Panorama xuất sắc. Quay phim full HD tuyệt đẹp. Camera trước hỗ trợ quay phim HD 720p, hỗ trợ nhận diện khu&ocirc;n mặt v&agrave; hỗ trợ đ&agrave;m thoại video HD qua FaceTime</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Thời gian thoại 10h tr&ecirc;n s&oacute;ng 3G.</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- K&iacute;ch thước : 124,4x59,2x8,97mm</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- Trọng lượng: 132g</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">- M&agrave;u sắc: xanh da trời, xanh l&aacute;, đỏ, v&agrave;ng, trắng.</span><br />\r\n<br />\r\n<br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">trong hộp NSX:</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">iphone 5C</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">Tai nghe Apple EasPods</span><br />\r\n<span style=\\"font-family:cambria; font-size:16px\\">C&aacute;p Linghtning.</span></p>\r\n', '', 'Up1VJvij59o19vcXpYmIZZIAJyUNIMl5.png', 3, 1, 0, 11680000, 0, '1404061200', 0, 'iphone-5c-32gb', '2014-11-12 03:46:56', '2014-09-01 14:57:50', '132', '59.2 mm x 124.4 mm x 9.97 mm', 186, '', 0, '', '', 2014, 9),
(41, 'iPhone 5c 32GB', '', NULL, 'White', '', '', 'JPAMxZTd1WwZARCMIUGwy1AWexvVjsrR.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb1', '2014-09-07 20:21:23', '2014-09-01 15:07:05', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(42, 'iPhone 5c 32GB', '', NULL, 'Blue', '', '', 'bW0GeijcqGcvb4EUIg0K6oljIIDXKX6p.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb2', '2014-09-07 20:21:55', '2014-09-01 15:07:47', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(43, 'iPhone 5c 32GB', '', NULL, 'Green', '', '', 'd5CVxFOGgghCBDSqaQHXxTnMrYlHrFLw.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb3', '2014-09-07 20:22:24', '2014-09-01 15:08:27', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(44, 'iPhone 5c 32GB', '', NULL, 'Red', '', '', 'VydEsCuysPes4JVwDn2rY1XQRsuCBfkg.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb4', '2014-09-07 20:23:14', '2014-09-01 15:08:50', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(45, 'iPhone 5c 32GB', '', NULL, 'Yellow', '', '', 'AveY6gq1jFRL8UiBQnD41RS1qVYd3DmJ.png', 3, 1, 0, 12790000, 0, '1404061200', 0, 'iphone-5c-32gb5', '2014-09-07 20:23:57', '2014-09-01 15:09:12', '132', '59.2 mm x 124.4 mm x 9.97 mm', 0, '', 40, '', '', 2014, 9),
(46, 'Macbook Pro Rentina MGX82LL', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.6Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '1WUjP25f0k85lUkQnCMLC7quJHFMQeV3.png', 27, 1, 0, 31990000, 0, '-25200', 0, 'macbook-pro-rentina-mgx82ll', '2014-11-12 06:40:51', '2014-09-01 15:17:27', '', '', 356, '', 0, '', '', 2014, 9),
(47, 'Macbook Pro Rentina MGX92LL', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>512GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Dual Core 2.8Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>08GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZtVWGmkbJ2TH6uYwoMRrn3jOvMByY1SR.png', 27, 1, 0, 38990000, 0, '-25200', 0, 'macbook-pro-rentina-mgx92ll', '2014-11-11 17:57:02', '2014-09-01 15:19:24', '', '', 341, '', 0, '', '', 2014, 9);
INSERT INTO `pl_laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(48, 'Macbook Pro Rentina MGXA2', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>15.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i7 &ndash; Dual Core 2.2Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>16GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'U79AUUeHSjN2jzKfnStijRHuV7fwq9vp.png', 27, 1, 0, 42990000, 0, '-25200', 0, 'macbook-pro-rentina-mgxa2', '2014-11-12 04:04:25', '2014-09-01 15:27:05', '', '', 264, '', 0, '', '', 2014, 9),
(49, 'Macbook Pro Rentina MGXC2', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>15.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>512GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i7 &ndash; Dual Core 2.5Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>16GB &ndash; 1600Mhz &ndash; DDR3L Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics NVIDIA GeForce GT 750M with 2GB GDDR5 memory</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, HDMI Port, Thunder Bold 2, USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '6XwC81PPVpV9XBrQxGin87qJmv4IzqYr.png', 27, 1, 0, 52990000, 0, '-25200', 0, 'macbook-pro-rentina-mgxc2', '2014-11-12 03:10:32', '2014-09-01 15:29:25', '', '', 270, '', 0, '', '', 2014, 9),
(50, 'Ipad Air Wifi 16GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'SF4Uz05Tq5FEp2WCZqX18OPueZl1AwYv.png', 4, 1, 0, 9980000, 0, '-25200', 0, 'ipad-air-wifi-16gb', '2014-11-12 02:25:12', '2014-09-01 15:36:31', '', '', 213, '', 0, '', '', 2014, 9),
(51, 'Ipad Air Wifi', '', NULL, 'Gray', '', '', 'tjqz30llgJUH88gY1EfRX0hfbp5pIAbm.png', 4, 1, 0, 10790000, 0, '-25200', 0, 'ipad-air-wifi1', '2014-09-07 17:56:52', '2014-09-01 15:37:32', '', '', 0, '', 50, '', '', 2014, 9),
(52, 'Ipad Air Wifi', '', NULL, 'White', '', '', 'V32idkJYZlpeb7abkzyrdWLME2FmtO7v.png', 4, 1, 0, 10790000, 0, '-25200', 0, 'ipad-air-wifi2', '2014-09-07 17:56:35', '2014-09-01 15:38:55', '', '', 0, '', 50, '', '', 2014, 9),
(53, 'Ipad Air Wifi 32GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '9Doo1Re1EyNePkXnBxlod85UJZxYbFnY.png', 4, 1, 0, 11980000, 0, '-25200', 0, 'ipad-air-wifi-32gb', '2014-11-11 23:12:41', '2014-09-01 15:57:45', '', '', 169, '', 0, '', '', 2014, 9),
(54, 'Ipad Air Wifi 32GB', '', NULL, 'Gray', '', '', 'XqCN9vMOeSupTpoxDqdADNiwAcriOhC4.png', 4, 1, 0, 12900000, 0, '-25200', 0, 'ipad-air-wifi-32gb1', '2014-09-07 17:55:42', '2014-09-01 15:58:23', '', '', 0, '', 53, '', '', 2014, 9),
(55, 'Ipad Air Wifi 32GB', '', NULL, 'White', '', '', 'RGYxwu7yPoqAsUMBsBzoWRDsGMTozrpQ.png', 4, 1, 0, 12900000, 0, '-25200', 0, 'ipad-air-wifi-32gb2', '2014-09-07 17:55:17', '2014-09-01 15:58:41', '', '', 0, '', 53, '', '', 2014, 9),
(56, 'Ipad Air Wifi 64GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '266SPTtRl5fYhp1aJnXEaVBy1zJQOvdn.png', 4, 1, 0, 13880000, 0, '-25200', 0, 'ipad-air-wifi-64gb', '2014-11-11 17:56:17', '2014-09-01 16:06:26', '', '', 169, '', 0, '', '', 2014, 9),
(57, 'Ipad Air Wifi 64GB', '', NULL, 'Gray', '', '', 'nmBdpmBHyMQdH74xy25ez5xVnogBLcre.png', 4, 1, 0, 14900000, 0, '-25200', 0, 'ipad-air-wifi-64gb1', '2014-09-07 17:53:58', '2014-09-01 16:06:49', '', '', 0, '', 56, '', '', 2014, 9),
(58, 'Ipad Air Wifi 64GB', '', NULL, 'White', '', '', 'gsBsDjHvqygK0SgiKXzHg0jhmQs8MvO8.png', 4, 1, 0, 14900000, 0, '-25200', 0, 'ipad-air-wifi-64gb2', '2014-09-07 17:53:43', '2014-09-01 16:07:06', '', '', 0, '', 56, '', '', 2014, 9),
(59, 'Ipad Air Wifi 128GB', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (32.4 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '9Hm5qZaAxxW9JpCmcNWvcMrTvAJEhUHp.png', 4, 1, 0, 14880000, 0, '-25200', 0, 'ipad-air-wifi-128gb', '2014-11-11 18:45:15', '2014-09-01 16:08:08', '', '', 167, '', 0, '', '', 2014, 9),
(60, 'Ipad Air Wifi 128GB', '', NULL, 'Gray', '', '', 'Grcx5T2fC8gVtwT9oz0QSSImrRW3eUiN.png', 4, 1, 0, 16900000, 0, '-25200', 0, 'ipad-air-wifi-128gb1', '2014-09-01 16:08:26', '2014-09-01 16:08:26', '', '', 0, '', 59, '', '', 2014, 9),
(61, 'Ipad Air Wifi 128GB', '', NULL, 'White', '', '', 'GMdSM1YUxl8AZg66lg2h5x50c3uUwhHt.png', 4, 1, 0, 16900000, 0, '-25200', 0, 'ipad-air-wifi-128gb2', '2014-09-07 17:52:21', '2014-09-01 16:08:44', '', '', 0, '', 59, '', '', 2014, 9),
(62, 'Ipad Air 16GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '2bbJHeQc2KwIPxYcAsNl91LxJ2x8rRKw.png', 4, 1, 0, 11880000, 0, '-25200', 0, 'ipad-air-16gb-4g', '2014-11-12 01:06:56', '2014-09-01 16:10:33', '', '', 195, '', 0, '', '', 2014, 9),
(63, 'Ipad Air 16GB 4G', '', NULL, 'Gray', '', '', '75QS32ROUpBg7wBNLvpLIE0ajA6VHgC0.png', 4, 1, 0, 13180000, 0, '-25200', 0, 'ipad-air-16gb-4g1', '2014-09-07 17:51:23', '2014-09-01 16:11:06', '', '', 0, '', 62, '', '', 2014, 9),
(64, 'Ipad Air 16GB 4G', '', NULL, 'White', '', '', 'S8b3nK4lU3C5J5GMAwH6Q47f7dqSzuJd.png', 4, 1, 0, 13180000, 0, '-25200', 0, 'ipad-air-16gb-4g2', '2014-09-07 17:51:05', '2014-09-01 16:11:23', '', '', 0, '', 62, '', '', 2014, 9),
(65, 'Ipad Air 32GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 's4KY8vWhb84T6YwtOXPmLm3eH4csfz2S.png', 4, 1, 0, 13880000, 0, '-25200', 0, 'ipad-air-32gb-4g', '2014-11-11 17:56:05', '2014-09-01 16:12:09', '', '', 255, '', 0, '', '', 2014, 9),
(66, 'Ipad Air 32GB 4G', '', NULL, 'Gray', '', '', 'tmrdWMYrAeC4idZxrILajpB0B4BQqHR3.png', 4, 1, 0, 15380000, 0, '-25200', 0, 'ipad-air-32gb-4g1', '2014-09-07 17:50:14', '2014-09-01 16:12:29', '', '', 0, '', 65, '', '', 2014, 9),
(67, 'Ipad Air 32GB 4G', '', NULL, 'White', '', '', '8nJFKlQx7jIEaQMHh2lgEPHgqqAQP28c.png', 4, 1, 0, 15380000, 0, '-25200', 0, 'ipad-air-32gb-4g2', '2014-09-07 17:50:29', '2014-09-01 16:12:44', '', '', 0, '', 65, '', '', 2014, 9),
(68, 'Ipad Air 64GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'vL6oTLJJuJqLR13ynsCyh9bStL72BmP7.png', 4, 1, 0, 15880000, 0, '-25200', 0, 'ipad-air-64gb-4g', '2014-11-12 06:09:07', '2014-09-01 16:13:58', '', '', 183, '', 0, '', '', 2014, 9),
(69, 'Ipad Air 64GB 4G', '', NULL, 'Gray', '', '', 'aNbGQoR42roUBLU84ujTKVVrogQTEn2o.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-air-64gb-4g1', '2014-09-07 17:49:21', '2014-09-01 16:14:18', '', '', 0, '', 68, '', '', 2014, 9),
(70, 'Ipad Air 64GB 4G', '', NULL, 'White', '', '', 'oRiHY30HrMb4RyIdj8vN8czd8mfU38IF.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-air-64gb-4g2', '2014-09-07 17:49:02', '2014-09-01 16:14:33', '', '', 0, '', 68, '', '', 2014, 9),
(71, 'Ipad Air 128GB 4G', '', NULL, '', '<table class=\\"shop_attributes\\" style=\\"-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px\\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 't8kWO9ymXo2wzsr9TTyJyxLP290fsZ1t.png', 4, 1, 0, 16880000, 0, '-25200', 0, 'ipad-air-128gb-4g', '2014-11-11 17:56:01', '2014-09-01 16:15:41', '', '', 200, '', 0, '', '', 2014, 9),
(72, 'Ipad Air 128GB 4G', '', NULL, 'Gray', '', '', 'n3McFjalWvQEJEKwjT6S81cYnqJ4nDos.png', 4, 1, 0, 19900000, 0, '-25200', 0, 'ipad-air-128gb-4g1', '2014-09-07 17:17:56', '2014-09-01 16:15:58', '', '', 0, '', 71, '', '', 2014, 9),
(73, 'Ipad Air 128GB 4G', '', NULL, 'White', '', '', 'xZqVYnUpH1z4wDHqa2sUiGmj3GHyU81i.png', 4, 1, 0, 19900000, 0, '-25200', 0, 'ipad-air-128gb-4g2', '2014-09-07 17:17:22', '2014-09-01 16:16:12', '', '', 0, '', 71, '', '', 2014, 9),
(74, 'Imac 2014 MF 883', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>500GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Core i5 1.4GHz dual-core Intel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ys3IKtSRXNfFQQZ178XhauYqvLVTLfRc.png', 29, 1, 0, 26500000, 0, '-25200', 0, 'imac-2014-mf-883', '2014-11-12 04:57:52', '2014-09-01 16:22:01', '', '', 263, '', 0, '', '', 2014, 9),
(75, 'Imac 2013 ME 089', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>27&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 3.4Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 755M với 02GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'eepkrmtfmUVC0frg2cKHPBhGk65QPSbO.png', 29, 1, 0, 43500000, 0, '-25200', 0, 'imac-2013-me-089', '2014-11-11 21:00:27', '2014-09-01 16:23:45', '', '', 222, '', 0, '', '', 2014, 9),
(76, 'Imac 2013 ME 088', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>27&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 3.2Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 755M với 01GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZYs4CO4RWJcRdNltLmPk6weGr8T2728H.png', 29, 1, 0, 38500000, 0, '-25200', 0, 'imac-2013-me-088', '2014-11-11 20:24:17', '2014-09-01 16:25:10', '', '', 314, '', 0, '', '', 2014, 9),
(77, 'Imac 2013 ME 087', '', NULL, '', '<table class="shop_attributes" style="-webkit-font-smoothing:antialiased !important; border-collapse:collapse; border-spacing:0px; border-top-color:rgba(0, 0, 0, 0.0980392); border-top-style:dotted; border-width:1px 0px 0px; filter:none !important; font-family:roboto condensed; font-size:14px; line-height:20px; margin-bottom:1.618em; max-width:100%; text-rendering:optimizelegibility; width:860px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 2.9Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>NVIDIA GeForce GT 750M với 01GB Ram GDDR5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'fNMoypblydFHhCbCapsqDllJEg4V3zzN.png', 29, 1, 0, 32500000, 0, '-25200', 0, 'imac-2013-me-087', '2014-11-12 03:18:45', '2014-09-01 16:26:24', '', '', 198, '', 0, '', '', 2014, 9),
(78, 'Imac 2013 ME 086', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Mac OS X Mavericks</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>21.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>01TB HDD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Intel Core i5 &ndash; Quad Core 2.7Ghz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>2 x 04GB DDR3 1600Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Intel Iris Pro Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>SDXC Card Slot, RJ45 Gigabit, 2 x Thunder Bold 2, 4 x USB 3.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11ac Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g/n, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, Dual microphones, Headphone port, 720p FaceTime HD camera</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '5WiLL1EGnScyjUuSGwDFn6t59I94bMZr.png', 29, 1, 0, 28500000, 0, '-25200', 0, 'imac-2013-me-086', '2014-11-12 03:18:40', '2014-09-01 16:27:12', '', '', 548, '', 0, '', '', 2014, 9),
(79, 'Macbook Air 2014 MD712LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>11.6&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'osG1ocsjUKjbSyzr68ATjKK9NvN6iDPv.png', 28, 1, 0, 22990000, 0, '-25200', 0, 'macbook-air-2014-md712llb', '2014-11-12 00:10:54', '2014-09-01 16:33:11', '', '', 306, '', 0, '', '', 2014, 9),
(80, 'Macbook Air 2014 MD711LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>11.6&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'NElMuO6lNP4RLubg396OJ2fB5lOtLi4c.png', 28, 1, 0, 18990000, 0, '-25200', 0, 'macbook-air-2014-md711llb', '2014-11-12 03:38:34', '2014-09-01 16:34:44', '', '', 381, '', 0, '', '', 2014, 9),
(81, 'Macbook Air 2014 MD760LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128gb-ssd-pcie</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, Jack tai nghe 3.5mm, cổng sạc MagSafe 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Sterao speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ce06u7v3oioYHu86p9ZBrWnyHS7k4Pwx.png', 28, 1, 0, 21990000, 0, '-25200', 0, 'macbook-air-2014-md760llb', '2014-11-12 03:38:59', '2014-09-01 16:35:46', '', '', 394, '', 0, '', '', 2014, 9),
(82, 'Macbook Air 2014 MD761LL/B', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>OS X Maverick</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>13.3&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256GB PCIe</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>1.4GHz dual-core Intel Core i5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>4GB of 1600MHz LPDDR3 onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>Intel HD Graphics 5000 Onboard</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CỔNG KẾT NỐI</th>\r\n			<td>\r\n			<p>2 cổng USB 3.0, 1 Thunderbolt, khe cắm thẻ nhớ SD, cổng 3.5mm, sạc MagSafe 2 45W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>802.11n Wi-Fi, tương th&iacute;ch: IEEE 802.11a/b/g, Bluetooth 4.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>TH&Agrave;NH PHẦN KH&Aacute;C</th>\r\n			<td>\r\n			<p>Stereo speakers, FaceTime camera 720p HD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'nH4RrpBffQBx1Kd3s2plhzZl9DYeyeZA.png', 28, 1, 0, 24990000, 0, '-25200', 0, 'macbook-air-2014-md761llb', '2014-11-12 05:00:46', '2014-09-01 16:36:53', '', '', 383, '', 0, '', '', 2014, 9),
(83, 'Ipod Touch Jen 5 32GB', '', NULL, '', '<p><strong>Th&ocirc;ng số kỹ thuật.</strong><br />\r\niPod Touch Gen 5 được trang bị chip xử l&yacute; A5 2 nh&acirc;n, xung nhịp 800 MHz, dung lượng Ram 512 MB, m&agrave;n h&igrave;nh 4&Prime; (1136&times;640), camera ch&iacute;nh 5 MP v&agrave; camera phụ 1.2 MP. Như vậy iPod Touch Gen 5 c&oacute; cấu h&igrave;nh tương đương với iPhone 4S, nhưng n&oacute; lại kh&ocirc;ng hỗ trợ GPS, kh&ocirc;ng được t&iacute;ch hợp cảm biến &aacute;nh s&aacute;ng, c&oacute; nghĩa l&agrave; m&agrave;n h&igrave;nh sẽ kh&ocirc;ng tự thay đổi độ s&aacute;ng theo m&ocirc;i trường. Nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; do m&aacute;y qu&aacute; mỏng v&agrave; Apple kh&ocirc;ng thể t&iacute;ch hợp cảm biến n&agrave;y v&agrave;o.</p>\r\n\r\n<p><strong>Thiết kế.</strong><br />\r\niPod Touch từ trước đến nay lu&ocirc;n c&oacute; thiết kế ri&ecirc;ng, đặc trưng v&agrave; kh&ocirc;ng giống với iPhone c&ugrave;ng thời. iPod Touch Gen 5 n&agrave;y cũng kh&ocirc;ng phải ngoại lệ, d&ugrave; n&oacute; c&oacute; lớp vỏ bảo vệ với chất liệu tương tự nhưng thiết kế của n&oacute; th&igrave; c&oacute; thể n&oacute;i c&ograve;n đẹp hơn iPhone 5. Chiếc m&aacute;y nghe nhạc mới n&agrave;y rất mỏng v&agrave; nhẹ. N&oacute; chỉ d&agrave;y 6.1mm v&agrave; nặng 88g, so với iPod Touch Gen 4 l&agrave; 7.2mm v&agrave; 101g.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh.</strong><br />\r\nM&agrave;n h&igrave;nh của iPod Touch Gen 5 đ&atilde; kh&aacute;c nhiều so với c&aacute;c đời trước, m&agrave;n h&igrave;nh của m&aacute;y kh&aacute; tương đồng với m&agrave;n h&igrave;nh của iPhone 5, chất lượng hiển thị đẹp tương đương. Mọi người khi mới cầm v&agrave;o Gen 5 đều bị chinh phục bởi c&aacute;i m&agrave;n h&igrave;nh n&agrave;y.</p>\r\n\r\n<p><strong>M&aacute;y ảnh.</strong><br />\r\nCamera c&oacute; độ ph&acirc;n giải chỉ c&oacute; 5MP chứ kh&ocirc;ng phải 8MP. D&ugrave; sao th&igrave; đ&acirc;y cũng chỉ l&agrave; một thiết bị di dộng c&oacute; camera, n&ecirc;n chất lượng của n&oacute; kh&ocirc;ng so s&aacute;nh được với c&aacute;c m&aacute;y P&amp;S chuy&ecirc;n nghiệp. Tuy nhi&ecirc;n kh&ocirc;ng c&oacute; nghĩa l&agrave; chất lượng n&oacute; k&eacute;m, ảnh chụp bởi iPod Touch Gen 5 kh&aacute; tốt, m&agrave;u sắc đẹp, sắc n&eacute;t.</p>\r\n\r\n<p><strong>Thời lượng d&ugrave;ng pin.</strong><br />\r\nMặc d&ugrave; pin chỉ c&oacute; dung lượng 1030 mAh, tuy nhi&ecirc;n Gen 5 lại c&oacute; thời lượng sử dụng kh&aacute; tốt, c&oacute; lẽ l&agrave; do n&oacute; kh&ocirc;ng phải g&aacute;nh 3G.</p>\r\n', '', 'RDHA31Gd0UYx9Egf3Ur1435u9Xvs5ZNy.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb', '2014-11-12 06:40:38', '2014-09-01 16:39:58', '', '', 301, '', 0, '', '', 2014, 9),
(84, 'Ipod Touch Jen 5 32GB', '', NULL, 'Gray', '', '', 'RVE3uh5p4UmGUPBtdCCazsIA3fIgHALq.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb1', '2014-09-07 10:23:05', '2014-09-01 16:48:12', '', '', 0, '', 83, '', '', 2014, 9),
(85, 'Ipod Touch Jen 5 32GB', '', NULL, 'Yellow', '', '', 'vXDwUgwv5tD70ylvx3NVP79KrkWCc8nt.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb2', '2014-09-07 10:18:59', '2014-09-01 16:48:45', '', '', 0, '', 83, '', '', 2014, 9),
(86, 'Ipod Touch Jen 5 32GB', '', NULL, 'Blue', '', '', 'e62e8cZ4ISASxvPdLntTqrtgImB3OiVf.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb3', '2014-09-07 10:21:58', '2014-09-01 16:49:10', '', '', 0, '', 83, '', '', 2014, 9),
(87, 'Ipod Touch Jen 5 32GB', '', NULL, 'Pink', '', '', 'hvIeOMRbzQr9tybFQoP8nuzf68meskzZ.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb4', '2014-09-07 10:21:03', '2014-09-01 16:49:36', '', '', 0, '', 83, '', '', 2014, 9),
(88, 'Ipod Touch Jen 5 32GB', '', NULL, 'Silver', '', '', 'eAIRkYrJJqFp2sJadczmwzKOTzHdSdXH.png', 16, 0, 0, 6200000, 0, '-25200', 0, 'ipod-touch-jen-5-32gb5', '2014-09-07 07:23:51', '2014-09-01 16:50:03', '', '', 0, '', 83, '', '', 2014, 9),
(91, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'oAWxGlHToKWINiSB8IzMQcG0kfLmSWND.png', 4, 1, 0, 8390000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb', '2014-11-11 17:58:03', '2014-09-08 03:39:10', '', '', 259, '', 0, '', '', 2014, 9),
(92, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, 'Gray', '', '', '5xglI3XjVJs4w0RXIZD5Hrwnj4WHwbUt.png', 4, 1, 0, 8990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb1', '2014-09-08 04:29:15', '2014-09-08 03:56:18', '', '', 0, '', 91, '', '', 2014, 9),
(93, 'Ipad Mini Rentina Wifi 16Gb', '', NULL, 'White', '', '', 'WrvlITC1GPTFkOjCdUbxjTwgOtsf9qgs.png', 4, 1, 0, 8990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-16gb2', '2014-09-08 04:29:02', '2014-09-08 03:56:38', '', '', 0, '', 91, '', '', 2014, 9),
(94, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'UScKiwXHen3txwmFxepxTqCKKYAVjjap.png', 4, 1, 0, 10380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb', '2014-11-11 17:58:00', '2014-09-08 03:58:18', '', '', 183, '', 0, '', '', 2014, 9),
(95, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, 'Gray', '', '', 'bu1n6CMJ0vjrBVFyAkwAK59IFubd1aCA.png', 4, 1, 0, 10990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb1', '2014-09-08 04:28:39', '2014-09-08 03:59:27', '', '', 0, '', 94, '', '', 2014, 9);
INSERT INTO `pl_laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(96, 'Ipad Mini Rentina Wifi 32Gb', '', NULL, 'White', '', '', 'RVcNrY0SyV0GLE4KWOtbRaECAd7PWeoD.png', 4, 1, 0, 10990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-32gb2', '2014-09-08 04:28:29', '2014-09-08 03:59:47', '', '', 0, '', 94, '', '', 2014, 9),
(97, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'CTMaPAdeX8UzRgLnFKiQqfeIbJexk4UX.png', 4, 1, 0, 12380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb', '2014-11-11 17:56:58', '2014-09-08 04:02:02', '', '', 172, '', 0, '', '', 2014, 9),
(98, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, 'Gray', '', '', 'yA2m9LKCelE33ZuVyrZNqqTs6x1yUXuD.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb1', '2014-09-08 04:28:05', '2014-09-08 04:26:58', '', '', 0, '', 97, '', '', 2014, 9),
(99, 'Ipad Mini Rentina Wifi 64Gb', '', NULL, 'White', '', '', 'oHtWvNZpGCzPWP560jTMkqkdznahgTdw.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-64gb2', '2014-09-08 04:28:18', '2014-09-08 04:27:14', '', '', 0, '', 97, '', '', 2014, 9),
(100, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'qJRK1Xm0w7IyG44a5dimMVwI7CvXOV0i.png', 4, 1, 0, 13380000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb', '2014-11-11 17:57:57', '2014-09-08 04:28:12', '', '', 163, '', 0, '', '', 2014, 9),
(101, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, 'Gray', '', '', 'JTyvkJbYWymiKKyz5Y9gTqcRgH39xg9x.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb1', '2014-09-08 04:32:53', '2014-09-08 04:29:45', '', '', 0, '', 100, '', '', 2014, 9),
(102, 'Ipad Mini Rentina Wifi 128Gb', '', NULL, 'White', '', '', 'BooVWqlh1IdPKc21is1LmQfL6UNPnQjs.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-wifi-128gb2', '2014-09-08 04:33:54', '2014-09-08 04:30:06', '', '', 0, '', 100, '', '', 2014, 9),
(104, 'Ipad Mini Rentina 4G 16Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '6cJZSHoqtaf16rwXOchoGuO8wq3SdxLR.png', 4, 1, 0, 10890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb', '2014-11-11 22:02:56', '2014-09-08 06:21:59', '', '', 223, '', 0, '', '', 2014, 9),
(105, 'Ipad Mini Rentina 4G 16Gb', '', NULL, 'Gray', '', '', 'Lz6Q3MPmSo037ZFzowpbf5PlzelJ3P4A.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb1', '2014-09-08 06:40:10', '2014-09-08 06:26:10', '', '', 0, '', 104, '', '', 2014, 9),
(106, 'Ipad Mini Rentina 4G 16Gb', '', NULL, 'White', '', '', 'JY3VtxtZJRR31xczhRaASyLouIMUyce6.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-16gb2', '2014-09-08 06:40:42', '2014-09-08 06:26:30', '', '', 0, '', 104, '', '', 2014, 9),
(107, 'Ipad Mini Rentina 4G 32Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'MmDbQ3q1ua8WEvsLicn2v9TaFhzL0IzJ.png', 4, 1, 0, 12790000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb', '2014-11-11 17:56:22', '2014-09-08 06:27:21', '', '', 220, '', 0, '', '', 2014, 9),
(108, 'Ipad Mini Rentina 4G 32Gb', '', NULL, 'Gray', '', '', 'rjnzVI7shT1o2ir31sTpeUc51xg7mAsP.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb1', '2014-09-08 06:42:22', '2014-09-08 06:27:50', '', '', 0, '', 107, '', '', 2014, 9),
(109, 'Ipad Mini Rentina 4G 32Gb', '', NULL, 'White', '', '', 'hZcCylpdDcP7p6uRCh16fXyWEFDTKbr2.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-32gb2', '2014-09-08 06:42:45', '2014-09-08 06:28:06', '', '', 0, '', 107, '', '', 2014, 9),
(110, 'Ipad Mini Rentina 4G 64Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style=\\"width:150px\\">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\\"width:150px\\">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Cnubq8hfUGbzRRU5BJZ263ezj9suNihT.png', 4, 1, 0, 14890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb', '2014-11-11 17:57:55', '2014-09-08 06:28:58', '', '', 175, '', 0, '', '', 2014, 9),
(111, 'Ipad Mini Rentina 4G 64Gb', '', NULL, 'Gray', '', '', 'rme0L0sbyeesAVs8Zidnc9wxI0ZKVPO3.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb1', '2014-09-08 06:47:18', '2014-09-08 06:29:17', '', '', 0, '', 110, '', '', 2014, 9),
(112, 'Ipad Mini Rentina 4G 64Gb', '', NULL, 'White', '', '', '2NKzovRwi2pOEzBtaiZY0yfhDdwxHgAT.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-64gb2', '2014-09-08 06:47:28', '2014-09-08 06:29:34', '', '', 0, '', 110, '', '', 2014, 9),
(113, 'Ipad Mini Rentina 4G 128Gb', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'BgGsPiJGa0lzUPIuvmLfebmRwBMDBb3q.png', 4, 1, 0, 15890000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb', '2014-11-12 06:06:03', '2014-09-08 06:30:20', '', '', 193, '', 0, '', '', 2014, 9),
(114, 'Ipad Mini Rentina 4G 128Gb', '', NULL, 'Gray', '', '', 'ABkNZonfjuaKlfXtd2sjtYgKIOL6iQw0.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb1', '2014-09-08 06:48:11', '2014-09-08 06:30:40', '', '', 0, '', 113, '', '', 2014, 9),
(115, 'Ipad Mini Rentina 4G 128Gb', '', NULL, 'White', '', '', 'y7NxOg0NMrE2dC7udo49ucSMGyqiJ9m4.png', 4, 1, 0, 17680000, 0, '-25200', 0, 'ipad-mini-rentina-4g-128gb2', '2014-09-08 06:48:34', '2014-09-08 06:30:56', '', '', 0, '', 113, '', '', 2014, 9),
(116, 'Samsung Galaxy S5', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.1&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>16.0 MP &ndash; Camera phụ 2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Ion 2800 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'VAfD2x8AhQqN1CDGGQg8QvcpMSGMQC8t.png', 5, 2, 0, 13990000, 0, '-25200', 0, 'samsung-galaxy-s5', '2014-11-11 20:16:21', '2014-09-08 09:37:19', '', '', 238, '', 0, '', '', 2014, 9),
(117, 'Samsung Note 4', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS, v4.4.4 (KitKat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 805 &ndash; Quadcore 2.7 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>16 MP &ndash; Camera phụ 3.7 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3220 mAh Battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'jzhX5TmGe2NlakYdd6C88Qjc4e9OVChp.png', 5, 2, 0, 0, 0, '-25200', 0, 'samsung-note-4', '2014-11-12 03:47:13', '2014-09-08 09:53:21', '', '', 169, '', 0, '', '', 2014, 9),
(118, '13" Apple MacBook Pro Late 2013 Retina Haswell Review', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '0', 0, '13-apple-macbook-pro-late-2013-retina-haswell-review', '2014-09-08 13:35:34', '2014-09-08 13:35:34', '0', '0', 0, '', 0, '49', 'Ng7734dN420', 2014, 9),
(119, 'Samsung Galaxy Note 3 32Gb Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3200 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZsrpbMjx4rScOzBpauTn4Oa4V2zRFgi8.png', 5, 2, 0, 12990000, 0, '-25200', 0, 'samsung-galaxy-note-3-32gb-gold', '2014-11-11 17:57:31', '2014-09-08 13:44:39', '', '', 190, '', 0, '', '', 2014, 9),
(120, 'Samsung Galaxy Tab S 10.5 T805', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>10.5&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>2560 x 1600</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Exynos 5 Octa 5420 8-core, 1900 MHz, ARM Cortex-A15 &amp; ARM Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>7900 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '58M4X9A9E0Wx50iuaa7yDSbrNgpa4ve7.png', 5, 2, 0, 13300000, 0, '-25200', 0, 'samsung-galaxy-tab-s-105-t805', '2014-11-11 22:48:16', '2014-09-08 13:47:42', '', '', 146, '', 0, '', '', 2014, 9),
(121, 'Sony Xperia C3', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 1280</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Quad-core 1.2 GHz Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 305</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>08GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8 MP &ndash; Camera phụ 5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 2500 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'x3LO7wupfwdCTGGe6Ru1k6KQSQNWcwbe.png', 30, 7, 0, 7300000, 0, '-25200', 0, 'sony-xperia-c3', '2014-11-11 17:57:38', '2014-09-08 14:13:45', '', '', 161, '', 0, '', '', 2014, 9),
(122, 'Sony Xperia Z2 D6503', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.2&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>20.7 MP &ndash; Camera phụ 2.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3200 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Me96v2o6f7Fresdazm5H0xRzRtptZ4rH.png', 30, 7, 0, 11600000, 0, '-25200', 0, 'sony-xperia-z2-d6503', '2014-11-11 17:57:43', '2014-09-08 14:17:06', '', '', 190, '', 0, '', '', 2014, 9),
(123, 'Sony Xperia Z Ultra', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>6.4&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974 Snapdragon 800 &ndash; Quad-core 2.2 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3050 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'plcO4PDf58oq3hjzvuNlP9s0PtUwF227.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra', '2014-11-12 05:10:06', '2014-09-08 14:19:46', '', '', 174, '', 0, '', '', 2014, 9),
(124, 'Sony Xperia Z Ultra', '', NULL, 'Đen', '', '', 'TJWnUbuZYfSSyx9t9W7zbCrbN7iBOFt2.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra1', '2014-09-09 07:12:04', '2014-09-08 14:23:04', '', '', 0, '', 123, '', '', 2014, 9),
(125, 'Sony Xperia Z Ultra', '', NULL, 'Trắng', '', '', 'P9vNnU6ZowBgKyhr69xqv3fmhOwooBhv.png', 30, 7, 0, 7900000, 0, '-25200', 0, 'sony-xperia-z-ultra2', '2014-09-09 07:01:22', '2014-09-08 14:23:37', '', '', 0, '', 123, '', '', 2014, 9),
(126, 'Sony Xperia Z2 Tablet 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>10.1&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po 6000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'zkLgZ1LGhux1pLCMEBAGMxxL0c03jp67.png', 30, 7, 0, 13500000, 0, '-25200', 0, 'sony-xperia-z2-tablet-4g', '2014-11-12 06:40:23', '2014-09-08 14:30:10', '', '', 163, '', 0, '', '', 2014, 9),
(127, 'Nokia Lumia 930', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Windows Phone 8.1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 8974-AA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera ch&iacute;nh 20 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>2420 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'zuCWvHLHcx8Iz22fPohZmsUiy73GhJhy.png', 42, 3, 0, 12500000, 0, '-25200', 0, 'nokia-lumia-930', '2014-11-11 17:57:29', '2014-09-09 00:58:55', '', '', 135, '', 0, '', '', 2014, 9),
(128, 'Nokia Lumia 1520', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Windows Phone 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>6.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 800 MSM8974</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera ch&iacute;nh 20 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>3400 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'aab5QdxPMiu17NoZ9d1utKdIyuiMrpI0.png', 42, 3, 0, 10990000, 0, '-25200', 0, 'nokia-lumia-1520', '2014-11-11 17:57:24', '2014-09-09 01:02:41', '', '', 142, '', 0, '', '', 2014, 9),
(129, 'Nokia Lumia 630', '', NULL, '', '<table border="">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Mạng 2G</p>\r\n			</td>\r\n			<td>\r\n			<p>GSM 850 / 900 / 1800 / 1900 - SIM 1 &amp; SIM 2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mạng 3G</p>\r\n			</td>\r\n			<td>\r\n			<p>HSDPA 850 / 900 / 1900 / 2100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ra mắt</p>\r\n			</td>\r\n			<td>\r\n			<p>Th&aacute;ng 04 năm 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&agrave;y c&oacute; h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>10/05/2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>K&Iacute;CH THƯỚC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>129.5 x 66.7 x 9.2 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Trọng lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>134 g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>HIỂN THỊ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Loại</p>\r\n			</td>\r\n			<td>\r\n			<p>M&agrave;n h&igrave;nh cảm ứng điện dung IPS LCD, 16 triệu m&agrave;u</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>480 x 800 pixels, 4.5 inches, 228 ppi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- Cảm ứng đa điểm<br />\r\n			- C&ocirc;ng nghệ hiển thị ClearBlack&nbsp;<br />\r\n			- Cảm biến gia tốc<br />\r\n			- Cảm biến &aacute;nh s&aacute;ng<br />\r\n			- Cảm biến con quay hồi chuyển<br />\r\n			- Cảm biến la b&agrave;n số</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>&Acirc;M THANH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Kiểu chu&ocirc;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>B&aacute;o rung, nhạc chu&ocirc;ng MP3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&otilde; ra audio 3.5mm</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- C&ocirc;ng nghệ &acirc;m thanh Dolby headphone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>BỘ NHỚ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Danh bạ</p>\r\n			</td>\r\n			<td>\r\n			<p>Khả năng lưu c&aacute;c mục v&agrave; fields kh&ocirc;ng giới hạn, danh bạ h&igrave;nh ảnh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&aacute;c số đ&atilde; gọi</p>\r\n			</td>\r\n			<td>\r\n			<p>Khả năng lưu kh&ocirc;ng giới hạn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ trong</p>\r\n			</td>\r\n			<td>\r\n			<p>8 GB, 512 MB RAM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khe cắm thẻ nhớ</p>\r\n			</td>\r\n			<td>\r\n			<p>microSD (TransFlash) hỗ trợ l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>TRUYỀN DỮ LIỆU</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>GPRS</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>EDGE</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ 3G</p>\r\n			</td>\r\n			<td>\r\n			<p>HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>NFC</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>WLAN</p>\r\n			</td>\r\n			<td>\r\n			<p>Wi-Fi 802.11 b/g/n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bluetooth</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, v4.0 với A2DP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hồng ngoại</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, microUSB v2.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>CHỤP ẢNH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera ch&iacute;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>5 MP, 2592 х 1944 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đặc điểm</p>\r\n			</td>\r\n			<td>\r\n			<p>Geo-tagging</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Quay phim</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, 720p@30fps</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera phụ</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>ĐẶC ĐIỂM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ điều h&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Microsoft Windows Phone 8.1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ xử l&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Quad-core 1.2 GHz Cortex-A7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chipset</p>\r\n			</td>\r\n			<td>\r\n			<p>Qualcomm Snapdragon 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tin nhắn</p>\r\n			</td>\r\n			<td>\r\n			<p>SMS(threaded view), MMS, Email, Push Mail, IM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tr&igrave;nh duyệt</p>\r\n			</td>\r\n			<td>\r\n			<p>HTML</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Radio</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tr&ograve; chơi</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, c&oacute; thể tải th&ecirc;m tại Mai Nguy&ecirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u sắc</p>\r\n			</td>\r\n			<td>\r\n			<p>Đen, Trắng, Cam, V&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&ocirc;n ngữ</p>\r\n			</td>\r\n			<td>\r\n			<p>Tiếng Anh, Tiếng Việt</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Định vị to&agrave;n cầu</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Java</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, giả lập Java MIDP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- T&iacute;ch hợp mạng x&atilde; hội<br />\r\n			- Nghe nhạc MP3/WMA/WAV/eAAC+<br />\r\n			- Xem video MP4/H.264/H.263/WMV<br />\r\n			- Lịch tổ chức<br />\r\n			- Xem văn bản<br />\r\n			- Chỉnh sửa h&igrave;nh ảnh / video<br />\r\n			- Ghi &acirc;m / Quay số / Ra lệnh bằng giọng n&oacute;i<br />\r\n			- Nhập liệu đo&aacute;n trước từ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>PIN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin chuẩn</p>\r\n			</td>\r\n			<td>\r\n			<p>Li-Ion 1830 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Z7mTBYXEap4VcfG70mOf2X1RyfT33o9T.png', 42, 3, 0, 3490000, 0, '-25200', 0, 'nokia-lumia-630', '2014-11-11 17:57:27', '2014-09-09 01:11:40', '', '', 139, '', 0, '', '', 2014, 9),
(130, 'Nokia 515 Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>S40</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>2.4&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>240 x 320</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>64MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>256MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>1200 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'N0a9qUrfhxVilQSqv5dUXBjnvh0nUWfo.png', 42, 3, 0, 2990000, 0, '-25200', 0, 'nokia-515-gold', '2014-11-11 17:57:21', '2014-09-09 01:16:43', '', '', 178, '', 0, '', '', 2014, 9),
(131, 'HTC One M8 (16GB)', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera trước 5.0 MP, Camera đ&ocirc;i 4.0 MP AF &ldquo;UltraPixel&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Po 2600mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Guwt8C4XWp50JUgQ0q3wldLc8xYqSs7v.png', 6, 5, 0, 13200000, 0, '-25200', 0, 'htc-one-m8-16gb', '2014-11-11 17:57:07', '2014-09-09 01:20:35', '', '', 157, '', 0, '', '', 2014, 9),
(132, 'HTC One (M8) Gold', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AB Snapdragon 801 &ndash; Quad-core 2.3 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>Camera trước 5.0 MP, Camera đ&ocirc;i 4.0 MP AF &ldquo;UltraPixel&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Po 2600mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '4vMccUkHDSggBFA2ZQH4fVkCp8KLj3ZC.png', 6, 5, 0, 12900000, 0, '-25200', 0, 'htc-one-m8-gold', '2014-11-11 17:57:05', '2014-09-09 01:22:30', '', '', 165, '', 0, '', '', 2014, 9);
INSERT INTO `pl_laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(133, 'HTC Desire 816', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 1280</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon&trade; 400, 1,6 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 305</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>1.5GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>08GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 5MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-ion 2600 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'FN52qSv1A1jxddx9cm6byUWlcltsk1Am.png', 6, 5, 0, 6499000, 0, '-25200', 0, 'htc-desire-816', '2014-11-12 07:26:28', '2014-09-09 01:25:17', '', '', 235, '', 0, '', '', 2014, 9),
(134, 'HTC One Max 16GB', '', NULL, '', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:Full HD, 5.9&quot;, 1080 x 1920 pixels</li>\r\n	<li>CPU:Qualcomm Snapdragon 600, 4 nh&acirc;n, 1.7 GHz</li>\r\n	<li>RAM2 GB</li>\r\n	<li>Hệ điều h&agrave;nh:Android 4.3 (Jelly Bean)</li>\r\n	<li>Camera ch&iacute;nh:4,0 UltraPixel, Quay phim FullHD 1080p@30fps</li>\r\n	<li>Camera phụ:2.1 MP</li>\r\n	<li>Bộ nhớ trong:16 GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i:64 GB</li>\r\n	<li>Dung lượng pin:3300 mAh</li>\r\n</ul>\r\n', '', 'TfNBljiQscKGvaIRqo2wjaFx8JBEEOsL.png', 6, 5, 0, 11990000, 0, '-25200', 0, 'htc-one-max-16gb', '2014-11-11 17:57:10', '2014-09-09 01:30:12', '', '', 160, '', 0, '', '', 2014, 9),
(135, 'LG G3 32GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>03GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, Airplay, GPS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ad3rjhbrJuyEW7n16AXto1alIHT7vxXl.png', 49, 4, 0, 13990000, 0, '-25200', 0, 'lg-g3-32gb', '2014-11-12 06:15:45', '2014-09-09 01:32:01', '', '', 143, '', 0, '', '', 2014, 9),
(136, 'LG G3 16GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.4.2 (Kitkat)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.5&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1440 x 2560</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974AC Snapdragon 801 &ndash; Quad-core 2.5 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, Airplay, GPS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'bayud0BYA48gYhSx50rd8HoEOe4SBHNk.png', 49, 4, 0, 11990000, 0, '-25200', 0, 'lg-g3-16gb', '2014-11-11 17:57:12', '2014-09-09 02:54:32', '', '', 154, '', 0, '', '', 2014, 9),
(138, 'LG Optimus G2 – 32GB', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>Android OS 4.3 (Jelly Bean)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>5.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1080 x 1920</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm MSM8974 Snapdragon 800 &ndash; Quad-core 2.2 GHz Krait 400</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 330</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>13 MP &ndash; Camera phụ 2.1 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, NFC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 3000 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'M1nMFUtvr1Or2p3HdGOrT4v4GAcbBp2a.png', 49, 4, 0, 12399000, 0, '-25200', 0, 'lg-optimus-g2-32gb', '2014-11-11 17:57:19', '2014-09-09 03:58:13', '0', '0', 176, '', 0, '', '', 2014, 9),
(139, 'Blackberry Q10', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th style="width:150px">HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>BlackBerry 10.1 OS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>3.1&Prime;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>720 x 720</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CPU</th>\r\n			<td>\r\n			<p>Qualcomm Snapdragon S4 Plus MSM8960</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">GPU</th>\r\n			<td>\r\n			<p>Adreno 225</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>02GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Hỗ trợ thẻ nhớ TF l&ecirc;n đến 32GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 2.0 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th style="width:150px">LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Ion 2100 mAh battery</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZwCHH4h8GaIoofd7UpRjIwR47MKkOB9E.png', 31, 6, 0, 6990000, 0, '-25200', 0, 'blackberry-q10', '2014-11-11 17:57:00', '2014-09-09 04:15:34', '0', '0', 181, '', 0, '', '', 2014, 9),
(140, 'Iphone 6 16Gb', '', NULL, '', '', '', 'fQaEzp4h8090tJsGBqe8Y4pXzoKc2mzP.png', 3, 1, 0, 17990000, -1, '1411059600', 0, 'iphone-6-16gb', '2014-11-12 06:14:00', '2014-09-10 09:02:08', '0', '0', 1643, '', 0, '', '', 2014, 9),
(141, 'Iphone 6 16Gb', '', NULL, 'Gray', '', '', 'SEJNGyGrjJ8ZLVCxWXWUxQSzgzsTrOWY.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb1', '2014-09-11 10:56:48', '2014-09-10 09:05:13', '0', '0', 0, '', 140, '', '', 2014, 9),
(142, 'Iphone 6 16Gb', '', NULL, 'Siver', '', '', 'BOr0xULVQsRpI7N4pJYxgJ2oQ13zQSV1.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb2', '2014-09-10 09:52:37', '2014-09-10 09:05:23', '0', '0', 0, '', 140, '', '', 2014, 9),
(143, 'Iphone 6 16Gb', '', NULL, 'Gold', '', '', 'xdpvZWBbNIlmFlXC3KI5748Mzs7outkw.png', 3, 1, 0, 35000000, 0, '-25200', 0, 'iphone-6-16gb3', '2014-09-10 09:53:09', '2014-09-10 09:05:32', '0', '0', 0, '', 140, '', '', 2014, 9),
(145, 'Iphone 6 64Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 4.7&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 750 x 1334 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 64GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'PinFs6ZvfGdTsfkZnll4LerJB3S0UyXV.png', 3, 1, 0, 19990000, -1, '1411059600', 0, 'iphone-6-64gb', '2014-11-12 07:37:01', '2014-09-10 12:40:14', '0', '0', 680, '', 0, '', '', 2014, 9),
(146, 'Iphone 6 64Gb', '', NULL, 'Gray', '', '', 'aGLyWwJLpma4PxQUJVTbz1axzUdez4UY.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb1', '2014-09-11 10:59:42', '2014-09-10 12:40:26', '0', '0', 0, '', 145, '', '', 2014, 9),
(147, 'Iphone 6 64Gb', '', NULL, 'Silver', '', '', 'wEeDjDlA0yKbwLGjicBBrVwuANX6n8FO.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb2', '2014-09-11 11:03:51', '2014-09-10 12:40:36', '0', '0', 0, '', 145, '', '', 2014, 9),
(148, 'Iphone 6 64Gb', '', NULL, 'Gold', '', '', 'rzJeFvvSeLON5sLZYY05adQKquavLWQY.png', 3, 1, 0, 39000000, -1, '1411059600', 0, 'iphone-6-64gb3', '2014-09-11 11:01:28', '2014-09-10 12:40:45', '0', '0', 0, '', 145, '', '', 2014, 9),
(149, 'Iphone 6 128Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 4.7&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 750 x 1334 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 128GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '1HfXW5PEN1dsW6M5AjaOJ4wkuMf8H47Q.png', 3, 1, 0, 21990000, -1, '1411059600', 0, 'iphone-6-128gb', '2014-11-12 07:36:43', '2014-09-10 12:41:20', '0', '0', 365, '', 0, '', '', 2014, 9),
(150, 'Iphone 6 128Gb', '', NULL, 'Gray', '', '', 'z44VBnIyqSHWXYk073gH6zDvMxtHsrdy.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb1', '2014-09-11 11:02:58', '2014-09-10 12:41:32', '0', '0', 0, '', 149, '', '', 2014, 9),
(151, 'Iphone 6 128Gb', '', NULL, 'Silver', '', '', 'nP79A0MGZbwbDQzXXtPldVmgE9QvSgHj.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb2', '2014-09-18 06:44:52', '2014-09-10 12:41:46', '0', '0', 0, '', 149, '', '', 2014, 9),
(152, 'Iphone 6 128Gb', '', NULL, 'Gold', '', '', 'NRcoZNn4RVvlTqaD7gEZwMBT6Rif6AQz.png', 3, 1, 0, 4500000, -1, '1411059600', 0, 'iphone-6-128gb3', '2014-09-18 09:22:38', '2014-09-10 12:41:57', '0', '0', 0, '', 149, '', '', 2014, 9),
(153, 'Iphone 6 Plus 16Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 16GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'KZgGU6r5jw4zvVAyqS2CthFbt0UX0EX4.png', 3, 1, 0, 19990000, -1, '1411059600', 0, 'iphone-6-plus-16gb', '2014-11-12 07:36:19', '2014-09-10 12:45:53', '0', '0', 634, '', 0, '', '', 2014, 9),
(154, 'Iphone 6 Plus 16Gb', '', NULL, 'Gray', '', '', '3AVF2Tj2gnfLZMEhNGW8rUpKw0OCf9As.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb1', '2014-09-18 09:20:43', '2014-09-10 12:46:05', '0', '0', 0, '', 153, '', '', 2014, 9),
(155, 'Iphone 6 Plus 16Gb', '', NULL, 'Silver', '', '', 'xwznMULDxdW9jQK2dPatny6EfmOMoti4.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb2', '2014-09-18 09:20:51', '2014-09-10 12:46:20', '0', '0', 0, '', 153, '', '', 2014, 9),
(156, 'Iphone 6 Plus 16Gb', '', NULL, 'Gold', '', '', 'WQWJmxBdPho467ffEbqJBG2ICsJN1wcN.png', 3, 1, 0, 49000000, -1, '1411059600', 0, 'iphone-6-plus-16gb3', '2014-09-18 09:21:00', '2014-09-10 12:46:32', '0', '0', 0, '', 153, '', '', 2014, 9),
(157, 'Iphone 6 Plus 64Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 64GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'HsEJNoQIngmeq8DlDnxGQiNMWldmGJLI.png', 3, 1, 0, 22990000, -1, '1411059600', 0, 'iphone-6-plus-64gb', '2014-11-12 07:33:51', '2014-09-10 12:47:22', '0', '0', 809, '', 0, '', '', 2014, 9),
(158, 'Iphone 6 Plus 64Gb', '', NULL, 'Gray', '', '', '4KtnukBM5GYsIOWhRkHkCh2O9TsE6V0N.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb1', '2014-09-18 10:09:08', '2014-09-10 12:47:40', '0', '0', 0, '', 157, '', '', 2014, 9),
(159, 'Iphone 6 Plus 64Gb', '', NULL, 'Silver', '', '', 'KaGThPYbbBFSJumckFTsCR2iptxSlSOX.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb2', '2014-09-18 10:09:26', '2014-09-10 12:47:53', '0', '0', 0, '', 157, '', '', 2014, 9),
(160, 'Iphone 6 Plus 64Gb', '', NULL, 'Gold', '', '', 'hfIKgDWeIEfKhh25WyndSXhdxLGfyLIg.png', 3, 1, 0, 55000000, -1, '1411059600', 0, 'iphone-6-plus-64gb3', '2014-09-18 10:09:43', '2014-09-10 12:48:00', '0', '0', 0, '', 157, '', '', 2014, 9),
(161, 'Iphone 6 Plus 128Gb', '', NULL, '', '<p>HỆ ĐIỀU H&Agrave;NH&nbsp;&nbsp; &nbsp; : iOS 8<br />\r\nK&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH&nbsp;&nbsp; &nbsp;: 5.5&rdquo;<br />\r\nĐỘ PH&Acirc;N GIẢI&nbsp;&nbsp; &nbsp; : 1080 x 1920 pixels<br />\r\nCPU&nbsp;&nbsp; &nbsp;: Apple A8 64-bit<br />\r\nBỘ NHỚ RAM : 01GB<br />\r\nDUNG LƯỢNG LƯU TRỮ : 128GB<br />\r\nBỘ NHỚ MỞ RỘNG&nbsp;&nbsp; &nbsp;: Kh&ocirc;ng hỗ trợ<br />\r\nCAMERA&nbsp;&nbsp; &nbsp;: 8.0 MP &ndash; Camera phụ 2.1 MP<br />\r\nMẠNG 3G&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nKẾT NỐI KH&Ocirc;NG D&Acirc;Y : WiFi, Bluetooth, AirPlay<br />\r\nĐỊNH VỊ GPS&nbsp;&nbsp; &nbsp;: C&oacute;<br />\r\nLOẠI PIN : Non-removable Li-Po 1810 mAh</p>\r\n', '', 'bVW9dGD74YCIDFeV8NSywcRog6sZsdmq.png', 3, 1, 0, 25990000, -1, '1411059600', 0, 'iphone-6-plus-128gb', '2014-11-12 06:31:24', '2014-09-10 12:48:25', '0', '0', 1108, '', 0, '', '', 2014, 9),
(162, 'Iphone 6 Plus 128Gb', '', NULL, 'Gray', '', '', 'SYeQB6Vvq0G2TFoRYt44mzopE7XEiPdx.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb1', '2014-09-18 10:10:42', '2014-09-10 12:48:35', '0', '0', 0, '', 161, '', '', 2014, 9),
(163, 'Iphone 6 Plus 128Gb', '', NULL, 'Silver', '', '', 'w1bz1m8JP8Wuf0CYIancUIbholEunsaM.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb2', '2014-09-18 10:15:52', '2014-09-10 12:48:52', '0', '0', 0, '', 161, '', '', 2014, 9),
(164, 'Iphone 6 Plus 128Gb', '', NULL, 'Gold', '', '', 'LpzWUK6QUK2Sy8Sj6PcrJ9syRsr836It.png', 3, 1, 0, 59000000, -1, '1411059600', 0, 'iphone-6-plus-128gb3', '2014-09-19 02:32:26', '2014-09-10 12:49:00', '0', '0', 0, '', 161, '', '', 2014, 9),
(165, 'TungTest', '', NULL, '', '<p>Test</p>\r\n', '', 'iBqsUm0O5VZHpTa84rjZjz6T7esqmLRW.png', 3, 1, 0, 999999999, 0, '-25200', 1, 'tungtest', '2014-09-11 03:39:14', '2014-09-11 03:07:13', '0', '0', 0, '', 0, '', '', 2014, 9),
(166, 'TungTest', '', NULL, 'Gray', '', '', '1vZcpke61HdjxuJIfSNKTicCK4swcpXZ.png', 3, 1, 0, 999999999, 0, '-25200', 1, 'tungtest1', '2014-09-11 03:31:59', '2014-09-11 03:07:34', '0', '0', 0, '', 165, '', '', 2014, 9),
(167, 'SoundLink® Mini Bluetooth® speaker', '', NULL, '', '<p>- Thiết kế đột ph&aacute; mới của Bose gi&uacute;p bạn tận hưởng &acirc;m thanh trung thực, đầy đặn chỉ từ một chiếc loa nhỏ gọn trong l&ograve;ng b&agrave;n tay.<br />\r\n- Bộ tản &acirc;m thụ động được đặt ch&iacute;nh giữa loa gi&uacute;p n&eacute;n hơi nhiều hơn, gi&uacute;p t&aacute;i tạo tiếng bass s&acirc;u trầm mạnh mẽ hơn.<br />\r\n- Hai driver si&ecirc;u nhỏ gọn với v&ograve;ng nam ch&acirc;m được l&agrave;m từ Neodymium gi&uacute;p t&aacute;i tạo &acirc;m Trung-Cao mạnh mẽ.<br />\r\n- Bộ vi xử l&yacute; t&iacute;n hiệu kỹ thuật số gi&uacute;p duy tr&igrave; độ ch&iacute;nh x&aacute;c của c&aacute;c tần số, gi&uacute;p &acirc;m thanh ph&aacute;t ra lu&ocirc;n đạt t&iacute;nh trung thực, tự nhi&ecirc;n d&ugrave; ở bất kỳ mức volume n&agrave;o, hay thể loại nhạc n&agrave;o.<br />\r\n- Sẵn s&agrave;ng c&ugrave;ng bạn đến bất cứ nơi đ&acirc;u với kết nối Bluetooth qua c&aacute;c thiết bị nghe nhạc hay Smartphone, Tablet.<br />\r\n- Vỏ l&agrave;m bằng nh&ocirc;m nguy&ecirc;n khối mang lại vẻ chắc chắn v&agrave; sang trọng trong từng đường n&eacute;t.<br />\r\n- Pin sạc Lithium-Ion gi&uacute;p bạn nghe nhạc li&ecirc;n tục từ 5 - 8 giờ.<br />\r\n- Đế cắm đi k&egrave;m gi&uacute;p bạn thuận tiện hơn khi sạc pin cho loa tại nh&agrave;.<br />\r\n- Nhiều lựa chọn Cover với c&aacute;c m&agrave;u sắc kh&aacute;c nhau ph&ugrave; hợp với từng sở th&iacute;ch của bạn.<br />\r\n- Accessory Travel Bag b&aacute;n rời gi&uacute;p bạn dễ d&agrave;ng hơn trong việc bảo quản loa khi đi xa.<br />\r\n- K&iacute;ch thước: 5.08 x 5.84 x 18.03 cm<br />\r\n- Trọng lượng: 0.67 kg<br />\r\n- Sản phẩm thương hiệu Bose (USA)</p>\r\n', '', 'A9I91RCUg3IFIyxogzKQtbVr6l7Cp97J.jpg', 35, 8, 0, 5990000, 0, '-25200', 1, 'soundlink-mini-bluetooth-speaker', '2014-09-18 06:20:43', '2014-09-16 06:35:26', '0', '0', 2, '', 0, '', '', 2014, 9),
(168, 'Philips Fidelio SoundSphere DS9800w', '', NULL, '', '', '', 'HAJ7Q8NO75LceYcIsCZmHYaFSGZpKAYi.jpeg', 35, 9, 0, 18990000, 0, '-25200', 1, 'philips-fidelio-soundsphere-ds9800w', '2014-09-18 06:20:49', '2014-09-16 06:57:17', '0', '0', 0, '', 0, '', '', 2014, 9),
(169, 'Anker 40W 5-Port Family-Sized Desktop USB Charger with PowerIQ™ Technology', '', NULL, '', '<p>Input AC 100-240V<br />\r\nUSB Output 5V / 8A (total)<br />\r\nColor Black<br />\r\nSize 91 x 58 x 26mm / 3.6 x 2.3 x 1.0in<br />\r\nWeight 130g / 4.6oz</p>\r\n', '', 'ywAIEOYLR4DEkMk0f71kb1ky3AL5bbgq.jpg', 39, 10, 0, 990000, 0, '-25200', 1, 'anker-40w-5-port-family-sized-desktop-usb-charger-with-poweriq-technology', '2014-09-18 06:20:53', '2014-09-16 07:22:15', '0', '0', 2, '', 0, '', '', 2014, 9),
(170, 'Iphone 4s', '', NULL, '', '<p>M&agrave;n h&igrave;nh:DVGA, 3.5&quot;, 640 x 960 pixels<br />\r\nCPU:Apple A5, 2 nh&acirc;n, 1 GHz<br />\r\nRAM512 MB<br />\r\nHệ điều h&agrave;nh:iOS 5<br />\r\nCamera ch&iacute;nh:8.0 MP, Quay phim FullHD 1080p@30fps<br />\r\nCamera phụ:VGA (0.3 Mpx)<br />\r\nBộ nhớ trong:16 GB<br />\r\nThẻ nhớ ngo&agrave;i:Kh&ocirc;ng<br />\r\nDung lượng pin:1420 mAh</p>\r\n', '', 'M1FPNk2bm0iGsuFqkTQ99eBMtO29RF9b.png', 25, 1, 0, 6500000, 0, '-25200', 0, 'iphone-4s', '2014-11-11 17:58:24', '2014-09-27 04:29:27', '0', '0', 157, '', 0, '', '', 2014, 9),
(171, 'Iphone 5 Đen', '', NULL, 'Đen', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:DVGA, 4.0&quot;, 640 x 1136 pixels</li>\r\n	<li>CPU:Apple A6, 2 nh&acirc;n, 1.3 GHz</li>\r\n	<li>RAM1 GB</li>\r\n	<li>Hệ điều h&agrave;nh:iOS 6</li>\r\n	<li>Camera ch&iacute;nh:8.0 MP, Quay phim FullHD 1080p@30fps</li>\r\n	<li>Camera phụ:1.2 MP</li>\r\n	<li>Bộ nhớ trong:16 GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i:Kh&ocirc;ng</li>\r\n	<li>Dung lượng pin:1440 mAh</li>\r\n</ul>\r\n', '', 'Hg6OR0LAWCXBxRFL6RBo4tHYWLxn3GaZ.png', 25, 1, 0, 8900000, 0, '-25200', 0, 'iphone-5-den', '2014-11-12 06:26:00', '2014-09-27 04:40:28', '0', '0', 152, '', 0, '', '', 2014, 9),
(172, 'Iphone 5 Trắng', '', NULL, 'Trắng', '', '', 'XNZZHmo0U5EJYq5TOzzy6XRtBXS5U1Br.png', 25, 1, 0, 8900000, 0, '-25200', 0, 'iphone-5-trang', '2014-11-12 06:25:47', '2014-09-27 04:41:26', '0', '0', 226, '', 0, '', '', 2014, 9),
(174, 'Iphone 5s', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>4.0&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>640 x 1136</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Apple A7 Dual-core 1.3 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ RAM</th>\r\n			<td>\r\n			<p>01GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>KẾT NỐI KH&Ocirc;NG D&Acirc;Y</th>\r\n			<td>\r\n			<p>WiFi, Bluetooth, AirPlay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Pin chuẩn Li-Ion &ndash; 1570 mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'J59cP4slSniwqrmWWW65MpGCejz8un7x.png', 25, 1, 0, 11500000, 0, '-25200', 0, 'iphone-5s', '2014-11-11 17:58:17', '2014-09-27 04:48:11', '0', '0', 425, '', 0, '', '', 2014, 9),
(175, 'Ipad 4', '', NULL, '', '<ul>\r\n	<li>M&agrave;n h&igrave;nhLED-backlit IPS Rentina LCD, 9.7 inch</li>\r\n	<li>Hệ điều h&agrave;nhiOS 6</li>\r\n	<li>Vi xử l&iacute; CPUDual - Core, 1.4 GHz</li>\r\n	<li>RAM1 GB</li>\r\n	<li>Bộ nhớ trong16 GB</li>\r\n	<li>Camera5 MP(2592 x 1944 pixels)</li>\r\n	<li>Kết nốiC&oacute; 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps), Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot</li>\r\n	<li>Đ&agrave;m thoạiFace Time</li>\r\n	<li>Dung lượng pin11.560 mAh</li>\r\n	<li>Trọng lượng662</li>\r\n</ul>\r\n', '', '8DjVyo9xvzUxO17DyI4A5WNcYwKrVFis.png', 25, 1, 0, 0, 0, '-25200', 0, 'ipad-4', '2014-11-09 11:29:22', '2014-09-27 04:51:50', '0', '0', 126, '', 0, '', '', 2014, 9),
(176, 'Mac Pro Late 2013', '', NULL, '', '<p>Introduced&nbsp;&nbsp; &nbsp;June 2013 (Shipped December 2013)<br />\r\nDiscontinued&nbsp;&nbsp; &nbsp;--<br />\r\nModel Identifier&nbsp;&nbsp; &nbsp;MacPro6,1<br />\r\nModel Number&nbsp;&nbsp; &nbsp;A1481<br />\r\nEMC&nbsp;&nbsp; &nbsp;2630<br />\r\nOrder Number&nbsp;&nbsp; &nbsp;ME253LL/A (Quad-Core) MD878LL/A (6-Core)<br />\r\nInitial Price&nbsp;&nbsp; &nbsp;$2,999 (Quad-Core) $3,999 (6-Core)<br />\r\nSupport Status&nbsp;&nbsp; &nbsp;Supported<br />\r\nWeight and Dimensions&nbsp;&nbsp; &nbsp;11 lbs., 9.9&quot; H x 6.6&quot; D<br />\r\nPROCESSOR</p>\r\n\r\n<p>Processor&nbsp;&nbsp; &nbsp;Intel Xeon E5-1620, E5-1650, E5-1680, E5-2697 (&quot;Ivy Bridge&quot;)<br />\r\nProcessor Speed&nbsp;&nbsp; &nbsp;3.7, 3.5, 3.0, or 2.7 GHz<br />\r\nArchitecture&nbsp;&nbsp; &nbsp;64-bit<br />\r\nNumber of Cores&nbsp;&nbsp; &nbsp;4, 6, 8, or 12<br />\r\nCache&nbsp;&nbsp; &nbsp;10 MB (Quad-Core) 12 MB (6-Core) 25 MB (8-Core) 30 MB (12-Core) L3<br />\r\nSystem Bus&nbsp;&nbsp; &nbsp;Intel Direct Media Interface (DMI) 2.0 at 5 GT/s (Quad-Core, 6-Core, 8-Core) or 2 - Intel QuickPath Interconnect (QPI) at 8.0 GT/s (12-Core)<br />\r\nSTORAGE AND MEDIA</p>\r\n\r\n<p>Storage&nbsp;&nbsp; &nbsp;256, 512 GB, or 1 TB flash storage<br />\r\nMedia&nbsp;&nbsp; &nbsp;None<br />\r\nPERIPHERALS</p>\r\n\r\n<p>Peripherals&nbsp;&nbsp; &nbsp;None</p>\r\n', '', 'YGcp4JP3RcSfr4PkWa8qkFEvfXQ9H1xi.jpeg', 50, 1, 0, 0, 0, '0', 0, 'mac-pro-late-2013', '2014-11-11 19:02:08', '2014-10-10 10:19:40', '0', '0', 80, '', 0, '', '', 2014, 10),
(177, 'Mac Pro Late 2013', '', NULL, 'Tổng thể', '', '', '2WHWN30lkTLOTiDzPd7d5nq2B0g1jZwA.jpeg', 50, 1, 0, 0, 0, '-25200', 0, 'mac-pro-late-20131', '2014-10-10 10:21:21', '2014-10-10 10:20:07', '0', '0', 0, '', 176, '', '', 2014, 10),
(178, 'Mac Pro Late 2013', '', NULL, 'Nắp lưng', '', '', '1DgsWY20DhRS9VtEqpPsTEKiN6OVIQTq.jpeg', 50, 1, 0, 0, 0, '-25200', 0, 'mac-pro-late-20132', '2014-10-10 10:21:09', '2014-10-10 10:20:26', '0', '0', 0, '', 176, '', '', 2014, 10),
(179, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'RAzv730qcxp22bNNT79H6wabUog6mc5x.png', 4, 1, 0, 9990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi', '2014-11-12 06:15:50', '2014-10-24 10:48:13', '0', '0', 65, '', 0, '', '', 2014, 10),
(180, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Gray', '', '', '2yMYsuf7Z3AV8EneRsVuSMi5dO47l8Ax.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi1', '2014-10-24 10:54:03', '2014-10-24 10:54:02', '0', '0', 0, '', 179, '', '', 2014, 10),
(181, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Silver', '', '', 'Lz2V0JKXQZZRatkorI2MvNYlbyvlqFZp.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi2', '2014-10-24 10:54:52', '2014-10-24 10:54:52', '0', '0', 0, '', 179, '', '', 2014, 10),
(182, 'Ipad mini Rentina 3 16Gb Wifi', '', NULL, 'Gold', '', '', '9u8I4YlJZQtKmgdoMz7oXe7TL76Mc6PN.png', 4, 1, 0, 0, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-wifi3', '2014-10-24 10:56:13', '2014-10-24 10:56:13', '0', '0', 0, '', 179, '', '', 2014, 10),
(183, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'LkAKeCjx5ChkqCZgAINwe2vyMoYiNOXW.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi', '2014-11-12 06:15:51', '2014-10-24 10:59:06', '0', '0', 61, '', 0, '', '', 2014, 10),
(184, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Gray', '', '', 'LKDocNFG9VURj6GAdebBUkwG22bM5UZ9.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi1', '2014-10-24 10:59:58', '2014-10-24 10:59:58', '0', '0', 0, '', 183, '', '', 2014, 10),
(185, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Silver', '', '', 'cvh1naHLNnf9CX0YqcjaoidXgvSwgoao.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi2', '2014-10-24 11:00:47', '2014-10-24 11:00:46', '0', '0', 0, '', 183, '', '', 2014, 10),
(186, 'Ipad mini Rentina 3 64Gb Wifi', '', NULL, 'Gold', '', '', 'h7MVJkwZ76KJVzMeg2xSvb6l0czEqThW.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-wifi3', '2014-10-24 11:01:12', '2014-10-24 11:01:12', '0', '0', 0, '', 183, '', '', 2014, 10),
(187, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZgDOkVnhYt7mxz8bcRCzgluFRwynzNeU.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi', '2014-11-12 06:15:53', '2014-10-24 11:02:30', '0', '0', 40, '', 0, '', '', 2014, 10),
(188, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Gray', '', '', 'IAo9Qd6jIQQXSK5OCqUkVQHidcwwWJcv.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi1', '2014-10-24 11:03:47', '2014-10-24 11:03:47', '0', '0', 0, '', 187, '', '', 2014, 10),
(189, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Silver', '', '', 'vX3VPjgISn6wgTENGwebnwNiG99l33pe.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi2', '2014-10-24 11:04:12', '2014-10-24 11:04:12', '0', '0', 0, '', 187, '', '', 2014, 10),
(190, 'Ipad mini Rentina 3 128Gb Wifi', '', NULL, 'Gold', '', '', 'Z1v1AdyIp2vOGuClZxCl01hSecT5Z68L.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-wifi3', '2014-10-24 11:04:31', '2014-10-24 11:04:31', '0', '0', 0, '', 187, '', '', 2014, 10),
(191, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'ZXHbpPvkAAt71XbGXM7jKinEidTAjecG.png', 4, 1, 0, 14790000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g', '2014-11-12 06:13:02', '2014-10-24 11:16:15', '0', '0', 40, '', 0, '', '', 2014, 10),
(192, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Gray', '', '', 'xUcN4yxzY7ySXo2xrJcz9d0aBiYQCdHi.png', 4, 1, 0, 12790000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g1', '2014-10-31 06:07:48', '2014-10-24 11:18:34', '0', '0', 0, '', 191, '', '', 2014, 10),
(193, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Silver', '', '', 'YEl4Vqz0DzqiLpEkwzoSCLBBM5YsHp0f.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g2', '2014-10-24 11:19:05', '2014-10-24 11:19:05', '0', '0', 0, '', 191, '', '', 2014, 10),
(194, 'Ipad mini Rentina 3 16Gb 4G', '', NULL, 'Gold', '', '', 'qPniCo6o8CwJDpUPRcy8UeOtxfFSfJ9I.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-mini-rentina-3-16gb-4g3', '2014-10-24 11:19:26', '2014-10-24 11:19:26', '0', '0', 0, '', 191, '', '', 2014, 10),
(195, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'mO1jfJmn2gvHtB80Rty7uCFuPodoDZLZ.png', 4, 1, 0, 14790000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g', '2014-11-12 06:13:03', '2014-10-24 11:21:41', '0', '0', 46, '', 0, '', '', 2014, 10),
(196, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Gray', '', '', 'Shu0bYDfyQw6AfLK53MbNrwZd4B6zujg.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g1', '2014-10-24 11:23:25', '2014-10-24 11:23:25', '0', '0', 0, '', 195, '', '', 2014, 10),
(197, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Silver', '', '', 'hUO7jyUim9QtSbzpd1fR2nSwSOsLwVrB.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g2', '2014-10-24 11:23:51', '2014-10-24 11:23:51', '0', '0', 0, '', 195, '', '', 2014, 10),
(198, 'Ipad mini Rentina 3 64Gb 4G', '', NULL, 'Gold', '', '', 'MoS75tDulQr1IEhcjANXiMBDFSXGBp3M.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-mini-rentina-3-64gb-4g3', '2014-10-24 11:24:16', '2014-10-24 11:24:16', '0', '0', 0, '', 195, '', '', 2014, 10),
(199, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>7.9&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A7 chip with 64‑bit architecture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>5.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po battery (23.8 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'lGhAt6yuAWCWysGrwpjafVwMBzVro96n.png', 4, 1, 0, 16890000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g', '2014-11-12 06:13:04', '2014-10-24 11:25:51', '0', '0', 38, '', 0, '', '', 2014, 10),
(200, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Gray', '', '', 't60CtMnOyO4MXz71H68LYdzbZs487yRU.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g1', '2014-10-24 11:30:26', '2014-10-24 11:30:26', '0', '0', 0, '', 199, '', '', 2014, 10),
(201, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Silver', '', '', 'qBDty1BMQkNfbS1yENFDt7YHnDVoXI37.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g2', '2014-10-24 11:30:57', '2014-10-24 11:30:56', '0', '0', 0, '', 199, '', '', 2014, 10),
(202, 'Ipad mini Rentina 3 128Gb 4G', '', NULL, 'Gold', '', '', 'frwQItSwkZcJsHJh4q88STHOQuUVKfzO.png', 4, 1, 0, 19880000, 0, '-25200', 0, 'ipad-mini-rentina-3-128gb-4g3', '2014-10-24 11:31:31', '2014-10-24 11:31:31', '0', '0', 0, '', 199, '', '', 2014, 10),
(203, 'Ipad Air 2 16Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'LYKnoVHlXGna7CH3IwjTIQNlSCOofRjA.png', 4, 1, 0, 11680000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi', '2014-11-12 06:21:37', '2014-10-24 11:39:03', '0', '0', 73, '', 0, '', '', 2014, 10),
(204, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Gray', '', '', 'ZoMBfDyq1uw5lJChLKi1bnPhptv5ICer.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi1', '2014-10-24 11:40:13', '2014-10-24 11:40:13', '0', '0', 0, '', 203, '', '', 2014, 10),
(205, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Silver', '', '', '2JQDIYhNLj5n6qz5jcCjDnJ7ZPXGmTKc.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi2', '2014-10-24 11:41:11', '2014-10-24 11:41:11', '0', '0', 0, '', 203, '', '', 2014, 10),
(206, 'Ipad Air 2 16Gb Wifi', '', NULL, 'Gold', '', '', '5GhqDUpwfP2pxXm2IdiyCq1D9x96MBFb.png', 4, 1, 0, 12990000, 0, '-25200', 0, 'ipad-air-2-16gb-wifi3', '2014-10-24 11:41:34', '2014-10-24 11:41:34', '0', '0', 0, '', 203, '', '', 2014, 10),
(207, 'Ipad Air 2 64Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'OicXfivSeHdOaJgdDByqCdRBuYv2SxIk.png', 4, 1, 0, 13680000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi', '2014-11-12 06:30:27', '2014-10-24 11:43:44', '0', '0', 99, '', 0, '', '', 2014, 10),
(208, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Gray', '', '', 'mWifZkX8PwZYZgLH33zbN4NlPjyEfwIr.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi1', '2014-10-24 11:44:27', '2014-10-24 11:44:27', '0', '0', 0, '', 207, '', '', 2014, 10),
(209, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Silver', '', '', 'UlyEXgkMNwlvw1p7M2Fah9BYlcfR4ERO.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi2', '2014-10-24 11:44:53', '2014-10-24 11:44:53', '0', '0', 0, '', 207, '', '', 2014, 10),
(210, 'Ipad Air 2 64Gb Wifi', '', NULL, 'Gold', '', '', 'U7e7kmVYx0SgLmB7NqDvZfInJIdY6rzT.png', 4, 1, 0, 14990000, 0, '-25200', 0, 'ipad-air-2-64gb-wifi3', '2014-10-24 11:45:25', '2014-10-24 11:45:24', '0', '0', 0, '', 207, '', '', 2014, 10),
(211, 'Ipad Air 2 128Gb Wifi', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Ulehe7rWczQgoJ507GksSeSR2VEVETNv.png', 4, 1, 0, 15680000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi', '2014-11-12 06:54:44', '2014-10-24 11:47:08', '0', '0', 90, '', 0, '', '', 2014, 10),
(212, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Gray', '', '', 'Y8WqvJGcR1cupJVMeTMdyAcDuGEJ0f7a.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi1', '2014-10-24 11:47:56', '2014-10-24 11:47:56', '0', '0', 0, '', 211, '', '', 2014, 10),
(213, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Silver', '', '', '9ENhukGLcy8xScmOO5LxhUwXYo8UNbaG.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi2', '2014-10-24 11:48:27', '2014-10-24 11:48:27', '0', '0', 0, '', 211, '', '', 2014, 10),
(214, 'Ipad Air 2 128Gb Wifi', '', NULL, 'Gold', '', '', '365UCuXfafS2ozuONmdPQGajDrJl1bFi.png', 4, 1, 0, 16990000, 0, '-25200', 0, 'ipad-air-2-128gb-wifi3', '2014-10-24 11:48:47', '2014-10-24 11:48:47', '0', '0', 0, '', 211, '', '', 2014, 10);
INSERT INTO `pl_laproducts` (`id`, `latitle`, `lakeyword`, `ladescription`, `lashortinfo`, `lainfo`, `lauseguide`, `laimage`, `lacategory_id`, `lamanufactor_id`, `laoldprice`, `laprice`, `laamount`, `ladatenew`, `ladeleted`, `laurl`, `updated_at`, `created_at`, `lakhoiluong`, `ladungtich`, `laview`, `lachucnang`, `lavariant_id`, `laproduct_id`, `youtubeid`, `layear`, `lamonth`) VALUES
(215, 'Ipad Air 2 16Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>16GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'EMyYAqI2zgoaBL3Cxu25DswYuQ7Qdr4c.png', 4, 1, 0, 14880000, 0, '-25200', 0, 'ipad-air-2-16gb-4g', '2014-11-12 06:06:18', '2014-10-24 11:51:16', '0', '0', 80, '', 0, '', '', 2014, 10),
(216, 'Ipad Air 2 16Gb 4G', '', NULL, 'Gray', '', '', 'VLfcEtLnNC62Wpsw9jG6hlwQyErFthHw.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g1', '2014-10-24 11:53:39', '2014-10-24 11:53:39', '0', '0', 0, '', 215, '', '', 2014, 10),
(217, 'Ipad Air 2 16Gb 4G', '', NULL, 'Silver', '', '', 'MkLjXKPtqkyXbunve1ASseg2xEMCjnwC.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g2', '2014-10-24 11:54:49', '2014-10-24 11:54:49', '0', '0', 0, '', 215, '', '', 2014, 10),
(218, 'Ipad Air 2 16Gb 4G', '', NULL, 'Gold', '', '', 'VvB5dwyKgsAiz6zm0Fich6vtKOuQiIsM.png', 4, 1, 0, 16680000, 0, '-25200', 0, 'ipad-air-2-16gb-4g3', '2014-10-24 11:55:12', '2014-10-24 11:55:12', '0', '0', 0, '', 215, '', '', 2014, 10),
(219, 'Ipad Air 2 64Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'OEe4i15CRGIfy1pV2v84AW8sg2qHZk3v.png', 4, 1, 0, 16880000, 0, '-25200', 0, 'ipad-air-2-64gb-4g', '2014-11-12 06:41:04', '2014-10-24 11:58:16', '0', '0', 127, '', 0, '', '', 2014, 10),
(220, 'Ipad Air 2 64Gb 4G', '', NULL, 'Gray', '', '', 'fVJnhYr3GDEWC6kofQDDLkr6GbPCOvWD.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g1', '2014-10-24 11:58:47', '2014-10-24 11:58:46', '0', '0', 0, '', 219, '', '', 2014, 10),
(221, 'Ipad Air 2 64Gb 4G', '', NULL, 'Silver', '', '', 'QJDXGquR4az9BSAHTj5dloWAs4cn5VqL.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g2', '2014-10-24 11:59:08', '2014-10-24 11:59:08', '0', '0', 0, '', 219, '', '', 2014, 10),
(222, 'Ipad Air 2 64Gb 4G', '', NULL, 'Gold', '', '', 'jtygKsDyypeCQFKgU4cC3S8tAzNki4FK.png', 4, 1, 0, 18680000, 0, '-25200', 0, 'ipad-air-2-64gb-4g3', '2014-10-24 11:59:32', '2014-10-24 11:59:32', '0', '0', 0, '', 219, '', '', 2014, 10),
(223, 'Ipad Air 2 128Gb 4G', '', NULL, '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>HỆ ĐIỀU H&Agrave;NH</th>\r\n			<td>\r\n			<p>iOS 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&Iacute;CH THƯỚC M&Agrave;N H&Igrave;NH</th>\r\n			<td>\r\n			<p>9.7&rdquo;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỘ PH&Acirc;N GIẢI</th>\r\n			<td>\r\n			<p>1536 x 2048</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>A8X Dual-core 1.3 GHz Cyclone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>GPU</th>\r\n			<td>\r\n			<p>PowerVR G6430</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DUNG LƯỢNG LƯU TRỮ</th>\r\n			<td>\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>BỘ NHỚ MỞ RỘNG</th>\r\n			<td>\r\n			<p>Kh&ocirc;ng hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CAMERA</th>\r\n			<td>\r\n			<p>8.0 MP &ndash; Camera phụ 1.2 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MẠNG 3G</th>\r\n			<td>\r\n			<p>4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ĐỊNH VỊ GPS</th>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>LOẠI PIN</th>\r\n			<td>\r\n			<p>Li-Po Battery (27.3 Wh)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'a6Aa2DsnQ7t3jjs04ZbEfTYGMauhufAd.png', 4, 1, 0, 188800000, 0, '-25200', 0, 'ipad-air-2-128gb-4g', '2014-11-12 06:09:59', '2014-10-24 12:00:37', '0', '0', 76, '', 0, '', '', 2014, 10),
(224, 'Ipad Air 2 128Gb 4G', '', NULL, 'Gray', '', '', 'L9IRzJkwlUPPx4HmfbqYof8PJjYV2Din.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g1', '2014-10-24 12:01:03', '2014-10-24 12:01:03', '0', '0', 0, '', 223, '', '', 2014, 10),
(225, 'Ipad Air 2 128Gb 4G', '', NULL, 'Silver', '', '', 'zXoa2OWSFxgT7lBRvEEffBbaoosQxui3.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g2', '2014-10-24 12:01:28', '2014-10-24 12:01:28', '0', '0', 0, '', 223, '', '', 2014, 10),
(226, 'Ipad Air 2 128Gb 4G', '', NULL, 'Gold', '', '', '5XosdgC57PV4l0oSQU8EyMLVnnQhSdoj.png', 4, 1, 0, 22880000, 0, '-25200', 0, 'ipad-air-2-128gb-4g3', '2014-10-24 12:01:47', '2014-10-24 12:01:47', '0', '0', 0, '', 223, '', '', 2014, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pl_latags`
--

CREATE TABLE IF NOT EXISTS `pl_latags` (
`id` int(11) unsigned NOT NULL,
  `latitle` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `laproduct_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pl_lauser`
--

CREATE TABLE IF NOT EXISTS `pl_lauser` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `larole` varchar(20) DEFAULT NULL,
  `lastatus` int(11) DEFAULT NULL,
  `lafullname` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `laemail` varchar(50) DEFAULT NULL,
  `laphoto` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pl_lauser`
--

INSERT INTO `pl_lauser` (`id`, `username`, `password`, `larole`, `lastatus`, `lafullname`, `updated_at`, `created_at`, `laemail`, `laphoto`) VALUES
(1, 'admin@phongee.vn', '$2y$10$cn2evPkX0GMyAWcUZ37ab.1ilTXucy9oitCo7qOnUzBso0KAgQmsi', 'admin', 1, 'Administrator', '2014-04-07 16:53:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pl_lausers`
--

CREATE TABLE IF NOT EXISTS `pl_lausers` (
`id` int(11) NOT NULL,
  `laemail` text COLLATE utf8_unicode_ci,
  `laphoto` text COLLATE utf8_unicode_ci,
  `laname` text COLLATE utf8_unicode_ci,
  `lapassword` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pl_v_categories`
--
CREATE TABLE IF NOT EXISTS `pl_v_categories` (
`id` int(11) unsigned
,`latitle` varchar(50)
,`laparent_id` int(11)
,`laurl` varchar(50)
,`lainfo` text
,`ladeleted` int(11)
,`laorder` int(11)
,`laimage` varchar(50)
,`updated_at` timestamp
,`created_at` timestamp
,`laicon` varchar(100)
,`isnews` int(1)
,`numproduct` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `pl_v_products`
--
CREATE TABLE IF NOT EXISTS `pl_v_products` (
`id` int(11) unsigned
,`latitle` varchar(100)
,`lakeyword` text
,`ladescription` text
,`lashortinfo` text
,`lainfo` text
,`lauseguide` text
,`laimage` varchar(50)
,`lacategory_id` int(11)
,`lamanufactor_id` int(11)
,`laoldprice` int(11)
,`laprice` int(11)
,`laamount` int(11)
,`ladatenew` varchar(50)
,`ladeleted` int(11)
,`laurl` varchar(100)
,`updated_at` timestamp
,`created_at` timestamp
,`lakhoiluong` varchar(20)
,`ladungtich` varchar(100)
,`laview` int(11)
,`lachucnang` varchar(100)
,`lavariant_id` int(11)
,`laproduct_id` varchar(50)
,`youtubeid` varchar(50)
,`layear` int(4)
,`lamonth` int(2)
,`sumvariant` bigint(21)
,`cat1id` int(11) unsigned
,`cat1name` varchar(50)
,`cat1url` varchar(50)
,`cat1deleted` int(11)
,`order1` int(11)
,`isnews` int(1)
,`cat2id` decimal(11,0)
,`cat2name` varchar(50)
,`cat2url` varchar(50)
,`order2` bigint(11)
,`cat3id` decimal(11,0)
,`cat3name` varchar(50)
,`cat3url` varchar(50)
,`order3` bigint(11)
,`factorid` int(11) unsigned
,`factorname` varchar(50)
,`factorurl` varchar(50)
,`pricechange` bigint(12)
,`numorder` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `pl_v_productsadmin`
--
CREATE TABLE IF NOT EXISTS `pl_v_productsadmin` (
`id` int(11) unsigned
,`latitle` varchar(100)
,`lakeyword` text
,`ladescription` text
,`lashortinfo` text
,`lainfo` text
,`lauseguide` text
,`laimage` varchar(50)
,`lacategory_id` int(11)
,`lamanufactor_id` int(11)
,`laoldprice` int(11)
,`laprice` int(11)
,`laamount` int(11)
,`ladatenew` varchar(50)
,`ladeleted` int(11)
,`laurl` varchar(100)
,`updated_at` timestamp
,`created_at` timestamp
,`lakhoiluong` varchar(20)
,`ladungtich` varchar(100)
,`laview` int(11)
,`lachucnang` varchar(100)
,`lavariant_id` int(11)
,`laproduct_id` varchar(50)
,`youtubeid` varchar(50)
,`layear` int(4)
,`lamonth` int(2)
,`sumvariant` bigint(21)
,`cat1id` int(11) unsigned
,`cat1name` varchar(50)
,`cat1url` varchar(50)
,`cat1deleted` int(11)
,`isnews` int(1)
,`cat2id` decimal(11,0)
,`cat2name` varchar(50)
,`cat2url` varchar(50)
,`cat3id` decimal(11,0)
,`cat3name` varchar(50)
,`cat3url` varchar(50)
,`factorid` int(11) unsigned
,`factorname` varchar(50)
,`factorurl` varchar(50)
,`pricechange` bigint(12)
,`numorder` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_categories`
--
CREATE TABLE IF NOT EXISTS `v_categories` (
`id` int(11) unsigned
,`latitle` varchar(50)
,`laparent_id` int(11)
,`laurl` varchar(50)
,`lainfo` text
,`ladeleted` int(11)
,`laorder` int(11)
,`laimage` varchar(50)
,`updated_at` timestamp
,`created_at` timestamp
,`laicon` varchar(100)
,`isnews` int(1)
,`numproduct` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_products`
--
CREATE TABLE IF NOT EXISTS `v_products` (
`id` int(11) unsigned
,`latitle` varchar(100)
,`lakeyword` text
,`ladescription` text
,`lashortinfo` text
,`lainfo` text
,`lauseguide` text
,`laimage` varchar(50)
,`lacategory_id` int(11)
,`lamanufactor_id` int(11)
,`laoldprice` int(11)
,`laprice` int(11)
,`laamount` int(11)
,`ladatenew` varchar(50)
,`ladeleted` int(11)
,`laurl` varchar(100)
,`updated_at` timestamp
,`created_at` timestamp
,`lakhoiluong` varchar(20)
,`ladungtich` varchar(100)
,`laview` int(11)
,`lachucnang` varchar(100)
,`lavariant_id` int(11)
,`laproduct_id` varchar(50)
,`youtubeid` varchar(50)
,`layear` int(4)
,`lamonth` int(2)
,`sumvariant` bigint(21)
,`cat1id` int(11) unsigned
,`cat1name` varchar(50)
,`cat1url` varchar(50)
,`cat1deleted` int(11)
,`order1` int(11)
,`isnews` int(1)
,`cat2id` decimal(11,0)
,`cat2name` varchar(50)
,`cat2url` varchar(50)
,`order2` bigint(11)
,`cat3id` decimal(11,0)
,`cat3name` varchar(50)
,`cat3url` varchar(50)
,`order3` bigint(11)
,`factorid` int(11) unsigned
,`factorname` varchar(50)
,`factorurl` varchar(50)
,`pricechange` bigint(12)
,`numorder` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_productsadmin`
--
CREATE TABLE IF NOT EXISTS `v_productsadmin` (
`id` int(11) unsigned
,`latitle` varchar(100)
,`lakeyword` text
,`ladescription` text
,`lashortinfo` text
,`lainfo` text
,`lauseguide` text
,`laimage` varchar(50)
,`lacategory_id` int(11)
,`lamanufactor_id` int(11)
,`laoldprice` int(11)
,`laprice` int(11)
,`laamount` int(11)
,`ladatenew` varchar(50)
,`ladeleted` int(11)
,`laurl` varchar(100)
,`updated_at` timestamp
,`created_at` timestamp
,`lakhoiluong` varchar(20)
,`ladungtich` varchar(100)
,`laview` int(11)
,`lachucnang` varchar(100)
,`lavariant_id` int(11)
,`laproduct_id` varchar(50)
,`youtubeid` varchar(50)
,`layear` int(4)
,`lamonth` int(2)
,`sumvariant` bigint(21)
,`cat1id` int(11) unsigned
,`cat1name` varchar(50)
,`cat1url` varchar(50)
,`cat1deleted` int(11)
,`isnews` int(1)
,`cat2id` decimal(11,0)
,`cat2name` varchar(50)
,`cat2url` varchar(50)
,`cat3id` decimal(11,0)
,`cat3name` varchar(50)
,`cat3url` varchar(50)
,`factorid` int(11) unsigned
,`factorname` varchar(50)
,`factorurl` varchar(50)
,`pricechange` bigint(12)
,`numorder` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Structure for view `pl_v_categories`
--
DROP TABLE IF EXISTS `pl_v_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pl_v_categories` AS select `c`.`id` AS `id`,`c`.`latitle` AS `latitle`,`c`.`laparent_id` AS `laparent_id`,`c`.`laurl` AS `laurl`,`c`.`lainfo` AS `lainfo`,`c`.`ladeleted` AS `ladeleted`,`c`.`laorder` AS `laorder`,`c`.`laimage` AS `laimage`,`c`.`updated_at` AS `updated_at`,`c`.`created_at` AS `created_at`,`c`.`laicon` AS `laicon`,`c`.`isnews` AS `isnews`,count(`p`.`id`) AS `numproduct` from (`pl_lacategories` `c` left join `pl_v_products` `p` on(((`p`.`cat1id` = `c`.`id`) or (`p`.`cat2id` = `c`.`id`) or (`p`.`cat3id` = `c`.`id`)))) where ((`c`.`ladeleted` <> 1) or isnull(`c`.`ladeleted`)) group by `c`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `pl_v_products`
--
DROP TABLE IF EXISTS `pl_v_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pl_v_products` AS select `p`.`id` AS `id`,`p`.`latitle` AS `latitle`,`p`.`lakeyword` AS `lakeyword`,`p`.`ladescription` AS `ladescription`,`p`.`lashortinfo` AS `lashortinfo`,`p`.`lainfo` AS `lainfo`,`p`.`lauseguide` AS `lauseguide`,`p`.`laimage` AS `laimage`,`p`.`lacategory_id` AS `lacategory_id`,`p`.`lamanufactor_id` AS `lamanufactor_id`,`p`.`laoldprice` AS `laoldprice`,`p`.`laprice` AS `laprice`,`p`.`laamount` AS `laamount`,`p`.`ladatenew` AS `ladatenew`,`p`.`ladeleted` AS `ladeleted`,`p`.`laurl` AS `laurl`,`p`.`updated_at` AS `updated_at`,`p`.`created_at` AS `created_at`,`p`.`lakhoiluong` AS `lakhoiluong`,`p`.`ladungtich` AS `ladungtich`,`p`.`laview` AS `laview`,`p`.`lachucnang` AS `lachucnang`,`p`.`lavariant_id` AS `lavariant_id`,`p`.`laproduct_id` AS `laproduct_id`,`p`.`youtubeid` AS `youtubeid`,`p`.`layear` AS `layear`,`p`.`lamonth` AS `lamonth`,(select count(`p2`.`id`) from `pl_laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,`c1`.`ladeleted` AS `cat1deleted`,`c1`.`laorder` AS `order1`,`c1`.`isnews` AS `isnews`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c2`.`laorder`,0) AS `order2`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,coalesce(`c3`.`laorder`,0) AS `order3`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `pl_laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`pl_laproducts` `p` left join `pl_lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `pl_lacategories` `c1` on(((`c1`.`id` = `p`.`lacategory_id`) and (`c1`.`ladeleted` = 0)))) left join `pl_lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `pl_lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`))) where (((`p`.`ladeleted` <> 1) or isnull(`p`.`ladeleted`)) and (`p`.`lavariant_id` = 0));

-- --------------------------------------------------------

--
-- Structure for view `pl_v_productsadmin`
--
DROP TABLE IF EXISTS `pl_v_productsadmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pl_v_productsadmin` AS select `p`.`id` AS `id`,`p`.`latitle` AS `latitle`,`p`.`lakeyword` AS `lakeyword`,`p`.`ladescription` AS `ladescription`,`p`.`lashortinfo` AS `lashortinfo`,`p`.`lainfo` AS `lainfo`,`p`.`lauseguide` AS `lauseguide`,`p`.`laimage` AS `laimage`,`p`.`lacategory_id` AS `lacategory_id`,`p`.`lamanufactor_id` AS `lamanufactor_id`,`p`.`laoldprice` AS `laoldprice`,`p`.`laprice` AS `laprice`,`p`.`laamount` AS `laamount`,`p`.`ladatenew` AS `ladatenew`,`p`.`ladeleted` AS `ladeleted`,`p`.`laurl` AS `laurl`,`p`.`updated_at` AS `updated_at`,`p`.`created_at` AS `created_at`,`p`.`lakhoiluong` AS `lakhoiluong`,`p`.`ladungtich` AS `ladungtich`,`p`.`laview` AS `laview`,`p`.`lachucnang` AS `lachucnang`,`p`.`lavariant_id` AS `lavariant_id`,`p`.`laproduct_id` AS `laproduct_id`,`p`.`youtubeid` AS `youtubeid`,`p`.`layear` AS `layear`,`p`.`lamonth` AS `lamonth`,(select count(`p2`.`id`) from `pl_laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,`c1`.`ladeleted` AS `cat1deleted`,`c1`.`isnews` AS `isnews`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`pl_laproducts` `p` left join `pl_lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `pl_lacategories` `c1` on((`c1`.`id` = `p`.`lacategory_id`))) left join `pl_lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `pl_lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `v_categories`
--
DROP TABLE IF EXISTS `v_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_categories` AS select `c`.`id` AS `id`,`c`.`latitle` AS `latitle`,`c`.`laparent_id` AS `laparent_id`,`c`.`laurl` AS `laurl`,`c`.`lainfo` AS `lainfo`,`c`.`ladeleted` AS `ladeleted`,`c`.`laorder` AS `laorder`,`c`.`laimage` AS `laimage`,`c`.`updated_at` AS `updated_at`,`c`.`created_at` AS `created_at`,`c`.`laicon` AS `laicon`,`c`.`isnews` AS `isnews`,count(`p`.`id`) AS `numproduct` from (`lacategories` `c` left join `v_products` `p` on(((`p`.`cat1id` = `c`.`id`) or (`p`.`cat2id` = `c`.`id`) or (`p`.`cat3id` = `c`.`id`)))) where ((`c`.`ladeleted` <> 1) or isnull(`c`.`ladeleted`)) group by `c`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `v_products`
--
DROP TABLE IF EXISTS `v_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_products` AS select `p`.`id` AS `id`,`p`.`latitle` AS `latitle`,`p`.`lakeyword` AS `lakeyword`,`p`.`ladescription` AS `ladescription`,`p`.`lashortinfo` AS `lashortinfo`,`p`.`lainfo` AS `lainfo`,`p`.`lauseguide` AS `lauseguide`,`p`.`laimage` AS `laimage`,`p`.`lacategory_id` AS `lacategory_id`,`p`.`lamanufactor_id` AS `lamanufactor_id`,`p`.`laoldprice` AS `laoldprice`,`p`.`laprice` AS `laprice`,`p`.`laamount` AS `laamount`,`p`.`ladatenew` AS `ladatenew`,`p`.`ladeleted` AS `ladeleted`,`p`.`laurl` AS `laurl`,`p`.`updated_at` AS `updated_at`,`p`.`created_at` AS `created_at`,`p`.`lakhoiluong` AS `lakhoiluong`,`p`.`ladungtich` AS `ladungtich`,`p`.`laview` AS `laview`,`p`.`lachucnang` AS `lachucnang`,`p`.`lavariant_id` AS `lavariant_id`,`p`.`laproduct_id` AS `laproduct_id`,`p`.`youtubeid` AS `youtubeid`,`p`.`layear` AS `layear`,`p`.`lamonth` AS `lamonth`,(select count(`p2`.`id`) from `laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,`c1`.`ladeleted` AS `cat1deleted`,`c1`.`laorder` AS `order1`,`c1`.`isnews` AS `isnews`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c2`.`laorder`,0) AS `order2`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,coalesce(`c3`.`laorder`,0) AS `order3`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`laproducts` `p` left join `lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `lacategories` `c1` on(((`c1`.`id` = `p`.`lacategory_id`) and (`c1`.`ladeleted` = 0)))) left join `lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`))) where (((`p`.`ladeleted` <> 1) or isnull(`p`.`ladeleted`)) and (`p`.`lavariant_id` = 0));

-- --------------------------------------------------------

--
-- Structure for view `v_productsadmin`
--
DROP TABLE IF EXISTS `v_productsadmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productsadmin` AS select `p`.`id` AS `id`,`p`.`latitle` AS `latitle`,`p`.`lakeyword` AS `lakeyword`,`p`.`ladescription` AS `ladescription`,`p`.`lashortinfo` AS `lashortinfo`,`p`.`lainfo` AS `lainfo`,`p`.`lauseguide` AS `lauseguide`,`p`.`laimage` AS `laimage`,`p`.`lacategory_id` AS `lacategory_id`,`p`.`lamanufactor_id` AS `lamanufactor_id`,`p`.`laoldprice` AS `laoldprice`,`p`.`laprice` AS `laprice`,`p`.`laamount` AS `laamount`,`p`.`ladatenew` AS `ladatenew`,`p`.`ladeleted` AS `ladeleted`,`p`.`laurl` AS `laurl`,`p`.`updated_at` AS `updated_at`,`p`.`created_at` AS `created_at`,`p`.`lakhoiluong` AS `lakhoiluong`,`p`.`ladungtich` AS `ladungtich`,`p`.`laview` AS `laview`,`p`.`lachucnang` AS `lachucnang`,`p`.`lavariant_id` AS `lavariant_id`,`p`.`laproduct_id` AS `laproduct_id`,`p`.`youtubeid` AS `youtubeid`,`p`.`layear` AS `layear`,`p`.`lamonth` AS `lamonth`,(select count(`p2`.`id`) from `laproducts` `p2` where (`p2`.`lavariant_id` = `p`.`id`)) AS `sumvariant`,`c1`.`id` AS `cat1id`,`c1`.`latitle` AS `cat1name`,`c1`.`laurl` AS `cat1url`,`c1`.`ladeleted` AS `cat1deleted`,`c1`.`isnews` AS `isnews`,coalesce(`c2`.`id`,0) AS `cat2id`,coalesce(`c2`.`latitle`,'') AS `cat2name`,coalesce(`c2`.`laurl`,'') AS `cat2url`,coalesce(`c3`.`id`,0) AS `cat3id`,coalesce(`c3`.`latitle`,'') AS `cat3name`,coalesce(`c3`.`laurl`,'') AS `cat3url`,`f`.`id` AS `factorid`,`f`.`latitle` AS `factorname`,`f`.`laurl` AS `factorurl`,(`p`.`laoldprice` - `p`.`laprice`) AS `pricechange`,(select sum(`i`.`amount`) from `laorderitems` `i` where ((`i`.`product_id` = `p`.`id`) or (`i`.`variantid` = `p`.`id`))) AS `numorder` from ((((`laproducts` `p` left join `lamanufactors` `f` on((`f`.`id` = `p`.`lamanufactor_id`))) left join `lacategories` `c1` on((`c1`.`id` = `p`.`lacategory_id`))) left join `lacategories` `c2` on((`c1`.`laparent_id` = `c2`.`id`))) left join `lacategories` `c3` on((`c2`.`laparent_id` = `c3`.`id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facebookuser`
--
ALTER TABLE `facebookuser`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fanpage`
--
ALTER TABLE `fanpage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lacategories`
--
ALTER TABLE `lacategories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `laconfig`
--
ALTER TABLE `laconfig`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laevent`
--
ALTER TABLE `laevent`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `laurl` (`laurl`);

--
-- Indexes for table `lafacebookcomments`
--
ALTER TABLE `lafacebookcomments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lafacebookprofiles`
--
ALTER TABLE `lafacebookprofiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laimages`
--
ALTER TABLE `laimages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lamanufactors`
--
ALTER TABLE `lamanufactors`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `laorderaddress`
--
ALTER TABLE `laorderaddress`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laorderitems`
--
ALTER TABLE `laorderitems`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laorders`
--
ALTER TABLE `laorders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laproducts`
--
ALTER TABLE `laproducts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `latags`
--
ALTER TABLE `latags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lauser`
--
ALTER TABLE `lauser`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `lausers`
--
ALTER TABLE `lausers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_facebookuser`
--
ALTER TABLE `pl_facebookuser`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_fanpage`
--
ALTER TABLE `pl_fanpage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_lacategories`
--
ALTER TABLE `pl_lacategories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `pl_laconfig`
--
ALTER TABLE `pl_laconfig`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_laevent`
--
ALTER TABLE `pl_laevent`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `laurl` (`laurl`);

--
-- Indexes for table `pl_lafacebookcomments`
--
ALTER TABLE `pl_lafacebookcomments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_lafacebookprofiles`
--
ALTER TABLE `pl_lafacebookprofiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_laimages`
--
ALTER TABLE `pl_laimages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_lamanufactors`
--
ALTER TABLE `pl_lamanufactors`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `pl_laorderaddress`
--
ALTER TABLE `pl_laorderaddress`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_laorderitems`
--
ALTER TABLE `pl_laorderitems`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_laorders`
--
ALTER TABLE `pl_laorders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_laproducts`
--
ALTER TABLE `pl_laproducts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`laurl`);

--
-- Indexes for table `pl_latags`
--
ALTER TABLE `pl_latags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_lauser`
--
ALTER TABLE `pl_lauser`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pl_lausers`
--
ALTER TABLE `pl_lausers`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facebookuser`
--
ALTER TABLE `facebookuser`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fanpage`
--
ALTER TABLE `fanpage`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lacategories`
--
ALTER TABLE `lacategories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `laconfig`
--
ALTER TABLE `laconfig`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `laevent`
--
ALTER TABLE `laevent`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lafacebookcomments`
--
ALTER TABLE `lafacebookcomments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lafacebookprofiles`
--
ALTER TABLE `lafacebookprofiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laimages`
--
ALTER TABLE `laimages`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=837;
--
-- AUTO_INCREMENT for table `lamanufactors`
--
ALTER TABLE `lamanufactors`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `laorderaddress`
--
ALTER TABLE `laorderaddress`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `laorderitems`
--
ALTER TABLE `laorderitems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `laorders`
--
ALTER TABLE `laorders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `laproducts`
--
ALTER TABLE `laproducts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `latags`
--
ALTER TABLE `latags`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lauser`
--
ALTER TABLE `lauser`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lausers`
--
ALTER TABLE `lausers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_facebookuser`
--
ALTER TABLE `pl_facebookuser`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_fanpage`
--
ALTER TABLE `pl_fanpage`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_lacategories`
--
ALTER TABLE `pl_lacategories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `pl_laconfig`
--
ALTER TABLE `pl_laconfig`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pl_laevent`
--
ALTER TABLE `pl_laevent`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pl_lafacebookcomments`
--
ALTER TABLE `pl_lafacebookcomments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pl_lafacebookprofiles`
--
ALTER TABLE `pl_lafacebookprofiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_laimages`
--
ALTER TABLE `pl_laimages`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=837;
--
-- AUTO_INCREMENT for table `pl_lamanufactors`
--
ALTER TABLE `pl_lamanufactors`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pl_laorderaddress`
--
ALTER TABLE `pl_laorderaddress`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pl_laorderitems`
--
ALTER TABLE `pl_laorderitems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pl_laorders`
--
ALTER TABLE `pl_laorders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pl_laproducts`
--
ALTER TABLE `pl_laproducts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `pl_latags`
--
ALTER TABLE `pl_latags`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_lauser`
--
ALTER TABLE `pl_lauser`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pl_lausers`
--
ALTER TABLE `pl_lausers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
