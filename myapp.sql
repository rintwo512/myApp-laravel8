-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.byetcluster.com
-- Generation Time: Jul 19, 2022 at 01:20 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31978120_appme`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refrigerant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voltage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pipa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seri_indoor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seri_outdoor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_maintenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_maint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`id`, `user_id`, `label`, `assets`, `wing`, `lantai`, `ruangan`, `merk`, `type`, `jenis`, `kapasitas`, `refrigerant`, `product`, `current`, `voltage`, `btu`, `pipa`, `status`, `seri_indoor`, `seri_outdoor`, `catatan`, `keterangan`, `kerusakan`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_maintenance`, `petugas_maint`, `user_updated`, `user_updated_time`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'a1.07', 'Telkom', 'WA', 'Lt1', 'Rg.Manager Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-04-07 02:00', 'Rinto, dan Rahmat Haryadi', 'Meong', '2022-06-11 04:45:19', NULL, NULL, '2022-04-11 07:35:32', '2022-06-10 20:45:19'),
(4, 1, 'A1.01', 'Telkom', 'WA', 'Lt1', 'Rg.tamu wing a', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Rusak', NULL, NULL, NULL, 'Unit outdoor dan modul indoor sudah di pindahkan ke Ac ruang tamu sekdiv', 'tidak berfungsi', NULL, 'ME', NULL, NULL, 'Meong', '2022-07-03 17:28:57', NULL, NULL, '2022-04-11 07:39:00', '2022-07-03 21:28:57'),
(5, 1, 'A1.03', 'Telkom', 'WA', 'Lt1', 'rg.OSM Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'sudah di lakukan perbaikan beberapa kali', NULL, 'mcb trip sekitar 3menit saat ac di onkan, kompresor mengalami overload', NULL, NULL, NULL, NULL, 'Meong', '2022-04-14 22:04:39', NULL, NULL, '2022-04-11 07:40:24', '2022-04-14 14:04:39'),
(6, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'Belum di lakukan perbaikan', NULL, 'MCB Trip', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:02', NULL, NULL, '2022-04-11 07:41:58', '2022-04-12 14:03:02'),
(7, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-03-20 11:59', 'Rinto, Rahmat Haryadi', 'Meong', '2022-06-11 04:33:39', NULL, NULL, '2022-04-11 07:43:13', '2022-06-10 20:33:39'),
(8, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Manager Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-05-23 00:03:46', NULL, NULL, '2022-04-11 07:45:31', '2022-05-22 16:03:46'),
(9, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Rapat Egbis', 'Daikin', 'Cassete', 'Non-inverter', '5pk', 'R22', NULL, NULL, '380Volt', NULL, NULL, 'Rusak', NULL, NULL, 'belum di lakukan pengecekan', NULL, 'tidak dingin', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:37', NULL, NULL, '2022-04-11 07:46:52', '2022-04-12 14:03:37'),
(10, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'unit indoor masih normal', NULL, 'Kompresor overheat', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:50', NULL, NULL, '2022-04-11 07:51:04', '2022-04-12 14:03:50'),
(11, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:51:19', NULL, NULL, '2022-04-11 07:51:49', '2022-06-09 04:51:19'),
(12, 1, 'A1.11', 'Telkom', 'WA', 'Lt1', 'Rg.Sekertaris RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, NULL, NULL, 'Error A3', NULL, 'Vendor', NULL, NULL, 'Meong', '2022-05-26 16:54:44', NULL, NULL, '2022-04-11 07:53:23', '2022-05-26 08:54:44'),
(13, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Staff RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-03-10 00:54', 'Andre, Rahmat Abdullah', 'Meong', '2022-06-11 04:45:58', NULL, NULL, '2022-04-11 07:55:10', '2022-06-10 20:45:58'),
(14, 1, NULL, 'RWS', 'WA', 'Lt1', 'Rg.Staff RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'unit indoor masih normal', NULL, 'kompresor rusak', NULL, 'ME', NULL, NULL, 'Meong', '2022-06-09 12:51:47', NULL, NULL, '2022-04-11 07:56:23', '2022-06-09 04:51:47'),
(15, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Mushola RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-03-01 00:57', 'Andre, Rahmat Abdullah', 'Meong', '2022-06-11 04:46:30', NULL, NULL, '2022-04-11 07:58:32', '2022-06-10 20:46:30'),
(16, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Rapat RWS', 'General', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'remote kadang tidak berfungsi', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:52:08', NULL, NULL, '2022-04-11 07:59:45', '2022-06-09 04:52:08'),
(17, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', NULL, NULL, 'Meong', '2022-06-09 12:52:38', NULL, NULL, '2022-04-11 08:35:47', '2022-06-09 04:52:38'),
(18, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', NULL, NULL, 'Meong', '2022-06-09 12:52:52', NULL, NULL, '2022-04-11 08:36:34', '2022-06-09 04:52:52'),
(19, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Manager Pins', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'ruangan dalam keadaan kosong', NULL, NULL, NULL, 'Vendor', NULL, NULL, 'Meong', '2022-04-12 22:05:49', NULL, NULL, '2022-04-11 08:38:19', '2022-04-12 14:05:49'),
(20, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.SOPP', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', NULL, NULL, 'Meong', '2022-04-12 22:06:01', NULL, NULL, '2022-04-11 08:42:18', '2022-04-12 14:06:01'),
(21, 1, 'A2.08', 'Telkom', 'WA', 'Lt2', 'Rg.OSM HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '7.7 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, '1. sering terjadi kondensasi pada pipa ac\r\n2. Fuse pada modul outdoor sudah di ganti dengan kawat tembaga', NULL, NULL, NULL, 'Vendor', '2022-05-28 08:30', 'Rinto, Syahril', 'Meong', '2022-06-11 04:46:59', NULL, NULL, '2022-04-11 10:41:02', '2022-06-10 20:46:59'),
(22, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Rapat HR', 'Sharp', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'Kompresor sudah di ganti', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:54:00', NULL, NULL, '2022-04-11 10:42:06', '2022-06-09 04:54:00'),
(23, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:05', NULL, NULL, '2022-04-11 10:43:13', '2022-04-12 14:07:05'),
(24, 1, NULL, 'Telkom', 'WA', 'Lt2', 'depan meja kerja Pahar', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:17', NULL, NULL, '2022-04-11 10:44:47', '2022-04-12 14:07:17'),
(25, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'General', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, NULL, NULL, 'Kompresor rusak', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:34', NULL, NULL, '2022-04-11 10:46:33', '2022-04-12 14:07:34'),
(26, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16 A', '220Volt', '27000', '3/8 + 5/8', 'Rusak', NULL, NULL, 'Analisa : kerusakan transmisi antara unit indoor dan outdoor', 'Sudah di coba lakukan perbaikan, tapi posisi outdoor sulit di jangkau', 'Error U4', NULL, 'ME', '2022-06-01 22:31', 'Arif, Syahril', 'Meong', '2022-06-11 04:47:49', NULL, NULL, '2022-04-11 10:55:37', '2022-06-10 20:47:49'),
(27, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '5pk', 'R410', 'Thailand', '16 A', '380Volt', NULL, NULL, 'Rusak', NULL, NULL, 'sudah tidak bisa normal', NULL, 'Kompresor dan modul indoor sudah rusak', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:58', NULL, NULL, '2022-04-11 10:57:51', '2022-04-12 14:07:58'),
(28, 1, 'A2.02', 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-05-27 08:00', 'Rinto, Syahril', 'Meong', '2022-06-11 04:48:24', NULL, NULL, '2022-04-11 10:58:44', '2022-06-10 20:48:24'),
(29, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager Finance', 'Daikin', 'Wall Mounted', 'Inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 23:27', 'Arif, Rahmat Haryadi', 'Meong', '2022-06-11 04:50:22', NULL, NULL, '2022-04-11 10:59:56', '2022-06-10 20:50:22'),
(30, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-28 01:03', 'Rahmat Hidayatullah, Raswin, Rahmat Abdullah', 'Meong', '2022-06-11 04:51:10', NULL, NULL, '2022-04-11 11:01:18', '2022-06-10 20:51:10'),
(31, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Pantry Finance', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-05-31 22:26', 'Arif, Rahmat Haryadi', 'Meong', '2022-06-11 04:51:35', NULL, NULL, '2022-04-11 11:03:07', '2022-06-10 20:51:35'),
(32, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.OBS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'MCB ada di panel AC wing A Lt1', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:56', NULL, NULL, '2022-04-11 11:03:56', '2022-04-12 14:08:56'),
(33, 1, 'A2.01', 'Telkom', 'WA', 'Lt2', 'Rg.OSM Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, 'Kurang dingin', NULL, NULL, NULL, 'ME', '2022-06-01 10:24', 'Rinto, Andre', 'Meong', '2022-06-11 04:52:11', NULL, NULL, '2022-04-11 11:05:57', '2022-06-10 20:52:11'),
(34, 1, NULL, 'Finance', 'WA', 'Lt2', 'Rg.OSM Finance', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:54:20', NULL, NULL, '2022-04-11 11:06:44', '2022-06-09 04:54:20'),
(35, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:00', NULL, 'Meong', '2022-06-09 12:54:33', NULL, NULL, '2022-04-12 12:39:38', '2022-06-09 04:54:33'),
(36, 1, 'B1.01', 'Telkom', 'WB', 'Lt1', 'Rg.Rapat GSD', 'Daikin', 'Cassete', 'Non-inverter', '2,5pk', 'R22', 'Thailand', '13,7 A', '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-07-18 07:18:37', NULL, NULL, '2022-04-12 14:12:12', '2022-07-18 11:18:37'),
(37, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Osm CC/Rg.Pak Sahwan', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-04-13 21:44', NULL, 'Meong', '2022-06-23 13:01:47', NULL, NULL, '2022-04-14 13:46:13', '2022-06-23 17:01:47'),
(38, 1, NULL, NULL, 'WD', 'Lt2', 'Rg.Santai CC', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 21:47', NULL, 'Meong', '2022-06-23 13:02:01', NULL, NULL, '2022-04-14 13:47:38', '2022-06-23 17:02:01'),
(39, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'LG', 'Wall Mounted', 'Non-inverter', '1,5pk', 'R22', NULL, '5,1 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'Telah di lakukan penggantian kapasitor tanggal 2022/04/14', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:55:40', NULL, NULL, '2022-04-14 13:50:47', '2022-06-09 04:55:40'),
(40, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'Sharp', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, '8,2 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'Telah dilakukan pengisian freon tanggal 2022/04/14', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:55:58', NULL, NULL, '2022-04-14 13:53:41', '2022-06-09 04:55:58'),
(41, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Depan Rg.TAM', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,4 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'outdoor sudah di ganti dengan outdoor baru 2022/04/22', NULL, NULL, NULL, 'ME', NULL, NULL, 'Meong', '2022-05-14 12:15:08', NULL, NULL, '2022-04-14 13:59:17', '2022-05-14 04:15:08'),
(42, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:44', NULL, 'Meong', '2022-06-09 12:56:18', NULL, NULL, '2022-04-15 20:00:12', '2022-06-09 04:56:18'),
(43, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:20', NULL, 'Meong', '2022-06-09 12:56:37', NULL, NULL, '2022-04-15 20:01:45', '2022-06-09 04:56:37'),
(44, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 23:21', NULL, 'Meong', '2022-06-09 12:56:55', NULL, NULL, '2022-04-15 20:02:52', '2022-06-09 04:56:55'),
(46, 1, 'B1.02', 'Telkom', 'WB', 'Lt1', 'Rg.Kerja MGR GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-21 06:58:00', NULL, NULL, '2022-04-15 20:05:29', '2022-06-21 10:58:00'),
(47, 1, 'B1.03', 'Telkom', 'WB', 'Lt1', 'Rg.GM GSD', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', NULL, NULL, 'Meong', '2022-06-27 07:02:04', NULL, NULL, '2022-04-15 20:06:35', '2022-06-27 11:02:04'),
(48, 1, 'B1.04', 'Telkom', 'WB', 'Lt1', 'Rg.GM GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'sudah tidak bisa normal', NULL, 'Kompresor rusak', NULL, NULL, NULL, NULL, 'Meong', '2022-06-27 07:02:30', NULL, NULL, '2022-04-15 20:07:52', '2022-06-27 11:02:30'),
(49, 1, 'B1.06', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD/atas meja kerja bu erni', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', '27000', '3/8 + 5/8', 'Rusak', NULL, NULL, 'sudah dilakukan perbaikan beberapa kali', NULL, 'Kode U0', NULL, 'ME', NULL, NULL, 'Meong', '2022-06-21 07:20:23', NULL, NULL, '2022-04-15 20:10:54', '2022-06-21 11:20:23'),
(50, 1, 'B1.12', 'GSD', 'WB', 'Lt1', 'Rg.Santai GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1,5pk', 'R22', 'Korea', '4,4 A', '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, 'outdoor merk mitshubisi, kompresor merk LG KW1', 'Petugas penggantian kompresor : Rinto, Rahmat R, Andre, Tanggal sabtu,25/juni/2022', NULL, NULL, 'ME', NULL, NULL, 'Meong', '2022-06-25 23:02:57', NULL, NULL, '2022-04-15 20:12:36', '2022-06-26 03:02:57'),
(51, 1, 'B1.11', 'GSD', 'WB', 'Lt1', 'Rg.Santai GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7,7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-27 13:54:31', NULL, NULL, '2022-04-15 20:13:18', '2022-06-27 17:54:31'),
(52, 1, 'B1.07', 'Telkom', 'WB', 'Lt1', 'Rg.Santai GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', NULL, NULL, NULL, NULL, 'Terminal kompresor rusak', NULL, NULL, NULL, NULL, 'Meong', '2022-06-25 23:01:15', NULL, NULL, '2022-04-15 20:14:34', '2022-06-26 03:01:15'),
(53, 1, 'B1.08', 'Telkom', 'WB', 'Lt1', 'Musholah GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'sudah tidak bisa normal', NULL, 'Kompresor sudah rusak', NULL, NULL, NULL, NULL, 'Meong', '2022-06-25 23:02:12', NULL, NULL, '2022-04-15 20:15:47', '2022-06-26 03:02:12'),
(54, 1, 'B1.05', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD/Atas meja kerja pak deri', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-21 07:00:18', NULL, NULL, '2022-04-15 20:17:12', '2022-06-21 11:00:18'),
(55, 1, 'B1.09', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD/Atas Meja Afdal', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', NULL, NULL, 'Meong', '2022-06-21 07:02:34', NULL, NULL, '2022-04-15 20:18:39', '2022-06-21 11:02:34'),
(56, 1, 'B1.10', 'Telkom', 'WB', 'Lt1', 'Atas Meja Bilyard GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-21 07:04:02', NULL, NULL, '2022-04-15 20:20:30', '2022-06-21 11:04:02'),
(57, 1, 'B1', 'GSD', 'WB', 'Lt1', 'Rg.RBOC GSD', 'Daikin', 'Wall Mounted', 'Inverter', '2pk', 'R32', 'Thailand', '8,1 A', '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-06-15 09:00', 'Rahmat Haryadi, Rahmat Abdullah', 'Meong', '2022-06-25 22:45:30', NULL, NULL, '2022-04-15 20:21:25', '2022-06-26 02:45:30'),
(59, 1, NULL, 'Telkom', 'WC', 'Lt1', 'Rg.Deputy Infra', 'Daikin', 'Wall Mounted', 'Non-inverter', '2,5pk', 'R32', 'Malaysia', '9 A', '220Volt', '22000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, '29 April, 2022', 'raswin, rinto, rahmat kintil, arif', NULL, NULL, 'Meong', '2022-06-09 12:58:26', NULL, NULL, '2022-05-01 03:54:49', '2022-06-09 04:58:26'),
(60, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM Egbis', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, 'Label MCB A1.03', NULL, NULL, '11 May, 2022', 'Rinto, Raswin, Hasrul, Andre, Rusdi', NULL, NULL, 'Meong', '2022-07-03 19:02:41', NULL, NULL, '2022-05-13 04:17:37', '2022-07-03 23:02:41'),
(61, 1, NULL, NULL, 'WC', 'Lt2', 'rg.pantry', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-11 11:26', 'Rahmat Hidayatullah, Rahmat Abdullah', 'Meong', '2022-06-11 04:54:17', NULL, NULL, '2022-05-14 03:27:42', '2022-06-10 20:54:17'),
(62, 1, 'a1.12', 'Telkom', 'WA', 'Lt1', 'OSM RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '3/4pk', 'R22', 'Indonesia', NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, '1 January, 2016', 'Rinto, Hendrik', '2022-05-14 16:47', 'Rinto, Syahril', 'Meong', '2022-06-11 04:54:45', NULL, NULL, '2022-05-14 08:48:58', '2022-06-10 20:54:45'),
(63, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Executive Lounge Sekdiv', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', '8.0 A', '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, 'Telah di lakukan pergantian kapasitor 20/05/2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 13:22:01', NULL, NULL, '2022-05-20 10:59:39', '2022-06-23 17:22:01'),
(64, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Executive Lounge Sekdiv', 'Sharp', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', NULL, '1/4 + 1/2', 'Rusak', NULL, NULL, 'Analisa kebocoran ada pada unit indoor', 'Outdoor merk panasonic 2pk diganti pada 01/04/2022', 'Freon kosong', '1 April, 2022', 'ME', NULL, NULL, 'Meong', '2022-06-23 13:22:32', NULL, NULL, '2022-05-20 11:07:32', '2022-06-23 17:22:32'),
(65, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Rahmat Hidayatullah, Raswin, Rahmat Abdullah', 'Meong', '2022-06-11 04:55:46', NULL, NULL, '2022-05-21 17:15:45', '2022-06-10 20:55:46'),
(66, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Rahmat Hidayatullah, Raswin, Rahmat Abdullah', 'Meong', '2022-06-11 04:56:03', NULL, NULL, '2022-05-21 17:17:34', '2022-06-10 20:56:03'),
(68, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Rahmat Hidayatullah, Raswin, Rahmat Abdullah', 'Meong', '2022-06-11 04:56:19', NULL, NULL, '2022-05-21 17:20:31', '2022-06-10 20:56:19'),
(69, 1, 'A3.01', NULL, 'WA', 'Lt3', 'Rg.Posko ROC', 'Daikin', 'Cassete', 'Non-inverter', '1,5pk', 'R410', 'Thailand', '7,5 A', '220Volt', '13000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, '1 May, 2021', 'Vendor', '2022-05-21 21:00', 'Rinto, Syahril', 'Meong', '2022-06-11 04:56:47', NULL, NULL, '2022-05-21 17:26:23', '2022-06-10 20:56:47'),
(70, 1, 'A3.02', NULL, 'WA', 'Lt3', 'Rg.Posko ROC', 'Daikin', 'Cassete', 'Non-inverter', '1,5pk', 'R410', 'Thailand', '7,5 A', '220Volt', '13000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, '1 May, 2021', 'Vendor', '2022-05-21 21:00', 'Rinto, Syahril', 'Meong', '2022-06-11 04:57:07', NULL, NULL, '2022-05-21 17:27:48', '2022-06-10 20:57:07'),
(71, 1, NULL, NULL, 'WA', 'Lt3', 'Rg.Istrahat Wanita ROC', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-25 09:45', NULL, 'Meong', '2022-06-09 13:01:48', NULL, NULL, '2022-05-26 01:46:46', '2022-06-09 05:01:48'),
(72, 1, NULL, NULL, 'WA', 'Lt3', 'Rg.Istrahat Pria ROC', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-05-25 10:46', NULL, 'Meong', '2022-06-09 13:02:07', NULL, NULL, '2022-05-26 01:47:35', '2022-06-09 05:02:07'),
(73, 1, NULL, 'ROC', 'WA', 'Lt3', 'Rg.Server ROC', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, 'Progres : Telah dilakukan penambahan freon tanggal 08/juni/2022\r\nPetugas : Rahmat Hidayatullah', NULL, NULL, NULL, 'Vendor', '2022-05-31 11:29', 'Rinto, Syahril, Andre', 'Meong', '2022-06-11 04:59:24', NULL, NULL, '2022-06-02 04:31:09', '2022-06-10 20:59:24'),
(74, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Manager Customer Touch Point', 'Sharp', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-06-05 21:00', 'Rahmat Haryadi, Rahmat Abdullah', 'Meong', '2022-06-23 13:02:49', NULL, NULL, '2022-06-07 08:31:50', '2022-06-23 17:02:49'),
(75, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff CC', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-06-05 10:32', 'Rahmat Haryadi, Rahmat Abdullah', 'Meong', '2022-06-23 13:02:18', NULL, NULL, '2022-06-07 08:33:24', '2022-06-23 17:02:18'),
(76, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Rusak', NULL, NULL, NULL, 'belum di lakukan perbaikan', 'outdoor tidak aktif', NULL, 'Vendor', '2022-06-05 09:33', 'Rahmat Haryadi, Rahmat Abdullah', 'Meong', '2022-06-23 13:03:04', NULL, NULL, '2022-06-07 08:35:13', '2022-06-23 17:03:04'),
(77, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-06-05 09:35', 'Rahmat Haryadi, Rahmat Abdullah', 'Meong', '2022-06-23 13:03:18', NULL, NULL, '2022-06-07 08:36:14', '2022-06-23 17:03:18'),
(78, 1, NULL, 'Marketing', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, '1 June, 2020', 'Vendor', '2022-06-06 16:36', 'Arif, Syahril', 'Meong', '2022-06-11 05:01:48', NULL, NULL, '2022-06-07 08:37:57', '2022-06-10 21:01:48'),
(79, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-06-06 09:38', 'Arif, Syahril', 'Meong', '2022-06-11 05:02:05', NULL, NULL, '2022-06-07 08:39:03', '2022-06-10 21:02:05'),
(80, 1, 'A2.03', 'Telkom', 'WA', 'Lt2', 'Rg. Staff Finance', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020302', 'K027243', NULL, NULL, NULL, '7 June, 2022', 'Rinto, Rahmat Hidayatullah, Rahmat Haryadi, Pak Hasrul, Pak Arif, Pak Syahril, Andre', NULL, NULL, 'Meong', '2022-07-03 17:23:28', NULL, NULL, '2022-06-07 08:41:16', '2022-07-03 21:23:28'),
(81, 1, 'D2.01', 'Telkom', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020284', 'K027173', NULL, NULL, NULL, '8 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rusdi', NULL, NULL, 'Meong', '2022-07-03 16:37:24', NULL, NULL, '2022-06-09 03:56:49', '2022-07-03 20:37:24'),
(82, 1, 'D2.02', 'Telkom', 'WD', 'Lt2', 'Rg.Staff CC', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020325', 'K027236', 'Indoor habis jatuh', NULL, NULL, '8 June, 2022', 'Rinto, Rahmat, Rahmat, Arif, Andre, Rahmat, Raswin', NULL, NULL, 'Meong', '2022-07-03 16:39:55', NULL, NULL, '2022-06-09 03:58:26', '2022-07-03 20:39:55'),
(83, 1, NULL, 'Telkom', 'Lainnya', 'Lt1', 'Medika', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '7,9 A', '380Volt', NULL, '3/8 + 5/8', 'Rusak', 'E', 'E011253', 'MCB di panel AC wing A lt.1', NULL, 'System refrigerant buntu', NULL, 'Vendor', NULL, NULL, 'Meong', '2022-07-08 21:43:22', NULL, NULL, '2022-06-09 04:15:40', '2022-07-09 01:43:22'),
(84, 1, 'C2.01', 'Telkom', 'WC', 'Lt2', 'Rg.Staff Area depan', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020296', 'K027255', NULL, NULL, NULL, '10 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rahmat', NULL, NULL, 'Meong', '2022-07-03 16:40:58', NULL, NULL, '2022-06-10 19:57:51', '2022-07-03 20:40:58'),
(85, 1, 'C2.02', 'Telkom', 'WC', 'Lt2', 'Rg.Staff GA', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020323', 'K027264', NULL, NULL, NULL, '10 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rahmat', NULL, NULL, 'Meong', '2022-07-03 16:42:12', NULL, NULL, '2022-06-10 20:00:04', '2022-07-03 20:42:12'),
(86, 1, 'C1.01', 'Telkom', 'WC', 'Lt1', 'Rg.Staff', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020301', 'K027237', 'MCB ada di panel ac sentral.\r\nSumber ada di wing c lt.2', NULL, NULL, '10 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rahmat', NULL, NULL, 'Meong', '2022-07-03 16:43:20', NULL, NULL, '2022-06-10 20:01:33', '2022-07-03 20:43:20'),
(87, 1, 'A3.03', 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020831', 'K027252', 'MCB Ada di panel ruang server ROC', NULL, NULL, '14 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rusdi, Raswin', NULL, NULL, 'Meong', '2022-07-03 16:44:47', NULL, NULL, '2022-06-15 09:39:52', '2022-07-03 20:44:47'),
(88, 1, 'B3.05', 'Telkom', 'WB', 'Lt3', 'Fiber room', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020326', 'K027254', NULL, NULL, NULL, '14 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rusdi, Raswin, Rahmat', NULL, NULL, 'Meong', '2022-07-03 16:45:40', NULL, NULL, '2022-06-15 09:41:37', '2022-07-03 20:45:40'),
(89, 1, 'A1.10', 'Telkom', 'WA', 'Lt1', 'Rg.Staff RWS', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020297', 'K027249', NULL, NULL, NULL, '14 June, 2022', 'Rinto, Rahmat, Raswin, Andre, Arif, Rahmat', NULL, NULL, 'Meong', '2022-07-03 17:01:37', NULL, NULL, '2022-06-15 09:42:52', '2022-07-03 21:01:37'),
(90, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Digital Marketing Operation', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-06-13 09:43', 'Arif, Syahril', 'Meong', '2022-06-21 07:06:30', NULL, NULL, '2022-06-15 09:44:26', '2022-06-21 11:06:30'),
(91, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Digital Marketing Operation', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-06-13 09:44', 'Arif, Syahril', 'Meong', '2022-06-21 07:06:56', NULL, NULL, '2022-06-15 09:46:14', '2022-06-21 11:06:56'),
(92, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Deputy Marketing', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', '2022-06-17 09:00', 'Arif, Syahril', 'Meong', '2022-06-19 01:19:47', NULL, NULL, '2022-06-19 05:10:17', '2022-06-19 05:19:47'),
(93, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg. Santai', 'LG', 'Wall Mounted', 'Inverter', '1pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 13:03:36', NULL, NULL, '2022-06-21 11:10:31', '2022-06-23 17:03:36'),
(94, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Rapat', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 13:03:50', NULL, NULL, '2022-06-21 11:12:00', '2022-06-23 17:03:50'),
(95, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Manager Customer Data Management', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 12:53:16', NULL, NULL, '2022-06-21 11:13:47', '2022-06-23 16:53:16'),
(96, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Rg.Kerja EVP sekdiv', 'LG', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Rusak', NULL, NULL, 'Sudah di lakukan pergantian kompresor dengan kompresor 1 pk', NULL, 'Kompresor koslet', NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 13:21:14', NULL, NULL, '2022-06-21 12:07:18', '2022-06-23 17:21:14'),
(97, 1, 'B1.14', 'Telkom', 'WB', 'Lt1', 'Rg.Pelayanan Plasa', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020298', 'K027221', 'MCB induk ada di ruang halo2 di panel AC. MCB pembagi ada di samping outdoor AC dalam jendela', NULL, NULL, '21 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Raswin, Andre, Rahmat', NULL, NULL, 'Meong', '2022-07-03 17:03:33', NULL, NULL, '2022-06-22 14:17:20', '2022-07-03 21:03:33'),
(98, 1, 'A1.15', 'Telkom', 'WA', 'Lt1', 'Rg. Staff Egbis', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', 'K020300', 'K027267', 'MCB ada di wing A lantai 2, terhubung dengan indoor AC cassete 5 pk daikin yang rusak', NULL, NULL, '21 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Raswin, Andre', NULL, NULL, 'Meong', '2022-07-03 17:05:01', NULL, NULL, '2022-06-22 14:25:01', '2022-07-03 21:05:01'),
(99, 1, 'B3.10', 'Telkom', 'WB', 'Lt3', 'Fiber Room', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', '020296K', 'K027266', 'MCB ada ruang ME, panel pak syahril', 'Seri Outdoor : K027266\r\nSeri Indoor : K020296', NULL, '22 June, 2022', 'Rinto, Rahmat, Rahmat, Arif, Andre, Rahmat', NULL, NULL, 'Meong', '2022-07-03 17:24:08', NULL, NULL, '2022-06-23 05:53:47', '2022-07-03 21:24:08'),
(100, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.SM Business Planning And Performance', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 12:34:45', NULL, NULL, '2022-06-23 16:32:52', '2022-06-23 16:34:45'),
(101, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.SM Business Planning And Performance', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 16:34:19', '2022-06-23 16:34:19'),
(102, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.SM General Affair', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 16:37:00', '2022-06-23 16:37:00'),
(103, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.Manager Logistik & Proc', 'Daikin', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 16:38:19', '2022-06-23 16:38:19'),
(104, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.Manager Legal & Reg', 'LG', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, 'Telah dilakukan pergantian indoor merk panasonic, petugas Rahmat R, Rahmat H, 27/06/2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-27 23:07:36', NULL, NULL, '2022-06-23 16:40:32', '2022-06-28 03:07:36'),
(105, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.Manager Asset & FM', 'Aux', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 16:52:17', '2022-06-23 16:52:17'),
(106, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Rg.Kerja EVP sekdiv', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,4 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, '1 January, 2017', 'ME', NULL, NULL, 'Meong', '2022-06-25 23:04:45', NULL, NULL, '2022-06-23 17:10:16', '2022-06-26 03:04:45'),
(107, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Ruang tamu sekdiv', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, 'Posisi outdoor lantai hijau, MCB sumber panel AC wing a lantai 3, MCB pengaman dekat unit outdoor', NULL, NULL, '2 July, 2022', 'Rinto, Rahmat R, Rahmat Kintil, Arif, Rahmat Ustad, Andre', NULL, NULL, 'Meong', '2022-07-03 15:53:31', NULL, NULL, '2022-06-23 17:12:57', '2022-07-03 19:53:31'),
(108, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Ruang tamu sekdiv', 'Daikin', 'Cassete', 'Non-inverter', '2,5pk', 'R22', 'Thailand', NULL, '220Volt', '24000', '1/4 + 5/8', 'Normal', NULL, NULL, 'outdoor sudah di ganti dengan outdoor ac ibu ela osm egbis, tanggal 15/04/2022 | Posisi outdoor lantai hijau', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-23 13:19:22', NULL, NULL, '2022-06-23 17:16:29', '2022-06-23 17:19:22'),
(109, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Inovation Room Sekdiv', 'General', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 5/8', 'Rusak', NULL, NULL, 'Posisi outdoor lantai hijau', NULL, 'Kompresor rusak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 17:24:39', '2022-06-23 17:24:39'),
(110, 1, NULL, 'Telkom', 'WA', 'Lt2', 'War Room Sekdiv', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, 'Posisi outdoor selasar wing A lantai 2', NULL, NULL, NULL, 'ME', '2022-02-08 21:26', 'Rinto, Andre', 'Meong', '2022-06-23 13:29:28', NULL, NULL, '2022-06-23 17:28:07', '2022-06-23 17:29:28'),
(111, 1, 'A2.15', 'Telkom', 'WA', 'Lt2', 'Rg.Staff area depan', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '220Volt', NULL, '3/8 + 5/8', 'Normal', 'K020687', 'K027220', 'MCB ada di panel AC wing A lantai 1', NULL, NULL, '30 June, 2022', 'Rinto, Rahmat R, Rahmat Haryadi, Hasrul, Arif, Andre', NULL, NULL, 'Meong', '2022-07-05 17:34:08', NULL, NULL, '2022-07-03 05:18:45', '2022-07-05 21:34:08'),
(112, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.TAM', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '380Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 23:00', 'Arif, Syahril', NULL, NULL, NULL, NULL, '2022-07-07 04:13:54', '2022-07-07 04:13:54'),
(113, 1, NULL, 'Telkom', 'Lainnya', 'Lt1', 'Medika', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 01:49:56', '2022-07-09 01:49:56'),
(114, 1, NULL, 'Telkom', 'Lainnya', 'Lt1', 'Medika', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', '8.0 A', '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'ME', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 01:51:06', '2022-07-09 01:51:06'),
(115, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Rg.TAM', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '380Volt', NULL, '3/8 + 5/8', 'Rusak', NULL, NULL, NULL, NULL, 'System refrigrasi buntu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 15:26:28', '2022-07-19 15:26:28'),
(116, 1, NULL, NULL, 'WC', 'Lt2', 'Rg.TAM', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', '2022-07-19 21:33', 'Arif, Syahril', 'Meong', '2022-07-20 01:18:47', NULL, NULL, '2022-07-19 21:33:37', '2022-07-20 05:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_monitor1`
--

CREATE TABLE `cctv_monitor1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cctv_monitor1`
--

INSERT INTO `cctv_monitor1` (`id`, `user_id`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 1, 'Lt1', 'Lainnya', 'Cam1, Lobby Utama', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-19 01:21:29', NULL, '2022-06-07 09:13:23', '2022-06-19 05:21:29'),
(12, 1, 'Lt1', 'Lainnya', 'Cam2, Lobby Utama Bagian Barat', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:11:18', NULL, '2022-06-07 09:14:09', '2022-06-08 04:11:18'),
(13, 1, 'Lt1', 'Lainnya', 'Cam3, Pintu Masuk Frondest', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-07 17:20:15', NULL, '2022-06-07 09:15:04', '2022-06-07 09:20:15'),
(14, 1, 'Lt1', 'WA', 'Cam4, Pintu Masuk Wing A', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:09:14', NULL, '2022-06-07 09:15:44', '2022-06-08 04:09:14'),
(15, 1, 'Lt1', 'WD', 'Cam5, Rg.TA', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:09:25', NULL, '2022-06-07 09:16:21', '2022-06-08 04:09:25'),
(16, 1, 'Lt1', 'WC', 'Cam6, Arah Pintu Toilet', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:09:36', NULL, '2022-06-07 09:18:07', '2022-06-08 04:09:36'),
(17, 1, 'Lt2', 'WC', 'Cam7, Pintu masuk wing c', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:09:47', NULL, '2022-06-07 09:22:49', '2022-06-08 04:09:47'),
(18, 1, 'Lt1', 'WB', 'Cam8, Rg.Staff GSD', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:09:57', NULL, '2022-06-07 09:24:02', '2022-06-08 04:09:57'),
(19, 1, 'Lt2', 'WB', 'Cam9, Pintu masuk wing b', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:10:10', NULL, '2022-06-07 09:24:46', '2022-06-08 04:10:10'),
(20, 1, 'Lt2', 'WD', 'Cam10, pintu masuk wing c', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:10:20', NULL, '2022-06-07 09:25:45', '2022-06-08 04:10:20'),
(21, 1, 'Lt2', 'WC', 'Cam11, Ruang tamu', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:11:31', NULL, '2022-06-07 09:26:36', '2022-06-08 04:11:31'),
(22, 1, 'Lt2', 'WD', 'Cam12, Atas meja ibu tini', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:11:45', NULL, '2022-06-07 09:27:40', '2022-06-08 04:11:45'),
(23, 1, 'Lt2', 'WA', 'Cam13, Atas pintu masuk ruang OSM HR', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:11:56', NULL, '2022-06-07 09:28:33', '2022-06-08 04:11:56'),
(24, 1, 'Lt3', 'Lainnya', 'Cam14, Atas ruang binroh', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:10', NULL, '2022-06-07 09:29:36', '2022-06-08 04:12:10'),
(25, 1, 'Lt3', 'WB', 'Cam15, Fiber room', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-30 11:12:24', NULL, '2022-06-07 09:30:10', '2022-06-30 15:12:24'),
(26, 1, 'Lt3', 'WA', 'Cam16, Rg.Staff MSO', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:33', NULL, '2022-06-07 09:31:00', '2022-06-08 04:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_monitor2`
--

CREATE TABLE `cctv_monitor2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cctv_monitor2`
--

INSERT INTO `cctv_monitor2` (`id`, `user_id`, `image`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'm2_cam1.png', 'Cam1, Parkir halamn depan', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-07 17:33:21', NULL, '2022-06-07 09:32:15', '2022-06-07 09:33:21'),
(5, 1, 'm2_cam2.png', 'Cam2, Pintu keluar selatan', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:09', NULL, '2022-06-07 09:33:01', '2022-06-08 04:14:09'),
(6, 1, 'm2_cam3.png', 'Cam3, Parkir halaman utara', 'Dahua', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:21', NULL, '2022-06-07 09:34:25', '2022-06-08 04:14:21'),
(7, 1, 'm2_cam4.png', 'Cam4, Pintu masuk utara', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:34', NULL, '2022-06-07 09:35:35', '2022-06-08 04:14:34'),
(8, 1, 'm2_cam5.png', 'Cam5, Parkir samping SAS', 'Hikvision', 'Analog', 'Normal', '4MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:44', NULL, '2022-06-07 09:36:23', '2022-06-08 04:14:44'),
(9, 1, 'm2_cam6.png', 'Cam6, Parkir SL', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:02', NULL, '2022-06-07 09:37:14', '2022-06-08 04:15:02'),
(10, 1, 'm2_cam7.png', 'Cam7, Halaman menuju frondest', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:12', NULL, '2022-06-07 09:38:02', '2022-06-08 04:15:12'),
(11, 1, 'm2_cam8.png', 'Cam8, Parkir motor utara', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:26', NULL, '2022-06-07 09:38:45', '2022-06-08 04:15:26'),
(12, 1, 'm2_cam9.png', 'Cam9, Pintu keluar frondest/pintu emergency wing c 1', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:38', NULL, '2022-06-07 09:40:18', '2022-06-08 04:15:38'),
(13, 1, 'm2_cam10.png', 'Cam10, Halaman depan forsikatel', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:46', NULL, '2022-06-07 09:42:07', '2022-06-08 04:12:46'),
(14, 1, 'm2_cam11.png', 'Cam11, Parkiran FM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:04', NULL, '2022-06-07 09:42:41', '2022-06-08 04:13:04'),
(15, 1, 'm2_cam12.png', 'Cam12, Depan FM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:14', NULL, '2022-06-07 09:43:36', '2022-06-08 04:13:14'),
(16, 1, 'm2_cam13.png', 'Cam13, Pintu keluar selatan', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:25', NULL, '2022-06-07 09:44:21', '2022-06-08 04:13:25'),
(17, 1, 'm2_cam14.png', 'Cam14, Parkir mobil utara', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:35', NULL, '2022-06-07 09:45:08', '2022-06-08 04:13:35'),
(18, 1, 'm2_cam15.png', 'Cam15, Taman depan indoor/Segitiga/arah keluar', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 12:13:46', NULL, '2022-06-07 09:45:43', '2022-06-08 04:13:46'),
(19, 1, 'm2_cam16.png', 'Cam16, Halam depan indoor/segitiga/arah masuk', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:57', NULL, '2022-06-07 09:48:48', '2022-06-08 04:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_monitor3`
--

CREATE TABLE `cctv_monitor3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cctv_monitor3`
--

INSERT INTO `cctv_monitor3` (`id`, `user_id`, `image`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'm3_cam1.png', 'Lt1', 'WC', 'Cam1, Atas pintu menuju toilet', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:02', NULL, '2022-06-07 09:50:33', '2022-06-08 04:16:02'),
(4, 1, 'm3_cam2.png', 'Lt2', 'WB', 'Cam2, Rg.Rapat Baruga', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:09', NULL, '2022-06-07 09:51:12', '2022-06-08 04:19:09'),
(5, 1, 'm3_cam3.png', 'Lt1', 'WA', 'Cam3, Rg.Staff RWS', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:16', NULL, '2022-06-07 09:52:01', '2022-06-08 04:16:16'),
(6, 1, 'm3_cam4.png', 'Lt1', 'Lainnya', 'Cam4, Plasa/arah ruang tunggu', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:31', NULL, '2022-06-07 09:52:54', '2022-06-08 04:16:31'),
(7, 1, 'm3_cam5.png', 'Lt2', 'WA', 'Cam5, Atas Rg.OBS', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:25', NULL, '2022-06-07 09:53:58', '2022-06-08 04:19:25'),
(8, 1, 'm3_cam6.png', 'Lt1', 'WC', 'Cam6, Atas Pintu Masuk/Rg.Tamu', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:44', NULL, '2022-06-07 09:54:54', '2022-06-08 04:16:44'),
(9, 1, 'm3_cam7.png', 'Lt2', 'Lainnya', 'Cam7, Rg.Tamu Sekdiv', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:42', NULL, '2022-06-07 09:55:39', '2022-06-08 04:19:42'),
(10, 1, 'm3_cam8.png', 'Lt2', 'WC', 'Cam8, Depan ruang TAM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:55', NULL, '2022-06-07 09:56:37', '2022-06-08 04:19:55'),
(11, 1, 'm3_cam9.png', 'Lt1', 'Lainnya', 'Cam9, Lobby timur/pintu masuk timur', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:05', NULL, '2022-06-07 09:57:33', '2022-06-08 04:17:05'),
(12, 1, 'm3_cam10.png', 'Lt1', 'Lainnya', 'Cam10, Taman utara/arah menuju parkiran SL', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:19', NULL, '2022-06-07 09:59:35', '2022-06-08 04:17:19'),
(13, 1, 'm3_cam11.png', 'Lt1', 'Lainnya', 'Cam11, Pintu masuk selatan/arah menuju rg.me', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:37', NULL, '2022-06-07 10:00:24', '2022-06-08 04:17:37'),
(14, 1, 'm3_cam12.png', 'Lt3', 'WA', 'Cam12, Rg.Staff MSO/Depan rg OSM MSO', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:20:12', NULL, '2022-06-07 10:02:18', '2022-06-08 04:20:12'),
(15, 1, 'm3_cam13.png', 'Lt1', 'WA', 'Cam13, Rg.Egbis/mengraha rg.staff egbis', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:50', NULL, '2022-06-07 10:03:54', '2022-06-08 04:17:50'),
(16, 1, 'm3_cam14.png', 'Lt1', 'WD', 'Cam14, Rg.TA/Atas pintu menuju toilet', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:05', NULL, '2022-06-07 10:04:57', '2022-06-08 04:18:05'),
(17, 1, 'm3_cam15.png', 'Lt1', 'Lainnya', 'Cam15, Tangga utama timur/atas rg telkom medika', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:33', NULL, '2022-06-07 10:06:14', '2022-06-08 04:18:33'),
(18, 1, 'm3_cam16.png', 'Lt1', 'Lainnya', 'Cam16, Plasa/atas pintu masuk', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, 'gambar agak glitch', NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:56', NULL, '2022-06-07 10:08:12', '2022-06-08 04:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_monitor4`
--

CREATE TABLE `cctv_monitor4` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cctv_monitor4`
--

INSERT INTO `cctv_monitor4` (`id`, `user_id`, `image`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'm4_cam1.png', 'Cam1, Lap golf mengarah pos salemba', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:08:22', NULL, '2022-06-07 10:10:17', '2022-06-08 04:08:22'),
(3, 1, 'm4_cam2.png', 'Cam2, Lap golf mengarah ke tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:17:40', NULL, '2022-06-07 10:11:05', '2022-06-08 05:17:40'),
(4, 1, 'm4_cam3.png', 'Cam3, Hadap lap bola', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:36:52', NULL, '2022-06-07 10:12:50', '2022-06-08 05:36:52'),
(5, 1, 'm4_cam4.png', 'Cam4, Mengarah pintu samping tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:37:14', NULL, '2022-06-07 10:13:27', '2022-06-08 05:37:14'),
(6, 1, 'm4_cam5.png', 'Cam5, Mengarah ke pintu utama tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 13:37:29', NULL, '2022-06-07 10:17:34', '2022-06-08 05:37:29'),
(7, 1, 'm4_cam6.png', 'Cam6, Mengarah ke taman segitiga indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:37:42', NULL, '2022-06-07 10:18:48', '2022-06-08 05:37:42'),
(8, 1, 'm4_cam7.png', 'Cam7, Pintu samping sekolah telkom arah masuk', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, 'Belum di lakukan pengecekan', NULL, NULL, 'Meong', NULL, '2022-06-18 02:07:22', NULL, '2022-06-07 10:20:10', '2022-06-18 06:07:22'),
(9, 1, 'm4_cam8.png', 'Cam8, pintu samping sekolah telkom arah keluar', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, 'Belum di cek', NULL, NULL, 'Meong', NULL, '2022-07-15 05:43:13', NULL, '2022-06-07 10:22:33', '2022-07-15 09:43:13'),
(10, 1, 'm4_cam9.png', 'Cam9, Arah Ware House TA', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:38:42', NULL, '2022-06-07 10:25:48', '2022-06-08 05:38:42'),
(11, 1, 'm4_cam10.png', 'Cam10, Arah pintu keluar utama sekolah telkom', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, 'Gambar agak blur', 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 13:38:55', NULL, '2022-06-07 10:25:48', '2022-06-08 05:38:55'),
(12, 1, 'm4_cam11.png', 'Cam11, Genset 1000', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:39:30', NULL, '2022-06-07 10:29:28', '2022-06-08 05:39:30'),
(13, 1, 'm4_cam12.png', 'Cam12, Parkiran mobil oprational/mengrah ke parkiran motor karyawan', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 13:39:45', NULL, '2022-06-07 10:33:14', '2022-06-08 05:39:45'),
(14, 1, 'm4_cam13.png', 'Cam13, Parkiran mobil operation/mengrah ke parkiran mobli utara', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:40:00', NULL, '2022-06-07 10:39:59', '2022-06-08 05:40:00'),
(15, 1, 'm4_cam14.png', 'Cam 14, Parkiran mobil operation/mengarah ke parkiran motor karyawan', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:40:17', NULL, '2022-06-07 10:41:45', '2022-06-08 05:40:17'),
(16, 1, 'm4_cam15.png', 'Cam15, Samping Rg.Manager SAS/Mengarah ke jalan masuk utama tireg', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:40:30', NULL, '2022-06-07 10:43:14', '2022-06-08 05:40:30'),
(17, 1, 'm4_cam16.png', 'Cam16, Samping kantin/mengarah ke jalan masuk utama tireg', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:40:45', NULL, '2022-06-07 10:44:05', '2022-06-08 05:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `chartac`
--

CREATE TABLE `chartac` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chartac`
--

INSERT INTO `chartac` (`id`, `tahun`, `bulan`, `total`, `created_at`, `updated_at`) VALUES
(25, '2022', 'April', '6', '2022-04-11 08:12:25', '2022-04-14 14:06:29'),
(26, '2022', 'May', '15', '2022-05-14 03:28:52', '2022-05-28 15:00:01'),
(29, '2022', 'June', '15', '2022-06-02 04:36:18', '2022-06-19 05:17:27'),
(30, '2022', 'July', '1', '2022-07-07 04:14:33', '2022-07-07 04:14:33');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2022_03_24_085029_create_ac_table', 1),
(6, '2022_03_31_034449_create_chartac_table', 1),
(7, '2022_04_02_234633_create_session_table', 1),
(8, '2022_04_05_234839_create_cctv_monitor1_table', 1),
(9, '2022_04_14_231437_create_cctv_monitor2_table', 2),
(10, '2022_04_15_024616_create_cctv_monitor3_table', 3),
(11, '2022_04_16_002444_create_cctv_monitor4_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `note_ac`
--

CREATE TABLE `note_ac` (
  `id` int(11) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `petugas` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note_ac`
--

INSERT INTO `note_ac` (`id`, `aksi`, `petugas`, `tanggal`, `updated_at`, `created_at`) VALUES
(1, 'Pencucian semua outdoor AC lantai 3 area lantai hijau', 'Rinto, Syahril, Andre', '2022-05-10 03:45', '2022-06-20 22:01:25', '2022-06-20 21:53:17');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `user_id`, `lat`, `long`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-04-11 06:44:14', '2022-07-19 21:30:31'),
(3, 3, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-04-21 14:19:08', '2022-06-27 17:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `spesifikasi` varchar(500) DEFAULT NULL,
  `tgl_pembelian` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `nama`, `merk`, `jumlah`, `spesifikasi`, `tgl_pembelian`, `keterangan`, `catatan`, `updated_at`, `created_at`) VALUES
(2, 'Kompresor', 'Panasonic', '1', 'Kapasitas 1/2pk,Original,Freon R22,220volt,1.5 Amper', NULL, NULL, NULL, '2022-06-28 17:56:58', '2022-06-28 17:49:33'),
(3, 'Kapasitor Kompresor', 'Matrix', '1', '60uf,220volt', NULL, NULL, NULL, '2022-06-28 17:53:29', '2022-06-28 17:52:14'),
(4, 'AC', 'Polytron', '1', '2pk,R22,pipa 1/4 dan 1/2', NULL, 'Fullset', 'AC bekas ruang deputy infra', '2022-06-28 17:55:48', '2022-06-28 17:55:48'),
(5, '3 Phase Detector', 'Sanwa', '1', 'Measurement : Open phase and rotating direction,Voltage range : 3 phase AC 100v - 500v,Frequency : 45Hz - 70 Hz,Time limit AC 110 V : Continuous AC 220 V. AC 480 V 12 Minutes,Fuse : 0.5 A/500V', NULL, NULL, NULL, '2022-07-04 06:19:27', '2022-07-03 22:47:24'),
(6, 'Thermal Imaging Camera', 'FLIR TG267', '1', 'IR Resolution: 160 × 120 pixels,Thermal Sensitivity/NETD: <70 mK,Field of view (FOV): 57° × 44°,Image Modes: • MSX® (Multi Spectral Dynamic Imaging) • Visual with temperature reading,Display: 320 × 240 pixel, 2.4 in color LCD,Storage Media: eMMC 4 GB,Battery charge life: 30 days minimum,Battery operating time: 5 hours continuous scanning 4.5 hours with laser on,Battery Type: Rechargeable Li ion battery,Battery voltage: 3.7 V', NULL, NULL, NULL, '2022-07-04 06:20:26', '2022-07-03 22:54:49'),
(7, 'Earth Clam Tester', 'Kyoritsu', '1', 'Kew Earth Model 4200', NULL, NULL, NULL, '2022-07-04 06:34:55', '2022-07-04 06:29:54'),
(8, 'Digital Earth Tester', 'Kyoritsu', '1', 'Model 4105A', '14 November, 2016', NULL, NULL, '2022-07-04 06:36:16', '2022-07-04 06:34:41'),
(9, 'Bor', 'Bosch', '1', 'GBH2-20 DRE', NULL, NULL, NULL, '2022-07-04 06:46:00', '2022-07-04 06:44:47'),
(10, 'IR Thermometer', 'Fluk', '1', NULL, NULL, NULL, NULL, '2022-07-05 01:42:57', '2022-07-05 01:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `is_login` timestamp NULL DEFAULT NULL,
  `user_time_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `image`, `is_active`, `role`, `password`, `status_login`, `is_login`, `user_time_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meong', 15920011, 'default.png', 1, 1, '$2y$10$d/NucPTbpNp7imfUYwEfReY9h1FwSVboGoyNlne7UeYzzKoC6EV1S', 'online', '2022-07-20 05:18:48', '2022-07-20 01:16:38', NULL, '2022-04-11 06:44:14', '2022-07-20 05:18:48'),
(3, 'Jon Doe', 15920001, 'default.png', 1, 0, '$2y$10$9.k2N.RmEGARF3yU1340Cur8chEMD205n59NWLmxG6Zuf7vXN797C', 'offline', '2022-06-27 18:01:43', '2022-06-27 13:57:43', NULL, '2022-04-21 14:19:00', '2022-06-27 18:01:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chartac`
--
ALTER TABLE `chartac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note_ac`
--
ALTER TABLE `note_ac`
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
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chartac`
--
ALTER TABLE `chartac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `note_ac`
--
ALTER TABLE `note_ac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
