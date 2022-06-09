-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2022 pada 07.47
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac`
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
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_maintenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ac`
--

INSERT INTO `ac` (`id`, `user_id`, `label`, `assets`, `wing`, `lantai`, `ruangan`, `merk`, `type`, `jenis`, `kapasitas`, `refrigerant`, `product`, `current`, `voltage`, `btu`, `pipa`, `status`, `catatan`, `keterangan`, `kerusakan`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_maintenance`, `user_updated`, `user_updated_time`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'a1.07', 'Telkom', 'WA', 'Lt1', 'Rg.Manager Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-04-07 02:00', 'Jon Doe', '2022-05-26 18:39:46', NULL, NULL, '2022-04-11 07:35:32', '2022-05-26 10:39:46'),
(4, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.tamu wing a', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-06-09 12:31:31', NULL, NULL, '2022-04-11 07:39:00', '2022-06-09 04:31:31'),
(5, 1, 'A1.03', 'Telkom', 'WA', 'Lt1', 'rg.OSM Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', 'sudah di lakukan perbaikan beberapa kali', NULL, 'mcb trip sekitar 3menit saat ac di onkan, kompresor mengalami overload', NULL, NULL, NULL, 'Meong', '2022-04-14 22:04:39', NULL, NULL, '2022-04-11 07:40:24', '2022-04-14 14:04:39'),
(6, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', 'Belum di lakukan perbaikan', NULL, 'MCB Trip', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:02', NULL, NULL, '2022-04-11 07:41:58', '2022-04-12 14:03:02'),
(7, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-03-20 11:59', 'Meong', '2022-05-23 00:02:00', NULL, NULL, '2022-04-11 07:43:13', '2022-05-22 16:02:00'),
(8, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Manager Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-05-23 00:03:46', NULL, NULL, '2022-04-11 07:45:31', '2022-05-22 16:03:46'),
(9, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Rapat Egbis', 'Daikin', 'Cassete', 'Non-inverter', '5pk', 'R22', NULL, NULL, '380Volt', NULL, NULL, 'Rusak', 'belum di lakukan pengecekan', NULL, 'tidak dingin', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:37', NULL, NULL, '2022-04-11 07:46:52', '2022-04-12 14:03:37'),
(10, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '220Volt', NULL, NULL, 'Rusak', 'unit indoor masih normal', NULL, 'Kompresor overheat', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:50', NULL, NULL, '2022-04-11 07:51:04', '2022-04-12 14:03:50'),
(11, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:51:19', NULL, NULL, '2022-04-11 07:51:49', '2022-06-09 04:51:19'),
(12, 1, 'A1.11', 'Telkom', 'WA', 'Lt1', 'Rg.Sekertaris RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'Error A3', NULL, 'Vendor', NULL, 'Meong', '2022-05-26 16:54:44', NULL, NULL, '2022-04-11 07:53:23', '2022-05-26 08:54:44'),
(13, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Staff RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-03-10 00:54', 'Meong', '2022-05-23 00:04:28', NULL, NULL, '2022-04-11 07:55:10', '2022-05-22 16:04:28'),
(14, 1, NULL, 'RWS', 'WA', 'Lt1', 'Rg.Staff RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', 'unit indoor masih normal', NULL, 'kompresor rusak', NULL, 'ME', NULL, 'Meong', '2022-06-09 12:51:47', NULL, NULL, '2022-04-11 07:56:23', '2022-06-09 04:51:47'),
(15, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Mushola RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-03-01 00:57', 'Meong', '2022-05-23 00:05:27', NULL, NULL, '2022-04-11 07:58:32', '2022-05-22 16:05:27'),
(16, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Rapat RWS', 'General', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', 'remote kadang tidak berfungsi', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:52:08', NULL, NULL, '2022-04-11 07:59:45', '2022-06-09 04:52:08'),
(17, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-06-09 12:52:38', NULL, NULL, '2022-04-11 08:35:47', '2022-06-09 04:52:38'),
(18, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-06-09 12:52:52', NULL, NULL, '2022-04-11 08:36:34', '2022-06-09 04:52:52'),
(19, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Manager Pins', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', 'ruangan dalam keadaan kosong', NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-04-12 22:05:49', NULL, NULL, '2022-04-11 08:38:19', '2022-04-12 14:05:49'),
(20, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.SOPP', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-04-12 22:06:01', NULL, NULL, '2022-04-11 08:42:18', '2022-04-12 14:06:01'),
(21, 1, 'A2.08', 'Telkom', 'WA', 'Lt2', 'Rg.OSM HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '7.7 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', '1. sering terjadi kondensasi pada pipa ac\r\n2. Fuse pada modul outdoor sudah di ganti dengan kawat tembaga', NULL, NULL, NULL, 'Vendor', '2022-05-28 08:30', 'Meong', '2022-05-28 23:02:49', NULL, NULL, '2022-04-11 10:41:02', '2022-05-28 15:02:49'),
(22, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Rapat HR', 'Sharp', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', 'Kompresor sudah di ganti', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:54:00', NULL, NULL, '2022-04-11 10:42:06', '2022-06-09 04:54:00'),
(23, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:05', NULL, NULL, '2022-04-11 10:43:13', '2022-04-12 14:07:05'),
(24, 1, NULL, 'Telkom', 'WA', 'Lt2', 'depan meja kerja Pahar', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:17', NULL, NULL, '2022-04-11 10:44:47', '2022-04-12 14:07:17'),
(25, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'General', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'Kompresor rusak', NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:34', NULL, NULL, '2022-04-11 10:46:33', '2022-04-12 14:07:34'),
(26, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16 A', '220Volt', '27000', '3/8 + 5/8', 'Rusak', 'Analisa : kerusakan transmisi antara unit indoor dan outdoor', 'Sudah di coba lakukan perbaikan, tapi posisi outdoor sulit di jangkau', 'Error U4', NULL, 'ME', '2022-06-01 22:31', 'Meong', '2022-06-02 12:39:27', NULL, NULL, '2022-04-11 10:55:37', '2022-06-02 04:39:27'),
(27, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '5pk', 'R410', 'Thailand', '16 A', '380Volt', NULL, NULL, 'Rusak', 'sudah tidak bisa normal', NULL, 'Kompresor dan modul indoor sudah rusak', NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:58', NULL, NULL, '2022-04-11 10:57:51', '2022-04-12 14:07:58'),
(28, 1, 'A2.02', 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-05-27 08:00', 'Meong', '2022-06-07 16:43:28', NULL, NULL, '2022-04-11 10:58:44', '2022-06-07 08:43:28'),
(29, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager Finance', 'Daikin', 'Wall Mounted', 'Inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, '2022-05-31 23:27', 'Meong', '2022-06-09 12:53:20', NULL, NULL, '2022-04-11 10:59:56', '2022-06-09 04:53:20'),
(30, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-28 01:03', 'Meong', '2022-05-28 23:04:28', NULL, NULL, '2022-04-11 11:01:18', '2022-05-28 15:04:28'),
(31, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Pantry Finance', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-05-31 22:26', 'Meong', '2022-06-09 12:53:46', NULL, NULL, '2022-04-11 11:03:07', '2022-06-09 04:53:46'),
(32, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.OBS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', 'MCB ada di panel AC wing A Lt1', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:56', NULL, NULL, '2022-04-11 11:03:56', '2022-04-12 14:08:56'),
(33, 1, 'A2.01', 'Telkom', 'WA', 'Lt2', 'Rg.OSM Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', 'Kurang dingin', NULL, NULL, NULL, 'ME', '2022-06-01 10:24', 'Meong', '2022-06-02 12:25:47', NULL, NULL, '2022-04-11 11:05:57', '2022-06-02 04:25:47'),
(34, 1, NULL, 'Finance', 'WA', 'Lt2', 'Rg.OSM Finance', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:54:20', NULL, NULL, '2022-04-11 11:06:44', '2022-06-09 04:54:20'),
(35, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:00', 'Meong', '2022-06-09 12:54:33', NULL, NULL, '2022-04-12 12:39:38', '2022-06-09 04:54:33'),
(36, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Rapat GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-16 04:19:13', NULL, NULL, '2022-04-12 14:12:12', '2022-04-15 20:19:13'),
(37, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Osm CCM/Rg.Pak Sahwan', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-04-13 21:44', 'Meong', '2022-06-09 12:54:50', NULL, NULL, '2022-04-14 13:46:13', '2022-06-09 04:54:50'),
(38, 1, NULL, NULL, 'WD', 'Lt2', 'Rg.Rapat CCM', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, '2022-04-13 21:47', 'Meong', '2022-06-09 12:55:28', NULL, NULL, '2022-04-14 13:47:38', '2022-06-09 04:55:28'),
(39, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'LG', 'Wall Mounted', 'Non-inverter', '1,5pk', 'R22', NULL, '5,1 A', '220Volt', NULL, NULL, 'Normal', 'Telah di lakukan penggantian kapasitor tanggal 2022/04/14', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:55:40', NULL, NULL, '2022-04-14 13:50:47', '2022-06-09 04:55:40'),
(40, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'Sharp', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, '8,2 A', '220Volt', NULL, NULL, 'Normal', 'Telah dilakukan pengisian freon tanggal 2022/04/14', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:55:58', NULL, NULL, '2022-04-14 13:53:41', '2022-06-09 04:55:58'),
(41, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Depan Rg.TAM', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,4 A', '220Volt', NULL, NULL, 'Normal', 'outdoor sudah di ganti dengan outdoor baru 2022/04/22', NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-05-14 12:15:08', NULL, NULL, '2022-04-14 13:59:17', '2022-05-14 04:15:08'),
(42, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:44', 'Meong', '2022-06-09 12:56:18', NULL, NULL, '2022-04-15 20:00:12', '2022-06-09 04:56:18'),
(43, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 10:20', 'Meong', '2022-06-09 12:56:37', NULL, NULL, '2022-04-15 20:01:45', '2022-06-09 04:56:37'),
(44, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-24 23:21', 'Meong', '2022-06-09 12:56:55', NULL, NULL, '2022-04-15 20:02:52', '2022-06-09 04:56:55'),
(45, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Rapat GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:04:30', '2022-04-15 20:04:30'),
(46, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Kerja MGR GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:05:29', '2022-04-15 20:05:29'),
(47, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.GM GSD', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:06:35', '2022-04-15 20:06:35'),
(48, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.GM GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', 'sudah tidak bisa normal', NULL, 'Kompresor rusak', NULL, NULL, NULL, 'Meong', '2022-06-09 12:57:11', NULL, NULL, '2022-04-15 20:07:52', '2022-06-09 04:57:11'),
(49, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD/atas meja kerja bu erni', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', '27000', '3/8 + 5/8', 'Rusak', 'sudah dilakukan perbaikan beberapa kali', NULL, 'freon bocor', NULL, 'ME', NULL, 'Meong', '2022-05-23 00:07:30', NULL, NULL, '2022-04-15 20:10:54', '2022-05-22 16:07:30'),
(50, 1, 'B1', 'GSD', 'WB', 'Lt1', 'Rg.Santai GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Rusak', 'outdoor sudah di timbang', NULL, 'Kompresor kontak body', NULL, NULL, NULL, 'Meong', '2022-06-09 12:57:26', NULL, NULL, '2022-04-15 20:12:36', '2022-06-09 04:57:26'),
(51, 1, 'B1', 'GSD', 'WB', 'Lt1', 'Rg.Santai GSD', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:57:43', NULL, NULL, '2022-04-15 20:13:18', '2022-06-09 04:57:43'),
(52, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Santai GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', NULL, NULL, 'Terminal kompresor rusak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:14:34', '2022-04-15 20:14:34'),
(53, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Musholah GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Rusak', 'sudah tidak bisa normal', NULL, 'Kompresor sudah rusak', NULL, NULL, NULL, 'Meong', '2022-05-26 18:10:39', NULL, NULL, '2022-04-15 20:15:47', '2022-05-26 10:10:39'),
(54, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:17:12', '2022-04-15 20:17:12'),
(55, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Rg.Staff GSD/Atas Meja Afdal', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', NULL, NULL, NULL, NULL, NULL, '2022-04-15 20:18:39', '2022-04-15 20:18:39'),
(56, 1, 'B1', 'Telkom', 'WB', 'Lt1', 'Atas Meja Bilyard GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, NULL, 'Normal', 'pembuangan air sering bocor', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-16 04:22:27', NULL, NULL, '2022-04-15 20:20:30', '2022-04-15 20:22:27'),
(57, 1, 'B1', 'GSD', 'WB', 'Lt1', 'Rg.RBOC GSD', 'Daikin', 'Wall Mounted', 'Inverter', '2pk', 'R410', 'Thailand', NULL, '220Volt', NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-06-09 12:58:06', NULL, NULL, '2022-04-15 20:21:25', '2022-06-09 04:58:06'),
(59, 1, NULL, 'Telkom', 'WC', 'Lt1', 'Rg.Deputy Infra', 'Daikin', 'Wall Mounted', 'Non-inverter', '2,5pk', 'R32', 'Malaysia', '9 A', '220Volt', '22000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, '29 April, 2022', 'raswin, rinto, rahmat kintil, arif', NULL, 'Meong', '2022-06-09 12:58:26', NULL, NULL, '2022-05-01 03:54:49', '2022-06-09 04:58:26'),
(60, 1, NULL, NULL, 'WA', 'Lt1', 'osm egbis', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, '11 May, 2022', 'Me', NULL, 'Meong', '2022-06-09 12:59:00', NULL, NULL, '2022-05-13 04:17:37', '2022-06-09 04:59:00'),
(61, 1, NULL, NULL, 'WC', 'Lt2', 'rg.pantry', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-11 11:26', 'Meong', '2022-06-09 12:59:15', NULL, NULL, '2022-05-14 03:27:42', '2022-06-09 04:59:15'),
(62, 1, 'a1.12', 'Telkom', 'WA', 'Lt1', 'OSM RWS', 'Panasonic', 'Wall Mounted', 'Non-inverter', '3/4pk', 'R22', 'Indonesia', NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, '1 January, 2016', 'Rinto, Hendrik', '2022-05-14 16:47', 'Meong', '2022-06-09 12:59:27', NULL, NULL, '2022-05-14 08:48:58', '2022-06-09 04:59:27'),
(63, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Executive Lounge', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', '8.0 A', '220Volt', NULL, '1/4 + 1/2', 'Normal', 'Telah di lakukan pergantian kapasitor 20/05/2022', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-06-09 12:59:43', NULL, NULL, '2022-05-20 10:59:39', '2022-06-09 04:59:43'),
(64, 1, NULL, 'Telkom', 'WB', 'Lt2', 'Executive Lounge', 'Sharp', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', NULL, '1/4 + 1/2', 'Rusak', 'Analisa kebocoran ada pada unit indoor', 'Outdoor merk panasonic 2pk diganti pada 01/04/2022', 'Freon kosong', '1 April, 2022', 'ME', NULL, 'Meong', '2022-06-09 13:01:21', NULL, NULL, '2022-05-20 11:07:32', '2022-06-09 05:01:21'),
(65, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Meong', '2022-05-23 00:08:06', NULL, NULL, '2022-05-21 17:15:45', '2022-05-22 16:08:06'),
(66, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Meong', '2022-05-23 00:08:21', NULL, NULL, '2022-05-21 17:17:34', '2022-05-22 16:08:21'),
(68, 1, NULL, 'Telkom', 'WA', 'Lt3', 'Rg.Staff ROC', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '16,6 A', '220Volt', '27000', '3/8 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-05-21 13:20', 'Meong', '2022-05-23 00:08:34', NULL, NULL, '2022-05-21 17:20:31', '2022-05-22 16:08:34'),
(69, 1, 'A3.01', NULL, 'WA', 'Lt3', 'Rg.Posko ROC', 'Daikin', 'Cassete', 'Non-inverter', '1,5pk', 'R410', 'Thailand', '7,5 A', '220Volt', '13000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, '1 May, 2021', 'Vendor', '2022-05-21 21:00', NULL, NULL, NULL, NULL, '2022-05-21 17:26:23', '2022-05-21 17:26:23'),
(70, 1, 'A3.02', NULL, 'WA', 'Lt3', 'Rg.Posko ROC', 'Daikin', 'Cassete', 'Non-inverter', '1,5pk', 'R410', 'Thailand', '7,5 A', '220Volt', '13000', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, '1 May, 2021', 'Vendor', '2022-05-21 21:00', NULL, NULL, NULL, NULL, '2022-05-21 17:27:48', '2022-05-21 17:27:48'),
(71, 1, NULL, NULL, 'WA', 'Lt3', 'Rg.Istrahat Wanita ROC', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-25 09:45', 'Meong', '2022-06-09 13:01:48', NULL, NULL, '2022-05-26 01:46:46', '2022-06-09 05:01:48'),
(72, 1, NULL, NULL, 'WA', 'Lt3', 'Rg.Istrahat Pria ROC', 'Panasonic', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', 'Malaysia', '7.7 A', '220Volt', '19010', '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-05-25 10:46', 'Meong', '2022-06-09 13:02:07', NULL, NULL, '2022-05-26 01:47:35', '2022-06-09 05:02:07'),
(73, 1, NULL, 'ROC', 'WA', 'Lt3', 'Rg.Server ROC', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, NULL, 'Normal', 'Telah dilakukan penambahan freon tanggal 08/juni/2022', NULL, NULL, NULL, 'Vendor', '2022-05-31 11:29', 'Meong', '2022-06-09 13:02:20', NULL, NULL, '2022-06-02 04:31:09', '2022-06-09 05:02:20'),
(74, 1, NULL, 'CCM', 'WD', 'Lt1', 'Rg.Manager CCM', 'Sharp', 'Wall Mounted', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, '1/4 + 3/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-06-05 21:00', 'Meong', '2022-06-09 13:02:56', NULL, NULL, '2022-06-07 08:31:50', '2022-06-09 05:02:56'),
(75, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff CCM', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-06-05 10:32', 'Meong', '2022-06-09 13:05:01', NULL, NULL, '2022-06-07 08:33:24', '2022-06-09 05:05:01'),
(76, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff CCM', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Rusak', NULL, 'belum di lakukan perbaikan', 'outdoor tidak aktif', NULL, 'Vendor', '2022-06-05 09:33', 'Meong', '2022-06-09 13:05:18', NULL, NULL, '2022-06-07 08:35:13', '2022-06-09 05:05:18'),
(77, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff CCM', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, NULL, 'Vendor', '2022-06-05 09:35', 'Meong', '2022-06-09 13:05:35', NULL, NULL, '2022-06-07 08:36:14', '2022-06-09 05:05:35'),
(78, 1, NULL, 'Marketing', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, '1/4 + 1/2', 'Normal', NULL, NULL, NULL, '1 June, 2020', 'Vendor', '2022-06-06 16:36', 'Meong', '2022-06-09 13:06:33', NULL, NULL, '2022-06-07 08:37:57', '2022-06-09 05:06:33'),
(79, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Wall Mounted', 'Non-inverter', '2pk', 'R410', 'Thailand', NULL, '220Volt', NULL, '1/4 + 5/8', 'Normal', NULL, NULL, NULL, NULL, 'ME', '2022-06-06 09:38', 'Meong', '2022-06-09 13:06:51', NULL, NULL, '2022-06-07 08:39:03', '2022-06-09 05:06:51'),
(80, 1, 'A2.03', 'Telkom', 'WA', 'Lt2', 'Rg. Staff Finance', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, '7 June, 2022', 'Rinto, Rahmat Hidayatullah, Rahmat Haryadi, Pak Hasrul, Pak Arif, Pak Syahril, Andre', NULL, 'Meong', '2022-06-07 16:49:29', NULL, NULL, '2022-06-07 08:41:16', '2022-06-07 08:49:29'),
(81, 1, 'D2.01', 'Telkom', 'WD', 'Lt2', 'Rg.Staff Marketing', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, '8 June, 2022', 'Rinto, Rahmat, Rahmat, Hasrul, Arif, Andre, Rusdi, Rahmat', NULL, NULL, NULL, NULL, NULL, '2022-06-09 03:56:49', '2022-06-09 03:56:49'),
(82, 1, 'D2.02', 'Telkom', 'WD', 'Lt2', 'Rg.Staff CCM', 'Daikin', 'Standing floor', 'Non-inverter', '3pk', 'R410', 'Malaysia', '10 A', '380Volt', NULL, '3/8 + 5/8', 'Normal', NULL, NULL, NULL, '8 June, 2022', 'Rinto, Rahmat, Rahmat, Arif, Andre, Rahmat, Raswin', NULL, NULL, NULL, NULL, NULL, '2022-06-09 03:58:26', '2022-06-09 03:58:26'),
(83, 1, NULL, 'Telkom', 'Lainnya', 'Lt1', 'Medika', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '220Volt', NULL, '3/8 + 5/8', 'Normal', 'Telah di lakukan vakum dan pengisian freon tanggal 09/juni/2022', NULL, NULL, NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, '2022-06-09 04:15:40', '2022-06-09 04:15:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor1`
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
-- Dumping data untuk tabel `cctv_monitor1`
--

INSERT INTO `cctv_monitor1` (`id`, `user_id`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 1, 'Lt1', 'Lainnya', 'Cam1, Lobby Utama', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:11:08', NULL, '2022-06-07 09:13:23', '2022-06-08 04:11:08'),
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
(25, 1, 'Lt3', 'WB', 'Cam15, Fiber room', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:21', NULL, '2022-06-07 09:30:10', '2022-06-08 04:12:21'),
(26, 1, 'Lt3', 'WA', 'Cam16, Rg.Staff MSO', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:33', NULL, '2022-06-07 09:31:00', '2022-06-08 04:12:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor2`
--

CREATE TABLE `cctv_monitor2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
-- Dumping data untuk tabel `cctv_monitor2`
--

INSERT INTO `cctv_monitor2` (`id`, `user_id`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'Cam1, Parkir halamn depan', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-07 17:33:21', NULL, '2022-06-07 09:32:15', '2022-06-07 09:33:21'),
(5, 1, 'Cam2, Pintu keluar selatan', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:09', NULL, '2022-06-07 09:33:01', '2022-06-08 04:14:09'),
(6, 1, 'Cam3, Parkir halaman utara', 'Dahua', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:21', NULL, '2022-06-07 09:34:25', '2022-06-08 04:14:21'),
(7, 1, 'Cam4, Pintu masuk utara', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:34', NULL, '2022-06-07 09:35:35', '2022-06-08 04:14:34'),
(8, 1, 'Cam5, Parkir samping SAS', 'Hikvision', 'Analog', 'Normal', '4MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:14:44', NULL, '2022-06-07 09:36:23', '2022-06-08 04:14:44'),
(9, 1, 'Cam6, Parkir SL', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:02', NULL, '2022-06-07 09:37:14', '2022-06-08 04:15:02'),
(10, 1, 'Cam7, Halaman menuju frondest', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:12', NULL, '2022-06-07 09:38:02', '2022-06-08 04:15:12'),
(11, 1, 'Cam8, Parkir motor utara', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:26', NULL, '2022-06-07 09:38:45', '2022-06-08 04:15:26'),
(12, 1, 'Cam9, Pintu keluar frondest/pintu emergency wing c 1', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:15:38', NULL, '2022-06-07 09:40:18', '2022-06-08 04:15:38'),
(13, 1, 'Cam10, Halaman depan forsikatel', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:12:46', NULL, '2022-06-07 09:42:07', '2022-06-08 04:12:46'),
(14, 1, 'Cam11, Parkiran FM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:04', NULL, '2022-06-07 09:42:41', '2022-06-08 04:13:04'),
(15, 1, 'Cam12, Depan FM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:14', NULL, '2022-06-07 09:43:36', '2022-06-08 04:13:14'),
(16, 1, 'Cam13, Pintu keluar selatan', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:25', NULL, '2022-06-07 09:44:21', '2022-06-08 04:13:25'),
(17, 1, 'Cam14, Parkir mobil utara', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:35', NULL, '2022-06-07 09:45:08', '2022-06-08 04:13:35'),
(18, 1, 'Cam15, Taman depan indoor/Segitiga/arah keluar', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 12:13:46', NULL, '2022-06-07 09:45:43', '2022-06-08 04:13:46'),
(19, 1, 'Cam16, Halam depan indoor/segitiga/arah masuk', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:13:57', NULL, '2022-06-07 09:48:48', '2022-06-08 04:13:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor3`
--

CREATE TABLE `cctv_monitor3` (
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
-- Dumping data untuk tabel `cctv_monitor3`
--

INSERT INTO `cctv_monitor3` (`id`, `user_id`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'Lt1', 'WC', 'Cam1, Atas pintu menuju toilet', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:02', NULL, '2022-06-07 09:50:33', '2022-06-08 04:16:02'),
(4, 1, 'Lt2', 'WB', 'Cam2, Rg.Rapat Baruga', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:09', NULL, '2022-06-07 09:51:12', '2022-06-08 04:19:09'),
(5, 1, 'Lt1', 'WA', 'Cam3, Rg.Staff RWS', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:16', NULL, '2022-06-07 09:52:01', '2022-06-08 04:16:16'),
(6, 1, 'Lt1', 'Lainnya', 'Cam4, Plasa/arah ruang tunggu', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:31', NULL, '2022-06-07 09:52:54', '2022-06-08 04:16:31'),
(7, 1, 'Lt2', 'WA', 'Cam5, Atas Rg.OBS', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:25', NULL, '2022-06-07 09:53:58', '2022-06-08 04:19:25'),
(8, 1, 'Lt1', 'WC', 'Cam6, Atas Pintu Masuk/Rg.Tamu', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:16:44', NULL, '2022-06-07 09:54:54', '2022-06-08 04:16:44'),
(9, 1, 'Lt2', 'Lainnya', 'Cam7, Rg.Tamu Sekdiv', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:42', NULL, '2022-06-07 09:55:39', '2022-06-08 04:19:42'),
(10, 1, 'Lt2', 'WC', 'Cam8, Depan ruang TAM', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:19:55', NULL, '2022-06-07 09:56:37', '2022-06-08 04:19:55'),
(11, 1, 'Lt1', 'Lainnya', 'Cam9, Lobby timur/pintu masuk timur', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:05', NULL, '2022-06-07 09:57:33', '2022-06-08 04:17:05'),
(12, 1, 'Lt1', 'Lainnya', 'Cam10, Taman utara/arah menuju parkiran SL', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:19', NULL, '2022-06-07 09:59:35', '2022-06-08 04:17:19'),
(13, 1, 'Lt1', 'Lainnya', 'Cam11, Pintu masuk selatan/arah menuju rg.me', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:37', NULL, '2022-06-07 10:00:24', '2022-06-08 04:17:37'),
(14, 1, 'Lt3', 'WA', 'Cam12, Rg.Staff MSO/Depan rg OSM MSO', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:20:12', NULL, '2022-06-07 10:02:18', '2022-06-08 04:20:12'),
(15, 1, 'Lt1', 'WA', 'Cam13, Rg.Egbis/mengraha rg.staff egbis', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:17:50', NULL, '2022-06-07 10:03:54', '2022-06-08 04:17:50'),
(16, 1, 'Lt1', 'WD', 'Cam14, Rg.TA/Atas pintu menuju toilet', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:05', NULL, '2022-06-07 10:04:57', '2022-06-08 04:18:05'),
(17, 1, 'Lt1', 'Lainnya', 'Cam15, Tangga utama timur/atas rg telkom medika', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:33', NULL, '2022-06-07 10:06:14', '2022-06-08 04:18:33'),
(18, 1, 'Lt1', 'Lainnya', 'Cam16, Plasa/atas pintu masuk', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'ME', NULL, NULL, 'gambar agak glitch', NULL, NULL, 'Meong', NULL, '2022-06-08 12:18:56', NULL, '2022-06-07 10:08:12', '2022-06-08 04:18:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor4`
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
-- Dumping data untuk tabel `cctv_monitor4`
--

INSERT INTO `cctv_monitor4` (`id`, `user_id`, `image`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'm4_cam1.png', 'Cam1, Lap golf mengarah pos salemba', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 12:08:22', NULL, '2022-06-07 10:10:17', '2022-06-08 04:08:22'),
(3, 1, 'm4_cam2.png', 'Cam2, Lap golf mengarah ke tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:17:40', NULL, '2022-06-07 10:11:05', '2022-06-08 05:17:40'),
(4, 1, 'm4_cam3.png', 'Cam3, Hadap lap bola', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:36:52', NULL, '2022-06-07 10:12:50', '2022-06-08 05:36:52'),
(5, 1, 'm4_cam4.png', 'Cam4, Mengarah pintu samping tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:37:14', NULL, '2022-06-07 10:13:27', '2022-06-08 05:37:14'),
(6, 1, 'm4_cam5.png', 'Cam5, Mengarah ke pintu utama tennis indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, 'Pola Z', NULL, 'Meong', NULL, '2022-06-08 13:37:29', NULL, '2022-06-07 10:17:34', '2022-06-08 05:37:29'),
(7, 1, 'm4_cam6.png', 'Cam6, Mengarah ke taman segitiga indoor', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:37:42', NULL, '2022-06-07 10:18:48', '2022-06-08 05:37:42'),
(8, 1, 'm4_cam7.png', 'Cam7, Pintu samping sekolah telkom arah masuk', 'Hikvision', 'Ip Cam', 'Rusak', '4MP', NULL, 'ME', NULL, NULL, 'Belum di lakukan pengecekan', NULL, 'No link', 'Meong', NULL, '2022-06-08 13:43:05', NULL, '2022-06-07 10:20:10', '2022-06-08 05:43:05'),
(9, 1, 'm4_cam8.png', 'Cam8, pintu samping sekolah telkom arah keluar', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-06-08 13:38:30', NULL, '2022-06-07 10:22:33', '2022-06-08 05:38:30'),
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
-- Struktur dari tabel `chartac`
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
-- Dumping data untuk tabel `chartac`
--

INSERT INTO `chartac` (`id`, `tahun`, `bulan`, `total`, `created_at`, `updated_at`) VALUES
(25, '2022', 'April', '6', '2022-04-11 08:12:25', '2022-04-14 14:06:29'),
(26, '2022', 'May', '15', '2022-05-14 03:28:52', '2022-05-28 15:00:01'),
(29, '2022', 'June', '10', '2022-06-02 04:36:18', '2022-06-07 08:44:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `session`
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
-- Dumping data untuk tabel `session`
--

INSERT INTO `session` (`id`, `user_id`, `lat`, `long`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-04-11 06:44:14', '2022-06-07 08:29:03'),
(3, 3, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-04-21 14:19:08', '2022-05-16 18:30:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `image`, `is_active`, `role`, `password`, `status_login`, `is_login`, `user_time_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meong', 15920011, 'user-images/KBKqC7cwLbKBw4261pwOjdxxyyqLktWwdrOBaGeU.png', 1, 1, '$2y$10$d/NucPTbpNp7imfUYwEfReY9h1FwSVboGoyNlne7UeYzzKoC6EV1S', 'online', '2022-06-09 05:15:11', '2022-06-09 12:40:34', NULL, '2022-04-11 06:44:14', '2022-06-09 05:15:11'),
(3, 'Jon Doe', 15920001, 'default.png', 1, 0, '$2y$10$9.k2N.RmEGARF3yU1340Cur8chEMD205n59NWLmxG6Zuf7vXN797C', 'offline', '2022-05-27 22:10:29', '2022-05-28 06:09:24', NULL, '2022-04-21 14:19:00', '2022-06-09 05:14:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chartac`
--
ALTER TABLE `chartac`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ac`
--
ALTER TABLE `ac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `chartac`
--
ALTER TABLE `chartac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `session`
--
ALTER TABLE `session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
