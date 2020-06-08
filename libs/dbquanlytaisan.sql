-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 04:47 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

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
  `NgayNhap` datetime NOT NULL,
  `SoNamKhauHao` int(11) NOT NULL,
  `GiaTri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `taisan`
--

INSERT INTO `taisan` (`Ma`, `Ten`, `NgayNhap`, `SoNamKhauHao`, `GiaTri`) VALUES
('ts007', 'Kiếm nhật', '2019-05-06 00:00:00', 6, 67),
('ts1', 'Máy khoan tường chất lượng cao của Nhật', '2019-10-02 00:00:00', 5, 250),
('ts3', 'Điện thoại Iphon5', '2019-03-04 00:00:00', 6, 67),
('ts5', 'Máy giặt chất lượng cao', '2016-01-01 00:00:00', 10, 500),
('ts6', 'Máy tính chất lượng cao', '2019-02-02 00:00:00', 5, 1000),
('ts7', 'Máy hút bụi của Mỹ', '2018-02-03 00:00:00', 10, 1000),
('ts8', 'Mấy quét mã vạch Việt Nam', '2019-02-04 00:00:00', 5, 50),
('ts9', 'Máy in mã vach chất luongj cao', '2019-09-09 00:00:00', 6, 80);

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
