-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 08:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anggaran_2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `sbu`
--

CREATE TABLE `sbu` (
  `kode_sbu` varchar(255) NOT NULL,
  `kode_sbu_1` varchar(255) NOT NULL,
  `kode_sbu_2` varchar(255) DEFAULT NULL,
  `kode_sbu_3` varchar(255) DEFAULT NULL,
  `kode_sbu_4` varchar(255) DEFAULT NULL,
  `kode_sbu_5` varchar(255) DEFAULT NULL,
  `besaran_sbu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu`
--

INSERT INTO `sbu` (`kode_sbu`, `kode_sbu_1`, `kode_sbu_2`, `kode_sbu_3`, `kode_sbu_4`, `kode_sbu_5`, `besaran_sbu`) VALUES
('1.1.4', '1', '1.1', NULL, NULL, NULL, 8107000),
('1.10.1.1.15', '1', '1.10', '1.10.1', '1.10.1.1', NULL, 5560000),
('1.10.1.2.15', '1', '1.10', '1.10.1', '1.10.1.2', NULL, 5010000),
('1.10.1.3.18', '1', '1.10', '1.10.1', '1.10.1.3', NULL, 3960000),
('1.10.1.6', '1', '1.10', '1.10.1', NULL, NULL, 1600000),
('1.10.2.1', '1', '1.10', '1.10.2', NULL, NULL, 420000),
('1.10.2.1.1.15', '1', '1.10', '1.10.2', NULL, '1.10.2.1.1', 3250000),
('1.2.16', '1', '1.2', NULL, NULL, NULL, 7370000),
('1.3.16', '1', '1.3', NULL, NULL, NULL, 4620000),
('1.4.16', '1', '1.4', NULL, NULL, NULL, 3840000),
('1.5.16', '1', '1.5', NULL, NULL, NULL, 4420000),
('1.6.16', '1', '1.6', NULL, NULL, NULL, 7140000),
('1.7.16', '1', '1.7', NULL, NULL, NULL, 3450000),
('1.8.4', '1', '1.8', NULL, NULL, NULL, 4620000),
('1.9.11', '1', '1.9', NULL, NULL, NULL, 2760000),
('2.1.1.2', '2', '2.1', '2.1.1', NULL, NULL, 4500000),
('2.1.2.2', '2', '2.1', '2.1.2', NULL, NULL, 4000000),
('2.1.3.3', '2', '2.1', '2.1.3', NULL, NULL, 7000000),
('2.1.4.2', '2', '2.1', '2.1.4', NULL, NULL, 20000000),
('2.10.3', '2', '2.10', NULL, NULL, NULL, 700000),
('2.11.1', '2', '2.11', NULL, NULL, NULL, 150000),
('2.2.1.2', '2', '2.2', '2.2.1', NULL, NULL, 5500000),
('2.2.2.2', '2', '2.2', '2.2.2', NULL, NULL, 5000000),
('2.2.3', '2', '2.2', '2.2.3', NULL, NULL, 100000000),
('2.2.4', '2', '2.2', '2.2.4', NULL, NULL, 2000000),
('2.2.5', '2', '2.2', '2.2.5', NULL, NULL, 4000000),
('2.3.1.2', '2', '2.3', '2.3.1', NULL, NULL, 2000000),
('2.3.2.2', '2', '2.3', '2.3.2', NULL, NULL, 2500000),
('2.4.5', '2', '2.4', NULL, NULL, NULL, 450000),
('2.5.1', '2', '2.5', NULL, NULL, NULL, 4000000),
('2.6.1.3', '2', '2.6', '2.6.1', NULL, NULL, 4000000),
('2.6.2.2', '2', '2.6', '2.6.2', NULL, NULL, 1500000),
('2.6.3.1', '2', '2.6', '2.6.3', NULL, NULL, 1000000),
('2.7.1', '2', '2.7', NULL, NULL, NULL, 650000),
('2.8.1', '2', '2.8', NULL, NULL, NULL, 1000000),
('2.9.1', '2', '2.9', NULL, NULL, NULL, 750000),
('2.9.7.1', '2', '2.9', '2.9.7', NULL, NULL, 1000000);

--
-- Triggers `sbu`
--
DELIMITER $$
CREATE TRIGGER `tr_update_sbu` BEFORE UPDATE ON `sbu` FOR EACH ROW UPDATE mak SET anggaran_mak = anggaran_mak + new.besaran_sbu WHERE kode_mak = f_coa(new.kode_sbu)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sbu`
--
ALTER TABLE `sbu`
  ADD PRIMARY KEY (`kode_sbu`),
  ADD KEY `kode_sbu_1` (`kode_sbu_1`),
  ADD KEY `kode_sbu_2` (`kode_sbu_2`),
  ADD KEY `kode_sbu_3` (`kode_sbu_3`),
  ADD KEY `kode_sbu_4` (`kode_sbu_4`),
  ADD KEY `kode_sbu_5` (`kode_sbu_5`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sbu`
--
ALTER TABLE `sbu`
  ADD CONSTRAINT `sbu_ibfk_1` FOREIGN KEY (`kode_sbu_1`) REFERENCES `sbu_1` (`kode_sbu_1`),
  ADD CONSTRAINT `sbu_ibfk_2` FOREIGN KEY (`kode_sbu_2`) REFERENCES `sbu_2` (`kode_sbu_2`),
  ADD CONSTRAINT `sbu_ibfk_3` FOREIGN KEY (`kode_sbu_3`) REFERENCES `sbu_3` (`kode_sbu_3`),
  ADD CONSTRAINT `sbu_ibfk_4` FOREIGN KEY (`kode_sbu_4`) REFERENCES `sbu_4` (`kode_sbu_4`),
  ADD CONSTRAINT `sbu_ibfk_5` FOREIGN KEY (`kode_sbu_5`) REFERENCES `sbu_5` (`kode_sbu_5`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
