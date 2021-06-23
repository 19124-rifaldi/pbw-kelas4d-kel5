-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 06:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddingorganizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(3, 'admin', 'site-administrator'),
(4, 'user', 'regular-user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(3, 3),
(3, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(3, 4),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'faldi1@gmail.com', 1, '2021-06-09 11:44:09', 1),
(2, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:05:12', 1),
(3, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:21:54', 1),
(4, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:25:11', 1),
(5, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:28:02', 1),
(6, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:48:07', 1),
(7, '::1', 'faldi1@gmail.com', 1, '2021-06-09 12:58:31', 1),
(8, '::1', 'faldi1@gmail.com', 1, '2021-06-09 21:23:16', 1),
(9, '::1', 'faldi1@gmail.com', 1, '2021-06-09 22:17:00', 1),
(10, '::1', 'faldi1@gmail.com', 1, '2021-06-09 22:31:59', 1),
(11, '::1', 'faldi1@gmail.com', 1, '2021-06-10 02:50:08', 1),
(12, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:11:08', 0),
(13, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:11:31', 0),
(14, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:13:13', 0),
(15, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:13:32', 0),
(16, '::1', 'faldi@gmail.com', NULL, '2021-06-18 06:15:03', 0),
(17, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:16:44', 0),
(18, '::1', 'faldi@gmail.com', 2, '2021-06-18 06:18:36', 1),
(19, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:37:33', 0),
(20, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:37:43', 0),
(21, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:37:49', 0),
(22, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:38:33', 0),
(23, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:38:39', 0),
(24, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:46:20', 0),
(25, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:46:44', 0),
(26, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:46:55', 0),
(27, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 06:47:01', 0),
(28, '::1', 'faldi1@gmail.com', 4, '2021-06-18 06:47:07', 1),
(29, '::1', 'kucing@gmail.com', 3, '2021-06-18 07:03:36', 1),
(30, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 07:26:24', 0),
(31, '::1', 'faldi1@gmail.com', 4, '2021-06-18 07:26:29', 1),
(32, '::1', 'kucing@gmail.com', NULL, '2021-06-18 07:39:41', 0),
(33, '::1', 'kucing@gmail.com', NULL, '2021-06-18 07:39:56', 0),
(34, '::1', 'kucing@gmail.com', 3, '2021-06-18 07:40:07', 1),
(35, '::1', 'faldi1@gmail.com', 4, '2021-06-18 07:40:19', 1),
(36, '::1', 'faldi1@gmail.com', 4, '2021-06-18 07:42:17', 1),
(37, '::1', 'kucing@gmail.com', NULL, '2021-06-18 08:13:51', 0),
(38, '::1', 'kucing@gmail.com', NULL, '2021-06-18 08:14:01', 0),
(39, '::1', 'kucing@gmail.com', 3, '2021-06-18 08:14:08', 1),
(40, '::1', 'kucing@gmail.com', 3, '2021-06-18 08:14:40', 1),
(41, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 08:15:20', 0),
(42, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 08:15:29', 0),
(43, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 08:15:38', 0),
(44, '::1', 'faldi1@gmail.com', NULL, '2021-06-18 08:15:43', 0),
(45, '::1', 'faldi1@gmail.com', 4, '2021-06-18 08:15:50', 1),
(46, '::1', 'faldi1@gmail.com', 4, '2021-06-18 08:58:43', 1),
(47, '::1', 'faldi1@gmail.com', 4, '2021-06-18 09:44:53', 1),
(48, '::1', 'faldi1@gmail.com', 4, '2021-06-18 10:42:31', 1),
(49, '::1', 'kucing@gmail.com', NULL, '2021-06-18 10:44:51', 0),
(50, '::1', 'kucing@gmail.com', NULL, '2021-06-18 10:44:55', 0),
(51, '::1', 'kucing@gmail.com', 3, '2021-06-18 10:45:00', 1),
(52, '::1', 'kucing@gmail.com', 3, '2021-06-18 10:53:13', 1),
(53, '::1', 'faldi1@gmail.com', 4, '2021-06-18 10:54:48', 1),
(54, '::1', 'kucing@gmail.com', 3, '2021-06-18 11:00:52', 1),
(55, '::1', 'faldi1@gmail.com', 4, '2021-06-18 11:02:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(3, 'manage-user', 'manage all user'),
(4, 'manage-profile', 'manage user profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daftarpaket`
--

CREATE TABLE `daftarpaket` (
  `idpaket` int(3) NOT NULL,
  `namapaket` varchar(25) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` varchar(25) NOT NULL,
  `deskbusana` text DEFAULT NULL,
  `deskdekorasi` varchar(1000) DEFAULT NULL,
  `deskmakan` varchar(1000) DEFAULT NULL,
  `desktenda` varchar(1000) DEFAULT NULL,
  `deskdokumentasi` varchar(1000) DEFAULT NULL,
  `deskadat` varchar(1000) DEFAULT NULL,
  `deskinclude` varchar(1000) DEFAULT NULL,
  `deskteam` varchar(1000) DEFAULT NULL,
  `deskhiburan` varchar(1000) DEFAULT NULL,
  `deskprawedding` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftarpaket`
--

INSERT INTO `daftarpaket` (`idpaket`, `namapaket`, `slug`, `harga`, `deskbusana`, `deskdekorasi`, `deskmakan`, `desktenda`, `deskdokumentasi`, `deskadat`, `deskinclude`, `deskteam`, `deskhiburan`, `deskprawedding`) VALUES
(1, 'Ekslusif 1', 'ekslusif1', '19.000.000', 'Makeup Akad CPW Touch Up Resepsi CPW, \r\n1 Kebaya Akad CPW + I Beskap cpp, \r\n2 Gaun Resepsi CPW + 2 Jas Resepsi Cpp, \r\nAksesoris Akad + Resepsi, \r\nFresh Melati Siger Handbouket, \r\nHair Do/Hijab Do (Sesuai Kesepakatan Di awal), \r\nMakeup dan Busana Ibu CPW -e CPP, \r\nBusana Bapak CPW CPP, \r\nMakeup dan Busana pagar Ayu 4 Orang, \r\nBusana Pagar Bagus 2, \r\nMakeup dan Busana Anak-anak (usia 3 tahun s/d kelas 6 SD)', 'Dekorasi Pelaminan 6m x 2.5 Fresh Flowers, \r\nMini Garden Depan Pelaminan, \r\nGapura Masuk, \r\nKotak Amplop 2, \r\nMeja Tamu 1, \r\nDekorasi Kamar Pengantin, \r\nDekorasi Luar Rumah.', '1 set Alat parasmanan stainless, \r\nPiring rotan 100 pcs, \r\nSendok 100 PCS, \r\nMeja Parasmanan.', 'Tenda / Papayon 6 lokal Mega mendung 6 lokal, \r\nPanggung pelaminan 6m x 2.5m, \r\nKursi 100 pcs Sarung kursi 100 pcs.', 'Foto 3 Rolls (110 foto), \r\nSoft copy foto editing, \r\nVidio liputan akad dan resepsi 2 disc.', 'Saweran (ngidung). sungkeman. huap lingkung', 'Henna White / Maroon, \r\nNail art, \r\nMC Wedding Profesional.', '-', '-', '-'),
(2, 'Ekslusif 2', 'ekslusif2', '34.000.000', 'Makeup Akad CPW Touch Up Resepsi CPW, \r\n1 Kebaya Akad CPW + I Beskap cpp, \r\n2 Gaun Resepsi CPW + 2 Jas Resepsi Cpp, \r\nAksesoris Akad + Resepsi, \r\nFresh Melati Siger Handbouket, \r\nHair Do/Hijab Do (Sesuai Kesepakatan Di,  awal)\r\nMakeup dan Busana Ibu CPW -e CPP, \r\nBusana Bapak CPW CPP, \r\nMakeup dan Busana pagar Ayu 4 Orang, \r\nBusana Pagar Bagus 2, \r\nMakeup dan Busana Anak-anak (usia 3 tahun s/d kelas 6 SD)', 'Dekorasi Pelaminan 6m x 2.5 Fresh Flowers, \r\nMini Garden Depan Pelaminan, \r\nGapura Masuk, \r\nKotak Amplop 2, \r\nMeja Tamu 1, \r\nDekorasi Kamar Pengantin, \r\nDekorasi Luar Rumah, ', 'Dekorasi Pelaminan 6m x 2.5 Fresh Flowers, \r\nMini Garden Depan Pelaminan, \r\nGapura Masuk, \r\nKotak Amplop 2, \r\nMeja Tamu 1, \r\nDekorasi Kamar Pengantin, \r\nDekorasi Luar Rumah', 'Tenda / Papayon 8 lokal Mega mendung 8 lokal, \r\nPanggung pelaminan 8m x 2.5m, \r\nKursi 100 pcs Sarung kursi 100 pcs', 'Soft copy foto editing, \r\nVidio liputan akad dan resepsi 2 disc, \r\nFoto keluarga 2 roll (75 foto), \r\nAlbum foto Megazine/Hard cover, ', 'Acara adat :\r\n\r\nSaweran (ngidung). sungkeman. huap lingkung\r\n\r\nUpacara Adat :\r\n\r\nLengser\r\nTeam Mapag Penganten\r\n\r\nSiraman :\r\n\r\nMelati Segar, \r\nMakeup Calon Pengantin, \r\nPemandu, Kecapi Suling, \r\n', 'Henna White / Maroon, \r\nNail art, \r\nDekorasi galeri foto, \r\nMC Wedding Profesional, \r\nMeja akad', '-', '-', '-'),
(3, 'Ekslusif 55', 'ekslusif3', '40.000.000', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1623255417, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `idpesanan` int(3) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `namapaket` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomorhp` varchar(13) NOT NULL,
  `tgl_konsul` date DEFAULT NULL,
  `tgl_pernikahan` date DEFAULT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`idpesanan`, `nama_pemesan`, `namapaket`, `alamat`, `email`, `nomorhp`, `tgl_konsul`, `tgl_pernikahan`, `pesan`) VALUES
(3, 'rifaldi febrianto', 'Ekslusif 1', 'jakarta', 'faldi1@gmail.com', '081212345678', '2021-06-11', '2021-06-11', 'yang bagus ya kak'),
(4, 'rico', 'Ekslusif 1', 'karawang', 'faldi1@gmail.com', '081212345678', '2021-06-11', '2021-06-30', 'oke'),
(5, 'rico senjaya', 'Ekslusif 1', 'jakarta', 'faldi1@gmail.com', '081212345678', '2021-06-15', '2021-06-30', 'yang bagus ya kak');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'kucing@gmail.com', 'febri', '$2y$10$Yp4opnzANcD5W5KPSD4DOeA/WZTChGgI4w.01e2KdaG4JlQm574sK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-18 06:31:04', '2021-06-18 06:31:04', NULL),
(4, 'faldi1@gmail.com', 'rifaldi', '$2y$10$uGwLQR5WVpgk6F3bMMcBvelGBtf7GcB/OmRFIfsJjzvjsSn0acQDy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-18 06:39:47', '2021-06-18 06:39:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `daftarpaket`
--
ALTER TABLE `daftarpaket`
  ADD PRIMARY KEY (`idpaket`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idpesanan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daftarpaket`
--
ALTER TABLE `daftarpaket`
  MODIFY `idpaket` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idpesanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
