-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2021 at 01:17 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_json`
--

-- --------------------------------------------------------

--
-- Table structure for table `importdata`
--

CREATE TABLE `importdata` (
  `Nama_Grup` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Agensi` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Tahun_Debut` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Jml_Anggota` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `importdata`
--

INSERT INTO `importdata` (`Nama_Grup`, `Agensi`, `Tahun_Debut`, `Jml_Anggota`) VALUES
('Exo', 'SM Entertainment', '2012', 9),
('NCT', 'SM Entertainment', '2016', 23),
('Treasure', 'YG Entertainment', '2020', 12),
('Day6', 'JYP Entertainment', '2015', 5),
('Exo', 'SM Entertainment', '2012', 9),
('NCT', 'SM Entertainment', '2016', 23),
('Blackpink', 'YG Entertainment', '2016', 4),
('Treasure', 'YG Entertainment', '2020', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
