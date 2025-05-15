-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2025 at 02:10 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisten_presensi_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `kode`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Tanpa keterangan', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(2, 'H', 'Hadir', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(3, 'S1', 'Sakit dengan keterangan dari dokter', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(4, 'S2', 'Sakit tanpa surat dokter', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(5, 'I', 'Izin dengan surat izin', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(6, 'D1', 'Dispensasi acara didalam sekolah', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(7, 'D2', 'Dispensasi acara diluar sekolah', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(8, 'T', 'Terlambat', '2025-05-14 16:58:20', '2025-05-14 16:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1A', 'Kelas 1A', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(2, '1B', 'Kelas 1B', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(2, '1C', 'Kelas 1C', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(3, '2A', 'Kelas 2A', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(4, '2B', 'Kelas 2B', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(4, '2C', 'Kelas 2C', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(5, '3A', 'Kelas 3A', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(6, '3B', 'Kelas 3B', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(7, '3C', 'Kelas 3C', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),

-- --------------------------------------------------------

--
-- Table structure for table `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapels`
--

INSERT INTO `mapels` (`id`, `kode`, `nama`, `kelas_id`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'MTK1A', 'Matematika', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(2, 'PKN1A', 'Pendidikan Kewarganegaraan', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(3, 'QH1A', 'Quran Hadist', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(4, 'SBDP1A', 'Seni Budaya dan Prakarya', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(5, 'AA1A', 'Aqidah Akhlak', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(6, 'BINA1A', 'Bahasa Indonesia', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(7, 'BJ1A', 'Bahasa Jawa', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(8, 'FQ1A', 'Fiqih', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(9, 'BING1A', 'Bahasa Inggris', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(10, 'BA1A', 'Bahasa Arab', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(11, 'PJOK1A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(12, 'TIK1A', 'Teknologi Informasi dan Komunikasi', 1, 18, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(13, 'MTK1B', 'Matematika', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(14, 'PKN1B', 'Pendidikan Kewarganegaraan', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(15, 'QH1B', 'Quran Hadist', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(16, 'SBDP1B', 'Seni Budaya dan Prakarya', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(17, 'AA1B', 'Aqidah Akhlak', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(18, 'BINA1B', 'Bahasa Indonesia', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(19, 'BJ1B', 'Bahasa Jawa', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(20, 'FQ1B', 'Fiqih', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(21, 'BING1B', 'Bahasa Inggris', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(22, 'BA1B', 'Bahasa Arab', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(23, 'PJOK1B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(24, 'TIK1B', 'Teknologi Informasi dan Komunikasi', 2, 21, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(25, 'MTK2A', 'Matematika', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(26, 'PKN2A', 'Pendidikan Kewarganegaraan', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(27, 'QH2A', 'Quran Hadist', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(28, 'SBDP2A', 'Seni Budaya dan Prakarya', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(29, 'AA2A', 'Aqidah Akhlak', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(30, 'BINA2A', 'Bahasa Indonesia', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(31, 'BJ2A', 'Bahasa Jawa', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(32, 'FQ2A', 'Fiqih', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(33, 'BING2A', 'Bahasa Inggris', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(34, 'BA2A', 'Bahasa Arab', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(35, 'PJOK2A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(36, 'TIK2A', 'Teknologi Informasi dan Komunikasi', 3, 19, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(37, 'MTK2B', 'Matematika', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(38, 'PKN2B', 'Pendidikan Kewarganegaraan', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(39, 'QH2B', 'Quran Hadist', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(40, 'SBDP2B', 'Seni Budaya dan Prakarya', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(41, 'AA2B', 'Aqidah Akhlak', 4, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(42, 'BINA2B', 'Bahasa Indonesia', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(43, 'BJ2B', 'Bahasa Jawa', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(44, 'FQ2B', 'Fiqih', 4, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(45, 'BING2B', 'Bahasa Inggris', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(46, 'BA2B', 'Bahasa Arab', 4, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(47, 'PJOK2B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(48, 'TIK2B', 'Teknologi Informasi dan Komunikasi', 4, 20, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(49, 'MTK3A', 'Matematika', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(50, 'PKN3A', 'Pendidikan Kewarganegaraan', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(51, 'QH3A', 'Quran Hadist', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(52, 'SKI3A', 'Sejarah Kebudayaan Islam', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(53, 'AA3A', 'Aqidah Akhlak', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(54, 'BINA3A', 'Bahasa Indonesia', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(55, 'BJ3A', 'Bahasa Jawa', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(56, 'FQ3A', 'Fiqih', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(57, 'BING3A', 'Bahasa Inggris', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(58, 'BA3A', 'Bahasa Arab', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(59, 'SBDP3A', 'Seni Budaya dan Prakarya', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(60, 'PJOK3A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 5, 5, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(61, 'TIK3A', 'Teknologi Informasi dan Komunikasi', 5, 12, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(62, 'MTK3B', 'Matematika', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(63, 'PKN3B', 'Pendidikan Kewarganegaraan', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(64, 'QH3B', 'Quran Hadist', 6, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(65, 'SKI3B', 'Sejarah Kebudayaan Islam', 6, 2, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(66, 'AA3B', 'Aqidah Akhlak', 6, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(67, 'BINA3B', 'Bahasa Indonesia', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(68, 'BJ3B', 'Bahasa Jawa', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(69, 'FQ3B', 'Fiqih', 6, 2, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(70, 'BING3B', 'Bahasa Inggris', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(71, 'BA3B', 'Bahasa Arab', 6, 2, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(72, 'SBDP3B', 'Seni Budaya dan Prakarya', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(73, 'PJOK3B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 6, 5, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(74, 'TIK3B', 'Teknologi Informasi dan Komunikasi', 6, 22, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(75, 'MTK3C', 'Matematika', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(76, 'PKN3C', 'Pendidikan Kewarganegaraan', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(77, 'QH3C', 'Quran Hadist', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(78, 'SKI3C', 'Sejarah Kebudayaan Islam', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(79, 'AA3C', 'Aqidah Akhlak', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(80, 'BINA3C', 'Bahasa Indonesia', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(81, 'BJ3C', 'Bahasa Jawa', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(82, 'FQ3C', 'Fiqih', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(83, 'BING3C', 'Bahasa Inggris', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(84, 'BA3C', 'Bahasa Arab', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(85, 'SBDP3C', 'Seni Budaya dan Prakarya', 7, 6, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(86, 'PJOK3C', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 7, 5, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(87, 'TIK3C', 'Teknologi Informasi dan Komunikasi', 7, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(88, 'MTK4A', 'Matematika', 8, 14, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(89, 'PKN4A', 'Pendidikan Kewarganegaraan', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(90, 'QH4A', 'Quran Hadist', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(91, 'SKI4A', 'Sejarah Kebudayaan Islam', 8, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(92, 'AA4A', 'Aqidah Akhlak', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(93, 'BINA4A', 'Bahasa Indonesia', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(94, 'BJ4A', 'Bahasa Jawa', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(95, 'FQ4A', 'Fiqih', 8, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(96, 'BING4A', 'Bahasa Inggris', 8, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(97, 'BA4A', 'Bahasa Arab', 8, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(98, 'SBDP4A', 'Seni Budaya dan Prakarya', 8, 3, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(99, 'PJOK4A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 8, 5, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(100, 'TIK4A', 'Teknologi Informasi dan Komunikasi', 8, 14, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(101, 'IPS4A', 'Ilmu Pengetahuan Sosial', 8, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(102, 'ASW4A', 'Aswaja', 8, 2, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(103, 'IPA4A', 'Ilmu Pengetahuan Alam', 8, 14, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(104, 'MTK4B', 'Matematika', 9, 14, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(105, 'PKN4B', 'Pendidikan Kewarganegaraan', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(106, 'QH4B', 'Quran Hadist', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(107, 'SKI4B', 'Sejarah Kebudayaan Islam', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(108, 'AA4B', 'Aqidah Akhlak', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(109, 'BINA4B', 'Bahasa Indonesia', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(110, 'BJ4B', 'Bahasa Jawa', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(111, 'FQ4B', 'Fiqih', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(112, 'BING4B', 'Bahasa Inggris', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(113, 'BA4B', 'Bahasa Arab', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(114, 'SBDP4B', 'Seni Budaya dan Prakarya', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(115, 'PJOK4B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 9, 5, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(116, 'TIK4B', 'Teknologi Informasi dan Komunikasi', 9, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(117, 'IPS4B', 'Ilmu Pengetahuan Sosial', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(118, 'ASW4B', 'Aswaja', 9, 2, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(119, 'IPA4B', 'Ilmu Pengetahuan Alam', 9, 11, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(120, 'MTK5A', 'Matematika', 10, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(121, 'PKN5A', 'Pendidikan Kewarganegaraan', 10, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(122, 'QH5A', 'Quran Hadist', 10, 10, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(123, 'SKI5A', 'Sejarah Kebudayaan Islam', 10, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(124, 'AA5A', 'Aqidah Akhlak', 10, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(125, 'BINA5A', 'Bahasa Indonesia', 10, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(126, 'BJ5A', 'Bahasa Jawa', 10, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(127, 'FQ5A', 'Fiqih', 10, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(128, 'BING5A', 'Bahasa Inggris', 10, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(129, 'BA5A', 'Bahasa Arab', 10, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(130, 'SBDP5A', 'Seni Budaya dan Prakarya', 10, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(131, 'PJOK5A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 10, 4, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(132, 'TIK5A', 'Teknologi Informasi dan Komunikasi', 10, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(133, 'IPS5A', 'Ilmu Pengetahuan Sosial', 10, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(134, 'ASW5A', 'Aswaja', 10, 1, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(135, 'IPA5A', 'Ilmu Pengetahuan Alam', 10, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(136, 'MTK5B', 'Matematika', 11, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(137, 'PKN5B', 'Pendidikan Kewarganegaraan', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(138, 'QH5B', 'Quran Hadist', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(139, 'SKI5B', 'Sejarah Kebudayaan Islam', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(140, 'AA5B', 'Aqidah Akhlak', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(141, 'BINA5B', 'Bahasa Indonesia', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(142, 'BJ5B', 'Bahasa Jawa', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(143, 'FQ5B', 'Fiqih', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(144, 'BING5B', 'Bahasa Inggris', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(145, 'BA5B', 'Bahasa Arab', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(146, 'SBDP5B', 'Seni Budaya dan Prakarya', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(147, 'PJOK5B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 11, 4, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(148, 'TIK5B', 'Teknologi Informasi dan Komunikasi', 11, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(149, 'IPS5B', 'Ilmu Pengetahuan Sosial', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(150, 'ASW5B', 'Aswaja', 11, 1, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(151, 'IPA5B', 'Ilmu Pengetahuan Alam', 11, 8, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(152, 'MTK5C', 'Matematika', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(153, 'PKN5C', 'Pendidikan Kewarganegaraan', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(154, 'QH5C', 'Quran Hadist', 12, 10, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(155, 'SKI5C', 'Sejarah Kebudayaan Islam', 12, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(156, 'AA5C', 'Aqidah Akhlak', 12, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(157, 'BINA5C', 'Bahasa Indonesia', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(158, 'BJ5C', 'Bahasa Jawa', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(159, 'FQ5C', 'Fiqih', 12, 9, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(160, 'BING5C', 'Bahasa Inggris', 12, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(161, 'BA5C', 'Bahasa Arab', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(162, 'SBDP5C', 'Seni Budaya dan Prakarya', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(163, 'PJOK5C', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 12, 4, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(164, 'TIK5C', 'Teknologi Informasi dan Komunikasi', 12, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(165, 'IPS5C', 'Ilmu Pengetahuan Sosial', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(166, 'ASW5C', 'Aswaja', 12, 1, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(167, 'IPA5C', 'Ilmu Pengetahuan Alam', 12, 17, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(168, 'MTK6A', 'Matematika', 13, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(169, 'PKN6A', 'Pendidikan Kewarganegaraan', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(170, 'QH6A', 'Quran Hadist', 13, 10, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(171, 'SKI6A', 'Sejarah Kebudayaan Islam', 13, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(172, 'AA6A', 'Aqidah Akhlak', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(173, 'BINA6A', 'Bahasa Indonesia', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(174, 'BJ6A', 'Bahasa Jawa', 13, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(175, 'FQ6A', 'Fiqih', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(176, 'BING6A', 'Bahasa Inggris', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(177, 'BA6A', 'Bahasa Arab', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(178, 'SBDP6A', 'Seni Budaya dan Prakarya', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(179, 'PJOK6A', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 13, 4, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(180, 'TIK6A', 'Teknologi Informasi dan Komunikasi', 13, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(181, 'IPS6A', 'Ilmu Pengetahuan Sosial', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(182, 'ASW6A', 'Aswaja', 13, 1, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(183, 'IPA6A', 'Ilmu Pengetahuan Alam', 13, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(184, 'MTK6B', 'Matematika', 14, 13, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(185, 'PKN6B', 'Pendidikan Kewarganegaraan', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(186, 'QH6B', 'Quran Hadist', 14, 10, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(187, 'SKI6B', 'Sejarah Kebudayaan Islam', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(188, 'AA6B', 'Aqidah Akhlak', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(189, 'BINA6B', 'Bahasa Indonesia', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(190, 'BJ6B', 'Bahasa Jawa', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(191, 'FQ6B', 'Fiqih', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(192, 'BING6B', 'Bahasa Inggris', 14, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(193, 'BA6B', 'Bahasa Arab', 14, 7, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(194, 'SBDP6B', 'Seni Budaya dan Prakarya', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(195, 'PJOK6B', 'Pendidikan Jasmani, Olaharga, dan Kesehatan', 14, 4, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(196, 'TIK6B', 'Teknologi Informasi dan Komunikasi', 14, 15, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(197, 'IPS6B', 'Ilmu Pengetahuan Sosial', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(198, 'ASW6B', 'Aswaja', 14, 1, '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(199, 'IPA6B', 'Ilmu Pengetahuan Alam', 14, 16, '2025-05-14 16:58:20', '2025-05-14 16:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_02_081528_create_siswas_table', 1),
(6, '2021_12_02_140030_create_absensis_table', 1),
(7, '2021_12_02_155431_create_mapels_table', 1),
(8, '2021_12_03_031710_create_kelas_table', 1),
(9, '2021_12_15_111726_create_presensis_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

CREATE TABLE `presensis` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `absensi_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaAyah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaIbu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmpLahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `jnsKelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_id` bigint UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nis`, `phone`, `email`, `password`, `firstName`, `lastName`, `namaAyah`, `namaIbu`, `tmpLahir`, `tglLahir`, `jnsKelamin`, `alamat`, `kelas_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '367371', '838-268-0854', 'katelynn47@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jonathon', 'Carroll', 'Javier', 'Novella', 'Port Greta', '2009-06-17', 'Perempuan', '3797 Finn Corners\nEast Wyatt, TX 59218', 1, 'Ob2j09czrMUQGjHZ', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(2, '343522', '(603) 431-9675', 'fveum@harvey.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Murphy', 'Dach', 'Jesse', 'Alvera', 'Stantonbury', '1975-09-30', 'Perempuan', '550 Kuvalis Via\nBayerberg, LA 66986', 1, 'Wpt6umHXCFk8u6FI', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(3, '132790', '586-414-1696', 'kara93@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vivien', 'Lehner', 'Colin', 'Keira', 'Boyerland', '2023-09-11', 'Perempuan', '40482 Terry Island Suite 399\nSouth Ryannborough, WY 55474', 1, 'uHbmECNUVETzKU9J', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(4, '412494', '769.369.4542', 'theo22@yundt.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Harmon', 'Jacobs', 'Moriah', 'Karelle', 'Ferneport', '2016-03-26', 'Perempuan', '814 Estrella Pass\nSouth Susie, NH 87874', 1, 'UVtd8zeNXLZJuiAt', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(5, '304368', '908-766-9028', 'edmond.beatty@gusikowski.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Haleigh', 'Yundt', 'Gonzalo', 'Cleora', 'Othaville', '1991-11-24', 'Perempuan', '162 Streich Point\nPort Leopold, OH 94849', 1, 'zBEisk1pQcWXyAv7', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(6, '436354', '919-395-8862', 'zetta.cormier@balistreri.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gordon', 'Runolfsdottir', 'Ransom', 'Agnes', 'Halleburgh', '2002-04-27', 'Perempuan', '431 Tressa Radial Suite 145\nEast Neldafort, MN 06471', 1, 'VtqlbzR878WVnimY', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(7, '247370', '(937) 844-2748', 'zlind@kuhlman.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alessandro', 'Lowe', 'Fermin', 'Ozella', 'Port Emely', '2018-03-11', 'Laki-laki', '918 Braun Ridge Apt. 674\nCoreneburgh, RI 70976-4591', 1, 'Q5GNhLxHMs12rmEt', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(8, '403848', '769-946-0372', 'tristin02@parisian.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eden', 'Metz', 'Frank', 'Jannie', 'New Camren', '2002-11-16', 'Laki-laki', '88700 Bettye Ville\nKianside, NH 49477', 1, '2NzJqrOAbQ1KnW1p', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(9, '306657', '+1 (573) 940-4389', 'pschaefer@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jordane', 'McLaughlin', 'Julien', 'Santina', 'South Adella', '2001-10-22', 'Perempuan', '521 Dietrich Well Apt. 711\nLake Curtis, AL 70786-8297', 1, 'n4eA2LhtzArXinBA', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(10, '229800', '+1 (219) 921-6799', 'cleora91@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jeffry', 'Crooks', 'Pete', 'Lina', 'East Lenoraton', '2020-07-31', 'Laki-laki', '642 Mozelle Landing Suite 676\nZiemetown, HI 73400-8153', 1, 'MsddXPELstpj5KIO', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(11, '591275', '+13516451367', 'zieme.jacklyn@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bianka', 'Simonis', 'Gunnar', 'Candida', 'West Loraine', '1994-07-03', 'Perempuan', '365 Leonora Via\nEdgarbury, MA 52876-3343', 1, 'sZbZ8GIPacBKpbMG', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(12, '190895', '+1.463.914.1060', 'hazel67@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Keshawn', 'Mayert', 'Lawson', 'Neha', 'Gilbertoshire', '2009-01-05', 'Laki-laki', '50281 Adrien Light\nWest Rossieview, CA 40808-6972', 1, 'QBYPioM6LMT0GPsp', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(13, '263462', '+1 (432) 678-8008', 'stoltenberg.raquel@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Amira', 'Murazik', 'Burley', 'Eldora', 'South Ewaldton', '2021-05-30', 'Perempuan', '473 Heaney Mountains\nSouth Naomi, HI 38898', 1, 'YbiQYscV2aums681', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(14, '322107', '+1 (339) 826-0824', 'ratke.carroll@kunde.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alexandria', 'Dach', 'Dylan', 'Alysha', 'North Marlene', '2010-04-19', 'Perempuan', '2830 Jordyn Lane Apt. 905\nJacintheton, ID 83242', 1, 'mxH8YmeTjLzBib3o', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(15, '170866', '260.813.5423', 'garrison.baumbach@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lelia', 'Harris', 'Quincy', 'Lois', 'Deetown', '2001-06-15', 'Perempuan', '6350 Windler Bridge Apt. 715\nNorth Colby, TN 54365', 1, 'tAuIX7r8qfBG8J0G', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(16, '189070', '+1-828-254-2491', 'lturcotte@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zetta', 'Stiedemann', 'Obie', 'Erna', 'Sageshire', '1970-05-13', 'Perempuan', '57699 Herman Isle\nLake Eloisafurt, AL 19622-5740', 1, 'btqjjLTPr9le78WI', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(17, '306575', '+1.315.772.9409', 'pablo73@rempel.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Keith', 'Nikolaus', 'Lonzo', 'Cordie', 'Luettgenfurt', '1983-10-08', 'Laki-laki', '41954 Goyette Stravenue Suite 125\nPort Keith, NE 57771-9939', 1, '32GTPNFt227RSgaJ', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(18, '414903', '+1.580.414.0930', 'lorenza64@will.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Patsy', 'Jacobson', 'Miles', 'Sabryna', 'Port Hilbertburgh', '1972-07-13', 'Laki-laki', '84697 Stamm Parks Apt. 776\nSkylarport, MA 11398-5636', 1, 'ShKjVxCcnuytaKrg', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(19, '400965', '757.703.5395', 'irwin88@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Toy', 'Goyette', 'Gunner', 'Idella', 'Port Carmenport', '1997-04-16', 'Laki-laki', '30421 Kane Dam\nNorth Assuntamouth, MS 05738', 1, '4RbGKcl9BQRtA4bQ', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(20, '114264', '559.345.2244', 'noemie07@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aida', 'Hoppe', 'Jerod', 'Rachael', 'South Winona', '2017-01-22', 'Laki-laki', '73382 Pouros Court Suite 257\nDickensberg, OK 37275-6119', 1, '60IcAJej6bbWoldN', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(21, '109468', '931-347-5022', 'glangworth@white.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jude', 'Gusikowski', 'Cletus', 'Shanelle', 'Ferryfort', '1973-10-26', 'Perempuan', '857 Elisha Streets Suite 278\nPort Hilmaborough, MS 10792', 1, '6B3eNpACGnP27QMM', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(22, '409189', '+1.959.658.9323', 'kerluke.leonor@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hipolito', 'Hane', 'Lourdes', 'Faye', 'Lake Ellisshire', '1982-04-22', 'Laki-laki', '465 King Manor Apt. 423\nEast Leoraside, WA 09500', 1, 'Jx8LthlIyFpW93i3', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(23, '172591', '(276) 476-6582', 'edooley@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ernest', 'Moen', 'Milford', 'Chyna', 'Robbport', '1990-02-20', 'Perempuan', '91928 Beryl Ports\nLake Alize, MA 38410', 1, 'fmhtH5k8M1PYxRtZ', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(24, '503590', '415-567-5946', 'lmetz@orn.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sophie', 'Volkman', 'Manuel', 'Valentine', 'Jaylonville', '2019-06-29', 'Laki-laki', '59138 Spencer Cliff Apt. 752\nVonport, AR 66098-2673', 1, '8DdESjy9pB3RNPE4', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(25, '101625', '+1-346-317-9973', 'gerald.volkman@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ollie', 'Boyer', 'Jacey', 'Zoey', 'Hodkiewiczmouth', '1992-06-20', 'Laki-laki', '364 Littel Corners Apt. 659\nStreichhaven, MT 57995-0929', 2, 'UuPCwhBs4iRppkEx', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(26, '183264', '564-870-0828', 'joelle.huels@steuber.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Raven', 'Dietrich', 'Billy', 'Anne', 'Volkmanborough', '1979-09-27', 'Laki-laki', '883 Nellie Fork Apt. 818\nNorth Dortha, MO 01053', 2, 'oS7ZpBryxT0W6dHL', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(27, '251478', '+1 (364) 460-1760', 'kzulauf@smitham.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'John', 'Murphy', 'Kennedi', 'Luisa', 'Darbyshire', '2023-09-26', 'Laki-laki', '6846 Kaleigh Freeway Suite 378\nFeeneytown, KY 31069', 2, 'O9mL2y3GZ1SgofVU', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(28, '546455', '+1.502.779.1902', 'piper36@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Neva', 'Mante', 'Freddy', 'Justine', 'Lake Bridget', '2002-08-17', 'Perempuan', '5743 Anabelle Cliff Suite 117\nSouth Stanton, CA 99611', 2, 'g0h3fKUCY3lw0Ycm', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(29, '486941', '+1.262.895.8191', 'iheaney@harber.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Athena', 'Kuhic', 'Celestino', 'Tiffany', 'Abeborough', '2011-08-29', 'Perempuan', '949 Roberts Estates Apt. 370\nAliviaport, OR 31476-8791', 2, 'fmZkDY1bDJTkTAML', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(30, '282453', '352.775.4237', 'verla.swaniawski@renner.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Noemie', 'Howell', 'Melvina', 'Edwina', 'Ernatown', '1993-06-12', 'Perempuan', '986 Koelpin Point Suite 792\nFordton, AK 20537-8353', 2, 'XfjsLWQzkBuFYUxE', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(31, '379224', '+1-445-847-0481', 'emiliano.gerhold@douglas.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jazmyne', 'Grimes', 'Brown', 'Jodie', 'New Coltenfort', '2023-01-16', 'Laki-laki', '4739 Bella Pike Apt. 881\nMaryberg, DE 66772', 2, '5NMAIoaT0Ch5sGe1', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(32, '570700', '864-413-3973', 'felix.schultz@hickle.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Clay', 'O\'Conner', 'Diego', 'Alda', 'Mrazfort', '2002-03-04', 'Perempuan', '486 Moore Street\nQuigleyfort, ND 86098-7736', 2, 'Z2VML0QhVJmzRZmz', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(33, '341211', '719-856-5274', 'hklein@farrell.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dangelo', 'Fahey', 'Royal', 'Adrianna', 'New Drakefort', '1987-02-26', 'Laki-laki', '318 Gillian Valleys\nStehrside, NM 77133-9089', 2, 'QPUjykNQrQlb44kd', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(34, '475890', '1-480-998-7698', 'tillman.halie@cronin.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Saige', 'Stoltenberg', 'Peyton', 'Nona', 'Wittingberg', '2024-04-20', 'Perempuan', '15792 Brown Glens Apt. 126\nPort Eltonmouth, AL 34176', 2, 'FJmQnKknYqTANkqc', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(35, '579268', '+1 (479) 440-8663', 'pwilkinson@williamson.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oswald', 'Jones', 'Keegan', 'Nelda', 'Guiseppehaven', '1976-04-15', 'Perempuan', '59883 Greenholt Brook Suite 436\nRowanshire, NY 20467-7912', 2, 'oQGTPwQYqOavqusd', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(36, '580757', '(478) 739-3498', 'makayla.veum@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gayle', 'Nolan', 'Sherman', 'Nettie', 'New Osvaldo', '2007-01-16', 'Laki-laki', '55455 Spinka Prairie\nWillmsfort, NV 24092-7557', 2, 'RQcmj0WEBYbdyRWz', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(37, '300905', '+1-580-337-6553', 'williamson.lane@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nikolas', 'Gerlach', 'Osvaldo', 'Elyssa', 'South Jedport', '2015-09-24', 'Laki-laki', '538 Abernathy Flats Suite 212\nFisherville, WA 71643', 2, 'lSWgt7nH3l4L2bkR', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(38, '217450', '(681) 591-1314', 'leif.ullrich@hane.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Laurie', 'Lebsack', 'Dawson', 'Emelie', 'New Ricoland', '1997-08-21', 'Laki-laki', '226 Rippin Dale\nGrimesview, KY 88958-8186', 2, 'ahGRHrCj3Anjinbm', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(39, '359373', '(682) 446-6122', 'arlene41@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Chris', 'Blanda', 'Eugene', 'Aubrey', 'Leuschkeview', '2007-07-23', 'Laki-laki', '692 Miller Plains\nPort Corineside, HI 74841-0523', 2, 'uDJCT8IrQQM4vqQc', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(40, '398863', '1-845-966-0206', 'krunolfsson@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brett', 'Cruickshank', 'Nolan', 'Bernadine', 'Lake Alvahshire', '2022-06-13', 'Perempuan', '39446 Giovanny Spurs\nPort Nona, NH 79927', 2, 'clPmnuugCPkqjQkC', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(41, '397011', '339.433.4163', 'thomas.okuneva@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Antwan', 'Renner', 'Orlando', 'Ayla', 'New Freddyfurt', '2021-01-19', 'Laki-laki', '2320 Jeanette Glen Suite 639\nKovacekville, TX 86768', 2, 'HSsALKnG1Ftf1cSo', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(42, '399320', '+1-323-417-6809', 'will.muller@dickens.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eveline', 'Dooley', 'Jarod', 'Angela', 'Hesterberg', '1989-09-20', 'Perempuan', '755 Little Harbors Apt. 981\nWest Bertchester, TX 26747-9579', 2, '2R5bHfISeh2KT0Pp', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(43, '221989', '+13855328002', 'ngraham@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cathryn', 'Terry', 'Terry', 'Bonnie', 'South Catharinechester', '2000-07-27', 'Laki-laki', '2908 Farrell Path\nSouth Hayleyview, NJ 72777-2488', 2, 'gHHq4o5mKDHJd3y7', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(44, '494855', '+1.703.618.8060', 'mkeeling@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Arlie', 'Kunze', 'Milford', 'Leta', 'East Althea', '2002-09-13', 'Perempuan', '155 Mylene Forges Suite 314\nSouth Daphneyland, OR 17864-6214', 2, 'SHZFcmQZo4tRRP5I', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(45, '578770', '909-689-7483', 'dickens.gunnar@heaney.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Robyn', 'Kreiger', 'Sonny', 'Alisha', 'Vanceton', '2022-01-30', 'Perempuan', '28812 Jaunita Hill\nEffertzshire, HI 72942-6363', 2, 'FgpkuvlzFd7XC5ph', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(46, '125270', '225.210.5888', 'emily03@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Chester', 'Nicolas', 'Tad', 'Vena', 'West Sigurdmouth', '1985-06-24', 'Perempuan', '70643 Vandervort Radial Suite 511\nPort Alfonzo, WI 40893', 2, 'lCgRTbQHgkUl02hr', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(47, '333241', '320.708.5170', 'leanne.little@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kyra', 'Farrell', 'Leon', 'Hallie', 'Bryonshire', '2010-03-20', 'Laki-laki', '22423 Franecki Stream Suite 613\nHyattland, CT 91697', 2, 'o5PsNQ7SydY65Fyu', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(48, '220122', '+19102014167', 'samir.kuhn@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Michale', 'Christiansen', 'Gregg', 'Dorothy', 'North Reynold', '2003-08-02', 'Perempuan', '83278 Lynch Estate Suite 241\nSanfordhaven, CT 46238', 2, 'HzDZgCZ1iaD9qxwB', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(49, '592642', '878-850-5947', 'kziemann@bradtke.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Izaiah', 'Will', 'Ulises', 'Destini', 'Tedshire', '2001-12-29', 'Laki-laki', '576 Conn Corner Suite 649\nPort Anyafort, MS 26909', 3, 'KHdu2gvFzScmfpYo', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(50, '301944', '1-831-619-1217', 'tony86@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zelma', 'Cronin', 'Mathew', 'Emilie', 'Beattybury', '2017-03-24', 'Perempuan', '11261 Stehr Ports\nLabadieside, NE 38195', 3, 'VbsO2rpONUtKCGTM', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(51, '392398', '407-825-4920', 'boreilly@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cleveland', 'Boyer', 'Max', 'Margaret', 'Isomland', '1980-04-18', 'Perempuan', '1058 Taryn Knoll\nEast Modestoland, MS 53951', 3, 'K3nPJcmJUAyb5sQI', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(52, '589787', '+1 (442) 263-6259', 'elittle@skiles.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kim', 'Turner', 'Carlo', 'Bettye', 'Port D\'angelo', '2006-10-06', 'Laki-laki', '75711 Bins Garden\nWest Bethel, MI 67685-4470', 3, 'MDPChX3jIvOFMe0O', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(53, '414292', '562.478.8479', 'bode.opal@bartell.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Maryam', 'Runolfsson', 'Koby', 'Annette', 'Ryanfurt', '1993-01-31', 'Perempuan', '9843 Abbott Park Suite 986\nNorth Madalynland, VA 91316-1876', 3, 'hjMp5gqExoL0jkVr', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(54, '235421', '972.448.9989', 'norris74@kunze.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Emanuel', 'Jast', 'Jerome', 'Sallie', 'Carlosland', '2014-07-06', 'Perempuan', '353 Elisa Canyon\nLake Violette, NV 91518-1584', 3, 'WfFszrjVTX8Lvl4o', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(55, '379767', '(757) 364-6846', 'yquitzon@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Shaylee', 'Waters', 'Nicolas', 'Rae', 'Port Lauriane', '2006-01-15', 'Laki-laki', '9777 Susie Drive\nBlockborough, AL 49278-9072', 3, 'CBCTZUpO8jSL5cnF', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(56, '406765', '480.520.7343', 'isai58@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alexandria', 'Mertz', 'Kristopher', 'Shyann', 'East Nonaview', '2015-11-10', 'Perempuan', '3441 Crooks Fords\nSchowaltertown, OH 96054-2679', 3, 'QyIplTK5BWA6sqBb', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(57, '481513', '(320) 826-6735', 'velva.roberts@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tressie', 'O\'Kon', 'Deshawn', 'Brittany', 'Verdiemouth', '2023-06-11', 'Perempuan', '2069 Bernhard Plains\nStokesview, MO 38249-1439', 3, '7Hob6EQ9AxcRKfL3', '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(58, '207456', '872-479-2881', 'utorp@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Freddie', 'Haag', 'Hector', 'Reta', 'East Marcelinochester', '1993-07-16', 'Laki-laki', '8988 Klocko Dale\nNew Oliver, KS 18116-2390', 3, 'XsNR03XaxZBnvF9z', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(59, '376147', '442.795.8727', 'judd.okuneva@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Annalise', 'West', 'King', 'Leda', 'Thaliachester', '1982-03-07', 'Perempuan', '9890 Herman Vista Suite 847\nSouth Laneyburgh, KY 31041', 3, 'cUS0mXesJ5VA53ho', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(60, '175055', '667-360-8174', 'akerluke@hudson.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Violet', 'Greenfelder', 'Dane', 'Christine', 'Feilfurt', '2006-05-19', 'Laki-laki', '16353 Chasity Shoals\nCotymouth, MA 80206', 3, 'iiBB0ONED53JUQJN', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(61, '440174', '+12056431281', 'cormier.bruce@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leonor', 'Runte', 'Hugh', 'Kiara', 'Marcosmouth', '2012-09-24', 'Perempuan', '4338 Constance Corners\nJohnsville, TX 25813', 3, 'CUoslYSQQlQbICaR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(62, '595428', '1-828-764-1964', 'vlangworth@pfannerstill.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Juanita', 'Shanahan', 'Donavon', 'Arlene', 'New Marilyne', '1974-10-31', 'Laki-laki', '874 Pollich Inlet\nWhiteview, CA 41435', 3, 'nnWH8fR9ddLYVKhg', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(63, '384496', '917.727.2015', 'bednar.kylee@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Norene', 'Ryan', 'Johan', 'Telly', 'East Clementineborough', '1975-04-16', 'Perempuan', '26671 Lesch Inlet\nJustenview, CA 64125', 3, 'cdNk2rRHKKugtGx4', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(64, '284262', '(810) 648-8416', 'amiya82@legros.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tyrell', 'O\'Kon', 'Brandt', 'Jaquelin', 'Port Elisabethmouth', '1998-08-21', 'Perempuan', '8320 Queen Glens Suite 040\nPort Javonberg, NC 13156', 3, '5XKL5Hmd6T17qzVq', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(65, '233645', '+1-423-222-7371', 'xswaniawski@haag.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rebecca', 'Huel', 'Humberto', 'Reta', 'South Napoleonstad', '2021-12-23', 'Laki-laki', '95204 Harvey Greens Suite 978\nNorth Demetriuschester, NY 91842', 3, '5aHli2igTrkRQWC8', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(66, '199336', '+13469218403', 'mckayla77@bernhard.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lauriane', 'Wiza', 'Jermain', 'Bailee', 'Isacmouth', '2001-10-10', 'Laki-laki', '903 Koch Highway Apt. 702\nLake Vicenta, NM 78728-4343', 3, 'wdwKO2XstGKHHdUt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(67, '307070', '224.921.2382', 'sophia.doyle@hintz.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Llewellyn', 'D\'Amore', 'Candelario', 'Meggie', 'Port Dedric', '1996-04-06', 'Perempuan', '8680 Marvin Island Apt. 928\nMayertland, WA 98575', 3, '15wiOcWxYgGYZvWe', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(68, '452609', '+15592077319', 'warren.thompson@turner.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Maya', 'Mertz', 'Ransom', 'Melissa', 'South Elda', '2010-11-17', 'Perempuan', '67294 Celestino Club\nRobertsville, CO 56956', 3, '4c4l4gUyswcNMowR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(69, '403576', '360.254.4574', 'herzog.celine@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lacey', 'O\'Kon', 'Werner', 'Ella', 'Josechester', '1970-04-14', 'Laki-laki', '4463 Joan Court\nEast Titus, AZ 94600-2562', 3, 'wzFsvSZYDMro1f4o', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(70, '236288', '(954) 213-6081', 'bveum@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lola', 'Mueller', 'Geoffrey', 'Kelsi', 'Kennediville', '2019-04-25', 'Laki-laki', '97799 Gibson Island\nLake Rosario, CA 81952', 3, 'yHodqcJnDNKFeMDM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(71, '579929', '1-870-365-3524', 'gibson.audreanne@schuppe.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Heidi', 'Oberbrunner', 'Maxime', 'Reina', 'North Conor', '1989-11-30', 'Perempuan', '316 Tremblay Walk Apt. 310\nRodrigueztown, NY 31436-9359', 4, 'N0lXotE1MMZX8mQ1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(72, '531432', '+1.623.613.0472', 'lglover@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rose', 'Legros', 'Cedrick', 'Fanny', 'South Zoey', '1975-09-18', 'Perempuan', '80635 Collins Underpass\nConstantinbury, NV 83320-6324', 4, 'FttvcE13YRkig9Q8', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(73, '426688', '408.404.7314', 'chasity36@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Henri', 'Kuhn', 'Brannon', 'Marisa', 'Shieldsville', '1989-04-15', 'Perempuan', '4640 Torphy Court\nNew Jaycee, KS 18489-9818', 4, 'uY3MdO6pmBe2TfIr', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(74, '304994', '+1-726-827-1083', 'laura.emard@bailey.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Paolo', 'Kshlerin', 'Sebastian', 'Geraldine', 'Labadiestad', '1973-10-24', 'Laki-laki', '80655 Padberg Club\nSouth Tatyanachester, MT 23903-8820', 4, 'ALbfHvaEo1NMCija', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(75, '111622', '+1 (737) 370-4391', 'xspencer@fay.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sabryna', 'Rice', 'Sedrick', 'Blanche', 'Konopelskimouth', '2008-12-25', 'Perempuan', '6780 Emmerich Stravenue\nLake Leximouth, MA 77405-7680', 4, 'aoRtzuHOQZr1ehk0', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(76, '509985', '+14583324904', 'aylin04@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Talia', 'Larson', 'Zion', 'Margaretta', 'Watersfurt', '2014-12-01', 'Perempuan', '872 Christian Isle\nAdamsfurt, IA 74611-5868', 4, 'u4u6SKa99LQwdous', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(77, '287066', '+1.312.667.2942', 'faustino62@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leonie', 'Ortiz', 'Edward', 'Zena', 'Taraburgh', '1978-06-03', 'Perempuan', '9902 Legros Run Apt. 356\nPietrobury, HI 05157', 4, '3a8lC5ls9GPGX5P8', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(78, '111789', '+1-414-594-6654', 'beahan.mayra@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nathanael', 'Marquardt', 'Irwin', 'Eliane', 'Lake Dawson', '2010-02-08', 'Perempuan', '62671 Kunze Courts Suite 874\nLarrytown, MT 27285', 4, 'cGvvAgNaLZmfFP31', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(79, '325808', '+1.906.530.3506', 'aurelio56@predovic.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Estelle', 'King', 'Hailey', 'Francesca', 'Kshlerinberg', '1982-06-08', 'Perempuan', '63259 Schuppe Stravenue\nCorkeryton, KY 65121-9695', 4, '3iRxYlH06yK33zwX', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(80, '509521', '(361) 754-4367', 'jeanette59@jacobi.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Evans', 'Harber', 'Harley', 'Heath', 'Felicialand', '2015-06-16', 'Laki-laki', '37874 Goyette Squares\nWilliamsonton, KS 31919', 4, '2EUMWWGpepEeKQBj', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(81, '473404', '617.257.5112', 'genesis.shanahan@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Prince', 'Ziemann', 'Monserrate', 'Autumn', 'Cristopherview', '2011-10-21', 'Perempuan', '7260 Schinner Viaduct Apt. 810\nEugenialand, CA 38975-0108', 4, 'S6W1d43Fe20tw6ew', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(82, '171742', '+14804818688', 'nicolas.jermaine@thompson.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nakia', 'Crooks', 'Zachary', 'Madonna', 'Koelpinfort', '2001-11-23', 'Perempuan', '79360 Karolann Center Apt. 502\nLake Brad, WI 80400-8663', 4, 'sZX6DyLgI9BwU9CK', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(83, '384611', '860.480.2813', 'marquis37@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Evan', 'Kling', 'Koby', 'Marilou', 'Gorczanyfort', '1973-07-30', 'Laki-laki', '972 Estrella Circle Suite 042\nHagenesborough, KS 39939-0825', 4, 'LLZzzDIOb7sJ74En', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(84, '273987', '1-520-519-7399', 'zackary39@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rasheed', 'Gorczany', 'Hudson', 'Alene', 'Khalidton', '1998-07-12', 'Perempuan', '18171 Lisette Courts\nHiltonshire, ME 95791', 4, 'zuknmDZ0UozrrCtx', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(85, '185435', '+1.239.331.0627', 'wanda.sauer@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Judson', 'Hettinger', 'Izaiah', 'Susanna', 'South Maryam', '1992-08-12', 'Perempuan', '2116 Rodriguez Corners Apt. 850\nPort Granville, ND 97978-8795', 4, 'xyOjZ3AohjXth4GB', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(86, '382731', '(870) 630-8334', 'aframi@bogan.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wendell', 'Torp', 'Donald', 'Lesly', 'Lake Lexus', '1976-03-26', 'Perempuan', '949 Pablo Manor Apt. 135\nMisaelfurt, AK 21424', 4, 'p1Alx9ubPkZcO4jt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(87, '276708', '+1.404.416.3739', 'treutel.kale@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Daniela', 'Lockman', 'Lance', 'Daisha', 'Windlerside', '2010-10-19', 'Laki-laki', '425 Alvera Walk\nSouth Ambrose, WV 53321', 4, 'Q5j4BehxVdIVSKZ4', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(88, '380349', '(281) 960-7323', 'anya17@beahan.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Imani', 'Considine', 'Waino', 'Kellie', 'West Karleymouth', '2004-04-24', 'Laki-laki', '68567 Claud Valley Apt. 877\nStokesland, IN 47303-0097', 4, 'FKbZ0pj83pCuIG0i', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(89, '489590', '803.591.8424', 'pfeffer.grady@grimes.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sabrina', 'Waelchi', 'Ross', 'Glenna', 'Kuhlmanborough', '1989-06-14', 'Perempuan', '7860 Nikolaus Forges\nNorth Janieton, WI 41751', 4, 'LDYXWKYbh0u7OS7y', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(90, '560820', '+1-541-669-4967', 'xoconnell@russel.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hassan', 'Koss', 'Clifton', 'Earlene', 'West Einarville', '1998-03-17', 'Perempuan', '576 Rutherford Skyway Suite 422\nKatarinaland, IN 28709', 4, '0IkFD3E46lVrKuBA', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(91, '401838', '+1 (559) 606-8871', 'watsica.delphia@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tania', 'Bartell', 'Magnus', 'Josianne', 'Johnsonhaven', '1972-01-25', 'Perempuan', '566 Charles Haven Apt. 897\nJanettown, WY 62452-6629', 4, 'V9i4FVeAiR6iS7Hg', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(92, '468906', '941.723.8343', 'yasmine20@pagac.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kiara', 'Weissnat', 'Vladimir', 'Otha', 'West Amosview', '1970-06-20', 'Laki-laki', '2441 Roselyn Locks Suite 184\nNew Jacklynmouth, NH 59515', 5, 'HciqjRcZdxAHWEbR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(93, '522517', '458-867-1772', 'wilbert37@torphy.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jerald', 'Haley', 'Quinn', 'Karina', 'Hannahmouth', '1998-10-12', 'Laki-laki', '78824 Hauck Turnpike Suite 602\nPort Dennis, IN 53566', 5, 'Y7GDhthcNAzn6DWO', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(94, '437626', '+1-678-345-7393', 'hagenes.kody@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Crystal', 'Corkery', 'Carey', 'Christy', 'Thealand', '2007-02-06', 'Perempuan', '75643 Cole Isle\nPredovicton, IA 67745-6348', 5, 'xs9wsWvLvuZIDRmE', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(95, '576489', '+1.602.997.5948', 'smith.rosemary@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ulises', 'Welch', 'Frank', 'Olga', 'Roobton', '1999-10-08', 'Laki-laki', '434 Goldner Square\nEast Annie, WV 84353', 5, 'LAaEfpbKovLDuvMg', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(96, '317102', '(947) 240-3750', 'candace.mclaughlin@hauck.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alejandra', 'Mohr', 'Micheal', 'Destini', 'East Masonstad', '1976-12-23', 'Perempuan', '456 Austyn Avenue\nNorth Milton, ND 29899', 5, 'fCEy0OyDLuWMYJ6u', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(97, '164105', '+16362531897', 'terrill80@mayer.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jocelyn', 'Kub', 'Gordon', 'Adell', 'Welchview', '1995-09-29', 'Perempuan', '88663 Dale Port\nCarterfurt, WA 59246', 5, 'DR5AQHoPlv3YYfei', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(98, '570817', '540.827.3064', 'uwitting@ryan.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tressie', 'Walker', 'Warren', 'Mable', 'South Keatonmouth', '1984-09-06', 'Perempuan', '6758 Daugherty Branch Apt. 674\nChamplinstad, MI 12621-6495', 5, 'B7J0zL83NJesEWRl', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(99, '238938', '+15596238780', 'oleta.russel@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Marie', 'Yundt', 'Liam', 'Valerie', 'East Alanaview', '2002-12-07', 'Laki-laki', '775 Aubree Heights\nRansomshire, NC 96573-5151', 5, '4YanLY9wvoQxBIkJ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(100, '305146', '1-386-360-1233', 'jaquan.wintheiser@wisoky.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Velva', 'Zemlak', 'Oren', 'Queen', 'Nilsmouth', '1984-12-26', 'Laki-laki', '1933 Nader Stream\nLake Caleighshire, MD 52932-0122', 5, 'xRr8OF23t6d9uWSL', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(101, '404762', '1-816-801-4648', 'lauren.goldner@dooley.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Marisa', 'Gutkowski', 'Jamal', 'Angelica', 'North Hillardfort', '2021-08-15', 'Perempuan', '225 Swift Forest\nElvaberg, PA 65466', 5, 'Dxj0WMxdKpsaWO7V', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(102, '586342', '+1-508-721-0008', 'austyn02@kutch.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Joseph', 'Jenkins', 'Amos', 'Danika', 'East Deion', '1983-07-28', 'Perempuan', '31987 Reilly Shoal\nSalvadormouth, AK 09489-8829', 5, 'sjpJ3RB6ag7Alcgt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(103, '106680', '518.472.1788', 'cbashirian@miller.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Arvilla', 'Schiller', 'Davonte', 'Leta', 'O\'Keefebury', '1994-02-23', 'Perempuan', '297 Chyna Ferry\nHoppemouth, UT 95771-0333', 5, 'NNpVlAjcH4tBpWoo', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(104, '595025', '(606) 430-6904', 'efahey@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dorothy', 'Cartwright', 'Bryon', 'Vicky', 'Carterchester', '1994-05-05', 'Perempuan', '20805 Windler Orchard\nRaynorberg, TN 92677-7993', 5, 'w14zvBT9kSEF8LuY', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(105, '181293', '+19492498762', 'ida.little@daniel.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Autumn', 'Abbott', 'Rosendo', 'Caitlyn', 'Port Juston', '2016-03-16', 'Laki-laki', '5233 Jacobson Spurs Apt. 208\nStehrside, CO 58387-4080', 5, 'mzP8ZFbZTrk8nZr1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(106, '351813', '+1-351-229-3442', 'colby86@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Conrad', 'Collier', 'Leon', 'Dolores', 'Garrisonport', '1985-03-09', 'Laki-laki', '625 Yundt Terrace\nFerryville, OK 65505', 5, 'J7BHeQbs729xGJRd', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(107, '215188', '1-570-660-9925', 'ntoy@weimann.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Theodore', 'Brekke', 'Newell', 'Zella', 'Port Nettiefort', '2016-05-21', 'Perempuan', '210 Yost Roads Suite 474\nZemlakville, AZ 24647', 5, 'tZDZ3htAYTWdJ9wN', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(108, '576461', '(445) 930-1899', 'igerlach@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Antwan', 'Feil', 'Darrick', 'Karli', 'North Riley', '2017-10-18', 'Laki-laki', '3752 Spinka Prairie Suite 743\nBergstromstad, KY 16969', 5, 'QKHyEpj68UXKc39y', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(109, '329324', '(248) 590-3398', 'denesik.nelson@schaden.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Carlotta', 'McDermott', 'Dillon', 'Brisa', 'New Elva', '2011-08-19', 'Laki-laki', '7003 Ellis Center Suite 168\nPort Ignatiusport, LA 61361-9371', 5, 'JmfByym3bi22b7Wt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(110, '258159', '+1-667-990-3296', 'wilbert57@lang.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lemuel', 'Murazik', 'Alex', 'Esmeralda', 'Boyerborough', '1990-04-27', 'Perempuan', '555 Alexandrine Islands Apt. 219\nMadelinetown, CA 68746-9166', 5, 'g7vUdyhEl3qXNVlj', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(111, '195495', '+1-770-803-6478', 'agustin.mcdermott@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jena', 'Denesik', 'Kurt', 'Cali', 'Lubowitzbury', '2001-11-18', 'Laki-laki', '868 King Plains Suite 414\nJacobiport, TX 53554', 5, 'lGQQwzoyFDb3sIFV', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(112, '262401', '+1.641.289.1882', 'hegmann.carmen@wiza.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ayden', 'Padberg', 'Julio', 'Maybell', 'Watsicaside', '2021-09-30', 'Perempuan', '461 Cartwright Fields\nMertzfort, FL 22427', 5, 'JhD5mjlWE1ohC5Tg', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(113, '275990', '231.238.6875', 'scarlett.roberts@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Micah', 'Fay', 'Paolo', 'Ashlynn', 'Wymantown', '1991-10-24', 'Laki-laki', '926 Dietrich Meadow Apt. 090\nWest Zita, TX 03613-6379', 5, 'JhwBRogmkm8L2RWT', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(114, '575223', '(479) 836-9185', 'maybell.kassulke@rice.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mathew', 'Spinka', 'Arlo', 'Dena', 'Huelland', '1979-07-02', 'Laki-laki', '5915 Hackett Villages\nNorth Hailey, AR 33408', 5, 'sKGnq7zTYGpXns9z', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(115, '472053', '859.732.8319', 'ykris@hane.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tess', 'Rempel', 'Rowan', 'Samara', 'Feestmouth', '1992-07-05', 'Laki-laki', '32231 DuBuque Ports Suite 869\nNew Okeyburgh, NJ 15629-1944', 5, 'vbItDk3VSoKbo1JA', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(116, '352361', '1-850-779-6588', 'wintheiser.stephania@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Naomie', 'Steuber', 'Amos', 'Christelle', 'South Hortense', '1988-01-13', 'Laki-laki', '96460 Jermey Prairie\nNorth Rexfurt, CT 31088', 5, 'ObZGhCbFTl68LNd5', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(117, '307724', '1-469-257-3209', 'elwyn.emmerich@corwin.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Marian', 'O\'Kon', 'Jaeden', 'Lisette', 'South Mandyton', '2009-01-30', 'Laki-laki', '459 Leon Cove\nNew Hazleberg, ME 57705-7276', 5, 'mBhveXEddjN9EojI', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(118, '415066', '+1 (574) 522-5230', 'legros.maxime@hagenes.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Minnie', 'Collier', 'Owen', 'Julie', 'Muellerport', '1971-10-06', 'Laki-laki', '8557 Medhurst Unions\nBernierfurt, ND 53445', 5, 'dqEeR1IVURsQAICN', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(119, '551469', '+1-817-838-9545', 'elyssa.nicolas@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jayne', 'Stoltenberg', 'Jeromy', 'Bulah', 'Madieview', '2008-01-19', 'Perempuan', '85044 Susanna Trail\nKeelingchester, MA 30829', 6, 'H5XyXg3BojuvzMiq', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(120, '441948', '(283) 829-4667', 'efren98@conroy.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fabian', 'Stokes', 'Tyrel', 'Tianna', 'Lake Henrichester', '1972-12-26', 'Perempuan', '905 Quitzon Key Suite 187\nDamarisberg, KS 11472', 6, 'Czw0ma55LQjopkQC', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(121, '571061', '+1 (680) 976-9386', 'fmitchell@robel.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sandrine', 'Howe', 'Jett', 'Meda', 'Lubowitzton', '1996-07-02', 'Perempuan', '854 Annie Canyon Suite 304\nJosianeview, DC 24629', 6, 'kDbxY8dxiDyucx06', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(122, '112027', '901-963-7810', 'dmueller@reynolds.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aglae', 'Goldner', 'Alfredo', 'Elyse', 'Deltaburgh', '2015-04-27', 'Laki-laki', '300 Hermiston Rest Suite 918\nKarleytown, CA 15717-5211', 6, 'Dk8BKNVemzAV5e8e', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(123, '365929', '+1.435.879.2306', 'gwen67@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Charity', 'Hamill', 'Ewell', 'Dorris', 'Aimeemouth', '1997-09-15', 'Perempuan', '116 Fay Neck\nClintonchester, OK 97828-1682', 6, 'm0rkqJgm7xYGcOij', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(124, '538743', '458-823-9816', 'dframi@mclaughlin.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pasquale', 'Ruecker', 'Ewald', 'Graciela', 'North Lorna', '2020-09-19', 'Perempuan', '2905 Karson Garden Apt. 099\nEast Georgianna, MS 87214', 6, 'hOVnL7GQbwjdlzIW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(125, '252811', '1-220-455-6226', 'keebler.oswaldo@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Milan', 'Kozey', 'Justus', 'Malika', 'Florencehaven', '2006-05-10', 'Perempuan', '1075 White Causeway\nMcGlynnport, TX 30737-8836', 6, '3v5TCqVxERXJIDxW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(126, '433195', '+1 (662) 298-4545', 'mellie68@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cristian', 'Watsica', 'Larue', 'Noemie', 'Dickinsonland', '2007-02-26', 'Laki-laki', '796 Runte Tunnel Apt. 807\nRoobstad, OH 52564-7075', 6, 'CnckJAf5RLfINJrj', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(127, '538236', '(812) 933-7300', 'mack10@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Carolyn', 'Huels', 'Judah', 'Dariana', 'Lake Georgeview', '2021-02-10', 'Perempuan', '34574 Marc Grove\nLake Alejandrin, MS 71979-5580', 6, 'PF1s2qeOdVINySh7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(128, '128767', '+16892898473', 'ygaylord@aufderhar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dell', 'Homenick', 'Ralph', 'Catalina', 'West Jordiview', '2006-03-01', 'Laki-laki', '85968 Calista Passage\nNorth Jazmynport, NE 16364-1468', 6, '7LvcuAwRV2VPcKb4', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(129, '475291', '1-402-558-3694', 'slarkin@kreiger.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Idell', 'Donnelly', 'Timmothy', 'Jenifer', 'Pfefferborough', '2016-04-14', 'Laki-laki', '7733 Koelpin Road Apt. 764\nMcGlynnton, NC 12955-3243', 6, 'yTrnAMnIFiO8qvB7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(130, '555780', '650.764.1652', 'nova.homenick@dach.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Darryl', 'Mann', 'Jeffry', 'Delphia', 'Port Eulahburgh', '1983-04-25', 'Perempuan', '43316 Connelly Oval Apt. 005\nPeteberg, NM 91071-9841', 6, 'Gp4YKfoDVHSM8g2s', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(131, '430999', '+1-352-365-3937', 'zulauf.rene@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Luz', 'Bednar', 'Berry', 'Betty', 'Skilesstad', '1997-02-01', 'Laki-laki', '6905 Wolff Keys\nMillerfurt, AZ 49550-1045', 6, 'tP3rLzdJ8vM2WKub', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(132, '301281', '+1-765-670-7627', 'lon.hoppe@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Verda', 'Gorczany', 'Elbert', 'Mylene', 'East Auroreside', '1981-03-09', 'Perempuan', '71659 Murphy Course Apt. 886\nLake Ulises, AL 04061', 6, 'vA86aMd2H5KIYzCb', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(133, '119320', '913-726-6207', 'ubaldo.hill@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Iliana', 'Waters', 'Jonatan', 'Muriel', 'Lake Cristopher', '1983-03-13', 'Perempuan', '3817 Stokes Expressway\nBrownmouth, DE 50317-4704', 6, 'nghF2XvIMeGOI7rC', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(134, '555268', '708.859.3632', 'sritchie@hodkiewicz.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eli', 'Bernhard', 'Sherman', 'Janet', 'Hermanport', '2004-11-06', 'Perempuan', '1676 Salvador Loop Suite 991\nLake Shannon, NV 02794', 6, '7ZMXNpFyW0RTAJvn', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(135, '301352', '740-523-1997', 'sadie.williamson@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tyson', 'Gerhold', 'Aron', 'Talia', 'Lake Aldaville', '1997-10-25', 'Perempuan', '4008 Casper Ferry\nFayeville, OH 81241', 6, 'FYWbSaDlfXYkjTY5', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(136, '185893', '(773) 899-3263', 'carolanne55@mueller.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alana', 'Labadie', 'German', 'Opal', 'Bogisichhaven', '1994-04-08', 'Laki-laki', '2221 Kshlerin Road\nPort Darby, VT 33777', 6, 'OjnYwWmNk3S0TuGq', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(137, '450298', '612-778-5788', 'meagan15@gislason.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kobe', 'Konopelski', 'Orville', 'Oma', 'West Nelson', '1987-07-04', 'Laki-laki', '98463 Donavon Forest\nCorkeryview, OH 34367-0862', 6, '2T30bmEe5tIeDC1z', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(138, '300049', '(806) 253-4924', 'holly.raynor@hermann.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dallas', 'Murray', 'Torey', 'Mellie', 'Dooleytown', '2001-09-14', 'Laki-laki', '9772 Kris Lake\nAnkundingfort, NV 43944', 6, 'cP9ayIBuxuF5H0op', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(139, '575399', '520.542.0209', 'yadira.schultz@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Percival', 'Waters', 'Sim', 'Mozell', 'Port Alice', '1997-12-15', 'Laki-laki', '305 Gabriella Fords Apt. 728\nWest Bret, SD 72346', 6, '9vzRIj2TROmIRQIP', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(140, '600586', '+13527734286', 'schmitt.carlotta@leannon.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Shemar', 'Koch', 'Loy', 'Viviane', 'North Alexandriahaven', '1997-09-18', 'Perempuan', '40421 Glenda Green\nEast Kenton, LA 13968', 6, '8ygY3UGfGWun8VxF', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(141, '323383', '+1.430.563.3430', 'srau@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Berry', 'Gutkowski', 'Toy', 'Loyce', 'East Gusfort', '1983-04-29', 'Laki-laki', '164 Pagac Brooks Apt. 851\nHeidenreichmouth, ID 35617', 6, 'HktteR8jox37cfkF', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(142, '530366', '1-951-999-1725', 'sstrosin@zieme.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Summer', 'Koss', 'Emiliano', 'Ollie', 'West Bradenbury', '1982-12-20', 'Laki-laki', '2906 Arthur Club Suite 473\nNew Archbury, CA 92589', 6, '3Aroh0cNMYC0eJL0', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(143, '487733', '860-339-6468', 'dthiel@kunde.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Karelle', 'Okuneva', 'Doyle', 'Iliana', 'New Ollie', '2008-06-12', 'Laki-laki', '9232 Little Views Suite 745\nAnkundingchester, AK 87586', 6, 'j7LmOCD7hxi3GRo4', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(144, '250306', '+14636468845', 'oconsidine@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rory', 'Schuppe', 'Tyrel', 'Vena', 'Hipolitoburgh', '1997-12-23', 'Laki-laki', '872 Trycia Orchard Apt. 235\nBoyerport, CT 18627', 6, 'h147sTgIAuUFdryI', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(145, '409753', '+14109840147', 'lbrown@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leilani', 'Koepp', 'Alexis', 'Tianna', 'Javontemouth', '1979-01-02', 'Laki-laki', '202 Anibal Key\nNew Ephraimton, KY 84882-5135', 6, 'hlC0CtWNUjbM73xZ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(146, '360550', '+1-901-896-0288', 'cummerata.murray@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Norris', 'White', 'Kyle', 'Letha', 'Port Claireburgh', '2016-06-03', 'Perempuan', '7578 McLaughlin Harbors\nWest Laron, KY 20408', 7, 'h6SUkU5pskLBXFbd', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(147, '552634', '904-203-1239', 'marks.nyah@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Frances', 'Kuphal', 'Trevion', 'Samanta', 'Pourostown', '2010-06-12', 'Perempuan', '5135 Wunsch Crossroad Suite 627\nKuvalisbury, MS 13237-5179', 7, 'kYBztvdQU5RIDKC9', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(148, '392779', '+1.307.970.8798', 'ewolf@gibson.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bryon', 'Thiel', 'Reilly', 'Savanna', 'New Madie', '2006-05-16', 'Perempuan', '3091 Paucek Garden Apt. 761\nElianeville, TN 25830-6076', 7, 'GMi4U0U7JVrdMOcX', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(149, '393181', '1-479-281-3562', 'ruecker.tracey@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Torrance', 'Ratke', 'Brett', 'Laila', 'West Jannie', '2011-12-08', 'Perempuan', '91939 Wehner Course Apt. 226\nUniquemouth, VT 89311-5179', 7, '9jI6cJOKjWRhrbjB', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(150, '500611', '323-994-8961', 'adell11@bailey.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Estrella', 'Walsh', 'Alejandrin', 'Sylvia', 'Susieside', '1971-06-08', 'Perempuan', '3146 Sporer Shore Suite 452\nSidneyhaven, PA 80161', 7, 'bQDyiCKK6NLcHT0i', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(151, '146851', '(267) 908-9283', 'sebastian.reynolds@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sigurd', 'Cummerata', 'Austyn', 'Anais', 'East Rae', '1996-05-11', 'Laki-laki', '937 Casey Estates\nPort Delphaside, WA 92427-0824', 7, '2Jr2yEzlRmY3oJGk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(152, '505836', '+1-918-632-8444', 'hannah98@hamill.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Beaulah', 'Hudson', 'Edwin', 'Patricia', 'Parisianmouth', '1993-10-15', 'Perempuan', '93810 Cecelia Burgs\nSouth Beatrice, HI 64277-4185', 7, 'TcPUpnoAQGZsMqwT', '2025-05-14 16:58:20', '2025-05-14 16:58:20');
INSERT INTO `siswas` (`id`, `nis`, `phone`, `email`, `password`, `firstName`, `lastName`, `namaAyah`, `namaIbu`, `tmpLahir`, `tglLahir`, `jnsKelamin`, `alamat`, `kelas_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(153, '143609', '484-604-8462', 'donna62@hamill.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Maida', 'Klein', 'Rocio', 'Arlie', 'South Lindseyland', '2018-05-09', 'Perempuan', '801 Bergstrom Wells\nDallintown, IL 85274-8084', 7, 'HHZEWbYDGm4svAFU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(154, '158047', '+1-901-540-0094', 'dwisozk@aufderhar.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Paula', 'Erdman', 'Johann', 'Christine', 'Gisselleland', '2010-07-20', 'Laki-laki', '614 Reynolds Vista Apt. 248\nNew Rafaelmouth, AZ 32233-3616', 7, 'P3F3EYtZEa0yvHTc', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(155, '343949', '1-531-345-5252', 'ybatz@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Petra', 'Kohler', 'Bryce', 'Nya', 'Lake Amaya', '1977-08-04', 'Perempuan', '534 Elfrieda Station Suite 877\nWiegandland, PA 81255', 7, 'xYGq346flKQyks6W', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(156, '156799', '1-352-838-3144', 'kohler.matilde@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alford', 'Nikolaus', 'General', 'Ebony', 'Zulachester', '1983-04-01', 'Perempuan', '7674 Stamm Gardens Apt. 599\nAriburgh, AL 10164', 7, 'hgRRHyy0zUsxAEOA', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(157, '390194', '678.964.9623', 'pouros.micaela@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rosa', 'Beer', 'Mohammed', 'Cassandre', 'Hahnville', '1981-09-25', 'Laki-laki', '61908 Turner Mall Apt. 368\nWest Bruceshire, OK 35762-0884', 7, 'E1YquN70H8WWqDR5', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(158, '418830', '870-983-6142', 'consuelo50@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Stanford', 'Abernathy', 'Sherman', 'Joy', 'East Lacymouth', '2009-05-31', 'Laki-laki', '31370 Lottie Crescent Apt. 393\nNew Georgiannaside, HI 16991', 7, 'qOlXNHALabWSFiTk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(159, '481014', '+1.971.263.8937', 'chesley.ziemann@spencer.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Joyce', 'Schowalter', 'Colin', 'Alexandrea', 'New Jed', '1987-01-25', 'Perempuan', '808 Colin Summit\nGersonmouth, DC 62846', 7, 'BEJGuTZlPCXPWgQU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(160, '530025', '747-404-8763', 'ftillman@steuber.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dean', 'Lebsack', 'Dwight', 'Alysson', 'Erynton', '1977-11-27', 'Perempuan', '328 Elissa Shore Suite 088\nBogisichborough, SD 02747', 7, 'Z3AIvuGmwCQstGpm', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(161, '377465', '+1.231.821.4818', 'george05@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jayde', 'Robel', 'Clemens', 'Elda', 'South Rocioton', '1987-03-04', 'Laki-laki', '15701 Lockman Islands\nNew Zelma, NJ 60795-7118', 7, 'PpA4oOMILSInU20J', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(162, '601169', '1-251-860-6693', 'hhalvorson@conroy.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Chad', 'Simonis', 'Isadore', 'Anna', 'New Jadynport', '1997-01-24', 'Perempuan', '6893 Dewayne Lake Suite 352\nNorth Violet, PA 05312-5505', 7, 'rNcREy3Yhh4yzwG6', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(163, '196096', '+1-774-326-6300', 'abe.wolff@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Susan', 'Baumbach', 'Deshawn', 'Verdie', 'New Jamarhaven', '2011-02-19', 'Laki-laki', '767 Koch Gardens Apt. 432\nReeseburgh, MO 26739', 7, 'YXU5V4EtzUTHjFJS', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(164, '296078', '+12537579917', 'reichert.gaston@bartoletti.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Molly', 'Heathcote', 'Jamir', 'Kristin', 'Quigleyfort', '2019-10-22', 'Laki-laki', '633 Clay Groves Apt. 235\nChristburgh, CA 40797-0050', 7, '6YoNvxg2m1Yauhwa', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(165, '399846', '+1-610-501-5652', 'charlie.wiegand@farrell.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Elaina', 'Watsica', 'Orville', 'Cleora', 'Elianhaven', '1978-01-14', 'Laki-laki', '49566 Kyle Pine\nNew Ethel, LA 33420-6783', 7, '00LUfJ6V1fn9SlYf', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(166, '277824', '(734) 610-6447', 'polly57@abshire.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Luz', 'Hills', 'Nickolas', 'Fae', 'Lake Audie', '2005-04-02', 'Perempuan', '9712 Kohler Brooks\nEstevanmouth, AK 87287', 7, 'q8gBimwLMKh7vMrW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(167, '125666', '+14428748814', 'parker.jerrell@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mossie', 'Larkin', 'Jordyn', 'Elenor', 'Jerdechester', '2005-11-19', 'Perempuan', '5538 Joanne Knoll Suite 252\nTabithaside, AZ 68951-9832', 7, 'D3Kkrv0vz4tLee8N', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(168, '170434', '(913) 508-5083', 'eriberto31@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Logan', 'Thompson', 'Demarcus', 'Demetris', 'Lucaschester', '1974-09-26', 'Laki-laki', '25327 Streich Ridge Suite 739\nLerastad, MT 42892', 7, 'lRgoNNFqqHNF17t6', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(169, '533830', '(936) 413-5069', 'olga.gerlach@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Emilio', 'Stiedemann', 'Jerrold', 'Mylene', 'Bradtkeport', '1971-11-04', 'Laki-laki', '6326 Karley Forks\nPort Melbaberg, PA 61477', 7, 'LLNkZvgzk1iSLnXQ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(170, '375143', '203.239.6747', 'lauretta61@schiller.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jamil', 'Hintz', 'Kian', 'Erika', 'DuBuqueport', '1979-11-07', 'Laki-laki', '2778 Koelpin Bridge\nEast Corymouth, WI 72034-9154', 7, 'qVxG5rqihLqo20Ou', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(171, '384458', '760-263-1442', 'lueilwitz.nils@klocko.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brook', 'O\'Keefe', 'Chesley', 'Myrtis', 'New Deon', '2013-11-23', 'Perempuan', '76904 Minnie Ways\nSouth Aglae, KY 60451', 7, 'LBaw23kAWB3mZEdk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(172, '322734', '(754) 299-2381', 'zella93@weissnat.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kirsten', 'Kertzmann', 'Titus', 'Pink', 'Pierceland', '1997-02-27', 'Perempuan', '2141 Hyatt Village Apt. 177\nWehnerside, NJ 51249-2059', 7, 'v4eh4G9lY7rs5tbh', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(173, '473540', '1-458-755-2582', 'leon.collins@orn.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Christelle', 'Roob', 'Gavin', 'Aniyah', 'Morrishaven', '1972-06-17', 'Laki-laki', '13457 Ashleigh Cliffs\nLake Theodora, MS 38130-9366', 8, 'Aeb5tKaF72hz7cK4', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(174, '571269', '+1-341-525-4827', 'huels.brielle@jacobs.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Julie', 'Hirthe', 'Louvenia', 'Wava', 'Goodwinton', '2001-09-07', 'Laki-laki', '853 Lockman Lock Suite 253\nLake Masonfurt, RI 79616-8552', 8, 'eYFMSjD9RFiP80To', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(175, '465637', '979-932-5048', 'dkihn@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tia', 'Friesen', 'Harvey', 'Katelyn', 'Sadyeton', '1988-11-09', 'Perempuan', '40597 Tatyana Motorway\nLake Zackeryberg, NM 02435', 8, 'DiTLWF4xs3yxApHc', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(176, '213325', '+17624840574', 'skyla.marks@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'April', 'Pacocha', 'Alexander', 'Genoveva', 'Edwardbury', '1991-06-05', 'Laki-laki', '7983 Zita Station Apt. 904\nJameyside, WA 79063', 8, 'IbPDSoXGaBgzImQV', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(177, '259507', '+1.954.471.0044', 'bo41@will.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Grant', 'Lubowitz', 'Koby', 'Lonie', 'West Loniemouth', '2011-09-18', 'Perempuan', '44168 Parker Manors\nLake Mollyland, UT 12096-3810', 8, '8NBjzQOhdOSToG2P', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(178, '285440', '+1 (856) 247-8508', 'delia99@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xander', 'Kohler', 'Zion', 'Alexanne', 'West Lolaborough', '2004-06-06', 'Laki-laki', '1019 Aufderhar Pines Apt. 044\nWest Ashley, KY 27823-8390', 8, 'AzTu1FPAdv10vxXv', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(179, '385369', '(234) 735-6776', 'jeff.ruecker@purdy.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Amalia', 'Bode', 'Arnoldo', 'Lavinia', 'Lake Brett', '1990-04-13', 'Perempuan', '3436 Garrick Flats\nNedramouth, NJ 69377', 8, '0CCDeZGqErbiija9', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(180, '387859', '520-750-3071', 'casimir87@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Carter', 'Altenwerth', 'Jefferey', 'Haylie', 'South Margarette', '1974-05-25', 'Laki-laki', '6553 Fahey Circle\nParisianton, VA 48838', 8, '4QSNmT02v8pC9zEF', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(181, '198781', '854.728.4496', 'tad.goyette@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mireille', 'Gleichner', 'Darwin', 'Otha', 'Giamouth', '1989-03-10', 'Laki-laki', '990 Torphy Prairie Suite 574\nNew Josephland, AK 94909', 8, 'Y5EXTTK9oasNzmJY', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(182, '521798', '(985) 526-7754', 'hermann51@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trevor', 'Wisoky', 'Freddie', 'Lacy', 'Turnerhaven', '1977-02-23', 'Perempuan', '18587 Hane Crest Apt. 374\nKaylafurt, UT 80249-4627', 8, 'ipEhqPzkO2shJtku', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(183, '600202', '+1 (219) 467-4142', 'antonina81@waters.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Patsy', 'Considine', 'Tod', 'Nora', 'Thielfort', '1982-08-05', 'Perempuan', '4891 Arlie Hills\nMillerborough, MO 49181', 8, '59ZF0QpngOaL9NdX', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(184, '525326', '+1 (626) 305-2414', 'blaise.okeefe@fay.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Austen', 'Volkman', 'Cletus', 'Myriam', 'Rogahnmouth', '2013-08-07', 'Laki-laki', '8489 Betsy Rapids\nPort Mariam, SD 26356', 8, 'abVqVcC3wnJuLI75', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(185, '393104', '1-716-806-4303', 'smith.arturo@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ephraim', 'Tremblay', 'Melany', 'Ciara', 'West Alessandraborough', '2007-02-20', 'Laki-laki', '863 Kunde Square\nYasminshire, WV 17536-3671', 8, 'Xg8c8xnQmLMi51pV', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(186, '120468', '240-661-9734', 'kbecker@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ilene', 'Williamson', 'Jalen', 'Marianna', 'Marquardttown', '2005-11-26', 'Laki-laki', '8762 Bosco Extensions\nSouth Maiashire, AR 30280', 8, 'ZWq8dqDLwQWaVvwj', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(187, '155853', '(541) 740-0612', 'micah.larkin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ethan', 'Kris', 'Howell', 'Treva', 'Bryanaberg', '1989-03-09', 'Perempuan', '405 Luna Ford Apt. 276\nNorth Elenatown, WA 64286-7807', 8, 'biv4OlQfeqAzeOom', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(188, '571731', '+1-309-596-2028', 'mcronin@murray.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Garfield', 'Howe', 'Deshawn', 'Ivah', 'Port Garrisonshire', '1974-10-01', 'Perempuan', '809 Rempel Islands\nSouth Martina, AK 61700', 8, 'ebPK25qQE7VxUms1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(189, '245623', '262.696.5105', 'stacy23@roob.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hailie', 'Wisozk', 'Jarred', 'Marie', 'Gleichnerport', '1977-03-06', 'Perempuan', '276 O\'Reilly Ports Apt. 612\nLake Kurt, RI 22459', 8, 'eQ7N3xpzPWl78rtU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(190, '246319', '442-816-7404', 'qthiel@swift.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Crawford', 'Reichel', 'Ted', 'Miracle', 'North Alessandraland', '1990-08-01', 'Perempuan', '185 Elvera Manors Apt. 314\nBennyburgh, MN 45064', 8, 'XMTTrrIEPYg70dq0', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(191, '115018', '912-368-0790', 'camren28@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aida', 'Windler', 'Kale', 'Eleanore', 'Tinaville', '2004-11-03', 'Laki-laki', '5962 Lehner Spur\nThorafurt, MN 94396-1682', 8, 'lxlcRZ1ZYToKW3P3', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(192, '557237', '1-808-956-4051', 'dolly01@schiller.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Domenick', 'Mayer', 'Seamus', 'Suzanne', 'North Kristopherborough', '1999-07-11', 'Perempuan', '363 Darren Row Apt. 867\nLegrosbury, TX 14532-1340', 8, 'gPI9VsdbkP0rpoTV', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(193, '122700', '+1.725.250.6000', 'camille17@fahey.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Horace', 'Gulgowski', 'Rowan', 'Cheyanne', 'Havenbury', '2019-11-28', 'Perempuan', '145 Luciano Shores Apt. 645\nNorth Mona, CA 14469-3488', 8, 'gf6NK0ijKVe49LD1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(194, '559679', '+1 (678) 443-0643', 'emmanuelle.veum@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zakary', 'Thompson', 'Thomas', 'Nakia', 'Alfonsofurt', '1993-09-10', 'Perempuan', '44583 Hilpert Union\nNew Bettie, CA 86270', 8, 'W5hPUQyZrqy8zwkk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(195, '236586', '228-257-9741', 'manuela32@heathcote.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hollie', 'Runte', 'Orland', 'Clotilde', 'North Ezekielside', '1988-02-15', 'Perempuan', '3061 Carlie Crossroad Suite 103\nSouth Brianne, AK 22434-9922', 8, 'L6Tm9Il6r1sdaui6', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(196, '161912', '+14802687271', 'van77@willms.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Julien', 'Boehm', 'Elmer', 'Tara', 'Kochstad', '2000-03-25', 'Perempuan', '2405 Keeling Garden\nPort Gunner, SC 77398', 8, 'avKJQluPHV4AMqC9', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(197, '310839', '(757) 650-7762', 'kling.percival@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oscar', 'Christiansen', 'Andres', 'Alicia', 'West Clarkmouth', '2007-10-13', 'Laki-laki', '11217 Teresa Loaf Suite 716\nWilkinsonberg, NE 92090-4527', 8, 'NZ6dsyiTVaA5L8ZF', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(198, '446636', '+16307537176', 'modesta.steuber@hansen.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alejandrin', 'Von', 'Jedidiah', 'Victoria', 'Port Leslie', '1992-10-30', 'Perempuan', '874 McDermott Springs\nArvelstad, OH 66683-3205', 8, '7DbsGDJvz3q48kso', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(199, '410902', '+1 (463) 325-5632', 'kessler.mandy@kassulke.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Damaris', 'Prosacco', 'Levi', 'Alexandra', 'South Lornamouth', '2005-04-02', 'Perempuan', '969 Daisy Mission Suite 286\nFlorinemouth, IL 83686-3742', 8, 'g25WSCwwuTwkFhUn', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(200, '354479', '(260) 612-9243', 'zboncak.asa@quigley.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Shemar', 'Upton', 'Zack', 'Bella', 'Lake Amirborough', '2001-08-15', 'Laki-laki', '6264 Bartell Mountains Suite 328\nKautzertown, LA 96262-4322', 9, 'UcyX245QtNdGYF4C', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(201, '459707', '559.856.0945', 'leone.klein@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bonita', 'Rippin', 'Chesley', 'Maria', 'Wavashire', '1997-04-03', 'Laki-laki', '99196 Konopelski Bypass Apt. 087\nNorth Mafalda, AR 53203-6134', 9, 'XBDInjE7XDKLWcGO', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(202, '411315', '614.616.9425', 'maddison76@lubowitz.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Shanelle', 'Labadie', 'Clyde', 'Nova', 'Addiechester', '1999-02-09', 'Laki-laki', '981 Mann Corner Apt. 874\nAlbinaland, NV 42245-0955', 9, 'PiNcoKdsBwz9RgqX', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(203, '573182', '+1-773-346-6165', 'jess.ruecker@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'May', 'Wisozk', 'Armand', 'Elenor', 'Torpbury', '2016-02-16', 'Laki-laki', '26849 Pamela Ridge\nThielberg, NC 94626-7443', 9, 'jdedoJaIybvWpCO1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(204, '259874', '512.268.0832', 'blaise39@waters.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pattie', 'Jenkins', 'Jameson', 'Rosetta', 'Port Destinytown', '2018-09-26', 'Perempuan', '5458 Octavia Square Suite 945\nKeeleymouth, FL 03637', 9, 'n4Bi18fHmrpbSthk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(205, '598671', '1-346-242-5786', 'terry.emmalee@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Concepcion', 'Erdman', 'Fritz', 'Destini', 'Port Tania', '1991-04-29', 'Laki-laki', '78819 O\'Hara View Suite 089\nWest Dejaview, MA 76825', 9, 'DOPs1NlHOwQnLr8H', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(206, '357299', '+1-517-232-7738', 'otis29@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alia', 'Kilback', 'Gerhard', 'Rebeca', 'Lake Noahstad', '1998-02-09', 'Laki-laki', '17249 Sage Bypass\nNew Kallieview, MT 00550-5062', 9, 'yJdcD99co1TVvcbJ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(207, '550032', '1-973-705-0488', 'kobe.waelchi@torp.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yasmine', 'DuBuque', 'Marques', 'Ariane', 'West Juniorport', '2012-06-19', 'Perempuan', '46082 Deckow Corners\nWest Vivaberg, NY 85319', 9, 'VmchmtEnPdFlC5gn', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(208, '330866', '252-506-8136', 'bernier.trycia@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Terry', 'Sawayn', 'Ari', 'Eden', 'Funkton', '2015-08-14', 'Perempuan', '91105 Uriah Well\nCortneyside, KY 96125', 9, 'pOtDXGriCNC9F691', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(209, '170793', '+1.931.536.8856', 'nhaag@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jace', 'Rohan', 'Reuben', 'Kristy', 'Lake Elvieview', '2019-04-12', 'Laki-laki', '5458 Lacy Rue Apt. 446\nLake Edport, RI 15491-3959', 9, 'LQ50PALYerqhjxee', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(210, '261867', '248.745.0539', 'ikertzmann@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Modesto', 'Bartell', 'Micheal', 'Danielle', 'Gloverfurt', '2024-09-12', 'Perempuan', '68077 Euna Camp Apt. 575\nPort Willard, RI 97145-8226', 9, 'tqTpMaELGIUaUeFJ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(211, '238190', '217.582.1148', 'damien10@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ryley', 'Nolan', 'Francisco', 'Velma', 'Swiftchester', '2000-01-11', 'Laki-laki', '450 Dooley Valleys Suite 450\nVernieland, TN 84622', 9, 'uqcAagwexjpl9dl2', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(212, '544429', '+15078780695', 'tebert@rowe.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Elena', 'Zemlak', 'Cletus', 'Evie', 'Ansleyburgh', '2021-03-29', 'Perempuan', '684 Paxton Rapid Apt. 548\nColinview, NV 85104', 9, 'pPFiW0GPEETChoaA', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(213, '593376', '831.791.3525', 'gerlach.frances@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Santino', 'Hane', 'Eugene', 'Helena', 'New Elza', '2024-11-01', 'Laki-laki', '99995 Williamson Well Suite 138\nKunzeland, MI 54898-1159', 9, 'hgsOP1bmRn8ebAZE', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(214, '477116', '(860) 527-5019', 'lhill@little.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Monty', 'Schaden', 'Newton', 'Evelyn', 'Glovermouth', '1999-08-29', 'Perempuan', '9171 Adah Ways\nCletastad, CT 76059', 9, 'ObM2SZRsYrS5Qr67', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(215, '370829', '+1 (209) 591-4477', 'william.altenwerth@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Derick', 'Wehner', 'Avery', 'Aaliyah', 'Letafort', '1971-08-25', 'Laki-laki', '996 Upton Shore\nPort Fredy, MI 15263', 9, 'CPqQPdpR6kkvLqYM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(216, '243337', '224-400-2137', 'juvenal25@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pierre', 'Parker', 'Nathen', 'Nona', 'South Monserrate', '1978-03-20', 'Perempuan', '5684 Chelsea Squares\nWadeview, IL 26208', 9, 'EFOX0bj9X7yeaPwM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(217, '304341', '+17744519279', 'bcorkery@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tatyana', 'Altenwerth', 'Delaney', 'Rhoda', 'Murphyton', '2021-11-14', 'Perempuan', '485 Brandyn Road\nSporerberg, RI 28895', 9, 'HYhEPkNMjuC8jv6J', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(218, '369594', '551.701.4059', 'eyost@beahan.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bernita', 'Rempel', 'Trey', 'Meghan', 'Ratkeville', '1982-07-08', 'Laki-laki', '654 Leffler Island\nNorth Triston, VA 94351-2345', 9, 'ygXSTvihjsmOQDJw', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(219, '532635', '781-968-3176', 'gislason.nasir@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eulah', 'Daniel', 'Kareem', 'Frederique', 'Brookston', '1990-04-30', 'Perempuan', '1124 Madge Knoll\nKeelingview, MS 19665-6994', 9, 'UnnqONAkw9qIjc4e', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(220, '157839', '+1-480-894-5591', 'cummerata.treva@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cassie', 'Schamberger', 'Michael', 'Francesca', 'Cristobalfurt', '2011-05-19', 'Perempuan', '17152 Kling Throughway Suite 775\nSchillerview, OH 31021', 9, 'm2MUMlC9fqr9q7e6', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(221, '545014', '+1 (734) 772-8457', 'rodger.schoen@shanahan.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zane', 'Hagenes', 'Casimer', 'Rachael', 'South Neomastad', '1992-11-12', 'Laki-laki', '77247 Dangelo Island Suite 590\nMaynardland, NV 86229', 9, 'zxpFYZDYwMJIKDKt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(222, '383899', '+1-507-870-7274', 'ewalter@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Milton', 'Bednar', 'Joshuah', 'Alexandrine', 'New Elroy', '1996-12-27', 'Perempuan', '6217 Luisa Manors Suite 218\nMortimerton, AL 31977-2842', 9, 'mCg0XVWIyTWOgPC5', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(223, '367561', '+17242098777', 'pouros.estefania@will.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rory', 'Hettinger', 'Ricardo', 'Rozella', 'Skylafort', '2008-10-01', 'Laki-laki', '113 Wilfrid Junctions\nPfefferchester, DE 38273-2911', 9, 'bkyMkgRd6RxEYNI7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(224, '188165', '+1 (479) 521-0255', 'bfeil@harris.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Taylor', 'Tremblay', 'Lane', 'Vicky', 'North Lexishire', '1991-09-25', 'Perempuan', '13858 Lessie Viaduct\nWest Tatyana, MI 71136-1512', 9, '4AeaPX15yUT2jixb', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(225, '113045', '+1 (870) 922-6441', 'diamond35@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kaylie', 'Mann', 'Humberto', 'Hermina', 'East Jeradmouth', '2005-10-02', 'Perempuan', '304 Auer Viaduct Apt. 751\nPort Javonteport, GA 06584-3486', 9, 'BWjDqUxfXEGRC1fv', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(226, '200263', '303-258-4763', 'ernie29@champlin.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bobby', 'Rau', 'Micah', 'Lue', 'Port Caesarborough', '1991-04-17', 'Perempuan', '1467 Ezra Fields\nWest Andrewbury, MO 60419', 9, 'MPd3NPJsUav2wX2y', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(227, '128850', '510.388.4842', 'doyle.brendan@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Paolo', 'Gislason', 'Hardy', 'Yoshiko', 'Berylburgh', '1989-06-12', 'Perempuan', '1399 Predovic Hollow Suite 511\nPort Alexandermouth, AL 18938-0940', 9, 'm46xskfeejuxuuA0', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(228, '349374', '+1-434-575-1722', 'bdaniel@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lilly', 'Witting', 'Weldon', 'Magdalena', 'Andersonville', '1979-07-20', 'Laki-laki', '5200 Dietrich Trace Apt. 788\nSouth Graysonport, UT 15890-1410', 10, 'HJUZHLb4duz81fnT', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(229, '187522', '+1 (469) 984-3781', 'candice.hirthe@morissette.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Franz', 'Pagac', 'Buford', 'Marie', 'East Eugenestad', '1989-08-07', 'Perempuan', '5242 Klocko Isle\nProhaskamouth, KY 81456-0798', 10, '0jXerH7ANhfePNbF', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(230, '564497', '508.567.6835', 'ebert.clara@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hudson', 'Oberbrunner', 'Bo', 'Yesenia', 'West Nico', '1978-08-03', 'Perempuan', '8035 Enos Freeway Suite 371\nEladioshire, WV 74395-4763', 10, 'WTUbP2RTHRERaCXN', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(231, '502982', '+1 (725) 404-5519', 'hansen.kendra@rodriguez.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Liliana', 'Swaniawski', 'Francesco', 'Ramona', 'West Renee', '1973-09-11', 'Laki-laki', '2712 Larson Junctions Apt. 259\nLake Casimir, PA 98766-5889', 10, 'adLlwyjarHvTmE5f', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(232, '138369', '(406) 841-0672', 'randy63@effertz.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kathryne', 'Turcotte', 'Gene', 'Viva', 'Floyview', '1994-10-20', 'Laki-laki', '305 Tillman Route\nSouth Gissellestad, MI 22128-9017', 10, 'HDmls5NXc4sowPEP', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(233, '398440', '+1.870.404.6939', 'jeanette60@veum.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Icie', 'Johnson', 'Morgan', 'Maudie', 'Hermannbury', '1981-07-14', 'Perempuan', '1953 O\'Kon Burg\nSouth Darrellfort, MI 74436-7271', 10, 'IRn7hFvbA4c64UVZ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(234, '547149', '+1.651.354.8669', 'ygreenfelder@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Camren', 'Kemmer', 'Johnnie', 'Idella', 'South Imelda', '2012-01-04', 'Laki-laki', '7618 Ola Manors Apt. 438\nEast Leilani, CO 09704-7450', 10, 'm1NM4yw7hk2AdUHG', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(235, '484234', '1-940-444-8687', 'pagac.dayana@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gertrude', 'Kuhn', 'Antonio', 'Leila', 'Gibsonville', '2006-03-16', 'Laki-laki', '91221 Stehr Crest\nNew Mekhiberg, OR 04834', 10, '3xdYi7VygbqC3SMd', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(236, '416454', '346.428.4660', 'vhermiston@harvey.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sierra', 'Rolfson', 'Sigrid', 'Earlene', 'Flatleybury', '2011-02-09', 'Perempuan', '8139 Reilly Keys\nNorth Braeden, WA 04783', 10, '90yGSim4nlN9JIkO', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(237, '492897', '859.526.6759', 'xwaters@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jerrell', 'Bernier', 'Johnathon', 'Stacey', 'Edenmouth', '2019-02-12', 'Laki-laki', '2037 Eldred Passage\nMaybelletown, NM 59639-9776', 10, '9NX5TapQJMgIcF8i', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(238, '108346', '+1-458-201-0815', 'baumbach.arvid@marks.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Laurianne', 'West', 'Mustafa', 'Berniece', 'South Hermanntown', '1989-03-27', 'Perempuan', '77512 Zoila Isle\nKatharinatown, MS 63221', 10, 'Qvctco4sRpou1PYS', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(239, '578786', '458-804-2111', 'hkuhlman@homenick.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tania', 'Witting', 'Enoch', 'Pinkie', 'Lake Wilbert', '2002-06-26', 'Perempuan', '76915 VonRueden Dam\nAssuntaside, NC 76809-9322', 10, 'k2dipLCqDeB8PTTl', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(240, '251919', '743.257.9713', 'ewald56@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cameron', 'Simonis', 'Toni', 'Jannie', 'Port Merl', '1978-08-16', 'Perempuan', '1245 Ernestine Square\nPort Kurtview, CO 45435-5780', 10, 'oPLT61yBZG0h3j9l', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(241, '263164', '+1-216-801-8457', 'ycole@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Noe', 'Cummerata', 'Jedidiah', 'Kelli', 'Laneyberg', '2020-06-05', 'Laki-laki', '4789 Gutkowski Bypass Apt. 949\nLake Coytown, AR 09841-5262', 10, 'OPMpf8ki27avbrIu', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(242, '584780', '254.307.7622', 'jdamore@moore.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ahmad', 'O\'Kon', 'Abe', 'Tiara', 'East Kurtisbury', '2017-09-22', 'Laki-laki', '63811 Alphonso Crossing\nWildermanland, FL 21402-7738', 10, 'EN1JMJ3gJ0lIRIwS', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(243, '556835', '(251) 835-8977', 'myron.goldner@yundt.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Celestino', 'Koelpin', 'Valentin', 'Patsy', 'Thielside', '2025-03-13', 'Laki-laki', '28916 Ebert Square\nLubowitzfurt, TN 88496-9149', 10, 'q0gPx9xZyEIJlteq', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(244, '214594', '(743) 382-8935', 'taylor.bogan@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Allen', 'Berge', 'Conor', 'Chanelle', 'South Anastaciomouth', '1980-08-17', 'Laki-laki', '988 Lowe Hill Suite 725\nEast Frida, AR 99730-4833', 10, 'Oficq2TR8JodoUta', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(245, '329811', '(785) 313-2426', 'kuhn.verla@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Isaias', 'Renner', 'Floyd', 'Heaven', 'Maximilliaview', '1976-06-02', 'Perempuan', '5394 Kyra Lodge\nKeeblerbury, VA 85051', 10, '9U4MfYa1GeF2ueqd', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(246, '452462', '267-552-5644', 'luettgen.emie@hackett.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Randy', 'Kessler', 'Marty', 'Anahi', 'Taniaville', '1971-08-01', 'Perempuan', '6282 Lydia Streets\nMeghanberg, NJ 43493', 10, 'jzghkYclqU7KqNQe', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(247, '566664', '+1 (530) 589-7691', 'kip.murphy@reichel.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Juliana', 'Rosenbaum', 'Dayton', 'Vada', 'Hackettshire', '1995-01-04', 'Laki-laki', '8774 Deven Falls Apt. 339\nKunzeborough, WV 94301', 10, 'nPVTP0UAgD3VolSM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(248, '207011', '(480) 974-9342', 'zsatterfield@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mina', 'Smith', 'Bret', 'Aurore', 'Lake Georgette', '2002-02-12', 'Perempuan', '591 Sporer Mission Apt. 438\nNorth Thoraville, VA 57917', 10, 'ZKvsepELzE8o43Yl', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(249, '473905', '+19167074123', 'rath.jaydon@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Augusta', 'Hamill', 'Domenick', 'Taya', 'New Aimeeview', '1990-04-21', 'Perempuan', '92339 Ludwig Groves Apt. 954\nLemketon, ME 14052-1288', 10, 'sZaByJqWfKWEFhOg', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(250, '371643', '+1 (228) 864-6724', 'rauer@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tabitha', 'Schaefer', 'Hayden', 'Cortney', 'East Daisy', '1973-12-01', 'Laki-laki', '929 Ullrich Valley Apt. 055\nJanickview, SD 52369-1651', 10, 'wXpEa2rQ42YNU9Uy', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(251, '579246', '+1-937-955-3372', 'christop.johns@hahn.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Austen', 'Jacobs', 'Laverna', 'Roma', 'East Gracielamouth', '2017-09-05', 'Laki-laki', '85073 Pouros Course Apt. 015\nNew Cathrineview, WY 33956', 10, 'EKK6xlX2w4g1Wr3g', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(252, '316226', '+1-781-322-3049', 'yfranecki@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Olga', 'Rutherford', 'Jarod', 'Violette', 'Otiliaview', '1996-07-23', 'Laki-laki', '6088 Antoinette Path Suite 325\nNorth Stevie, MA 89357', 10, 'McPj4SazxxP4oNFd', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(253, '520700', '+1-430-433-2028', 'chadrick.hermann@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rosamond', 'Ryan', 'Isom', 'Thora', 'New Dean', '1985-07-11', 'Laki-laki', '3652 Emily Ports Suite 644\nClotildestad, SD 20255-9645', 10, 'bA6jbI9Un8ZGBJXv', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(254, '327140', '+1.925.495.0361', 'riley26@nikolaus.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jillian', 'Morar', 'Paris', 'Gerry', 'North Kavon', '1972-04-30', 'Laki-laki', '5011 Cullen Tunnel\nPort Sandyhaven, MS 34118', 10, 'CwgzvPf7WMmRGTlZ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(255, '107354', '1-239-803-8018', 'stanton.beryl@bosco.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Michel', 'Streich', 'Demond', 'Allene', 'Abernathyhaven', '2013-05-02', 'Laki-laki', '37484 Gusikowski Place\nWest Diana, AL 99114-7910', 10, '8jO2P0lsUiDhuYou', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(256, '531282', '+1.986.798.4929', 'aledner@watsica.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lindsey', 'Armstrong', 'Santos', 'Myrna', 'North America', '1970-10-20', 'Laki-laki', '873 Strosin Way\nSouth Ulices, HI 37455-9886', 10, 'KmRoTBh7B7wFmR0y', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(257, '445437', '423.783.3504', 'bradly.mante@hettinger.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Miles', 'Pfeffer', 'Marcus', 'Wilhelmine', 'Kuhntown', '2017-06-03', 'Perempuan', '552 Christ Vista\nLaviniaside, ME 01960-5481', 10, 'P6XyQrUUfNOvBi65', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(258, '455942', '+13868819252', 'wellington51@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gerry', 'Kshlerin', 'Virgil', 'Ruthe', 'Willafurt', '2017-10-07', 'Laki-laki', '7914 Bailey Lights Suite 355\nPort Morris, KY 37474', 11, '8J5oVyfpUSQp4zzm', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(259, '335184', '1-703-680-8588', 'jprice@boehm.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Daniella', 'Rohan', 'Adonis', 'Emilia', 'West Casper', '1974-02-08', 'Perempuan', '36709 Margarett Valleys\nAnafurt, CA 23123', 11, '0fuTtE8STwCT4Uy3', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(260, '277623', '+1 (727) 806-2450', 'upton.garrett@bernhard.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rex', 'Prosacco', 'Cale', 'Emely', 'New Sandrine', '1992-11-06', 'Perempuan', '54106 Satterfield Fork\nEast Christopher, TX 79000', 11, 'pnWatwendqhR14u2', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(261, '129848', '(331) 412-4796', 'elvie50@runolfsson.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pattie', 'Crona', 'Oren', 'Mertie', 'Lake Stephan', '1997-04-20', 'Perempuan', '770 Matilde Avenue Apt. 036\nWest Dorrisbury, MD 90948-2556', 11, 'zIHXXrjiZxDMKlcW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(262, '252266', '1-617-701-3894', 'sbalistreri@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Amara', 'Lueilwitz', 'Durward', 'Maggie', 'Juniormouth', '1992-04-21', 'Perempuan', '51016 Leuschke Orchard Suite 312\nPort Yesseniafurt, LA 18620', 11, 'wquijWaF3MTlBTj3', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(263, '181038', '505.294.8946', 'cielo.lang@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alex', 'Schinner', 'Devin', 'Frederique', 'Luzhaven', '1983-02-27', 'Perempuan', '62054 Stiedemann Light Suite 413\nUlicesview, VA 75645-0154', 11, '3FIAgoZBGEHRV07F', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(264, '530260', '1-781-529-5157', 'vreichel@bernhard.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Urban', 'Greenfelder', 'Marc', 'Janis', 'Lake Genovevaview', '1982-03-21', 'Perempuan', '24319 Kayli Village Suite 799\nNew Valentinemouth, CA 11204-5892', 11, '1v2Bi8tbZz6lgxDU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(265, '379120', '+12248362521', 'orn.kelli@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cameron', 'Rempel', 'Orland', 'Beryl', 'East Lucyberg', '1983-08-10', 'Perempuan', '3219 Chance Pines\nEast Viva, UT 80371', 11, 'SqYzDGqGCwvnYJIf', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(266, '279195', '651-954-7609', 'shaniya88@olson.info', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lowell', 'Brown', 'Tommie', 'Julianne', 'Destinibury', '2000-07-01', 'Laki-laki', '74573 Tina Trail Apt. 523\nRetaview, AK 86578-4924', 11, '6MYkLJSf13IEJgbT', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(267, '557897', '+1-830-692-2825', 'rachael.walker@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jordy', 'Huel', 'Issac', 'Anika', 'West Jessie', '2004-12-11', 'Perempuan', '85489 Runte Pass Apt. 192\nSouth Skyemouth, NH 95594-9688', 11, 'fCQlgUX27xRM7lW7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(268, '214944', '959.845.5646', 'tia58@legros.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Reyna', 'Abernathy', 'Jarred', 'Adela', 'Port Pierce', '1997-09-14', 'Laki-laki', '4194 Lowe Stream\nLake Enoch, NE 96330-9884', 11, 'WcwWgiqxN36FHhM8', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(269, '325033', '+1 (321) 933-3016', 'makayla.koss@walsh.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zoie', 'DuBuque', 'Derrick', 'Athena', 'Thompsonstad', '2010-02-13', 'Laki-laki', '513 Ocie Field Apt. 330\nPort Parkerland, IN 38359', 11, '4mb4kgBrcmNiUdNM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(270, '136534', '430-382-2586', 'zweimann@schoen.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Melvin', 'Keeling', 'Steve', 'Mariela', 'New Tavares', '2019-10-04', 'Perempuan', '6507 Feest Pike Suite 883\nNorth Jamel, ND 93157-8886', 11, 'BSt4DVjVIe11wyDU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(271, '103731', '+18628969707', 'margaretta41@deckow.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hayley', 'Paucek', 'Rolando', 'Georgianna', 'Port Ilianaside', '1975-07-26', 'Perempuan', '51847 Wolff Stream\nNew Domenico, VA 74530-7442', 11, '8aM5kMifn0AhVVIt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(272, '388788', '657.795.2757', 'rstamm@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Frank', 'Feeney', 'Kayleigh', 'Aida', 'Franciscaville', '1998-05-29', 'Perempuan', '1975 Lesley Fall\nParkerton, AZ 36620-6314', 11, 'DQuoLDdCUkMzVeeN', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(273, '101524', '636-803-0151', 'sanford.elvera@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Roscoe', 'Rice', 'Dorthy', 'Lempi', 'Lake Ardithbury', '2004-01-22', 'Perempuan', '982 Jerrod Parkways\nVontown, OK 45309-3468', 11, 'yvpMRyMWW2D02iPt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(274, '303613', '385.813.5662', 'berge.dayne@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pauline', 'Reilly', 'Rasheed', 'Stefanie', 'Hayleyfurt', '2003-08-04', 'Perempuan', '96212 Lang Groves Suite 640\nNew Tyler, NY 49715-8565', 11, '6y8hVshZSzd12M83', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(275, '199969', '774.966.9767', 'brock.berge@wiza.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rod', 'Will', 'Sid', 'Olga', 'South Laurel', '1971-10-16', 'Laki-laki', '1234 Kylie Gardens Suite 891\nNorth Alyshaberg, WV 35697', 11, 'f86BvspOe3Wdsk4U', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(276, '495997', '520.430.5707', 'uhauck@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jonathon', 'Klocko', 'Norwood', 'Adella', 'Coleton', '1980-06-29', 'Laki-laki', '1598 Fabian Park\nPort Nels, DE 43199-2251', 11, 'jZBHtOGFiamQtTTO', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(277, '548576', '+1.956.963.3371', 'lkub@pfannerstill.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hyman', 'Stokes', 'Harley', 'Raquel', 'Lefflermouth', '2007-11-29', 'Perempuan', '316 Claire Forks\nNew Jordan, AZ 11898-8016', 11, 'knUU9NqneO5qP9Ec', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(278, '352507', '+1-469-822-6120', 'sadye.thompson@hodkiewicz.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fern', 'Christiansen', 'Robbie', 'Tanya', 'West Blair', '2012-08-04', 'Laki-laki', '115 Emile Mountains\nFadelton, NE 07043', 11, 'X5Ph3gJw4CEwzx1T', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(279, '583624', '+1.949.537.8567', 'monahan.rocio@price.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Julianne', 'Hahn', 'Braulio', 'Onie', 'West Joelleside', '2016-03-19', 'Perempuan', '137 Gottlieb Greens Apt. 171\nHalvorsonville, MA 27503', 11, 'At002g38nZSr2IPs', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(280, '501893', '(325) 874-5872', 'abeier@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ressie', 'Daniel', 'Otto', 'Joanie', 'New Antoniomouth', '1988-04-05', 'Perempuan', '20664 Peyton Parkway\nNorth Margie, DC 11957-8842', 11, 'wHu0iI118YWnuOAt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(281, '489379', '+1-253-933-2778', 'sconnelly@vandervort.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Laila', 'Cruickshank', 'Garett', 'Mabel', 'New Cornelius', '1997-07-28', 'Perempuan', '4208 Bailey Circles\nKossville, HI 69015-0303', 11, '8GTfioXEmAyRJZVt', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(282, '487429', '1-470-541-9204', 'zdubuque@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Earnestine', 'Williamson', 'Myles', 'Elody', 'Lake Jacinto', '1975-10-31', 'Laki-laki', '2415 Hammes Extensions Suite 687\nSouth Cathy, NC 29006-2057', 11, 'nwnKWUxXc4qkhYwW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(283, '577582', '442.859.4038', 'wbatz@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lavonne', 'Shields', 'Judson', 'Leta', 'Beulahborough', '2003-12-12', 'Laki-laki', '6519 Remington Drive Suite 727\nWest Myrtisland, MA 15252-5450', 11, 'mZlaa1Hh5jcC3KJ7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(284, '153853', '1-620-354-6803', 'marcia.becker@ruecker.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lelia', 'Rath', 'Taylor', 'Elvie', 'Homenickville', '1988-07-10', 'Laki-laki', '4679 Morar Fork Apt. 455\nEdwardoport, WI 74033-0086', 11, 'dsRrKLgyn5wt9jzW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(285, '323761', '(361) 880-8642', 'ideckow@prohaska.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aniya', 'Jacobson', 'Adonis', 'Haylie', 'Dooleytown', '1999-11-08', 'Perempuan', '19700 Smitham Trace Apt. 933\nPort Alexandrine, AL 34484-6949', 11, 'LwQiBltT7QO5BUEW', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(286, '157146', '(567) 572-7122', 'harvey.madisyn@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Malinda', 'Bartoletti', 'Kurt', 'Alanis', 'East Antwan', '1986-03-29', 'Perempuan', '59425 Anahi Forks\nLake Prince, KS 29575-9666', 11, 'uFdfgL9fzvT7vArU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(287, '315515', '+1-651-630-3570', 'ryleigh.abshire@ritchie.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Van', 'Howe', 'Hilton', 'Kira', 'West Aurelie', '2015-08-20', 'Perempuan', '8345 Lenora Bypass Suite 357\nSouth Charity, AL 31562-2890', 11, 'Pp4NGtBqGwdebSvB', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(288, '575237', '1-747-436-5596', 'ethan43@ankunding.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trent', 'Schumm', 'Joel', 'Leonor', 'South Candace', '2016-11-25', 'Perempuan', '69463 Loma Key Suite 028\nWest Fabiola, HI 47895-1025', 12, 'bHGFL5YFLMbKftIC', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(289, '477109', '413-517-0611', 'coby.kris@mills.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Glennie', 'Mueller', 'Jon', 'Florine', 'Harmonymouth', '1995-03-22', 'Laki-laki', '88048 Shania Courts Suite 097\nNicolasview, SD 09508-2974', 12, 'ZmKQgz0FLIleOFcK', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(290, '175987', '+1 (818) 504-1754', 'wisozk.antonette@ondricka.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Willis', 'Weissnat', 'Josh', 'Courtney', 'North Obie', '1982-02-26', 'Perempuan', '74296 Zulauf Wall\nWest Lenore, NC 45568', 12, 'zjJZQgdOmqA5it1S', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(291, '304402', '+1.540.563.5123', 'ajacobson@adams.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Armand', 'Sauer', 'Miles', 'Leonor', 'Lake Beaulahhaven', '2007-06-21', 'Perempuan', '94245 Bechtelar Roads\nPort Maximus, NM 57753', 12, '0Eztnw2R3vOqzXmL', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(292, '231032', '281-791-1153', 'xkoelpin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bertha', 'Powlowski', 'Sidney', 'Araceli', 'Port Theron', '1970-03-16', 'Laki-laki', '189 Selmer Roads Suite 573\nSouth Koryview, NC 90103-4808', 12, 'kmNlF4pEs11XcHoR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(293, '195917', '469.246.5583', 'yoshiko56@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xander', 'Konopelski', 'Ole', 'Caitlyn', 'Schusterburgh', '2024-10-08', 'Perempuan', '8469 Senger Parks Suite 946\nJustinaborough, NV 65156', 12, 'N8gXKC2geWAWjlnm', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(294, '281475', '283-477-4538', 'wmoen@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Layla', 'Paucek', 'Zechariah', 'Destany', 'Chadrickmouth', '2021-09-07', 'Perempuan', '51054 Jacobs Drive\nSigurdmouth, AR 29459-3377', 12, 'ut5MuIFgBSkd3F64', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(295, '486919', '+16266470851', 'genoveva.rolfson@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jameson', 'Little', 'Ricky', 'Jacynthe', 'Lake Chase', '1971-02-15', 'Laki-laki', '511 Jaida Shoals Apt. 457\nNorth Estevanborough, MT 25249', 12, '3N9DdgNwEzklAPpL', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(296, '346796', '+1 (720) 664-0985', 'legros.beryl@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dameon', 'Monahan', 'Antone', 'Sandrine', 'Kirlinbury', '1991-06-26', 'Laki-laki', '7420 Myah Mount\nDorashire, CO 12635', 12, 'FrCdhdXnwGM0Jwym', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(297, '367806', '458-517-6828', 'bgoldner@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cheyenne', 'Braun', 'Ike', 'Nelle', 'West Eli', '1988-11-14', 'Laki-laki', '136 Williamson Shore\nJoshburgh, AR 22950-9025', 12, 'QHSYwnJFx4eyv3YI', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(298, '445852', '+1-615-654-4463', 'gwolff@mohr.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Neha', 'Waters', 'Kayleigh', 'Molly', 'East Sunny', '2007-06-10', 'Perempuan', '573 Lowe Roads Suite 804\nNew Roosevelt, NH 84174', 12, 'MV0qkhgtqMuToAER', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(299, '199630', '908.797.6353', 'destiney66@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brice', 'Boehm', 'German', 'Bridgette', 'East Agustina', '2007-04-06', 'Laki-laki', '2979 Willie Gateway\nMasonton, AR 30736', 12, 'SHABimHxpRT7Xczw', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(300, '220991', '(480) 407-1595', 'ulindgren@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rosalia', 'Corwin', 'Juston', 'Kariane', 'Carolynside', '1996-07-06', 'Perempuan', '8612 Rohan Unions\nEast Edbury, IL 38697-1946', 12, '7ScqWXYZ2JUAxk4U', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(301, '113542', '1-440-966-5244', 'patrick14@murphy.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Colten', 'Hill', 'Quinten', 'Myrtie', 'West Karleyburgh', '1998-06-30', 'Laki-laki', '4295 Ethelyn Island Apt. 722\nBrendanfurt, VT 06055-2282', 12, 'ytBS16t5YBbXxvhP', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(302, '291437', '+1-785-947-3611', 'aufderhar.aylin@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kirsten', 'Gleichner', 'Chadrick', 'Dorris', 'Port Janfurt', '1970-12-31', 'Laki-laki', '904 Savanah Stravenue Suite 393\nSouth Clareberg, MS 23234-1032', 12, 'c0IQlTl1u8SuGfl3', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(303, '105064', '603-619-0648', 'oroberts@grimes.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Eric', 'Schulist', 'Braden', 'Guadalupe', 'New Brentfurt', '1981-02-07', 'Perempuan', '612 Pinkie Mountain Suite 381\nNikitaside, AR 46789', 12, 'JjZJX0m9M2tO2pEc', '2025-05-14 16:58:20', '2025-05-14 16:58:20');
INSERT INTO `siswas` (`id`, `nis`, `phone`, `email`, `password`, `firstName`, `lastName`, `namaAyah`, `namaIbu`, `tmpLahir`, `tglLahir`, `jnsKelamin`, `alamat`, `kelas_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(304, '132619', '+1-351-661-9278', 'dianna99@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brycen', 'DuBuque', 'Sam', 'Sibyl', 'South Altamouth', '1978-01-11', 'Laki-laki', '9313 Aileen Mountains\nDarefurt, KY 56738-5740', 12, 'LAg5w499OvgfDfuC', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(305, '102176', '267-993-5863', 'queen33@okeefe.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Elias', 'Gutmann', 'Jan', 'Assunta', 'Willisstad', '2007-07-30', 'Perempuan', '36777 Sammie Mission Suite 431\nConroyshire, TX 85946-1545', 12, 'YU0i1xzbnEvbP2JO', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(306, '175319', '(534) 313-9755', 'stanley.quigley@krajcik.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ayana', 'Kris', 'Johnnie', 'Mozelle', 'North Regan', '1970-09-25', 'Laki-laki', '6030 Kevin Pass Apt. 029\nSouth Keatonmouth, ID 95185', 12, 'iyvS1kBsETc9j0v7', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(307, '235024', '618-941-9684', 'krempel@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alvis', 'Mayert', 'Gerhard', 'Jennifer', 'Oleton', '1970-07-14', 'Perempuan', '565 Labadie Knoll\nWest Betty, ND 76908', 12, 'xgxK0T59Onju4zGj', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(308, '334250', '+1-361-213-8536', 'allie.ward@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Creola', 'Stark', 'Javier', 'Hilma', 'Howeshire', '1989-05-04', 'Laki-laki', '90024 Percy Highway Apt. 393\nWest Amparo, TX 53585', 12, 'PlV4YdDEM8rfybBI', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(309, '429990', '650.452.3255', 'pacocha.danial@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Osbaldo', 'Pfannerstill', 'Madyson', 'Eileen', 'South Katlynn', '2006-07-04', 'Perempuan', '6331 Bashirian Port\nSouth Yvette, PA 28435', 12, 'Y8cJQWhnLHX7MZCG', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(310, '273839', '+1-737-661-3924', 'hschultz@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lori', 'Gislason', 'Felix', 'Minerva', 'Pfannerstillside', '2005-04-30', 'Perempuan', '4387 Koss Parkways Apt. 983\nKihntown, OH 81989-1440', 12, 'AXohgPVravxNDYEV', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(311, '583881', '+1.908.363.4669', 'josephine50@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ewald', 'Mueller', 'Otis', 'Jessika', 'West Mireya', '1985-08-07', 'Laki-laki', '1348 Mortimer Cliff Suite 904\nReidshire, WA 54753', 12, 'C99wiifUjIHVvbrR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(312, '503357', '+1 (346) 652-6792', 'coy.jacobi@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ottis', 'Dooley', 'Dee', 'Dariana', 'Ziemefurt', '2020-04-26', 'Laki-laki', '5073 Cartwright Plaza\nWelchport, AL 55691-7220', 12, 'rfpussIsd3yrUrZu', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(313, '586101', '+1-951-514-1792', 'travis.jacobi@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brent', 'Blanda', 'Milan', 'Maybelle', 'Lake Noble', '1974-12-05', 'Perempuan', '223 Emmerich Mews\nCormierside, NH 92578', 12, '2581VQ6wPkDnzYv1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(314, '396843', '+1.435.570.5550', 'humberto.armstrong@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Katelyn', 'Stracke', 'Rico', 'Luella', 'Franciscatown', '1991-09-28', 'Perempuan', '727 Carleton Lane\nEast Hiram, SC 14442', 12, 'Czi2Fal1MiDpCo14', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(315, '581601', '305.527.8160', 'jaylan83@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Stacy', 'Bruen', 'Kelvin', 'Rebeka', 'Port Hank', '2023-05-22', 'Laki-laki', '24746 DuBuque Fork Suite 742\nNew Kayleebury, IL 65359-9088', 12, 'YMURaFseI67XO6qb', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(316, '381610', '1-434-765-8732', 'dach.cecile@herzog.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Antwan', 'VonRueden', 'Vicente', 'Reba', 'South Lorenzo', '1973-12-29', 'Laki-laki', '4660 Dustin Islands Apt. 562\nTellychester, KS 70000', 13, 'RF39b0htrdWHzAdk', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(317, '341113', '(361) 974-8360', 'winnifred59@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Javonte', 'Jakubowski', 'Johathan', 'Roxane', 'Schimmelfort', '2002-09-18', 'Perempuan', '6950 Eula Track Suite 033\nMargehaven, WV 62524', 13, 'QSJbhqTCj3xSHtzf', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(318, '131343', '+1 (951) 394-7591', 'hans.emmerich@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ilene', 'Runolfsdottir', 'Evans', 'Krystel', 'West Elouise', '2017-04-22', 'Laki-laki', '290 O\'Hara Crescent\nTressahaven, IN 88591', 13, 'ofyVIhTCvkEQdlud', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(319, '360122', '385-607-1954', 'miller84@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kelley', 'Hickle', 'Jovany', 'Nannie', 'South Favianfort', '2003-07-03', 'Perempuan', '6782 Madisen Neck\nNorth Miguel, RI 41165', 13, 'QMhBy5hpN6b8MNWh', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(320, '477950', '1-223-644-8600', 'wpurdy@oconner.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dolly', 'Pouros', 'Damion', 'Alvena', 'East Agnes', '2003-07-12', 'Laki-laki', '889 Lucienne View Suite 644\nNorth Vallie, NY 78008-4337', 13, 'aZqBgDbT0DeNxqhX', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(321, '507168', '563.815.8072', 'diego75@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Abdullah', 'Green', 'Kareem', 'Katlyn', 'Lamarside', '2005-11-25', 'Laki-laki', '4181 Abigale Brooks Apt. 016\nHoppechester, IA 36322', 13, 'D3zlJP3eRAxEYEZ3', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(322, '409418', '440.513.1098', 'poconner@reinger.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dallas', 'Durgan', 'Judson', 'Lauren', 'North Mike', '1982-12-29', 'Laki-laki', '2758 Murphy Inlet\nKutchborough, MN 02088-0228', 13, 'DxTg3bqHw5zajpd2', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(323, '326402', '1-252-329-4887', 'gerhold.mathew@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wilhelm', 'Hill', 'Kareem', 'Elmira', 'East Beatrice', '1972-10-16', 'Laki-laki', '840 Rippin Bridge\nLake Addiemouth, NV 34970-7942', 13, 'JsmzSLOSvdBzn2xZ', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(324, '253442', '(602) 868-7001', 'qwilderman@bergnaum.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bruce', 'Grimes', 'Zachary', 'Pamela', 'Streichburgh', '2021-11-07', 'Perempuan', '7721 Williamson Prairie\nNew Nicolette, AK 81228-4324', 13, 'ysNSFqKZZ5nYQMv6', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(325, '320984', '+1.813.602.0627', 'brannon55@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Halie', 'Spinka', 'Irwin', 'Beaulah', 'North Virginie', '1976-02-07', 'Laki-laki', '97138 Candida Well Apt. 834\nPort Concepcion, NM 43611', 13, 'lhCNc41dKN6P6LXz', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(326, '467330', '+1-959-781-5021', 'antonetta51@schmeler.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Donna', 'Lowe', 'Dallin', 'Shanna', 'Westton', '2016-09-27', 'Laki-laki', '59589 Schultz Highway\nEdisonstad, NV 40888', 13, 'LeHCaQtHR4WIpKRs', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(327, '275578', '1-984-560-1410', 'milton.oconnell@turner.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Twila', 'Wiza', 'Jovany', 'Elsa', 'North Lloyd', '1988-11-09', 'Perempuan', '45249 Alene Stream\nEunatown, AR 71078-6348', 13, 'ZNoqJ4IS1WULfia1', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(328, '282867', '+1-317-383-1772', 'turcotte.haven@jaskolski.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fleta', 'Prosacco', 'Arch', 'Cortney', 'Lonport', '2011-06-18', 'Perempuan', '51737 Treutel Garden\nNorth Addisonside, CT 70782', 13, 'HrNEthL9gpbMRssT', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(329, '401418', '(580) 302-6615', 'ereilly@cummings.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Abbey', 'Dietrich', 'Edison', 'Leatha', 'Hilperthaven', '1992-05-20', 'Perempuan', '88097 Wisoky Shore Suite 914\nLoniebury, MI 56898', 13, 'VFblP6f16ZlMq1ki', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(330, '276437', '+1.914.852.7159', 'grayce.jenkins@koelpin.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ellsworth', 'Franecki', 'Malcolm', 'Laurence', 'Port Maidashire', '1984-04-24', 'Laki-laki', '983 Kuvalis Summit\nLake Verlie, NM 52949-8448', 13, 'Xo58lBd78KR3X2WE', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(331, '587332', '+1.650.903.2095', 'haven.miller@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lulu', 'Grant', 'Stuart', 'Duane', 'Johathanshire', '2014-08-08', 'Laki-laki', '899 Jany Knolls Apt. 834\nMurphyton, NV 56556-5337', 13, 'k1HkY0lfm6bMAt2U', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(332, '137207', '+1 (682) 865-0527', 'henderson.hahn@cormier.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wanda', 'Rogahn', 'Amparo', 'Vida', 'North Duncanport', '2019-09-17', 'Perempuan', '991 Barrows Wall\nTessmouth, WA 21793-8131', 13, 'NnX1Alx2Ym8xKrHl', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(333, '244203', '(878) 520-0427', 'aubrey90@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alba', 'Sawayn', 'Andrew', 'Cara', 'Rosariofort', '2018-08-05', 'Perempuan', '65341 Kylee Way Suite 497\nWest Jarvis, AZ 21413-0241', 13, '6wXKHN8sjKlIekkb', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(334, '478263', '724-464-3004', 'kuhlman.lenny@baumbach.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zetta', 'Koelpin', 'Willis', 'Patience', 'Eveshire', '1997-10-16', 'Perempuan', '7998 Mariane Stravenue Apt. 293\nMarilynestad, MA 03714-8558', 13, 'FKndknVyONiSjy6f', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(335, '350040', '+1-806-899-9410', 'stark.declan@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Libby', 'Bergnaum', 'Archibald', 'Maudie', 'New Loycemouth', '1988-01-20', 'Perempuan', '77216 Rau Club Suite 508\nEast Erwin, MD 67476-5688', 13, 'KgI0Dh8ivQ2z7I1v', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(336, '516502', '+1-774-637-7464', 'wilkinson.kayley@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Brandyn', 'Welch', 'Jacinto', 'Krista', 'East Anabelleborough', '1986-03-21', 'Perempuan', '7160 Marietta Glens Suite 707\nHegmannberg, IL 58081-5192', 13, 'SArxhiXMtcADKY68', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(337, '569968', '820.218.7862', 'jonatan23@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Myles', 'Price', 'Bertrand', 'Matilde', 'Granttown', '2013-01-29', 'Laki-laki', '70649 Gleason Greens Apt. 403\nWest Adahaven, CT 75099', 13, 'bozPSNvWt4KAEF5h', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(338, '166727', '743-407-0797', 'tromp.gilbert@little.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Virginia', 'Huel', 'Antwan', 'Camila', 'Lake Andrewborough', '2019-02-16', 'Laki-laki', '9348 Brad Parkway\nPort Estaside, OH 10148-3990', 13, '2mAJ5IPRrCANTGhp', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(339, '308250', '+1.480.750.8159', 'guy.lindgren@nitzsche.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Magdalen', 'Greenholt', 'Noel', 'Tomasa', 'Jackiemouth', '1995-10-21', 'Perempuan', '4697 Jacey Cliffs\nSouth Anastasiaport, NV 99935', 13, 'tDZWEpJY2zTe4VHw', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(340, '383169', '+1 (986) 300-5903', 'quinten28@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cyril', 'Kuhlman', 'Fredy', 'Willow', 'Edamouth', '1985-12-03', 'Laki-laki', '2804 Samir Knolls Apt. 344\nEast Reynaberg, NE 00012', 13, 'XUJB0HOx6AT6vj5Q', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(341, '453650', '+16615564789', 'powlowski.alexys@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bradly', 'Bednar', 'Davin', 'Amalia', 'Brakusberg', '2007-02-10', 'Perempuan', '991 Hane Key\nNorth Laurettaborough, IA 66153', 14, 'tGmOVfqm0P749ulc', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(342, '186667', '+1 (323) 517-2746', 'mark18@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trent', 'Beatty', 'Ryley', 'Euna', 'Wiegandstad', '2011-05-19', 'Perempuan', '78049 Russel Corner Suite 888\nStokesville, DE 79801', 14, '3dBeFGQTuQurw95B', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(343, '407081', '(231) 603-8805', 'vandervort.willow@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mireille', 'Bernier', 'Jakob', 'Ressie', 'Olsonville', '2006-12-06', 'Perempuan', '42214 Metz Trail Suite 744\nLake Ellsworthchester, MT 93749', 14, 'g24TowQT4uXApZVG', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(344, '208312', '+16815880464', 'nader.winifred@mayer.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Craig', 'Herman', 'Juvenal', 'Dorris', 'Beattyton', '1977-12-15', 'Perempuan', '5532 Greenfelder Street\nCruickshankshire, TN 87381', 14, 'Nr1tH3Be5f48OV0t', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(345, '101717', '228-716-8977', 'cicero.funk@padberg.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Edmond', 'Stark', 'Dave', 'Lulu', 'Smithamville', '2013-03-14', 'Laki-laki', '9690 Cummerata Trail\nQuigleyland, MD 75107', 14, 'bPXJEAEbUZTHrpB0', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(346, '349942', '820.351.7080', 'maribel58@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oma', 'Ankunding', 'Karson', 'Ruby', 'Jarodland', '1996-04-13', 'Laki-laki', '510 Lehner Spur Apt. 419\nEast Nicoletteburgh, MT 17909-2703', 14, 'uiQuXUNZLyog3a3H', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(347, '526908', '832.853.3250', 'becker.elian@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lessie', 'Considine', 'Imani', 'Christiana', 'East Annalise', '2012-10-25', 'Laki-laki', '393 Leffler Bypass Suite 710\nWest Cheyenne, KS 58170-6398', 14, 'WtaB23KY6fSC9cmR', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(348, '154007', '1-623-434-4052', 'aliza77@ernser.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Agustina', 'Treutel', 'Barry', 'Cecile', 'Treutelside', '2015-06-02', 'Laki-laki', '74200 Sven Drive Suite 232\nNorth Jackson, KY 75500', 14, 'hMlZHKfkl1mq2OeU', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(349, '306428', '+1-615-439-5989', 'hortense.morar@oreilly.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kara', 'Kovacek', 'Ayden', 'Erna', 'West Kenyonshire', '1996-09-02', 'Laki-laki', '5783 Baumbach Flat Suite 499\nLake Lucinda, OH 60943', 14, 'djYdskiNuZGwuNYv', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(350, '481117', '1-863-813-1463', 'khamill@stiedemann.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Abelardo', 'Nitzsche', 'Terence', 'Lizeth', 'West Sadieland', '1980-11-17', 'Laki-laki', '81136 Torphy Oval\nEast Adellatown, ME 98814', 14, 'pdVRoMEKIhKE5fJE', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(351, '485049', '1-845-506-0283', 'barton.trantow@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Matt', 'Wyman', 'Moriah', 'Flo', 'East Christina', '2012-03-01', 'Perempuan', '461 Mosciski Path\nMaceyshire, KS 15468', 14, 'mMuJzJv277sx6oQL', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(352, '492533', '775-695-5237', 'schoen.melyna@tromp.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Buford', 'Bechtelar', 'Cleo', 'Savanna', 'New Francisca', '2013-02-23', 'Laki-laki', '412 Sheldon Springs\nKulasville, MT 58694-9964', 14, 'KxusIdcouN5mvBVx', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(353, '105883', '(425) 448-1256', 'kuvalis.luna@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Toby', 'Schuster', 'Xzavier', 'Elnora', 'North Stephaniemouth', '2007-03-14', 'Laki-laki', '15920 Rutherford Vista Suite 043\nStephanton, ND 76889', 14, 'mGZQU5AC9DOnH9Jq', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(354, '204164', '1-925-362-7709', 'gmckenzie@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alfonzo', 'Schultz', 'Cecil', 'Marina', 'Willmstown', '1994-12-29', 'Perempuan', '9835 Abernathy Villages Suite 258\nJarvisbury, KS 59680', 14, 'T8d42lVkWuTTCYCS', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(355, '592989', '(680) 421-8634', 'ycarroll@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leonardo', 'Thompson', 'Price', 'Connie', 'Ilaburgh', '2010-08-02', 'Perempuan', '5881 Adrianna Forks\nLake Dominicstad, FL 27826-3370', 14, 'Qk0FEemtTu9Yj85c', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(356, '387263', '+1.612.760.1570', 'emorissette@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leonard', 'Wilkinson', 'Waldo', 'Emmie', 'Alejandraborough', '2019-07-10', 'Perempuan', '89883 Schamberger Field\nLake Ashleigh, ND 76493', 14, 'iVfx4cWlwTrQzh3u', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(357, '453654', '(540) 868-4867', 'adolphus66@bailey.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sherman', 'Wiza', 'Leo', 'May', 'Port Edisonborough', '2023-08-02', 'Laki-laki', '4843 Kailyn Forest Suite 925\nPort Cecelia, IN 66275-9725', 14, 'OvCxzidtfjrwKrA9', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(358, '305096', '+1-201-375-1611', 'qbruen@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Priscilla', 'Wiza', 'Silas', 'Maye', 'North Beulahborough', '1975-03-27', 'Perempuan', '93787 Gerlach Walk\nOniehaven, HI 33820', 14, 'fwgZnoExrqeD5OhA', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(359, '417627', '1-270-500-6016', 'makenzie.hickle@mayert.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Piper', 'Schoen', 'Cullen', 'Jaclyn', 'Lexiefort', '2006-04-25', 'Perempuan', '6863 Ryan Roads\nKubberg, HI 91082', 14, '8W5QIrKgtAA692fa', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(360, '153257', '(505) 234-2029', 'bernhard.joana@raynor.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Talon', 'Brown', 'Travon', 'Enola', 'Port Madalyn', '2023-03-19', 'Laki-laki', '522 Doyle Stravenue\nNorth Reginaldberg, NJ 30398', 14, 'TQ2DDABFuOGSWZtC', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(361, '311641', '1-610-200-0752', 'cydney.von@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tyson', 'Stehr', 'Stewart', 'Lavina', 'West Carolinaborough', '1982-09-17', 'Laki-laki', '5918 Brisa Alley\nDurganville, NH 08808-2368', 14, 'A79bNrJwAPpqirQM', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(362, '307216', '314-221-3867', 'rempel.ambrose@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lela', 'Pfeffer', 'Russell', 'Luz', 'Baileyshire', '2006-06-11', 'Perempuan', '488 Jedidiah Springs Suite 722\nNorth Eveland, NH 96099-0155', 14, 'dgsjpCLWOqZx1i92', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(363, '552122', '(503) 439-5776', 'yzboncak@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cedrick', 'Gibson', 'Coleman', 'Shany', 'Kleinhaven', '2005-01-04', 'Laki-laki', '670 Kuhlman Fall Apt. 775\nEast Maud, PA 78183', 14, 'z7rLA237V6DPnQf9', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(364, '134280', '+1-724-209-9448', 'vince16@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tristian', 'Runolfsson', 'Wilford', 'Dora', 'Lake Antonia', '1986-12-26', 'Laki-laki', '9705 Grady Parkways Apt. 925\nPort Reva, HI 45667-1180', 14, 'SG0EO1ZF9N3P2eux', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(365, '450681', '+1.678.864.9056', 'darron.tremblay@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Elfrieda', 'Feeney', 'Berta', 'Maxie', 'North Marleyside', '2013-02-10', 'Perempuan', '76895 Lenny Ways\nColumbusville, VA 02960', 14, '6MqwQdEqpnlPufrr', '2025-05-14 16:58:20', '2025-05-14 16:58:20'),
(366, '160111', '435-927-7301', 'nswift@bauch.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Elwyn', 'Heidenreich', 'Toby', 'Laurence', 'Kulasside', '2001-03-14', 'Perempuan', '29683 Lenna Fork\nEast Jamey, IA 18303', 14, 'f4lwP6iK3WBO3IEf', '2025-05-14 16:58:20', '2025-05-14 16:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoProfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jns_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `email`, `phone`, `password`, `photoProfile`, `firstName`, `lastName`, `jns_kelamin`, `alamat`, `email_verified_at`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, '3892710203155246', 'geovany.hayes@erdman.com', '848-203-3961', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Carey', 'Flatley', 'Perempuan', '945 Mertz Forest\nFatimamouth, AK 18282', '2025-05-14 16:58:19', 'FCVRvC9Vc6qiTN7S', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(2, '0311021124207238', 'eden.ruecker@yahoo.com', '(283) 557-9210', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Else', 'Bahringer', 'Perempuan', '697 Ulises Ways Suite 602\nSanfordberg, MO 51957', '2025-05-14 16:58:19', 'JUmkJ0NaK43tVIcG', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(3, '9454546327406091', 'moen.cleveland@feil.com', '1-843-747-9253', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Reba', 'Cummerata', 'Laki-laki', '6157 Marco Forks\nLake Beth, DE 11664-5542', '2025-05-14 16:58:19', 'mvvCjdYv3nbbZpgN', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(4, '8513827488688062', 'gerlach.casimer@kirlin.com', '+19174798542', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Kimberly', 'Connelly', 'Laki-laki', '479 Howard Cliffs\nNorth Wardville, VA 72122', '2025-05-14 16:58:19', 'NRSTUCNz1C4A3E3I', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(5, '0127088159590479', 'hassan92@runte.com', '1-573-757-3752', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Monroe', 'Huel', 'Laki-laki', '17557 Hickle Fields\nHamillchester, DE 62217', '2025-05-14 16:58:19', '1sCiEWwoLWI3HpDL', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(6, '1294525095618936', 'koss.ezekiel@yahoo.com', '1-540-327-8329', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Madison', 'Kozey', 'Laki-laki', '959 Padberg Dam\nHoseaton, UT 07871-2971', '2025-05-14 16:58:19', 'Pfq70fZcjrtQFuOl', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(7, '6785642116222086', 'manuela61@buckridge.com', '989.235.0547', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Charley', 'Waelchi', 'Perempuan', '466 Crona Isle Apt. 184\nLake Domenicomouth, HI 73063-0801', '2025-05-14 16:58:19', 'MxA00CHqTyOUYzJh', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(8, '0882848182940784', 'idella.mante@hotmail.com', '1-484-997-7707', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Donny', 'Jacobi', 'Laki-laki', '15223 Kilback Ranch Suite 363\nSerenityfurt, WY 86612-4948', '2025-05-14 16:58:19', 'A7zfLVxDPo1eUkUS', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(9, '7737383810577888', 'jerry74@greenholt.com', '+17046632918', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Kailey', 'Sanford', 'Perempuan', '491 Streich Rue Apt. 070\nCharlestown, MS 56196', '2025-05-14 16:58:19', 'cZsYbV1M9GHFdTdZ', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(10, '2922787594284090', 'spinka.meaghan@gmail.com', '631.456.2394', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Rossie', 'Bauch', 'Perempuan', '3948 Medhurst Summit Suite 188\nLake Ryleeburgh, AZ 14427-9147', '2025-05-14 16:58:19', 'svNKeMAfk4JglTZI', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(11, '8872312073750107', 'ernser.merle@white.info', '1-678-493-4960', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Arnold', 'Larkin', 'Perempuan', '9581 Feil Ferry\nBlandaborough, ID 76686', '2025-05-14 16:58:19', 'VLeR8r4xQtMCAqk0', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(12, '3040157702192964', 'huels.christa@mitchell.com', '1-775-666-8383', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'America', 'Schmeler', 'Perempuan', '44362 Lebsack Club\nPort Destinee, VA 07630', '2025-05-14 16:58:19', 'PRJBXZDmL4YTCVuA', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(13, '6063908683054682', 'iwitting@gmail.com', '561.566.8952', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Casimir', 'Schoen', 'Perempuan', '7721 Jakob Shoal Suite 583\nPort Lincolnbury, RI 76241', '2025-05-14 16:58:19', 'VSIR3jolWJuSYXN4', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(14, '8187636788838070', 'dharber@kirlin.biz', '726.554.3050', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Coralie', 'Stark', 'Perempuan', '755 Romaguera Ramp Apt. 483\nNew Rodville, NC 34053', '2025-05-14 16:58:19', '5QjNTg022NztGQMn', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(15, '8634505827416631', 'berry.weber@pouros.com', '(859) 814-7244', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Hassie', 'Wilderman', 'Laki-laki', '7503 Rowan Lodge\nKingbury, SC 87625-4209', '2025-05-14 16:58:19', 'npUkAzCI754IqWAh', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(16, '6799336759611241', 'charley.luettgen@yahoo.com', '(385) 203-4354', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Sasha', 'Hickle', 'Perempuan', '31308 Emmy Trail\nWest Joshuahton, AL 13903-4593', '2025-05-14 16:58:19', 'UTOJhqHvI3GBsFRK', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(17, '0951919568051450', 'damore.hilma@cole.com', '+13862772104', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Doug', 'Altenwerth', 'Laki-laki', '37016 Asia Mall Suite 585\nWest Nola, MA 30755', '2025-05-14 16:58:19', 'efiXaYXQPKqjYDJC', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(18, '0509920734640605', 'pollich.vivienne@yahoo.com', '+1-239-985-1841', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Kelsi', 'Turner', 'Perempuan', '87486 Carroll Hills\nLake Jackiemouth, CT 60687-3499', '2025-05-14 16:58:19', 'kEXu3EosDlzBhQdg', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(19, '1070325077835119', 'treutel.kenna@hotmail.com', '+1-785-235-2068', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Eloy', 'Braun', 'Perempuan', '11528 Tanner Fort Suite 741\nPort Alberthaton, MS 07828-8380', '2025-05-14 16:58:19', 'a5oPS3qfhmlUo5XP', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(20, '6200388333232119', 'norwood81@bailey.com', '1-848-244-8754', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Ernest', 'Quitzon', 'Perempuan', '650 Bartoletti Dam Suite 231\nEast Lizaborough, IN 57442-2464', '2025-05-14 16:58:19', 'UAzCocxZNEtGHvHF', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(21, '3453512238460124', 'slubowitz@reinger.info', '938-971-1052', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Gage', 'Veum', 'Laki-laki', '86448 Oberbrunner Center\nFayberg, NE 37692-4275', '2025-05-14 16:58:19', 'JzXkDghhcjeiktXF', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(22, '6022182496114894', 'layla22@heaney.net', '(762) 347-1086', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'photoProfile.jpg', 'Eliane', 'Terry', 'Perempuan', '403 Herta Extension Apt. 055\nWest Brendan, SD 90865-4472', '2025-05-14 16:58:19', 'aPPjjsn4rzcvisRa', 0, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(23, '3510211507010005', 'admin@gmail.com', '085955290636', 'admin', NULL, 'Hafid Dian', 'Nurfaujan Ahat', 'Laki-laki', 'RT03/RW06 Dsn. Gogourung Dawuhan Kademangan Blitar Jawa Timur 66161 Indonesia', '2025-05-14 16:58:19', '1234567898765432', 1, '2025-05-14 16:58:19', '2025-05-14 16:58:19'),
(24, '', 'user@user.com', NULL, '$2y$10$LWkECZo9LmZCMhxPFeQEMuIOvcES.SwbmDDWrHbsP9AN6WIAOQGiS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2025-05-14 17:01:13', '2025-05-14 17:01:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `absensis_kode_unique` (`kode`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kelas_kode_unique` (`kode`);

--
-- Indexes for table `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mapels_kode_unique` (`kode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nis_unique` (`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
