-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Mar 2023 pada 18.32
-- Versi server: 10.5.19-MariaDB-cll-lve
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9079729_master-eops`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(200) NOT NULL,
  `kode_jurusan` varchar(200) NOT NULL,
  `singkatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `nama_jurusan`, `kode_jurusan`, `singkatan`) VALUES
(5, 'TEKNIK ALAT BERAT', '040', 'TAB'),
(6, 'TEKNIK DAN BISNIS SEPEDA MOTOR', '041', 'TBSM'),
(7, 'AGRIBISNIS PENGOLAHAN HASIL PERTANIAN', '080', 'APHP'),
(8, 'MANAGEMEN PEMASARAN LEMBAGA BISNIS', '110', 'MPLB'),
(9, 'AKUNTANSI DAN KEUANGAN LEMBAGA', '111', 'AKL'),
(10, 'PERHOTELAN', '112', 'PH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`) VALUES
(1, 'X'),
(3, 'XI'),
(4, 'XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log_login`
--

CREATE TABLE `tb_log_login` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `aktifitas` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log_user`
--

CREATE TABLE `tb_log_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `aktifitas` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `keterangan` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_log_user`
--

INSERT INTO `tb_log_user` (`id`, `username`, `role`, `aktifitas`, `status`, `keterangan`, `time`) VALUES
(1, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-03 04:01:26'),
(2, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-03 05:14:50'),
(3, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-03 05:21:59'),
(4, 'admin', 'admin', 'update data verifikasi MUHAMAD RADIKA', 'berhasil', '', '2021-11-03 05:27:12'),
(5, '081230424016', 'siswa', 'login', 'berhasil', '', '2021-11-03 05:29:12'),
(6, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-03 05:31:33'),
(7, 'Rio Krisna Widhiyanto', 'siswa', 'update biodata', 'berhasil', '', '2021-11-03 05:33:21'),
(8, 'admin', 'admin', 'update biodata ayah PAUL MAHENDRA', 'berhasil', '', '2021-11-03 05:34:04'),
(9, 'admin', 'admin', 'update data verifikasi Rio Krisna Widhiyanto', 'berhasil', '', '2021-11-03 05:34:45'),
(10, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-03 05:35:22'),
(11, 'admin', 'admin', 'update biodata wali PAUL MAHENDRA', 'berhasil', '', '2021-11-03 05:35:31'),
(12, 'admin', 'admin', 'update data verifikasi PAUL MAHENDRA', 'berhasil', '', '2021-11-03 05:35:56'),
(13, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-03 05:38:21'),
(14, 'admin', 'admin', 'update biodata wali Rio Krisna Widhiyanto', 'berhasil', '', '2021-11-03 05:38:40'),
(15, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-03 05:42:25'),
(16, 'Admin', 'admin', 'logout', 'berhasil', '', '2021-11-03 05:49:34'),
(17, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 00:39:58'),
(18, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:00:32'),
(19, 'admin', 'admin', 'update biodata ayah FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 01:01:43'),
(20, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-04 01:02:49'),
(21, 'admin', 'admin', 'update biodata wali FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 01:03:12'),
(22, 'admin', 'admin', 'update biodata wali FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 01:04:57'),
(23, 'admin', 'admin', 'update data verifikasi FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 01:06:56'),
(24, 'admin', 'admin', 'update data verifikasi FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 01:07:49'),
(25, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:10:12'),
(26, 'admin', 'admin', 'update biodata ayah ZACKY DWI PRAYOGA', 'berhasil', '', '2021-11-04 01:11:23'),
(27, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-04 01:12:10'),
(28, 'admin', 'admin', 'update biodata wali ZACKY DWI PRAYOGA', 'berhasil', '', '2021-11-04 01:12:34'),
(29, 'admin', 'admin', 'update data verifikasi ZACKY DWI PRAYOGA', 'berhasil', '', '2021-11-04 01:12:58'),
(30, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:15:03'),
(31, 'admin', 'admin', 'update biodata ayah DWI KARMELIANA PUTRI', 'berhasil', '', '2021-11-04 01:16:23'),
(32, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-04 01:17:13'),
(33, 'admin', 'admin', 'update biodata wali DWI KARMELIANA PUTRI', 'berhasil', '', '2021-11-04 01:17:33'),
(34, 'admin', 'admin', 'update data verifikasi DWI KARMELIANA PUTRI', 'berhasil', '', '2021-11-04 01:17:53'),
(35, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:20:39'),
(36, 'admin', 'admin', 'update biodata ayah ARINTA PUTRI WINASARI', 'berhasil', '', '2021-11-04 01:22:38'),
(37, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-04 01:23:51'),
(38, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-04 01:26:32'),
(39, 'admin', 'admin', 'update biodata wali ARINTA PUTRI WINASARI', 'berhasil', '', '2021-11-04 01:26:53'),
(40, 'admin', 'admin', 'update data verifikasi ARINTA PUTRI WINASARI', 'berhasil', '', '2021-11-04 01:27:11'),
(41, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:27:36'),
(42, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:28:18'),
(43, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 01:29:09'),
(44, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 02:36:05'),
(45, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 02:49:25'),
(46, 'admin', 'admin', 'update data verifikasi FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-04 02:50:42'),
(47, 'admin', 'admin', 'update data verifikasi ARINTA PUTRI WINASARI', 'berhasil', '', '2021-11-04 02:51:26'),
(48, 'admin', 'admin', 'update data verifikasi REVA LUXIANA', 'berhasil', '', '2021-11-04 03:24:36'),
(49, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 03:35:30'),
(50, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 03:42:21'),
(51, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 03:48:27'),
(52, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 03:50:17'),
(53, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-11-04 03:51:17'),
(54, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 10:22:24'),
(55, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 12:32:32'),
(56, 'Admin', 'admin', 'logout', 'berhasil', '', '2021-11-04 12:58:00'),
(57, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-04 14:27:38'),
(58, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-05 01:07:57'),
(59, 'admin', 'admin', 'update data verifikasi DWI KARMELIANA PUTRI', 'berhasil', '', '2021-11-05 01:09:14'),
(60, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-05 01:09:19'),
(61, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-05 13:52:06'),
(62, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 00:23:25'),
(63, 'admin', 'admin', 'update biodata LIYA SILVIANA ', 'berhasil', '', '2021-11-06 01:00:11'),
(64, 'admin', 'admin', 'update biodata LIYA SILVIANA ', 'berhasil', '', '2021-11-06 01:24:21'),
(65, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 01:33:13'),
(66, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 02:22:38'),
(67, 'admin', 'admin', 'update biodata JENISA CINDY PERMANA', 'berhasil', '', '2021-11-06 02:33:34'),
(68, 'admin', 'admin', 'update biodata ayah JENISA CINDY PERMANA', 'berhasil', '', '2021-11-06 02:33:57'),
(69, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-06 02:34:19'),
(70, 'admin', 'admin', 'update biodata wali JENISA CINDY PERMANA', 'berhasil', '', '2021-11-06 02:34:35'),
(71, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-11-06 02:34:59'),
(72, 'admin', 'admin', 'update biodata DIVA YOGA PRATAMA', 'berhasil', '', '2021-11-06 02:49:02'),
(73, 'admin', 'admin', 'update biodata ayah DIVA YOGA PRATAMA', 'berhasil', '', '2021-11-06 02:50:02'),
(74, 'admin', 'admin', 'update data verifikasi FERDI YOGA ARDIYANSYAH', 'berhasil', '', '2021-11-06 02:51:05'),
(75, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-06 02:52:56'),
(76, 'admin', 'admin', 'update biodata wali DIVA YOGA PRATAMA', 'berhasil', '', '2021-11-06 02:53:20'),
(77, 'admin', 'admin', 'update data verifikasi DIVA YOGA PRATAMA', 'berhasil', '', '2021-11-06 02:53:43'),
(78, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 03:51:21'),
(79, 'admin', 'admin', 'update data verifikasi DINA AGUSTIN', 'berhasil', '', '2021-11-06 06:14:34'),
(80, 'admin', 'admin', 'update data verifikasi DINA AGUSTIN', 'berhasil', '', '2021-11-06 06:15:01'),
(81, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 06:41:03'),
(82, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-06 07:03:24'),
(83, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 00:45:17'),
(84, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 00:53:44'),
(85, 'admin', 'admin', 'update biodata ayah DINA AGUSTIN', 'berhasil', '', '2021-11-08 01:33:54'),
(86, 'admin', 'admin', 'update biodata wali DINA AGUSTIN', 'berhasil', '', '2021-11-08 01:34:06'),
(87, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-08 01:34:50'),
(88, 'admin', 'admin', 'update data verifikasi DINA AGUSTIN', 'berhasil', '', '2021-11-08 01:35:04'),
(89, '081218032778', 'siswa', 'login', 'berhasil', '', '2021-11-08 02:26:32'),
(90, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata', 'berhasil', '', '2021-11-08 02:32:39'),
(91, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-08 02:34:29'),
(92, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-08 02:34:29'),
(93, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-08 02:36:07'),
(94, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata wali', 'berhasil', '', '2021-11-08 02:36:39'),
(95, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata', 'berhasil', '', '2021-11-08 02:37:00'),
(96, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata', 'berhasil', '', '2021-11-08 02:37:50'),
(97, 'NOVIA SAFIATUL FITRI', 'siswa', 'update biodata', 'berhasil', '', '2021-11-08 02:37:50'),
(98, 'NOVIA SAFIATUL FITRI', 'siswa', 'logout', 'berhasil', '', '2021-11-08 02:38:01'),
(99, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 02:38:07'),
(100, 'admin', 'admin', 'update data verifikasi NOVIA SAFIATUL FITRI', 'berhasil', '', '2021-11-08 02:38:43'),
(101, 'admin', 'admin', 'hapus data siswa', 'berhasil', '', '2021-11-08 02:49:12'),
(102, 'admin', 'admin', 'update data verifikasi DWI NADA RAMADHANI', 'berhasil', '', '2021-11-08 03:25:27'),
(103, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 04:47:59'),
(104, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 10:37:39'),
(105, 'Admin', 'admin', 'logout', 'berhasil', '', '2021-11-08 10:38:53'),
(106, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 15:36:52'),
(107, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-08 15:47:55'),
(108, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:14:53'),
(109, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:21:42'),
(110, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:21:54'),
(111, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:24:39'),
(112, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:25:42'),
(113, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:25:51'),
(114, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:26:13'),
(115, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:33:53'),
(116, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:36:51'),
(117, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:37:22'),
(118, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:37:33'),
(119, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:37:34'),
(120, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:38:23'),
(121, 'admin', 'admin', 'update biodata AELA FINA YUSNAIDA', 'berhasil', '', '2021-11-09 00:42:16'),
(122, 'admin', 'admin', 'update biodata ayah AELA FINA YUSNAIDA', 'berhasil', '', '2021-11-09 00:43:15'),
(123, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-09 00:46:57'),
(124, 'admin', 'admin', 'update data verifikasi AELA FINA YUSNAIDA', 'berhasil', '', '2021-11-09 00:47:34'),
(125, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 00:57:56'),
(126, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-09 02:33:59'),
(127, '081239809042', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-09 02:49:23'),
(128, '081236809042', 'siswa', 'login', 'berhasil', '', '2021-11-09 02:50:16'),
(129, '081231136752', 'siswa', 'login', 'berhasil', '', '2021-11-09 02:51:02'),
(130, '081231136752', 'siswa', 'login', 'berhasil', '', '2021-11-09 02:51:31'),
(131, 'SELA DWI FEBRIANI', 'siswa', 'update biodata', 'berhasil', '', '2021-11-09 02:58:12'),
(132, 'SINTA AYU FIRNANDA', 'siswa', 'update biodata', 'berhasil', '', '2021-11-09 02:58:13'),
(133, 'admin', 'admin', 'update biodata SELA DWI FEBRIANI', 'berhasil', '', '2021-11-09 03:03:23'),
(134, 'SINTA AYU FIRNANDA', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-09 03:05:14'),
(135, 'SELA DWI FEBRIANI', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-09 03:05:18'),
(136, 'admin', 'admin', 'update biodata ayah SELA DWI FEBRIANI', 'berhasil', '', '2021-11-09 03:06:59'),
(137, 'admin', 'admin', 'update biodata SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-09 03:07:33'),
(138, 'admin', 'admin', 'update biodata ayah SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-09 03:07:42'),
(139, 'SELA DWI FEBRIANI', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-09 03:09:35'),
(140, 'SINTA AYU FIRNANDA', 'siswa', 'update biodata wali', 'berhasil', '', '2021-11-09 03:09:48'),
(141, 'SINTA AYU FIRNANDA', 'siswa', 'update biodata wali', 'berhasil', '', '2021-11-09 03:10:22'),
(142, 'admin', 'admin', 'update biodata SELA DWI FEBRIANI', 'berhasil', '', '2021-11-09 03:10:45'),
(143, 'SINTA AYU FIRNANDA', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-09 03:11:04'),
(144, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-09 03:11:08'),
(145, 'admin', 'admin', 'update biodata wali SELA DWI FEBRIANI', 'berhasil', '', '2021-11-09 03:11:15'),
(146, 'admin', 'admin', 'update data verifikasi SELA DWI FEBRIANI', 'berhasil', '', '2021-11-09 03:11:42'),
(147, 'admin', 'admin', 'update biodata SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-09 03:12:34'),
(148, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-09 03:13:29'),
(149, 'admin', 'admin', 'update biodata wali SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-09 03:14:09'),
(150, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-09 03:14:13'),
(151, 'admin', 'admin', 'update data verifikasi SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-09 03:14:31'),
(152, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-11 00:47:09'),
(153, 'admin', 'admin', 'update biodata REZA DWI TIRTA ANDARIANI', 'berhasil', '', '2021-11-11 00:55:53'),
(154, 'admin', 'admin', 'update biodata ayah REZA DWI TIRTA ANDARIANI', 'berhasil', '', '2021-11-11 00:58:19'),
(155, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-11 00:59:18'),
(156, 'admin', 'admin', 'update data verifikasi REZA DWI TIRTA ANDARIANI', 'berhasil', '', '2021-11-11 01:00:32'),
(157, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-11 01:29:43'),
(158, '', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-11 05:58:07'),
(159, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-12 01:54:06'),
(160, 'admin', 'admin', 'update biodata MUHAMAD HABIBI ROMADON', 'berhasil', '', '2021-11-12 02:00:30'),
(161, 'admin', 'admin', 'update biodata ayah MUHAMAD HABIBI ROMADON', 'berhasil', '', '2021-11-12 02:02:28'),
(162, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-12 02:03:26'),
(163, 'admin', 'admin', 'update data verifikasi MUHAMAD HABIBI ROMADON', 'berhasil', '', '2021-11-12 02:03:56'),
(164, 'admin', 'admin', 'update biodata KINGKY HANDIKA DARMA KUSUMA', 'berhasil', '', '2021-11-12 02:06:52'),
(165, 'admin', 'admin', 'update biodata ayah KINGKY HANDIKA DARMA KUSUMA', 'berhasil', '', '2021-11-12 02:08:07'),
(166, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-12 02:09:06'),
(167, 'admin', 'admin', 'update data verifikasi KINGKY HANDIKA DARMA KUSUMA', 'berhasil', '', '2021-11-12 02:09:32'),
(168, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-12 15:28:35'),
(169, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-13 00:46:19'),
(170, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-13 01:07:26'),
(171, 'admin', 'admin', 'update data verifikasi REZA DWI TIRTA ANDARIANI', 'berhasil', '', '2021-11-13 01:15:13'),
(172, 'admin', 'admin', 'update data verifikasi MARSELA DISTIKARANI', 'berhasil', '', '2021-11-13 02:28:17'),
(173, 'admin', 'admin', 'update data verifikasi AYU KARTIKA RAHAYU', 'berhasil', '', '2021-11-13 02:28:32'),
(174, 'admin', 'admin', 'update data verifikasi AMEL APRILIA TRI RATNA SARI', 'berhasil', '', '2021-11-13 02:28:49'),
(175, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-11-13 02:29:13'),
(176, '082319844018', 'siswa', 'login', 'berhasil', '', '2021-11-13 03:56:22'),
(177, 'Erik Choirul Wahyudi', 'siswa', 'update biodata', 'berhasil', '', '2021-11-13 03:57:40'),
(178, 'Erik Choirul Wahyudi', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-13 03:57:54'),
(179, 'Erik Choirul Wahyudi', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-13 03:58:09'),
(180, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-13 04:59:14'),
(181, 'admin', 'admin', 'update data verifikasi HUSNUL YAKIN', 'berhasil', '', '2021-11-13 04:59:53'),
(182, 'admin', 'admin', 'update data verifikasi HUSNUL YAKIN', 'berhasil', '', '2021-11-13 05:00:05'),
(183, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-13 05:00:37'),
(184, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-13 05:59:27'),
(185, 'admin', 'admin', 'hapus data siswa', 'berhasil', '', '2021-11-13 05:59:46'),
(186, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-15 00:38:34'),
(187, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-15 00:48:02'),
(188, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-15 00:50:47'),
(189, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-15 00:51:11'),
(190, 'admin', 'admin', 'update data verifikasi HUSNUL YAKIN', 'berhasil', '', '2021-11-15 00:52:57'),
(191, '90172937128', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-15 00:56:47'),
(192, '21873', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-15 00:57:11'),
(193, 'admin', 'admin', 'update biodata SHESILIA CHESYA NEZALUNA', 'berhasil', '', '2021-11-15 00:58:13'),
(194, 'admin', 'admin', 'update biodata ayah SHESILIA CHESYA NEZALUNA', 'berhasil', '', '2021-11-15 01:00:17'),
(195, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-15 01:01:55'),
(196, 'admin', 'admin', 'update data verifikasi SHESILIA CHESYA NEZALUNA', 'berhasil', '', '2021-11-15 01:02:22'),
(197, 'admin', 'admin', 'update biodata DIMAS ANGGARA', 'berhasil', '', '2021-11-15 01:39:53'),
(198, 'admin', 'admin', 'update biodata ayah DIMAS ANGGARA', 'berhasil', '', '2021-11-15 01:41:13'),
(199, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-15 01:42:44'),
(200, 'admin', 'admin', 'update data verifikasi DIMAS ANGGARA', 'berhasil', '', '2021-11-15 01:43:22'),
(201, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-15 02:00:16'),
(202, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-16 01:09:37'),
(203, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-16 01:10:44'),
(204, 'admin', 'admin', 'update data verifikasi HUSNUL YAKIN', 'berhasil', '', '2021-11-16 01:13:02'),
(205, 'admin', 'admin', 'update biodata MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-16 01:19:11'),
(206, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-16 01:40:18'),
(207, 'admin', 'admin', 'update biodata NANDA ABELIA', 'berhasil', '', '2021-11-16 01:46:12'),
(208, 'admin', 'admin', 'update biodata ayah NANDA ABELIA', 'berhasil', '', '2021-11-16 01:47:31'),
(209, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-16 01:49:39'),
(210, 'admin', 'admin', 'update biodata wali NANDA ABELIA', 'berhasil', '', '2021-11-16 01:50:16'),
(211, 'admin', 'admin', 'update data verifikasi NANDA ABELIA', 'berhasil', '', '2021-11-16 01:53:10'),
(212, 'admin', 'admin', 'update biodata VIKA KHURIL NGAINI', 'berhasil', '', '2021-11-16 02:02:42'),
(213, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-16 04:25:28'),
(214, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-16 05:06:42'),
(215, 'admin', 'admin', 'update data verifikasi PAUL MAHENDRA', 'berhasil', '', '2021-11-16 05:11:11'),
(216, 'admin', 'admin', 'update data verifikasi Rio Krisna Widhiyanto', 'berhasil', '', '2021-11-16 05:11:36'),
(217, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-17 00:32:30'),
(218, 'admin', 'admin', 'update biodata ANDIKA DWI PRASTYO', 'berhasil', '', '2021-11-17 00:39:08'),
(219, 'admin', 'admin', 'update biodata ayah ANDIKA DWI PRASTYO', 'berhasil', '', '2021-11-17 00:40:03'),
(220, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-17 00:40:54'),
(221, 'admin', 'admin', 'update biodata wali ANDIKA DWI PRASTYO', 'berhasil', '', '2021-11-17 00:41:12'),
(222, 'admin', 'admin', 'update data verifikasi ANDIKA DWI PRASTYO', 'berhasil', '', '2021-11-17 00:42:45'),
(223, 'admin', 'admin', 'update biodata WISNU HENDRIKA PUTRA', 'berhasil', '', '2021-11-17 00:49:05'),
(224, 'admin', 'admin', 'update biodata ayah WISNU HENDRIKA PUTRA', 'berhasil', '', '2021-11-17 00:50:06'),
(225, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-17 00:50:52'),
(226, 'admin', 'admin', 'update biodata wali WISNU HENDRIKA PUTRA', 'berhasil', '', '2021-11-17 00:51:19'),
(227, 'admin', 'admin', 'update data verifikasi WISNU HENDRIKA PUTRA', 'berhasil', '', '2021-11-17 00:51:48'),
(228, 'admin', 'admin', 'update biodata ADITYA TRI ARSANA ', 'berhasil', '', '2021-11-17 00:53:52'),
(229, 'admin', 'admin', 'update biodata ayah ADITYA TRI ARSANA ', 'berhasil', '', '2021-11-17 00:55:12'),
(230, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-17 00:56:22'),
(231, 'admin', 'admin', 'update biodata wali ADITYA TRI ARSANA ', 'berhasil', '', '2021-11-17 00:57:03'),
(232, 'admin', 'admin', 'update data verifikasi ADITYA TRI ARSANA ', 'berhasil', '', '2021-11-17 00:57:33'),
(233, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-17 01:46:11'),
(234, 'admin', 'admin', 'update biodata DIO DWI RENGGA PRASETYO', 'berhasil', '', '2021-11-17 02:44:33'),
(235, 'admin', 'admin', 'update biodata ayah DIO DWI RENGGA PRASETYO', 'berhasil', '', '2021-11-17 02:46:18'),
(236, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-17 02:47:44'),
(237, 'admin', 'admin', 'update biodata wali DIO DWI RENGGA PRASETYO', 'berhasil', '', '2021-11-17 02:49:23'),
(238, 'admin', 'admin', 'update data verifikasi DIO DWI RENGGA PRASETYO', 'berhasil', '', '2021-11-17 02:49:46'),
(239, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-17 03:52:25'),
(240, 'admin', 'admin', 'login', 'gagal', 'Username atau Password salah!', '2021-11-17 11:45:14'),
(241, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-17 11:45:18'),
(242, 'Admin', 'admin', 'logout', 'berhasil', '', '2021-11-17 11:50:15'),
(243, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-18 00:17:50'),
(244, 'admin', 'admin', 'update data verifikasi ZACKY DWI PRAYOGA', 'berhasil', '', '2021-11-18 00:18:51'),
(245, 'admin', 'admin', 'update biodata ANGGUN MAYA SYAHRANI', 'berhasil', '', '2021-11-18 00:33:05'),
(246, 'admin', 'admin', 'update biodata ayah ANGGUN MAYA SYAHRANI', 'berhasil', '', '2021-11-18 00:34:00'),
(247, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-18 00:34:54'),
(248, 'admin', 'admin', 'update biodata wali ANGGUN MAYA SYAHRANI', 'berhasil', '', '2021-11-18 00:35:58'),
(249, 'admin', 'admin', 'update data verifikasi ANGGUN MAYA SYAHRANI', 'berhasil', '', '2021-11-18 00:37:24'),
(250, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-18 01:14:35'),
(251, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-18 04:05:19'),
(252, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-18 04:39:15'),
(253, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-19 00:22:05'),
(254, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-20 01:16:59'),
(255, 'admin', 'admin', 'update biodata SONU DERMAWAN', 'berhasil', '', '2021-11-20 01:21:17'),
(256, 'admin', 'admin', 'update biodata ayah SONU DERMAWAN', 'berhasil', '', '2021-11-20 01:21:44'),
(257, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-20 01:22:09'),
(258, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-22 01:13:37'),
(259, 'admin', 'admin', 'update biodata ANDIKA DWI PRASTYO', 'berhasil', '', '2021-11-22 01:14:37'),
(260, 'admin', 'admin', 'update biodata MARANATA DEWI ANGGITA', 'berhasil', '', '2021-11-22 01:34:23'),
(261, 'admin', 'admin', 'update biodata ayah MARANATA DEWI ANGGITA', 'berhasil', '', '2021-11-22 01:35:43'),
(262, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-22 01:36:49'),
(263, 'admin', 'admin', 'update biodata wali MARANATA DEWI ANGGITA', 'berhasil', '', '2021-11-22 01:37:00'),
(264, 'admin', 'admin', 'update data verifikasi MARANATA DEWI ANGGITA', 'berhasil', '', '2021-11-22 01:38:43'),
(265, 'admin', 'admin', 'update biodata GEA CANDRA WINATA', 'berhasil', '', '2021-11-22 01:50:11'),
(266, 'admin', 'admin', 'update biodata ayah GEA CANDRA WINATA', 'berhasil', '', '2021-11-22 01:51:49'),
(267, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-22 01:53:25'),
(268, 'admin', 'admin', 'update biodata wali GEA CANDRA WINATA', 'berhasil', '', '2021-11-22 01:53:37'),
(269, 'admin', 'admin', 'update data verifikasi GEA CANDRA WINATA', 'berhasil', '', '2021-11-22 01:54:05'),
(270, 'admin', 'admin', 'update data verifikasi GEA CANDRA WINATA', 'berhasil', '', '2021-11-22 01:55:18'),
(271, 'admin', 'admin', 'update biodata JANUASTA YULAIVA RAHMAN', 'berhasil', '', '2021-11-22 02:22:55'),
(272, 'admin', 'admin', 'update biodata ayah JANUASTA YULAIVA RAHMAN', 'berhasil', '', '2021-11-22 02:24:34'),
(273, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-22 02:26:28'),
(274, 'admin', 'admin', 'update biodata wali JANUASTA YULAIVA RAHMAN', 'berhasil', '', '2021-11-22 02:26:49'),
(275, 'admin', 'admin', 'update data verifikasi JANUASTA YULAIVA RAHMAN', 'berhasil', '', '2021-11-22 02:28:51'),
(276, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-22 14:08:58'),
(277, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-23 00:26:21'),
(278, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-23 00:26:24'),
(279, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-23 04:06:11'),
(280, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-23 09:00:52'),
(281, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-23 11:24:57'),
(282, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-24 00:23:58'),
(283, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-24 00:32:20'),
(284, 'admin', 'admin', 'update biodata ANDIKA PANDU RAMADANI', 'berhasil', '', '2021-11-24 00:39:00'),
(285, 'admin', 'admin', 'update data verifikasi ANDIKA PANDU RAMADANI', 'berhasil', '', '2021-11-24 00:39:30'),
(286, 'admin', 'admin', 'update biodata RENIVA SARI', 'berhasil', '', '2021-11-24 01:23:11'),
(287, 'admin', 'admin', 'update biodata ayah RENIVA SARI', 'berhasil', '', '2021-11-24 01:25:30'),
(288, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-24 01:26:59'),
(289, 'admin', 'admin', 'update biodata wali RENIVA SARI', 'berhasil', '', '2021-11-24 01:27:37'),
(290, 'admin', 'admin', 'update data verifikasi RENIVA SARI', 'berhasil', '', '2021-11-24 01:30:36'),
(291, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-24 01:38:29'),
(292, 'admin', 'admin', 'update biodata RIZAL KURNIAWAN', 'berhasil', '', '2021-11-24 01:42:43'),
(293, 'admin', 'admin', 'update biodata ayah RIZAL KURNIAWAN', 'berhasil', '', '2021-11-24 01:44:04'),
(294, 'admin', 'admin', 'update biodata DEWI WULANDARI', 'berhasil', '', '2021-11-24 01:44:20'),
(295, 'admin', 'admin', 'update biodata ayah RIZAL KURNIAWAN', 'berhasil', '', '2021-11-24 01:44:32'),
(296, 'admin', 'admin', 'update biodata ayah DEWI WULANDARI', 'berhasil', '', '2021-11-24 01:45:08'),
(297, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-24 01:45:16'),
(298, 'admin', 'admin', 'update biodata ayah DEWI WULANDARI', 'berhasil', '', '2021-11-24 01:45:39'),
(299, 'admin', 'admin', 'update biodata wali RIZAL KURNIAWAN', 'berhasil', '', '2021-11-24 01:45:57'),
(300, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-24 01:46:08'),
(301, 'admin', 'admin', 'update biodata wali DEWI WULANDARI', 'berhasil', '', '2021-11-24 01:46:19'),
(302, 'admin', 'admin', 'update data verifikasi RIZAL KURNIAWAN', 'berhasil', '', '2021-11-24 01:47:54'),
(303, 'admin', 'admin', 'update data verifikasi DEWI WULANDARI', 'berhasil', '', '2021-11-24 01:48:09'),
(304, 'admin', 'admin', 'update biodata DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-24 01:52:34'),
(305, 'admin', 'admin', 'update biodata ayah DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-24 01:53:21'),
(306, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-24 01:54:16'),
(307, 'admin', 'admin', 'update biodata wali DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-24 01:54:24'),
(308, 'admin', 'admin', 'update data verifikasi DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-24 01:55:49'),
(309, 'admin', 'admin', 'update data verifikasi DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-24 01:57:57'),
(310, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-24 09:42:17'),
(311, '085855313527', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-24 12:09:08'),
(312, '085855313527', 'siswa', 'login', 'berhasil', '', '2021-11-24 12:13:49'),
(313, '085855313527', 'siswa', 'login', 'berhasil', '', '2021-11-24 12:23:36'),
(314, 'Rico nur Ahmad fadilah', 'siswa', 'update biodata', 'berhasil', '', '2021-11-24 12:45:04'),
(315, '085855313527', 'siswa', 'login', 'berhasil', '', '2021-11-24 22:55:35'),
(316, 'Rico nur Ahmad fadilah', 'siswa', 'update biodata wali', 'berhasil', '', '2021-11-24 23:01:35'),
(317, 'Rico nur Ahmad fadilah', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-24 23:02:38'),
(318, 'Rico nur Ahmad fadilah', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-24 23:03:27'),
(319, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-25 01:11:24'),
(320, 'admin', 'admin', 'update biodata LESTARI NING WAHYU', 'berhasil', '', '2021-11-25 01:15:56'),
(321, 'admin', 'admin', 'update biodata ayah LESTARI NING WAHYU', 'berhasil', '', '2021-11-25 01:17:09'),
(322, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-25 01:18:55'),
(323, 'admin', 'admin', 'update biodata wali LESTARI NING WAHYU', 'berhasil', '', '2021-11-25 01:19:13'),
(324, 'admin', 'admin', 'update data verifikasi LESTARI NING WAHYU', 'berhasil', '', '2021-11-25 01:20:13'),
(325, 'admin', 'admin', 'update data verifikasi LESTARI NING WAHYU', 'berhasil', '', '2021-11-25 01:31:59'),
(326, 'admin', 'admin', 'update data verifikasi SINTA AYU FIRNANDA', 'berhasil', '', '2021-11-25 01:35:24'),
(327, 'admin', 'admin', 'update data verifikasi SELA DWI FEBRIANI', 'berhasil', '', '2021-11-25 01:35:49'),
(328, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-25 03:34:03'),
(329, 'admin', 'admin', 'update biodata GALYZTA DWI RENATA', 'berhasil', '', '2021-11-25 03:42:48'),
(330, 'admin', 'admin', 'update biodata ayah GALYZTA DWI RENATA', 'berhasil', '', '2021-11-25 03:43:20'),
(331, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-25 03:43:40'),
(332, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-25 03:44:21'),
(333, 'admin', 'admin', 'update biodata wali GALYZTA DWI RENATA', 'berhasil', '', '2021-11-25 03:44:41'),
(334, 'admin', 'admin', 'update data verifikasi GALYZTA DWI RENATA', 'berhasil', '', '2021-11-25 03:45:29'),
(335, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-26 03:33:27'),
(336, 'admin', 'admin', 'update biodata GALYZTA DWI RENATA', 'berhasil', '', '2021-11-26 03:35:48'),
(337, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-26 03:37:20'),
(338, 'admin', 'admin', 'update data verifikasi GALYZTHA DWI RENATA', 'berhasil', '', '2021-11-26 03:37:59'),
(339, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-26 03:38:57'),
(340, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-27 00:13:30'),
(341, '081249994338', 'siswa', 'login', 'berhasil', '', '2021-11-27 00:27:45'),
(342, '081249994338', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-27 00:29:12'),
(343, '081249994338', 'siswa', 'login', 'berhasil', '', '2021-11-27 00:29:27'),
(344, '081249994338', 'siswa', 'login', 'berhasil', '', '2021-11-27 00:40:53'),
(345, 'admin', 'admin', 'update biodata JEFRI PARMANTO', 'berhasil', '', '2021-11-27 01:16:54'),
(346, 'admin', 'admin', 'update biodata ayah JEFRI PARMANTO', 'berhasil', '', '2021-11-27 01:17:46'),
(347, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 01:18:08'),
(348, 'admin', 'admin', 'update data verifikasi JEFRI PARMANTO', 'berhasil', '', '2021-11-27 01:18:42'),
(349, 'admin', 'admin', 'update biodata MIKO HARDIANSYAH', 'berhasil', '', '2021-11-27 01:22:37'),
(350, 'admin', 'admin', 'update biodata ayah MIKO HARDIANSYAH', 'berhasil', '', '2021-11-27 01:42:34'),
(351, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 01:43:34'),
(352, 'admin', 'admin', 'update biodata wali MIKO HARDIANSYAH', 'berhasil', '', '2021-11-27 01:44:06'),
(353, 'admin', 'admin', 'update data verifikasi MIKO HARDIANSYAH', 'berhasil', '', '2021-11-27 01:44:30'),
(354, 'admin', 'admin', 'update data verifikasi RIZAL KURNIAWAN', 'berhasil', '', '2021-11-27 01:46:34'),
(355, 'admin', 'admin', 'update biodata RISQI SASONGKO WIDHI', 'berhasil', '', '2021-11-27 01:57:03'),
(356, 'admin', 'admin', 'update biodata ayah RISQI SASONGKO WIDHI', 'berhasil', '', '2021-11-27 01:57:59'),
(357, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 01:58:49'),
(358, 'admin', 'admin', 'update biodata wali RISQI SASONGKO WIDHI', 'berhasil', '', '2021-11-27 01:59:27'),
(359, 'admin', 'admin', 'update data verifikasi RISQI SASONGKO WIDHI', 'berhasil', '', '2021-11-27 01:59:51'),
(360, 'admin', 'admin', 'update biodata FIRMAN BAYU ANGGARA', 'berhasil', '', '2021-11-27 02:02:47'),
(361, 'admin', 'admin', 'update biodata ayah FIRMAN BAYU ANGGARA', 'berhasil', '', '2021-11-27 02:03:55'),
(362, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 02:04:40'),
(363, 'admin', 'admin', 'update biodata wali FIRMAN BAYU ANGGARA', 'berhasil', '', '2021-11-27 02:05:14'),
(364, 'admin', 'admin', 'update data verifikasi FIRMAN BAYU ANGGARA', 'berhasil', '', '2021-11-27 02:05:38'),
(365, 'admin', 'admin', 'update biodata ILHAM PRATAMA MILO SEVIC', 'berhasil', '', '2021-11-27 02:07:53'),
(366, 'admin', 'admin', 'update biodata ayah ILHAM PRATAMA MILO SEVIC', 'berhasil', '', '2021-11-27 02:09:04'),
(367, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 02:10:08'),
(368, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 02:12:40'),
(369, 'admin', 'admin', 'update biodata wali ILHAM PRATAMA MILO SEVIC', 'berhasil', '', '2021-11-27 02:13:04'),
(370, 'admin', 'admin', 'update data verifikasi ILHAM PRATAMA MILO SEVIC', 'berhasil', '', '2021-11-27 02:13:29'),
(371, 'admin', 'admin', 'update data verifikasi DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-27 02:18:59'),
(372, 'admin', 'admin', 'update biodata DIAN DWI HERMAWAN', 'berhasil', '', '2021-11-27 02:19:33'),
(373, 'admin', 'admin', 'update biodata AYU KARTIKA RAHAYU', 'berhasil', '', '2021-11-27 02:22:18'),
(374, 'admin', 'admin', 'update biodata ayah AYU KARTIKA RAHAYU', 'berhasil', '', '2021-11-27 02:23:13'),
(375, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 02:24:10'),
(376, 'admin', 'admin', 'update biodata wali AYU KARTIKA RAHAYU', 'berhasil', '', '2021-11-27 02:24:51'),
(377, 'admin', 'admin', 'update data verifikasi AYU KARTIKA RAHAYU', 'berhasil', '', '2021-11-27 02:25:16'),
(378, 'admin', 'admin', 'update biodata MARSELA DISTIKARANI', 'berhasil', '', '2021-11-27 02:26:41'),
(379, 'admin', 'admin', 'update biodata ayah MARSELA DISTIKARANI', 'berhasil', '', '2021-11-27 02:27:27'),
(380, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-27 02:28:19'),
(381, 'admin', 'admin', 'update biodata ayah MARSELA DISTIKARANI', 'berhasil', '', '2021-11-27 02:29:23'),
(382, 'admin', 'admin', 'update biodata wali MARSELA DISTIKARANI', 'berhasil', '', '2021-11-27 02:29:49'),
(383, 'admin', 'admin', 'update data verifikasi MARSELA DISTIKARANI', 'berhasil', '', '2021-11-27 02:30:08'),
(384, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-28 08:42:00'),
(385, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 00:28:39'),
(386, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 00:59:40'),
(387, '', 'siswa', 'login', 'gagal', 'Nomor Telepon atau Password salah ', '2021-11-29 01:38:29'),
(388, '081249994338', 'siswa', 'login', 'berhasil', '', '2021-11-29 01:38:45'),
(389, 'Fauzan Husain Ramadhan', 'siswa', 'update biodata', 'berhasil', '', '2021-11-29 01:45:42'),
(390, 'Fauzan Husain Ramadhan', 'siswa', 'update biodata ayah', 'berhasil', '', '2021-11-29 01:47:37'),
(391, 'Fauzan Husain Ramadhan', 'siswa', 'update biodata ibu', 'berhasil', '', '2021-11-29 01:58:52'),
(392, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 01:59:51'),
(393, 'Fauzan Husain Ramadhan', 'siswa', 'update biodata wali', 'berhasil', '', '2021-11-29 02:01:14'),
(394, 'admin', 'admin', 'update data verifikasi Fauzan Husain Ramadhan', 'berhasil', '', '2021-11-29 02:02:41'),
(395, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 03:36:34'),
(396, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 05:06:19'),
(397, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-29 05:07:11'),
(398, 'admin', 'admin', 'update data verifikasi HUSNUL YAKIN', 'berhasil', '', '2021-11-29 05:08:01'),
(399, 'admin', 'admin', 'update data verifikasi MOHKAMAT RADIT SETIAWAN', 'berhasil', '', '2021-11-29 05:08:41'),
(400, 'admin', 'admin', 'update data verifikasi DIO DWI RENGGA PRASETYO', 'berhasil', '', '2021-11-29 05:09:30'),
(401, 'admin', 'admin', 'update data verifikasi RENIVA SARI', 'berhasil', '', '2021-11-29 05:10:15'),
(402, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-29 05:36:44'),
(403, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-30 00:20:41'),
(404, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-30 00:51:59'),
(405, 'admin', 'admin', 'update data verifikasi GEA CANDRA WINATA', 'berhasil', '', '2021-11-30 00:54:23'),
(406, 'admin', 'admin', 'update data verifikasi GEA CANDRA WINATA', 'berhasil', '', '2021-11-30 00:57:04'),
(407, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-30 03:13:13'),
(408, 'admin', 'admin', 'login', 'berhasil', '', '2021-11-30 04:12:58'),
(409, 'admin', 'admin', 'update biodata ANTONIUS ALDIAN SAPUTRO', 'berhasil', '', '2021-11-30 04:17:23'),
(410, 'admin', 'admin', 'update biodata ayah ANTONIUS ALDIAN SAPUTRO', 'berhasil', '', '2021-11-30 04:18:55'),
(411, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-30 04:20:05'),
(412, 'admin', 'admin', 'update data verifikasi ANTONIUS ALDIAN SAPUTRO', 'berhasil', '', '2021-11-30 04:21:24'),
(413, 'admin', 'admin', 'update biodata KRISNA BENDI PRADANA', 'berhasil', '', '2021-11-30 04:24:45'),
(414, 'admin', 'admin', 'update biodata ayah KRISNA BENDI PRADANA', 'berhasil', '', '2021-11-30 04:26:12'),
(415, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-30 04:27:50'),
(416, 'admin', 'admin', 'update biodata wali KRISNA BENDI PRADANA', 'berhasil', '', '2021-11-30 04:28:02'),
(417, 'admin', 'admin', 'update data verifikasi KRISNA BENDI PRADANA', 'berhasil', '', '2021-11-30 04:28:26'),
(418, 'admin', 'admin', 'update biodata wali ANTONIUS ALDIAN SAPUTRO', 'berhasil', '', '2021-11-30 04:29:17'),
(419, 'admin', 'admin', 'update biodata AMEL APRILIA TRI RATNA SARI', 'berhasil', '', '2021-11-30 04:51:59'),
(420, 'admin', 'admin', 'update biodata ayah AMEL APRILIA TRI RATNA SARI', 'berhasil', '', '2021-11-30 04:52:23'),
(421, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-30 04:53:22'),
(422, 'admin', 'admin', 'update biodata wali AMEL APRILIA TRI RATNA SARI', 'berhasil', '', '2021-11-30 04:53:39'),
(423, 'admin', 'admin', 'update data verifikasi AMEL APRILIA TRI RATNA SARI', 'berhasil', '', '2021-11-30 04:55:33'),
(424, 'admin', 'admin', 'hapus data siswa', 'berhasil', '', '2021-11-30 04:56:53'),
(425, 'admin', 'admin', 'hapus data siswa', 'berhasil', '', '2021-11-30 05:16:10'),
(426, 'admin', 'admin', 'update biodata LUNA MAYU', 'berhasil', '', '2021-11-30 05:19:15'),
(427, 'admin', 'admin', 'update biodata ayah LUNA MAYU', 'berhasil', '', '2021-11-30 05:20:09'),
(428, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-11-30 05:21:19'),
(429, 'admin', 'admin', 'update biodata wali LUNA MAYU', 'berhasil', '', '2021-11-30 05:21:50'),
(430, 'admin', 'admin', 'update data verifikasi LUNA MAYU', 'berhasil', '', '2021-11-30 05:22:33'),
(431, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-01 00:12:47'),
(432, 'admin', 'admin', 'update biodata DARMA SANTI', 'berhasil', '', '2021-12-01 00:19:11'),
(433, 'admin', 'admin', 'update biodata ayah DARMASANTI', 'berhasil', '', '2021-12-01 00:23:27'),
(434, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-12-01 00:25:14'),
(435, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-01 00:25:23'),
(436, 'admin', 'admin', 'update biodata wali DARMASANTI', 'berhasil', '', '2021-12-01 00:25:23'),
(437, 'admin', 'admin', 'update data verifikasi DARMASANTI', 'berhasil', '', '2021-12-01 00:26:08'),
(438, 'admin', 'admin', 'update biodata DARMASANTI', 'berhasil', '', '2021-12-01 00:26:20'),
(439, 'admin', 'admin', 'update data verifikasi DIVA YOGA PRATAMA', 'berhasil', '', '2021-12-01 00:26:25'),
(440, 'admin', 'admin', 'update data verifikasi ANDIKA DWI PRASTYO', 'berhasil', '', '2021-12-01 00:31:06'),
(441, 'admin', 'admin', 'update data verifikasi RENIVA SARI', 'berhasil', '', '2021-12-01 00:31:55'),
(442, 'admin', 'admin', 'update data verifikasi REVALDO SIL VERI PRATAMA', 'berhasil', '', '2021-12-01 00:32:33'),
(443, 'admin', 'admin', 'update data verifikasi Fauzan Husain Ramadhan', 'berhasil', '', '2021-12-01 00:32:55'),
(444, 'admin', 'admin', 'update data verifikasi Rio Krisna Widhiyanto', 'berhasil', '', '2021-12-01 00:34:13'),
(445, 'admin', 'admin', 'update data verifikasi RIZAL KURNIAWAN', 'berhasil', '', '2021-12-01 00:41:10'),
(446, 'admin', 'admin', 'update biodata ANDI RAMADANI', 'berhasil', '', '2021-12-01 01:06:12'),
(447, 'admin', 'admin', 'update biodata ayah ANDI RAMADANI', 'berhasil', '', '2021-12-01 01:06:33'),
(448, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-12-01 01:06:49'),
(449, 'admin', 'admin', 'update data verifikasi ANDI RAMADANI', 'berhasil', '', '2021-12-01 01:07:10'),
(450, 'admin', 'admin', 'update data verifikasi ANDI RAMADANI', 'berhasil', '', '2021-12-01 01:08:30'),
(451, 'admin', 'admin', 'update data verifikasi ANDI RAMADANI', 'berhasil', '', '2021-12-01 02:44:20'),
(452, 'admin', 'admin', 'update data verifikasi ALVINA DWI ANGGRAINI', 'berhasil', '', '2021-12-01 02:52:43'),
(453, 'admin', 'admin', 'update data verifikasi DWI KARMELIANA PUTRI', 'berhasil', '', '2021-12-01 02:53:46'),
(454, 'admin', 'admin', 'update data verifikasi WISNU HENDRIKA PUTRA', 'berhasil', '', '2021-12-01 02:54:18'),
(455, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-01 05:11:11'),
(456, 'admin', 'admin', 'update biodata DENIS TEGUH FIRMANSYAH', 'berhasil', '', '2021-12-01 05:15:47'),
(457, 'admin', 'admin', 'update biodata ayah DENIS TEGUH FIRMANSYAH', 'berhasil', '', '2021-12-01 05:17:04'),
(458, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-12-01 05:17:57'),
(459, 'admin', 'admin', 'update data verifikasi DENIS TEGUH FIRMANSYAH', 'berhasil', '', '2021-12-01 05:18:36'),
(460, 'admin', 'admin', 'update data verifikasi ANDI RAMADANI', 'berhasil', '', '2021-12-01 05:33:44'),
(461, 'admin', 'admin', 'hapus data siswa', 'berhasil', '', '2021-12-01 05:39:44'),
(462, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-01 05:43:28'),
(463, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-02 00:29:51'),
(464, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-02 02:51:07'),
(465, 'admin', 'admin', 'update data verifikasi MIKO HARDIANSYAH', 'berhasil', '', '2021-12-02 02:52:31'),
(466, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-02 04:59:12'),
(467, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-03 00:22:44'),
(468, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-03 00:35:37'),
(469, 'admin', 'admin', 'update biodata MARANATA DEWI ANGGITA', 'berhasil', '', '2021-12-03 00:36:32'),
(470, 'admin', 'admin', 'update data verifikasi MARANATA DEWI ANGGITA', 'berhasil', '', '2021-12-03 00:37:04'),
(471, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-12-03 00:40:20'),
(472, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-12-03 00:44:23'),
(473, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-12-03 00:44:45'),
(474, 'admin', 'admin', 'update data verifikasi PAUL MAHENDRA', 'berhasil', '', '2021-12-03 00:46:18'),
(475, 'admin', 'admin', 'update data verifikasi MIKO HARDIANSYAH', 'berhasil', '', '2021-12-03 00:46:58'),
(476, 'admin', 'admin', 'update data verifikasi DARMASANTI', 'berhasil', '', '2021-12-03 01:03:22'),
(477, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-03 01:53:27'),
(478, 'admin', 'admin', 'update data verifikasi JENISA CINDY PERMANA', 'berhasil', '', '2021-12-03 01:54:43'),
(479, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-03 06:06:34'),
(480, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-04 00:39:01'),
(481, 'admin', 'admin', 'login', 'berhasil', '', '2021-12-04 00:39:08'),
(482, 'admin', 'admin', 'update biodata ADHITYA RIZKI PRAMONO', 'berhasil', '', '2021-12-04 00:41:52'),
(483, 'admin', 'admin', 'update biodata ayah ADHITYA RIZKI PRAMONO', 'berhasil', '', '2021-12-04 00:43:07'),
(484, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-12-04 00:44:26'),
(485, 'admin', 'admin', 'update data verifikasi ADHITYA RIZKI PRAMONO', 'berhasil', '', '2021-12-04 00:44:53'),
(486, 'admin', 'admin', 'update biodata KRISNA BENDI PRADANA', 'berhasil', '', '2021-12-04 00:57:39'),
(487, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-12-04 00:57:40'),
(488, 'admin', 'admin', 'update biodata SHINDI DWI NOVIANTI', 'berhasil', '', '2021-12-04 00:58:32'),
(489, 'admin', 'admin', 'update biodata ayah SHINDI DWI NOVIANTI', 'berhasil', '', '2021-12-04 00:59:20'),
(490, 'admin', 'admin', 'update biodata ibu ', 'berhasil', '', '2021-12-04 01:00:11'),
(491, 'admin', 'admin', 'update data verifikasi SHINDI DWI NOVIANTI', 'berhasil', '', '2021-12-04 01:01:16'),
(492, 'admin', 'admin', 'update biodata ', 'berhasil', '', '2021-12-04 01:05:30'),
(493, 'admin', 'admin', 'update biodata ADITYA TRI ARSANA ', 'berhasil', '', '2021-12-04 02:07:12'),
(494, 'admin', 'admin', 'update biodata ADHITYA RIZKI PRAMONO', 'berhasil', '', '2021-12-04 02:10:24'),
(495, 'admin', 'admin', 'update biodata ADITYA TRI ARSANA ', 'berhasil', '', '2021-12-04 02:12:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nama_pembayaran`
--

CREATE TABLE `tb_nama_pembayaran` (
  `id` int(11) NOT NULL,
  `nama_pembayaran` varchar(200) NOT NULL,
  `keterangan_pembayaran` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_nama_pembayaran`
--

INSERT INTO `tb_nama_pembayaran` (`id`, `nama_pembayaran`, `keterangan_pembayaran`) VALUES
(1, 'SPP', 'Sumbangan Pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_paralel`
--

CREATE TABLE `tb_paralel` (
  `id` int(11) NOT NULL,
  `paralel` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_paralel`
--

INSERT INTO `tb_paralel` (`id`, `paralel`) VALUES
(2, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profile`
--

CREATE TABLE `tb_profile` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(200) NOT NULL,
  `nama_kepalasekolah` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `cp_1` varchar(15) NOT NULL,
  `cp_2` varchar(15) NOT NULL,
  `website` varchar(200) NOT NULL,
  `sosial_media_1` varchar(200) NOT NULL,
  `sosial_media_2` varchar(200) NOT NULL,
  `sosial_media_3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_profile`
--

INSERT INTO `tb_profile` (`id`, `nama_sekolah`, `nama_kepalasekolah`, `logo`, `alamat`, `tahun_ajaran`, `cp_1`, `cp_2`, `website`, `sosial_media_1`, `sosial_media_2`, `sosial_media_3`) VALUES
(1, 'SMK PGRI PESANGGARAN', 'UMI QOWIYAH,S.Pd', 'logo.png', 'Jl. LAMPON NO 50 PESANGGARAN', '2022-2023', '085258923923', '085336905717', 'smkpgripesanggaran.sch.id', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ptk`
--

CREATE TABLE `tb_ptk` (
  `id` int(11) NOT NULL,
  `nama_ptk` varchar(200) NOT NULL,
  `nik_ptk` varchar(16) NOT NULL,
  `jenis_kelamin_ptk` varchar(100) NOT NULL,
  `tempat_lahir_ptk` varchar(200) NOT NULL,
  `tanggal_lahir_ptk` date DEFAULT NULL,
  `nama_ibu_ptk` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat_ptk` varchar(200) NOT NULL,
  `rt_ptk` varchar(10) NOT NULL,
  `rw_ptk` varchar(10) NOT NULL,
  `dusun_ptk` varchar(200) NOT NULL,
  `desa_ptk` varchar(200) NOT NULL,
  `kecamatan_ptk` varchar(200) NOT NULL,
  `lintang_ptk` varchar(20) NOT NULL,
  `bujur_ptk` varchar(20) NOT NULL,
  `kode_pos_ptk` varchar(20) NOT NULL,
  `nomor_hp_ptk` varchar(20) NOT NULL,
  `agama_ptk` varchar(20) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `nama_wajib_pajak` varchar(200) NOT NULL,
  `kewarganegaraan_ptk` varchar(200) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `nama_suami_isteri` varchar(200) NOT NULL,
  `pekerjaan_suami_isteri` varchar(200) NOT NULL,
  `status_kepegawaian` varchar(200) NOT NULL,
  `niy` varchar(20) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `jenis_ptk` varchar(200) NOT NULL,
  `sk_pengangkatan` varchar(200) NOT NULL,
  `tmt_pengangkatan` date DEFAULT NULL,
  `lembaga_pengangkat` varchar(200) NOT NULL,
  `nomr_surat_tugas` varchar(50) NOT NULL,
  `tanggal_surat_tugas` date DEFAULT NULL,
  `tmt_tugas` date DEFAULT NULL,
  `status_sekolah_induk` varchar(5) NOT NULL,
  `pangkat_golongan` varchar(200) NOT NULL,
  `no_sk_inpasing` varchar(100) NOT NULL,
  `tgl_sk_inpasing` date DEFAULT NULL,
  `tmt_sk_inpasing` date DEFAULT NULL,
  `angka_kredit` varchar(100) NOT NULL,
  `masa_kerja_tahun` varchar(2) NOT NULL,
  `masa_kerja_bulan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_ptk`
--

INSERT INTO `tb_ptk` (`id`, `nama_ptk`, `nik_ptk`, `jenis_kelamin_ptk`, `tempat_lahir_ptk`, `tanggal_lahir_ptk`, `nama_ibu_ptk`, `foto`, `username`, `password`, `alamat_ptk`, `rt_ptk`, `rw_ptk`, `dusun_ptk`, `desa_ptk`, `kecamatan_ptk`, `lintang_ptk`, `bujur_ptk`, `kode_pos_ptk`, `nomor_hp_ptk`, `agama_ptk`, `npwp`, `nama_wajib_pajak`, `kewarganegaraan_ptk`, `status_perkawinan`, `nama_suami_isteri`, `pekerjaan_suami_isteri`, `status_kepegawaian`, `niy`, `nuptk`, `jenis_ptk`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkat`, `nomr_surat_tugas`, `tanggal_surat_tugas`, `tmt_tugas`, `status_sekolah_induk`, `pangkat_golongan`, `no_sk_inpasing`, `tgl_sk_inpasing`, `tmt_sk_inpasing`, `angka_kredit`, `masa_kerja_tahun`, `masa_kerja_bulan`) VALUES
(1, 'putra daerah', '1', 'Laki-laki', '2', '2022-03-01', '1', '', 'didik', '1234', 'senepo lor, barurejo, siliragung, Banyuwangi', '', '', '', '', '', '', '', '68489', '085212125044', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, NULL, '', 'golongan 1', '', '0000-00-00', '0000-00-00', '', '', ''),
(2, 'Putra Bali', '0', '', 'i', '2022-06-08', 'o', '', 'bali', '123456789', 'senepo lor, barurejo, siliragung, Banyuwangi', '', '', '', '', '', '', '', '68489', '085212125044', 'Islam', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, NULL, '', '', ''),
(3, 'putri indonesia', '', '', '', NULL, '', '3-putri-indonesia1.jpg', 'putri ', 'password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, NULL, '', '', ''),
(4, 'Guru 1', '0123456789789789', 'Laki-laki', 'Banyuwangi', '1999-10-15', 'Tumini', '', 'guru1', 'password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_pendidikan`
--

CREATE TABLE `tb_riwayat_pendidikan` (
  `id` int(11) NOT NULL,
  `id_ptk` int(11) NOT NULL,
  `bidang_studi` varchar(200) NOT NULL,
  `jenjang_pendidikan` varchar(200) NOT NULL,
  `gelar_akademik` varchar(100) NOT NULL,
  `satuan_pendidikan` varchar(200) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `mata_kuliah` varchar(200) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `ipk` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_riwayat_pendidikan`
--

INSERT INTO `tb_riwayat_pendidikan` (`id`, `id_ptk`, `bidang_studi`, `jenjang_pendidikan`, `gelar_akademik`, `satuan_pendidikan`, `tahun_masuk`, `tahun_lulus`, `nim`, `mata_kuliah`, `semester`, `ipk`) VALUES
(1, 2, 'Matematika', 'S1', 'MM', 'Satu', 2012, 2014, '65265498321', 'Matematika', '2', '2,5'),
(2, 2, 'Multimedia', 's1', 'MM', 'S1', 2021, 2012, '231542316541', 'Multimedia', '7', '3,28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_sertifikasi`
--

CREATE TABLE `tb_riwayat_sertifikasi` (
  `id` int(11) NOT NULL,
  `id_ptk` int(11) NOT NULL,
  `jenis_sertifikasi` varchar(200) NOT NULL,
  `nomor_sertifikasi` varchar(15) NOT NULL,
  `thn_sertifikasi` year(4) NOT NULL,
  `bidang_studi_sertifikasi` varchar(200) NOT NULL,
  `nrg` varchar(15) NOT NULL,
  `nomor_peserta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_riwayat_sertifikasi`
--

INSERT INTO `tb_riwayat_sertifikasi` (`id`, `id_ptk`, `jenis_sertifikasi`, `nomor_sertifikasi`, `thn_sertifikasi`, `bidang_studi_sertifikasi`, `nrg`, `nomor_peserta`) VALUES
(1, 2, 'sertifikasi sendiri', '150', 2022, 'matematika', '9879987', '8979876');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `kode_pendaftaran` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `jk` varchar(100) DEFAULT NULL,
  `nisn` varchar(100) DEFAULT NULL,
  `no_induk` varchar(200) NOT NULL,
  `nik_siswa` varchar(100) DEFAULT NULL,
  `no_kk` varchar(100) DEFAULT NULL,
  `tempatlahir_siswa` varchar(100) DEFAULT NULL,
  `tgllahir_siswa` date NOT NULL,
  `noakte_lahir` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(100) DEFAULT NULL,
  `alamat_siswa` varchar(100) DEFAULT NULL,
  `rt` varchar(100) DEFAULT NULL,
  `nohp` varchar(100) DEFAULT NULL,
  `rw` varchar(100) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kec` varchar(100) DEFAULT NULL,
  `kab` varchar(100) DEFAULT NULL,
  `kodepos` varchar(100) DEFAULT NULL,
  `tempat_tinggal` varchar(100) DEFAULT NULL,
  `moda_transportasi` varchar(100) DEFAULT NULL,
  `anak_keberapa` varchar(100) DEFAULT NULL,
  `nomor_kip` varchar(50) DEFAULT NULL,
  `nama_kip` varchar(50) DEFAULT NULL,
  `lintang` varchar(50) DEFAULT NULL,
  `bujur` varchar(50) DEFAULT NULL,
  `nomor_kks` varchar(50) DEFAULT NULL,
  `nomor_kps_pkh` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(20) DEFAULT NULL,
  `nik_ayah` varchar(100) DEFAULT NULL,
  `tgllahir_ayah` date NOT NULL,
  `pendidikan_ayah` varchar(100) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` varchar(20) DEFAULT NULL,
  `nik_ibu` varchar(100) DEFAULT NULL,
  `tgllahir_ibu` date NOT NULL,
  `pendidikan_ibu` varchar(100) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `nohp_wali` varchar(20) DEFAULT NULL,
  `nik_wali` varchar(100) DEFAULT NULL,
  `tgllahir_wali` date NOT NULL,
  `pendidikan_wali` varchar(100) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(100) DEFAULT NULL,
  `tinggi_badan` varchar(100) DEFAULT NULL,
  `berat_badan` varchar(100) DEFAULT NULL,
  `jarak_tempat_tinggal` varchar(50) DEFAULT NULL,
  `waktu_tempuh_kesekolah` varchar(50) DEFAULT NULL,
  `jumlah_saudara_kandung` varchar(3) DEFAULT NULL,
  `jenis_pendaftaran` varchar(100) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `tgl_masuk_sekolah` date DEFAULT NULL,
  `asal_sekolah` varchar(200) DEFAULT NULL,
  `nomor_peserta_ujian` varchar(50) DEFAULT NULL,
  `nomor_seri_ijazah` varchar(50) DEFAULT NULL,
  `keluar_karena` varchar(200) DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `no_induk`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_keberapa`, `nomor_kip`, `nama_kip`, `lintang`, `bujur`, `nomor_kks`, `nomor_kps_pkh`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh_kesekolah`, `jumlah_saudara_kandung`, `jenis_pendaftaran`, `nis`, `tgl_masuk_sekolah`, `asal_sekolah`, `nomor_peserta_ujian`, `nomor_seri_ijazah`, `keluar_karena`, `tanggal_keluar`, `alasan_keluar`) VALUES
(148, 'PPDB20210042Spesial', '082232729300', 'MEITYAS ANGGRAENI', NULL, 'Perempuan', NULL, '', '3510016707070001', '351001220409009', 'BANYUWANGI', '2021-10-27', NULL, NULL, NULL, NULL, '02', '082232729300', '01', 'Mulyoasri', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Umum', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Nyoto', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, 'Lasmini', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, 'Nyoto', '082232729300', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(154, 'PPDB20210001Spesial', '081252503931', 'Deva Dwi Marta Dinata', NULL, 'Laki-laki', NULL, '', '3510014903070005', '3510011309120016', 'BANYUWANGI', '2007-03-09', NULL, 'Islam', 'INDONESIA', NULL, '07', '081252503931', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'GUNAWAN', '0', '3510010105700007', '1970-05-01', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SITI MUTMAINAH', '0', '3510015902860005', '1986-02-19', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(155, 'PPDB20210023Spesial', '082257023581', 'ALFAN JULIARDI', NULL, 'Laki-laki', NULL, '', '3510010606060003', '3510012711170007', 'BANYUWANGI', '2006-06-06', NULL, 'Islam', 'Indonesia', NULL, '1', '082257023581', '1', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Jalan Kaki', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'TRIMO WIBISONO', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'WATINI', '082264447648', '3510015003680004', '1968-03-10', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(156, 'PPDB20210024Spesial', '085784199130', 'VIKA KHURIL NGAINI', NULL, 'Perempuan', NULL, '', '3510014103070003', '3510011402190002', 'BANYUWANGI', '2007-03-01', NULL, 'Islam', 'Indonesia', NULL, '5', '085784199130', '2', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'IMAM RIFAI', '8613128425890', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'ERNAWATI', '0', '3510016603850003', '1985-03-26', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(157, 'PPDB20210025Spesial', '081238178171', 'Putri Ida Nurjanah', NULL, 'Perempuan', NULL, '', '3510016108050003', '3510010107100053', 'BANYUWANGI', '2005-08-21', NULL, 'Islam', 'Indonesia', 'silirbaru ', '2', '081238178171', '4', 'SILIRBARU', 'SILIRBARU', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUROTO', '0', '3510011002650003', '0000-00-00', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'WIJIYANTI', '0', '3510010703730020', '1973-03-07', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(158, 'PPDB20210027Spesial', '085855205475', 'DELALIYA SAPITRI', NULL, 'Perempuan', NULL, '', '3510014612050006', '3510010310053843', 'BANYUWANGI', '2005-12-06', NULL, 'Islam', 'Indonesia', NULL, '7', '085855205475', '1', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKADI', '0', '3510013006540030', '1954-06-30', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SUTI\'AH', '0', '3510017006720036', '1972-06-30', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(159, 'PPDB20210028Spesial', '085219583259', 'JAVIER ORRIZA STARONE', NULL, 'Laki-laki', '0075267776', '', '3510012104070004', '3510012606140003', 'BANYUWANGI', '2007-04-21', NULL, 'Islam', 'INDONESIA', 'SILIRBARU 007/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '007', '085219583259', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MAROJI', '085219583259', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'SRI LESTARI', '085219583259', '3510014308830004', '1983-04-04', NULL, 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(160, 'PPDB20210029Spesial', '085855313527', 'RICO NUR AHMAD FADILAH', NULL, 'Laki-laki', NULL, '', '3510012807070002', '3510010910080003', 'BANYUWANGI', '2007-07-28', NULL, 'Islam', 'INDONESIA', NULL, '07', '085855313527', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MUSTAKIM', '0', '3510010806750002', '1975-06-08', 'SMA Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SUGIYATI', '0', '3510017009780002', '1978-09-30', 'SMA Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(161, 'PPDB20210032Spesial', '082110755867', 'Nia Marshella Aurelia Putri', NULL, 'Perempuan', NULL, '', '3510014903070004', '3510010410052952', 'BANYUWANGI', '2007-03-09', NULL, 'Budha', 'INDONESIA', 'DUSUN SILIRBARU - KALIULUH, RT 3 RW 2, DESA SUMBERAGUNG, KEC. PESANGGARAN', '03 ', '082110755867', '02', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TRI WINARTO', '082335747263', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'PAINI', '082335747263', NULL, '0000-00-00', NULL, 'Wirausaha', NULL, 'SELO', '082335747263', '3510010204560002', '1956-04-02', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', '152', '54', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(162, 'PPDB20210033Spesial', '082122751652', 'Aprilia Dwi Lestari', NULL, 'Perempuan', NULL, '', '3510016005060005', '3510011003090014', 'BANYUWANGI', '2006-04-16', NULL, 'Islam', 'INDONESIA', NULL, '01', '082122751652', '03', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MISNO HADI', '0', '3510011503680006', '1968-03-15', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'DARTIK', '0', '3510014101760020', '1976-01-01', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(163, 'PPDB20210034Spesial', '085335069459', 'CINTA YUNIANTIKA', NULL, 'Perempuan', NULL, '', '3509184906070001', '3510010206100092', 'Jember', '2007-06-15', NULL, 'Islam', NULL, NULL, '02', '085335069459', '01', 'Ringinmulyo', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ANWAR', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'Yuliatin', '085204599781', '35100155047900001', '1979-04-15', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NU AL ISLAMI', NULL, NULL, NULL, NULL, NULL),
(164, 'PPDB20210035Spesial', '082333250947', 'DIAN PAIRUS SANURITA', NULL, 'Perempuan', '0067756351', '', '3510015106060002', '3510012108080019', 'BANYUWANGI', '2006-06-11', NULL, 'Islam', 'INDONESIA', 'DUSUN SUMBERDADI RT 03 RW 2 DESA KANDANGAN, KEC. PESANGGARAN', '03', '082333250947', '02', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MISWAN', '081336806083', '3510011902700002', '1970-02-19', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SARMIATI', '085330224360', '3510014701780002', '1978-01-07', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '160', '43', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(165, 'PPDB20210036Spesial', '081805613412', 'ALVINA DWI ANGGRAINI', NULL, 'Perempuan', NULL, '', '3510015512060002', '3510010212090001', 'BANYUWANGI', '2006-12-15', NULL, 'Islam', 'INDONESIA', 'DUSUN KRAJAN RT 3 RW 2 DESA KANDANGAN, KEC. PESANGGARAN ', '03 ', '081805613412', '02', 'KRAJAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'ATIM', '082244778885', '3513510011001690005', '1969-01-10', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'MISINI', '082244778885', '3510014408790004', '1979-08-04', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '150', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(166, 'PPDB20210037Spesial', '085755299035', 'LIYA SILVIANA ', NULL, 'Perempuan', NULL, '', '3510014807060001', '3510010410052259', 'BANYUWANGI', '2006-07-08', NULL, 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '085755299035', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIONO', '085755299035', '3510010506790001', '1978-06-05', 'SD Sederajat', 'Petani', NULL, 'TATIK SUMARSIH', '085755299035', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(167, 'PPDB20210040Spesial', '082143401376', 'MARSELA DISTIKARANI', NULL, 'Perempuan', NULL, '', '3510015503050004', '3510010510057084', 'BANYUWANGI', '2005-03-15', NULL, 'Islam', 'INDONESIA', NULL, '05', '082143401376', '01', 'Tembakur', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'KATIRIN', '0', '3510011604680005', '1968-04-16', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SUHARTATI', '0', '3510014101710004', '1971-01-01', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085336201711', NULL, '0000-00-00', NULL, NULL, NULL, '145', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(168, 'PPDB20210043Spesial', '085236007658', 'AYU KARTIKA RAHAYU', NULL, 'Perempuan', NULL, '', '3510014909070002', '3510010405080019', 'BANYUWANGI', '2007-09-09', NULL, 'Hindu', 'Indonesia', NULL, '05', '085236007658', '2', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'KARSONO', '0', '3510013010740002', '1974-10-30', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SIH SUKARTI', '0', '3510014102880004', '1988-02-01', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085231042266', NULL, '0000-00-00', NULL, NULL, NULL, '151', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(169, 'PPDB20210044Spesial', '085231042236', 'AMEL APRILIA TRI RATNA SARI', NULL, 'Perempuan', NULL, '', '3510015604070004', '3510011101190004', NULL, '2007-04-16', NULL, 'Islam', 'INDONESIA', NULL, '06', '085231042236', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYOSO', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'FATIMAH', '0', '3510016611710001', '1971-11-26', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085211556815', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(170, 'PPDB20210046Spesial', '083853352566', 'ANDIKA PANDU RAMADANI', NULL, 'Laki-laki', NULL, '', '3510010710060003', '31001230510022', 'BANYUWANGI', '2006-10-07', NULL, 'Islam', 'INDONESIA', NULL, '4', '083853352566', '4', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SELAMET BUDI UTOMO', NULL, NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'HENI PATMASARI', NULL, NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'SELAMET BUDI UTOMO', '083853352566', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(171, 'PPDB20210047Spesial', '12345678', 'MUHAMAD RADIKA', NULL, 'Laki-laki', NULL, '', '3510012604070001', '3510012011090010', 'BANYUWANGI', '2007-04-26', NULL, 'Islam', NULL, NULL, '1', '12345678', '2', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUYANTO', NULL, NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'EVA NURUL HIDAYANI', NULL, NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '12345678', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(172, 'PPDB202201821', '082233104199', 'ERIKA DEWI LESTARI', NULL, 'Perempuan', NULL, '', '0', '0', 'BANYUWANGI', '2007-05-12', NULL, 'Islam', 'INDONESIA', 'SUMBERSUKO, KESILIR, SILIRAGUNG, BANYUWANGI', NULL, '082233104199', NULL, 'SUMBERSUKO', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'WIJIYANTO', '081248835798', '0', '0000-00-00', NULL, 'Petani', NULL, 'RUDIASIH', '081248835798', '0', '0000-00-00', NULL, ' Lain-lain', NULL, NULL, '081248835798', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(173, 'PPDB20210049Spesial', '081246551498', 'REVALDO SIL VERI PRATAMA', NULL, 'Laki-laki', NULL, '', '3510012609060005', '3510012101110037', 'BANYUWANGI', '2006-09-26', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 003/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '003', '081246551498', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MISMAN', '082257023711', '3510010910820008', '1982-10-09', 'SD Sederajat', 'Wiraswasta', NULL, 'SRI WAHYUNI', '082257023711', '3510014908880004', '1988-08-09', 'SD Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(174, 'PPDB20210050Spesial', '083151475853', 'NUR WITA CHUSNUL CHOTIMAH', NULL, 'Perempuan', NULL, '', '3510014103070005', '3510012906090107', 'BANYUWANGI', '2007-03-02', NULL, 'Islam', 'INDONESIA', 'PANCER 007/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '007', '083151475853', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TRI SUNARTO', '081286889045', '3510010411540001', '1954-11-04', 'SMA Sederajat', 'Petani', NULL, 'SITI JUWARIYAH', '081286889045', '3510015306720003', '1972-06-13', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(175, 'PPDB20210051Spesial', '085234089135', 'REVA LUXIANA', NULL, 'Perempuan', NULL, '', '3510016003070003', '3510010110090035', 'BANYUWANGI', '2007-03-20', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 003/007, PESANGGARAN, BANYUWANGI', '003', '085234089135', '007', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'NASIMAN', '082132558405', '3510012609820005', '1982-09-26', 'SMP Sederajat', 'Wiraswasta', NULL, 'IKA ROHANIATI', '082132558405', '3510014301880003', '1988-03-01', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(176, 'PPDB20210052Spesial', '085755339657', 'OKTAVIA RAMADHANI', NULL, 'Perempuan', NULL, '', '3510015011080001', '3510012907090062', 'BANYUWANGI', '2008-10-11', NULL, 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '085755339657', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'BUNANGIN', '0', '3510010903640001', '1964-03-09', 'SD Sederajat', 'Petani', NULL, 'RAPIAH', '0', '3510014908710002', '1971-08-09', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(177, 'PPDB20210054Spesial', '085955219141', 'DELA MEI ULANDARI', NULL, 'Perempuan', NULL, '', '3510015605040001', '3510013103090019', 'BANYUWANGI', '2004-05-16', NULL, 'Islam', 'INDONESIA', 'SILIRBARU', '002', '085955219141', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYONO', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'HALIMAH ', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(178, 'PPDB20210055Spesial', '085311588143', 'REZA YUDA PERMANA ', NULL, 'Laki-laki', NULL, '', '3510010302070001', '3510012003100054', 'BANYUWANGI', '2007-02-03', NULL, 'Islam', 'INDONESIA', 'KRAJAN 003/004, PESANGGARAN, PESANGGARAN, BANYUWANGI', '003', '085311588143', '004', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'ADI SURIPNO', '085311588143', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'MISNATI', '085311588143', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '085311588143', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(179, 'PPDB20210058Spesial', '082338664633', 'VIANDRA BHARGO PRATAMA', NULL, 'Laki-laki', NULL, '', '3510012012070002', '3510011703080016', 'BANYUWANGI', '2006-12-20', NULL, 'Hindu', 'INDONESIA', 'RINGINAGUNG 002/004, PESANGGARAN, BANYUWANGI', '002', '082338664633', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUPARMAN', '085236899083', NULL, '0000-00-00', NULL, 'Petani', NULL, 'SUWANTI', '085236899083', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(180, 'PPDB20210059Spesial', '083834621973', 'DWI NADA RAMADHANI', NULL, 'Perempuan', NULL, '', '3510010710060001', '3510010102210001', 'BANYUWANGI', '2006-10-07', NULL, 'Islam', 'INDONESIA', 'KRAJAN 002/003, PESANGGARAN, BANYUWANGI', '002', '083834621973', '003', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIYATNO', '082316268587', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, 'HUMAIDA', '082316268587', '3510015307690001', '1969-07-13', 'SMP Sederajat', 'Buruh', NULL, NULL, '082316268587', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(181, 'PPDB20210060Spesial', '085236906071', 'MOHKAMAT RADIT SETIAWAN', NULL, 'Laki-laki', NULL, '', '3510012905050004', '3510012607090023', 'BANYUWANGI', '2005-05-31', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 003/005, PESANGGARAN, BANYUWANGI', '003', '085236906071', '005', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUDIRO', '0', '3510010907610001', '1961-07-09', 'SD Sederajat', 'Petani', NULL, 'SULIATI', '0', '3510014704720004', '1972-04-07', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(182, 'PPDB20210061Spesial', '083873222287', 'HUSNUL YAKIN', NULL, 'Laki-laki', NULL, '', '7601091703070001', '7601092712160004', 'PEDANDA II, MAMUJU UTARA', '2007-03-17', NULL, 'Islam', 'INDONESIA', 'RINGINSARI 002/001, PESANGGARAN, BANYUWANGI', '002', '083873222287', '001', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, 'SUJIATI', '0', '7601095209750001', '1975-09-12', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(183, 'PPDB20210062Spesial', '083833701966', 'DINA AGUSTIN', NULL, 'Perempuan', NULL, '', '3510017107060001', '3510010310055303', 'BANYUWANGI', '2006-07-31', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 001/003, PESANGGARAN, BANYUWANGI', '001', '083833701966', '003', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUNYOTO', '081289828701', '3510010503650006', '1965-03-05', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'WAGINI', '081289828701', '3510014308720005', '0000-00-00', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '081289828701', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(184, 'PPDB20210064Spesial', '081217685739', 'SERA JUANA IFE', NULL, 'Perempuan', NULL, '', '3510015207060002', '3510012309080009', 'BANYUWANGI', '2006-07-11', NULL, 'Islam', 'INDONESIA', NULL, '6', '081217685739', '2', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WAGINI', NULL, NULL, '0000-00-00', NULL, 'Nelayan', NULL, 'BOINEM', NULL, NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(185, 'PPDB20210065Spesial', '12345678', 'ANISA MILANDANI', NULL, 'Perempuan', NULL, '', '3510014510060002', '3510010611080034', 'BANYUWANGI', '2006-10-05', NULL, 'Hindu', 'INDONESIA', 'RINGINAGUNG 003/004, PESANGGARAN, PESANGGARAN, BANYUWANGI', '003', '12345678', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'BEJO', '0', '3510010110400001', '1940-10-01', 'Putus SD', 'Petani', NULL, 'RASIYEM', '0', '3510015010500007', '1950-10-10', 'Putus SD', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(186, 'PPDB20210066Spesial', '12345678', 'JONA RISKI ADI', NULL, 'Laki-laki', NULL, '', '3510220707050005', '3510220104100210', 'BANYUWANGI', '2005-07-07', NULL, 'Hindu', 'INDONESIA', 'PECEMENGAN 005/001, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '005', '12345678', '001', 'PECEMENGAN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'KASIADI', '0', '3510220505690008', '1969-05-05', 'SMA Sederajat', 'Wiraswasta', NULL, 'MISILAH', '0', '3510224512800002', '1980-12-05', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(187, 'PPDB20210067Spesial', '082232031021', 'JOVI GEBRILLIO', NULL, 'Laki-laki', NULL, '', '3510012411050001', '3510011007100035', 'BANYUWANGI', '2005-11-24', NULL, NULL, 'INDONESIA', 'KRAJAN 002/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '082232031021', '002', 'KRAJAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'DIDIK HARIYANTO', '08242415767', '3510010704820005', '1983-04-17', 'SMP Sederajat', 'Karyawan Swasta', NULL, 'SULIYAH', '6581541372', '3510016804820004', '1982-04-28', 'SMP Sederajat', 'Karyawan Swasta', NULL, NULL, '08242415767', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(188, 'PPDB20210068Spesial', '083857873826', 'FANDRO DANIEL DUWI FALENTINO', NULL, 'Laki-laki', NULL, '', '3510012060001', '3510010410053339', 'BANYUWANGI', '2006-02-06', NULL, 'Kristen/Protestan', 'INDONESIA', 'RINGINAGUNG 002/001, PESANGGARAN, BANYUWANGI', '002', '083857873826', '001', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'TWIYANTO', '081233106608', '3510011012690010', '1969-12-10', 'SMP Sederajat', 'Wiraswasta', NULL, 'SUMARTI ANYIPTANI', '081233106608', '3510015811720004', '1972-11-18', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '081233106608', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(189, 'PPDB20210069Spesial', '085895831483', 'EKA REVA LIANA', NULL, 'Perempuan', NULL, '', '3510014402070002', '3510012006110005', 'BANYUWANGI', '2007-02-04', NULL, 'Islam', 'INDONESIA', 'MULYOSARI 003/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '003', '085895831483', '001', 'MULYOSARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIJO', '085204611260', '3510010805780008', '1976-05-08', 'SD Sederajat', 'Wiraswasta', NULL, 'LAMINI YUNIARTI', '085204611260', '3510015203810013', '1981-03-12', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '085204611260', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(190, 'PPDB20210070Spesial', '082228104197', 'RIANTI PUSPITA SARI', NULL, 'Perempuan', NULL, '', '3510014809060003', '3510011706080012', 'BANYUWANGI', '2006-09-08', NULL, 'Islam', 'INDONESIA', 'PANCER 005/002', '005', '082228104197', '002', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUDIONO', '085796709675', '3510010903510001', '1951-03-09', 'SD Sederajat', 'Wiraswasta', NULL, 'MESINAH', '085796709675', '3510014902540002', '1954-02-09', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '085796709675', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(191, 'PPDB20210071Spesial', '081238829913', 'NOVITA MAYA RANI', NULL, 'Perempuan', NULL, '', '3510014211060002', '3510012006100031', 'BANYUWANGI', '2006-11-02', NULL, 'Islam', 'INDONESIA', 'REJOAGUNG 004/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '004', '081238829913', '001', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'JANI PRANOTO', '081238829913', '3510011704780003', '1978-04-17', 'SMP Sederajat', 'Petani', NULL, 'SULASTRI', '081238829913', '3510014606810003', '1981-06-06', 'SD Sederajat', 'Petani', NULL, NULL, '081238829913', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(192, 'PPDB20210072Spesial', '082235453401', 'PAUL MAHENDRA', NULL, 'Laki-laki', NULL, '', '3510011505060003', '3510011606090057', 'BANYUWANGI', '2006-05-15', NULL, 'Hindu', 'INDONESIA', 'TEMBAKUR 001/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '001', '082235453401', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'KUSENO', '082143116559', '3510010304500004', '1950-04-03', 'SD Sederajat', 'Petani', NULL, 'SUMINI', '082143116559', '3510014810680002', '1968-10-08', 'SD Sederajat', 'Petani', NULL, NULL, '082143116559', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(193, 'PPDB20210073', '081230424016', 'Rio Krisna Widhiyanto', NULL, 'Laki-laki', NULL, '', '3510020610060002', '3510012608200007', 'Banyuwangi', '2006-10-06', NULL, 'Hindu', 'Indonesia', NULL, '2', '081230424016', '2', 'Tembakur', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'AGUS SUCIPTO', '0', '3510022408840003', '1984-08-24', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'Iis Gianti', '0', '3510016607880001', '1988-06-27', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '082143116559', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(194, 'PPDB20210074Spesial', '082231422579', 'ARINTA PUTRI WINASARI', NULL, 'Perempuan', NULL, '', '3510225702070002', '3510220101100140', 'BANYUWANGI', '2007-02-17', NULL, 'Hindu', 'INDONESIA', NULL, '05', '082231422579', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SARBINI', '0', '3510012407760001', '1976-07-24', 'SMA Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'TRI WININGSIH', '0', '3510226110840004', '1984-10-21', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '081336257705', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(195, 'PPDB20210075Spesial', '081332096727', 'DWI KARMELIANA PUTRI', NULL, 'Perempuan', NULL, '', '3510226907060001', '3510010410058737', 'BANYUWANGI', '2006-07-29', NULL, 'Hindu', 'INDONESIA', NULL, '04', '081332096727', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MISMAN SUNANDRI', '0', '3510222606620003', '1962-06-26', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SUPREHATIN', '0', '3510224106760003', '1976-06-01', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085231470350', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(196, 'PPDB20210076Spesial', '085336315503', 'ZACKY DWI PRAYOGA', NULL, 'Laki-laki', NULL, '', '351002510060001', '3510020710050032', 'BANYUWANGI', '2006-09-25', NULL, 'Islam', 'INDONESIA', NULL, '04', '085336315503', '03', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKIR', '0', '3510021211650001', '1968-09-12', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SITI ASIYAH', '0', '3510024107680011', '1968-03-15', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '082139575423', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(197, 'PPDB20210077Spesial', '081332059954', 'FERDI YOGA ARDIYANSYAH', NULL, 'Laki-laki', NULL, '', '3510221802070002', '351022270050042', 'BANYUWANGI', '2007-02-18', NULL, 'Hindu', 'INDONESIA', NULL, '04', '081332059954', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'YOGIMIN', '0', '3510222208790002', '1979-08-22', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SRININGSIH', '0', '3510224701820004', '1982-01-07', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '082335589059', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(198, 'PPDB20210078Spesial', '081252822703', 'JENISA CINDY PERMANA', NULL, 'Perempuan', NULL, '', '35100982927', '3510222811100001', 'BANYUWANGI', '2007-06-15', NULL, 'Kristen/Protestan', 'INDONESIA', NULL, '01', '081252822703', '01', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASEP PERMANA YUDA', '0', NULL, '0000-00-00', NULL, 'Petani', 'Kurang dari Rp 500.000', 'DIANA TRI WAHYUNI', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '081330772725', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(199, 'PPDB20210079Spesial', '082335283010', 'DIVA YOGA PRATAMA', NULL, 'Laki-laki', NULL, '', '3510220205060001', '3510221806090015', 'BANYUWANGI', '2006-05-02', NULL, 'Kristen/Protestan', 'INDONESIA', NULL, '03', '082335283010', '02', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SIH PAMERDI', '0', '3510221606820003', '1982-08-16', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'ISTIARI', '0', '3510226908880003', '1988-08-29', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082335690671', NULL, '0000-00-00', NULL, NULL, NULL, '154', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(200, 'PPDB20210080Spesial', '081218032778', 'NOVIA SOFIATUL FITRI', NULL, 'Perempuan', NULL, '', '3510015011060001', '3510010512160004', 'BANYUWANGI', '2006-11-10', NULL, 'Islam', 'INDONESIA', NULL, '02', '081218032778', '01', 'SUNGAI LEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIANTO', '085232962574', '3510010404800003', '1980-04-04', NULL, 'Buruh', NULL, 'SRI YUNIATI', '085232962574', '6503134906810001', '1981-06-09', NULL, 'Tidak bekerja', NULL, NULL, '085232962574', NULL, '0000-00-00', NULL, NULL, NULL, '165', '57', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(201, 'PPDB20210081Spesial', '082132689541', 'AELA FINA YUSNAIDA', NULL, 'Perempuan', NULL, '', '3510015010060002', '3510010410051915', 'BANYUWANGI', '2006-10-10', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 005/004, PESANGGARAN, BANYUWANGI', '005', '082132689541', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'PINTONO', '0', '3510011306680003', '1968-06-13', 'SD Sederajat', 'Petani', NULL, 'PONIYEM', '0', '3510015101740002', '1974-01-11', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '160', '46', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(202, 'PPDB20210082Spesial', '081231136752', 'SELA DWI FEBRIANI', NULL, 'Perempuan', NULL, '', '3510015702060002', '3510010201100086', 'Banyuwangi ', '2006-02-17', NULL, 'Islam', 'INDONESIA', 'Sumberdadi Kandangan ', '001', '081231136752', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'RIYANTO', '082244771510', '3510010506720006', '1972-06-05', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'MUJIATI', '082244771510', '3510015210780003', '1978-10-12', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082244771510', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(203, 'PPDB20210083Spesial', '081236809042', 'SINTA AYU FIRNANDA', NULL, 'Perempuan', NULL, '', '3510015012060001', '3510010404090011', 'Banyuwangi', '2006-12-10', NULL, 'Islam', 'INDONESIA', 'Sumberdadi kandangan', '001', '081236809042', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Sasmito ragil saputro', '081252807577', '3510012908750001', '1975-08-29', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'Endang suliati', '081252807577', '3510016807780002', '1978-07-28', 'SD Sederajat', ' Lain-lain', 'Rp 500.000 - Rp 999.9999', NULL, '081252807577', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(204, 'PPDB20210085Spesial', '081235254558', 'REZA DWI TIRTA ANDARIANI', NULL, 'Perempuan', NULL, '', '3510016402070002', '3510011506059867', 'BANYUWANGI', '2007-02-24', NULL, 'Hindu', 'INDONESIA', NULL, '03', '081235254558', '01', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUMIRAN', '0', '3510010604690013', '1969-04-06', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SUMARMI', '0', '3510014806710004', '1971-06-08', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '150', '45', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(205, 'PPDB20210086Spesial', '081358303911', 'MUHAMAD HABIBI ROMADON', NULL, 'Laki-laki', NULL, '', '3510011310080002', '3510010309090045', 'BANYUWANGI', '2006-10-13', NULL, 'Islam', 'INDONESIA', 'TEMBAKUR 002/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '002', '081358303911', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUBANDI', '0', '3510011706630002', '1963-06-17', 'SMA Sederajat', 'Petani', NULL, 'MUJINAH', '0', '3510015501750004', '1975-01-15', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(206, 'PPDB20210087Spesial', '082334351923', 'KINGKY HANDIKA DARMA KUSUMA', NULL, 'Laki-laki', NULL, '', '3510012208070006', '3510011204090001', 'BANYUWANGI', '2007-08-22', NULL, 'Islam', 'INDONESIA', 'TEMBAKUR 001/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '001', '082334351923', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'WIJIONO', '0', '3510010803820003', '1982-08-03', 'SMA Sederajat', 'Wiraswasta', NULL, 'KASIANI', '0', '3510014612810004', '1981-08-22', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(207, 'PPDB20210088Spesial', '081234840474', 'SHESILIA CHESYA NEZALUNA', NULL, 'Perempuan', NULL, '', '3510015604070003', '3510010402080016', 'BANYUWANGI', '2007-04-16', NULL, 'Islam', 'INDONESIA', 'SUNGAI LEMBU 001/002, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '081234840474', '002', 'SUNGAI LEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'FERIK ANTON SETIAWAN', '0', '3510010101880010', '1988-01-01', 'SMA Sederajat', 'Wiraswasta', NULL, 'TRI NURCAHYANI', '0', '3510016504880002', '1988-04-25', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(208, 'PPDB20210090Spesial', '081515554595', 'DIMAS ANGGARA', NULL, 'Laki-laki', NULL, '', '3510072112060001', '3510070512080001', 'BANYUWANGI', '2006-12-21', NULL, 'Budha', 'INDONESIA', 'RINGINAGUNG 003/006, PESANGGARAN, BANYUWANGI', '003', '081515554595', '006', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SAMIRAN', '0', '3510072504570002', '1957-04-25', 'SD Sederajat', 'Petani', NULL, 'RUBIYEM', '0', '3510074304700003', '1970-04-03', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(209, 'PPDB20210091Spesial', '0881036097079', 'NANDA ABELIA', NULL, NULL, NULL, '', '3510016006070002', '3510010203090098', 'BANYUWANGI', '2007-06-20', NULL, 'Islam', 'INDONESIA', NULL, '02', '0881036097079', '06', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TUGI', '0', '3510012211730002', '1973-11-22', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SITI ALVIYAH', '0', '3510016006070002', '1986-08-20', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '085330852806', NULL, '0000-00-00', NULL, NULL, NULL, '150', '38', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(210, 'PPDB20210092Spesial', '081335530351', 'NOVERO EGA PRATAMA', NULL, 'Laki-laki', NULL, '', '3510010211060001', '3510012802090010', 'BANYUWANGI', '2006-11-02', NULL, 'Islam', 'INDONESIA', NULL, '02', '081335530351', '02', 'SUNGAILEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SAIFUL BAHRI', '0', '3510011010830008', '1983-10-10', 'SMP Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', 'DYAH DAMAYANTI', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '085336369103', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(211, 'PPDB20210093Spesial', '082234177432', 'DANI KURNIAWAN', NULL, 'Laki-laki', NULL, '', '3510010801070004', '3510011506090039', 'BANYUWANGI', '2007-01-08', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 001/001, KANDANGAN, PESANGGARAN, BANYUWANGI', '001', '082234177432', '001', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUTIKNO', '085330669815', '3510013001710008', '0000-00-00', 'SMA Sederajat', 'Petani', NULL, 'WIWIK HANDAYANI', '085330669815', '3510018112800002', '0000-00-00', 'SMP Sederajat', 'Petani', NULL, NULL, '085330669815', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(212, 'PPDB20210094Spesial', '082362503206', 'CANDRA KIRANA', NULL, 'Laki-laki', NULL, '', '1609120405070004', '1609121501130006', 'SUMBERJAYA', '2008-08-25', NULL, 'Islam', 'INDONESIA', 'SUNGAI LEMBU, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', NULL, '082362503206', NULL, 'SUNGAILEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'HARUN', '082337217032', NULL, '0000-00-00', NULL, 'Petani', NULL, 'LEGIYEM', '082337217032', '1609124502570001', '1957-02-05', 'SD Sederajat', 'Petani', NULL, NULL, '082337217032', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(213, 'PPDB20210095Spesial', '082228651093', 'ANDIKA DWI PRASTYO', NULL, 'Laki-laki', NULL, '', '3510222809060006', '351001051074', 'BANYUWANGI', '0000-00-00', NULL, 'Hindu', 'INDONESIA', NULL, '01', '082228651093', '13', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYANTO', '0', '3510223007750003', '1975-07-30', 'SD Sederajat', 'Pedagang Kecil', 'Kurang dari Rp 500.000', 'RIGANTI', '0', '3510225302820001', '1982-02-13', 'SMP Sederajat', 'Pedagang Kecil', 'Kurang dari Rp 500.000', NULL, '081234656054', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(214, 'PPDB20210096Spesial', '082141389528', 'ADITYA TRI ARSANA ', NULL, 'Laki-laki', NULL, '', '3510222203060004', '3510222101090016', 'BANYUWANGI', '2006-03-22', NULL, 'Islam', 'INDONESIA', NULL, '06', '082141389528', '01', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUTRISNO', '0', '3510220906740004', '1974-06-09', 'SMP Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', 'SUWARNI DWI A ', '0', '3510225603760001', '1976-03-16', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '082330527363', NULL, '0000-00-00', NULL, NULL, NULL, '158', '55', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(215, 'PPDB20210097Spesial', '082310132603', 'WISNU HENDRIKA PUTRA', NULL, 'Laki-laki', NULL, '', '3510221301070001', '3510220810090063', 'BANYUWANGI', '2007-01-13', NULL, 'Hindu', 'INDONESIA', NULL, '11', '082310132603', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SAERAN', '0', '3510220908730003', '1973-08-09', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'YUYUN', '0', '3510225109800005', '1980-09-11', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '081249261599', NULL, '0000-00-00', NULL, NULL, NULL, '165', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(216, 'PPDB20210098Spesial', '085607173464', 'DIO DWI RENGGA PRASETYO', NULL, 'Laki-laki', NULL, '', '3510221906070001', '3510221006090079', 'BANYUWANGI', '2007-06-10', NULL, 'Islam', 'INDONESIA', NULL, '03', '085607173464', '06', 'SUMBERSUKO', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGITO', '0', '3510221706730002', '1973-07-18', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SUPIYATI', '0', '3510225107820004', '1962-07-11', 'SMA Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '082332606590', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(217, 'PPDB202202201', '082337133140', 'JESSICA PUTRI MEILIA', NULL, 'Perempuan', NULL, '', '3510225105060005', '3510221801120005', 'BANYUWANGI', '2006-05-11', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 005/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '005', '082337133140', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIANTO', '081288364733', '3510220901700005', '1970-01-09', 'SMA Sederajat', 'Wiraswasta', NULL, 'SISWATI', '081288364733', '3510226609860005', '1986-09-26', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, '081288364733', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_siswa` (`id`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `no_induk`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_keberapa`, `nomor_kip`, `nama_kip`, `lintang`, `bujur`, `nomor_kks`, `nomor_kps_pkh`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh_kesekolah`, `jumlah_saudara_kandung`, `jenis_pendaftaran`, `nis`, `tgl_masuk_sekolah`, `asal_sekolah`, `nomor_peserta_ujian`, `nomor_seri_ijazah`, `keluar_karena`, `tanggal_keluar`, `alasan_keluar`) VALUES
(218, 'PPDB20210101Spesial', '085237331488', 'MARANATA DEWI ANGGITA', NULL, 'Perempuan', NULL, '', '3510224501070001', '3510221906090080', 'BANYUWANGI', '2007-01-05', NULL, NULL, 'INDONESIA', 'PURWOSARI 003/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '003', '085237331488', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'AGUS HARIYONO', '085231228374', '3510221608740003', '1974-08-16', 'SD Sederajat', 'Petani', NULL, 'FITRIANI', '085231228374', '3510226112840003', '1984-12-21', 'SD Sederajat', 'Petani', NULL, NULL, '085231228374', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(219, 'PPDB20210102Spesial', '082139962853', 'GEA CANDRA WINATA', NULL, 'Perempuan', NULL, '', '3510022551206003', '3510220101100110', 'BANYUWANGI', '2006-12-15', NULL, 'Kristen/Protestan', 'INDONESIA', 'PURWOSARI 003/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '003', '082139962853', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'YUDIK AGUS WINOTO', '085231477042', '3510222108820010', '1982-08-21', 'SMP Sederajat', 'Petani', NULL, 'YULI EKA WATI', '085231477042', '3510224706850003', '1985-06-07', 'SMP Sederajat', 'Petani', NULL, NULL, '085231477042', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(220, 'PPDB20210103Spesial', '085337805922', 'JANUASTA YULAIVA RAHMAN', NULL, 'Perempuan', NULL, '', '3510224901070001', '3510222004110033', 'BANYUWANGI', '2007-01-09', NULL, 'Islam', 'INDONESIA', 'KRAJAN 004/001, SILIRAGUNG, BANYUWANGI', '004', '085337805922', '001', 'KRAJAN', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKARMAN', '085655910182', '3510220805770004', '1977-05-08', 'SMP Sederajat', 'Pedagang Kecil', NULL, 'RAYIN KUSTIN', '085655910182', '3510224112760002', '1976-12-01', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, '085655910182', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(221, 'PPDB20210104Spesial', '085215914586', 'RENIVA SARI', NULL, 'Perempuan', NULL, '', '3510016911060002', '3510010210090011', 'BANYUWANGI', '2006-11-29', NULL, 'Islam', 'INDONESIA', NULL, '03', '085215914586', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TUMIRAN', '0', '3510011910620001', '1962-10-19', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'WATINI', '0', '3510017010720001', '1972-10-30', 'SD Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '082337704732', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(222, 'PPDB20210105Spesial', '082257026495', 'RIZAL KURNIAWAN', NULL, 'Laki-laki', NULL, '', '3510012205070001', '3510012311090098', 'BANYUWANGI', '2007-05-22', NULL, 'Islam', 'INDONESIA', NULL, '02', '082257026495', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'KATIMIN', '0', NULL, '1960-03-01', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'NURYATI', '0', NULL, '1970-05-02', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082257026495', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(223, 'PPDB20210106Spesial', '081234914926', 'DEWI WULANDARI', NULL, 'Perempuan', NULL, '', '3510016905060003', '3510010307090024', 'BANYUWANGI', '2006-05-29', NULL, 'Islam', 'INDONESIA', 'KRAJAN 002/002, PESANGGARAN, PESANGGARAN', '002', '081234914926', '002', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PONIDI SANTOSO', '081234914926', '3510012505690001', '1969-05-25', 'SD Sederajat', 'Wiraswasta', NULL, 'MISRINI', '081234914926', '0', '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '081234914926', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(224, 'PPDB20210107Spesial', '087841658983', 'DIAN DWI HERMAWAN', NULL, 'Laki-laki', NULL, '', '3510022804050005', '3510020610054476', 'BANYUWANGI', '2005-04-28', NULL, 'Islam', 'INDONESIA', 'SUMBERJAMBE 005/004, TEMUREJO, BANGOREJO,BANYUWANGI', '005', '087841658983', '004', 'SUMBERJAMBE', 'TEMUREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KLIMAN', '085204611082', '0', '0000-00-00', NULL, 'Wiraswasta', NULL, 'MESIYAH', '085204611082', '0', '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '085204611082', NULL, '0000-00-00', NULL, NULL, NULL, '165', '85', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(225, 'PPDB20210109Spesial', '085335523925', 'LESTARI NING WAHYU', NULL, 'Perempuan', NULL, '', '351001490406002', '3510010410053050', 'BANYUWANGI', '2006-04-09', NULL, 'Islam', 'INDONESIA', NULL, '01', '085335523925', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'SUWITO', '0', '3510010406660001', '1966-06-04', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SRIAH', '0', NULL, '1978-09-29', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '082334360019', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(226, 'PPDB20210110Spesial', '082114681084', 'GALYZTHA DWI RENATA', NULL, 'Perempuan', NULL, '', '3510014703070003', '3510011112130001', 'BANYUWANGI', '2007-03-07', NULL, 'Islam', 'INDONESIA', NULL, '001', '082114681084', '003', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'PAIDI', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'EVA IKE NOVITASARI', '082114681084', '3510015311840002', '1984-11-13', 'SMA Sederajat', 'Wiraswasta', NULL, NULL, '082114681084', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(227, 'PPDB20210111Spesial', '081238732552', 'ILHAM PRATAMA MILO SEVIC', NULL, 'Laki-laki', NULL, '', '3510012105060003', '3510012112100010', 'BANYUWANGI', '2006-05-21', NULL, 'Islam', 'INDONESIA', NULL, '03', '081238732552', '01', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'EDY SUPRAPTO', '0', '3510010507810006', '1981-07-05', 'SMA Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', 'SRI ASTUTIK', '0', '3510014908850002', '1985-08-09', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '081335717348', NULL, '0000-00-00', NULL, NULL, NULL, '170', '60', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(228, 'PPDB20210112Spesial', '085232990037', 'MIKO HARDIANSYAH', NULL, 'Laki-laki', NULL, '', '3510012503070003', '3510011506090064', 'BANYUWANGI', '2007-03-25', NULL, 'Islam', 'INDONESIA', NULL, '05', '085232990037', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HARIYONO', '0', '3510011508740006', '1974-08-15', 'SD Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', 'SONIA DWI LESTARI', '0', '3510016007810006', '1981-07-20', 'SMP Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', NULL, '085235901706', NULL, '0000-00-00', NULL, NULL, NULL, '170', '52', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(229, 'PPDB20210113Spesial', '081249994338', 'Fauzan Husain Ramadhan', NULL, 'Laki-laki', NULL, '', '3510010110070002', '3510011503170005', 'Banyuwangi', '2007-10-01', '6930008393', 'Islam', 'Indonesia', 'Ringinsari', '04', '081249994338', '03', 'Ringinsari', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUMARDI', '085334840779', '1609090608640001', '1964-08-06', 'SD Sederajat', 'Petani', '1 juta - Rp 1.999.999', 'Suprihatin', NULL, NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'Jefri fajar afandi', '082234933803', '3510011504930004', '1993-04-15', 'SMA Sederajat', 'Wiraswasta', NULL, '160', '45', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(230, 'PPDB20210114Spesial', '085331323911', 'JEFRI PARMANTO', NULL, 'Laki-laki', NULL, '', '3510014404060003', '3510010410053031', 'BANYUWANGI', '2006-04-04', NULL, 'Islam', 'INDONESIA', NULL, '06', '085331323911', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUTOYO', '0', NULL, '1964-11-26', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'NASRIPAH', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(231, 'PPDB20210115Spesial', '081357314411', 'RISQI SASONGKO WIDHI', NULL, 'Laki-laki', NULL, '', '3510016203040002', '3510011008100036', 'BANYUWANGI', '2007-10-06', NULL, 'Islam', 'INDONESIA', NULL, '07', '081357314411', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'MISWANTO', '0', '3510012406660001', '1966-06-24', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'TITIK SUKESI', '0', '3510017112750004', '1975-12-31', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082146147245', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(232, 'PPDB20210116Spesial', '085259790032', 'FIRMAN BAYU ANGGARA', NULL, NULL, NULL, '', '3510010201070002', '3510011306090090', 'BANYUWANGI', '2007-01-02', NULL, 'Islam', 'INDONESIA', NULL, '08', '085259790032', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MAT JUPRI', '0', '3510011506830004', '1983-06-15', 'SMP Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', 'NURUL HOTIMAH', '0', '3510017009890002', '1989-09-30', 'SMP Sederajat', 'Karyawan Swasta', 'Rp 500.000 - Rp 999.9999', NULL, '085259790032', NULL, '0000-00-00', NULL, NULL, NULL, '168', '53', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(233, 'PPDB20210117Spesial', '085336129150', 'ANTONIUS ALDIAN SAPUTRO', NULL, 'Laki-laki', NULL, '', '3510223011050003', '3510220302080009', 'BANYUWANGI', '2005-11-30', NULL, NULL, 'INDONESIA', 'KRAJAN 002/001, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '002', '085336129150', '001', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SASMITO ALSUYITNO', '082310702802', '3510222711790002', '1979-11-27', 'SD Sederajat', 'Petani', NULL, 'EKO JUMIATI', '082310702802', '3510225907840005', '1984-07-19', 'SMP Sederajat', 'Petani', NULL, NULL, '082310702802', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(234, 'PPDB20210118', '082228650996', 'KRISNA BENDI PRADANA', NULL, 'Laki-laki', NULL, '', '3510220503070002', '3510222710100011', 'BANYUWANGI', '2007-03-05', NULL, 'Hindu', NULL, NULL, '12', '082228650996', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SURYONO', '082139658477', '3510220204800006', '1980-04-21', 'SD Sederajat', 'Wiraswasta', NULL, 'MARTINEM', '082139658477', '3510227108860003', '1986-08-31', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '082139658477', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(235, 'PPDB20210119Spesial', '082143151179', 'LUNA MAYU', NULL, 'Perempuan', NULL, '', '3510016706060003', '3510010107090036', 'BANYUWANGI', '2006-06-27', NULL, 'Islam', 'INDONESIA', NULL, '03', '082143151179', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MOHAMAD ALI', '0', '3510010709820003', '1982-09-07', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'MAI SAROH', '0', '3510014107870018', '1987-07-04', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '081331244114', NULL, '0000-00-00', NULL, NULL, NULL, '148', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(236, 'PPDB20210121Spesial', '083830030224', 'DARMASANTI', NULL, 'Perempuan', NULL, '', '3510225211040002', '3510220210180001', 'BANYUWANGI', '2004-05-15', NULL, 'Hindu', 'INDONESIA', 'SENEPOSARI 002/009, BARUREJO, SILIRAGUNG', '002', '083830030224', '009', 'SENEPOSARI', 'BARUREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'JUMARI', '0886968874769', '1808042508620002', '1962-08-25', 'Putus SD', 'Petani', NULL, 'WAGINAH', '0886968874769', '3510224102680009', '1968-02-11', 'SD Sederajat', 'Petani', NULL, NULL, '0886968874769', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(237, 'PPDB20210123Spesial', '087775155608', 'ANDI RAMADANI', NULL, 'Laki-laki', NULL, '', '3510010710060002', '3510010507090037', 'BANYUWANGI', '2006-10-07', NULL, 'Islam', 'INDONESIA', NULL, '07', '087775155608', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HADI PRANOTO', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'IIN KURNIAWATI', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '165', '55', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(238, 'PPDB20210124Spesial', '085807279758', 'DENIS TEGUH FIRMANSYAH', NULL, 'Laki-laki', NULL, '', '3510013003070002', '3510011408080003', 'BANYUWANGI', '2007-03-30', NULL, 'Islam', NULL, NULL, '04', '085807279758', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIYANTO', '0', '3510011001810003', '1980-11-30', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'HENIK YULIATIN', '0', '3510014306840004', '1984-11-03', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(239, 'PPDB20210125Spesial', '082111024558', 'ADHITYA RIZKI PRAMONO', NULL, 'Laki-laki', NULL, '', '3510221708070002', '3510220801080011', 'BANYUWANGI', '2007-08-17', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 012/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '012', '082111024558', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIE YUDHA PRAMIARTO', '0', '3510220704800002', '1980-04-07', 'SMA Sederajat', 'Petani', NULL, 'MARGARETHA SULIKAH', '0', '3510224507830003', '1983-07-05', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(240, 'PPDB20210126Spesial', '082132396594', 'SHINDI DWI NOVIANTI', NULL, 'Perempuan', NULL, '', '3510016111060001', '3510011306090108', 'BANYUWANGI', '2006-11-21', NULL, 'Islam', 'INDONESIA', NULL, '02', '082132396594', '01', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SLAMET RIYANTO', '0', '3510011102740001', '1974-02-11', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'JUMINAH', '0', '3510014507750001', '1975-07-05', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(241, 'PPDB20210127Spesial', '082245637128', 'WENTER PUTRA WANGKARA', NULL, 'Laki-laki', NULL, '', '3510220606050004', '3510222611140001', 'BANYUWANGI', '2005-06-06', NULL, 'Islam', 'INDONESIA', 'SUMBERSUKO 005/006, KESILIR, SILIRAGUNG', '005', '082245637128', '006', 'SUMBERSUKO', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, 'SURRANTINGSIH', '085257150607', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '085257150607', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(242, 'PPDB20210131Spesial', '085397961661', 'AMELIA KUMALA SARI', NULL, 'Perempuan', NULL, '', '3510014605060006', '3510021605180002', 'BANYUWANGI', '2008-05-06', NULL, 'Islam', 'INDONESIA', 'RINGINSARI 003/008, PESANGGARAN, BANYUWANGI', '003', '085397961661', '008', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Wali', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRIYONO', '0', NULL, '1974-01-06', NULL, ' Meninggal Dunia', NULL, 'SULIYANTI', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'NENSI KUSUMA', '085397961661', NULL, '1999-09-02', NULL, 'Tidak bekerja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 2 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(243, 'PPDB20210132Spesial', '081359741523', 'EDO APRILIAN PRATAMA', NULL, 'Laki-laki', NULL, '', '3510021504060003', '3510020104070002', 'BANYUWANGI', '2006-04-12', NULL, 'Islam', 'INDONESIA', NULL, '04', '081359741523', '04', 'SUMBERJAMBE', 'TEMUREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ASMUJI', '0', NULL, '0000-00-00', NULL, ' Lain-lain', NULL, 'SUNARMI', '0', '3510025211810003', '1980-03-19', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '886984013793', NULL, '0000-00-00', NULL, NULL, NULL, '165', '80', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 3 BANGOREJO SATU ATAP', NULL, NULL, NULL, NULL, NULL),
(244, 'PPDB20210133Spesial', '085858039484', 'SHAGISTA DWI SETYA ', NULL, 'Laki-laki', NULL, '', '3510012201070002', '3510010410058218', 'BANYUWANGI', '2007-01-22', NULL, 'Islam', 'INDONESIA', 'RINGINMULYO 002/004, PESANGGARAN, BANYUWANGI', '002', '085858039484', '004', 'RINGINMULYO', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'UNTUNG BANDRIYO', '0', '3510013009680002', '1968-09-30', 'SMA Sederajat', 'Wiraswasta', NULL, 'SURIYATI', '0', '3510186308750001', '1975-08-23', 'SD Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(245, 'PPDB20210134Spesial', '082237906418', 'MOHAMMAD ZAENAL HABIDDIN', NULL, 'Laki-laki', NULL, '', '3510221205070002', '35102207070900038', 'BANYUWANGI', '2007-05-12', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 011/002', '011', '082237906418', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'WIJI', '085336447035', '3510222506610002', '0000-00-00', 'SD Sederajat', 'Petani', NULL, 'TUKINI', '085336447035', '3510224508720008', '0000-00-00', 'SD Sederajat', 'Petani', NULL, NULL, '085336447035', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(246, 'PPDB20210135Spesial', '085231328044', 'PRASETYO NUGROHO', NULL, 'Laki-laki', NULL, '', '3301191104050002', '3301191807180006', 'CILACAP', '2005-04-11', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 012/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '012', '085231328044', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SOBIRIN', '081217977474', '3301012303780002', '0000-00-00', 'SD Sederajat', 'Wiraswasta', NULL, 'SAMINAH', '081217977474', '3301194108820002', '0000-00-00', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '081217977474', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(247, 'PPDB20210136Spesial', '082337106232', 'MEISYA NUNGKY DEALOVA', NULL, 'Perempuan', NULL, '', '3510016505060001', '3510011008100117', 'BANYUWANGI', '2005-05-25', NULL, 'Islam', 'INDONESIA', 'SILIRBARU 004/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '004', '082337106232', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'DIDIK SUYANTO', '0', '3510011412810004', '0000-00-00', 'SMP Sederajat', 'Wiraswasta', NULL, 'SURYANI TRIANINGSIH', '0', '3510015507840006', '0000-00-00', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(248, 'PPDB20210137Spesial', '085748820357', 'RHOSALIA NURMAWATI', NULL, 'Perempuan', NULL, '', '3505184703070002', '3505182408170002', 'RUMBIA', '2007-03-07', NULL, 'Islam', 'INDONESIA', 'RESAMPOBO 003/005, RESAMPOBO, DOKO, BLITAR', '003', '085748820357', '005', 'RESAMPOBO', 'RESAMPOBO', 'DOKO', 'BLITAR', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PIKIRANA', '0', '3505042104650003', '1965-04-21', 'SD Sederajat', 'Wiraswasta', NULL, 'SRI SUDARWATI', '0', '1802286810710001', '1971-10-25', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(249, 'PPDB20210138Spesial', '081359513138', 'BRIYAN ARFANDI', NULL, 'Laki-laki', NULL, '', '3509152808060003', '3509152209110003', 'JEMBER', '2006-08-28', NULL, 'Islam', 'INDONESIA', 'PANCER 006/002, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '006', '081359513138', '002', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'AHMAD SHOLEH', '0', '3509150507660001', '1965-05-07', 'SD Sederajat', ' Meninggal Dunia', NULL, 'RESA KHOIRUN NISA\'', '081515328802', '3509156808800001', '1980-08-28', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, '081515328802', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(250, 'PPDB20210139Spesial', '081359508680', 'YESI RENITA AGUSTIN', NULL, 'Perempuan', NULL, '', '3506184308060004', '3510220604160001', 'BANYUWANGI', '2006-08-03', NULL, 'Islam', 'INDONESIA', 'SELOAGUNG 006/001, SILIRAGUNG, BANYUWANGI', '006', '081359508680', '001', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'JOKO SIROT JUDIN', '082145060900', '3506181803840005', '1984-03-18', 'SMA Sederajat', 'Petani', NULL, 'NOVIA RITA', '082145060900', '3506186311890001', '1989-11-23', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '082145060900', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(251, 'PPDB20210141Spesial', '083199818447', 'NOVIN TEGAR SUBAGIO', NULL, 'Laki-laki', NULL, '', '3510222811050002', '3510221503070003', 'BANYUWANGI', '2004-11-28', NULL, 'Islam', 'INDONESIA', 'SILIRSARI 003/004, KESILIR, SILIRAGUNG', '003', '083199818447', '004', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PANUT SUBAGIO', '081265383397', '3510220603810002', '1981-03-06', 'SMP Sederajat', 'Petani', NULL, 'IMRONAH', '081265383397', '3510224211840002', '1984-11-02', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '081265383397', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(252, 'PPDB20210143Spesial', '081586081988', 'AlLBERT LEO AGUSTINUS', NULL, 'Laki-laki', NULL, '', '3510011308060003', '3510012710210003', 'Banyuwangi', '2006-08-13', NULL, NULL, 'Indonesia', 'Dusun ringinmulyo,RT 003,RW 001,Kecamatan Pesanggaran,Banyuwangi', '003', '081586081988', '001', 'Ringinmulyo', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, 'SUKARTINI', '082384407556', '3510014206740001', '0000-00-00', 'SD Sederajat', 'Petani', NULL, NULL, '082384407556', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(253, 'PPDB20210144Spesial', '085231328112', 'ANDREAS CHRISTIAN STEVANUS', NULL, 'Laki-laki', NULL, '', '3510221808060003', '3510220505210003', 'BANYUWANGI', '2006-08-18', NULL, NULL, 'INDONESIA', 'SILIRSARI 002/002, KESILIR, SILIRAGUNG, BANYUWANGI', '002', '085231328112', '002', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SURYONO', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'MURYANI', '0', '3510225705690002', '1969-05-17', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(254, 'PPDB20210145Spesial', '12345', 'MUHAMAD RIYAN', NULL, 'Laki-laki', NULL, '', '3510010611060001', '3510010110090004', 'BANYUWANGI', '2006-11-06', NULL, 'Kristen/Protestan', 'INDONESIA', 'MULYO SARI 003/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '003', '12345', '001', 'MULYO SARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MESERI', '0', '3510013007640005', '1964-07-30', 'SD Sederajat', 'Petani', NULL, 'SRINATUN', '0', '3510014709710002', '1971-09-07', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(255, 'PPDB20210146Spesial', '12345', 'MUHAMAD RIFKI', NULL, 'Laki-laki', NULL, '', '3510010611060002', '3510010110090004', 'BANYUWANGI', '2006-11-06', NULL, 'Kristen/Protestan', 'INDONESIA', 'MULYO SARI 003/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '003', '12345', '001', 'MULYO SARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MESERI', '0', '3510013007640005', '1964-07-30', 'SD Sederajat', 'Petani', NULL, 'SRINATUN', '0', '3510014709710002', '1971-09-07', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(256, 'PPDB20210147Spesial', '085330365104', 'KHOLIFATUN', NULL, 'Perempuan', NULL, '', '3510226304060001', '3510220104100169', 'BANYUWANGI', '2006-04-28', NULL, 'Islam', 'INDONESIA', NULL, '03', '085330365104', '03', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'WIBOWO', '0', '3510222608680001', '1968-08-26', 'SMP Sederajat', 'Buruh', 'Kurang dari Rp 500.000', 'NIA', '0', '3510224101760008', '1967-01-01', 'SD Sederajat', 'Buruh', 'Kurang dari Rp 500.000', NULL, '083852242023', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(257, 'PPDB20210149Spesial', '081319206799', 'NANDA AGIL VALENTINO', NULL, 'Laki-laki', NULL, '', '3510221907060002', '3510222211070013', NULL, '2006-07-19', NULL, 'Islam', 'INDONESIA', 'SELOAGUNG 002/002, SILIRAGUNG, SILIRAGUNG, BANYUWANGI', '002', '081319206799', '002', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIMAN', '085259142734', '3510221410700002', '1970-10-14', 'SD Sederajat', 'Petani', NULL, 'KATINI', '085259142734', '3510226108740002', '1974-08-21', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, '085259142734', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(258, 'PPDB20210150Spesial', '085238627699', 'DESTA SELO MORENO', NULL, 'Laki-laki', NULL, '', '3510012612060003', '3510010310053367', 'BANYUWANGI', '2006-12-26', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 003/005, PESANGGARAN, BANYUWANGI', '003', '085238627699', '005', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRIYANTO', '0', '3510012412760001', '1976-12-24', 'SMP Sederajat', 'Wiraswasta', NULL, 'WIWIK SRI LESTARI', '0', '3510016602810002', '1981-02-26', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(259, 'PPDB20210151Spesial', '081217738613', 'BAYU PRASETYO', NULL, 'Laki-laki', NULL, '', '3510060908070004', '351001120206200003', 'BANYUWANGI', '2007-02-28', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 004/004, PESANGGARAN, BANYUWANGI', '004', '081217738613', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'AMIN JAJULI', '0', '3510010304920003', '1992-04-03', 'Tidak Sekolah', 'Petani', NULL, 'SRI RAHAYU', '0', '3510065506860004', '1986-06-15', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(260, 'PPDB20210152Spesial', '082335846582', 'YONGKI FERDI HERMAWAN', NULL, 'Laki-laki', NULL, '', '3510012911050002', '3510011201100068', 'BANYUWANGI', '2005-11-29', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 001/002, PESANGGARAN, BANYUWANGI', '001', '082335846582', '002', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKIRNO', '0', '3510011206700002', '1970-06-12', 'SMP Sederajat', 'Wiraswasta', NULL, 'ANDRIANI', '0', '3510015104740008', '1974-04-11', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(261, 'PPDB20210153Spesial', '085234074818', 'JENIA ANGGUN BRILIANTI', NULL, NULL, NULL, '', '3510015301070002', '3510012606090090', 'BANYUWANGI', '2007-01-13', NULL, 'Islam', 'INDONESIA', NULL, '04', '085234074818', '02', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYANTO', '0', '3510012004830005', '1983-04-20', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'LILIK ISTIYANI ', '0', '3510017012900001', '1990-12-30', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '085232626793', NULL, '0000-00-00', NULL, NULL, NULL, '143', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(262, 'PPDB20220154Spesial', '085335263053', 'ZAHARA INDRIYANI', NULL, 'Perempuan', NULL, '', '3510017011060001', '3510010511080019', 'BANYUWANGI', '2006-11-30', NULL, 'Islam', 'INDONESIA', 'TEMBAKUR 002/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '002', '085335263053', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ISNAINI', '601126117218', '3510011506790006', '1979-06-15', 'SD Sederajat', 'Petani', NULL, 'LILIES', '601126117218', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, '601126117218', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSS AL HIDAYAH PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(263, 'PPDB202201551', '083827181494', 'DANDI SETIAWAN', NULL, 'Laki-laki', NULL, '', '6271030509050006', '3510012508140002', 'BANYUWANGI', '2005-09-05', NULL, 'Islam', 'INDONESIA', 'SILIRBARU 003/002, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '003', '083827181494', '002', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SIGIT HARTONO', '0', '6271030805750006', '1975-08-05', 'SD Sederajat', 'Petani', NULL, 'TATIK MUSTIKA RINI', '0', '6271034706830007', '1983-06-07', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(264, 'PPDB202201561', '085338325749', 'ADI GALOH PRAYOGA', NULL, 'Laki-laki', NULL, '', '3510220705060002', '3510222907090005', 'BANYUWANGI', '2006-05-07', NULL, 'Hindu', 'INDONESIA', 'SILIRSARI 002/001, KESILIR, SILIRAGUNG', '002', '085338325749', '001', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TUKIMAN', '0', '3510221204670004', '1967-04-12', 'SD Sederajat', 'Petani', NULL, 'PONITI', '0', '3510224106740002', '1974-06-01', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(265, 'PPDB202201571', '085784719414', 'LINA PANCA NATASYA', NULL, 'Perempuan', NULL, '', '3510015512050006', '3510010310054523', 'BANYUWANGI', '2005-12-15', NULL, 'Islam', 'INDONESIA', NULL, '06', '085784719414', '02', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'SUCIPTO', '3', '3510011603630001', '1963-03-16', 'Tidak Sekolah', 'Petani', 'Kurang dari Rp 500.000', 'SUPRIANI', '0', '3510015012670005', '1967-12-10', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085258522890', NULL, '0000-00-00', NULL, NULL, NULL, '155', '39', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(266, 'PPDB202201581', '082363455562', 'TEGAR FIRMANSYAH', NULL, 'Laki-laki', NULL, '', '3510010112060002', '3510012508080013', 'BANYUWANGI', '0006-12-12', NULL, 'Islam', 'INDONESIA', 'SUMBERBOPONG 002/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '082363455562', '002', 'SUMBERBOPONG', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGITO', '0', '3510010808780007', '1978-08-08', 'SMP Sederajat', 'Wiraswasta', NULL, 'SUGIATI', '0', '3510016106830005', '1983-06-21', 'SMP Sederajat', 'Karyawan Swasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(267, 'PPDB202201591', '081331374506', 'ULFA WULANDARI', NULL, 'Perempuan', NULL, '', '3510016203070003', '3510011506090032', 'BANYUWANGI', '2007-03-22', NULL, 'Islam', 'INDONESIA', 'SUMBER JAMBE 003/001, KANDANGAN, PESANGGARAN, BANYUWANGI', '003', '081331374506', '001', 'SUMBER JAMBE', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKIR ADI WIJAYANTO', '0', '3510011608790004', '1979-08-16', 'SD Sederajat', 'Karyawan Swasta', NULL, 'MISWATI', '0', '3510014708850002', '1985-08-07', 'SD Sederajat', 'Karyawan Swasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(268, 'PPDB202201601', '082123849771', 'MUHAMAD EKO WIDODO', NULL, 'Laki-laki', NULL, '', '3510010308050003', '351001107090001', 'LAMONGAN', '2005-08-03', NULL, 'Islam', 'INDONESIA', 'KANDANGAN 001/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '001', '082123849771', '002', 'KANDANGAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'RIYANTO12', '0', '3510010712730003', '1973-12-07', 'SMA Sederajat', 'Wiraswasta', NULL, 'LILIK', '0', '3510015310830001', '1983-10-13', 'SD Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(269, 'PPDB202201611', '082143898483', 'PUTRI LESTARI', NULL, 'Perempuan', NULL, '', '3510015602070003', '3510010510054923', 'BANYUWANGI', '2007-02-15', NULL, 'Islam', 'INDONESIA', NULL, '04', '082143898483', '01', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'RIYANTO', '0', '3510013006640018', '1964-06-30', 'Putus SD', 'Petani', 'Kurang dari Rp 500.000', 'JEMI', '0', '3510014407660002', '1966-07-04', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(270, 'PPDB202201621', '081235098161', 'AMARA REVA AURELLIA', NULL, 'Perempuan', NULL, '', '3510227006070002', '3510012404190002', 'BANYUWANGI', '2007-06-30', NULL, 'Islam', 'INDONESIA', NULL, '02', '081235098161', '02', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUCANFDRA PAMUNGKAS', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'NANIK ARDIANA', '0', '3510224705770005', '1977-05-07', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(271, 'PPDB202201631', '082235141624', 'NURENI MULYA AGUSTIN', NULL, 'Perempuan', NULL, '', '3510014708060002', '3510221004150002', 'BANYUWANGI', '2006-08-07', NULL, 'Islam', 'INDONESIA', 'SELOAGUNG 005/001, SILIRAGUNG, BANYUWANGI', '005', '082235141624', '001', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'H. M. SUGIARTO', '085334430936', '3510010509600003', '1980-09-05', 'SMP Sederajat', ' Lain-lain', NULL, 'RINI WIDASTUTIK', '085334430936', '3510016104740008', '1974-04-21', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '085334430936', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(272, 'PPDB202201641', '081252668610', 'NILUH PUTU INDIANI', NULL, 'Perempuan', NULL, '', '5105035804070001', '3510011008100003', 'BANYUWANGI', '2007-04-18', NULL, 'Kristen/Protestan', 'INDONESIA', NULL, '03', '081252668610', '04', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Wali', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'I NYOMAN MERTA', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'DEWI ANDAYANI', '0', '5105036511840002', '1984-11-25', 'SMA Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '081230202824', NULL, '0000-00-00', NULL, NULL, NULL, '150', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(273, 'PPDB202201651', '081238588838', 'SANDI ADI PUTRA', NULL, 'Laki-laki', NULL, '', '3510010507070002', '3510010206090112', 'BANYUWANGI', '2007-07-05', NULL, 'Islam', 'INDONESIA', NULL, '04', '081238588838', '02', 'SUKAMADE', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGINO', '0', '3510010604640006', '1964-04-06', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'PATINEM', '0', '3510014604610003', '1961-04-06', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(274, 'PPDB202201661', '082232206372', 'SENDI AUDITAMA', NULL, 'Laki-laki', NULL, '', '3510010507070001', '3510010206090112', 'BANYUWANGI', '2007-07-05', NULL, 'Islam', 'INDONESIA', NULL, '04', '082232206372', '02', 'SUKAMADE', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGINO', '0', '3510010604640006', '1964-04-06', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'KATINEM', '0', '3510014604610003', '1961-04-06', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(275, 'PPDB20220167', '085336313900', 'EKA NUR HIDAYANI FADILAH', NULL, 'Perempuan', NULL, '', '03510014503070003', '3510012403210018', NULL, '2007-03-05', NULL, 'Islam', 'INDONESIA', 'SUMBERBOPONG 003/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '003', '085336313900', '002', 'SUMBERBOPONG', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SAIFUL BAHRI', '0', '3510010303800005', '1980-03-31', 'SD Sederajat', 'Petani', NULL, 'WIWIT NOVIANTI', '0', '3510015101840007', '1984-01-11', 'SMA Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(276, 'PPDB202201681', '082231155825', 'MOHAMAD YUDA', NULL, 'Laki-laki', NULL, '', '3510011604050002', '3510010208090019', 'BANYUWANGI', '2005-04-16', NULL, NULL, 'INDONESIA', 'SUMBERDADI 001/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '001', '082231155825', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIDI', '0', '3510010406740004', '1974-06-04', 'SD Sederajat', 'Petani', NULL, 'LASTRI', '0', '3510014910920003', '1981-10-04', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(277, 'PPDB202201691', '081233091307', 'PUTRA ANDIKA', NULL, 'Laki-laki', NULL, '', '3510012305050003', '3510010611080014', 'BANYUWANGI', '2005-05-23', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 002/001, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '081233091307', '001', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUHARMAN', '0', '3510010706800003', '1980-06-07', 'SD Sederajat', 'Karyawan Swasta', NULL, 'KASRI', '0', '3510014406810005', '1981-06-04', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(278, 'PPDB202201701', '081331208635', 'SILVI ANA DEWI', NULL, 'Perempuan', NULL, '', '3510017112060004', '3510010711100001', 'BANYUWANGI', '2006-12-31', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 001/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '001', '081331208635', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '3510011411780001', '1978-11-14', 'SD Sederajat', 'Wiraswasta', NULL, '0', '0', '3510015504870003', '1987-04-15', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(279, 'PPDB202201711', '085231476579', 'UMI AZIZAH', NULL, 'Perempuan', NULL, '', '3510014707060003', '3510012103120007', 'BANYUWANGI', '2006-07-07', NULL, 'Islam', 'INDONESIA', 'SUMBERBOPONG 005/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '005', '085231476579', '002', 'SUMBERBOPONG', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'EDI WALUYO', '0', '3510010503830004', '1983-03-05', 'SD Sederajat', 'Petani', NULL, 'ELOK SETIYOWATI', '0', '3510014910850004', '1985-10-09', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(280, 'PPDB202201721', '082123849780', 'TRI WULANDARI', NULL, 'Perempuan', NULL, '', '3510015508050003', '3510010108090021', NULL, '2005-08-15', NULL, 'Islam', 'INDONESIA', 'KRAJAN 001/002, PESANGGARAN, PESANGGARAN', '001', '082123849780', '002', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIJAN', '0', '3510011106770002', '1977-06-11', 'SD Sederajat', 'Petani', NULL, 'SUNARMI', '0', '3510014309800002', '1980-09-03', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(281, 'PPDB202201731', '081334713179', 'DESI KARISMAWATI', NULL, 'Perempuan', NULL, '', '3510015809060003', '3510010809080004', 'BANYUWANGI', '2006-09-18', NULL, NULL, 'INDONESIA', 'KRAJAN 003/004, SARONGAN, PESANGGARAN, BANYUWANGI', '003', '081334713179', '004', 'KRAJAN', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'TUNGGUL HIDAYAT', '0', '3510011212800007', '1980-12-12', 'SMA Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'NURANNISA', '0', '3510015111890003', '1989-11-11', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(282, 'PPDB202201741', '085236002780', 'BELLA ANINDIA PUTRI', NULL, 'Perempuan', NULL, '', '3510015207070001', '3510010110090010', 'BANYUWANGI', '2007-07-12', NULL, 'Islam', 'INDONESIA', 'KRAJAN 003/003, SARONGAN, PESANGGARAN, BANYUWANGI', '003', '085236002780', '003', 'KRAJAN', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUJA\'I', '0', '3510010112550003', '1955-12-01', 'SMP Sederajat', 'Pedagang Kecil', NULL, 'SUPARMI', '0', '3510014103680008', '1968-03-01', 'SMP Sederajat', 'Pedagang Kecil', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(283, 'PPDB202203073', '082145572403', 'NIKO WAHYU RAMADANI', NULL, NULL, NULL, '', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '082145572403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_siswa` (`id`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `no_induk`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_keberapa`, `nomor_kip`, `nama_kip`, `lintang`, `bujur`, `nomor_kks`, `nomor_kps_pkh`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh_kesekolah`, `jumlah_saudara_kandung`, `jenis_pendaftaran`, `nis`, `tgl_masuk_sekolah`, `asal_sekolah`, `nomor_peserta_ujian`, `nomor_seri_ijazah`, `keluar_karena`, `tanggal_keluar`, `alasan_keluar`) VALUES
(284, 'PPDB202201761', '081330657970', 'RISKI WAHYUNINGTYAS', NULL, 'Perempuan', NULL, '', '6402036707060004', '6402030409140011', 'BANYUWANGI', '2006-07-27', NULL, 'Islam', 'INDONESIA', 'SUMBERJAMBE 002/002, KANDANGAN,  PESANGGARAN ,BANYUWANGI', '002', '081330657970', '002', 'SUMBERJAMBE', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SAIFUL BAHRI', '0', '6402030509810002', '1981-09-05', 'SD Sederajat', 'Petani', NULL, 'WAHYUNINGSIH', '081330657970', '3510014506870006', '1988-06-05', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, '081330657970', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 3 PESANGGARAN SATU ATAP', NULL, NULL, NULL, NULL, NULL),
(285, 'PPDB202201771', '081239500677', 'LUSIANA ERA WATI', NULL, 'Perempuan', NULL, '', '3510016406060001', '0', 'BANYUWANGI', '2006-06-29', NULL, 'Islam', 'INDONESIA', 'SUMBER JAMBE 002/003, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '081239500677', '003', 'SUMBERJAMBE', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIRAN', '0', '0', '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'NURYATI', '0', '3510014510720004', '1972-10-05', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(286, 'PPDB202201781', '081331211553', 'ALBETI DWI ADI PUTRA', NULL, 'Laki-laki', NULL, '', '3510010405060001', '3510011506090203', 'BANYUWANGI', '2005-05-04', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 002/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '081331211553', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'JOKO', '0', '3510012004700005', '1970-04-20', 'SD Sederajat', 'Petani', NULL, 'SRIYATI', '0', '3510014405790002', '1976-10-12', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(287, 'PPDB202201801', '082331488481', 'DIAH AYU PERMATASARI', NULL, 'Perempuan', NULL, '', '3510024601070002', '3510023010090003', 'BANYUWANGI', '2007-01-06', NULL, 'Islam', 'INDONESIA', 'KEDUNGREJO 004/005,SAMBIMULYO, BANGOREJO, BANYUWANGI', '004', '082331488481', '005', 'KEDUNGREJO', 'SAMBIMULYO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPARDI', '082331488481', '3510021901800005', '0980-11-19', 'SMA Sederajat', 'Petani', NULL, 'NUR HANINAWATI', '082331488481', '3510025304860003', '1986-04-13', 'SMA Sederajat', 'Petani', NULL, NULL, '082331488481', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(288, 'PPDB202201831', '082334209293', 'SHAQILA HAZAR AZAHRA ISNIAH ASMAH', NULL, 'Perempuan', NULL, '', '3510015212060003', '3510011506055069', 'Banyuwangi', '2006-12-12', '35102205200150138', 'Islam', 'Indonesia', 'Dsn silirbaru', '003', '082334209293', '001', 'Silirbaru', 'Sumberagung', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '160', '85', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(289, 'PPDB202201851', '085335856938', 'ARIA TATA WAHYU PRATITIS ', NULL, 'Perempuan', NULL, '', '3510015203060001', '3510010512110006', 'Banyuwangi', '2006-03-12', NULL, 'Islam', 'Indonesia', 'Ringin sari Pesanggaran', '002', '085335856938', '006', 'Ringin sari', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Suherlan ', '087888175883', '3510015405770005', '1951-03-14', 'SMA Sederajat', 'Wiraswasta', '1 juta - Rp 1.999.999', 'Purwanti', '085333161196', '3510015405770005', '1977-05-14', 'Putus SD', 'Pedagang Kecil', 'Rp 500.000 - Rp 999.9999', 'Suherlan', '087888175883', '3510015405770005', '1951-03-14', 'SMP Sederajat', 'Wiraswasta', '1 juta - Rp 1.999.999', '158', '80', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(290, 'PPDB202201861', '081233166094', 'ARGA ISMA SAPUTRA', NULL, 'Laki-laki', NULL, '', '3510010308060002', '3510011610200003', 'Pesanggaran banyuwangi', '2006-08-03', '3510240220170043', 'Islam', 'Indonesia', 'Dusun ringin mulyo kecamatan pesanggaran banyuwangi', '02', '081233166094', '03', 'Dusun ringinmulyo', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Sukirno', '082254464497', '3510220606680008', '0000-00-00', 'Putus SMP', 'Wiraswasta', '2 juta - Rp 4.999.999', 'Ispurwaningsih', '082334309373', '3510014805780002', '0000-00-00', 'SMA Sederajat', 'Wiraswasta', '2 juta - Rp 4.999.999', NULL, '082334309373', NULL, '0000-00-00', NULL, NULL, NULL, '172', '68', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(291, 'PPDB202201871', '083831856500', 'LAELATUL SYAFIRA', NULL, 'Perempuan', NULL, '', '3510016401060001', '351001270609003', 'BANYUWANGI', '2006-01-24', NULL, 'Islam', NULL, NULL, '1', '083831856500', '1', 'RINGINMULYO', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MISNAYU', '0', '3510010912690003', '1969-12-09', 'SD Sederajat', 'Petani', NULL, 'SUDARMI', '0', '3510014203700004', '1970-03-02', 'SMP Sederajat', 'Petani', NULL, NULL, '085282367762', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(292, 'PPDB202201881', '081803708733', 'EDO AHMAD YULIANTO ROHMAN', NULL, 'Laki-laki', NULL, '', '3510010605070002', '3510011802120005', 'BANYUWANGI', '2007-05-06', NULL, 'Islam', 'INDONESIA', NULL, '04', '081803708733', '04', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'AANG MUSLIYANTO', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'DEWI JULAIKAH', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '082325638653', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(293, 'PPDB202201901', '081249306549', 'BAYU PRAYOGA', NULL, 'Laki-laki', NULL, '', '3510011304060002', '3510012506080008', 'BANYUWANGI', '2006-04-13', NULL, 'Hindu', 'INDONESIA', NULL, '05', '081249306549', '02', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUROSO', '0', '3510010204740003', '1974-04-02', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'MANIS', '0', '3510015210740003', '1974-10-12', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(294, 'PPDB202201911', '085939329456', 'FERDI AHMAD RHOMADONI', NULL, 'Laki-laki', NULL, '', '3510010110060003', '3510011008100094', 'BANYUWANGI', '2006-10-01', NULL, 'Islam', 'INDONESIA', NULL, '01', '085939329456', '01', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PUJIYANTO', '0', '3510013006760019', '1976-06-30', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'ISNAINI SOFIYAH', '0', '3510014204750010', '1975-04-02', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(295, 'PPDB202201921', '085855205561', 'APIP PATULNAIMAH', NULL, 'Perempuan', NULL, '', '3510014101060003', '3510012606090038', 'BANYUWANGI', '2007-08-01', NULL, 'Islam', 'INDONESIA', 'RINGINSARI 002/001, PESANGGARAN, BANYUWANGI', '002', '085855205561', '001', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'MISBAH', '0', '3510011505590003', '1959-05-15', 'SD Sederajat', 'Wiraswasta', NULL, 'PUJIATI', '0', '3510016310650002', '1965-10-23', 'SD Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(296, 'PPDB202201931', '083898026665', 'NANDA RACHEL RADITYA ', NULL, 'Laki-laki', NULL, '', '3510012002080001', '3510011504110001', 'BANYUWANGI', '2008-02-20', NULL, 'Islam', 'INDONESIA', NULL, '07', '083898026665', '01', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ANGKA EDY PURWANTO', '0', '3510010409720004', '1972-09-04', 'SMA Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SUGIANTI', '0', '3510016711790001', '1979-11-27', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(297, 'PPDB202201951', '082232322514', 'REHAN ALDIANSAH', NULL, 'Laki-laki', NULL, '', '3510011411070001', '3510012503190004', 'BANYUWANGI', '2009-11-14', NULL, 'Islam', NULL, NULL, '4', '082232322514', '1', '1', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIMIN', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, 'KATINEM', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP QUEN IBNU SINA GENTENG', NULL, NULL, NULL, NULL, NULL),
(298, 'PPDB202201971', '082232322514', 'FERDI EGA SAPUTRA', NULL, 'Laki-laki', NULL, '', '3510010607060005', '3510010310054308', 'BANYUWANGI', '2006-07-06', NULL, 'Islam', NULL, NULL, '4', '082232322514', '1', 'KANDANGAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRIYADI', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, 'WAGIRAH', NULL, NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP QUEN IBNU SINA GENTENG', NULL, NULL, NULL, NULL, NULL),
(299, 'PPDB202201991', '082139424012', 'ERLINA PRIHATIN NINGRUM', NULL, 'Perempuan', NULL, '', '3510025207070003', '3510023112210009', 'BANYUWANGI', '2007-03-29', NULL, 'Islam', 'INDONESIA', NULL, '06', '082139424012', '05', 'PASEMBON', 'SAMBIREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUWAJI', '085232662515', '3510021402690004', '1969-02-14', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'HINDUN NASRI\'AH', '085232662515', '3510026509730006', '1973-09-25', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085232662515', NULL, '0000-00-00', NULL, NULL, NULL, '148', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(300, 'PPDB202202011', '082143151167', 'MOCH. IKMAL', NULL, 'Laki-laki', NULL, '', '3510011809060001', '3510010205100062', 'BANYUWANGI', '2006-09-18', NULL, 'Islam', 'INDONESIA', 'REJOAGUNG 003/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '003', '082143151167', '001', 'SUMBERAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MUHRI', '0', '351001016660002', '1966-06-11', 'SD Sederajat', 'Wiraswasta', NULL, 'MARKAMAH', '0', '3510016703690002', '1969-03-27', 'SMA Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(301, 'PPDB202202021', '085397961676', 'FAHAD M. RAYMADHAN A. S.', NULL, 'Laki-laki', NULL, '', '3510012709070004', '351001191120007', 'BANYUWANGI', '2007-09-27', NULL, 'Islam', 'INDONESIA', NULL, '02', '085397961676', '01', 'SUNGAILEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ALI HUMAID AL SHYBLI', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'ASIATININGSIH', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '085234061779', NULL, '0000-00-00', NULL, NULL, NULL, '170', '55', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(302, 'PPDB202202091', '081249053238', 'HERA VERMA DITA', NULL, 'Perempuan', NULL, '', '3510074511060003', '3510070606090107', 'BANYUWANGI', '2006-11-05', NULL, 'Islam', 'INDONESIA', NULL, '05', '081249053238', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MARYANTO', '082237283488', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'DIAN NOVITA SARI', '082237283488', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '082237283488', NULL, '0000-00-00', NULL, NULL, NULL, '168', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(303, 'PPDB202202121', '08285336297389', 'RYO FRANCISCO', NULL, 'Laki-laki', NULL, '', '3510012507060002', '3510013107180002', 'BANYUWANGI', '2006-07-25', NULL, 'Islam', 'INDONESIA', NULL, '02', '08285336297389', '01', 'RINGINMULYO', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYITNO', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'SUGIYATI', '0', '3510014903800002', '2006-03-09', NULL, 'Karyawan Swasta', NULL, NULL, '085297382714', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(304, 'PPDB202202141', '081252689057', 'TEGAR EGA PRATAMA', NULL, 'Laki-laki', NULL, '', '3510232603060002', '3510220711190001', NULL, '2006-03-26', NULL, 'Islam', 'INDONESIA', NULL, '03', '081252689057', '01', 'KRAJAN', 'BARUREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Wali', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'NURON ASKURI', '0', NULL, '0000-00-00', NULL, ' Lain-lain', NULL, 'LILIS INDRAWATI', '0', NULL, '0000-00-00', NULL, ' Lain-lain', NULL, 'SITI MULIKAH', '0', '3510236508660003', '1966-08-25', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', '172', '69', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(305, 'PPDB202202161', '081993903755', 'KURNIAWATI', NULL, 'Perempuan', NULL, '', '3510016308060001', '3510011102090004', 'BANYUWANGI', '2006-08-23', NULL, 'Islam', 'INDONESIA', NULL, '03', '081993903755', '01', 'RINGINMULYO', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MARJANI', '085230164434', '3510011107510001', '1951-07-11', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'MISIYATI', '085321411704', '3510014207640001', '1964-07-02', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '085321411704', NULL, '0000-00-00', NULL, NULL, NULL, '150', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(306, 'PPDB202202171', '082257041138', 'MENIK RAMADHANI', NULL, 'Perempuan', NULL, '', '3510226110060003', '3510221506090136', 'BANYUWANGI', '2006-10-21', NULL, 'Islam', 'INDONESIA', NULL, NULL, '082257041138', NULL, 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUNARYO', '085336447104', NULL, '0000-00-00', NULL, 'Petani', NULL, 'PONISRI', '085336447104', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, '085336447104', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(307, 'PPDB202202181', '081331206051', 'TIKA HELENIA', NULL, 'Perempuan', NULL, '', '3504024103070002', '3504021712061632', 'TULUNGAGUNG', '2007-03-01', NULL, 'Hindu', 'INDONESIA', NULL, '10', '081331206051', '02', 'WONOREJO', NULL, NULL, NULL, NULL, 'Wali', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRAYITNO', '0', '3504022505810002', '1981-05-25', 'SD Sederajat', 'Karyawan Swasta', 'Kurang dari Rp 500.000', 'OKTAVIANI', '0', '3504025010860004', '1986-10-10', 'SMP Sederajat', 'Karyawan Swasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(308, 'PPDB202202191', '087701675583', 'RIZAL MAULANA RIZKI', NULL, 'Laki-laki', NULL, '', '3510012303060003', '3510012905090179', 'BANYUWANGI', '2006-03-23', NULL, 'Islam', 'INDONESIA', NULL, '01', '087701675583', '02', 'KRAJAN', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUTOMO', '0', '3510013006670030', '1967-05-30', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'FITRIYAH', '0', '3510010408760003', '1976-08-24', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082337960403', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(309, 'PPDB202202221', '085232632037', 'AGUNG BAGUS DWI PRASETIYO', NULL, 'Laki-laki', NULL, '', '03510011604070001', '3510010510052920', 'BANYUWANGI', '2007-04-16', NULL, 'Islam', 'INDONESIA', 'KRAJAN 002/005. PESANGGARAN, BANYUWANGI ', '002', '085232632037', '005', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WIDODO', '085232632037', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'MILA', '085232632037', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '085232632037', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(310, 'PPDB202202231', '087713922032', 'FEBIAN ABI FIRMANSYAH', NULL, 'Laki-laki', NULL, '', '3510011806070003', '3510010310054212', 'BANYUWANGI', '2007-06-18', NULL, 'Islam', 'INDONESIA', 'KRAJAN 002/001, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '087713922032', '001', 'KRAJAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'TRIMO', '081231166029', '3510010504700006', '1970-04-06', 'SD Sederajat', 'Petani', NULL, 'SUKANTI', '081231166029', '3510014501730002', '1973-01-05', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP QUEN IBNU SINA GENTENG', NULL, NULL, NULL, NULL, NULL),
(311, 'PPDB202202241', '085954765072', 'ADI JAYA', NULL, 'Laki-laki', NULL, '', '3510222211060003', '3510222606090090', 'BANYUWANGI', '2006-11-22', NULL, 'Islam', 'INDONESIA', NULL, '09', '085954765072', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'LEGIMAN', '0', '3510222309740002', '1974-09-23', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'ERNA INDRIANI', '0', '3510225506820003', '1982-06-15', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082143165492', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(312, 'PPDB202202251', '082232207818', 'ALDO BAYU SAPUTRO', NULL, 'Laki-laki', NULL, '', '3510010808060001', '3510011901090013', 'BANYUWANGI', '2006-08-08', '321551201106', 'Islam', 'INDONESIA', NULL, '01', '082232207818', '04', 'SUMBERBOPONG', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'PAIRIN', '082232207818', '3510010606730006', '1973-06-06', 'Putus SD', 'Petani', 'Kurang dari Rp 500.000', 'MARKAMAH', '082232207818', '3510014204730001', '1973-04-02', 'Putus SD', 'Petani', 'Kurang dari Rp 500.000', NULL, '082232207818', NULL, '0000-00-00', NULL, NULL, NULL, '157', '40', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP QUEN IBNU SINA GENTENG', NULL, NULL, NULL, NULL, NULL),
(313, 'PPDB202202261', '085745857913', 'GALUH MEITIKA MURNI', NULL, 'Perempuan', NULL, '', '3510024205060002', '3510020610051672', 'BANYUWANGI', '2006-05-02', NULL, 'Islam', 'INDONESIA', NULL, '04', '085745857913', '05', 'PASEMBON', 'SAMBIREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'KADIMAN', '0', '3510021509630003', '1963-09-15', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'TUTIK', '0', '3510026003760003', '1976-03-20', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '081252895785', NULL, '0000-00-00', NULL, NULL, NULL, '149', '42', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(314, 'PPDB202202271', '082244970004', 'PUGUH PITER ARDIANSAH', NULL, 'Laki-laki', NULL, '', '3510222401060001', '3510222306090030', 'BANYUWANGI', '2006-01-24', NULL, 'Islam', 'INDONESIA', NULL, '06', '082244970004', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SIGIT AGUSTIONO', '0', '3510221508830001', '1983-08-15', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'IIS SETIAR NINGSIH', '0', '3510224401880005', '1988-01-04', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '085335755529', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(315, 'PPDB202202281', '082331723210', 'DIVA YOGI PRATAMA', NULL, 'Laki-laki', NULL, '', '3510222511060005', '3510222406090010', 'BANYUWANGI', '2006-11-25', NULL, 'Hindu', 'INDONESIA', NULL, '09', '082331723210', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRIYANTO', '0', '3510220502780004', '1978-02-05', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'NIRWANTI', '0', '3510224501850006', '1985-01-05', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082143165492', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(316, 'PPDB202202291', '087855165786', 'SAYIDATUL MUNAWAROH', NULL, 'Perempuan', NULL, '', '3510026102070003', '3510020610053037', 'BANYUWANGI', '2007-02-21', NULL, 'Islam', 'INDONESIA', NULL, '03', '087855165786', '03', 'SUMBERJAMBE', 'TEMUREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'MURYANI', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'SITI MAESAROH', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 2 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(317, 'PPDB202202331', '081234745890', 'LAOREN ', NULL, 'Perempuan', NULL, '', '3510026303060009', '3510020510053579', 'BANYUWANGI', '2006-02-23', NULL, 'Islam', 'INDONESIA', NULL, '01', '081234745890', '05', 'SUKOMUKTI', 'SUKOREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ISTIYONO', '0', '3510021512810001', '1981-12-15', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'JAMIATIN', '0', '3510024303860002', '1986-03-03', 'SD Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '085336486885', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(318, 'PPDB202202341', '082383539918', 'REDA ARILLIA PUTRI', NULL, 'Perempuan', NULL, '', '351001680170002', '3510010410090023', 'BANYUWANGI', '2007-01-28', NULL, 'Islam', 'INDONESIA', NULL, '02', '082383539918', '03', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'AHMAD SAFARI', '082342693065', '3510012407730004', '1973-07-24', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'LILIK RIYANTI', '082342693065', '3510014205750002', '1975-05-02', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '082342693065', NULL, '0000-00-00', NULL, NULL, NULL, '165', '49', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(319, 'PPDB202202351', '081233071330', 'TEGUH SANTOSO', NULL, 'Laki-laki', NULL, '', '3510020112060004', '3510021405110021', 'BANYUWANGI', '2006-12-01', NULL, 'Islam', 'INDONESIA', NULL, '01', '081233071330', '01', 'KEBONREJO', 'KEBONDALEM', 'BANGOREJO', 'BANYUWANGI', NULL, 'Wali', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'BAKRI', '0', NULL, '0000-00-00', NULL, ' Lain-lain', NULL, 'SRININGSIH', '0', '3510025006800010', '1978-06-10', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SHINTA SETIAWATI', '081244297485', '3510024208990001', '1999-08-02', 'SMA Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(320, 'PPDB202202361', '085895832085', 'DINA AGUSTIN', NULL, 'Perempuan', NULL, '', '35100116908070001', '3510010306090046', 'BANYUWANGI', '2007-08-29', NULL, 'Islam', 'INDONESIA', NULL, '01', '085895832085', '04', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIMIN', '082334731452', '3510012004720001', '1972-04-20', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'MUNTIAH', '0', '3510016511730001', '1973-11-25', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, '082334731452', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(321, 'PPDB202202371', '085132461231', 'AULYA ADINA PERMADANI', NULL, 'Perempuan', '20526657', '', '3510015807070001', '3510012905090143', 'BANYUWANGI', '2007-07-18', NULL, NULL, NULL, 'KRAJAN SARONGAN', '02', '085132461231', '04', 'KRAJAN', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(322, 'PPDB202202381', '085234062580', 'NASWA APRILIANA PUSPITASARI', NULL, 'Perempuan', NULL, '', '3510015104070002', '3510011607070058', 'BANYUWANGI', '2007-04-11', NULL, 'Hindu', 'INDONESIA', NULL, '02', '085234062580', '05', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYITNO', '0', '3510010506730011', '1973-06-05', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'MISIYEM', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, '082234305694', NULL, '0000-00-00', NULL, NULL, NULL, '164', '46', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(323, 'PPDB202202401', '082232104962', 'DENIS KUSNANI', NULL, 'Perempuan', NULL, '', '3510015102070002', '3510012207100074', 'BANYUWANGI', '2007-02-11', NULL, 'Islam', 'INDONESIA', NULL, '04', '082232104962', '08', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'HENDRIAWAN', '0', '3510011008670004', '1967-08-10', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'PONISRI', '0', '3510016512750004', '1975-12-25', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, '082232104962', NULL, '0000-00-00', NULL, NULL, NULL, '160', '60', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(324, 'PPDB202202411', '082257462621', 'LAILLIA NADYA KARIMATTANNISA', NULL, 'Perempuan', NULL, '', '3510015611060001', '351001060606090025', 'BANYUWANGI', '0000-00-00', NULL, 'Islam', 'INDONESIA', 'SILIRBARU 006/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '006', '082257462621', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'BUDI WITONO', '085232085617', '3510011507790007', '1979-07-15', 'SMP Sederajat', 'Karyawan Swasta', NULL, 'YENI RATNA EKO LESTARI', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, NULL, '085232085617', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(325, 'PPDB202202432', '082244772285', 'ELFI NUR MAULIDA', NULL, 'Perempuan', NULL, '', '3510027003070002', '3510021506053626', 'BANYUWANGI', '2007-03-30', NULL, 'Islam', 'INDONESIA', 'SUKOMUKTI 002/005, SUKOREJO, BANGOREJO, BANYUWANGI', '002', '082244772285', '005', 'SUKOMUKTI', 'SUKOREJO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ALI MAHMUD', '081357319213', '3510023006780021', '1978-06-30', 'SMP Sederajat', 'Petani', NULL, 'SITI MUZAYYANAH', '081357319213', '3510026508860002', '1986-08-25', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '081357319213', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(326, 'PPDB202202462', '081336806101', 'JENNY EFFINDA', NULL, 'Perempuan', NULL, '', '3510015509060001', '3510012712080007', 'BANYUWANGI', '2006-09-15', NULL, NULL, 'INDONESIA', 'SUMBER JAMBE 002/001, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '081336806101', '001', 'SUMBERJAMBE', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MISTONO', '0', '3510011709650001', '1965-09-17', 'SD Sederajat', 'Wiraswasta', NULL, 'SUWATI', '0', '3510016012720004', '1972-12-10', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '0', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(327, 'PPDB202202472', '083875451310', 'ANISA NURJANAH', NULL, 'Perempuan', NULL, '', '1802276705070001', '1802270805057253', 'TANJUNG SARI, LAMPUNG', '2007-05-17', NULL, 'Islam', 'INDONESIA', 'MULYOSARI 005/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '005', '083875451310', '001', 'MULYOSARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIYANTO', '0', '1802032104720001', '1972-04-21', 'SMP Sederajat', 'Petani', NULL, 'SULARSIH', '0', '1802274505740001', '1974-05-05', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(328, 'PPDB202202492', '083122399723', 'EKA LISMIA PUTRI', NULL, 'Perempuan', NULL, '', '3510015709060003', '3510020106120002', 'BANYUWANGI', '2006-09-17', NULL, 'Hindu', 'INDONESIA', 'GUNUNGSARI 003/002, BANGOREJO, BANYUWANGI', '003', '083122399723', '002', 'GUNUNGSARI', 'BANGOREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'EDI CAHYONO', '85254281259', '3510011810830003', '1983-10-18', 'SMP Sederajat', 'Wiraswasta', NULL, 'LISMIYATI', '85254281259', '3510016403850004', '1986-03-24', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, '85254281259', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP FULL DAY SUNAN AMPEL', NULL, NULL, NULL, NULL, NULL),
(329, 'PPDB202202502', '085220625328', 'ARIL INDRAWAN', NULL, 'Laki-laki', NULL, '', '3510010906060003', '3510010107090058', 'BANYUWANGI', '2006-06-09', NULL, 'Islam', 'INDONESIA', 'PANCER 006/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '006', '085220625328', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUSIYANTO', '082331808514', '3510011505810004', '1981-05-15', 'SD Sederajat', 'Petani', NULL, 'RINI ANTIKA', '082331808514', '3510014806890003', '1989-06-08', 'SD Sederajat', 'Petani', NULL, NULL, '082331808514', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(330, 'PPDB202202512', '085855205604', 'RENALDI KESUMA', NULL, 'Laki-laki', NULL, '', '3510012101060003', '3510010107090053', 'BANYUWANGI', '2006-01-21', NULL, 'Islam', 'INDONESIA', 'PANCER 006/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '006', '085855205604', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUMARNO', '0', '3510013005730001', '1973-05-30', 'SD Sederajat', 'Petani', NULL, 'SUARNI', '0', '3510017004790001', '1979-04-30', 'SD Sederajat', 'Nelayan', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(331, 'PPDB202202522', '082337010966', 'EGA APRIATI', NULL, 'Perempuan', NULL, '', '3510015904060002', '3510220306140004', 'BANYUWANGI', '2006-04-19', NULL, 'Islam', 'INDONESIA', NULL, '03', '082337010966', '03', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPRIHONO', '0', '3510011507570004', '1957-07-15', 'SD Sederajat', 'Nelayan', 'Kurang dari Rp 500.000', 'SUPINI', '0', '3510017006850064', '1965-06-30', 'SD Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '082337010966', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(332, 'PPDB202202542', '085806121081', 'SHERLY LOLA REVA LINA', NULL, 'Perempuan', NULL, '', '3510225612060004', '3510220210140001', 'BANYUWANGI', '2006-12-16', NULL, 'Islam', 'INDONESIA', 'SELOAGUNG 001/001, SILIRAGUNG, SILIRAGUNG, BANYUWANGI', '001', '085806121081', '001', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MUKLISIN', '0', '0', '0000-00-00', NULL, 'Wiraswasta', NULL, 'UUL WIYATININGSIH', '081232165553', '3510226303860001', '1986-03-23', 'SMP Sederajat', 'Karyawan Swasta', NULL, NULL, '081232165553', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(333, 'PPDB202202552', '0821312411710', 'FANISYA AORELY', NULL, 'Perempuan', NULL, '', '3510015107060004', '3510011006090109', 'BANYUWANGI', '2006-11-07', NULL, 'Islam', 'INDONESIA', NULL, '05', '0821312411710', '02', 'SUMBERBOPONG', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MULYONO', '0', '3510011912790003', '1979-12-12', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'YAYUK SUSILOWATI', '0', '3510015405790003', '1979-12-05', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, '085257243607', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(334, 'PPDB202202562', '085258923923', 'FAHAD SAIFUR ROHMAN', NULL, 'Laki-laki', NULL, '', '3510222804070002', '3510221206080001', 'BANYUWANGI', '2007-04-28', NULL, 'Islam', 'INDONESIA', NULL, '01', '085258923923', '01', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ASNAF MUDLOFAR', '0', '3510220811770007', '1978-06-14', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'DAYUNI', '0', '3510226105850003', '1985-05-21', 'SMP Sederajat', 'Tidak bekerja', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(335, 'PPDB202202572', '085813766799', 'SANDY EKA YUDISTIRA', NULL, 'Laki-laki', NULL, '', '3510221701050002', '3510221503070005', 'BANYUWANGI', '2005-12-01', NULL, 'Hindu', 'INDONESIA', NULL, '03', '085813766799', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUWANTO', '0', NULL, '0000-00-00', NULL, 'Petani', 'Kurang dari Rp 500.000', 'TRIANI', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(336, 'PPDB202202582', '0881026984151', 'NOVA AYU ARMEYVIA', NULL, 'Perempuan', NULL, '', '3510016411070004', '3510011308200009', 'BANYUWANGI', '2007-11-24', NULL, 'Islam', 'INDONESIA', 'RINGINSARI , PESANGGARAN, BANYUWANGI', '0', '0881026984151', '0', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUWARNO HATTA', '085336485807', '0', '0000-00-00', NULL, 'Nelayan', NULL, 'PAINAH', '085336485807', '0', '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '085336485807', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(337, 'PPDB202202612', '081238723906', 'MUHAMAD KUSAINI', NULL, 'Laki-laki', NULL, '', '3510222602060002', '3510221706090155', 'BANYUWANGI', '2006-02-26', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 006/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '006', '081238723906', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'RIYADI', '081238723906', '3510220510750004', '1975-10-05', 'SD Sederajat', 'Petani', NULL, 'SUMILAH', '081238723906', '3510224409750006', '1975-09-04', 'SD Sederajat', 'Petani', NULL, NULL, '081238723906', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(338, 'PPDB202202622', '085731241609', 'ENGGI DWI PAMUNGKAS', NULL, 'Laki-laki', NULL, '', '3510220711060002', '3510222003090007', 'BANYUWANGI', '2006-07-11', NULL, 'Islam', 'INDONESIA', NULL, '01', '085731241609', '01', 'KRAJAN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUPARMAN', '0', '3510221005710003', '1971-05-10', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SUYANI', '0', '3510224509770002', '1977-08-05', 'SD Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '160', '50', NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(339, 'PPDB202202632', '082232996382', 'IQBAL DANI ARDIANSAH', NULL, 'Laki-laki', NULL, '', '3509161907060001', '3509161905100011', 'JEMBER', '2006-06-19', NULL, 'Islam', 'INDONESIA', 'KRAJAN 004/004, PESANGGARAN, BANYUWANGI', '004', '082232996382', '004', 'KRAJAN ', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'DANI HARIYANTO', '085319162387', '350916121200007', '1970-12-12', 'SMA Sederajat', 'Wiraswasta', NULL, 'FITRIANI', '085319162387', '3510018712720003', '1972-12-27', 'D4', 'GURU', NULL, NULL, '085319162387', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SUKOSARI', NULL, NULL, NULL, NULL, NULL),
(340, 'PPDB202202642', '081233571265', 'RAFLI BACHTIAR', NULL, 'Laki-laki', NULL, '', '3510011905050003', '3510010310052032', 'BANYUWANGI', '2005-12-05', NULL, 'Islam', 'INDONESIA', NULL, '03', '081233571265', '08', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYONO', '0', '3510010101720000', '1972-01-01', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', 'SUNARSIH', '0', NULL, '1975-06-12', 'SMP Sederajat', 'Wiraswasta', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(341, 'PPDB202202652', '083857224135', 'M. CHELVIN SETIA RAHMAN', NULL, 'Laki-laki', NULL, '', '3510021604070002', '3510020511080013', 'BANYUWANGI', '2007-04-16', NULL, 'Islam', 'INDONESIA', NULL, '05', '083857224135', '05', 'PASEMBON', 'SAMBIREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Wali', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'BAJURI', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, 'SAMROTUN', '0', NULL, '0000-00-00', NULL, 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(342, 'PPDB202202673', '082145582990', 'RIZKY ARDIAN PUTRA', NULL, 'Laki-laki', NULL, '', '3510222204060001', '3510222608090016', 'BANYUWANGI', '2006-04-22', NULL, 'Islam', 'INDONESIA', NULL, '02', '082145582990', '05', 'SUMBERBENING', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MISNANTO', '0', '3510221506690003', '1969-06-15', 'SMP Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'SUTININGSIH', '0', '3510225703750004', '1975-03-17', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '085330054119', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(343, 'PPDB202202683', '083116154102', 'ANDRI EKO SAPUTRA', NULL, 'Laki-laki', NULL, '', '3510222302070002', '3510220107090051', 'BANYUWANGI', '2007-02-02', NULL, 'Islam', 'INDONESIA', 'SILIRKROMBANG 006/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '006', '083116154102', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SULAM RIANTO', '0', '3510222503740003', '1974-03-25', 'SD Sederajat', 'Petani', NULL, 'SRI BAWON', '0', '3510226905730001', '1973-05-29', 'SMP Sederajat', 'Petani', NULL, NULL, '0', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(344, 'PPDB202202693', '081380580048', 'IRFAN FEBRY SETIYAWAN', NULL, 'Laki-laki', NULL, '', '3510013101070003', '3510010709110006', 'BANYUWANGI', '2007-01-31', NULL, 'Islam', 'INDONESIA', 'KRAJAN 003/009, KEDUNGRINGIN, MUNCAR, BANYUWANGI', '003', '081380580048', '009', 'KRAJAN', 'KEDUNGRINGIN', 'MUNCAR', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MUHAMMAD ZAENURI', '081234834390', '3510013112760002', '1976-12-31', 'SD Sederajat', 'Wiraswasta', NULL, 'TITIN IRAWATI', '081234834390', '3510014609800018', '1980-08-06', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '081234834390', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(345, 'PPDB202202703', '083847061593', 'REVA AFISKA PUTRI', NULL, 'Perempuan', NULL, '', '3510224604060005', '3510222005120010', 'BANYUWANGI', '2006-04-06', NULL, 'Islam', 'INDONESIA', NULL, '02', '083847061593', '01', 'SELOAGUNG', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYITNO', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'SUMIATI', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '081944116594', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(346, 'PPDB202202733', '083833700016', 'SINTA APRILIA', NULL, 'Perempuan', NULL, '', '3510225402070002', '3510222210200005', 'BANYUWANGI', '2007-02-04', NULL, 'Islam', 'INDONESIA', 'SENEPO LOR 003/005, BARUREJO, SILIRAGUNG, BANYUWANGI', '003', '083833700016', '005', 'SENEPO LOR', 'BARUREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'DAIRIN', '0', NULL, '0000-00-00', NULL, 'Petani', NULL, 'SUNARTI', '0', '3510225504800004', '1980-04-15', 'SD Sederajat', 'Petani', NULL, NULL, '0', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(347, 'PPDB202202743', '089686104349', 'RIKO JOTI SANGRILA', NULL, 'Laki-laki', NULL, '', '3510010309090007', '3510010707050003', 'BANYUWANGI', '2005-07-07', NULL, 'Islam', 'INDONESIA', 'KRAJAN 002/005, SARONGAN, PESANGGARAN, BANYUWANGI', '002', '089686104349', '005', 'KRAJAN', 'SARONGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'MUHAMAD KURDI', '085253103448', '3510011801650001', '1965-01-18', 'SD Sederajat', 'Petani', NULL, 'MUJIATI', '085253103448', '3510014702760001', '1976-02-07', 'SD Sederajat', ' Meninggal Dunia', NULL, NULL, '085253103448', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 RUTE SELATAN', NULL, NULL, NULL, NULL, NULL),
(348, 'PPDB202202753', '082142469254', 'SAIFUL IBNU RIZAL', NULL, 'Laki-laki', NULL, '', '3510011702070002', '3510012906090019', 'BANYUWANGI', '2007-02-17', NULL, 'Islam', 'INDONESIA', 'SUNGAI LEMBU 002/002, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '002', '082142469254', '002', 'SUNGAI LEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'EKO BUDIYONO', '082146368060', '3510010311820001', '1982-11-03', 'SD Sederajat', 'Wiraswasta', NULL, 'NURAINI OCTAVIA', '082146368060', '3510015505860002', '1986-05-15', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '082146368060', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(349, 'PPDB202202763', '0881026727122', 'ANDHINI DWI OKTAVIA PUTRI', NULL, 'Perempuan', NULL, '', '3510024910060002', '3510020907200003', 'BANYUWANGI', '2006-10-09', NULL, 'Islam', 'INDONESIA', NULL, '03', '0881026727122', '07', 'SUKOMUKTI', 'SUKOREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'JUMONO', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, 'ANIK SUSIANTI', '2', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, NULL, '081359623365', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTsS NURUS SYAFI\'I', NULL, NULL, NULL, NULL, NULL),
(350, 'PPDB202202773', '085230730195', 'FARREL REFANSA W', NULL, 'Laki-laki', NULL, '', '3521092912060001', '3521092804080010', 'NGAWI', '2006-12-29', NULL, 'Islam', 'INDONESIA', 'BUNGKUS 007/004, NGRAYUDAN, JOGOROGO, NGAWI', '007', '085230730195', '004', 'BUNGKUS', 'NGRAYUDAN', 'JOGOROGO', 'NGAWI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SURWAHYUDI', '082340829410', '3521090311760001', '1976-11-03', 'SMP Sederajat', 'Wiraswasta', NULL, 'NANIK SURYANI', '082340829410', '3521095809850002', '1985-09-18', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, '082340829410', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_siswa` (`id`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `no_induk`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_keberapa`, `nomor_kip`, `nama_kip`, `lintang`, `bujur`, `nomor_kks`, `nomor_kps_pkh`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh_kesekolah`, `jumlah_saudara_kandung`, `jenis_pendaftaran`, `nis`, `tgl_masuk_sekolah`, `asal_sekolah`, `nomor_peserta_ujian`, `nomor_seri_ijazah`, `keluar_karena`, `tanggal_keluar`, `alasan_keluar`) VALUES
(351, 'PPDB202202783', '082136512838', 'MUHAMMAD DIDA LUTFILLAH', NULL, 'Laki-laki', NULL, '', '3510090309050003', '3510011709120011', 'BANYUWANGI', '2005-09-03', NULL, 'Islam', 'INDONESIA', 'MULYOSARI 006/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '006', '082136512838', '001', 'MULYOSARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'AAN HANDOKO', '082237519357', '3510091908850003', '1985-08-19', 'SMP Sederajat', 'Karyawan Swasta', NULL, 'WIWIT KURNIASIH', '082237519357', '3510224612720006', '1972-12-06', 'SMP Sederajat', 'Karyawan Swasta', NULL, NULL, '082237519357', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(352, 'PPDB202202803', '082140338167', 'I GUSTI PUTU IPANG PRATAMA RISKI', NULL, 'Laki-laki', NULL, '', '2202012707080001', '22020107010009', 'BALI', '2006-07-27', NULL, 'Islam', 'INDONESIA', 'SILIRBARU 002/005, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '002', '082140338167', '005', 'SUMBERAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I GUSTI KADE KARTINA NEGARA', '081337923868', '2202012104820004', '1982-04-21', 'SMA Sederajat', 'Wiraswasta', NULL, 'DWI ASTUTIK', '081337923868', '2202015010840002', '1984-10-10', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '081337923868', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(353, 'PPDB202202813', '083815751739', 'DEVANY ZHARA KURNIA SAMSIAR', NULL, 'Perempuan', NULL, '', '5102055111060004', '3510220606220005', 'DENPASAR', '2006-11-11', NULL, 'Islam', 'INDONESIA', 'KRAJAN 001/002, SILIRAGUNG, SILIRAGUNG', '001', '083815751739', '002', 'KRAJAN', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUGIYATNO', '083815751739', NULL, '2017-07-31', NULL, 'Wiraswasta', NULL, 'YUYUN KURNIATI', '083815751739', '5102055904820002', '1982-04-19', 'SMA Sederajat', 'Karyawan Swasta', NULL, NULL, '083815751739', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 6 TABANAN', NULL, NULL, NULL, NULL, NULL),
(354, 'PPDB202202823', '081999590211', 'SUSILO ADI NUGROHO', NULL, 'Laki-laki', NULL, '', '3510011201050002', '3510012411080004', 'BANYUWANGI', '2005-01-12', NULL, 'Islam', 'INDONESIA', 'RINGINAGUNG 004/002, PESANGGARAN, BANYUWANGI', '004', '081999590211', '002', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'SUWOKO', '081999286525', '3510011212590001', '1959-12-12', 'S1', 'GURU', NULL, 'KOMSIYAH', '081999286525', '3510014705760001', '1976-07-05', 'SMP Sederajat', 'Tidak bekerja', NULL, 'MOHAMAD SOFYAN WIBISONO', '081999286525', '3510012607980001', '1998-07-26', 'SMA Sederajat', 'Karyawan Swasta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KOSGORO PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(355, 'PPDB202202833', '085336525526', 'Vito virnando', NULL, 'Laki-laki', NULL, '', '3510012411070001', '3510010410050444', 'Banyuwangi', '2006-11-24', NULL, 'Islam', 'WNI', 'Silirbaru', '3', '085336525526', '5', 'Silirbaru', 'Sumberagung', 'Pesanggaran', 'Banyuwangi', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Sutrisno', NULL, '3510011506740006', '1974-07-15', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', 'Lisnawati', NULL, '3510014506800014', '1980-07-05', 'SD Sederajat', 'Petani', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, '52', NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(356, 'PPDB202202843', '081252691011', 'Rasya Ainun najib', NULL, 'Laki-laki', NULL, '', '3510011608070002', '3510011406090007', 'Banyuwangi ', '2007-08-16', '58552007', 'Islam', NULL, 'Indonesia ', '004', '081252691011', '004', 'Krajan ', 'Sarongan ', 'Pesanggaran ', 'Banyuwangi ', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Imam sibaweh', '085257785748', '3510010603520003', '1952-03-06', 'SD Sederajat', 'Pedagang Kecil', 'Kurang dari Rp 500.000', 'Nanik aminarsih', '85298441615', '3510015107730001', '1973-07-11', 'SMA Sederajat', 'Pedagang Kecil', 'Kurang dari Rp 500.000', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP QUEN IBNU SINA GENTENG', NULL, NULL, NULL, NULL, NULL),
(357, 'PPDB202202863', '083142106745', 'RANGGA ADI PRATAMA', NULL, 'Laki-laki', NULL, '', '3510021804060002', '351002180820008', 'BANYUWANGI', '2006-09-18', NULL, 'Islam', 'INDONESIA', 'PASEMBON 003/006,SAMBIREJO, BANGOREJO, BANYUWANGI', '003', '083142106745', '006', 'PASEMBON', 'SAMBIREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WAYAN KAENI', '081337273666', NULL, '0000-00-00', NULL, 'Karyawan Swasta', NULL, 'RISDIAWATI', '081337273666', NULL, '0000-00-00', NULL, 'Karyawan Swasta', NULL, NULL, '081337273666', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 BANGOREJO', NULL, NULL, NULL, NULL, NULL),
(358, 'PPDB202202873', '082144868518', 'MUHAMAD DIKA', NULL, 'Laki-laki', NULL, '', '3510012112060004', '3510010309190004', 'BANYUWANGI', '2006-12-21', NULL, 'Islam', 'INDONESIA', 'SUMBERDADI 004/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '004', '082144868518', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'DAYAT', '0', '3510011207750003', '1975-08-15', 'SD Sederajat', 'Petani', NULL, 'MURNIATI', '0', '3510015508880002', '1988-08-15', 'SD Sederajat', 'Karyawan Swasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP PGRI 3 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(359, 'PPDB202202883', '082332640582', 'AMELIA TRI WAHYUNI', NULL, 'Perempuan', NULL, '', '3510014504070002', '3510012805090011', 'BANYUWANGI', '2007-04-05', NULL, 'Islam', 'INDONESIA', 'PANCER 004/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '004', '082332640582', '003', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'NUR HASIM', '081252835617', '3510012306750001', '1976-06-23', 'SD Sederajat', 'Wiraswasta', NULL, 'MISTINEM', '081252835617', '3510014802710001', '1971-02-08', 'SD Sederajat', 'Wiraswasta', NULL, NULL, '081252835617', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(360, 'PPDB202202893', '085606382170', 'WAHYU WIDIYA WATI', NULL, 'Perempuan', NULL, '', '3510014207060001', '3510010410051020', 'BANYUWANGI', '2006-02-07', NULL, 'Islam', 'INDONESIA', 'PANCER 005/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '005', '085606382170', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SATIRAN', '085606382170', '3510011112500003', '1950-12-11', 'SD Sederajat', 'Petani', NULL, 'RAMINAH', '085606382170', NULL, '0000-00-00', NULL, 'Petani', NULL, NULL, '085606382170', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(361, 'PPDB202202903', '08854350453', 'INDAH SARI', NULL, 'Perempuan', NULL, '', '7315087112060013', '3510012511160001', 'MAMUJU', '2006-12-31', NULL, 'Islam', 'INDONESIA', 'PANCER 005/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '005', '08854350453', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SAMIRAN', '085607467558', '7315082311650001', '1965-11-23', 'SD Sederajat', 'Petani', NULL, 'SUMIRAH', '085607467558', '7315087112660175', '1966-12-31', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, '085607467558', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(362, 'PPDB202202913', '083149820687', 'MBAREP BAGAS SETYAWAN', NULL, 'Laki-laki', NULL, '', '3510220612050001', '3510221912080007', 'BANYUWANGI', '2005-12-05', NULL, 'Islam', 'INDONESIA', 'SIDORUKUN 003/001, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '003', '083149820687', '001', 'SIDORUKUN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MISYANTO', '886901154210', '35102203057900', '1979-05-03', 'SMP Sederajat', 'Pedagang Kecil', NULL, 'MUSAWANAH', '886901154210', '3510225309850004', '1985-09-13', 'SMP Sederajat', ' Lain-lain', NULL, 'SITI MUNAWAROH', '085852039930', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(363, 'PPDB202202923', '081290436618', 'I GEDE DESTA PUTRA MAHENDRA', NULL, 'Laki-laki', NULL, '', '3510221712070002', '3510222403090014', 'BANYUWANGI', '2007-12-17', NULL, 'Hindu', 'INDONESIA', 'PECEMENGAN 006/001, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '006', '081290436618', '001', 'PECEMENGAN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'I MADE SUGARA JAYA', '0', '3510220703570001', '1957-03-07', 'SMP Sederajat', 'Wiraswasta', NULL, 'NI KOMANG AYU BUDIARTI', '0', '3510225802720001', '1972-02-18', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 4 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(364, 'PPDB202202933', '082143614697', 'RISKA TIARANI', NULL, 'Perempuan', NULL, '', '3510014109060005', '3510012211200002', 'BANYUWANGI', '2006-09-01', NULL, 'Islam', 'INDONESIA', 'PANCER 002/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '002', '082143614697', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'NASIKIN', '0', NULL, '0000-00-00', 'Tidak Sekolah', 'Petani', NULL, 'SITI RAHMAWATI', '0', '3510015406870004', '1987-06-14', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(365, 'PPDB202202953', '081331975624', 'JUNIAR PRATAMA SETIAWAN', NULL, 'Laki-laki', NULL, '', '3510022506050003', '3510021111100003', 'BANYUWANGI', '2005-06-26', NULL, 'Islam', 'INDONESIA', 'SUKOMUKTI 002/003, SUKOREJO, BANGOREJO, BANYUWANGI', '002', '081331975624', '003', 'SUKOMUKTI', 'SUKOREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SUKESYONO', '085321272826', '3510021101660004', '1966-01-11', 'SMP Sederajat', 'Wiraswasta', NULL, 'SUPRIHATIN', '0', '3510025507660001', '1966-07-15', 'SMP Sederajat', 'Wiraswasta', NULL, NULL, '085321272826', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(366, 'PPDB202202963', '082139974572', 'ADITYA AGUS SAPUTRA', NULL, 'Laki-laki', NULL, '', '3510220408060004', '3510220105110004', 'DENPASAR', '2006-08-04', NULL, 'Kristen/Protestan', 'INDONESIA', 'PURWOSARI 002/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '002', '082139974572', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'NITIYO SIHING ASMO', '081217128566', '3510222111770004', '1977-11-21', 'SD Sederajat', 'Petani', NULL, 'NUR FARIDA', '081217128566', '3510224101890003', '1989-01-01', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '081217128566', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(367, 'PPDB202202973', '082257423479', 'NOVIA AYU DWI ARINI', NULL, 'Perempuan', NULL, '', '3510225611060002', '3510222303090007', 'BANYUWANGI', '2006-11-16', NULL, 'Islam', 'INDONESIA', 'SUMBERBENING 004/005, KESILIR, SILIRAGUNG, BANYUWANGI', '004', '082257423479', '005', 'SUMBERBENING', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'PONIMIN', '0', '3510220406680001', '1968-06-04', 'SD Sederajat', 'Petani', NULL, 'MISTINI', '0', '3510224112710003', '1971-12-01', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(368, 'PPDB202202983', '085755285498', 'AHMAD ZAKI ROMADHONI', NULL, 'Perempuan', NULL, '', '180716612080003', '3510020606160005', 'BANYUWANGI', '2006-12-16', NULL, 'Islam', 'INDONESIA', 'KEDUNGAGUNG 006/002, SAMBIREJO, BANGOREJO, BANYUWANGI', '006', '085755285498', '002', 'KEDUNGAGUNG', 'SAMBIREJO', 'BANGOREJO', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'AHMAD KHUDORI', '085369619980', '1807160510810001', '1981-10-05', 'SMP Sederajat', 'Petani', NULL, 'SITI MARIYAM', '085369619980', '1807164706700002', '1987-06-07', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '085369619980', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSS FUTUHIYYAH', NULL, NULL, NULL, NULL, NULL),
(369, 'PPDB202202993', '082334309336', 'Clara Okti Revania', NULL, 'Perempuan', NULL, '', '3510225710050002', '3510010510050714', 'BANYUWANGI', '2005-10-17', NULL, 'Kristen/Protestan', 'INDONESIA', 'PURWOSARI 002/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '002', '082334309336', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'RODHANADI', '0', '3510220607760012', '1976-07-06', 'SD Sederajat', 'Petani', NULL, 'ANGKA SRI MINTAJENG', '0', '3510225703870002', '1987-03-17', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(370, 'PPDB202203003', '082139431374', 'DEDI FEBRIANTO', NULL, 'Laki-laki', NULL, '', '3510011802050001', '3510010610210002', 'BANYUWANGI', '2005-02-18', NULL, 'Islam', 'INDONESIA', 'TEMBAKUR 002/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '002', '082139431374', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MISTO', '0', NULL, '0000-00-00', NULL, ' Meninggal Dunia', NULL, 'WAGINEM', '0', '3510014308720003', '1972-08-03', 'SD Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(371, 'PPDB202203013', '085259107230', 'ADITYA ALFIN NANDA PUTRA', NULL, 'Laki-laki', NULL, '', '3510010610060001', '3510011107190008', 'BANYUWANGI', '2006-10-06', NULL, 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN', '001', '085259107230', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'SOLIKIN', '0', NULL, '0000-00-00', NULL, 'Tidak bekerja', NULL, 'SULISTYOWATI', '0', '3510015605840004', '1984-05-16', 'SMP Sederajat', 'Petani', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(372, 'PPDB202203023', '082139591930', 'NARENDRA AKIRA RAMADANI', NULL, 'Laki-laki', NULL, '', '3510011910060001', '3510010212090021', 'BANYUWANGI', '2006-10-19', NULL, 'Islam', 'INDONESIA', 'PANCER 002/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '002', '082139591930', '003', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'ABU BAKAR', '081358707348', '3510012501740001', '1974-01-25', 'Tidak Sekolah', 'Nelayan', NULL, 'ANIS LUPIYATI', '081358707348', '3510014101870013', '1987-01-01', 'SMA Sederajat', 'Tidak bekerja', NULL, NULL, '081358707348', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(373, 'PPDB202203033', '082334158192', 'MOHAMAD SAIFUR RIJAL', NULL, 'Laki-laki', NULL, '', '3510011206060002', '3510010907070001', 'BANYUWANGI', '2006-06-12', NULL, 'Islam', 'INDONESIA', 'RINGINSARI 001/003, PESANGGARAN, BANYUWANGI', '001', '082334158192', '003', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'HADI KUSMANTO', '085233911497', '3510011505740004', '1974-05-12', 'SMA Sederajat', 'Wiraswasta', NULL, 'LISTYOWATI', '085233911497', '3510017107800003', '1980-07-31', 'SMP Sederajat', 'Tidak bekerja', NULL, NULL, '085233911497', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTSN 9 BANYUWANGI', NULL, NULL, NULL, NULL, NULL),
(374, 'PPDB202203043', '082335690658', 'ACMAD SAIFUL', NULL, 'Laki-laki', NULL, '', '3510011511040001', '3510010107090057', 'BANYUWANGI', '2004-11-15', NULL, 'Islam', 'INDONESIA', 'PANCER 003/001, SUMBERAGUNG, PESANGGARAN', '003', '082335690658', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'MOCH JUMARI', '0', '3510010606720002', '1972-06-06', 'SD Sederajat', 'Petani', NULL, 'SITI NUR IMAMAH', '0', '3510015105760001', '1976-05-11', 'SD Sederajat', 'Wiraswasta', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 PESANGGARAN', NULL, NULL, NULL, NULL, NULL),
(375, 'PPDB202203053', '085233303351', 'MANUWEL YUSA', NULL, 'Laki-laki', NULL, '', '3510010807070002', '3510012507090001', 'BANYUWANGI', '2007-07-08', NULL, 'Kristen/Protestan', 'INDONESIA', 'RINGINSARI 001/009, PESANGGARAN, PESANGGARAN, BANYUWANGI', '001', '085233303351', '009', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'SUYATNO', '082124274710', '3510011708610001', '1964-07-10', 'SD Sederajat', 'Petani', NULL, 'SRI SUMILAH', '082124274710', '3510014507700007', '1972-04-21', 'SD Sederajat', 'Petani', NULL, NULL, '082124274710', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP KATOLIK YOS SUDARSO', NULL, NULL, NULL, NULL, NULL),
(376, 'PPDB202203083', '081297454876', 'NYANI WIDAYAT ', NULL, 'Laki-laki', NULL, '', '1234', '12345', 'BANYUWANGI', '2005-06-21', NULL, 'Islam', 'INDONESIA', 'BARUREJO', '04', '081297454876', '3', 'KRAJAN', 'BARUREJO', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'HARIYONO A', '085259352113', '7202240508720002', '1972-08-05', 'SMP Sederajat', 'Petani', '1 juta - Rp 1.999.999', 'SUTRIANI', '012334', '7202245807760002', '1976-07-18', 'SMP Sederajat', 'Wiraswasta', 'Rp 500.000 - Rp 999.9999', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 2 TEGALSARI', NULL, NULL, NULL, NULL, NULL),
(377, 'PPDB202203093', '0', 'KIKI AMALIA PRATAMA PUTRI', NULL, 'Perempuan', NULL, '', '3510225709060002', '3510222509120001', 'BANYUWANGI', '2006-09-17', NULL, 'Islam', 'INDONESIA', 'SUMBERSUKO 005/002, KESILIR, SILIRAGUNG, BANYUWANGI', '005', '0', '002', 'SUMBERSUKO', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'KHOIRUL ANWAR', '0', '3510225709060002', '1979-12-12', 'SMP Sederajat', 'Karyawan Swasta', NULL, 'TATIK ISTIANAH', '0', '3510084105790002', '1979-05-31', 'SD Sederajat', 'Tidak bekerja', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP NEGERI 1 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL),
(378, 'PPDB20220310', '082132385816', 'REFFLESIA JELTI SALSABILLA', NULL, 'Perempuan', NULL, '', '3510016101070002', '3510011006090013', 'BANYUWANGI', '2007-01-21', NULL, 'Islam', 'INDONESIA', 'RINGINSARI 003/010, PESANGGARAN, BANYUWANGI', '003', '082132385816', '010', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', NULL, 'Bersama Orang Tua', 'Kendaraan Pribadi', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'AHMAD BASUKI SEPTI', '081235824746', '3510010509750001', '1976-09-05', 'SMP Sederajat', 'Petani', NULL, 'KATIJEM', '081235824746', '3510014308700002', '0970-08-31', 'SD Sederajat', 'Petani', NULL, NULL, '081235824746', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP MUHAMMADIYAH 5 SILIRAGUNG', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswo`
--

CREATE TABLE `tb_siswo` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `status_siswa` varchar(20) NOT NULL,
  `kode_pendaftaran` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `nik_siswa` varchar(100) NOT NULL,
  `no_kk` varchar(100) NOT NULL,
  `tempatlahir_siswa` varchar(100) NOT NULL,
  `tgllahir_siswa` date NOT NULL,
  `noakte_lahir` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL,
  `alamat_siswa` varchar(100) NOT NULL,
  `rt` varchar(100) NOT NULL,
  `nohp` varchar(100) NOT NULL,
  `rw` varchar(100) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kec` varchar(100) NOT NULL,
  `kab` varchar(100) NOT NULL,
  `kodepos` varchar(100) NOT NULL,
  `tempat_tinggal` varchar(100) NOT NULL,
  `moda_transportasi` varchar(100) NOT NULL,
  `anak_berapa` varchar(100) NOT NULL,
  `punya_kip` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nohp_ayah` varchar(20) NOT NULL,
  `nik_ayah` varchar(100) NOT NULL,
  `tgllahir_ayah` date NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `nohp_ibu` varchar(20) NOT NULL,
  `nik_ibu` varchar(100) NOT NULL,
  `tgllahir_ibu` date NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `nohp_wali` varchar(20) NOT NULL,
  `nik_wali` varchar(100) NOT NULL,
  `tgllahir_wali` date NOT NULL,
  `pendidikan_wali` varchar(100) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(100) NOT NULL,
  `tinggi_badan` varchar(100) NOT NULL,
  `berat_badan` varchar(100) NOT NULL,
  `sekolah_asal` varchar(100) NOT NULL,
  `daftar_ulang` varchar(100) NOT NULL,
  `tgl_daftar_ulang` date NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_siswo`
--

INSERT INTO `tb_siswo` (`id`, `id_kelas`, `status_siswa`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_berapa`, `punya_kip`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `sekolah_asal`, `daftar_ulang`, `tgl_daftar_ulang`, `tgl_daftar`) VALUES
(22, 0, 'Sudah Verifikasi', 'PPDB20210001Spesial', '12345678', 'Deva Dwi Marta Dinata', '', 'Laki-laki', '', '3510014903070005', '3510011309120016', 'BANYUWANGI', '2007-03-09', '', 'Islam', 'INDONESIA', '', '07', '081252503931', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'GUNAWAN', '0', '3510010105700007', '1970-05-01', '6', '4', '1', 'SITI MUTMAINAH', '0', '3510015902860005', '1986-02-19', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-10-29 03:13:27'),
(23, 0, 'Sudah Verifikasi', 'PPDB20210023Spesial', '12345678', 'ALFAN JULIARDI', '', 'Laki-laki', '', '3510010606060003', '3510012711170007', 'BANYUWANGI', '2006-06-06', '', 'Islam', 'Indonesia', '', '1', '082257023581', '1', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '3', '0', '', 'TRIMO WIBISONO', '0', '', '0000-00-00', '', '16', '', 'WATINI', '082264447648', '3510015003680004', '1968-03-10', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-10-29 02:54:52'),
(24, 0, 'Sudah Verifikasi', 'PPDB20210024Spesial', '12345678', 'VIKA KHURIL NGAINI', '', 'Perempuan', '', '3510014103070003', '3510011402190002', 'BANYUWANGI', '2007-03-01', '', 'Islam', 'Indonesia', '', '5', '085784199130', '2', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'IMAM RIFAI', '8613128425890', '', '0000-00-00', '', '12', '', 'ERNAWATI', '0', '3510016603850003', '1985-03-26', '6', '1', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-11-16 02:02:42'),
(26, 0, 'Sudah Verifikasi', 'PPDB20210025Spesial', '12345678', 'Putri Ida Nurjanah', '', 'Perempuan', '', '3510016108050003', '3510010107100053', 'BANYUWANGI', '2005-08-21', '', 'Islam', 'Indonesia', 'silirbaru ', '2', '081238178171', '4', 'SILIRBARU', 'SILIRBARU', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '3', '', 'SUROTO', '0', '3510011002650003', '0000-00-00', '6', '4', '1', 'WIJIYANTI', '0', '3510010703730020', '1973-03-07', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-11-04 03:35:30'),
(27, 0, 'Sudah Verifikasi', 'PPDB20210027Spesial', '12345678', 'DELALIYA SAPITRI', '', 'Perempuan', '', '3510014612050006', '3510010310053843', 'BANYUWANGI', '2005-12-08', '', 'Islam', 'Indonesia', '', '7', '085855205475', '1', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '3', '', 'SUKADI', '0', '3510013006540030', '1954-06-30', '4', '12', '1', 'SUTI\'AH', '0', '3510017006720036', '1972-06-30', '4', '12', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '0', '0000-00-00', '2021-11-01 07:07:58'),
(28, 0, 'Sudah Verifikasi', 'PPDB20210028Spesial', '12345678', 'JAVIER ORRIZA STARONE', '', 'Laki-laki', '0075267776', '3510012104070004', '3510012606140003', 'BANYUWANGI', '2007-04-21', '', 'Islam', 'INDONESIA', 'SILIRBARU 007/003, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '007', '085219583259', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'MAROJI', '085219583259', '', '0000-00-00', '', '12', '', 'SRI LESTARI', '085219583259', '3510014308830004', '1983-04-04', '', '1', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-11-04 03:42:21'),
(29, 0, 'Sudah Verifikasi', 'PPDB20210029Spesial', '12345678', 'RICO NUR AHMAD FADILAH', '', 'Laki-laki', '', '3510012807070002', '3510010910080003', 'BANYUWANGI', '2007-07-28', '', 'Islam', 'INDONESIA', '', '07', '085855313527', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'MUSTAKIM', '0', '3510010806750002', '1975-06-08', '8', '4', '1', 'SUGIYATI', '0', '3510017009780002', '1978-09-30', '8', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-27', '2021-11-01 04:42:13'),
(32, 0, 'Sudah Verifikasi', 'PPDB20210032Spesial', '12345678', 'Nia Marshella Aurelia Putri', '', 'Perempuan', '', '3510014903070004', '3510010410052952', 'BANYUWANGI', '2007-03-09', '', 'Budha', 'INDONESIA', 'DUSUN SILIRBARU - KALIULUH, RT 3 RW 2, DESA SUMBERAGUNG, KEC. PESANGGARAN', '03 ', '082110755867', '02', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', 'Tidak', 'TRI WINARTO', '082335747263', '', '0000-00-00', '', '16', '', 'PAINI', '082335747263', '', '0000-00-00', '', '13', '', 'SELO', '082335747263', '3510010204560002', '1956-04-02', '4', '4', '1', '152', '54', '75', '340000', '2021-11-02', '2021-11-03 01:55:23'),
(33, 0, 'Sudah Verifikasi', 'PPDB20210033Spesial', '12345678', 'Aprilia Dwi Lestari', '', 'Perempuan', '', '3510016005060005', '3510011003090014', 'BANYUWANGI', '2006-04-16', '', 'Islam', 'INDONESIA', '', '01', '082122751652', '03', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'MISNO HADI', '0', '3510011503680006', '1968-03-15', '4', '4', '1', 'DARTIK', '0', '3510014101760020', '1976-01-01', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-11-01 02:04:43'),
(34, 0, 'Sudah Verifikasi', 'PPDB20210034Spesial', '12345678', 'CINTA YUNIANTIKA', '', 'Perempuan', '', '3509184906070001', '3510010206100092', 'Jember', '2007-06-15', '', 'Islam', '', '', '02', '085335069459', '01', 'Ringinmulyo', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', '', '2', '4', '1', '', 'ANWAR', '0', '', '0000-00-00', '', '12', '', 'Yuliatin', '085204599781', '35100155047900001', '1979-04-15', '6', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '50', '340000', '2021-10-29', '2021-10-29 03:05:02'),
(35, 0, 'Sudah Verifikasi', 'PPDB20210035Spesial', '12345678', 'DIAN PAIRUS SANURITA', '', 'Perempuan', '0067756351', '3510015106060002', '3510012108080019', 'BANYUWANGI', '2006-06-11', '', 'Islam', 'INDONESIA', 'DUSUN SUMBERDADI RT 03 RW 2 DESA KANDANGAN, KEC. PESANGGARAN', '03', '082333250947', '02', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Ya', 'MISWAN', '081336806083', '3510011902700002', '1970-02-19', '4', '4', '1', 'SARMIATI', '085330224360', '3510014701780002', '1978-01-07', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '160', '43', '47', '340000', '2021-10-22', '2021-10-30 02:32:31'),
(36, 0, 'Sudah Verifikasi', 'PPDB20210036Spesial', '12345678', 'ALVINA DWI ANGGRAINI', '', 'Perempuan', '', '3510015512060002', '3510010212090001', 'BANYUWANGI', '2006-12-15', '', 'Islam', 'INDONESIA', 'DUSUN KRAJAN RT 3 RW 2 DESA KANDANGAN, KEC. PESANGGARAN ', '03 ', '081805613412', '02', 'KRAJAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Ya', 'ATIM', '082244778885', '3513510011001690005', '1969-01-10', '4', '4', '1', 'MISINI', '082244778885', '3510014408790004', '1979-08-04', '4', '4', '1', '', '', '', '0000-00-00', '', '', '', '150', '50', '47', '340000', '2021-11-26', '2021-12-01 02:52:43'),
(37, 0, 'Sudah Verifikasi', 'PPDB20210037Spesial', '12345678', 'LIYA SILVIANA ', '', 'Perempuan', '', '3510014807060001', '3510010410052259', 'BANYUWANGI', '2006-07-08', '', 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '085755299035', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'SUGIONO', '085755299035', '3510010506790001', '1978-06-05', '4', '4', '', 'TATIK SUMARSIH', '085755299035', '', '0000-00-00', '', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-11-06 01:00:11'),
(41, 0, 'Sudah Verifikasi', 'PPDB20210040Spesial', '12345678', 'MARSELA DISTIKARANI', '', 'Perempuan', '', '3510015503050004', '3510010510057084', 'BANYUWANGI', '2005-03-15', '', 'Islam', 'INDONESIA', '', '05', '082143401376', '01', 'Tembakur', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', '', '2', '4', '1', '', 'KATIRIN', '0', '3510011604680005', '1968-04-16', '6', '4', '1', 'SUHARTATI', '0', '3510014101710004', '1971-01-01', '4', '4', '1', '', '085336201711', '', '0000-00-00', '', '', '', '145', '40', '48', '', '0000-00-00', '2021-11-27 02:30:08'),
(42, 0, 'Sudah Verifikasi', 'PPDB20210042Spesial', '12345678', 'MEITYAS ANGGRAENI', '', 'Perempuan', '', '3510016707070001', '351001220409009', 'BANYUWANGI', '2021-10-27', '', '', '', '', '02', '082232729300', '01', 'Mulyoasri', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', '', '2', '5', '1', '', 'Nyoto', '', '', '0000-00-00', '', '4', '', 'Lasmini', '', '', '0000-00-00', '', '4', '', 'Nyoto', '082232729300', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-10-27 03:47:35'),
(43, 0, 'Sudah Verifikasi', 'PPDB20210043Spesial', '12345678', 'AYU KARTIKA RAHAYU', '', 'Perempuan', '', '3510014909070002', '3510010405080019', 'BANYUWANGI', '2007-09-09', '', 'Hindu', 'Indonesia', '', '05', '085236007658', '2', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'KARSONO', '0', '3510013010740002', '1974-10-30', '6', '4', '1', 'SIH SUKARTI', '0', '3510014102880004', '1988-02-01', '6', '4', '1', '', '085231042266', '', '0000-00-00', '', '', '', '151', '50', '48', '', '0000-00-00', '2021-11-27 02:25:16'),
(44, 0, 'Sudah Verifikasi', 'PPDB20210044Spesial', '12345678', 'AMEL APRILIA TRI RATNA SARI', '', 'Perempuan', '', '3510015604070004', '3510011101190004', '', '2007-04-16', '', 'Islam', 'INDONESIA', '', '06', '085231042236', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUYOSO', '0', '', '0000-00-00', '', '16', '', 'FATIMAH', '0', '3510016611710001', '1971-11-26', '4', '4', '1', '', '085211556815', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-11-30', '2021-11-30 04:55:33'),
(46, 0, 'Sudah Verifikasi', 'PPDB20210046Spesial', '12345678', 'ANDIKA PANDU RAMADANI', '', 'Laki-laki', '', '3510010710060003', '31001230510022', 'BANYUWANGI', '2006-10-07', '', 'Islam', 'INDONESIA', '', '4', '083853352566', '4', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'SELAMET BUDI UTOMO', '', '', '0000-00-00', '', '12', '', 'HENI PATMASARI', '', '', '0000-00-00', '', '12', '', 'SELAMET BUDI UTOMO', '083853352566', '', '0000-00-00', '', '', '', '', '', '74', '340000', '2021-11-24', '2021-11-24 00:39:30'),
(47, 0, 'Sudah Verifikasi', 'PPDB20210047Spesial', '12345678', 'MUHAMAD RADIKA', '', 'Laki-laki', '', '3510012604070001', '3510012011090010', 'BANYUWANGI', '2007-04-26', '', 'Islam', '', '', '1', '12345678', '2', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'SUYANTO', '', '', '0000-00-00', '', '12', '', 'EVA NURUL HIDAYANI', '', '', '0000-00-00', '', '12', '', '', '12345678', '', '0000-00-00', '', '', '', '', '', '74', '340000', '2021-11-03', '2021-11-04 03:48:27'),
(48, 0, 'Sudah Verifikasi', 'PPDB20210048Spesial', '12345678', 'PUJI RAHAYU', '', 'Perempuan', '', '0', '3510010410052234', 'BANYUWANGI', '2007-08-03', '', 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN', '001', '081238568357', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'BOIMAN', '081372757836', '3510010501660003', '1966-01-05', '4', '12', '', 'MESINI', '081372757836', '3510014811780004', '1978-11-08', '4', '12', '', '', '081372757836', '', '0000-00-00', '', '', '', '153', '54', '48', '340000', '2021-10-29', '2021-11-03 02:47:22'),
(49, 0, 'Sudah Verifikasi', 'PPDB20210049Spesial', '12345678', 'REVALDO SIL VERI PRATAMA', '', 'Laki-laki', '', '3510012609060005', '3510012101110037', 'BANYUWANGI', '2006-09-26', '', 'Islam', 'INDONESIA', 'SUMBERDADI 003/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '003', '081246551498', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', 'Ya', 'MISMAN', '082257023711', '3510010910820008', '1982-10-09', '4', '12', '', 'SRI WAHYUNI', '082257023711', '3510014908880004', '1988-08-09', '4', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '52', '340000', '2021-11-29', '2021-12-01 00:32:33'),
(50, 0, 'Sudah Verifikasi', 'PPDB20210050Spesial', '12345678', 'NUR WITA CHUSNUL CHOTIMAH', '', 'Perempuan', '', '3510014103070005', '3510012906090107', 'BANYUWANGI', '2007-03-02', '', 'Islam', 'INDONESIA', 'PANCER 007/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '007', '083151475853', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'TRI SUNARTO', '081286889045', '3510010411540001', '1954-11-04', '8', '4', '', 'SITI JUWARIYAH', '081286889045', '3510015306720003', '1972-06-13', '4', '1', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-10-29 02:37:02'),
(51, 0, 'Sudah Verifikasi', 'PPDB20210051Spesial', '12345678', 'REVA LUXIANA', '', 'Perempuan', '', '3510016003070003', '3510010110090035', 'BANYUWANGI', '2007-03-20', '', 'Islam', 'INDONESIA', 'RINGINAGUNG 003/007, PESANGGARAN, BANYUWANGI', '003', '085234089135', '007', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'NASIMAN', '082132558405', '3510012609820005', '1982-09-26', '6', '12', '', 'IKA ROHANIATI', '082132558405', '3510014301880003', '1988-03-01', '6', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-11-04', '2021-11-04 03:50:17'),
(53, 0, 'Sudah Verifikasi', 'PPDB20210052Spesial', '12345678', 'OKTAVIA RAMADHANI', '', 'Perempuan', '', '3510015011080001', '3510012907090062', 'BANYUWANGI', '2008-10-11', '', 'Islam', 'INDONESIA', 'PANCER 001/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '085755339657', '001', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'BUNANGIN', '0', '3510010903640001', '1964-03-09', '4', '4', '', 'RAPIAH', '0', '3510014908710002', '1971-08-09', '4', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '51', '340000', '2021-10-29', '2021-10-30 02:08:38'),
(54, 0, 'Sudah Verifikasi', 'PPDB20210054Spesial', '12345678', 'DELA MEI WULANDARI', '', 'Perempuan', '', '3510015605040001', '3510013103090019', 'BANYUWANGI', '2004-05-16', '', 'Islam', 'INDONESIA', 'SILIRBARU', '002', '085955219141', '003', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUYONO', '0', '', '0000-00-00', '', '4', '', 'HALIMAH ', '0', '', '0000-00-00', '', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-10-29', '2021-10-30 04:46:32'),
(57, 0, 'Sudah Verifikasi', 'PPDB20210055Spesial', '12345678', 'REZA YUDA PERMANA ', '', 'Laki-laki', '', '3510010302070001', '3510012003100054', 'BANYUWANGI', '2007-02-03', '', 'Islam', 'INDONESIA', 'KRAJAN 003/004, PESANGGARAN, PESANGGARAN, BANYUWANGI', '003', '085311588143', '004', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '4', '', 'ADI SURIPNO', '085311588143', '', '0000-00-00', '', '12', '', 'MISNATI', '085311588143', '', '0000-00-00', '', '12', '', '', '085311588143', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-11-02 00:37:39'),
(58, 0, '', 'PPDB20210058Spesial', '12345678', 'VIANDRA BHARGO PRATAMA', '', 'Laki-laki', '', '3510012012070002', '3510011703080016', 'BANYUWANGI', '2006-12-20', '', 'Hindu', 'INDONESIA', 'RINGINAGUNG 002/004, PESANGGARAN, BANYUWANGI', '002', '082338664633', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'SUPARMAN', '085236899083', '', '0000-00-00', '', '4', '', 'SUWANTI', '085236899083', '', '0000-00-00', '', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-10-30 04:18:32'),
(59, 0, 'Sudah Verifikasi', 'PPDB20210059Spesial', '12345678', 'DWI NADA RAMADHANI', '', 'Perempuan', '', '3510010710060001', '3510010102210001', 'BANYUWANGI', '2006-10-07', '', 'Islam', 'INDONESIA', 'KRAJAN 002/003, PESANGGARAN, BANYUWANGI', '002', '083834621973', '003', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'SUGIYATNO', '082316268587', '', '0000-00-00', '', '1', '', 'HUMAIDA', '082316268587', '3510015307690001', '1969-07-13', '6', '14', '', '', '082316268587', '', '0000-00-00', '', '', '', '', '', '66', '340000', '2021-11-08', '2021-11-08 03:25:27'),
(60, 0, 'Sudah Verifikasi', 'PPDB20210060Spesial', '12345678', 'MOHKAMAT RADIT SETIAWAN', '', 'Perempuan', '', '3510012905050004', '3510012607090023', 'BANYUWANGI', '2005-05-31', '', 'Islam', 'INDONESIA', 'RINGINAGUNG 003/005, PESANGGARAN, BANYUWANGI', '003', '085236906071', '005', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Ya', 'SUDIRO', '0', '3510010907610001', '1961-07-09', '4', '4', '', 'SULIATI', '0', '3510014704720004', '1972-04-07', '4', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '66', '340000', '2021-11-29', '2021-11-29 05:08:41'),
(61, 0, 'Sudah Verifikasi', 'PPDB20210061Spesial', '12345678', 'HUSNUL YAKIN', '', 'Laki-laki', '', '7601091703070001', '7601092712160004', 'PEDANDA II, MAMUJU UTARA', '2007-03-17', '', 'Islam', 'INDONESIA', 'RINGINSARI 002/001, PESANGGARAN, BANYUWANGI', '002', '083873222287', '001', 'RINGINSARI', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', '', '', '', '0000-00-00', '', '', '', 'SUJIATI', '0', '7601095209750001', '1975-09-12', '4', '1', '', '', '', '', '0000-00-00', '', '', '', '', '', '66', '340000', '2021-11-29', '2021-11-29 05:08:01'),
(62, 0, 'Sudah Verifikasi', 'PPDB20210062Spesial', '123456789', 'DINA AGUSTIN', '', 'Perempuan', '', '3510017107060001', '3510010310055303', 'BANYUWANGI', '2006-07-31', '', 'Islam', 'INDONESIA', 'RINGINAGUNG 001/003, PESANGGARAN, BANYUWANGI', '001', '083833701966', '003', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', 'Ya', 'SUNYOTO', '081289828701', '3510010503650006', '1965-03-05', '4', '12', '1', 'WAGINI', '081289828701', '3510014308720005', '0000-00-00', '6', '12', '1', '', '081289828701', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-11-08 01:34:50'),
(63, 0, 'Sudah Verifikasi', 'PPDB20210063Spesial', '12345678', 'SUKMAWATI', '', 'Perempuan', '', '3510015207060002', '3510012309080009', 'Banyuwangi', '2006-07-12', '', '', '', '', '6', '081336057442', '2', 'pancer', 'sumberagung', 'pesanggaran', 'banyuwangi', '', '', '', '', '', 'SATRA', '', '', '0000-00-00', '', '3', '', 'MISNAH', '', '', '0000-00-00', '', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-01 07:01:46'),
(64, 0, 'Sudah Verifikasi', 'PPDB20210064Spesial', '12345678', 'SERA JUANA IFE', '', 'Perempuan', '', '3510015207060002', '3510012309080009', 'BANYUWANGI', '2006-07-12', '', '', '', '', '6', '081217685739', '2', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '', '', '', '', 'WAGINI', '', '', '0000-00-00', '', '3', '', 'BOINEM', '', '', '0000-00-00', '', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-01 06:58:06'),
(65, 0, 'Sudah Verifikasi', 'PPDB20210065Spesial', '12345678', 'ANISA MILANDANI', '', 'Perempuan', '', '3510014510060002', '3510010611080034', 'BANYUWANGI', '2006-10-05', '', 'Hindu', 'INDONESIA', 'RINGINAGUNG 003/004, PESANGGARAN, PESANGGARAN, BANYUWANGI', '003', '12345678', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'BEJO', '0', '3510010110400001', '1940-10-01', '3', '4', '', 'RASIYEM', '0', '3510015010500007', '1950-10-10', '3', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '74', '', '0000-00-00', '2021-11-02 01:06:04'),
(66, 0, 'Sudah Verifikasi', 'PPDB20210066Spesial', '12345678', 'JONA RISKI ADI', '', 'Laki-laki', '', '3510220707050005', '3510220104100210', 'BANYUWANGI', '2005-07-07', '', 'Hindu', 'INDONESIA', 'PECEMENGAN 005/001, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '005', '12345678', '001', 'PECEMENGAN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'KASIADI', '0', '3510220505690008', '1969-05-05', '8', '12', '', 'MISILAH', '0', '3510224512800002', '1980-12-05', '6', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '74', '', '0000-00-00', '2021-11-03 01:25:56'),
(67, 0, 'Sudah Verifikasi', 'PPDB20210067Spesial', '12345678', 'JOVI GEBRILLIO', '', 'Laki-laki', '', '3510012411050001', '3510011007100035', 'BANYUWANGI', '2005-11-24', '', '', 'INDONESIA', 'KRAJAN 002/002, KANDANGAN, PESANGGARAN, BANYUWANGI', '002', '082232031021', '002', 'KRAJAN', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'DIDIK HARIYANTO', '08242415767', '3510010704820005', '1983-04-17', '6', '9', '', 'SULIYAH', '6581541372', '3510016804820004', '1982-04-28', '6', '9', '', '', '08242415767', '', '0000-00-00', '', '', '', '', '', '73', '', '0000-00-00', '2021-11-03 02:27:24'),
(68, 0, 'Sudah Verifikasi', 'PPDB20210068Spesial', '12345678', 'FANDRO DANIEL DUWI FALENTINO', '', 'Laki-laki', '', '3510012060001', '3510010410053339', 'BANYUWANGI', '2006-02-06', '', 'Kristen/Protestan', 'INDONESIA', 'RINGINAGUNG 002/001, PESANGGARAN, BANYUWANGI', '002', '083857873826', '001', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'TWIYANTO', '081233106608', '3510011012690010', '1969-12-10', '6', '12', '', 'SUMARTI ANYIPTANI', '081233106608', '3510015811720004', '1972-11-18', '4', '12', '', '', '081233106608', '', '0000-00-00', '', '', '', '', '', '73', '', '0000-00-00', '2021-11-03 02:11:02'),
(69, 0, 'Sudah Verifikasi', 'PPDB20210069Spesial', '12345678', 'EKA REVA LIANA', '', 'Perempuan', '', '3510014402070002', '3510012006110005', 'BANYUWANGI', '2007-02-04', '', 'Islam', 'INDONESIA', 'MULYOSARI 003/001, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '003', '085895831483', '001', 'MULYOSARI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'PONIJO', '085204611260', '3510010805780008', '1976-05-08', '4', '12', '', 'LAMINI YUNIARTI', '085204611260', '3510015203810013', '1981-03-12', '4', '12', '', '', '085204611260', '', '0000-00-00', '', '', '', '', '', '74', '', '0000-00-00', '2021-11-03 02:18:14'),
(70, 0, 'Sudah Verifikasi', 'PPDB20210070Spesial', '12345678', 'RIANTI PUSPITA SARI', '', 'Perempuan', '', '3510014809060003', '3510011706080012', 'BANYUWANGI', '2006-09-08', '', 'Islam', 'INDONESIA', 'PANCER 005/002', '005', '082228104197', '002', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUDIONO', '085796709675', '3510010903510001', '1951-03-09', '4', '12', '', 'MESINAH', '085796709675', '3510014902540002', '1954-02-09', '4', '12', '', '', '085796709675', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-03 02:26:37'),
(71, 0, 'Sudah Verifikasi', 'PPDB20210071Spesial', '12345678', 'NOVITA MAYA RANI', '', 'Perempuan', '', '3510014211060002', '3510012006100031', 'BANYUWANGI', '2006-11-02', '', 'Islam', 'INDONESIA', 'REJOAGUNG 004/001, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '004', '081238829913', '001', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'JANI PRANOTO', '081238829913', '3510011704780003', '1978-04-17', '6', '4', '', 'SULASTRI', '081238829913', '3510014606810003', '1981-06-06', '4', '4', '', '', '081238829913', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-11-02', '2021-11-03 02:34:39'),
(72, 0, 'Sudah Verifikasi', 'PPDB20210072Spesial', '12345678', 'PAUL MAHENDRA', '', 'Laki-laki', '', '3510011505060003', '3510011606090057', 'BANYUWANGI', '2006-05-15', '', 'Hindu', 'INDONESIA', 'TEMBAKUR 001/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '001', '082235453401', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '4', 'Ya', 'KUSENO', '082143116559', '3510010304500004', '1950-04-03', '4', '4', '', 'SUMINI', '082143116559', '3510014810680002', '1968-10-08', '4', '4', '', '', '082143116559', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-12-03', '2021-12-03 00:46:18'),
(73, 0, 'Sudah Verifikasi', 'PPDB20210073', 'rio', 'Rio Krisna Widhiyanto', '', 'Laki-laki', '', '3510020610060002', '3510012608200007', 'Banyuwangi', '2006-10-06', '', 'Hindu', 'Indonesia', '', '2', '081230424016', '2', 'Tembakur', 'Sumbermulyo', 'Pesanggaran', 'Banyuwangi', '', '2', '4', '1', 'Ya', '', '', '', '0000-00-00', '', '', '', 'Iis Gianti', '0', '3510016607880001', '1988-06-27', '6', '1', '1', '', '082143116559', '', '0000-00-00', '', '', '', '', '', '61', '340000', '2021-11-30', '2021-12-01 00:34:13'),
(74, 0, 'Sudah Verifikasi', 'PPDB20210074Spesial', '12345678', 'ARINTA PUTRI WINASARI', '', 'Perempuan', '', '3510225702070002', '3510220101100140', 'BANYUWANGI', '2007-02-17', '', 'Hindu', 'INDONESIA', '', '05', '082231422579', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'SARBINI', '0', '3510012407760001', '1976-07-24', '8', '4', '1', 'TRI WININGSIH', '0', '3510226110840004', '1984-10-21', '6', '1', '1', '', '081336257705', '', '0000-00-00', '', '', '', '', '', '61', '', '0000-00-00', '2021-11-04 02:51:26'),
(75, 0, 'Sudah Verifikasi', 'PPDB20210075Spesial', '12345678', 'DWI KARMELIANA PUTRI', '', 'Perempuan', '', '3510226907060001', '3510010410058737', 'BANYUWANGI', '2006-07-29', '', 'Hindu', 'INDONESIA', '', '04', '081332096727', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', 'Ya', 'MISMAN SUNANDRI', '0', '3510222606620003', '1962-06-26', '4', '4', '1', 'SUPREHATIN', '0', '3510224106760003', '1976-06-01', '4', '4', '1', '', '085231470350', '', '0000-00-00', '', '', '', '', '', '61', '340000', '2021-11-18', '2021-12-01 02:53:46'),
(76, 0, 'Sudah Verifikasi', 'PPDB20210076Spesial', '12345678', 'ZACKY DWI PRAYOGA', '', 'Laki-laki', '', '351002510060001', '3510020710050032', 'BANYUWANGI', '2006-09-25', '', 'Islam', 'INDONESIA', '', '04', '085336315503', '03', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '0', '', 'SUKIR', '0', '3510021211650001', '1968-09-12', '4', '12', '1', 'SITI ASIYAH', '0', '3510024107680011', '1968-03-15', '4', '12', '1', '', '082139575423', '', '0000-00-00', '', '', '', '', '', '78', '', '0000-00-00', '2021-11-18 00:18:51'),
(77, 0, 'Sudah Verifikasi', 'PPDB20210077Spesial', '12345678', 'FERDI YOGA ARDIYANSYAH', '', 'Laki-laki', '', '3510221802070002', '351022270050042', 'BANYUWANGI', '2007-02-18', '', 'Hindu', 'INDONESIA', '', '04', '081332059954', '04', 'SILIRSARI', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', 'Ya', 'YOGIMIN', '0', '3510222208790002', '1979-08-22', '4', '12', '1', 'SRININGSIH', '0', '3510224701820004', '1982-01-07', '6', '12', '1', '', '082335589059', '', '0000-00-00', '', '', '', '', '', '61', '340000', '2021-11-06', '2021-11-06 02:51:05'),
(78, 0, 'Sudah Verifikasi', 'PPDB20210078Spesial', '12345678', 'JENISA CINDY PERMANA', '', 'Perempuan', '', '35100982927', '3510222811100001', 'BANYUWANGI', '2007-06-15', '', 'Kristen/Protestan', 'INDONESIA', '', '01', '081252822703', '01', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '', '', 'ASEP PERMANA YUDA', '0', '', '0000-00-00', '', '4', '1', 'DIANA TRI WAHYUNI', '0', '', '0000-00-00', '', '1', '1', '', '081330772725', '', '0000-00-00', '', '', '', '', '', '75', '340000', '2021-12-03', '2021-12-03 01:54:43'),
(79, 0, 'Sudah Verifikasi', 'PPDB20210079Spesial', '12345678', 'DIVA YOGA PRATAMA', '', 'Laki-laki', '', '3510220205060001', '3510221806090015', 'BANYUWANGI', '2006-05-02', '', 'Kristen/Protestan', 'INDONESIA', '', '03', '082335283010', '02', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'SIH PAMERDI', '0', '3510221606820003', '1982-08-16', '4', '4', '1', 'ISTIARI', '0', '3510226908880003', '1988-08-29', '6', '4', '1', '', '082335690671', '', '0000-00-00', '', '', '', '154', '40', '73', '340000', '2021-12-01', '2021-12-01 00:26:25'),
(80, 0, 'Sudah Verifikasi', 'PPDB20210080Spesial', '12345678', 'NOVIA SAFIATUL FITRI', '', 'Perempuan', '', '3510015011060001', '3510010512160004', 'BANYUWANGI', '2006-11-10', '', 'Islam', 'INDONESIA', '', '02', '081218032778', '01', 'SUNGAI LEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUGIANTO', '085232962574', '3510010404800003', '1980-04-04', '', '14', '', 'SRI YUNIATI', '085232962574', '6503134906810001', '1981-06-09', '', '1', '', '', '085232962574', '', '0000-00-00', '', '', '', '165', '57', '48', '', '0000-00-00', '2021-11-08 02:38:43'),
(81, 0, 'Sudah Verifikasi', 'PPDB20210081Spesial', '12345678', 'AELA FINA YUSNAIDA', '', 'Perempuan', '', '3510015010060002', '3510010410051915', 'BANYUWANGI', '2006-10-10', '', 'Islam', 'INDONESIA', 'RINGINAGUNG 005/004, PESANGGARAN, BANYUWANGI', '005', '082132689541', '004', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'PINTONO', '0', '3510011306680003', '1968-06-13', '4', '4', '', 'PONIYEM', '0', '3510015101740002', '1974-01-11', '6', '4', '', '', '', '', '0000-00-00', '', '', '', '160', '46', '66', '', '0000-00-00', '2021-11-09 00:47:34'),
(82, 0, 'Sudah Verifikasi', 'PPDB20210082Spesial', '12345', 'SELA DWI FEBRIANI', '', 'Perempuan', '', '3510015702060002', '3510010201100086', 'Banyuwangi ', '2006-02-17', '', 'Islam', 'INDONESIA', 'Sumberdadi Kandangan ', '001', '081231136752', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Tidak', 'RIYANTO', '082244771510', '3510010506720006', '1972-06-05', '6', '4', '1', 'MUJIATI', '082244771510', '3510015210780003', '1978-10-12', '4', '4', '1', '', '082244771510', '', '0000-00-00', '', '', '', '', '', '52', '', '0000-00-00', '2021-11-25 01:35:49'),
(83, 0, 'Sudah Verifikasi', 'PPDB20210083Spesial', '12345678', 'SINTA AYU FIRNANDA', '', 'Perempuan', '', '3510015012060001', '3510010404090011', 'Banyuwangi', '2006-12-10', '', 'Islam', 'INDONESIA', 'Sumberdadi kandangan', '001', '081236809042', '002', 'SUMBERDADI', 'KANDANGAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Tidak', 'Sasmito ragil saputro', '081252807577', '3510012908750001', '1975-08-29', '6', '4', '1', 'Endang suliati', '081252807577', '3510016807780002', '1978-07-28', '4', '17', '3', '', '081252807577', '', '0000-00-00', '', '', '', '', '', '52', '', '0000-00-00', '2021-11-25 01:35:24'),
(84, 0, '', 'PPDB20210084Spesial', 'rangga', 'Rangga Adi Pratama', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '628881587297', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '61', '', '0000-00-00', '2021-11-09 14:30:46'),
(85, 0, 'Sudah Verifikasi', 'PPDB20210085Spesial', '12345678', 'REZA DWI TIRTA ANDARIANI', '', 'Perempuan', '', '3510016402070002', '3510011506059867', 'BANYUWANGI', '2007-02-24', '', 'Hindu', 'INDONESIA', '', '03', '081235254558', '01', 'MULYOASRI', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUMIRAN', '0', '3510010604690013', '1969-04-06', '4', '12', '1', 'SUMARMI', '0', '3510014806710004', '1971-06-08', '4', '12', '1', '', '', '', '0000-00-00', '', '', '', '150', '45', '75', '340000', '2021-11-12', '2021-11-13 01:15:13'),
(86, 0, 'Sudah Verifikasi', 'PPDB20210086Spesial', '12345678', 'MUHAMAD HABIBI ROMADON', '', 'Laki-laki', '', '3510011310080002', '3510010309090045', 'BANYUWANGI', '2006-10-13', '', 'Islam', 'INDONESIA', 'TEMBAKUR 002/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '002', '081358303911', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUBANDI', '0', '3510011706630002', '1963-06-17', '8', '4', '', 'MUJINAH', '0', '3510015501750004', '1975-01-15', '4', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '74', '', '0000-00-00', '2021-11-12 02:03:56'),
(87, 0, 'Sudah Verifikasi', 'PPDB20210087Spesial', '12345678', 'KINGKY HANDIKA DARMA KUSUMA', '', 'Laki-laki', '', '3510012208070006', '3510011204090001', 'BANYUWANGI', '2007-08-22', '', 'Islam', 'INDONESIA', 'TEMBAKUR 001/002, SUMBERMULYO, PESANGGARAN, BANYUWANGI', '001', '082334351923', '002', 'TEMBAKUR', 'SUMBERMULYO', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'WIJIONO', '0', '3510010803820003', '1982-08-03', '8', '12', '', 'KASIANI', '0', '3510014612810004', '1981-08-22', '6', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-11-12 02:09:32'),
(89, 0, 'Sudah Verifikasi', 'PPDB20210088Spesial', '12345678', 'SHESILIA CHESYA NEZALUNA', '', 'Perempuan', '', '3510015604070003', '3510010402080016', 'BANYUWANGI', '2007-04-16', '', 'Islam', 'INDONESIA', 'SUNGAI LEMBU 001/002, SUMBERAGUNG, PESANGGARAN, BANYUWANGI', '001', '081234840474', '002', 'SUNGAI LEMBU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'FERIK ANTON SETIAWAN', '0', '3510010101880010', '1988-01-01', '8', '12', '', 'TRI NURCAHYANI', '0', '3510016504880002', '1988-04-25', '6', '12', '', '', '', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-11-15 01:02:22'),
(90, 0, 'Sudah Verifikasi', 'PPDB20210090Spesial', '12345678', 'DIMAS ANGGARA', '', 'Laki-laki', '', '3510072112060001', '3510070512080001', 'BANYUWANGI', '2006-12-21', '', 'Budha', 'INDONESIA', 'RINGINAGUNG 003/006, PESANGGARAN, BANYUWANGI', '003', '081515554595', '006', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '3', '', 'SAMIRAN', '0', '3510072504570002', '1957-04-25', '4', '4', '', 'RUBIYEM', '0', '3510074304700003', '1970-04-03', '4', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-15 01:43:22'),
(91, 0, 'Sudah Verifikasi', 'PPDB20210091Spesial', '12345678', 'NANDA ABELIA', '', '', '', '3510016006070002', '3510010203090098', 'BANYUWANGI', '2007-06-20', '', 'Islam', 'INDONESIA', '', '02', '0881036097079', '06', 'RINGINAGUNG', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', 'Ya', 'TUGI', '0', '3510012211730002', '1973-11-22', '4', '12', '1', 'SITI ALVIYAH', '0', '3510016006070002', '1986-08-20', '6', '12', '1', '', '085330852806', '', '0000-00-00', '', '', '', '150', '38', '66', '', '0000-00-00', '2021-11-16 01:53:10'),
(92, 0, '', 'PPDB20210092Spesial', '12345678', 'NOVERO EGA PRATAMA', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '081335530351', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-11-16 01:29:44'),
(93, 0, '', 'PPDB20210093Spesial', '12345678', 'DANI KURNIAWAN', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '082234177432', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '52', '', '0000-00-00', '2021-11-16 01:30:26'),
(94, 0, '', 'PPDB20210094Spesial', '12345678', 'CANDRA KIRANA', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '082362503206', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '52', '', '0000-00-00', '2021-11-16 01:31:22'),
(95, 0, 'Sudah Verifikasi', 'PPDB20210095Spesial', '12345678', 'ANDIKA DWI PRASTYO', '', 'Laki-laki', '', '3510222809060006', '351001051074', 'BANYUWANGI', '0000-00-00', '', 'Hindu', 'INDONESIA', '', '01', '082228651093', '13', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '2', '', 'SUYANTO', '0', '3510223007750003', '1975-07-30', '4', '10', '1', 'RIGANTI', '0', '3510225302820001', '1982-02-13', '6', '10', '1', '', '081234656054', '', '0000-00-00', '', '', '', '', '', '78', '340000', '2021-11-20', '2021-12-01 00:31:06'),
(96, 0, 'Sudah Verifikasi', 'PPDB20210096Spesial', '12345678', 'ADITYA TRI ARSANA ', '', 'Laki-laki', '', '3510222203060004', '3510222101090016', 'BANYUWANGI', '2006-03-22', '', 'Islam', 'INDONESIA', '', '06', '082141389528', '01', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '3', '', 'SUTRISNO', '0', '3510220906740004', '1974-06-09', '6', '9', '3', 'SUWARNI DWI A ', '0', '3510225603760001', '1976-03-16', '6', '1', '1', '', '082330527363', '', '0000-00-00', '', '', '', '158', '55', '78', '', '0000-00-00', '2021-12-04 02:12:36'),
(97, 0, 'Sudah Verifikasi', 'PPDB20210097Spesial', '12345678', 'WISNU HENDRIKA PUTRA', '', 'Laki-laki', '', '3510221301070001', '3510220810090063', 'BANYUWANGI', '2007-01-13', '', 'Hindu', 'INDONESIA', '', '11', '082310132603', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '2', '', 'SAERAN', '0', '3510220908730003', '1973-08-09', '6', '4', '1', 'YUYUN', '0', '3510225109800005', '1980-09-11', '6', '4', '1', '', '081249261599', '', '0000-00-00', '', '', '', '165', '50', '78', '340000', '2021-11-17', '2021-12-01 02:54:18'),
(98, 0, 'Sudah Verifikasi', 'PPDB20210098Spesial', '12345678', 'DIO DWI RENGGA PRASETYO', '', 'Laki-laki', '', '3510221906070001', '3510221006090079', 'BANYUWANGI', '2007-06-10', '', 'Islam', 'INDONESIA', '', '03', '085607173464', '06', 'SUMBERSUKO', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '0', '', 'SUGITO', '0', '3510221706730002', '1973-07-18', '6', '4', '1', 'SUPIYATI', '0', '3510225107820004', '1962-07-11', '8', '1', '1', '', '082332606590', '', '0000-00-00', '', '', '', '', '', '75', '340000', '2021-11-27', '2021-11-29 05:09:30'),
(99, 0, 'Sudah Verifikasi', 'PPDB20210099Spesial', '12345678', 'ANGGUN MAYA SYAHRANI', '', 'Perempuan', '', '3510225105060005', '3510220208080003', 'BANYUWANGI', '2006-05-17', '', 'Islam', 'INDONESIA', '', '02', '082232728916', '03', 'SIDORUKUN', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'MISKUL HADI', '0', '35102218018200001', '1982-01-18', '6', '12', '1', 'KASIYATI', '0', '3510226511860005', '1988-11-25', '6', '12', '1', '', '085204930251', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-11-18 00:37:24'),
(100, 0, '', 'PPDB20210100Spesial', '12345678', 'SONU DERMAWAN', '', 'Laki-laki', '', '0', '0', 'BANYUWANGI', '2007-06-09', '', 'Islam', 'INDONESIA', 'TEGAL WAGAH 002/002, SILIRAGUNG, BANYUWANGI', '002', '082298735251', '002', 'TEGAL WAGAH', 'KESILIR', 'SILIRAGUNG', 'BANYUWANGI', '', '5', '4', '3', '', 'SUYONO', '0', '', '0000-00-00', '', '4', '', 'SAMIATI', '0', '', '0000-00-00', '', '4', '', '', '', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-11-20 01:22:09'),
(101, 0, 'Sudah Verifikasi', 'PPDB20210101Spesial', '12345678', 'MARANATA DEWI ANGGITA', '', 'Perempuan', '', '3510224501070001', '3510221906090080', 'BANYUWANGI', '2007-01-05', '', '', 'INDONESIA', 'PURWOSARI 003/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '003', '085237331488', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '2', '', 'AGUS HARIYONO', '085231228374', '3510221608740003', '1974-08-16', '4', '4', '', 'FITRIANI', '085231228374', '3510226112840003', '1984-12-21', '4', '4', '', '', '085231228374', '', '0000-00-00', '', '', '', '', '', '73', '340000', '2021-12-03', '2021-12-03 00:37:04'),
(102, 0, 'Sudah Verifikasi', 'PPDB20210102Spesial', '12345678', 'GEA CANDRA WINATA', '', 'Perempuan', '', '3510022551206003', '3510220101100110', 'BANYUWANGI', '2006-12-15', '', 'Kristen/Protestan', 'INDONESIA', 'PURWOSARI 003/002, BULUAGUNG, SILIRAGUNG, BANYUWANGI', '003', '082139962853', '002', 'PURWOSARI', 'BULUAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'YUDIK AGUS WINOTO', '085231477042', '3510222108820010', '1982-08-21', '6', '4', '', 'YULI EKA WATI', '085231477042', '3510224706850003', '1985-06-07', '6', '4', '', '', '085231477042', '', '0000-00-00', '', '', '', '', '', '73', '340000', '2021-11-30', '2021-11-30 00:57:04'),
(103, 0, 'Sudah Verifikasi', 'PPDB20210103Spesial', '12345678', 'JANUASTA YULAIVA RAHMAN', '', 'Perempuan', '', '3510224901070001', '3510222004110033', 'BANYUWANGI', '2007-01-09', '', 'Islam', 'INDONESIA', 'KRAJAN 004/001, SILIRAGUNG, BANYUWANGI', '004', '085337805922', '001', 'KRAJAN', 'SILIRAGUNG', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', 'Ya', 'SUKARMAN', '085655910182', '3510220805770004', '1977-05-08', '6', '10', '', 'RAYIN KUSTIN', '085655910182', '3510224112760002', '1976-12-01', '8', '1', '', '', '085655910182', '', '0000-00-00', '', '', '', '', '', '74', '', '0000-00-00', '2021-11-22 02:28:51'),
(104, 0, 'Sudah Verifikasi', 'PPDB20210104Spesial', '12345678', 'RENIVA SARI', '', 'Perempuan', '', '3510016911060002', '3510010210090011', 'BANYUWANGI', '2006-11-29', '', 'Islam', 'INDONESIA', '', '03', '085215914586', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'TUMIRAN', '0', '3510011910620001', '1962-10-19', '4', '4', '1', 'WATINI', '0', '3510017010720001', '1972-10-30', '4', '1', '1', '', '082337704732', '', '0000-00-00', '', '', '', '', '', '66', '340000', '2021-11-27', '2021-12-01 00:31:55'),
(105, 0, 'Sudah Verifikasi', 'PPDB20210105Spesial', '12345678', 'RIZAL KURNIAWAN', '', 'Laki-laki', '', '3510012205070001', '3510012311090098', 'BANYUWANGI', '2007-05-22', '', 'Islam', 'INDONESIA', '', '02', '082257026495', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Ya', 'KATIMIN', '0', '', '1960-03-01', '4', '12', '1', 'NURYATI', '0', '', '1970-05-02', '4', '4', '1', '', '082257026495', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-11-30', '2021-12-01 00:41:10'),
(106, 0, '', 'PPDB20210106Spesial', '12345678', 'DEWI WULANDARI', '', '', '', '3510016905060003', '3510010307090024', 'BANYUWANGI', '2006-05-29', '', 'Islam', 'INDONESIA', 'KRAJAN 002/002, PESANGGARAN, PESANGGARAN', '002', '081234914926', '002', 'KRAJAN', 'PESANGGARAN', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'PONIDI SANTOSO', '081234914926', '0', '0000-00-00', '', '12', '', 'MISRINI', '081234914926', '0', '0000-00-00', '', '1', '', '', '081234914926', '', '0000-00-00', '', '', '', '', '', '75', '', '0000-00-00', '2021-11-24 01:48:09'),
(107, 0, 'Sudah Verifikasi', 'PPDB20210107Spesial', '12345678', 'DIAN DWI HERMAWAN', '', 'Laki-laki', '', '3510022804050005', '3510020610054476', 'BANYUWANGI', '2005-04-28', '', 'Islam', 'INDONESIA', 'SUMBERJAMBE 005/004, TEMUREJO, BANGOREJO,BANYUWANGI', '005', '087841658983', '004', 'SUMBERJAMBE', 'TEMUREJO', 'BANGOREJO', 'BANYUWANGI', '', '2', '4', '', '', 'KLIMAN', '085204611082', '0', '0000-00-00', '', '12', '', 'MESIYAH', '085204611082', '0', '0000-00-00', '', '12', '', '', '085204611082', '', '0000-00-00', '', '', '', '165', '85', '78', '', '0000-00-00', '2021-11-27 02:19:33'),
(109, 0, 'Sudah Verifikasi', 'PPDB20210109Spesial', '12345678', 'LESTARI NING WAHYU', '', 'Perempuan', '', '351001490406002', '3510010410053050', 'BANYUWANGI', '2006-04-09', '', 'Islam', 'INDONESIA', '', '01', '085335523925', '04', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '0', 'Ya', 'SUWITO', '0', '3510010406660001', '1966-06-04', '4', '12', '1', 'SRIAH', '0', '', '1978-09-29', '4', '12', '1', '', '082334360019', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-11-25 01:31:59'),
(110, 0, 'Sudah Verifikasi', 'PPDB20210110Spesial', '12345678', 'GALYZTHA DWI RENATA', '', 'Perempuan', '', '3510014703070003', '3510011112130001', 'BANYUWANGI', '2007-03-07', '', 'Islam', 'INDONESIA', '', '001', '082114681084', '003', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'PAIDI', '0', '', '0000-00-00', '', '16', '', 'EVA IKE NOVITASARI', '082114681084', '3510015311840002', '1984-11-13', '8', '12', '', '', '082114681084', '', '0000-00-00', '', '', '', '', '', '48', '340000', '2021-11-25', '2021-11-26 03:37:20'),
(111, 0, 'Sudah Verifikasi', 'PPDB20210111Spesial', '12345678', 'ILHAM PRATAMA MILO SEVIC', '', 'Laki-laki', '', '3510012105060003', '3510012112100010', 'BANYUWANGI', '2006-05-21', '', 'Islam', 'INDONESIA', '', '03', '081238732552', '01', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'EDY SUPRAPTO', '0', '3510010507810006', '1981-07-05', '8', '9', '3', 'SRI ASTUTIK', '0', '3510014908850002', '1985-08-09', '6', '1', '1', '', '081335717348', '', '0000-00-00', '', '', '', '170', '60', '48', '', '0000-00-00', '2021-11-27 02:13:29'),
(112, 0, 'Sudah Verifikasi', 'PPDB20210112Spesial', '12345678', 'MIKO HARDIANSYAH', '', 'Laki-laki', '', '3510012503070003', '3510011506090064', 'BANYUWANGI', '2007-03-25', '', 'Islam', 'INDONESIA', '', '05', '085232990037', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'HARIYONO', '0', '3510011508740006', '1974-08-15', '4', '9', '3', 'SONIA DWI LESTARI', '0', '3510016007810006', '1981-07-20', '6', '9', '3', '', '085235901706', '', '0000-00-00', '', '', '', '170', '52', '48', '340000', '2021-12-02', '2021-12-03 00:46:58'),
(113, 0, 'Sudah Verifikasi', 'PPDB20210113Spesial', '1234567890', 'Fauzan Husain Ramadhan', '', 'Laki-laki', '', '3510010110070002', '3510011503170005', 'Banyuwangi', '2007-10-01', '6930008393', 'Islam', 'Indonesia', 'Ringinsari', '04', '081249994338', '03', 'Ringinsari', 'Pesanggaran', 'Pesanggaran', 'Banyuwangi', '', '2', '4', '2', 'Ya', 'SUMARDI', '085334840779', '1609090608640001', '1964-08-06', '4', '4', '4', 'Suprihatin', '', '', '0000-00-00', '', '16', '', 'Jefri fajar afandi', '082234933803', '3510011504930004', '1993-04-15', '8', '12', '', '160', '45', '66', '340000', '2021-11-29', '2021-12-01 00:32:55'),
(114, 0, 'Sudah Verifikasi', 'PPDB20210114Spesial', '12345678', 'JEFRI PARMANTO', '', 'Laki-laki', '', '3510014404060003', '3510010410053031', 'BANYUWANGI', '2006-04-04', '', 'Islam', 'INDONESIA', '', '06', '085331323911', '03', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', '', 'SUTOYO', '0', '', '1964-11-26', '4', '12', '1', 'NASRIPAH', '0', '', '0000-00-00', '', '1', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-27 01:18:42'),
(115, 0, 'Sudah Verifikasi', 'PPDB20210115Spesial', '12345678', 'RISQI SASONGKO WIDHI', '', 'Laki-laki', '', '3510016203040002', '3510011008100036', 'BANYUWANGI', '2007-10-06', '', 'Islam', 'INDONESIA', '', '07', '081357314411', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '4', '', 'MISWANTO', '0', '3510012406660001', '1966-06-24', '6', '4', '1', 'TITIK SUKESI', '0', '3510017112750004', '1975-12-31', '4', '4', '1', '', '082146147245', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-11-27 01:59:51'),
(116, 0, 'Sudah Verifikasi', 'PPDB20210116Spesial', '12345678', 'FIRMAN BAYU ANGGARA', '', '', '', '3510010201070002', '3510011306090090', 'BANYUWANGI', '2007-01-02', '', 'Islam', 'INDONESIA', '', '08', '085259790032', '02', 'REJOAGUNG', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'MAT JUPRI', '0', '3510011506830004', '1983-06-15', '6', '9', '3', 'NURUL HOTIMAH', '0', '3510017009890002', '1989-09-30', '6', '9', '3', '', '085259790032', '', '0000-00-00', '', '', '', '168', '53', '51', '', '0000-00-00', '2021-11-27 02:05:38'),
(117, 0, 'Sudah Verifikasi', 'PPDB20210117Spesial', '12345678', 'ANTONIUS ALDIAN SAPUTRO', '', 'Laki-laki', '', '3510223011050003', '3510220302080009', 'BANYUWANGI', '2005-11-30', '', '', 'INDONESIA', 'KRAJAN 002/001, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '002', '085336129150', '001', 'KRAJAN', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'SASMITO ALSUYITNO', '082310702802', '3510222711790002', '1979-11-27', '4', '4', '', 'EKO JUMIATI', '082310702802', '3510225907840005', '1984-07-19', '6', '4', '', '', '082310702802', '', '0000-00-00', '', '', '', '', '', '78', '', '0000-00-00', '2021-11-30 04:29:17'),
(118, 0, 'Sudah Verifikasi', 'PPDB20210118', '12345678', 'KRISNA BENDI PRADANA', '', 'Laki-laki', '', '3510220503070002', '3510222710100011', 'BANYUWANGI', '2007-03-05', '', 'Hindu', '', '', '12', '082228650996', '02', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'SURYONO', '082139658477', '3510220204800006', '1980-04-21', '4', '12', '', 'MARTINEM', '082139658477', '3510227108860003', '1986-08-31', '4', '12', '', '', '082139658477', '', '0000-00-00', '', '', '', '', '', '78', '', '0000-00-00', '2021-12-04 01:05:30'),
(120, 0, 'Sudah Verifikasi', 'PPDB20210119Spesial', '12345678', 'LUNA MAYU', '', 'Perempuan', '', '3510016706060003', '3510010107090036', 'BANYUWANGI', '2006-06-27', '', 'Islam', 'INDONESIA', '', '03', '082143151179', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'MOHAMAD ALI', '0', '3510010709820003', '1982-09-07', '4', '12', '1', 'MAI SAROH', '0', '3510014107870018', '1987-07-04', '4', '12', '1', '', '081331244114', '', '0000-00-00', '', '', '', '148', '40', '48', '340000', '2021-11-30', '2021-11-30 05:22:33'),
(122, 0, 'Sudah Verifikasi', 'PPDB20210121Spesial', '12345678', 'DARMASANTI', '', 'Perempuan', '', '3510225211040002', '3510220210180001', 'BANYUWANGI', '2004-05-15', '', 'Hindu', 'INDONESIA', 'SENEPOSARI 002/009, BARUREJO, SILIRAGUNG', '002', '083830030224', '009', 'SENEPOSARI', 'BARUREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '3', 'Ya', 'JUMARI', '0886968874769', '1808042508620002', '1962-08-25', '3', '4', '', 'WAGINAH', '0886968874769', '3510224102680009', '1968-02-11', '4', '4', '', '', '0886968874769', '', '0000-00-00', '', '', '', '', '', '76', '', '0000-00-00', '2021-12-03 01:03:22');
INSERT INTO `tb_siswo` (`id`, `id_kelas`, `status_siswa`, `kode_pendaftaran`, `password`, `nama`, `foto`, `jk`, `nisn`, `nik_siswa`, `no_kk`, `tempatlahir_siswa`, `tgllahir_siswa`, `noakte_lahir`, `agama`, `kewarganegaraan`, `alamat_siswa`, `rt`, `nohp`, `rw`, `dusun`, `desa`, `kec`, `kab`, `kodepos`, `tempat_tinggal`, `moda_transportasi`, `anak_berapa`, `punya_kip`, `nama_ayah`, `nohp_ayah`, `nik_ayah`, `tgllahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `nohp_ibu`, `nik_ibu`, `tgllahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nama_wali`, `nohp_wali`, `nik_wali`, `tgllahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `tinggi_badan`, `berat_badan`, `sekolah_asal`, `daftar_ulang`, `tgl_daftar_ulang`, `tgl_daftar`) VALUES
(123, 0, 'Belum Verifikasi', 'PPDB20210123Spesial', '12345678', 'ANDI RAMADANI', '', 'Laki-laki', '', '3510010710060002', '3510010507090037', 'BANYUWANGI', '2006-10-07', '', 'Islam', 'INDONESIA', '', '07', '087775155608', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '', '', 'HADI PRANOTO', '0', '', '0000-00-00', '', '4', '', 'IIN KURNIAWATI', '0', '', '0000-00-00', '', '4', '', '', '', '', '0000-00-00', '', '', '', '165', '55', '48', '340000', '2021-12-01', '2021-12-01 02:44:20'),
(124, 0, 'Sudah Verifikasi', 'PPDB20210124Spesial', '12345678', 'DENIS TEGUH FIRMANSYAH', '', 'Laki-laki', '', '3510013003070002', '3510011408080003', 'BANYUWANGI', '2007-03-30', '', 'Islam', '', '', '04', '085807279758', '01', 'PANCER', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '1', '', 'SUGIYANTO', '0', '3510011001810003', '1980-11-30', '6', '12', '1', 'HENIK YULIATIN', '0', '3510014306840004', '1984-11-03', '6', '12', '1', '', '', '', '0000-00-00', '', '', '', '', '', '48', '', '0000-00-00', '2021-12-01 05:18:36'),
(125, 0, 'Sudah Verifikasi', 'PPDB20210125Spesial', '12345678', 'ADHITYA RIZKI PRAMONO', '', 'Laki-laki', '', '3510221708070002', '3510220801080011', 'BANYUWANGI', '2007-08-17', '', 'Islam', 'INDONESIA', 'SILIRKROMBANG 012/002, SENEPOREJO, SILIRAGUNG, BANYUWANGI', '012', '082111024558', '002', 'SILIRKROMBANG', 'SENEPOREJO', 'SILIRAGUNG', 'BANYUWANGI', '', '2', '4', '1', '', 'ADHIE YUDHA PRAMIARTO', '0', '3510220704800002', '1980-04-07', '8', '4', '', 'MARGARETHA SULIKAH', '0', '3510224507830003', '1983-07-05', '8', '1', '', '', '', '', '0000-00-00', '', '', '', '', '', '78', '', '0000-00-00', '2021-12-04 02:10:24'),
(126, 0, 'Sudah Verifikasi', 'PPDB20210126Spesial', '12345678', 'SHINDI DWI NOVIANTI', '', 'Perempuan', '', '3510016111060001', '3510011306090108', 'BANYUWANGI', '2006-11-21', '', 'Islam', 'INDONESIA', '', '02', '082132396594', '01', 'SILIRBARU', 'SUMBERAGUNG', 'PESANGGARAN', 'BANYUWANGI', '', '2', '4', '2', 'Ya', 'SLAMET RIYANTO', '0', '3510011102740001', '1974-02-11', '4', '4', '1', 'JUMINAH', '0', '3510014507750001', '1975-07-05', '6', '4', '1', '', '', '', '0000-00-00', '', '', '', '', '', '66', '', '0000-00-00', '2021-12-04 01:01:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahun_pelajaran`
--

CREATE TABLE `tb_tahun_pelajaran` (
  `id` int(11) NOT NULL,
  `tahun_awal` year(4) NOT NULL,
  `tahun_akhir` year(4) NOT NULL,
  `status_tahun` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tahun_pelajaran`
--

INSERT INTO `tb_tahun_pelajaran` (`id`, `tahun_awal`, `tahun_akhir`, `status_tahun`) VALUES
(7, 2022, 2023, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahun_pelajaran_siswa`
--

CREATE TABLE `tb_tahun_pelajaran_siswa` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_paralel` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_tahun_pelajaran` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `paralel` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tahun_pelajaran_siswa`
--

INSERT INTO `tb_tahun_pelajaran_siswa` (`id`, `id_siswa`, `id_jurusan`, `id_paralel`, `id_kelas`, `id_tahun_pelajaran`, `kode`, `kelas`, `jurusan`, `paralel`, `created_at`, `updated_at`) VALUES
(19, 23, 4, 1, 1, 6, 1416, 'X', 'TBSM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(20, 26, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(21, 27, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(22, 127, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(23, 136, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(24, 137, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(25, 139, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:03', '2022-02-28 14:51:03'),
(26, 24, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(27, 135, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(28, 140, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(29, 141, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(30, 142, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(31, 143, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(32, 144, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(33, 146, 2, 1, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:51:26', '2022-02-28 14:51:26'),
(34, 138, 3, 1, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(35, 145, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(36, 147, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(37, 148, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(38, 149, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(39, 150, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(40, 151, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(41, 152, 3, 2, 1, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:51:40', '2022-02-28 14:51:40'),
(42, 153, 5, 1, 3, 7, 3517, 'XI', 'TAB', '1', '2022-06-29 13:31:44', '2022-06-29 13:31:44'),
(43, 242, 8, 1, 1, 7, 1817, 'X', 'MPLB', '1', '2022-08-20 13:57:23', '2022-08-20 13:57:23'),
(44, 359, 8, 1, 1, 7, 1817, 'X', 'MPLB', '1', '2022-08-20 13:57:23', '2022-08-20 13:57:23'),
(45, 270, 8, 2, 1, 7, 1827, 'X', 'MPLB', '1', '2022-08-20 14:09:22', '2022-08-20 14:09:22'),
(46, 239, 8, 2, 1, 7, 1827, 'X', 'MPLB', '1', '2022-08-20 14:09:49', '2022-08-20 14:09:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tugas_tambahan`
--

CREATE TABLE `tb_tugas_tambahan` (
  `id` int(11) NOT NULL,
  `id_ptk` int(11) NOT NULL,
  `jabatan_ptk` varchar(200) NOT NULL,
  `nomorsk_tugastambahan` varchar(15) NOT NULL,
  `tmt_tugas_tambahan` date NOT NULL,
  `tst_tugas_tambahan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tugas_tambahan`
--

INSERT INTO `tb_tugas_tambahan` (`id`, `id_ptk`, `jabatan_ptk`, `nomorsk_tugastambahan`, `tmt_tugas_tambahan`, `tst_tugas_tambahan`) VALUES
(1, 2, 'jabatan', '246543624', '2022-01-30', '2022-01-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wali_kelas`
--

CREATE TABLE `tb_wali_kelas` (
  `id` int(11) NOT NULL,
  `id_ptk` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_paralel` int(11) NOT NULL,
  `id_tahun_pelajaran` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `paralel` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_wali_kelas`
--

INSERT INTO `tb_wali_kelas` (`id`, `id_ptk`, `id_kelas`, `id_jurusan`, `id_paralel`, `id_tahun_pelajaran`, `kode`, `kelas`, `jurusan`, `paralel`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 3, 1, 6, 1316, 'X', 'MM', '1', '2022-02-28 14:49:58', '2022-02-28 14:49:58'),
(11, 2, 1, 2, 1, 6, 1216, 'X', 'AKL', '1', '2022-02-28 14:50:13', '2022-02-28 14:50:13'),
(12, 3, 1, 3, 2, 6, 1326, 'X', 'MM', '2', '2022-02-28 14:50:25', '2022-02-28 14:50:25'),
(13, 1, 0, 0, 0, 7, 7, '', '', '', '2022-06-29 13:35:51', '2022-06-29 13:35:51'),
(14, 2, 3, 5, 1, 7, 3517, 'XI', 'TAB', '1', '2022-06-29 13:58:33', '2022-06-29 13:58:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_log_user`
--
ALTER TABLE `tb_log_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nama_pembayaran`
--
ALTER TABLE `tb_nama_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_paralel`
--
ALTER TABLE `tb_paralel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_profile`
--
ALTER TABLE `tb_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_ptk`
--
ALTER TABLE `tb_ptk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_riwayat_sertifikasi`
--
ALTER TABLE `tb_riwayat_sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswo`
--
ALTER TABLE `tb_siswo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tahun_pelajaran`
--
ALTER TABLE `tb_tahun_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tahun_pelajaran_siswa`
--
ALTER TABLE `tb_tahun_pelajaran_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_tugas_tambahan`
--
ALTER TABLE `tb_tugas_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_wali_kelas`
--
ALTER TABLE `tb_wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_log_user`
--
ALTER TABLE `tb_log_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT untuk tabel `tb_nama_pembayaran`
--
ALTER TABLE `tb_nama_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_paralel`
--
ALTER TABLE `tb_paralel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_profile`
--
ALTER TABLE `tb_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_ptk`
--
ALTER TABLE `tb_ptk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_pendidikan`
--
ALTER TABLE `tb_riwayat_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_sertifikasi`
--
ALTER TABLE `tb_riwayat_sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT untuk tabel `tb_siswo`
--
ALTER TABLE `tb_siswo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `tb_tahun_pelajaran`
--
ALTER TABLE `tb_tahun_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_tahun_pelajaran_siswa`
--
ALTER TABLE `tb_tahun_pelajaran_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `tb_tugas_tambahan`
--
ALTER TABLE `tb_tugas_tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_wali_kelas`
--
ALTER TABLE `tb_wali_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
