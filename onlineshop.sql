-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2016 at 11:46 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_settings`
--

CREATE TABLE `all_settings` (
  `all_id` int(3) NOT NULL,
  `all_name_settings` varchar(60) NOT NULL,
  `all_value_settings` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_settings`
--

INSERT INTO `all_settings` (`all_id`, `all_name_settings`, `all_value_settings`) VALUES
(1, 'footer', 'OnlineShop'),
(2, 'site_name', 'OnlineShop');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `gro_id` tinyint(1) NOT NULL,
  `gro_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`gro_id`, `gro_name`) VALUES
(1, 'admin'),
(2, 'c_admin'),
(3, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(16) NOT NULL,
  `data` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` enum('paid','confirmed','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `data`, `due_date`, `user_id`, `status`) VALUES
(10001008, '2016-05-23 06:03:03', '2016-05-24 06:03:03', 8, 'confirmed'),
(10001009, '2016-05-23 06:13:10', '2016-05-24 06:13:10', 8, 'confirmed'),
(10001010, '2016-05-23 06:40:08', '2016-05-24 06:40:08', 9, 'confirmed'),
(10001011, '2016-05-23 06:41:51', '2016-05-24 06:41:51', 9, 'confirmed'),
(10001012, '2016-05-23 07:27:07', '2016-05-24 07:27:07', 8, 'confirmed'),
(10001013, '2016-05-23 10:50:53', '2016-05-24 10:50:53', 8, 'confirmed'),
(10001014, '2016-05-23 10:53:35', '2016-05-24 10:53:35', 10, 'confirmed'),
(10001015, '2016-05-23 16:43:24', '2016-05-24 16:43:24', 8, 'confirmed'),
(10001016, '2016-05-23 17:07:29', '2016-05-24 17:07:29', 8, 'confirmed'),
(10001017, '2016-05-25 08:32:29', '2016-05-26 08:32:29', 8, 'confirmed'),
(10001018, '2016-05-28 08:49:59', '2016-05-29 08:49:59', 9, 'confirmed'),
(10001019, '2016-05-28 09:03:15', '2016-05-29 09:03:15', 8, 'confirmed'),
(10001020, '2016-05-31 05:10:50', '2016-06-01 05:10:50', 8, 'confirmed'),
(10001021, '2016-05-31 05:36:38', '2016-06-01 05:36:38', 13, 'confirmed'),
(10001022, '2016-05-31 10:49:28', '2016-06-01 10:49:28', 8, 'confirmed'),
(10001023, '2016-06-02 12:18:05', '2016-06-03 12:18:05', 14, 'confirmed'),
(10001024, '2016-06-02 12:18:45', '2016-06-03 12:18:45', 14, 'confirmed'),
(10001025, '2016-06-03 12:27:43', '2016-06-04 12:27:43', 15, 'confirmed'),
(10001026, '2016-06-03 12:29:05', '2016-06-04 12:29:05', 15, 'unpaid'),
(10001027, '2016-06-04 15:24:14', '2016-06-05 15:24:14', 8, 'confirmed'),
(10001028, '2016-06-05 17:44:17', '2016-06-06 17:44:17', 16, 'confirmed'),
(10001029, '2016-06-06 00:34:02', '2016-06-07 00:34:02', 8, 'confirmed'),
(10001030, '2016-06-06 04:46:13', '2016-06-07 04:46:13', 8, 'confirmed'),
(10001031, '2016-06-06 05:16:18', '2016-06-07 05:16:18', 17, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(16) NOT NULL,
  `invoice_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL,
  `product_type` varchar(60) NOT NULL,
  `product_title` varchar(60) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_type`, `product_title`, `qty`, `price`, `options`) VALUES
(10001011, 10001008, 6, 'Kopi-Gayo', 'Kopi', 1, 6, ''),
(10001012, 10001008, 10, 'Mobile', 'Nokia', 1, 16000, ''),
(10001013, 10001008, 7, 'Baju', 'Kaos Motif', 1, 90, ''),
(10001014, 10001008, 9, 'Kopi-Gayo', 'Lakun Kopi', 1, 140000, ''),
(10001015, 10001009, 8, 'Baju', 'Jean', 1, 300, ''),
(10001016, 10001009, 7, 'Baju', 'Kaos Motif', 1, 90, ''),
(10001017, 10001010, 9, 'Formal Suit Wedding', 'Suit', 3, 14, ''),
(10001018, 10001011, 7, 'Baju', 'Kaos Motif', 1, 90, ''),
(10001019, 10001011, 8, 'Baju', 'Jean', 2, 300, ''),
(10001020, 10001012, 11, 'T-Shirts', 'SEEDER NAVY', 1, 8, ''),
(10001021, 10001012, 18, 'T-Shirts', 'TWISTYBOX RAGLAN WHI', 1, 8, ''),
(10001022, 10001012, 16, 'Bag', 'Collage Navy', 1, 10, ''),
(10001023, 10001013, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001024, 10001013, 17, 'Wedding', 'Man Black Flower', 1, 10, ''),
(10001025, 10001014, 7, 'Bag', 'Collage Blue', 1, 80, ''),
(10001026, 10001014, 8, 'Jacket', 'Jean', 3, 300, ''),
(10001027, 10001014, 17, 'Wedding', 'Man Black Flower', 1, 10, ''),
(10001028, 10001014, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001029, 10001014, 18, 'T-Shirts', 'TWISTYBOX RAGLAN WHI', 2, 8, ''),
(10001030, 10001014, 11, 'T-Shirts', 'SEEDER NAVY', 1, 8, ''),
(10001031, 10001014, 12, 'Sweaters', 'Twist Button Misty', 1, 15, ''),
(10001032, 10001014, 15, 'Sweaters', 'Twist Button Misty', 1, 10, ''),
(10001033, 10001014, 20, 'Sweaters', 'JAKOV ZIPPER NAVY', 1, 15, ''),
(10001034, 10001015, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001035, 10001016, 8, 'Jacket', 'Jean', 1, 300, ''),
(10001036, 10001017, 12, 'Sweaters', 'Twist Button Misty', 1, 15, ''),
(10001037, 10001018, 11, 'T-Shirts', 'SEEDER NAVY', 1, 8, ''),
(10001038, 10001019, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001039, 10001020, 12, 'Sweaters', 'Twist Button Misty', 1, 15, ''),
(10001040, 10001020, 11, 'T-Shirts', 'SEEDER NAVY', 1, 8, ''),
(10001041, 10001021, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001042, 10001021, 20, 'Sweaters', 'Jakov Zipper Navy', 1, 15, ''),
(10001043, 10001022, 22, 'Shirs', 'GOON LS BLACK', 2, 180, ''),
(10001044, 10001023, 7, 'Bag', 'Collage Blue', 1, 250, ''),
(10001045, 10001023, 12, 'Sweaters', 'Twist Button Misty', 1, 15, ''),
(10001046, 10001024, 9, 'Wedding', 'Suit Wedding Black', 1, 10, ''),
(10001047, 10001025, 12, 'Sweaters', 'Twist Button Misty', 1, 15, ''),
(10001048, 10001025, 20, 'Sweaters', 'Jakov Zipper Navy', 1, 15, ''),
(10001049, 10001026, 16, 'Bag', 'Collage Navy', 1, 10, ''),
(10001050, 10001027, 24, 'Shirt', 'Mustafa Grey', 1, 220, ''),
(10001051, 10001027, 23, 'Shirt', 'Barton Blue', 1, 210, ''),
(10001052, 10001027, 26, 'Shirt', 'Maurice Blue', 1, 210, ''),
(10001053, 10001027, 22, 'Shirt', 'GOON LS BLACK', 1, 180, ''),
(10001054, 10001028, 24, 'Shirt', 'Mustafa Grey', 1, 220, ''),
(10001055, 10001028, 20, 'Sweaters', 'Jakov Zipper Navy', 1, 15, ''),
(10001056, 10001028, 7, 'Bag', 'Collage Blue', 1, 250, ''),
(10001057, 10001028, 15, 'Sweaters', 'Twist Button Misty', 1, 10, ''),
(10001058, 10001029, 24, 'Shirt', 'Mustafa Grey', 1, 220, ''),
(10001059, 10001029, 25, 'Bag', 'Collage Color Blcak ', 1, 250, ''),
(10001060, 10001030, 16, 'Bag', 'Collage Navy', 1, 10, ''),
(10001061, 10001031, 7, 'Bag', 'Collage Blue', 2, 250, ''),
(10001062, 10001031, 8, 'Jacket', 'Jean', 1, 300, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(16) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_title` varchar(20) NOT NULL,
  `pro_description` text NOT NULL,
  `pro_price` int(9) NOT NULL,
  `pro_stock` int(3) NOT NULL,
  `pro_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_title`, `pro_description`, `pro_price`, `pro_stock`, `pro_image`) VALUES
(7, 'Bag', 'Collage Blue', 'Collage blue 2016', 250, 3, 'COLLAGE_BAG_2.PNG'),
(8, 'Jacket', 'Jean', 'Jaket Jean', 300, 3, 'Capture.PNG'),
(9, 'Wedding', 'Suit Wedding Black', 'West style ', 10, 3, 'siut_(1).jpg'),
(11, 'T-Shirts', 'SEEDER NAVY', 'SEEDER NAVY', 8, 3, 'SEEDER_NAVY.jpg'),
(12, 'Sweaters', 'Twist Button Misty', 'Sweaters 2106', 15, 3, 'TWIST_BUTTON_MISTY_22.png'),
(15, 'Sweaters', 'Twist Button Misty', 'New', 10, 3, 'TWIST_BUTTON_MISTY_0.png'),
(16, 'Bag', 'Collage Navy', 'Collage Navy', 10, 3, 'COLLAGE_NAVY_4.PNG'),
(17, 'Wedding', 'Man Black Flower', '2016', 10, 3, 'siut_(2).jpg'),
(18, 'T-Shirts', 'TWISTYBOX RAGLAN WHI', '2016', 8, 3, 'TWISTYBOX_RAGLAN_WHITE_BLUE.jpg'),
(19, 'Bag', 'Collage Collaction', '2016', 12, 3, 'COLLAGE_BAG_1.PNG'),
(20, 'Sweaters', 'Jakov Zipper Navy', 'JAKOV ZIPPER NAVY', 15, 5, 'JAKOV_ZIPPER_NAVY2.jpg'),
(21, 'Shirt', 'GOON LS BLACK', 'Mei 2016', 180, 6, 'GOON_LS_BLACK.jpg'),
(23, 'Shirt', 'Barton Blue', 'June 2016', 210, 3, 'Barton_Blue.PNG'),
(24, 'Shirt', 'Mustafa Grey', 'June 2016', 220, 3, 'Mustaa_Grey.PNG'),
(25, 'Bag', 'Collage Color Blcak ', 'Collage Bag 2016', 250, 3, 'COLLAGE_BLACK_6.PNG'),
(26, 'Shirt', 'Maurice Blue', 'June Blue 2016', 210, 3, 'MAURICE_BLUE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `rep_id` int(9) NOT NULL,
  `rep_name` varchar(60) NOT NULL,
  `rep_id_product` int(9) NOT NULL,
  `rep_title_product` varchar(60) NOT NULL,
  `rep_usr_name` varchar(60) NOT NULL,
  `rep_usr_group` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`rep_id`, `rep_name`, `rep_id_product`, `rep_title_product`, `rep_usr_name`, `rep_usr_group`) VALUES
(6, 'Bag', 7, 'Collage Blue', 'Gost', 'Gost');

-- --------------------------------------------------------

--
-- Table structure for table `shop_session`
--

CREATE TABLE `shop_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('00c680ef36d0533fa79200ec0a003fa988b3a746', '::1', 1465166128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136363037383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('05ceb3acaa45e53f0d3b262047d6bbb1ae48921b', '::1', 1465116426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131363134303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('10b0a1823bfa060a739c8de69bda1d18cf8e1485', '::1', 1465118641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131383538373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('1a570e8d62171e73cbf0f5793902350de93091b9', '::1', 1465141614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353134313331343b757365726e616d657c733a31333a2248656e796d6172646179616e69223b67726f75707c733a313a2233223b),
('24e0e305b4f7344421a2a641576812d17f804926', '::1', 1465117223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131363936393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('281c34e53faa9a12bbe892a23c0b5e4cb3a16aa3', '::1', 1465120618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132303333363b757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223962663331633766663036323933366139366433633862643166386632666633223b613a373a7b733a323a226964223b733a323a223135223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a383a225377656174657273223b733a353a227469746c65223b733a31383a22547769737420427574746f6e204d69737479223b733a353a22726f776964223b733a33323a223962663331633766663036323933366139366433633862643166386632666633223b733a383a22737562746f74616c223b643a31303b7d7d),
('2b773a26822811203342d1c4b817dd79c1d2e14b', '::1', 1465120786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132303634323b757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223962663331633766663036323933366139366433633862643166386632666633223b613a373a7b733a323a226964223b733a323a223135223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a383a225377656174657273223b733a353a227469746c65223b733a31383a22547769737420427574746f6e204d69737479223b733a353a22726f776964223b733a33323a223962663331633766663036323933366139366433633862643166386632666633223b733a383a22737562746f74616c223b643a31303b7d7d),
('4075cfbdd149468196722ddaa7c20b5aca8bf17a', '::1', 1466241116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363234313131323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('407ed66a2fdfa6231e43fe0e482b7487a788f70a', '::1', 1465118184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131373932313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('455d944170ad2a8b8d1fc08d86c6f148192b07ad', '::1', 1465167087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136363739313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('47c6d8782dfb572795a7d319b549ab957c810a06', '::1', 1465113461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131333137393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4a76ce27f52dc6c5b5e348c502e4879d2eb4f034', '::1', 1466240042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363233393837383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4d8e23875902cd2e9d712f5f8dbbab298e414ba3', '::1', 1466234844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363233343834343b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4f464058d419b58b02de361719685ac3bed0dd9f', '::1', 1465122170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132323131313b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3331303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a363a224a61636b6574223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d733a33323a226337346439376230316561653235376534346161396435626164653937626166223b613a373a7b733a323a226964223b733a323a223136223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a333a22426167223b733a353a227469746c65223b733a31323a22436f6c6c616765204e617679223b733a353a22726f776964223b733a33323a226337346439376230316561653235376534346161396435626164653937626166223b733a383a22737562746f74616c223b643a31303b7d7d757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b),
('5395dc4c051979ef3cb58226ef9d5b121e5593ef', '::1', 1466239754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363233393436313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('594b72cea2d41fedfe592a70df0c66e3181950f7', '::1', 1465113792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131333439393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('62ac7f6516054035e63c4d4c22171154c6d4f91e', '::1', 1465118550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131383235353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('63963ea7224e5d74db8cb5e8534ed4958e69115c', '::1', 1465122097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132313830323b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3331303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a363a224a61636b6574223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d733a33323a226337346439376230316561653235376534346161396435626164653937626166223b613a373a7b733a323a226964223b733a323a223136223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a333a22426167223b733a353a227469746c65223b733a31323a22436f6c6c616765204e617679223b733a353a22726f776964223b733a33323a226337346439376230316561653235376534346161396435626164653937626166223b733a383a22737562746f74616c223b643a31303b7d7d),
('642cec93c2f1eecf54ad84d523134aa1462a2e7c', '::1', 1465181337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353138313139303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('6822e2c9f0f45b5e8376e070847f4a18329c549c', '::1', 1465115975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131353732363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('697043c3e6eca2f087652b4e1290c1273295065b', '::1', 1465167377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136373130313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('6abd6567dc7316a7d12c18879b49af8847060b64', '::1', 1465116960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131363636323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('6de39d32b11eedbf3a51acf6ef706fa68ccd3ada', '::1', 1465121765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132313736303b),
('76cc02f1de63c7719185cfc60cdfeed6e68fea4a', '::1', 1465120012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131393731353b757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31383b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a383b733a343a226e616d65223b733a383a22542d536869727473223b733a353a227469746c65223b733a31313a22534545444552204e415659223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a383b7d733a33323a223435633438636365326532643766626465613161666335316337633661643236223b613a373a7b733a323a226964223b733a313a2239223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a373a2257656464696e67223b733a353a227469746c65223b733a31383a22537569742057656464696e6720426c61636b223b733a353a22726f776964223b733a33323a223435633438636365326532643766626465613161666335316337633661643236223b733a383a22737562746f74616c223b643a31303b7d7d),
('7b62ab4ff2e085052ccb5d924bef7538368bba63', '::1', 1465166650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136363338353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('852babd0f61f7fdc4b2afd9a0f85e64dd95ce8f3', '::1', 1465119607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131393338353b757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31383b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a383b733a343a226e616d65223b733a383a22542d536869727473223b733a353a227469746c65223b733a31313a22534545444552204e415659223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a383b7d733a33323a223435633438636365326532643766626465613161666335316337633661643236223b613a373a7b733a323a226964223b733a313a2239223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a373a2257656464696e67223b733a353a227469746c65223b733a31383a22537569742057656464696e6720426c61636b223b733a353a22726f776964223b733a33323a223435633438636365326532643766626465613161666335316337633661643236223b733a383a22737562746f74616c223b643a31303b7d7d),
('8cbf32d8ea01b1e981b8ba7abd8853f6c1c6df24', '::1', 1465182638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353138323434343b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('8f7cc475c3559ad00669ba5237406d73887b9193', '::1', 1465112961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131323936313b),
('92715f217b6eacea376c3cf2ee250c0209d22f0c', '::1', 1465120271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132303031383b757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31383b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a383b733a343a226e616d65223b733a383a22542d536869727473223b733a353a227469746c65223b733a31313a22534545444552204e415659223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a383b7d733a33323a223435633438636365326532643766626465613161666335316337633661643236223b613a373a7b733a323a226964223b733a313a2239223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a373a2257656464696e67223b733a353a227469746c65223b733a31383a22537569742057656464696e6720426c61636b223b733a353a22726f776964223b733a33323a223435633438636365326532643766626465613161666335316337633661643236223b733a383a22737562746f74616c223b643a31303b7d7d),
('93f24ff11ddb1039d7c170d7f43b68d6d8c2bc8b', '::1', 1466243028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363234333030313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('9bf97309370696825d2e62ed192f22113701f28b', '::1', 1465165828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136353731383b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3437303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223166663164653737343030356638646131336634323934333838316336353566223b613a373a7b733a323a226964223b733a323a223234223b733a333a22717479223b643a313b733a353a227072696365223b643a3232303b733a343a226e616d65223b733a353a225368697274223b733a353a227469746c65223b733a31323a224d7573746166612047726579223b733a353a22726f776964223b733a33323a223166663164653737343030356638646131336634323934333838316336353566223b733a383a22737562746f74616c223b643a3232303b7d733a33323a223865323936613036376133373536333337306465643035663561336266336563223b613a373a7b733a323a226964223b733a323a223235223b733a333a22717479223b643a313b733a353a227072696365223b643a3235303b733a343a226e616d65223b733a333a22426167223b733a353a227469746c65223b733a32303a22436f6c6c61676520436f6c6f7220426c63616b20223b733a353a22726f776964223b733a33323a223865323936613036376133373536333337306465643035663561336266336563223b733a383a22737562746f74616c223b643a3235303b7d7d757365726e616d657c733a353a22697273616d223b67726f75707c733a313a2233223b),
('9e545014c1cdec13cb9862aff75bcb76063ef0cd', '::1', 1465178932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353137383933323b),
('a189c2ba5e234b18e5bc74f0282e98e99c1d3d7a', '::1', 1465117895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131373631383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ac0661f589c9300b239611cd3a60b41d0d8db7bb', '::1', 1465167561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353136373430323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b76acf3f95fbc2d1c85078d968e8d9b9374c1cfe', '::1', 1466232284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363233323136303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('d13d96ba5014d03bc148b78e365af9f44d1248ee', '::1', 1465124036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353132343033363b),
('d990520b1963aef8ac93fd8bd7c180fea744bb3e', '::1', 1465183643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353138333634303b),
('db5fafbc1818e0b2224ae300b82cefaea4b954a3', '::1', 1465141986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353134313836373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ed775c366dbb6592198fecd059204552c5064785', '::1', 1465112393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131323235393b),
('f828e03692d413ac74cab81d7094fdf2e62dffff', '::1', 1465117572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353131373239313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usr_id` int(10) NOT NULL,
  `usr_name` varchar(25) NOT NULL,
  `usr_password` varchar(60) NOT NULL,
  `usr_group` tinyint(1) NOT NULL,
  `stuts` tinyint(1) NOT NULL,
  `alamat` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_name`, `usr_password`, `usr_group`, `stuts`, `alamat`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, ''),
(8, 'irsam', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Bandung'),
(9, 'Pelanggan', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Arab'),
(10, 'Nurul', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Gerlong'),
(11, 'erik', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, ''),
(12, 'kire', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'cianjur'),
(13, 'Ataliakamil', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Bandung'),
(14, 'Enita', '70e20a1a252accca5698670e5c807e7d', 3, 1, 'Bandung'),
(15, 'asdos', '02099aec8a53b954db0194eedad2c4f9', 3, 1, 'Subang'),
(16, 'Henymardayani', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Bandung'),
(17, 'test', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Bandung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_settings`
--
ALTER TABLE `all_settings`
  ADD PRIMARY KEY (`all_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`gro_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `shop_session`
--
ALTER TABLE `shop_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_settings`
--
ALTER TABLE `all_settings`
  MODIFY `all_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `gro_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001032;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001063;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `rep_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
