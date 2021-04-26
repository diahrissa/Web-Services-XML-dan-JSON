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
-- Database: `db_xml`
--

-- --------------------------------------------------------

--
-- Table structure for table `xml_matkul`
--

CREATE TABLE `xml_matkul` (
  `id` int(50) NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mata_kuliah` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `dosen_pengampu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jadwal` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sks` int(2) NOT NULL,
  `kelas` varchar(2) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `xml_matkul`
--

INSERT INTO `xml_matkul` (`id`, `hari`, `mata_kuliah`, `dosen_pengampu`, `jadwal`, `sks`, `kelas`) VALUES
(1, 'Senin', 'Metodologi Penelitian dan Penulisan Karya Ilmiah', 'Dr. Aradea, S.T., M.T.', '15:51:00 - 17:30:00', 2, 'A'),
(2, 'Selasa', 'Intelijen Bisnis', 'Husni Mubarok, S.TP., M.T', '07:00:00 - 09:30:00', 3, 'A'),
(3, 'Rabu', 'Rekayasa Sistem dan Teknologi Informasi', 'Rahmi Nur Shofa., S.T., M.T.', '12:30:00 - 15:00:00', 3, 'A'),
(4, 'Kamis', 'Web Services', 'Alam Rahmatulloh., S.T., M.T.', '09:31:00 - 12:00:00', 3, 'A'),
(5, 'Sabtu', 'Kerja Praktek', 'Rianto., S.T., M.T.', '13:31:00 - 14:00:00', 2, 'N');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
