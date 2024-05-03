-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2021 at 05:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `finance` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `customer_id`, `finance`, `created_at`, `updated_at`) VALUES
(1, 6, 150000, '2021-05-15 09:20:01', '2021-05-16 22:17:09'),
(2, 7, 0, '2021-05-15 16:49:03', '2021-05-16 00:29:26'),
(3, 8, 500000, '2021-05-15 18:37:50', '2021-05-16 01:50:08'),
(4, 9, 300000, '2021-05-16 14:24:15', '2021-05-16 21:28:49'),
(5, 10, 300000, '2021-05-16 15:03:57', '2021-05-16 22:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon_image` text NOT NULL,
  `producer_id` bigint(20) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `size` varchar(10) NOT NULL,
  `file_install` varchar(20) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount_install` int(11) DEFAULT 0,
  `amount_buy` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `cate_id`, `name`, `icon_image`, `producer_id`, `short_description`, `description`, `size`, `file_install`, `status`, `created_at`, `updated_at`, `amount_install`, `amount_buy`) VALUES
(4, 2, 'Zing mp3', 'icon/Zing mp3.png', 6, '<p>App nghe nhạc</p>\r\n', '<p>App nghe nhạc</p>\r\n', '1234007', 'zip/Zing mp3.zip', 1, '2021-05-16 08:30:24', '2021-05-16 21:28:56', 41, 16),
(5, 2, 'Nhạc của tui', 'icon/Nhạc của tui.png', 6, '<p>Đ&acirc;y l&agrave; app &acirc;m nhạc</p>\r\n', '<p>Đ&acirc;y l&agrave; app &acirc;m nhạc</p>\r\n', '1234007', 'zip/Nhạc của tui.zip', 1, '2021-05-16 08:57:10', '2021-05-16 17:21:25', 0, 0),
(6, 2, 'Tiktok', 'icon/Tiktok.png', 6, '<p>Đ&acirc;y l&agrave; app &acirc;m nhạc</p>\r\n', '<p>Đ&acirc;y l&agrave; app &acirc;m nhạc</p>\r\n', '1234007', 'zip/Tiktok.zip', 1, '2021-05-16 08:57:48', '2021-05-16 21:29:30', 1, 0),
(7, 3, 'Liên quân mobile', 'icon/Liên quân mobile.jpg', 6, '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '1234007', 'zip/Liên quân mobile', 1, '2021-05-16 08:58:27', '2021-05-16 22:06:56', 0, 1),
(8, 3, 'Gunny', 'icon/Gunny.png', 6, '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '1234007', 'zip/Gunny.zip', 1, '2021-05-16 08:59:03', '2021-05-16 17:21:37', 0, 0),
(9, 3, 'Mobile legend', 'icon/Mobile legend.jpg', 6, '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '<p>Đ&acirc;y l&agrave; app game</p>\r\n', '1234007', 'zip/Mobile legend.zi', 1, '2021-05-16 08:59:35', '2021-05-16 17:21:41', 0, 0),
(10, 4, 'Công thức nấu ăn chay', 'icon/Công thức nấu ăn chay.jpg', 6, '<p>Đ&acirc;y l&agrave; app dạy nấu ăn</p>\r\n', '<p>Đ&acirc;y l&agrave; app dạy nấu ăn</p>\r\n', '1234007', 'zip/Công thức nấu ăn', 1, '2021-05-16 09:02:09', '2021-05-16 17:21:46', 0, 0),
(11, 2, 'Công thức pha chế', 'icon/Công thức pha chế.jpg', 6, '<p>Đ&acirc;y l&agrave; app dạy pha chế</p>\r\n', '<p>Đ&acirc;y l&agrave; app dạy pha chế</p>\r\n', '1234007', 'zip/Công thức pha ch', 1, '2021-05-16 09:03:02', '2021-05-16 18:04:32', 0, 1),
(12, 2, '1', 'icon/1.png', 9, '<p>1</p>\r\n', '<p>1</p>\r\n', '990513', 'zip/1.zip', 1, '2021-05-16 14:59:02', '2021-05-16 22:12:45', 0, 0),
(13, 2, '1', 'icon/1.png', 9, '<p>1</p>\r\n', '<p>1</p>\r\n', '990513', 'zip/1.zip', 0, '2021-05-16 14:59:29', '2021-05-16 21:59:29', 0, 0),
(14, 4, 'zingmp3', 'icon/zingmp3.png', 9, '<p>1</p>\r\n', '<p>1</p>\r\n', '990513', 'zip/zingmp3.zip', 0, '2021-05-16 15:15:01', '2021-05-16 22:15:01', 0, 0),
(15, 2, 'music123', 'icon/music123.png', 9, '<p>1</p>\r\n', '<p>1</p>\r\n', '990513', 'zip/music123.zip', 1, '2021-05-16 15:15:36', '2021-05-16 22:17:09', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application_buy_install`
--

CREATE TABLE `application_buy_install` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_buy_install`
--

INSERT INTO `application_buy_install` (`id`, `customer_id`, `application_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 6, 4, 1, '2021-05-16 08:39:01', '2021-05-16 15:39:01'),
(4, 6, 11, 1, '2021-05-16 11:04:32', '2021-05-16 18:04:32'),
(5, 9, 4, 1, '2021-05-16 14:28:49', '2021-05-16 21:28:49'),
(6, 10, 7, 1, '2021-05-16 15:06:56', '2021-05-16 22:06:56'),
(7, 6, 15, 1, '2021-05-16 15:17:09', '2021-05-16 22:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `application_free`
--

CREATE TABLE `application_free` (
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `application_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_free`
--

INSERT INTO `application_free` (`id`, `created_at`, `updated_at`, `application_id`) VALUES
(3, '2021-05-16 08:57:10', '2021-05-16 15:57:10', 5),
(4, '2021-05-16 08:57:48', '2021-05-16 15:57:48', 6),
(5, '2021-05-16 08:59:35', '2021-05-16 15:59:35', 9),
(6, '2021-05-16 09:02:09', '2021-05-16 16:02:09', 10),
(7, '2021-05-16 14:59:02', '2021-05-16 21:59:02', 12),
(8, '2021-05-16 14:59:29', '2021-05-16 21:59:29', 13),
(9, '2021-05-16 15:15:01', '2021-05-16 22:15:01', 14);

-- --------------------------------------------------------

--
-- Table structure for table `application_image`
--

CREATE TABLE `application_image` (
  `id` bigint(20) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_image`
--

INSERT INTO `application_image` (`id`, `application_id`, `image_url`) VALUES
(4, 4, 'images/Zing mp3.png'),
(5, 5, 'images/Nhạc của tui.png'),
(6, 6, 'images/Tiktok.png'),
(7, 7, 'images/Liên quân mobile.jpg'),
(8, 8, 'images/Gunny.png'),
(9, 9, 'images/Mobile legend.jpg'),
(10, 10, 'images/Công thức nấu ăn chay.jpg'),
(11, 11, 'images/Công thức pha chế.jpg'),
(12, 12, 'images/1.png'),
(13, 13, 'images/1.png'),
(14, 14, 'images/zingmp3.png'),
(15, 15, 'images/music123.png');

-- --------------------------------------------------------

--
-- Table structure for table `application_pay`
--

CREATE TABLE `application_pay` (
  `id` bigint(20) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `application_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_pay`
--

INSERT INTO `application_pay` (`id`, `price`, `created_at`, `updated_at`, `application_id`) VALUES
(2, 200000, '2021-05-16 08:30:24', '2021-05-16 15:30:24', 4),
(3, 200000, '2021-05-16 08:58:27', '2021-05-16 15:58:27', 7),
(4, 500000, '2021-05-16 08:59:03', '2021-05-16 15:59:03', 8),
(5, 30000, '2021-05-16 09:03:02', '2021-05-16 16:03:02', 11),
(6, 20000, '2021-05-16 15:15:36', '2021-05-16 22:15:36', 15);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `seri_id` bigint(20) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`seri_id`, `price`, `created_at`, `updated_at`, `status`) VALUES
(783916254, 100000, '2021-05-15 12:47:54', '2021-05-15 23:52:12', 1),
(1684395207, 500000, '2021-05-15 02:35:00', '2021-05-16 14:13:48', 1),
(4137928605, 500000, '2021-05-15 16:53:25', '2021-05-16 22:06:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Âm nhạc', '2021-05-14 18:11:23', '2021-05-15 01:11:23'),
(3, 'Điện tử', '2021-05-14 18:26:00', '2021-05-15 01:26:00'),
(4, 'Thực phẩm gia đình', '2021-05-16 09:00:02', '2021-05-16 16:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verify` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `image`, `name`, `email`, `password`, `token`, `created_at`, `updated_at`, `verify`, `status`) VALUES
(6, 'quynh.jpg', 'Liêu Hy Quỳnh', 'hyquynh123@gmail.com', '$2y$10$84Hfq6ZePgHO2pm9An.OyORDpolDuIR9tp1j05SBjT2LoRG6LD7pO', 'ZXV6ZDgweHM2YWdxOWk0azcyNW8xcHJibGpmY3R2d3lobW4zMTg3NTA5OTc1OA==', '2021-05-15 09:20:01', '2021-05-16 13:38:52', 1, 1),
(7, 'luan.jpg', 'Nguyễn Hữu Luân', 'nguyenhuuluan17@gmail.com', '$2y$10$xKVm//l0x5WsacOieOZDcOG7wS3vMIN3/blVDS1SU17iqa95vhMCy', 'wCGXse5ttu4LWmrlg1E9', '2021-05-15 16:49:03', '2021-05-16 00:03:54', 1, 1),
(8, '1.png', 'luan123', 'luannh@magenest.com', '$2y$10$G.ogZNwpWnmDGAUmR01lWusTi.Ou3tObyYo2ycCQbWMq6i.7lhQam', 'aWNhbDdnM2J0eWhmNGRwazVvMHFzdXY4MW1lcnd6NjluangyMTU2NjU2NTk5OA==', '2021-05-15 18:37:50', '2021-05-16 01:41:20', 1, 1),
(9, '0', 'Võ Nhật Duy', 'duyvo242@gmail.com', '$2y$10$dgDhRiHZMpvQGsCiKsdISOoI9GIJ3fImaohyd73nMib5/xapR3kaW', 'a2FlcXhwcnR2bG85Zmp3Z3M2ODNoN2R1aWIwemNtNHkybjUxNzIzMDM3OTc5', '2021-05-16 14:24:15', '2021-05-16 22:18:42', 1, 1),
(10, 'AAProfilePicture_1A826630-5092-418A-BA20-AF68E1DDD36A.png', 'Võ Nhật Duy', 'duyvo32967@gmail.com', '$2y$10$uFPX.Ztc2fCF7NrjSmXSh.ccW77zNHGdj7IO/89B9mCIxfOu54Pgy', 'cGx4NDVvY2Rtd2gwaW56cjdrMnlhdGp2YjNnMWZ1NnM4ZTlxMTE2OTczODEwOQ==', '2021-05-16 15:03:57', '2021-05-16 22:04:27', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recharge_histories`
--

CREATE TABLE `recharge_histories` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `total` float DEFAULT NULL,
  `seri_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recharge_histories`
--

INSERT INTO `recharge_histories` (`id`, `customer_id`, `total`, `seri_id`, `created_at`, `updated_at`) VALUES
(1, 6, 500000, 1684395207, '2021-05-15 11:24:16', '2021-05-15 18:24:16'),
(2, 7, 100000, 783916254, '2021-05-15 16:52:11', '2021-05-15 23:52:11'),
(3, 7, 500000, 4137928605, '2021-05-15 16:53:35', '2021-05-15 23:53:35'),
(4, 8, 500000, 4137928605, '2021-05-15 18:41:14', '2021-05-16 01:41:14'),
(5, 8, 500000, 4137928605, '2021-05-15 18:49:54', '2021-05-16 01:49:54'),
(6, 6, 500000, 1684395207, '2021-05-16 07:13:48', '2021-05-16 14:13:48'),
(7, 10, 500000, 4137928605, '2021-05-16 15:06:27', '2021-05-16 22:06:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CustomerAccount` (`customer_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CateApp` (`cate_id`);

--
-- Indexes for table `application_buy_install`
--
ALTER TABLE `application_buy_install`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CustomerApp` (`customer_id`),
  ADD KEY `FK_AppInstall` (`application_id`);

--
-- Indexes for table `application_free`
--
ALTER TABLE `application_free`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_AppFree` (`application_id`);

--
-- Indexes for table `application_image`
--
ALTER TABLE `application_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_AppImage` (`application_id`);

--
-- Indexes for table `application_pay`
--
ALTER TABLE `application_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_AppPay` (`application_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`seri_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge_histories`
--
ALTER TABLE `recharge_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CustomerCharge` (`customer_id`),
  ADD KEY `FK_CardCharge` (`seri_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `application_buy_install`
--
ALTER TABLE `application_buy_install`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `application_free`
--
ALTER TABLE `application_free`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `application_image`
--
ALTER TABLE `application_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `application_pay`
--
ALTER TABLE `application_pay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recharge_histories`
--
ALTER TABLE `recharge_histories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `FK_CustomerAccount` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `FK_CateApp` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `application_buy_install`
--
ALTER TABLE `application_buy_install`
  ADD CONSTRAINT `FK_AppInstall` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `FK_CustomerApp` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `application_free`
--
ALTER TABLE `application_free`
  ADD CONSTRAINT `FK_AppFree` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `application_image`
--
ALTER TABLE `application_image`
  ADD CONSTRAINT `FK_AppImage` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `application_pay`
--
ALTER TABLE `application_pay`
  ADD CONSTRAINT `FK_AppPay` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `recharge_histories`
--
ALTER TABLE `recharge_histories`
  ADD CONSTRAINT `FK_CardCharge` FOREIGN KEY (`seri_id`) REFERENCES `cards` (`seri_id`),
  ADD CONSTRAINT `FK_CustomerCharge` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
