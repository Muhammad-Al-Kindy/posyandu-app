-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2022 at 03:35 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_posyandu_export`
--

-- --------------------------------------------------------

--
-- Table structure for table `babies`
--

CREATE TABLE `babies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kms` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_bayi` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_parent` bigint(20) UNSIGNED NOT NULL,
  `tempat_lahir` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` int(11) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `golongan_darah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panjang_bayi` decimal(11,2) DEFAULT NULL,
  `berat_bayi` decimal(11,2) DEFAULT NULL,
  `lingkar_kepala` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `babies`
--

INSERT INTO `babies` (`id`, `nama`, `no_kms`, `nik_bayi`, `id_parent`, `tempat_lahir`, `tanggal_lahir`, `anak_ke`, `jenis_kelamin`, `golongan_darah`, `panjang_bayi`, `berat_bayi`, `lingkar_kepala`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aiza Rahayu Kaliyani', '', '3507245812180000', 1, '', 1545091200, 3, 2, '', '0.00', '2.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(2, 'Idham Mada Nur Evan', '', '3507242410190000', 2, '', 1571875200, 2, 1, '', '0.00', '3.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(3, 'Gweenletha A.', '', '', 3, '', 1588896000, 1, 2, '', '0.00', '0.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(4, 'Adzra Farzana H.P', '', '', 4, '', 1561507200, 1, 2, '', '5.01', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(5, 'Rahagi Al Aizar K.', '', '', 5, '', 1577318400, 2, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(6, 'Azkarya Shazfa O. Jatnika', '', '', 6, '', 1514764800, 1, 1, '', '0.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(7, 'Muhammad Rayyan Alfarizqi', '', '', 7, '', 1632873600, 1, 1, '', '50.00', '4.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(8, 'Dzaky Misbah Assyafiq', '', '', 8, 'Malang', 1648684800, 2, 1, '', '51.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(9, 'M. Attareyhan (Sonny)', '', '', 9, 'Malang', 1530576000, 1, 1, '', '0.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(10, 'Muhammad Akbar A.', '', '', 10, '', 1521590400, 2, 1, '', '0.00', '3.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(11, 'Shanum Malayeka', '', '', 11, '', 1519084800, 2, 2, '', '0.00', '2.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(12, 'Azkia Sabira Humaira', '', '', 12, '', 1632441600, 2, 2, '', '48.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(13, 'Kiano Zafran H.', '', '', 13, '', 1584489600, 1, 1, '', '50.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(14, 'Muhammad El Zayn', '', '', 14, '', 1645315200, 1, 1, '', '47.00', '27.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(15, 'Zivara Humaira Salsabila', '', '', 15, '', 1640908800, 3, 2, '', '50.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(16, 'Aqmar Nadhif ramdan', '', '', 16, '', 1558051200, 3, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(17, 'Satria Syubrahbil A. P.', '', '', 17, '', 1618012800, 3, 1, '', '50.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(18, 'Kiandra', '', '', 18, '', 1583625600, 2, 1, '', '0.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(19, 'Nayyara Rahmadhisa Hernawan', '', '', 19, '', 1650153600, 1, 2, '', '50.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(20, 'Muhammad Uwais F', '', '', 20, '', 1612656000, 2, 1, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(21, 'Ryshaka Zhafran Dj', '', '', 6, '', 1598659200, 2, 1, '', '0.00', '1.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(22, 'Kamilia Rifdatul Azmya', '', '', 21, '', 1483660800, 1, 2, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(23, 'Barra Shankara Radyta', '', '', 22, '', 1645747200, 1, 2, '', '49.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(24, 'Revinza Arfadha Akbar', '', '', 23, '', 1529625600, 1, 1, '', '0.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(25, 'Adhyaksa Arma', '', '', 24, '', 1599782400, 2, 1, '', '0.00', '3.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(26, 'M. Nadhif Raihan', '', '', 25, '', 1627430400, 1, 1, '', '0.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(27, 'M. Al Khafi Zulkharnain', '', '', 26, '', 1852329600, 2, 1, '', '0.00', '3.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(28, 'Mohammad Hafiz Alfarizi', '', '', 27, '', 1626048000, 1, 1, '', '50.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(29, 'Muhammad Falah Sudarmaji', '', '', 28, '', 1544054400, 3, 1, '', '0.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(30, 'Haqqi Fatha', '', '', 29, '', 1587686400, 3, 1, '', '0.00', '2.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(31, 'Shaqila A.', '', '', 30, '', 1496534400, 2, 2, '', '0.00', '2.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(32, 'Azriel Rahandika A.', '', '', 31, '', 1522108800, 1, 1, '', '0.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(33, 'Gibran Athafaris Fauz', '', '', 32, '', 1500595200, 2, 1, '', '0.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(34, 'Nathan Abu Y.', '', '', 33, '', 1627344000, 2, 1, '', '0.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(35, 'Paundra Dean Ozil', '', '3507242703190000', 34, '', 1553644800, 1, 1, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(36, 'Abidzar Juneo Ramrizky', '', '', 35, '', 1499644800, 1, 1, '', '0.00', '3.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(37, 'Shinta Sabrina Putri', '', '', 36, '', 1562630400, 3, 2, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(38, 'Sabrina Salsabila', '', '', 37, '', 1544313600, 2, 2, '', '0.00', '29.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(39, 'Muhammad Ahza Danis', '', '', 38, '', 1542067200, 2, 1, '', '59.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(40, 'Almeer Shakeil A.', '', '', 39, '', 1536105600, 1, 1, '', '0.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(41, 'Najwa Ramadhani Dewanta', '', '', 40, '', 1497571200, 1, 2, '', '0.00', '0.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(42, 'Rayedda Agastya B.', '', '', 41, '', 1560124800, 3, 1, '', '0.00', '3.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(43, 'Alifia Kartika S.', '', '', 42, '', 1523491200, 2, 2, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(44, 'Hurin Z. K.', '', '', 20, '', 1558915200, 1, 1, '', '0.00', '2.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(45, 'Akhtar', '', '', 43, '', 1568764800, 1, 1, '', '0.00', '3.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(46, 'Salma', '', '', 44, '', 1510272000, 1, 2, '', '0.00', '0.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(47, 'Almahyra E.', '', '', 39, '', 1612224000, 2, 2, '', '0.00', '2.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(48, 'Almera Saqeno Zea', '', '', 45, '', 1564444800, 2, 2, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(49, 'Azkia Ayu Joena Chalondra', '', '', 46, '', 1573084800, 1, 2, '', '0.00', '2.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(50, 'M. Thariq Faletehan', '', '', 47, '', 1567987200, 3, 1, '', '0.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(51, 'Welma Shankara E', '', '3507240907200000', 48, '', 1594252800, 3, 1, '', '0.00', '3.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(52, 'Fatimah Azzahra', '', '', 49, '', 1584835200, 3, 2, '', '0.00', '0.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(53, 'Raffasya Decka A.', '', '', 50, '', 1607731200, 1, 2, '', '0.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(54, 'Rafisqy Ahmad Rayhan', '', '', 21, '', 1573084800, 2, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(55, 'Salwa Elzevanya Malaika C.', '', '3507244707170000', 51, '', 1499385600, 2, 2, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(56, 'Arjuna Hadyan', '', '3504162507200000', 52, '', 1595635200, 3, 1, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(57, 'Ahmad Albab M.', '', '', 53, '', 1536364800, 1, 1, '', '0.00', '2.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(58, 'Sakura Fatin Shahra W.', '', '', 54, '', 1520467200, 2, 2, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(59, 'Franda', '', '', 55, '', 1508112000, 3, 2, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(60, 'Ibrahim Ghaisan', '', '', 56, '', 1505433600, 2, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(61, 'Adriana', '', '', 57, '', 1521849600, 2, 2, '', '50.00', '3.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(62, 'Aksa Pradhana', '', '', 58, '', 1521158400, 1, 1, '', '0.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(63, 'Zafran Sajid N', '', '', 59, '', 1595548800, 2, 1, '', '0.00', '28.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(64, 'Yumna', '', '', 57, '', 1575504000, 3, 2, '', '51.00', '4.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(65, 'M. Nizam Rafa', '', '3507240103200000', 60, '', 1583020800, 1, 1, '', '0.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(66, 'Jabar Sabilul Arif', '', '', 61, '', 1536278400, 3, 1, '', '0.00', '2.08', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(67, 'M. Fabri Diansyah', '', '', 62, '', 1501200000, 3, 1, '', '0.00', '2.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(68, 'M. Fabri Diansyah', '', '', 62, '', 1501286400, 3, 1, '', '0.00', '2.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(69, 'M. Rizan Abqari', '', '', 63, '', 1458691200, 2, 1, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(70, 'Arsenio', '', '', 64, '', 1604448000, 1, 1, '', '0.00', '3.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(71, 'Mudzaffar Dierja A. M.', '', '3507242608200000', 65, '', 1598400000, 1, 1, '', '51.00', '4.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(72, 'Revatina Shidqia Susilo', '', '', 66, '', 1511913600, 2, 2, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(73, 'Rafsa Shanum A.', '', '', 67, '', 1634515200, 1, 2, '', '50.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(74, 'Kyara Nagari R', '', '', 68, '', 1603152000, 1, 2, '', '48.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(75, 'Arumi Sakinah A.', '', '', 69, '', 1286668800, 3, 2, '', '50.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(76, 'Arvin Putra Sulistyawa', '', '', 70, '', 1568678400, 1, 1, '', '52.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(77, 'Jasmine Idrani M. S.', '', '', 71, '', 1579392000, 1, 2, '', '49.00', '2.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(78, 'Muhammad Rasyid A.', '', '', 72, '', 1517788800, 2, 1, '', '0.00', '3.00', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(79, 'Haira Raihana S.', '', '', 73, '', 1568764800, 2, 2, '', '51.00', '4.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(80, 'Nadhifa Gita M.', '', '', 74, '', 1634774400, 2, 2, '', '50.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(81, 'Kaenala Lamanah Gemati', '', '', 75, '', 1624233600, 1, 2, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(82, 'Dzaky Arya Haditya', '', '', 76, '', 1514505600, 1, 1, '', '0.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(83, 'Farzana Ceisya Nazada Hidayati', '', '', 77, '', 1563235200, 1, 1, '', '49.00', '2.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(84, 'Kanezka Muhammad Al Bara', '', '', 78, '', 1638316800, 1, 1, '', '50.00', '3.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(85, 'Queensha Rindu', '', '', 79, '', 1638403200, 1, 2, '', '51.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(86, 'M. Arsya Qadafi', '', '', 80, '', 1610496000, 1, 1, '', '47.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(87, 'M. Zayn Aaron W.', '', '', 81, '', 1578787200, 1, 1, '', '0.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(88, 'Felisha Shakilatalita Amelia', '', '', 82, '', 1558569600, 3, 2, '', '0.00', '2.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(89, 'Noureen Qirania', '', '', 83, '', 1543104000, 1, 2, '', '0.00', '2.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(90, 'Nuwaira Rahimah Syifa', '', '', 84, 'Malang', 1572998400, 2, 2, '', '48.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(91, 'Afiza Qiana Wardoyo', '', '', 85, '', 1588118400, 3, 2, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(92, 'M. Adz Dzakir Alfalhan', '', '', 86, '', 1532304000, 2, 1, '', '0.00', '2.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(93, 'Zhafi Ahnaf A.', '', '', 87, '', 1555200000, 2, 1, '', '0.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(94, 'Arkhareiga Kenzie R.', '', '', 88, '', 1506470400, 2, 1, '', '0.00', '3.05', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(95, 'Naladhipa Andhanu P. A.', '', '', 33, '', 1559952000, 1, 1, '', '0.00', '3.06', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(96, 'Naura Salsabila', '', '', 89, '', 1563840000, 1, 2, '', '0.00', '2.04', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(97, 'Bima Aditya Nanda', '', '3503121809200000', 90, '', 1600387200, 2, 1, '', '0.00', '3.02', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(98, 'Elshanum', '', '', 91, 'Malang', 1575158400, 2, 2, '', '0.00', '3.03', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(99, 'M. Zaidan Al Ghifari', '', '3507241007180000', 15, '', 1566604800, 2, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(100, 'Rafif Putra', '', '3507241005180000', 92, '', 1525910400, 2, 1, '', '0.00', '3.01', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(101, 'M. Zeyhan Al Islami A.', '', '', 93, '', 1518134400, 3, 1, '', '0.00', '2.09', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL),
(102, 'Aqilla B.', '', '', 94, '', 1519084800, 1, 2, '', '0.00', '2.07', '0.00', '2022-07-25 17:00:00', '2022-07-25 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `immunization`
--

CREATE TABLE `immunization` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_baby` bigint(20) UNSIGNED NOT NULL,
  `id_vaccine` bigint(20) UNSIGNED NOT NULL,
  `bulan` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `immunization`
--

INSERT INTO `immunization` (`id`, `id_baby`, `id_vaccine`, `bulan`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 4, '2019-04-11', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(2, 16, 8, 20, '2021-02-01', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(3, 27, 6, 13, '2019-10-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(4, 31, 10, 13, '2018-07-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(5, 31, 10, 17, '2018-11-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(6, 55, 10, 12, '2018-07-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(7, 59, 10, 12, '2018-11-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(8, 69, 6, 20, '2017-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(9, 69, 10, 22, '2018-11-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(10, 69, 10, 31, '2018-11-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(11, 94, 10, 14, '2018-11-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(12, 102, 2, 1, '2018-04-02', '2022-08-04 17:00:00', '2022-08-04 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_03_142810_create_parents_table', 1),
(6, '2022_02_03_142835_create_babies_table', 1),
(7, '2022_02_03_142853_create_progress_babies_table', 1),
(8, '2022_02_03_142931_create_sessions_table', 1),
(9, '2022_05_18_154632_create_vaccine_table', 1),
(10, '2022_05_18_154702_create_immunization_table', 1),
(11, '2022_06_06_182229_add_column_on_parents_table', 1),
(12, '2022_06_06_182250_add_column_on_progress_babies_table', 1),
(13, '2022_07_04_081555_create_vitamin_table', 1),
(14, '2022_07_04_081825_create_vitaminization_table', 1),
(15, '2022_07_17_180735_add_column_range_on_vitamin_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kk` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ibu` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ayah` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `no_kk`, `nik_ibu`, `nik_ayah`, `nama_ibu`, `pekerjaan_ibu`, `nama_ayah`, `pekerjaan_ayah`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '', '', '', 'Helmi Yanuarsih', 'Ibu Rumah Tangga', 'Abu yasir', 'TNI AU', '895367377884', 'Komplek Kartanegara Pagas B II', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(2, '', '', '', 'Eva P.', 'Ibu Rumah Tangga', 'Fu\'ad N.', 'TNI AU', '88992856257', 'Pagas C.170 RT 12', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(3, '', '', '', 'Eka C.', 'Ibu Rumah Tangga', 'Riski Wahyulianto', 'TNI AU', '', 'Komplek B25 / RT 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(4, '', '', '', 'Alzahra', 'Ibu Rumah Tangga', 'Ikbar', 'Wiraswasta', '859414563440', 'Pagas A56 / RT 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(5, '', '', '', 'Oktaviani', 'Ibu Rumah Tangga', 'Juli P.', 'TNI AU', '81231789340', 'Komplek Kartanegara C-91 RT.10 / RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(6, '', '', '', 'Tanti Onindita', 'POLRI', 'Andhy Andrianicka', 'TNI AU', '', 'Komplek Kartanegara C-151 RT.09 / RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(7, '', '', '', 'Febriyanti', 'Ibu Rumah Tangga', 'M. Yusup', 'TNI AU', '85334022401', 'Pagas C-29 RT.09', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(8, '', '', '', 'Linda Fitrotul Muzayanah', 'PNS', 'Azis Nugroho', 'TNI AU', '85216856482', 'Pagas Blok C-159', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(9, '', '', '', 'Rizqoni Nur Fitria', 'PNS', 'Mochtar Wijianarko', 'PNS', '', 'Blok A-72 / 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(10, '', '', '', 'Rizky Y. A.', 'Ibu Rumah Tangga', 'Darmaji', 'TNI AU', '', 'Komplek Pagas Blok C-27', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(11, '', '', '', 'Siti Aisah', 'Ibu Rumah Tangga', 'Eldi Rainaldi', 'TNI AU', '', 'Pagas A-53 RT 04', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(12, '', '', '', 'Andra Ridski Putri', 'Ibu Rumah Tangga', 'Bayu Sumiarjo', 'Wiraswasta', '85218144988', 'Gondorejo 96, RT 05, RW 04', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(13, '', '', '', 'Eka Ratna', 'Ibu Rumah Tangga', 'Very Agus', 'PNS', '82231076132', 'Pagas A-59 RT 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(14, '', '', '', 'Milda Nurdini', 'Ibu Rumah Tangga', 'Febri Hardiansyah', 'Wiraswasta', '81357047405', 'Pagas C-176 RT 10', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(15, '', '', '', 'Dyah Ayu Puspitasari', 'Guru', 'Dodik Wahyu Arianto', 'TNI AU', '82240545223', 'Komplek Kartanegara C-145 RT.09 / RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(16, '', '', '', 'Lucky S.', 'Ibu Rumah Tangga', 'Supriyanto', 'TNI AU', '', 'Komplek Kartanegara C-88 RT 10', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(17, '', '', '', 'Utami Pujiwati', 'Ibu Rumah Tangga', 'Eko Heri', 'TNI AU', '', 'Pagas C 75', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(18, '', '', '', 'Diva', 'Ibu Rumah Tangga', 'Firdaus ', 'TNI AU', '81220318442', 'Pagas C.119 RT.08 RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(19, '', '', '', 'Nur Kasanah', 'Ibu Rumah Tangga', 'Rendi Dwiki', 'TNI AU', '8578814368', 'Komplek Kertanegara Blok C-158, RT.12, RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(20, '', '', '', 'Thitis', 'Ibu Rumah Tangga', 'Gany K.', 'TNI AU', '81333903033', 'Komplek Kertanegara Blok C-168, RT.12', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(21, '', '', '', 'Wahyuni Sofiatul A.', 'Ibu Rumah Tangga', 'Rifki Ayauhan', 'TNI AU', '', 'Pagas Blok B-15', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(22, '', '', '', 'Citra Nirmala P.', 'Ibu Rumah Tangga', 'Dwi Riyanto', 'TNI AU', '895421861868', 'C-5 RT.07', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(23, '', '', '', 'Suprihatin', 'Ibu Rumah Tangga', 'Rudi Hartono', 'TNI AU', '', 'Komplek Kartanegara Blok-C No.64 RT:11 RW:06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(24, '', '', '', 'Wahyu', 'Ibu Rumah Tangga', 'Yoga', 'TNI AU', '', 'Pagas B-27/RT.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(25, '', '', '', 'Nur Rani', 'PNS', 'Nur M. Hermanto', 'TNI AU', '', 'Pagas C-90 /RT.10', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(26, '', '', '', 'Marisa', 'Ibu Rumah Tangga', 'Wahyu', 'PNS', '', 'Pagas C-70', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(27, '', '', '', 'Feby Erawan Cahyono', 'Ibu Rumah Tangga', 'Mohammad Hoinan', 'TNI AU', '82221040996', 'Komplek Kertanegara B-21', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(28, '', '', '', 'Desy Intan', 'Ibu Rumah Tangga', 'Sudarmaji', 'TNI AU', '', 'Kertanegara A-84', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(29, '', '', '', 'Nanik Atin', 'Ibu Rumah Tangga', 'Lucky Koko', 'TNI AU', '82331550302', 'Pagas B-259 RT.05', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(30, '', '', '', 'Sukarti', 'Ibu Rumah Tangga', 'Agus Lestari', 'TNI AU', '', 'Pagas C-112 PT.08', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(31, '', '', '', 'Melly Triana P', 'Ibu Rumah Tangga', 'Angga Dwi Prasetyo', 'TNI AU', '', 'Perumahan Kertanegara Komplek TNI AU Pagas Blok C-028 RT.09', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(32, '', '', '', 'Deny De.', 'WARA', 'Dela Fuad Fauzi', 'TNI AU', '', 'Pagas B-9 /RT.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(33, '', '', '', 'Wahyu Nur', 'Polwan', 'Rizky Tri A.', 'TNI AU', '', 'Komplek Kertanegara A-80 RT.04/06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(34, '', '', '', 'Debora Aprilia', 'Wiraswasta', 'Andika Prasetiyo', 'TNI AU', '', 'Pagas C-93', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(35, '', '', '', 'Durriatul M', 'Ibu Rumah Tangga', 'Dicky Dwi Saputra', 'TNI AU', '', 'Pagas RT.06 RW.06 B-26', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(36, '', '', '', 'Dwi Cahya Verianti', 'Guru', 'Agus Suryo Saputro', 'TNI AU', '', 'Pagas Blok C-101 RT.09', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(37, '', '', '', 'Dyah Yunita', 'Ibu Rumah Tangga', 'Hendra Setiawan', 'TNI AU', '', 'C-173', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(38, '', '', '', 'Sda', 'Ibu Rumah Tangga', 'Saeful', 'TNI AU', '', 'Kertanegara B-60', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(39, '', '', '', 'Ajeng', 'Perawat', 'Agil', 'TNI AU', '81232626099', 'Pagas RT.03 / RW.66', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(40, '', '', '', 'Intan Anneke Putri', 'Swasta', 'Surya Panji', 'TNI AU', '', 'Komplek Kertanegara Pagas C-28', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(41, '', '', '', 'Novi Anggita W.K.', 'Ibu Rumah Tangga', 'Made Santoso', 'TNI AU', '', 'Pagas B-22', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(42, '', '', '', 'Mufida K. Y.', 'Dosen', 'M. Ali Huda', 'TNI AU', '', 'Komplek Kertanegara C-63 Singosari RT 11', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(43, '', '', '', 'Aulia ', 'Guru', 'Tegar', 'TNI AU', '', 'A-44', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(44, '', '', '', 'Rani', 'Ibu Rumah Tangga', 'Agli', '', '', 'B- RT : 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(45, '', '', '', 'Refina M. R', 'Ibu Rumah Tangga', 'Fajar Cahyono', 'TNI AU', '', 'Pagas Blok-C No.25 ', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(46, '', '', '', 'Rina Sulistyawati', 'Guru', 'Johan Wahyu Krisna', 'TNI AU', '', 'Komplek Kertanegara Blok-A 91', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(47, '', '', '', 'Sri Handayani', 'Ibu Rumah Tangga', 'Hasanudin', 'TNI AU', '', 'Pagas C-81', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(48, '', '', '', 'Nur Ermasari', 'Ibu Rumah Tangga', 'Wello', 'TNI AU', '81333897286', 'Pagas B-02 / RT 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(49, '', '', '', 'Kariana', 'Guru', 'Hosen', 'TNI AU', '81333503151', 'Pagas A-46 RT 04/06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(50, '', '', '', 'Syania', 'Ibu Rumah Tangga', 'Adam Decka', 'TNI AU', '81391919036', 'Pagas A-98 / RT 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(51, '', '', '', 'Novi Risa', 'Ibu Rumah Tangga', 'Eko Cahyono', 'TNI AU', '81235693589', 'Komplek Kertanegara Blok-C 157 RT 12', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(52, '', '', '', 'Suci L.', 'Ibu Rumah Tangga', 'Nur Sholeh', 'TNI AU', '852140311755', 'Pagas A-100 / RT 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(53, '', '', '', 'Lina ', 'Ibu Rumah Tangga', 'Markias', 'Swasta', '', 'Komplek Kertanegara B-44', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(54, '', '', '', 'Nikita Probowati F. P.', 'Ibu Rumah Tangga', 'Janu Wijaya', 'TNI AU', '', 'Pagas C-61 / 11', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(55, '', '', '', 'Nia ', 'Swasta', 'Sugeng P.', 'TNI AU', '', 'Pagas Blok-A 106, RT.03 , RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(56, '', '', '', 'Novi Fitriani', 'Ibu Rumah Tangga', 'Pandu Syachridan', 'TNI AU', '', 'Pagas Blok A-71', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(57, '', '', '', 'Nurul A.', 'Ibu Rumah Tangga', 'Ari Wijaya', 'TNI AU', '', 'B-13 / 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(58, '', '', '', 'Ciptaningtyar', 'TNI AU', 'Yudha Pradhana', 'TNI AU', '', 'A-69', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(59, '', '', '', 'Retno', 'Ibu Rumah Tangga', 'Ichuan', 'TNI AU', '82232380091', 'Pagas A-55 / 03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(60, '', '', '', 'Warsi Retno W.', 'Ibu Rumah Tangga', 'Andik Prasetyo', 'TNI AU', '', 'Komplek Kertanegara C-140', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(61, '', '', '', 'Fatwa Ratih', 'Ibu Rumah Tangga', 'Yoga Koko', 'TNI AU', '', 'Pagas C-139', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(62, '', '', '', 'Kristina', 'Ibu Rumah Tangga', 'Ragil Sugiatno', 'TNI AU', '', 'Pagas C-104 RT 09 / RW 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(63, '', '', '', 'Maulida N. C.', 'Ibu Rumah Tangga', 'Ilham M. S.', 'TNI AU', '', 'Komplek TNI AU Blok-A 102', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(64, '', '', '', 'Meta', 'Ibu Rumah Tangga', 'Aditya Guntur ', 'TNI AU', '85903624110', 'Pagas A-88 RT 04', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(65, '', '', '', 'Sevinna Deshi H.', 'Ibu Rumah Tangga', 'Avam Margono', 'TNI AU', '82139973108', 'B-33, RT.05 , RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(66, '', '', '', 'Dwi Ernawati', 'Perawat', 'Gatot S.', 'TNI AU', '', 'Komplek Kertanegara B-10 RT.06 / RW.06 ', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(67, '', '', '', 'Resti Vanda A.', 'DRH', 'Roni Aniza', 'DRH', '', 'Pagas C-71 RT 11', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(68, '', '', '', 'Steffy Ardhya', 'Ibu Rumah Tangga', 'Hangga', 'Swasta', '', 'Pagas A-40 RT 04 / RW 06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(69, '', '', '', 'Keti Rhofika Sari', 'Ibu Rumah Tangga', 'Sigit DK', 'TNI AU', '81357515650', 'Pagas A-97 RT.03', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(70, '', '', '', 'Mitsalina Izati', 'Ibu Rumah Tangga', 'Arif Sulistyawan', 'TNI AU', '', 'Blok-C RT 12/ RW 06 No.160', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(71, '', '', '', 'Vony Juliantika', 'Ibu Rumah Tangga', 'Destyan Aji S.', 'TNI AU', '82231779860', 'Komplek Kertanegara A-05 / RT 02', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(72, '', '', '', 'Vindi Arika P.', 'Ibu Rumah Tangga', 'Ferry', 'TNI AU', '', 'Pagas A-54 RT.04', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(73, '', '', '', 'T. D. O. Susanty', 'TNI AU', 'R. Arif Setiyawan', 'Dokter Hewan', '87838885225', 'Blok-A 32', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(74, '', '', '', 'Erlina ', 'Ibu Rumah Tangga', 'Ega Danik', 'TNI AU', '82232635586', 'Pagas C-46 RT.10', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(75, '', '', '', 'Aurina Dita Amaliska', 'Swasta', 'Joko Budiyarjo', 'Swasta', '', 'Komplek Kertanegara Blok-C 14', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(76, '', '', '', 'Mayga Frita Sari', 'Ibu Rumah Tangga', 'Muhadi', 'TNI AU', '', 'Komplek Kertanegara Blok-C 11 RT 03 RW 08', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(77, '', '', '', 'Ervi N. Indriana', 'Ibu Rumah Tangga', 'Akromi Hidayat', 'TNI AU', '82334705808', 'RT 12/ RW 06 No.163 Blok-C', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(78, '', '', '', 'Lita Damafitra', 'Dokter Gigi', 'Sekti Anggara', 'Dokter Gigi', '81216582690', 'Pagas B-51 RT.05', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(79, '', '', '', 'Rency Jesica Octavia', 'Radiografer', 'Achmad Burnowo', 'TNI AU', '82137873767', 'Komplek Kertanegara TNI AU Blok-C2', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(80, '', '', '', 'Miftachul C.', 'Ibu Rumah Tangga', 'Sulistyo Hadi', 'TNI AU', '82229045885', 'Pagas A-41 RT.04 / RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(81, '', '', '', 'Nurul Pratiwi', 'Ibu Rumah Tangga', 'Teddy Widjanarto', 'TNI AU', '', 'Pagas RT.07 / RW.06 C-52', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(82, '', '', '', 'Umi Cholidah', 'Guru', 'Buronto', 'TNI AU', '', 'Komplek TNI AU Kertanegara C-40 RT.10/06 Singosari Malang', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(83, '', '', '', 'Cantika Anggraeni', 'Swasta', 'Sandi Irawan', 'Perangkat Desa', '', 'Canglang RT.12 ', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(84, '', '', '', 'Retno Firdiyanti', 'Dosen F. Psikologi', 'Kapt. Tek W. E. Legowo', 'TNI AU', '', 'Komplek Kertanegara Blok-A 28', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(85, '', '', '', 'Hikmah Widiyastuti', 'Ibu Rumah Tangga', 'Prapto Wardoyo', 'TNI AU', '81255444109', 'Blok A-38, RT.05', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(86, '', '', '', 'Ayu', 'Ibu Rumah Tangga', 'Hani', 'TNI AU', '', 'Pagas A-48', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(87, '', '', '', 'Hanik ', 'Ibu Rumah Tangga', 'Lucky ', 'TNI AU', '', 'Pagas RT.05', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(88, '', '', '', 'Harum Mey', 'PNS', 'Eko Budi', 'TNI AU', '', 'Pagas No. C155 RT.09 / RW.06', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(89, '', '', '', 'Gista H. U', 'TNI AU', 'Hafid', 'TNI AU', '', 'Komplek Kertanegara A-83', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(90, '', '', '', 'Dhany Winda L.', 'Ibu Rumah Tangga', 'Heru', 'TNI AU', '812163322369', 'Komplek Kertanegara C-50', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(91, '', '', '', 'Fitri Anggorowati', 'Pegawai Swasta', 'Amanat H.', 'TNI AU', '', 'Komplek Kertanegara A-30', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(92, '', '', '', 'Deni', 'PNS', 'Anang', 'TNI AU', '', 'Pagas C-11 / RT.07', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(93, '', '', '', 'Ary I.', 'Ibu Rumah Tangga', 'Anton M.', 'TNI AU', '', 'Pagas C-138 / 12', '2022-07-25 17:00:00', '2022-07-25 17:00:00'),
(94, '', '', '', 'Siska K.', 'Ibu Rumah Tangga', 'Iwan Bagus', 'TNI AU', '', 'C-06', '2022-07-25 17:00:00', '2022-07-25 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `progress_babies`
--

CREATE TABLE `progress_babies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_bayi` bigint(20) UNSIGNED DEFAULT NULL,
  `bulan_ke` int(11) NOT NULL,
  `panjang_bayi` decimal(11,2) NOT NULL,
  `berat_bayi` decimal(11,2) NOT NULL,
  `lingkar_kepala` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progress_babies`
--

INSERT INTO `progress_babies` (`id`, `id_bayi`, `bulan_ke`, `panjang_bayi`, `berat_bayi`, `lingkar_kepala`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '0.00', '3.10', 36.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(2, 1, 2, '0.00', '4.30', 41.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(3, 1, 4, '66.50', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(4, 1, 8, '71.00', '7.20', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(5, 1, 10, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(6, 1, 14, '75.00', '8.00', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(7, 1, 35, '98.00', '12.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(8, 1, 36, '102.00', '12.30', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(9, 1, 37, '103.00', '13.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(10, 1, 38, '0.00', '13.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(11, 1, 40, '104.00', '14.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(12, 2, 3, '57.30', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(13, 2, 23, '0.00', '16.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(14, 2, 25, '92.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(15, 2, 28, '0.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(16, 2, 29, '92.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(17, 2, 31, '0.00', '17.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(18, 3, 16, '87.00', '10.70', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(19, 3, 19, '0.00', '11.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(20, 3, 21, '91.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(21, 3, 22, '0.00', '11.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(22, 3, 23, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(23, 4, 30, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(24, 4, 31, '84.00', '9.50', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(25, 4, 32, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(26, 4, 33, '93.00', '11.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(27, 4, 34, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(28, 4, 35, '93.00', '11.30', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(29, 5, 1, '50.00', '3.00', 39.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(30, 5, 2, '0.00', '5.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(31, 5, 3, '62.30', '5.50', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(32, 5, 20, '90.00', '12.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(33, 5, 22, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(34, 5, 23, '90.00', '12.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(35, 5, 24, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(36, 5, 25, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(37, 5, 26, '89.00', '11.60', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(38, 5, 27, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(39, 5, 28, '96.00', '11.10', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(40, 6, 1, '0.00', '4.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(41, 6, 3, '9.90', '5.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(42, 6, 4, '0.00', '6.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(43, 6, 5, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(44, 6, 8, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(45, 6, 9, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(46, 6, 10, '77.00', '8.30', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(47, 6, 11, '0.00', '8.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(48, 6, 12, '0.00', '9.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(49, 6, 13, '94.00', '9.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(50, 6, 16, '0.00', '9.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(51, 6, 35, '0.00', '14.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(52, 6, 36, '104.00', '13.10', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(53, 6, 38, '105.00', '13.20', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(54, 6, 39, '105.00', '13.70', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(55, 6, 40, '94.00', '13.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(56, 6, 41, '0.00', '14.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(57, 6, 42, '0.00', '13.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(58, 6, 43, '101.00', '13.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(59, 7, 7, '65.00', '8.60', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(60, 7, 8, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(61, 8, 9, '60.00', '5.50', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(62, 9, 3, '0.00', '7.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(63, 9, 4, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(64, 9, 5, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(65, 9, 6, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(66, 9, 7, '0.00', '12.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(67, 9, 8, '0.00', '13.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(68, 9, 10, '0.00', '13.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(69, 9, 12, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(70, 9, 13, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(71, 9, 14, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(72, 9, 15, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(73, 9, 16, '89.00', '14.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(74, 9, 17, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(75, 9, 18, '84.00', '14.30', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(76, 9, 19, '0.00', '14.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(77, 10, 8, '69.00', '8.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(78, 10, 9, '0.00', '9.70', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(79, 10, 21, '70.00', '17.00', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(80, 11, 7, '0.00', '6.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(81, 11, 13, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(82, 11, 16, '76.50', '8.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(83, 11, 17, '80.00', '8.60', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(84, 11, 19, '86.30', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(85, 11, 24, '0.00', '10.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(86, 11, 25, '83.00', '9.40', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(87, 11, 36, '98.50', '11.60', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(88, 12, 4, '59.00', '6.70', 35.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(89, 12, 5, '65.50', '7.30', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(90, 12, 6, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(91, 12, 7, '7.70', '7.70', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(92, 12, 8, '7.80', '7.80', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(93, 13, 23, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(94, 14, 26, '58.00', '4.40', 40.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(95, 15, 2, '0.00', '4.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(96, 15, 3, '57.50', '5.30', 38.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(97, 15, 4, '59.00', '6.00', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(98, 15, 5, '68.00', '6.40', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(99, 16, 1, '0.00', '4.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(100, 16, 2, '0.00', '5.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(101, 16, 3, '58.50', '6.50', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(102, 16, 4, '0.00', '7.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(103, 16, 5, '0.00', '7.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(104, 16, 6, '67.00', '7.50', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(105, 16, 7, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(106, 16, 8, '0.00', '8.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(107, 16, 9, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(108, 16, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(109, 16, 26, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(110, 16, 32, '80.00', '11.30', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(111, 16, 36, '0.00', '15.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(112, 17, 6, '67.00', '8.50', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(113, 17, 8, '70.00', '8.90', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(114, 17, 9, '70.00', '8.50', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(115, 17, 13, '0.00', '9.20', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(116, 18, 11, '70.00', '9.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(117, 18, 12, '71.00', '8.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(118, 18, 18, '77.00', '9.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(119, 18, 19, '43.00', '9.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(120, 19, 1, '0.00', '3.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(121, 20, 15, '81.00', '11.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(122, 21, 13, '0.00', '9.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(123, 21, 14, '73.00', '10.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(124, 21, 16, '83.00', '10.50', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(125, 21, 17, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(126, 21, 18, '0.00', '10.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(127, 21, 19, '84.00', '10.40', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(128, 21, 20, '84.00', '11.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(129, 21, 21, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(130, 22, 13, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(131, 22, 16, '0.00', '7.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(132, 22, 25, '0.00', '10.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(133, 23, 3, '63.00', '5.50', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(134, 24, 3, '62.00', '5.60', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(135, 24, 4, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(136, 24, 5, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(137, 24, 7, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(138, 24, 8, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(139, 24, 9, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(140, 24, 10, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(141, 24, 11, '70.00', '8.40', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(142, 24, 12, '0.00', '8.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(143, 24, 13, '77.00', '8.80', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(144, 24, 16, '0.00', '9.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(145, 24, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(146, 25, 12, '78.00', '9.80', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(147, 25, 13, '78.00', '10.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(148, 25, 14, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(149, 25, 16, '80.00', '10.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(150, 25, 17, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(151, 25, 18, '79.00', '10.80', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(152, 25, 19, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(153, 26, 2, '49.00', '4.50', 40.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(154, 26, 3, '59.00', '5.50', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(155, 26, 4, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(156, 26, 7, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(157, 26, 10, '77.00', '8.60', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(158, 27, 5, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(159, 27, 7, '0.00', '7.70', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(160, 27, 8, '73.00', '8.00', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(161, 27, 13, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(162, 27, 14, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(163, 27, 15, '0.00', '8.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(164, 27, 16, '84.00', '8.90', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(165, 27, 17, '0.00', '9.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(166, 27, 29, '81.00', '11.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(167, 27, 36, '103.00', '13.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(168, 27, 38, '103.00', '13.00', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(169, 27, 39, '0.00', '12.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(170, 27, 40, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(171, 27, 41, '104.00', '14.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(172, 28, 4, '67.00', '6.30', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(173, 28, 6, '73.00', '6.90', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(174, 28, 7, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(175, 28, 8, '69.80', '7.50', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(176, 29, 2, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(177, 29, 3, '0.00', '7.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(178, 29, 5, '71.00', '8.40', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(179, 29, 6, '0.00', '9.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(180, 29, 10, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(181, 29, 11, '71.00', '9.30', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(182, 29, 13, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(183, 29, 15, '0.00', '10.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(184, 30, 17, '75.00', '8.70', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(185, 30, 18, '75.00', '9.00', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(186, 30, 19, '0.00', '8.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(187, 30, 20, '0.00', '8.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(188, 30, 21, '80.00', '8.60', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(189, 30, 23, '83.00', '9.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(190, 30, 24, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(191, 31, 3, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(192, 31, 4, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(193, 31, 5, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(194, 31, 6, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(195, 31, 7, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(196, 31, 8, '69.90', '7.40', 42.10, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(197, 31, 9, '66.00', '8.30', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(198, 31, 11, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(199, 31, 13, '0.00', '8.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(200, 31, 14, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(201, 31, 15, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(202, 31, 17, '0.00', '10.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(203, 31, 19, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(204, 31, 20, '0.00', '10.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(205, 31, 22, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(206, 31, 30, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(207, 31, 31, '97.00', '11.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(208, 31, 32, '0.00', '11.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(209, 32, 10, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(210, 32, 11, '71.00', '10.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(211, 32, 13, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(212, 32, 18, '0.00', '12.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(213, 32, 19, '0.00', '13.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(214, 33, 1, '0.00', '29.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(215, 33, 2, '0.00', '5.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(216, 33, 3, '0.00', '5.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(217, 33, 4, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(218, 33, 5, '0.00', '6.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(219, 33, 7, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(220, 33, 9, '0.00', '6.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(221, 33, 10, '89.00', '6.90', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(222, 33, 11, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(223, 33, 12, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(224, 33, 13, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(225, 33, 14, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(226, 33, 15, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(227, 33, 17, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(228, 33, 18, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(229, 33, 21, '77.00', '8.80', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(230, 33, 25, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(231, 33, 27, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(232, 33, 28, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(233, 33, 30, '95.00', '10.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(234, 33, 31, '0.00', '10.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(235, 34, 1, '50.00', '4.00', 38.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(236, 34, 2, '53.00', '5.50', 37.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(237, 34, 4, '33.00', '7.10', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(238, 34, 5, '60.00', '8.00', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(239, 34, 6, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(240, 34, 7, '67.00', '8.50', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(241, 34, 8, '0.00', '9.20', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(242, 35, 1, '0.00', '3.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(243, 35, 2, '0.00', '5.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(244, 35, 3, '0.00', '6.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(245, 35, 4, '68.00', '6.30', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(246, 35, 6, '0.00', '7.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(247, 35, 7, '71.00', '7.10', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(248, 35, 8, '0.00', '7.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(249, 35, 9, '69.00', '7.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(250, 35, 10, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(251, 35, 11, '0.00', '8.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(252, 35, 30, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(253, 35, 32, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(254, 36, 6, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(255, 36, 7, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(256, 36, 8, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(257, 36, 9, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(258, 36, 11, '72.00', '9.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(259, 36, 12, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(260, 36, 13, '0.00', '9.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(261, 36, 14, '84.00', '9.80', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(262, 36, 15, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(263, 36, 16, '0.00', '9.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(264, 36, 17, '86.00', '10.10', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(265, 36, 18, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(266, 36, 19, '84.00', '10.10', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(267, 36, 20, '0.00', '10.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(268, 37, 1, '52.00', '3.50', 39.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(269, 37, 2, '54.00', '4.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(270, 37, 3, '56.00', '5.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(271, 37, 4, '56.00', '5.80', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(272, 37, 5, '0.00', '5.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(273, 37, 7, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(274, 37, 8, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(275, 38, 8, '69.50', '7.00', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(276, 38, 10, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(277, 38, 11, '70.00', '7.10', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(278, 38, 12, '0.00', '7.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(279, 38, 14, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(280, 38, 26, '88.00', '10.70', 55.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(281, 38, 40, '102.00', '15.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(282, 39, 8, '76.00', '8.40', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(283, 39, 9, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(284, 39, 14, '0.00', '10.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(285, 39, 15, '0.00', '9.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(286, 39, 26, '0.00', '15.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(287, 40, 8, '72.00', '7.80', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(288, 40, 9, '0.00', '8.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(289, 40, 10, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(290, 40, 11, '75.00', '8.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(291, 40, 12, '0.00', '9.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(292, 40, 13, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(293, 40, 14, '82.00', '9.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(294, 40, 15, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(295, 40, 16, '86.00', '10.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(296, 40, 17, '0.00', '10.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(297, 40, 36, '104.00', '13.20', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(298, 40, 38, '0.00', '13.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(299, 40, 40, '0.00', '13.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(300, 40, 52, '104.00', '14.50', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(301, 41, 24, '0.00', '11.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(302, 41, 28, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(303, 41, 29, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(304, 42, 8, '0.00', '9.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(305, 42, 10, '51.00', '10.10', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(306, 42, 11, '0.00', '10.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(307, 42, 12, '0.00', '10.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(308, 43, 4, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(309, 43, 5, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(310, 43, 6, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(311, 43, 7, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(312, 43, 8, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(313, 43, 10, '0.00', '7.90', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(314, 43, 11, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(315, 43, 12, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(316, 43, 13, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(317, 43, 14, '81.00', '10.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(318, 43, 22, '0.00', '10.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(319, 43, 41, '102.20', '14.10', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(320, 43, 47, '102.00', '14.80', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(321, 44, 1, '0.00', '3.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(322, 44, 3, '59.00', '3.90', 38.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(323, 44, 4, '0.00', '4.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(324, 44, 5, '0.00', '5.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(325, 44, 6, '0.00', '5.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(326, 44, 9, '65.30', '6.90', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(327, 45, 1, '65.00', '4.00', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(328, 45, 4, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(329, 45, 24, '89.00', '11.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(330, 45, 25, '89.00', '14.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(331, 45, 27, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(332, 46, 24, '100.00', '11.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(333, 47, 7, '65.00', '6.70', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(334, 47, 8, '65.00', '6.80', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(335, 47, 9, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(336, 47, 11, '71.00', '7.50', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(337, 47, 13, '72.00', '7.40', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(338, 47, 14, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(339, 48, 3, '55.60', '5.70', 39.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(340, 48, 6, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(341, 49, 2, '56.00', '4.80', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(342, 49, 3, '56.60', '6.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(343, 49, 4, '0.00', '7.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(344, 49, 15, '87.00', '10.50', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(345, 49, 26, '95.00', '15.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(346, 49, 29, '0.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(347, 50, 1, '60.00', '3.60', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(348, 50, 3, '0.00', '4.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(349, 50, 27, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(350, 51, 14, '90.00', '13.30', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(351, 51, 15, '88.00', '14.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(352, 51, 16, '0.00', '14.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(353, 51, 17, '94.00', '14.80', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(354, 51, 19, '0.00', '15.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(355, 51, 20, '96.00', '15.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(356, 51, 21, '0.00', '15.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(357, 52, 18, '82.00', '10.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(358, 52, 19, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(359, 52, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(360, 52, 24, '78.80', '11.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(361, 52, 25, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(362, 53, 9, '71.00', '8.60', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(363, 53, 10, '71.00', '8.60', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(364, 53, 11, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(365, 53, 12, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(366, 53, 13, '77.00', '9.20', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(367, 53, 15, '76.50', '9.30', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(368, 54, 7, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(369, 55, 1, '0.00', '4.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(370, 55, 3, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(371, 55, 4, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(372, 55, 5, '0.00', '7.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(373, 55, 6, '0.00', '7.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(374, 55, 9, '0.00', '8.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(375, 55, 10, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(376, 55, 12, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(377, 55, 13, '0.00', '8.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(378, 55, 14, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(379, 55, 15, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(380, 55, 16, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(381, 55, 25, '82.00', '11.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(382, 55, 26, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(383, 55, 31, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(384, 55, 32, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(385, 55, 52, '103.00', '15.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(386, 55, 53, '104.00', '15.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(387, 55, 54, '106.00', '15.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(388, 56, 13, '80.00', '10.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(389, 56, 15, '0.00', '11.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(390, 56, 16, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(391, 56, 17, '81.00', '11.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(392, 56, 18, '0.00', '11.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(393, 56, 19, '82.00', '12.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(394, 56, 20, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(395, 57, 17, '0.00', '11.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(396, 57, 18, '0.00', '12.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(397, 58, 1, '0.00', '3.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(398, 58, 4, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(399, 58, 6, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(400, 58, 7, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(401, 58, 8, '0.00', '7.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(402, 58, 9, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(403, 58, 10, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(404, 58, 11, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(405, 58, 12, '0.00', '8.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(406, 58, 15, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(407, 58, 16, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(408, 58, 17, '95.00', '9.20', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(409, 58, 18, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(410, 58, 20, '95.00', '10.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(411, 58, 23, '0.00', '11.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(412, 58, 35, '0.00', '14.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(413, 59, 4, '0.00', '4.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(414, 59, 12, '0.00', '7.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(415, 59, 15, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(416, 59, 28, '0.00', '8.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(417, 60, 6, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(418, 60, 8, '0.00', '8.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(419, 60, 9, '0.00', '8.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(420, 60, 10, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(421, 60, 14, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(422, 60, 20, '84.00', '9.30', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(423, 60, 24, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(424, 61, 1, '0.00', '3.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(425, 61, 2, '0.00', '4.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(426, 61, 3, '0.00', '5.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(427, 61, 4, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(428, 61, 5, '0.00', '5.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(429, 61, 6, '0.00', '6.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(430, 61, 7, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(431, 61, 15, '80.00', '8.90', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(432, 61, 16, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(433, 61, 18, '84.00', '10.20', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(434, 61, 22, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(435, 62, 1, '0.00', '5.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(436, 62, 2, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(437, 62, 3, '62.00', '6.80', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(438, 62, 6, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(439, 62, 7, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(440, 62, 8, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(441, 62, 9, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(442, 62, 13, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(443, 62, 13, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(444, 62, 14, '78.00', '8.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(445, 62, 15, '0.00', '8.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(446, 62, 16, '79.00', '9.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(447, 62, 17, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(448, 62, 18, '0.00', '9.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(449, 62, 19, '74.00', '10.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(450, 62, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(451, 62, 22, '89.00', '10.40', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(452, 62, 23, '0.00', '10.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(453, 63, 13, '81.50', '10.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(454, 63, 16, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(455, 63, 17, '83.00', '10.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(456, 63, 18, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(457, 63, 20, '82.00', '10.50', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(458, 64, 1, '55.00', '5.00', 39.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(459, 64, 2, '0.00', '5.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(460, 64, 3, '61.40', '6.10', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(461, 65, 18, '87.50', '9.60', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(462, 65, 21, '88.00', '10.30', 54.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(463, 66, 1, '0.00', '3.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(464, 66, 2, '0.00', '4.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(465, 66, 4, '61.00', '6.10', 41.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(466, 66, 5, '0.00', '6.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(467, 66, 6, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(468, 66, 7, '71.00', '7.00', 44.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(469, 66, 10, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(470, 66, 11, '73.00', '7.40', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(471, 66, 12, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(472, 66, 13, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(473, 66, 15, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(474, 66, 16, '85.00', '8.30', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(475, 66, 17, '0.00', '8.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(476, 66, 42, '0.00', '12.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(477, 67, 5, '0.00', '5.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00');
INSERT INTO `progress_babies` (`id`, `id_bayi`, `bulan_ke`, `panjang_bayi`, `berat_bayi`, `lingkar_kepala`, `created_at`, `updated_at`, `deleted_at`) VALUES
(478, 67, 6, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(479, 67, 12, '0.00', '7.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(480, 67, 24, '86.00', '9.50', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(481, 67, 27, '93.00', '10.20', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(482, 67, 30, '0.00', '10.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(483, 68, 19, '87.50', '9.60', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(484, 68, 21, '88.00', '10.30', 54.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(485, 69, 17, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(486, 69, 20, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(487, 69, 22, '0.00', '12.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(488, 69, 31, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(489, 69, 44, '0.00', '16.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(490, 69, 52, '103.00', '17.00', 93.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(491, 70, 10, '0.00', '81.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(492, 70, 12, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(493, 71, 14, '82.00', '9.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(494, 72, 1, '0.00', '4.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(495, 72, 5, '0.00', '6.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(496, 72, 7, '0.00', '0.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(497, 72, 10, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(498, 72, 11, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(499, 72, 14, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(500, 72, 20, '84.00', '10.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(501, 72, 23, '86.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(502, 72, 26, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(503, 73, 2, '56.00', '4.80', 38.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(504, 73, 3, '0.00', '5.20', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(505, 73, 4, '0.00', '6.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(506, 74, 12, '72.00', '9.00', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(507, 74, 18, '80.00', '10.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(508, 75, 14, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(509, 76, 6, '69.00', '8.20', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(510, 76, 28, '0.00', '15.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(511, 77, 1, '0.00', '3.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(512, 77, 19, '88.00', '8.20', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(513, 77, 20, '89.00', '8.00', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(514, 77, 21, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(515, 77, 22, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(516, 77, 24, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(517, 78, 6, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(518, 78, 8, '0.00', '7.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(519, 78, 12, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(520, 78, 13, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(521, 78, 17, '81.00', '9.00', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(522, 78, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(523, 78, 23, '0.00', '10.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(524, 78, 24, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(525, 79, 26, '102.00', '16.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(526, 79, 29, '109.00', '17.00', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(527, 80, 2, '52.00', '5.30', 40.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(528, 80, 4, '0.00', '6.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(529, 80, 5, '0.00', '7.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(530, 80, 6, '68.00', '7.20', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(531, 81, 2, '48.00', '6.80', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(532, 81, 6, '65.00', '9.00', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(533, 81, 7, '70.00', '9.30', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(534, 81, 8, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(535, 82, 7, '0.00', '7.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(536, 82, 11, '0.00', '8.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(537, 82, 14, '0.00', '9.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(538, 82, 16, '81.00', '8.90', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(539, 82, 18, '93.00', '10.10', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(540, 82, 21, '91.00', '10.90', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(541, 82, 25, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(542, 83, 28, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(543, 83, 29, '95.00', '11.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(544, 84, 0, '50.00', '3.40', 35.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(545, 84, 1, '54.00', '4.90', 37.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(546, 84, 2, '62.00', '5.90', 40.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(547, 84, 3, '60.40', '6.50', 41.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(548, 84, 4, '63.00', '8.60', 44.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(549, 85, 1, '55.00', '4.60', 36.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(550, 85, 3, '62.00', '5.90', 40.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(551, 85, 4, '64.00', '6.50', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(552, 86, 12, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(553, 87, 13, '78.00', '11.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(554, 87, 24, '95.00', '12.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(555, 87, 26, '84.30', '13.00', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(556, 87, 27, '90.00', '13.00', 55.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(557, 88, 3, '46.00', '4.20', 27.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(558, 88, 6, '57.00', '4.90', 40.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(559, 88, 9, '0.00', '6.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(560, 88, 21, '91.00', '8.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(561, 89, 14, '0.00', '8.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(562, 89, 15, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(563, 90, 27, '85.00', '11.40', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(564, 91, 10, '63.00', '7.20', 55.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(565, 91, 16, '78.00', '9.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(566, 91, 17, '78.00', '9.30', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(567, 91, 19, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(568, 91, 20, '89.00', '9.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(569, 91, 23, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(570, 91, 24, '0.00', '9.00', 59.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(571, 92, 6, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(572, 92, 8, '71.00', '8.40', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(573, 92, 12, '76.50', '8.70', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(574, 92, 14, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(575, 92, 15, '84.00', '10.40', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(576, 92, 18, '0.00', '10.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(577, 93, 1, '47.00', '3.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(578, 93, 2, '0.00', '4.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(579, 93, 3, '0.00', '5.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(580, 93, 4, '62.00', '5.40', 41.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(581, 93, 5, '0.00', '5.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(582, 93, 6, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(583, 93, 8, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(584, 93, 9, '68.00', '7.00', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(585, 93, 10, '0.00', '7.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(586, 93, 22, '90.00', '10.10', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(587, 93, 28, '86.00', '11.50', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(588, 93, 29, '86.00', '11.70', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(589, 93, 30, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(590, 93, 31, '0.00', '12.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(591, 93, 32, '89.00', '12.70', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(592, 93, 33, '89.00', '13.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(593, 93, 36, '0.00', '14.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(594, 94, 1, '0.00', '3.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(595, 94, 2, '0.00', '4.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(596, 94, 3, '0.00', '6.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(597, 94, 4, '0.00', '7.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(598, 94, 5, '69.40', '8.00', 42.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(599, 94, 6, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(600, 94, 7, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(601, 94, 8, '0.00', '9.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(602, 94, 9, '74.00', '10.00', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(603, 94, 10, '0.00', '10.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(604, 94, 11, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(605, 94, 12, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(606, 94, 13, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(607, 94, 14, '0.00', '10.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(608, 94, 15, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(609, 94, 16, '78.00', '11.20', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(610, 94, 19, '0.00', '11.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(611, 94, 20, '0.00', '11.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(612, 94, 21, '0.00', '11.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(613, 94, 23, '90.00', '12.10', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(614, 94, 24, '0.00', '12.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(615, 94, 25, '0.00', '12.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(616, 94, 26, '93.50', '12.50', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(617, 94, 27, '96.00', '12.60', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(618, 95, 3, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(619, 95, 4, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(620, 95, 5, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(621, 95, 6, '0.00', '8.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(622, 95, 8, '68.00', '8.90', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(623, 95, 27, '105.00', '13.40', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(624, 95, 28, '103.00', '13.60', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(625, 95, 30, '104.00', '14.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(626, 95, 31, '103.00', '14.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(627, 95, 32, '93.50', '14.50', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(628, 95, 33, '93.50', '15.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(629, 95, 34, '101.50', '15.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(630, 96, 2, '0.00', '3.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(631, 96, 3, '0.00', '5.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(632, 96, 4, '0.00', '5.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(633, 96, 5, '0.00', '5.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(634, 96, 6, '65.00', '6.50', 43.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(635, 96, 7, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(636, 96, 8, '71.00', '7.40', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(637, 96, 18, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(638, 96, 26, '95.00', '14.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(639, 96, 27, '91.00', '15.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(640, 96, 28, '92.00', '15.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(641, 96, 29, '0.00', '16.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(642, 96, 30, '93.00', '16.00', 49.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(643, 96, 31, '0.00', '16.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(644, 96, 32, '0.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(645, 96, 33, '0.00', '18.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(646, 97, 5, '0.00', '7.10', 46.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(647, 97, 14, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(648, 97, 15, '0.00', '9.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(649, 97, 16, '78.00', '10.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(650, 97, 17, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(651, 97, 18, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(652, 97, 19, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(653, 97, 20, '0.00', '10.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(654, 98, 2, '0.00', '5.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(655, 98, 3, '0.00', '5.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(656, 98, 12, '68.00', '8.50', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(657, 98, 18, '88.00', '10.50', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(658, 99, 1, '0.00', '3.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(659, 99, 2, '0.00', '4.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(660, 99, 3, '0.00', '4.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(661, 99, 4, '63.00', '5.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(662, 99, 5, '0.00', '5.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(663, 99, 6, '0.00', '5.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(664, 99, 7, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(665, 99, 10, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(666, 99, 11, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(667, 99, 12, '78.00', '7.50', 45.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(668, 99, 13, '0.00', '8.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(669, 99, 14, '0.00', '8.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(670, 99, 15, '89.00', '8.80', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(671, 99, 16, '90.00', '8.50', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(672, 99, 18, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(673, 99, 38, '103.00', '12.00', 50.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(674, 99, 38, '0.00', '12.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(675, 99, 40, '103.00', '13.10', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(676, 99, 41, '0.00', '12.10', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(677, 99, 42, '104.00', '13.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(678, 99, 43, '0.00', '12.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(679, 99, 44, '104.00', '12.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(680, 99, 45, '104.00', '12.50', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(681, 100, 7, '0.00', '7.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(682, 100, 13, '0.00', '10.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(683, 100, 14, '0.00', '9.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(684, 100, 15, '82.50', '10.20', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(685, 100, 19, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(686, 100, 20, '96.00', '10.00', 51.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(687, 100, 21, '0.00', '11.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(688, 100, 22, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(689, 100, 35, '104.00', '14.00', 56.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(690, 100, 40, '110.00', '17.00', 53.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(691, 100, 42, '0.00', '17.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(692, 100, 45, '0.00', '17.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(693, 100, 46, '110.00', '17.00', 52.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(694, 101, 2, '0.00', '5.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(695, 101, 3, '0.00', '6.40', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(696, 101, 4, '0.00', '6.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(697, 101, 6, '0.00', '7.80', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(698, 101, 17, '83.50', '11.00', 8.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(699, 101, 23, '0.00', '11.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(700, 102, 1, '0.00', '4.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(701, 102, 3, '0.00', '5.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(702, 102, 4, '0.00', '5.70', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(703, 102, 5, '0.00', '6.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(704, 102, 6, '0.00', '6.90', 4.50, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(705, 102, 10, '0.00', '7.30', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(706, 102, 11, '0.00', '7.50', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(707, 102, 12, '0.00', '7.90', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(708, 102, 13, '0.00', '8.20', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(709, 102, 16, '0.00', '9.00', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(710, 102, 19, '97.00', '9.90', 47.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(711, 102, 21, '99.00', '0.00', 48.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(712, 102, 23, '0.00', '8.60', 0.00, '2022-05-07 17:00:00', '2022-05-07 17:00:00', '2022-05-07 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admins', 'admin@posyandu.com', 'Admin', NULL, '$2y$10$UHyPPvM41FdYOwQQcQfQKOkyCu2zSO013EY/FFAfgK8USGpb.1LPi', NULL, '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(2, 'Staff Satu', 'staff@posyandu.com', 'Staff', NULL, '$2y$10$Tfq5jqfDaKt874hs.mXGmeNeBo8tWqi0uOOUL706hNVzcpVk6hD6C', NULL, '2022-08-05 17:00:00', '2022-08-05 17:00:00'),
(3, 'Staff Dua', 'posyandu@posyandu.com', 'Staff2', NULL, '$2y$10$BOVhgECYNwxO0xTnBZ4DeeavFBvTEuFihpJd3YIcTplDELoA.ZK.y', NULL, '2022-08-06 17:00:00', '2022-08-06 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HB-0', 'Mencegah penularan pernyakit Hepatitis B dan kerusakan hati', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(2, 'BCG (Bacillus Calmette Guerin), Polio 1', 'BCG mencegah penularan pernyakit TBC (Tuberkolosis) yang berat. Polio 1 dapat mencegah penularan pernyakit polio yang dapat menyebabkan lumpuh layuh pada tungkai dan atau lengan. BCG dan Polio 1 biasanya diberikan pada bayi berumur 1 bulan.', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(3, 'DPT-HB-Hib 1, Polio 2', 'DPT-HB-Hib 1 diberikan kepada bayi berumur 2 bulan untuk mencegah penularan pernyakit difteri yang menyumbat jalan napas, mencegah penularan batuk rejan, tetanus, Hepatitis B yang menyebabkan kerusakan hati dan mencegah infeksi HIB penyebab meningitis (radang selaput otak). Polio 2 biasanya diberikan kepada bayi berumur  2, guna mencegah penularan penyakit polio yang dapat menyebabkan lumpuh layuh pada tungkai dan atau lengan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(4, 'DPT-HB-Hib 2, Polio 3', 'DPT-HB-Hib 2 diberikan kepada bayi berumur 3 bulan untuk mencegah penularan pernyakit difteri yang menyumbat jalan napas, mencegah penularan batuk rejan, tetanus, Hepatitis B yang menyebabkan kerusakan hati dan mencegah infeksi HIB penyebab meningitis (radang selaput otak). Polio 3 biasanya diberikan kepada bayi berumur  3, guna mencegah penularan penyakit polio yang dapat menyebabkan lumpuh layuh pada tungkai dan atau lengan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(5, 'DPT-HB-Hib 3, Polio 4', 'DPT-HB-Hib 3 diberikan kepada bayi berumur 4 bulan untuk mencegah penularan pernyakit difteri yang menyumbat jalan napas, mencegah penularan batuk rejan, tetanus, Hepatitis B yang menyebabkan kerusakan hati dan mencegah infeksi HIB penyebab meningitis (radang selaput otak). Polio 4 biasanya diberikan kepada bayi berumur  4, guna mencegah penularan penyakit polio yang dapat menyebabkan lumpuh layuh pada tungkai dan atau lengan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(6, 'IPV', 'Kegunaan pemberian IPV sama dengan pemberian Polio yaitu untuk mencegah penularan penyakit polio yang dapat menyebabkan lumpuh layuh pada tungkai dan atau lengan. IPV biasanya diberikan waktu bayi mulai berumur 4.', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(7, 'Campak', 'Mencegah penularan pernyakit campak yang dapat menyebabkan komplikasi radang paru, radang otak dan kebutaan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(8, 'DPT-HB-Hib Lanjutan', 'Diberikan kepada bayi jika sudah berumur 18 bulan sampai 24 bulan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(9, 'Campak Lanjutan', 'Diberikan kepada bayi jika sudah berumur 18 bulan sampai 24 bulan', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(10, 'ORI (Outbreak Response Immunization)', 'Digunakan untuk mencegah penyebaran wabah difteri', '2022-08-04 17:00:00', '2022-08-04 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin`
--

CREATE TABLE `vitamin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_range_age` int(11) DEFAULT NULL,
  `end_range_age` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamin`
--

INSERT INTO `vitamin` (`id`, `name`, `description`, `start_range_age`, `end_range_age`, `created_at`, `updated_at`) VALUES
(1, 'Vitamin A', 'Vitamin A untuk meningkatkan kesehatan mata dan pertumbuhan anak', 0, 0, '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(2, 'Vitamin B12', 'Vitamin B12 untuk membantu pembentukan sistem saraf dan menenangkan siklus tidur bayi', 0, 0, '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(3, 'Vitamin K21', 'Vitamin K membantu darah menggumpal. Sangat penting untuk mencegah pendarahan serius, terlebih pada bayi.', 0, 0, '2022-08-04 17:00:00', '2022-08-04 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vitaminization`
--

CREATE TABLE `vitaminization` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_baby` bigint(20) UNSIGNED NOT NULL,
  `id_vitamin` bigint(20) UNSIGNED NOT NULL,
  `bulan` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitaminization`
--

INSERT INTO `vitaminization` (`id`, `id_baby`, `id_vitamin`, `bulan`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, '2019-10-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(2, 6, 1, 4, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(3, 6, 1, 16, '2020-02-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(4, 9, 1, 7, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(5, 9, 1, 13, '2019-08-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(6, 9, 1, 19, '2020-02-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(7, 11, 1, 19, '2019-10-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(8, 22, 1, 13, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(9, 24, 1, 8, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(10, 24, 1, 16, '2019-11-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(11, 24, 1, 20, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(12, 27, 1, 17, '2020-02-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(13, 31, 1, 8, '2018-02-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(14, 31, 1, 14, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(15, 31, 1, 20, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(16, 31, 1, 22, '2019-04-11', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(17, 32, 1, 10, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(18, 33, 1, 7, '2018-03-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(19, 33, 1, 12, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(20, 33, 1, 18, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(21, 35, 1, 10, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(22, 36, 1, 8, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(23, 36, 1, 15, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(24, 36, 1, 20, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(25, 38, 1, 10, '2019-10-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(26, 38, 1, 14, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(27, 39, 1, 9, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(28, 39, 1, 15, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(29, 39, 1, 26, '2021-02-11', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(30, 40, 1, 12, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(31, 40, 1, 17, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(32, 43, 1, 4, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(33, 43, 1, 10, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(34, 43, 1, 22, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(35, 48, 1, 6, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(36, 49, 1, 3, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(37, 54, 1, 7, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(38, 55, 1, 15, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(39, 55, 1, 16, '2019-03-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(40, 55, 1, 26, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(41, 57, 1, 17, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(42, 58, 1, 11, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(43, 58, 1, 18, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(44, 59, 1, 4, '2018-02-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(45, 59, 1, 15, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(46, 59, 1, 28, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(47, 60, 1, 6, '2018-05-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(48, 60, 1, 14, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(49, 60, 1, 24, '2020-02-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(50, 61, 1, 16, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(51, 61, 1, 22, '2019-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(52, 62, 1, 16, '2019-08-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(53, 62, 1, 23, '2020-03-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(54, 66, 1, 12, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(55, 67, 1, 12, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(56, 67, 1, 27, '2019-11-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(57, 68, 1, 12, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(58, 68, 1, 24, '2019-08-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(59, 68, 1, 30, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(60, 69, 1, 7, '2017-09-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(61, 69, 1, 22, '2018-02-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(62, 72, 1, 23, '2019-11-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(63, 77, 1, 24, '2022-02-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(64, 78, 1, 6, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(65, 78, 1, 12, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(66, 78, 1, 20, '2019-11-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(67, 82, 1, 7, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(68, 82, 1, 21, '2019-11-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(69, 89, 1, 14, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(70, 90, 1, 27, '2022-02-10', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(71, 92, 1, 6, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(72, 92, 1, 12, '2019-04-18', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(73, 94, 1, 11, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(74, 94, 1, 24, '2019-09-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(75, 96, 1, 7, '2021-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(76, 99, 1, 12, '2019-08-08', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(77, 99, 1, 18, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(78, 100, 1, 19, '2019-12-12', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(79, 101, 1, 6, '2018-08-09', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(80, 101, 1, 24, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(81, 102, 1, 12, '2019-02-14', '2022-08-04 17:00:00', '2022-08-04 17:00:00'),
(82, 102, 1, 23, '2020-02-13', '2022-08-04 17:00:00', '2022-08-04 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `babies`
--
ALTER TABLE `babies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `babies_id_parent_foreign` (`id_parent`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `immunization`
--
ALTER TABLE `immunization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `immunization_id_baby_foreign` (`id_baby`),
  ADD KEY `immunization_id_vaccine_foreign` (`id_vaccine`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `progress_babies`
--
ALTER TABLE `progress_babies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progress_babies_id_bayi_foreign` (`id_bayi`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitaminization`
--
ALTER TABLE `vitaminization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vitaminization_id_baby_foreign` (`id_baby`),
  ADD KEY `vitaminization_id_vitamin_foreign` (`id_vitamin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `babies`
--
ALTER TABLE `babies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `immunization`
--
ALTER TABLE `immunization`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progress_babies`
--
ALTER TABLE `progress_babies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vitamin`
--
ALTER TABLE `vitamin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vitaminization`
--
ALTER TABLE `vitaminization`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `babies`
--
ALTER TABLE `babies`
  ADD CONSTRAINT `babies_id_parent_foreign` FOREIGN KEY (`id_parent`) REFERENCES `parents` (`id`);

--
-- Constraints for table `immunization`
--
ALTER TABLE `immunization`
  ADD CONSTRAINT `immunization_id_baby_foreign` FOREIGN KEY (`id_baby`) REFERENCES `babies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `immunization_id_vaccine_foreign` FOREIGN KEY (`id_vaccine`) REFERENCES `vaccine` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `progress_babies`
--
ALTER TABLE `progress_babies`
  ADD CONSTRAINT `progress_babies_id_bayi_foreign` FOREIGN KEY (`id_bayi`) REFERENCES `babies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vitaminization`
--
ALTER TABLE `vitaminization`
  ADD CONSTRAINT `vitaminization_id_baby_foreign` FOREIGN KEY (`id_baby`) REFERENCES `babies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vitaminization_id_vitamin_foreign` FOREIGN KEY (`id_vitamin`) REFERENCES `vitamin` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
