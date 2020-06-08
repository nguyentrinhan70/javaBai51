-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 03:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbquanlytaisan`
--

-- --------------------------------------------------------

--
-- Table structure for table `taisan`
--

CREATE TABLE `taisan` (
  `Ma` varchar(15) COLLATE utf8_vietnamese_ci NOT NULL,
  `Ten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `SoNamKhauHao` int(11) NOT NULL,
  `GiaTri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `taisan`
--

INSERT INTO `taisan` (`Ma`, `Ten`, `NgayNhap`, `SoNamKhauHao`, `GiaTri`) VALUES
('ts007', 'Kiếm Nhật', '2019-11-27 00:00:00', 5, 400),
('ts0071', 'Kiếm Trung Quốc', '2019-11-26 00:00:00', 4, 4000),
('ts1', 'Máy khoan tường chất lượng cao của TRung Quốc', '2019-10-02 00:00:00', 5, 250),
('ts10', 'Máy ủi hơi nước', '2019-11-24 00:00:00', 3, 100000),
('ts113', 'Máy ủi hơi nước', '2019-11-04 00:00:00', 3, 3000),
('ts3', 'Điện thoại Iphon5', '2019-03-04 00:00:00', 6, 67),
('ts5', 'Máy giặt chất lượng cao', '2016-01-01 00:00:00', 10, 500),
('ts6', 'Máy tính chất lượng cao', '2019-02-02 00:00:00', 5, 1000),
('ts7', 'Máy hút bụi của Mỹ', '2018-02-03 00:00:00', 10, 1000),
('ts8', 'Mấy quét mã vạch Việt Nam', '2019-02-04 00:00:00', 5, 50),
('ts9', 'Máy in mã vach chất luongj cao', '2019-09-09 00:00:00', 6, 80);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(255) DEFAULT NULL,
  `your_name` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date_birthday` datetime DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taisan`
--
ALTER TABLE `taisan`
  ADD PRIMARY KEY (`Ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
