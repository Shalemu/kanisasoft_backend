-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2026 at 06:15 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kanisasoft_kanisasoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(255) DEFAULT NULL,
  `acquired_date` date DEFAULT NULL,
  `value` decimal(12,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `category`, `quantity`, `location`, `acquired_date`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Digital Mixer', 'Kuhamishika', 1, 'Kurasini FPCT', '2026-03-16', '120000000.00', NULL, '2026-03-16 15:38:54', '2026-03-16 15:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `giver_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contribution_types`
--

CREATE TABLE `contribution_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contribution_types`
--

INSERT INTO `contribution_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sadaka', '2025-11-17 23:54:09', '2025-11-17 23:54:09'),
(2, 'Fungu la Kumi', '2025-11-17 23:54:09', '2025-11-17 23:54:09'),
(3, 'Maendeleo', '2025-11-17 23:54:09', '2025-11-17 23:54:09'),
(4, 'Misaada Maalum', '2025-11-17 23:54:09', '2025-11-17 23:54:09'),
(6, 'Shukurani', '2026-02-25 17:18:18', '2026-02-25 17:18:18'),
(7, 'Mfuko wa Faraja', '2026-02-27 21:24:07', '2026-02-27 21:24:07'),
(8, 'Harambee', '2026-03-16 15:35:28', '2026-03-16 15:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_members`
--

CREATE TABLE `deleted_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deleted_members`
--

INSERT INTO `deleted_members` (`id`, `user_id`, `full_name`, `email`, `phone`, `gender`, `birth_date`, `reason`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 234, 'aaaaa', 'kaayah9@gmail.comdsdsd', '255676966901', 'M', '2026-03-06', 'deleted manually', 'Tumaini  Peter Kaaya', NULL, '2026-03-21 23:53:15', '2026-03-21 23:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'General',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `time`, `location`, `category`, `description`, `created_at`, `updated_at`) VALUES
(1, 'MAOMBI YA SIKU 40', '2026-01-07', '17:00:00', NULL, 'Washirika', 'Maombi ya mfungo ya siku 40 kwa washirika wote', '2026-01-07 19:54:09', '2026-01-07 19:54:09'),
(2, 'ZAMU ZA WIKI', '2026-01-07', '18:30:00', NULL, 'Washirika', 'Mwinjilist Erick Andrea\nAtakuwa za wiki hii.', '2026-01-07 20:34:54', '2026-01-07 20:34:54'),
(3, 'IBADA TATU', '2026-03-01', NULL, NULL, 'Washirika', 'Kuanzia tarehe 01/03/2026\nIbada ya kwanza ( Kiingereza tu): saa 1:00-2:30 asubuhi.\nIbada ya Pili(Kiswahili): Saa 3:00-5:15 Asubuhi\nIbada ya Tatu(Kiswahili): Saa 5:30-7:30 Mchana.', '2026-02-26 01:24:01', '2026-02-26 01:24:01'),
(4, 'ICNIC YA VIJANA', '2026-03-14', NULL, NULL, 'CYM', 'ICNIC YA VIJANA\nITAKAYOFANYIKA BEACH KALI YA COCOMAS JUMAMOSI YA TAREHE 14 MARCH 2026.', '2026-03-13 22:44:59', '2026-03-13 22:44:59'),
(5, 'PICNIC YA VIJANA', '2026-03-14', '08:00:00', NULL, 'CYM', 'Picnic ya Vijana wa FPCT Kurasini itafanyika Beach Kali ya COCOMAS jumamosi ya tarehe 14 Machi 2026', '2026-03-13 23:10:33', '2026-03-13 23:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `whatsapp_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `leader_id`, `whatsapp_link`, `created_at`, `updated_at`) VALUES
(1, 'SIFA NA MUZIKI', NULL, NULL, '2026-01-03 22:01:58', '2026-01-12 10:12:40'),
(2, 'MEDIA AND ICT', 12, 'https://chat.whatsapp.com/GvAUtDVyrex6yAy7TmzdhH?mode=gi_t', '2026-01-03 22:02:39', '2026-03-19 01:29:02'),
(3, 'WANAUME', NULL, NULL, '2026-01-03 22:02:55', '2026-01-03 22:02:55'),
(4, 'CYM', NULL, NULL, '2026-01-03 22:58:07', '2026-01-12 10:09:14'),
(7, 'WANAWAKE', NULL, NULL, '2026-01-18 14:13:30', '2026-01-18 14:13:30'),
(8, 'WATOTO', NULL, NULL, '2026-01-21 22:12:55', '2026-01-21 22:12:55'),
(10, 'WANANDOA', NULL, NULL, '2026-02-04 19:24:09', '2026-02-04 19:24:09'),
(11, 'DGC', NULL, NULL, '2026-02-04 19:35:25', '2026-02-04 19:35:25'),
(12, 'FGS', NULL, NULL, '2026-02-04 19:35:35', '2026-02-04 19:35:35'),
(13, 'HSP', NULL, NULL, '2026-02-04 19:35:48', '2026-02-04 19:35:48'),
(14, 'HALMASHAURI YA KANISA', NULL, NULL, '2026-02-25 17:20:36', '2026-02-25 17:20:36'),
(15, 'BARAZA LA WAZEE', NULL, NULL, '2026-02-25 18:59:22', '2026-02-25 18:59:22'),
(16, 'INJILI NA MISHENI', NULL, NULL, '2026-02-25 19:00:34', '2026-02-25 19:00:34'),
(17, 'USHERS', NULL, NULL, '2026-03-13 23:25:48', '2026-03-13 23:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `church_origin` varchar(255) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `prayer` tinyint(1) NOT NULL DEFAULT 0,
  `salvation` tinyint(1) NOT NULL DEFAULT 0,
  `joining` tinyint(1) NOT NULL DEFAULT 0,
  `travel` tinyint(1) NOT NULL DEFAULT 0,
  `other` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leader_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `leader_code`, `user_id`, `full_name`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(31, 'LEAD-697a44e4e64b0', 23, 'Julius Kindole', '255719800813', 'kindole72@gmail.com', '2026-01-28 22:18:28', '2026-01-28 22:18:28', 'active'),
(32, 'LEAD-697a450494908', 16, 'Oscar Batista Kindole', '255784824624', 'oscarkindole@gmail.com', '2026-01-28 22:19:00', '2026-01-28 22:19:00', 'active'),
(33, 'LEAD-697a457aa22ca', 25, 'NTULI KAPOLOGWE', '255758833304', 'wapastantuli@gmail.com', '2026-01-28 22:20:58', '2026-01-28 22:20:58', 'active'),
(35, 'LEAD-697b8a1ada794', 19, 'Reuben Bulugu', '255754544438', 'bulugur@yahoo.com', '2026-01-29 21:26:02', '2026-01-29 21:26:02', 'active'),
(37, 'LEAD-6983578421991', 22, 'DAMIAN GERVAS NDABATINYA', '255758047674', 'kigomawax@gmail.com', '2026-02-04 19:28:20', '2026-02-04 19:28:20', 'active'),
(38, 'LEAD-698357c48e0e6', 24, 'Sospeter Bathoha', '255768920734', 'sbathoha@gmail.com', '2026-02-04 19:29:24', '2026-02-04 19:29:24', 'active'),
(39, 'LEAD-698357da069a8', 20, 'Dr. Suleiman Mathew IKOMBA', '255788677472', 'suleimanikomba@gmail.com', '2026-02-04 19:29:46', '2026-02-04 19:29:46', 'active'),
(40, 'LEAD-6983583f58a82', 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-02-04 19:31:27', '2026-02-04 19:31:27', 'active'),
(41, 'LEAD-698358d3c254e', 19, 'Reuben Bulugu', '255754544438', 'bulugur@yahoo.com', '2026-02-04 19:33:55', '2026-02-04 19:33:55', 'active'),
(44, 'LEAD-6985d5634cd50', 15, 'Tumaini  Peter Kaaya', '255712104508', 'kaayah9@gmail.com', '2026-02-06 16:49:55', '2026-02-06 16:49:55', 'active'),
(45, 'LEAD-69957b90de1b3', 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-02-18 13:42:56', '2026-02-18 13:42:56', 'active'),
(46, 'LEAD-69a1eaaa4dc58', 61, 'Wenceslaus Benedict Fungamtama', '255754502656', 'fungamtama@yahoo.com', '2026-02-28 00:04:10', '2026-02-28 00:04:10', 'active'),
(47, 'LEAD-69bd97339ab8a', 63, 'AUGUSTINO MADAKI BONIPHACE', '255757445207', 'tmadaki48@gmail.com', '2026-03-20 22:51:31', '2026-03-20 22:51:31', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `leadership_roles`
--

CREATE TABLE `leadership_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `requires_member` tinyint(1) NOT NULL DEFAULT 1,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leadership_roles`
--

INSERT INTO `leadership_roles` (`id`, `title`, `requires_member`, `protected`, `created_at`, `updated_at`) VALUES
(4, 'mtunza hazina', 1, 1, NULL, NULL),
(7, 'Mwinjilisti na Neno', 1, 0, '2026-01-03 21:12:20', '2026-02-28 00:17:14'),
(8, 'Shemasi', 1, 0, '2026-01-03 21:12:31', '2026-01-03 21:12:31'),
(9, 'Mzee wa Kanisa', 1, 0, '2026-01-07 19:48:02', '2026-02-18 13:49:19'),
(10, 'Kiongozzi wa Media', 1, 0, '2026-01-17 22:51:19', '2026-03-11 00:43:12'),
(12, 'Mchungaji  Kiongozi', 1, 0, '2026-01-18 14:19:28', '2026-01-18 14:19:28'),
(13, 'Katibu wa Kanisa', 1, 0, '2026-01-19 18:11:08', '2026-01-19 18:11:08'),
(14, 'Mzee wa Kanisa Kiongozi', 1, 0, '2026-01-19 18:17:44', '2026-01-19 18:17:44'),
(18, 'Kiongozi wa Media', 1, 0, '2026-02-06 12:47:18', '2026-02-06 12:47:18'),
(19, 'Admin', 1, 0, '2026-03-20 22:52:18', '2026-03-20 22:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `leaders_backup`
--

CREATE TABLE `leaders_backup` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `leadership_role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leaders_backup`
--

INSERT INTO `leaders_backup` (`id`, `leadership_role_id`, `user_id`, `full_name`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(9, 3, 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-01-17 14:56:46', '2026-01-17 14:56:46', 'active'),
(10, 5, 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-01-17 17:13:26', '2026-01-17 17:13:26', 'active'),
(9, 3, 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-01-17 14:56:46', '2026-01-17 14:56:46', 'active'),
(10, 5, 17, 'Isaya Raphael Mwanyamba', '255787001007', 'kakaisaya@gmail.com', '2026-01-17 17:13:26', '2026-01-17 17:13:26', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `leader_leadership_role`
--

CREATE TABLE `leader_leadership_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leader_id` bigint(20) UNSIGNED NOT NULL,
  `leadership_role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leader_leadership_role`
--

INSERT INTO `leader_leadership_role` (`id`, `leader_id`, `leadership_role_id`, `created_at`, `updated_at`) VALUES
(3, 31, 9, '2026-01-28 22:18:28', '2026-01-28 22:18:28'),
(4, 32, 12, '2026-01-28 22:19:00', '2026-01-28 22:19:00'),
(5, 33, 9, '2026-01-28 22:20:58', '2026-01-28 22:20:58'),
(7, 35, 9, '2026-01-29 21:26:02', '2026-01-29 21:26:02'),
(9, 37, 9, '2026-02-04 19:28:20', '2026-02-04 19:28:20'),
(10, 38, 9, '2026-02-04 19:29:24', '2026-02-04 19:29:24'),
(11, 39, 9, '2026-02-04 19:29:46', '2026-02-04 19:29:46'),
(12, 40, 9, '2026-02-04 19:31:27', '2026-02-04 19:31:27'),
(13, 41, 14, '2026-02-04 19:33:55', '2026-02-04 19:33:55'),
(16, 44, 18, '2026-02-06 16:49:55', '2026-02-06 16:49:55'),
(17, 45, 7, '2026-02-18 13:42:56', '2026-02-18 13:42:56'),
(18, 46, 13, '2026-02-28 00:04:10', '2026-02-28 00:04:10'),
(19, 47, 7, '2026-03-20 22:51:31', '2026-03-20 22:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_district` varchar(255) DEFAULT NULL,
  `marital_status` enum('Ameoa','Ameolewa','Hajaoa','Hajaolewa','Mjane','Mgane') DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `residential_zone` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_of_conversion` date DEFAULT NULL,
  `church_of_conversion` varchar(255) DEFAULT NULL,
  `baptism_date` date DEFAULT NULL,
  `baptism_place` varchar(255) DEFAULT NULL,
  `baptizer_name` varchar(255) DEFAULT NULL,
  `baptizer_title` varchar(255) DEFAULT NULL,
  `previous_church` varchar(255) DEFAULT NULL,
  `previous_church_status` varchar(255) DEFAULT NULL,
  `tangu_lini` varchar(255) DEFAULT NULL,
  `church_service` varchar(255) DEFAULT NULL,
  `service_duration` varchar(255) DEFAULT NULL,
  `education_level` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  `work_contact` varchar(255) DEFAULT NULL,
  `lives_alone` tinyint(1) DEFAULT NULL,
  `lives_with` text DEFAULT NULL,
  `family_role` varchar(255) DEFAULT NULL,
  `live_with_who` varchar(255) DEFAULT NULL,
  `next_of_kin` varchar(255) DEFAULT NULL,
  `next_of_kin_phone` varchar(255) DEFAULT NULL,
  `membership_number` varchar(255) DEFAULT NULL,
  `verified_by` varchar(255) DEFAULT NULL,
  `membership_start_date` date DEFAULT NULL,
  `membership_status` enum('pending','active','rejected','deactivated','left','detained','deceased','lost') NOT NULL DEFAULT 'pending',
  `deactivation_reason` varchar(255) DEFAULT NULL,
  `is_authorized` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `full_name`, `gender`, `birth_date`, `birth_place`, `birth_district`, `marital_status`, `spouse_name`, `number_of_children`, `residential_zone`, `phone_number`, `email`, `date_of_conversion`, `church_of_conversion`, `baptism_date`, `baptism_place`, `baptizer_name`, `baptizer_title`, `previous_church`, `previous_church_status`, `tangu_lini`, `church_service`, `service_duration`, `education_level`, `profession`, `occupation`, `work_place`, `work_contact`, `lives_alone`, `lives_with`, `family_role`, `live_with_who`, `next_of_kin`, `next_of_kin_phone`, `membership_number`, `verified_by`, `membership_start_date`, `membership_status`, `deactivation_reason`, `is_authorized`, `created_at`, `updated_at`) VALUES
(12, 15, 'Tumaini  Peter Kaaya', 'M', '2025-12-30', '22 Feb 1991', NULL, 'Ameoa', 'Angela Kalalu', 0, 'Kijichi', '255712104508', 'Kaayah9@gmail.com', '2006-10-07', 'TAG Ungandi B', '2007-12-30', 'TAG Ilongero', 'Mchungaji Musa', 'Mchungaji', NULL, NULL, NULL, 'Media', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimejiajiri', 'Makumbusho', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0043', NULL, NULL, 'active', NULL, 0, '2025-12-31 00:41:05', '2026-02-26 15:40:22'),
(13, 16, 'Oscar Batista Kindole', 'M', '1979-01-04', 'Iringa DC', NULL, 'Ameoa', 'Janet Chisi', 5, 'Kongowe', '255784824624', 'oscarkindole@gmail.com', '1996-10-18', 'George PHC', '1998-01-25', 'George PHC', 'Cesus Tembo', 'Mchungaji', NULL, NULL, NULL, 'Mchungaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', 'FPCT Kurasini', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0001', NULL, NULL, 'active', NULL, 0, '2026-01-02 23:10:00', '2026-01-03 03:15:34'),
(14, 17, 'Isaya Raphael Mwanyamba', 'M', '1979-12-19', 'Handeni TC/Tanga', NULL, 'Ameoa', 'Loveness Mollel', 3, 'Kigamboni', '255787001007', 'kakaisaya@gmail.com', '1990-07-01', 'FPCT Handeni', '1995-12-10', 'FPCT Mombo', 'Gabriel Mwampulo', 'Mchungaji', NULL, NULL, NULL, 'Mzee wa Kanisa', NULL, 'Elimu ya chuo kikuu', 'Biashara za Kimataifa', 'Nimeajiriwa', 'Taasisi ya Uhasibu Tanzania', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0002', NULL, NULL, 'active', NULL, 0, '2026-01-03 11:35:08', '2026-03-11 15:58:08'),
(16, 19, 'Reuben Bulugu', 'M', '1963-04-16', 'Bariadi Simiyu', NULL, 'Ameoa', 'Jane Martine', 5, 'Kongowe', '255754544438', 'bulugur@yahoo.com', '1981-06-08', 'PAG', '1982-01-10', 'PAG Igegu Bariadi', 'Pastor Patroba Nyagori', 'Mchungaji', NULL, NULL, NULL, 'Mzee wa Kanisa', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', 'FPCT-Centre', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0003', NULL, NULL, 'active', NULL, 0, '2026-01-03 22:19:30', '2026-01-03 23:01:17'),
(17, 20, 'Dr. Suleiman Mathew IKOMBA', 'M', '1967-03-05', 'Kigoma Rular KIGOMA', NULL, 'Ameoa', 'Philomena Solomon Muhamila', 3, 'Mgeninani', '255788677472', 'suleimanikomba@gmail.com', '1987-12-06', 'Pentekoste Motomoto', '1987-12-25', 'Bitale Kigoma', 'Askofu Mathayo Suleiman', 'Askofu', NULL, NULL, NULL, 'Mzee wa Kanisa', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', 'Manispaa ya Temeke', 'Box 46343 Dar es Salaam', 0, NULL, NULL, NULL, NULL, NULL, '0004', NULL, NULL, 'active', NULL, 0, '2026-01-04 11:40:19', '2026-01-04 22:37:49'),
(19, 22, 'DAMIAN GERVAS NDABATINYA', 'M', '1972-07-01', 'BUHIGWE KIGOMA', NULL, 'Ameoa', 'GERDA PAULO TEBUYE', 4, 'Tandika', '255758047674', 'kigomawax@gmail.com', '1992-07-10', 'MBEYA PENTECOST CURCH', '1992-09-01', 'MBEYA PENTECOST CHURCH', 'JACKSON MWALYEGO', 'MCHUNGAJI', NULL, NULL, NULL, 'MZEE WA KANISA', NULL, 'Elimu ya chuo', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0005', NULL, NULL, 'active', NULL, 0, '2026-01-07 11:13:50', '2026-01-07 14:22:51'),
(20, 23, 'Julius B Kindole', 'M', '1981-06-03', 'Ilala, Dar Es Salaam', NULL, 'Ameoa', 'Emiliana Peter Kaaya', 4, 'Mgeninani', '255719800813', 'kindole72@gmail.com', '1999-01-10', 'Pentecostal New Hope', '2002-09-21', 'FPCT Kurasini', 'Mch. Daniel Mghenyi', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', 'Printzone Limited', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0006', NULL, NULL, 'active', NULL, 0, '2026-01-07 14:07:25', '2026-03-11 16:11:46'),
(21, 24, 'Sospeter Bathoha', 'M', '1975-04-06', 'Kigoma', NULL, 'Ameoa', 'Elicia Sekishahu Kisoma', 3, 'Mbande', '255768920734', 'sbathoha@gmail.com', '1992-10-20', 'Msimba', '1992-12-19', 'Kamara', 'Pinoni Rilageza', 'Mchungaji', NULL, NULL, NULL, 'Mzee wa Kanisa na Mwimbaji', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', 'Chuo Kikuu cha Kikatoliki Mwenge', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0007', NULL, NULL, 'active', NULL, 0, '2026-01-07 15:08:26', '2026-01-09 10:04:32'),
(22, 25, 'NTULI KAPOLOGWE', 'M', '1985-01-27', 'Mbeya', NULL, 'Ameoa', 'Neema Peter Mndeme', 4, 'Mbande', '255758833304', 'wapastantuli@gmail.com', '2006-04-09', 'EAGT Soweto Mbeya', '2007-01-14', 'Dar es salaam', 'Mchungaji John', 'Mchungaji', NULL, NULL, NULL, 'Ualimu wa Neno, huduma ya Vijana', NULL, 'Elimu ya chuo kikuu', 'Uhasibu na Usimamizi wa miradi', 'Nimeajiriwa', 'Arusha/Mikoa ya Kusini', '0758833304', 0, NULL, NULL, NULL, NULL, NULL, '0008', NULL, NULL, 'active', NULL, 0, '2026-01-17 10:06:48', '2026-01-18 14:14:13'),
(23, 26, 'Neema Mustapha Kiluwasha', 'F', '1994-01-16', 'Bombo Hospital, Tanga', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255658698146', 'neymarkilu@gmail.com', '2010-02-15', 'UKWATA FELLOWSHIP - JANGWANI SEC SCHOOL', '2014-12-21', 'TAG - MZUMBE, MOROGORO', 'Pastor Paul Ponda', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu wa Watoto na Mhudumu', NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0009', NULL, NULL, 'active', NULL, 0, '2026-02-23 10:32:16', '2026-02-23 17:39:06'),
(24, 27, 'Natalia Beza', 'F', '1994-09-11', 'Ilala', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255714991925', 'bezanatalia11@gmail.com', '2019-04-11', 'FPCT KURASINI', '2019-06-01', 'FPCT KURASINI', 'Pastor Jalangila', 'Pastor', NULL, NULL, NULL, 'Shemasi', NULL, 'Elimu ya chuo kikuu', 'Social worker', 'Nimeajiriwa', 'Dart', '0714991925', 0, NULL, NULL, NULL, NULL, NULL, '0010', NULL, NULL, 'active', NULL, 0, '2026-02-23 10:34:16', '2026-02-25 00:16:18'),
(25, 28, 'THEOPHILDA CHRISTOPHER', 'F', '1976-12-26', 'KARAGWE KAGERA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255655323199', 'theophildachristopher@gmail.com', '1999-09-02', 'TEMEKE EAGT', '1999-10-02', 'TEMEKE EAGT', 'MCHUNGAJI DECHA', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI PRAISE TEAM', NULL, 'Elimu ya chuo kikuu', 'UTAWALA', 'Nimeajiriwa', 'MANISPAA KIGAMBONI', 'SLP 36009 KIGAMBONI', 0, NULL, NULL, NULL, NULL, NULL, '0015', NULL, NULL, 'active', NULL, 0, '2026-02-23 11:23:11', '2026-02-24 09:16:42'),
(26, 29, 'Jacob Sanke Nyoni', 'M', '1992-06-16', 'Kyela- Mveya', NULL, 'Ameoa', 'Lydia Joshua Mwansasu', 2, 'Mbande', '255716654579', 'Jacobsanke52@gmail.com', '2014-06-16', 'FPCT', '2007-06-01', 'FPCT-LUTUSYO', 'Mch.SANKE STEVEN NYONI', 'MCHUNGAJI', NULL, NULL, NULL, 'MWALIMU', NULL, 'Elimu ya chuo', 'Mwalimu', 'Nimejiajiri', 'Chamazi', '0716654579', 0, NULL, NULL, NULL, NULL, NULL, '0016', NULL, NULL, 'active', NULL, 0, '2026-02-23 12:02:45', '2026-02-27 14:23:11'),
(27, 30, 'HERIEL GABRIEL', 'M', '1990-08-12', 'KOROGWE/TANGA', NULL, 'Ameoa', 'ROSE DAVID KUMENYA', 1, 'Kigamboni', '255712658038', 'herielgabriel61@gmail.com', '2004-09-05', 'FPCT HALE - TANGA', '2004-09-19', 'FPCT HALE - TANGA', 'MCH. GABRIEL MWAMPULO', 'MCHUNGAJI KIONGOZI FPCT HALE', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya chuo kikuu', 'UHASIBU', 'Nimeajiriwa', 'TRA', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0014', NULL, NULL, 'active', NULL, 0, '2026-02-23 12:34:49', '2026-02-24 09:16:31'),
(28, 31, 'AHUNGU MODKY', 'M', '1987-10-30', 'SINGIDA', NULL, 'Ameoa', 'Eliza', 2, 'Kijichi', '255737774790', 'modky3@yahoo.com', '2002-06-29', 'FPCT KIBAONI', '2004-04-04', 'SINGIDA', 'SENGE', 'MCH.', NULL, NULL, NULL, '-', NULL, 'Elimu ya chuo kikuu', 'IT (DEGREE)', 'Nimeajiriwa', 'FPCTHQ', '0737774790', 0, NULL, NULL, NULL, NULL, NULL, '0013', NULL, NULL, 'active', NULL, 0, '2026-02-23 13:22:45', '2026-02-24 09:16:12'),
(29, 32, 'Amos Samwel Ntandu', 'M', '1980-08-08', 'Ikungi/Singida', NULL, 'Ameoa', 'Eduna Mathayo Msubi', 3, 'Mbande', '255754897675', 'samwelamo@gmail.com', '1998-02-26', 'Nkhoiree', '1998-02-26', 'Nkhoiree', 'Sephania Mtinangi', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', 'Electrician', 'Nimejiajiri', 'Inabadilika', '0754897675', 0, NULL, NULL, NULL, NULL, NULL, '0018', NULL, NULL, 'active', NULL, 0, '2026-02-23 13:29:53', '2026-02-26 16:26:45'),
(30, 33, 'Elicia Sekishaku Kisoma', 'F', '1975-11-30', 'Kakonko/Kigoma', NULL, 'Ameolewa', 'Sospeter Bathoha', 3, 'Mbande', '255754778376', 'kisoma.elicia@gmail.com', '1989-08-20', 'Nyakayenzi', '1989-08-20', 'Nyakayenzi', 'Elia Lusaku', 'Mchungaji', 'Fpct- Kibondo', NULL, NULL, 'Mwimbaji na mwalimu wa watoto', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, NULL, 0, 'Familia yangu', NULL, NULL, NULL, NULL, '0019', NULL, NULL, 'active', NULL, 0, '2026-02-23 14:36:15', '2026-03-02 14:51:23'),
(31, 34, 'Erick Andrea', 'M', '1981-02-04', 'Nyamagana', NULL, 'Ameoa', 'Tumain Daniel', 2, 'Mbande', '255657300333', 'erickandrea217@gmail.com', '2000-12-31', 'FPCT mjini kati- Mwanza', '2001-03-31', 'FPCT- Kitangiri Mwanza', 'Mch Atanazi Chiruza', 'Mchungaji', NULL, NULL, NULL, 'Mwinjiristi', NULL, 'Elimu ya chuo', 'Mhubiri / Public speaker', 'Nimeajiriwa', 'FPCT - Kurasini', '0657 300333', 0, NULL, NULL, NULL, NULL, NULL, '0011', NULL, NULL, 'active', NULL, 0, '2026-02-23 16:08:59', '2026-02-24 00:52:16'),
(32, 35, 'Hannah Kimicha Rwandalla', 'F', '1966-07-07', 'Dar es salaam', NULL, 'Ameolewa', 'Caleb Joel Rwandalla', 3, 'Kizuiani', '255762748397', 'hannah.rwandala@yahoo.com', '1997-09-25', 'FPCT KURASINI', '2005-08-07', 'Pentecostal Kaloleni Arusha', 'Pastor Kulindwa', 'Mchungaji', NULL, NULL, NULL, 'Kusaidia huduma changa na kutoa katika mambo tofauti kanisani.', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimejiajiri', 'Great Vision Nursery and Primary School', '0717552244', 0, NULL, NULL, NULL, NULL, NULL, '0017', NULL, NULL, 'active', NULL, 0, '2026-02-24 02:17:13', '2026-02-24 09:17:16'),
(33, 36, 'Benedicto Mugongo', 'M', '1984-05-01', 'Buhigwe, Kigoma', NULL, 'Ameoa', 'Grace Dalasi', 3, 'Tandika', '255754244794', 'benjos98@yahoo.com', '1999-09-08', 'FPCT Mubanga', '2000-09-06', 'Mubanga', 'Daniford Luhega', 'Mchungaji', NULL, NULL, NULL, 'Kufundisha Sunday school na Ushemasi', NULL, 'Elimu ya chuo kikuu', 'B.Electrical Engineering', 'Nimejiajiri', NULL, '0754244794', 0, NULL, NULL, NULL, NULL, NULL, '0012', NULL, NULL, 'active', NULL, 0, '2026-02-24 09:09:45', '2026-02-24 09:15:07'),
(34, 37, 'Adriano Nashoni Kibhoge', 'M', '1992-10-01', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255742490455', 'Kibhogeadriano@gmail.com', '2010-01-10', 'FPCT NYAMOLI', '2010-04-15', 'FPCT NYAMOLI', 'Boazi Rubhavye', 'Mzee wa kanisa', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Kigambon', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0020', NULL, NULL, 'active', NULL, 0, '2026-02-24 10:04:53', '2026-02-24 14:55:47'),
(35, 38, 'Aman Mdewa Nthangu', 'M', '1991-04-06', 'Masasi/Mtwara', NULL, 'Ameoa', 'Beatrice Elia Mhana', 2, 'Kigamboni', '255755146527', 'amanmdewa@gmail.com', '2002-09-19', 'FPCT MBEYA', '2006-03-14', 'FPCT KURASINI', 'Mch PHILEMON MDACHI', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Mwalimu wa neno na muimbaji', NULL, 'Elimu ya chuo kikuu', 'Uchumi na Biashara za kimataifa', 'Nimeajiriwa', 'Chuo kikuu cha Dar es salaam', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0021', NULL, NULL, 'active', NULL, 0, '2026-02-24 13:11:17', '2026-02-24 14:55:56'),
(36, 39, 'Elizabeth Christopher Migeto', 'F', '1992-02-10', 'TABORA', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255677149158', 'migetoelizabeth1991@gmail.com', '2009-11-12', 'Igunga', '2006-04-15', 'FPCT Mbutu- Igunga', 'Mch Samwel Bethuel', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji DGC', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0023', NULL, NULL, 'active', NULL, 0, '2026-02-24 13:48:07', '2026-02-24 14:58:35'),
(37, 40, 'Neema Kazare', 'F', '1985-02-27', 'Butiama (Mara)', NULL, 'Ameolewa', 'Emmanuel Stephano', 3, 'Yerusalem', '255714842713', 'kazareneema@gmail.com', '1998-06-05', 'Muriaza (Butiama)', '1998-06-27', 'Muriaza (Butiama)', 'Mch. Yohana Muhango', 'Mch. wa Parishi ya Kyabakari', NULL, NULL, NULL, 'Mwalimu wa watoto', NULL, 'Elimu ya chuo', 'Mwalimu', 'Nimeajiriwa', 'S/M Mtoni Sabasaba', 'SLP 46343 DSM', 0, NULL, NULL, NULL, NULL, NULL, '0024', NULL, NULL, 'active', NULL, 0, '2026-02-24 14:26:39', '2026-02-24 14:59:30'),
(38, 41, 'ALFAYO NASHONI KIBOGE', 'M', '1998-04-25', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255755114343', 'alfayokibhoge@gmail.com', '2018-01-07', 'FPCT KIBAONI', '2014-04-06', 'FPCT NYAMOLI', 'JOELI ELIYA', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0022', NULL, NULL, 'active', NULL, 0, '2026-02-24 14:29:17', '2026-02-24 14:57:13'),
(39, 42, 'BEATRICE ELIA MHANA', 'F', '1998-09-07', 'SHINYANGA', NULL, 'Ameolewa', 'AMAN MDEWA NTHANGU', 2, 'Kigamboni', '255764648884', 'mhanabeatrice@gmail.com', '2011-11-06', 'FPCT KATANDALA SUMBAWANGA', '2013-12-21', 'FPCT SINGIDA MJINI KATI', 'MCH BONIPHANCE NTANDU', 'MCHUNGAJI', NULL, NULL, NULL, 'MUIMBAJI', NULL, 'Elimu ya chuo', 'MHASIBU', 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0028', NULL, NULL, 'active', NULL, 0, '2026-02-24 15:31:13', '2026-02-25 11:29:06'),
(40, 43, 'Meshack clement mihayo', 'M', '1992-06-26', 'Shinyanga', NULL, 'Ameoa', 'Jesca yuvinus', 1, 'Mtongani', '255756673176', 'meshackmihayi01@gmail.com', '2011-07-01', 'FPCT Gongo la mboto', '2005-04-21', 'FPCT USHETU', 'Mch. Daudi Ngusa Daniel', 'Mchungaji wa palish', NULL, NULL, NULL, 'Kiongozi wa zoni', NULL, 'Elimu ya chuo', 'Fundi seremala', 'Nimejiajiri', 'Bokolani kwa kabuma', '0756673176/ 0624450226', 0, NULL, NULL, NULL, NULL, NULL, '0030', NULL, NULL, 'active', NULL, 0, '2026-02-24 21:15:23', '2026-02-25 15:53:21'),
(41, 44, 'PERECY BEZA', 'F', '1960-10-07', 'Ngara', NULL, 'Mjane', NULL, 4, 'Keko & Kurasini', '255716668317', 'bezaperecy@gmail.com', '1998-04-17', 'Lutheran', '1998-05-10', 'Baharini', 'Askofu  gwamanjwa', 'Pastor', NULL, NULL, NULL, 'Shemasi', NULL, 'Elimu ya msingi', 'Fundi nguo', 'Nimejiajiri', 'Nyumbani', '0714991925', 0, NULL, NULL, NULL, NULL, NULL, '0042', NULL, NULL, 'active', NULL, 0, '2026-02-24 22:20:48', '2026-02-26 17:54:03'),
(42, 45, 'Veronica chavala', 'F', '1967-04-13', 'Mufindi/Iringa', NULL, 'Ameolewa', 'Shelf Shaltiel', 4, 'Mtongani', '255758295657', 'veronicachavala47@gmail.com', '1997-08-03', 'BCIC', '1997-12-07', 'BCIC', 'Edward Mbanga', 'Mwinjilisti', NULL, NULL, NULL, 'Mhasibu wa kanisa', NULL, 'Elimu ya chuo', 'Mhasibu', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0025', NULL, NULL, 'active', NULL, 0, '2026-02-24 22:25:28', '2026-02-24 23:45:35'),
(43, 46, 'Denis Cleophace', 'M', '1991-05-23', 'Nyamagana/Mwanza', NULL, 'Ameoa', 'Uyanjo Idabu', 1, 'Mbande', '255759076332', 'denisbube22@gmail.com', '2016-06-19', 'FPCT KURASINI', '2016-08-20', 'FPCT KURASINI', 'MCH. JOHANES MWITA', 'MCHUNGAJI', NULL, NULL, NULL, 'Kiongozi wa Idara vijana na Mjumbe kamati ya maendeleo yakanisa', NULL, 'Elimu ya chuo kikuu', 'BACHELOR IN PROCUREMENT AND SUPPLY MANAGEMENT', 'Nimeajiriwa', 'DAWASA', 'P.O.BOX 1573 DAR ES SALAM', 0, NULL, NULL, NULL, NULL, NULL, '0026', NULL, NULL, 'active', NULL, 0, '2026-02-24 23:46:43', '2026-02-26 14:58:25'),
(44, 47, 'Edith Batenzi', 'F', '1992-02-05', 'Ilala', NULL, 'Ameolewa', 'Samwel Batenzi', 0, 'Kigamboni', '255744932734', 'chitedy@gmail.com', '2019-01-05', 'Kurasini', '2019-06-01', 'Kurasini', 'Jilangila', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0027', NULL, NULL, 'active', NULL, 0, '2026-02-25 02:51:21', '2026-02-27 12:28:44'),
(47, 50, 'GLORIA ANDREW MBWAMBO', 'F', '1984-03-30', 'IRINGA MUNICIPAL', NULL, 'Ameolewa', 'WENCESLAUS FUNGAMTAMA', 3, 'Kigamboni', '255762285686', 'gloria.mbwambo@tcbbank.co.tz', '1996-11-24', 'KIHESA  TAG', '2010-06-27', 'JESUS VILLAGE EAGT', 'MCH PRAYGOD MGONJA', 'MCHUNGAJI', NULL, NULL, NULL, 'MAMA MZEE WA KANISA', NULL, 'Elimu ya chuo kikuu', 'ACCOUTANT', 'Nimeajiriwa', 'TCB BANK', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0029', NULL, NULL, 'active', NULL, 0, '2026-02-25 12:30:09', '2026-02-25 12:34:00'),
(48, 51, 'Felix William', 'M', '1994-10-02', 'Korogwe /Tanga', NULL, 'Ameoa', 'Kezia Shertiely', 1, 'Mtongani', '255679320447', 'felixwilliam808@gmail.com', '2013-11-10', 'FPCT MASUGURU', '2014-01-08', 'Korogwe Tanga', 'Mchungaji Mweta', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji kwaya', NULL, 'Elimu ya sekondari', 'Biashara', 'Nimejiajiri', 'Kariakoo', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0035', NULL, NULL, 'active', NULL, 0, '2026-02-25 17:43:48', '2026-02-25 21:29:17'),
(49, 52, 'NOELA MUSSA', 'F', '1990-12-25', 'Mwanza', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255769531914', 'noelamussa@gmail.com', '2003-07-01', 'EAGT MLIMA WA BARAKA', '2007-07-01', 'EAGT MLIMA WA BARAKA', 'Pastor CELCUS BYALUGOLOLA', 'Pastor', NULL, NULL, NULL, 'HSP & MEDIA', NULL, 'Elimu ya chuo kikuu', 'Procurement & supply management', 'Nimejiajiri', 'Kijichi', '0769531914', 1, NULL, NULL, NULL, NULL, NULL, '0031', NULL, NULL, 'active', NULL, 0, '2026-02-25 18:12:55', '2026-02-25 18:37:26'),
(50, 53, 'ANGELA ANTELIMI KALALU', 'F', '1994-11-05', 'Babati Manyara', NULL, 'Ameolewa', 'TUMAINI KAAYA', 0, 'Kijichi', '255787285496', 'angela.kalalu@gmail.com', '2016-06-12', 'TAG', '2018-03-18', 'FPCT KURASINI', 'George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Shemasi', NULL, 'Elimu ya chuo', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0034', NULL, NULL, 'active', NULL, 0, '2026-02-25 18:24:44', '2026-02-25 20:41:28'),
(51, 54, 'Noel Damson Nthangu', 'M', '1986-12-18', 'Newala', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255754774918', 'noel.nthangu@udsm.ac.tz', '2002-04-25', 'Fpct', '2002-06-25', 'Fpct Mbeya', 'Mchungaji Philimoni Mdachi', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Ualimu', NULL, 'Elimu ya chuo kikuu', 'Mchumi', 'Nimeajiriwa', 'Chuo kikuu', '0754774918', 1, NULL, NULL, NULL, NULL, NULL, '0032', NULL, NULL, 'left', 'Amehama', 0, '2026-02-25 18:51:46', '2026-02-26 01:06:33'),
(52, 55, 'Sam Batenzi', 'M', '1988-02-05', 'Mwanza', NULL, 'Ameoa', 'Edith Beza', 0, 'Kigamboni', '255747584779', 'sbatenzi@gmail.com', '2004-06-04', 'FPCT Kitangiri', '2008-03-01', 'FPCT Ngaramtoni', 'Mch. Julius Rukyaa', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji', NULL, 'Elimu ya chuo kikuu', 'Media Tech', 'Nimeajiriwa', 'BBC News', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0033', NULL, NULL, 'active', NULL, 0, '2026-02-25 19:06:15', '2026-02-25 20:11:56'),
(53, 56, 'ANOLD GIDION FUMBUKA', 'M', '1998-10-31', 'KINONDONI / DAR ES SALAAM', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255686360843', 'fumbukajr97@gmail.com', '2011-12-24', 'FPCT UMOJA SECONDARY', '2013-03-23', 'UMOJA SECONDARY', 'CLEMENT MKENI', 'MZEE WA KANISA', NULL, NULL, NULL, 'UIMBAJI, MUZIKI, MITAMBO', NULL, 'Elimu ya chuo kikuu', 'MHANDISI', 'Nimeajiriwa', 'DAR ES SALAAM', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0036', NULL, NULL, 'active', NULL, 0, '2026-02-25 22:00:08', '2026-02-25 22:45:50'),
(54, 57, 'ESTER MATHAYO CHARLES', 'F', '2002-04-01', 'MAGU / MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255612145642', 'estercharles719@gmail.com', '2024-06-21', 'FPCT - KURASINI', '2017-07-11', 'FPCT - NYANGUGE', 'ANDREW CHUMA', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya chuo kikuu', 'UALIMU', 'Nimeajiriwa', 'FPCT - MAKAO MAKUU', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0038', NULL, NULL, 'active', NULL, 0, '2026-02-25 22:13:21', '2026-02-26 00:45:04'),
(55, 58, 'Theresia kindole', 'F', '1993-12-12', 'Temeke Dar es Salaam', NULL, 'Ameolewa', 'Elisha Makiya', 0, 'Mgeninani', '255717480049', 'thersiakindole@gmail.com', '2007-02-02', 'FPCT Kurasini', '2008-02-02', 'FPCT Kurasini', 'Josiah Singu', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'Muhasibu', 'Nimeajiriwa', 'REDESO', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0037', NULL, NULL, 'active', NULL, 0, '2026-02-26 00:36:02', '2026-02-26 00:39:14'),
(56, 59, 'Jane Martin', 'F', '1972-12-28', 'Busega/Simiyu', NULL, 'Ameolewa', 'Reuben Bulugu', 5, 'Kongowe', '255786504664', 'janemartn2@gmail.com', '1985-06-28', 'SDA', '1987-06-12', 'Mkula', 'Jeremia Bugidili', 'Mchungaji', NULL, NULL, NULL, 'Shemasi/Mwana kwaya', NULL, 'Elimu ya msingi', 'Ujasiliamali', 'Nimejiajiri', 'Mitaani', '0766503004', 0, NULL, NULL, NULL, NULL, NULL, '0039', NULL, NULL, 'active', NULL, 0, '2026-02-26 01:05:41', '2026-02-26 01:28:10'),
(57, 60, 'UYANJO JOHN', 'F', '1996-06-08', 'Temeke/Dar es salaam', NULL, 'Ameolewa', 'DENIS CLEOPHACE', 1, 'Mbande', '255674918283', 'uyanjo96@gmail.com', '2019-05-25', 'FPCT KURASINI', '2019-06-01', 'FPCT KURANSINI', 'MCH.OSCAR KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'MWIMBAJI', NULL, 'Elimu ya chuo', 'PLUMBER', 'Nimeajiriwa', 'DAWASA', 'P.O.BOX 1573 DAR ES SALAAM', 0, NULL, NULL, NULL, NULL, NULL, '0041', NULL, NULL, 'active', NULL, 0, '2026-02-26 02:07:11', '2026-02-26 15:29:58'),
(58, 61, 'Wenceslaus Benedict Fungamtama', 'M', '1978-01-09', 'Musoma, Mara', NULL, 'Ameoa', 'Gloria', 3, 'Kigamboni', '255754502656', 'fungamtama@yahoo.com', '1997-03-12', 'EAGT, Nyamanoro, Mwanza', '1998-05-02', 'EAGT, Frelimo, Iringa', 'Mch. John Kilasi', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Mzee wa Kanisa', NULL, 'Elimu ya chuo kikuu', 'Business Administration', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0040', NULL, NULL, 'active', NULL, 0, '2026-02-26 15:27:13', '2026-02-26 15:29:49'),
(59, 62, 'Alam Alexander', 'M', '1994-04-18', 'Kigoma', NULL, 'Ameoa', 'Rachel Andrew Machupa', 0, 'Yerusalem', '255761360607', 'alamalexander3@gmail.com', '2009-02-22', 'FPCT TITYE', '2009-10-11', 'Kigoma', 'Emmanuel Kikutiko', 'Mzee wa Kanisa', NULL, NULL, NULL, 'Mwalimu wa Neno la Mungu', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimejiajiri', 'Ilala Sokoni', '0761360607', 0, NULL, NULL, NULL, NULL, NULL, '0048', NULL, NULL, 'active', NULL, 0, '2026-02-26 16:42:37', '2026-02-27 17:06:12'),
(60, 63, 'AUGUSTINO MADAKI BONIPHACE', 'M', '1984-11-20', 'Nzega, Tabora', NULL, 'Ameoa', 'Emiliana Mwita Nyakaraita', 5, 'Mgeninani', '255757445207', 'tmadaki48@gmail.com', '2006-03-31', 'FPCT', '2008-11-22', 'FPCT KURASINI', 'Josiah Singu', 'Mchungaji', NULL, NULL, NULL, 'Mwinjilisti', NULL, 'Elimu ya chuo kikuu', 'Ualimu', 'Nimeajiriwa', 'FPCT KURASINI', '+255 762 797 806', 0, NULL, NULL, NULL, NULL, NULL, '0044', NULL, NULL, 'active', NULL, 0, '2026-02-27 01:07:31', '2026-02-27 01:18:25'),
(61, 64, 'MAGRETH SYLIVESTER ROBERT', 'F', '1999-03-23', 'NZEGA/TABORA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255746562364', 'magrethrobert23@gmail.com', '2017-06-04', 'EAGT', '2014-04-20', 'EAGT', 'EMANUEL SHANI', 'MCHUNGAJI', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'USIMAMIZI WA BIASHARA', 'Nimeajiriwa', 'FPCT KURASINI', '07284 824624', 0, NULL, NULL, NULL, NULL, NULL, '0045', NULL, NULL, 'active', NULL, 0, '2026-02-27 13:12:03', '2026-02-27 13:35:07'),
(62, 65, 'Kepha Thomas Michael', 'M', '1990-06-26', 'Ikungi', NULL, 'Ameoa', 'Numwagile Ackim Mwakipale', 1, 'Mgeninani', '255713863847', 'kephamichael26@gmail.com', '2011-12-25', 'Fpct -Nkuhi', '2011-12-25', 'Singida', 'Mch.Elia Gwau', 'Mchungaji', NULL, NULL, NULL, 'NIL', NULL, 'Elimu ya chuo kikuu', 'Procurement and logistics management', 'Nimejiajiri', 'National service', 'P.o box 1694 Dsm', 0, NULL, NULL, NULL, NULL, NULL, '0046', NULL, NULL, 'active', NULL, 0, '2026-02-27 13:19:07', '2026-02-27 16:25:48'),
(63, 66, 'JONAS MARCO MPANZO', 'M', '1994-09-10', 'Mwanza', NULL, 'Ameoa', 'Illah', 1, 'Kinondoni', '255767939928', 'mpanzojonas@gmail.com', '2015-08-02', 'EAGT MILE MBILE', '2023-06-03', 'FPCT KURASINI', 'Pastor Oscar Kindole', 'Katibu Mkuu', NULL, NULL, NULL, 'Kuratibu Uchumi CYM FPCT', NULL, 'Elimu ya chuo kikuu', 'Geologist', 'Nimejiajiri', 'JOSTEC', '0767939928', 0, NULL, NULL, NULL, NULL, NULL, '0073', NULL, NULL, 'active', NULL, 0, '2026-02-27 15:59:02', '2026-03-09 15:35:46'),
(64, 67, 'Aloyce Godfrey Beza', 'M', '1988-10-29', 'Ilala', NULL, 'Ameoa', 'Lydia Msabaha', 1, 'Yerusalem', '255713213731', 'bezaaloyce@yahoo.com', '2019-02-14', 'FPCT KURASINI', '2019-03-09', 'FPCT KURASINI', 'Rev. Oscar Kindole', 'Mchngaji Kiongozi', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', NULL, '+255 659 070 800', 0, NULL, NULL, NULL, NULL, NULL, '0047', NULL, NULL, 'active', NULL, 0, '2026-02-27 16:13:16', '2026-02-27 16:26:01'),
(65, 68, 'Lydia Msabaha Midello', 'F', '1991-05-19', 'Ilala - Dar es salaam', NULL, 'Ameolewa', 'Aloyce Beza', 1, 'Yerusalem', '255719453147', 'lydiamsabaha@gmail.com', '2004-02-08', 'Fpct Pwani', '2004-04-24', 'Fpct Kurasini', 'Mchungaji Josiah Singu', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Maombi', NULL, 'Elimu ya chuo', 'Afisa manunuzi', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0050', NULL, NULL, 'active', NULL, 0, '2026-02-27 18:32:32', '2026-03-10 07:42:42'),
(66, 69, 'Ebenezer Mathew', 'M', '2001-07-27', 'Dar es Salaam', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255788359022', 'ebenezer.mathew@icloud.com', '2018-02-27', 'FPCT KURASINI', '2026-03-21', 'FPCT KURASINI', 'MCH. KINDOLE', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'MCHUMI', 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0115', NULL, NULL, 'active', NULL, 0, '2026-02-27 20:20:49', '2026-03-10 12:33:52'),
(67, 70, 'Philomena Solomon Muhamila', 'F', '1976-12-13', 'Kigoma, sanze', NULL, 'Ameolewa', 'Suleiman Mathew Ikomba', 3, 'Mgeninani', '255756945201', 'philomenamuhamila77@gmail.com', '1990-05-08', 'Bigabiro mission', '1991-03-19', 'Bigabiro mission', 'Mwinjilisti Francis Funagu', 'Mwinjilisti', NULL, NULL, NULL, 'Mwombaji', NULL, 'Elimu ya chuo kikuu', 'Elimu', 'Nimeajiriwa', 'Temeke Manispaa', 'P.o.box 46343', 0, NULL, NULL, NULL, NULL, NULL, '0051', NULL, NULL, 'active', NULL, 0, '2026-02-27 20:30:36', '2026-02-28 17:48:36'),
(68, 71, 'David Fredrick Mhando', 'M', '1982-12-12', 'Handeni-Tanga', NULL, 'Ameoa', 'Lucy Obadia Ndilaliha', 3, 'Mgeninani', '255755624764', 'david.mhando82@gmail.com', '1995-07-02', 'FPCT Handeni', '1998-10-01', 'FPCT Handeni', 'Mch. Petro Kipojo', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji na Mpiga Muziki', NULL, 'Elimu ya chuo kikuu', 'Mhandisi', 'Nimeajiriwa', 'TANESCO', '0755624764', 0, NULL, NULL, NULL, NULL, NULL, '0049', NULL, NULL, 'active', NULL, 0, '2026-02-28 01:21:33', '2026-02-28 08:39:21'),
(69, 72, 'Javan Jerome Zablon', 'M', '1988-06-15', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255713625929', 'javan.jerome@gmail.com', '2006-02-01', 'FPCT Mwanga', '2026-08-13', 'FPCT Mwanga', 'Mch. Jeremia Onesmo', 'Mchungaji', NULL, NULL, NULL, 'Punda wa Yesu', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0052', NULL, NULL, 'active', NULL, 0, '2026-02-28 18:38:56', '2026-03-01 17:37:49'),
(70, 73, 'FREDRICK JACOB BALIGOMWA', 'M', '1976-04-30', 'KASULU KIGOMA', NULL, 'Ameoa', 'Sorange Mathias Musavi', 4, 'Tandika', '255784681321', 'jacobbali.jb47@gmail.com', '1995-12-25', 'Biharu', '1995-12-25', 'Biharu', 'Timothy Nkundiye', 'Mchungaji', NULL, NULL, NULL, 'M/Mwenyekiti zone', NULL, 'Elimu ya chuo', 'Civil Technician', 'Nimeajiriwa', 'Tata Africa Holdings T. Ltd', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0076', NULL, NULL, 'active', NULL, 0, '2026-02-28 23:50:39', '2026-03-09 15:38:35'),
(71, 74, 'Ndungutse Yosia Misigaro', 'M', '1985-08-18', 'Kigoma', NULL, 'Ameoa', 'Fatuma Abubakar Ngarama', 2, 'Kinondoni', '255654999179', 'bitanandungutse@yahoo.com', '1997-10-15', 'FPCT BUBANGO', '1999-12-23', 'FPCT Bubango', 'YOHANA MANILAKIZA', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'Mwalimu/ Mtaalamu wa utalii', 'Nimejiajiri', 'Masaki', '+255 654 999 179', 0, NULL, NULL, NULL, NULL, NULL, '0053', NULL, NULL, 'active', NULL, 0, '2026-03-01 00:21:30', '2026-03-01 17:38:08'),
(72, 75, 'Ayoub Isaac Butandu', 'M', '1993-07-04', 'Kibonzo Kigoma', NULL, 'Ameoa', 'Queen Samwel', 1, 'Keko & Kurasini', '255764284549', 'ayoubbutandu@gmail.com', '2007-05-31', 'FPCT KILEMBA', '2008-05-31', 'Kibondo Kigoma', 'Sadock Mbona', 'Shemasi', NULL, NULL, NULL, 'Media', NULL, 'Elimu ya chuo kikuu', 'Mwalimu wa English na Literature (Kiingereza na Fasihi ya Kiingereza', 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0057', NULL, NULL, 'active', NULL, 0, '2026-03-01 01:24:52', '2026-03-02 15:58:42'),
(73, 76, 'Jacqueline  Maduka', 'F', '1987-11-12', 'Maswa', NULL, 'Ameolewa', 'Peter Maduka', 1, 'Mbande', '255673073841', 'budagajacqueline@gmail.com', '2000-04-15', 'TAG', '2000-06-10', 'Maswa', 'Eliud Mahene', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0054', NULL, NULL, 'active', NULL, 0, '2026-03-01 16:31:52', '2026-03-01 17:38:30'),
(74, 77, 'Patrick Ibrahim Makuhi', 'M', '2001-09-13', 'Ilala', NULL, 'Hajaoa', NULL, 0, 'Mgeninani', '255748589142', 'pmakuhi@gmail.com', '2014-09-10', 'FPCT Buguruni', '2014-03-01', 'Kurasini FPCT', 'Pastor kindole', 'Pastor', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0058', NULL, NULL, 'active', NULL, 0, '2026-03-01 17:02:25', '2026-03-02 15:58:43'),
(75, 78, 'Laurencia  Thomas Mlawa', 'F', '1958-10-10', 'Iringa vijijini', NULL, 'Mjane', NULL, 1, 'Kingugi', '255716572056', 'mlawa1958@gmail.com', '1995-07-01', 'FGBF-MWENGE', '1996-07-01', 'Kawe Baharini', 'Romans Mtasingwa', 'Mchungaji', NULL, NULL, NULL, 'Uinjilisti na Maombi', NULL, 'Elimu ya sekondari', 'Katibu mahsusi', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0055', NULL, NULL, 'active', NULL, 0, '2026-03-01 18:17:27', '2026-03-01 18:20:06'),
(76, 79, 'FATUMA ABUBAKARI NGARAMA', 'F', '1990-06-05', 'KAHAMA', NULL, 'Ameolewa', 'NDUNGUTSE YOSIA MISIGARO', 2, 'Kinondoni', '255658588591', 'fatumangarama@yahoo.com', '2006-06-30', 'KIMAHAMA ARUSHA', '2006-12-10', 'KIMAHAMA ARUSHA', 'AYUBU MUNA', 'MCHUNGAJI', NULL, NULL, NULL, 'MUIMBAJI SIFA NA MAABUDU', NULL, 'Elimu ya chuo kikuu', 'Uhasibu', 'Nimejiajiri', 'Sinza', '0658588591', 0, NULL, NULL, NULL, NULL, NULL, '0056', NULL, NULL, 'active', NULL, 0, '2026-03-02 02:03:31', '2026-03-02 14:07:06'),
(77, 80, 'ROSE DAVID KUMENYA', 'F', '1998-06-21', 'TABORA CBD', NULL, 'Ameolewa', 'HERIEL GABRIEL MWAMPULO', 1, 'Kigamboni', '255758625618', 'rosedavir26@icloud.com', '2011-01-23', 'FPCT UMOJA SEKONDARI', '2011-10-16', 'UMOJA SEKONDARI TABORA', 'PASTOR ABEL', 'MCHUNGAJI', NULL, NULL, NULL, 'MUIMBAJI', NULL, 'Elimu ya chuo kikuu', 'AFISA KODI', 'Nimejiajiri', 'KIGAMBONI', '0758625618', 0, NULL, NULL, NULL, NULL, NULL, '0059', NULL, NULL, 'active', NULL, 0, '2026-03-02 21:47:49', '2026-03-02 22:38:32'),
(78, 81, 'Jumanne John Mbilao', 'M', '1973-08-31', 'Sumbawanga- Rukwa', NULL, 'Ameoa', 'Juliana Mboma', 3, 'Kinondoni', '255767800507', 'mbilaojj@gmail.com', '2002-03-03', 'FPCT FOREST MBEYA', '2002-04-03', 'FPCT FOREST MBEYA', 'TBD', 'Mchungaji', NULL, NULL, NULL, 'MWENEKITI WA ZONE', NULL, 'Elimu ya chuo kikuu', 'Mwalimu Mchumi na Demographer', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0060', NULL, NULL, 'active', NULL, 0, '2026-03-03 12:13:31', '2026-03-03 12:16:25'),
(79, 82, 'Doto Geofrey Chima', 'F', '1991-03-02', 'Masasi Mtwara', NULL, 'Ameolewa', 'Boniphace Eliakim Nicodem', 1, 'Mtongani', '255768549003', 'dotochima287@gmail.com', '2008-06-08', 'FPCT MLOWA ITIGI', '2008-07-08', 'FPCT MLOWA ITIGI', 'Mch. Charles Sungi', 'Mchungaji', NULL, NULL, NULL, 'M/kiti wa zoni', NULL, 'Elimu ya chuo', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0066', NULL, NULL, 'active', NULL, 0, '2026-03-03 20:58:33', '2026-03-04 14:52:55'),
(80, 83, 'NEZIA SHELF SHERTIELY', 'F', '2021-04-14', 'ILALA / DAR ES SALAAM', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255767435625', 'neziashertiely@gmail.com', '2021-04-14', 'FPCT KURASINI', '2012-04-14', 'FPCT KURASINI', 'MCHUNGAJI GEORGE MWITA', 'MCHUNGAJI', NULL, NULL, NULL, 'MWALIMU WA WAONGOFU WAPYA', NULL, 'Elimu ya chuo', 'MTUNZA KUMBUKUMBU', 'Nimeajiriwa', 'FPCT MAKAO MAKUU', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0062', NULL, NULL, 'active', NULL, 0, '2026-03-03 22:08:37', '2026-03-04 01:26:40'),
(81, 84, 'Ernest Gyunda', 'M', '1966-10-21', 'Kiomboi', NULL, 'Mgane', NULL, 4, 'Kinondoni', '255784299942', 'ernestgyunda12@gmail.com', '1979-07-01', 'Kanisa la pentekoste Kiomboi', '1979-12-21', 'Kiomboi', 'Elias  Senge', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0061', NULL, NULL, 'active', NULL, 0, '2026-03-03 22:19:15', '2026-03-04 01:26:25'),
(82, 85, 'Joseph William Makange', 'M', '1998-03-29', 'Shinyanga', NULL, 'Ameoa', 'Angel William', 0, 'Kigamboni', '255626536720', 'josephmakange95@gmail.com', '2025-12-20', 'TAG', '2022-07-10', 'TAG Lango la Uzima', 'Mch. Wilson Mahemba', 'Mchungaji', NULL, NULL, NULL, 'Mpigaji wa chombo', NULL, 'Elimu ya chuo kikuu', 'Uhasibu', 'Nimejiajiri', 'Kigamboni', '0626536720', 0, NULL, NULL, NULL, NULL, NULL, '0064', NULL, NULL, 'active', NULL, 0, '2026-03-03 22:38:38', '2026-03-04 14:52:28'),
(83, 86, 'Faraja Anthony Rutebuka', 'F', '1998-05-05', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255758159929', 'anthonyfaraja7@gmail.com', '2010-10-02', 'C.A.G', '2010-11-12', 'Kigoma', 'Bishop Leonard Edson', 'Bishop', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', 'Pharmaceutical Technician', 'Nimeajiriwa', 'Charambe', '0713000076', 1, NULL, NULL, NULL, NULL, NULL, '0063', NULL, NULL, 'active', NULL, 0, '2026-03-03 23:34:35', '2026-03-04 11:20:45'),
(84, 87, 'Witness Morice', 'F', '1977-10-20', 'Kigoma', NULL, 'Ameolewa', 'Morice Michael', 3, 'Mgeninani', '255682956632', 'witnessmorice2@gmail.com', '1996-07-21', 'FPCT Mwandiga', '1996-07-21', 'FPCT Mwandiga', 'Josephat Bwayonga', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0065', NULL, NULL, 'active', NULL, 0, '2026-03-04 01:04:01', '2026-03-04 14:52:35'),
(85, 88, 'Jane Joseph Elias', 'F', '2001-05-27', 'Katavi', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255748375141', 'Josephjane@gmail.com', '2020-03-15', 'FPCT KURASINI', '2020-06-13', 'KURASINI', 'Mch. Mwita', 'Katibu wa FPCT', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', '0', 'Nimeajiriwa', 'Kaliakoo', '0748375141', 0, NULL, NULL, NULL, NULL, NULL, '0078', NULL, NULL, 'active', NULL, 0, '2026-03-04 14:27:16', '2026-03-09 15:40:06'),
(86, 89, 'Angel William Makange', 'F', '2000-05-19', 'Ilemela', NULL, 'Ameolewa', 'Joseph William Makange', 0, 'Kigamboni', '255612639779', 'vijitotours@gmail.com', '2011-06-16', 'EAGT', '2011-06-16', 'EAGT Jiwe la baraka', 'Mch. Sylivester Kilulu', 'Mchungaji', NULL, NULL, NULL, 'Mwinjilisti', NULL, 'Elimu ya chuo kikuu', 'Uhasibu', 'Nimejiajiri', 'Kigamboni', '0612639779', 0, NULL, NULL, NULL, NULL, NULL, '0124', NULL, NULL, 'active', NULL, 0, '2026-03-04 15:40:16', '2026-03-10 18:10:46'),
(87, 90, 'Rachel Gyunda', 'F', '2001-10-15', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255678121710', 'rachelgyunda868@gmail.com', '2019-03-04', 'Fpct kurasini', '2020-06-13', 'Fpct kurasini', 'Mchungaji George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo kikuu', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0069', NULL, NULL, 'active', NULL, 0, '2026-03-04 18:00:10', '2026-03-09 15:32:34'),
(88, 91, 'Baraka Exon', 'M', '1993-06-05', 'Mpanda/Katavi', NULL, 'Ameoa', 'Lydia', 1, 'Kizuiani', '255625604709', 'barakaexon559@gmail.com', '2010-10-01', 'Fpct', '2013-01-08', 'Matandalani', 'Elisha', 'Mwinjiristi', NULL, NULL, NULL, '--------', NULL, 'Elimu ya chuo kikuu', 'Shahada ya Usimamizi wa rasilimali watu', 'Nimeajiriwa', 'Ban', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0077', NULL, NULL, 'active', NULL, 0, '2026-03-07 22:21:44', '2026-03-09 15:39:28'),
(89, 92, 'Rahel Alfredy', 'F', '1987-08-12', 'Kigoma kasulu', NULL, 'Ameolewa', 'MACRICE MBODO', 2, 'Yerusalem', '255759933152', 'rahelrugola87@gmail.com', '2006-12-13', 'Fpct kagunga kasulu', '2007-11-14', 'Fpct kasulu kagunga', 'MCH SHEDRAKI BUNONO', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', 'Ualimu', 'Nimeajiriwa', 'Muhimbili shule ya msingi', '0759933152', 0, NULL, NULL, NULL, NULL, NULL, '0074', NULL, NULL, 'active', NULL, 0, '2026-03-08 17:15:00', '2026-03-09 15:36:34'),
(91, 94, 'Eden Francis', 'M', '1994-08-08', 'Kaliua / Tabora', NULL, 'Ameoa', 'Jane Lwitiko', 1, 'Mtongani', '255689373760', 'edenfrancis17@gmail.com', '2011-03-06', 'Fpct', '2013-08-18', 'Fpct Tabora', 'Andrew Sinunguruza', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Madafu kona', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0123', NULL, NULL, 'active', NULL, 0, '2026-03-09 00:03:46', '2026-03-10 18:09:20'),
(92, 95, 'Naomi Josiah Kabirigi', 'F', '1889-06-21', 'Ngara', NULL, 'Ameolewa', 'Nickson Kataze', 2, 'Mgeninani', '255683246553', 'naomi30@gmail.com', '2009-03-14', 'Bukiriro- Ngara', '2011-03-13', 'Bukiriro-Ngara', 'Daudi Nyabubu', 'Mchungaji', NULL, NULL, NULL, 'Shemasi', NULL, NULL, NULL, 'Nimejiajiri', 'Kariakoo', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0068', NULL, NULL, 'active', NULL, 0, '2026-03-09 13:37:19', '2026-03-09 14:16:04'),
(93, 96, 'Dorcas Vicent Nangonga', 'F', '2003-01-13', 'Rufiji/Pwani', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255673286630', 'dorcasvicent84@gmail.com', '2021-10-20', 'FPCT MPARANGE', '2022-10-17', 'FPCT MPARANGE', 'Musa Emmanuel', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', 'Ugavi na usafirihaji', 'Nimejiajiri', 'Kwa azizi ally', '0673286630', 0, NULL, NULL, NULL, NULL, NULL, '0072', NULL, NULL, 'active', NULL, 0, '2026-03-09 13:46:21', '2026-03-09 15:33:57'),
(94, 97, 'HELMAN EMANNUEL CHARLES', 'M', '1996-07-23', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Tandika', '255783166249', 'herlyemanuel@gmail.com', '2016-08-17', 'FPCT BOGABIRO', '2016-11-08', 'FPCT BOGABIRO', 'Mch, MICHAEL AFLED', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya sekondari', 'DRIVING', 'Nimeajiriwa', 'KARIAKOO', '0612859536', 0, NULL, NULL, NULL, NULL, NULL, '0075', NULL, NULL, 'active', NULL, 0, '2026-03-09 13:46:50', '2026-03-09 15:37:26'),
(96, 99, 'Janeth Mramba', 'F', '1993-12-02', 'Tabora', NULL, 'Ameolewa', 'Johnny Josephat Nyondo', 2, 'Kijichi', '255656740678', 'jmramba25@gmail.com', '2007-10-09', 'T.A.G sumbawanga', '2015-05-02', 'Kurasini', 'Mch George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji , Mwalimu wa watoto', NULL, 'Elimu ya chuo kikuu', 'CPA (T)', 'Nimeajiriwa', 'FPCT HQ', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0067', NULL, NULL, 'active', NULL, 0, '2026-03-09 14:09:19', '2026-03-09 14:15:51'),
(97, 100, 'Richard Mussa Lutobanija', 'M', '2000-01-01', 'Shinyanga', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255672119848', 'richardmussa848@gmail.com', '2021-04-18', 'Tanzania Assembly of God', '2021-07-03', 'Fpct kurasini', 'John masele jilangila', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji/mwalimu wa watoto', NULL, 'Elimu ya chuo', 'Accountant', 'Nimeajiriwa', 'Fpct kurasini', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0070', NULL, NULL, 'active', NULL, 0, '2026-03-09 15:12:08', '2026-03-09 18:28:49'),
(98, 101, 'JOSEPH KAVASHA YUNUS ALEX', 'M', '1995-05-02', 'RUKWA/MPANDA', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255687482953', 'josephalexyunus@gmail.com', '2019-02-03', 'FPCT KURASINI', '2019-03-09', 'FPCT KURASINI', 'Mch.Oscar Kindole', 'MCHUNGAJI', NULL, NULL, NULL, 'Muimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'KARIAKOO', '0687482953', 0, NULL, NULL, NULL, NULL, NULL, '0071', NULL, NULL, 'active', NULL, 0, '2026-03-09 15:14:04', '2026-03-09 15:33:14'),
(99, 102, 'Efraim Bisese', 'M', '2026-05-26', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255713766759', 'efraimbisese@gmail.com', '2016-09-04', 'FPCT MKIGO', '2016-09-04', 'FPCT MKIGO', 'YORAMU MASUNZU', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo kikuu', 'Sayansi ya Miamba (Geology)', 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0080', NULL, NULL, 'active', NULL, 0, '2026-03-09 17:33:48', '2026-03-09 19:21:35'),
(100, 103, 'Daniel Vicent Nangonga', 'M', '2000-03-21', 'Rufiji, Pwani', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255672646219', 'danielnangonga@gmail.com', '2024-10-20', 'FPCT Mkuranga', '2024-11-24', 'FPCT Mkuranga', 'Mussa Ungando', 'Mchungaji', NULL, NULL, NULL, 'HSP, Sound, Media', NULL, 'Elimu ya chuo kikuu', 'Historian, Administrator', 'Nimeajiriwa', 'G4S', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0079', NULL, NULL, 'active', NULL, 0, '2026-03-09 17:45:36', '2026-03-09 18:19:13'),
(101, 104, 'Kelvin Victor Dillunga', 'M', '1987-03-07', 'Kinondoni/Dar es Salaam', NULL, 'Ameoa', 'Esther Essau Mhonda', 1, 'Yerusalem', '255767943911', 'victkelvin@gmail.com', '2007-09-08', 'FPCT KIHONDA MAGOROFANI - UKUMBI WA MFALME SULEIMANI -', '2007-11-10', 'FPCT KIHONDA MAGOROFANI - UKUMBI WA MFALME SULEIMANI -', 'MCH. Leonard Gutaba', 'Mchungaji Kiongozi', NULL, NULL, NULL, 'Mwalimu', NULL, 'Elimu ya chuo kikuu', 'Taaluma ya Maendeleo', 'Nimeajiriwa', 'Dar es Salaam University College of Education', 'kelvin.dillunga@udsm.ac.tz', 0, NULL, NULL, NULL, NULL, NULL, '0094', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:00:53', '2026-03-10 10:20:21'),
(102, 105, 'Lydia Francis julias', 'F', '1996-09-14', 'Mpanda katavi', NULL, 'Ameolewa', 'Baraka Exon mwashitete', 1, 'Kizuiani', '255625254512', 'Lydianyanda@gmail', '2020-06-01', 'Fpct mpanda', '2021-06-14', 'Mpanda katavi', 'Paul macpai', 'Mzee wa kanisa', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', 'Muuguzi', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0111', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:12:03', '2026-03-10 12:15:02'),
(103, 106, 'Deborah Emmanuel Christopher', 'F', '1999-07-10', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255653748496', 'deborachristopher05@gmail.com', '2013-02-16', 'Shule St. Magreth', '2015-04-12', 'Umoja sekondari', 'Mchungaji Reuben', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'Great vision schools', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0085', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:14:06', '2026-03-10 10:16:11'),
(104, 107, 'Grace Oscar kindole', 'F', '2005-12-07', 'Iringa Tagamenda', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255635213724', 'grace.okindole@gmail.com', '2019-01-25', 'Fpct Umoja Secondary', '2021-03-06', 'Fpct Kurasini', 'Mchungaji Jirangira', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0103', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:15:18', '2026-03-10 11:05:34'),
(105, 108, 'Lilian Kameta', 'F', '2000-12-23', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255743767556', 'liliankameta0@gmail.com', '2024-02-15', 'FPCT KURASINI', '2024-10-04', 'FPCT KURASINI', 'Rev. Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, 'Maombi, usafi', NULL, 'Elimu ya chuo kikuu', 'Ualimu', 'Nimeajiriwa', 'Mbagala', '0715243289', 1, NULL, NULL, NULL, NULL, NULL, '0086', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:21:14', '2026-03-10 12:20:34'),
(106, 109, 'Miriam Fredy Mkisi', 'F', '1995-03-08', 'Dar es Saalam', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255687099011', 'miriammkisi95@gmail.com', '2010-07-09', 'FPCT KURASINI', '2013-07-06', 'FPCT KURASINI', 'George Mwita', 'Mchungaji', 'FPCT KURASINI', NULL, NULL, 'Muimbaji', NULL, 'Elimu ya chuo', 'BUSINESS ADMINSTRATION', 'Nimejiajiri', 'POLICE UFUNDI', '0687099011', 0, NULL, NULL, NULL, NULL, NULL, '0084', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:29:46', '2026-03-11 09:39:33'),
(107, 110, 'Paulo Kwilasa', 'M', '1996-02-16', 'Nzega Tabora', NULL, 'Ameoa', 'Neema Silau', 0, 'Yerusalem', '255742660107', 'paulokwilasa20@gmail.com', '2016-09-14', 'Fpct Malagarasi', '2019-06-01', 'Fpct Kurasini', 'Mchungaji Jilangila', 'Mchungaji', NULL, NULL, NULL, 'Usher', NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0081', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:31:29', '2026-03-09 23:05:00'),
(108, 111, 'NEEMA IBRAHIMU', 'F', '1999-11-10', 'TEMEKE', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255625414536', 'hawaomary36@gmail.com', '2013-06-13', 'FPCT KURASINI', '2016-06-25', 'FPCT KURASINI', 'MCH; GEORGE MWITA', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya chuo', 'UALIMU', 'Nimeajiriwa', 'CHAMANZI', '0622521920', 1, NULL, NULL, NULL, NULL, NULL, '0100', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:33:11', '2026-03-10 11:04:20'),
(109, 112, 'Moreen romanus mdemu', 'F', '2002-03-10', 'Iringa wilaya ya mfindi', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255758021689', 'moreenmdemu94@gmail.com', '2016-09-11', 'Agape', '2017-04-10', 'Kisalawe', 'Mchungaji Eliy', 'Mchungaji', NULL, NULL, NULL, 'Ashazi', NULL, 'Elimu ya sekondari', 'Biashara', 'Nimeajiriwa', 'Kariakoo', '0747312964', 0, NULL, NULL, NULL, NULL, NULL, '0087', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:48:28', '2026-03-10 10:16:45'),
(110, 113, 'Esther David Mpinga', 'F', '2000-01-24', 'Singida, Singida', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255679901762', 'hadassahdavid67@gmail.com', '2010-01-01', 'T.A.G - SAYUNI CHRISTIAN CENTER, KISAKI,SINGIDA', '2016-10-14', 'T.A.G -KICC-MOSHI, KILIMANJARO.', 'REV. GLORIOUS SHOO', 'MCHUNGAJI', NULL, NULL, NULL, 'Mwalimu wa watoto, mwimbaji wa kwaya ya FGS, Ushers.', NULL, 'Elimu ya chuo kikuu', 'HUMAN RESOURCES MANAGEMENT', 'Nimeajiriwa', 'Victoria, Noble Center', '+255795559726', 1, NULL, NULL, NULL, NULL, NULL, '0088', NULL, NULL, 'active', NULL, 0, '2026-03-09 20:50:07', '2026-03-10 10:16:56'),
(111, 114, 'Elisha Elia Mbuba', 'M', '1996-08-11', 'Mbozi-Songwe', NULL, 'Ameoa', 'Theresia', 0, 'Kigamboni', '255753019220', 'elishambuba86@gmail.com', '2016-09-11', 'Moravian', '2024-05-05', 'FPCT Kurasini', 'Oscar Kindole', 'Mchungaji Kiongozi', NULL, NULL, NULL, '-', NULL, 'Elimu ya chuo kikuu', 'Mchumi Kilimo na Biashara', 'Nimeajiriwa', 'Bank of Africa', '255753019220', 0, NULL, NULL, NULL, NULL, NULL, '0083', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:24:17', '2026-03-09 23:08:21'),
(112, 115, 'Aneth Amos', 'F', '2006-10-04', 'Daressalaam', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255650877876', 'anethamos145@gmail.com', '2019-06-23', 'Kurasini', '2021-04-10', 'Kurasini', 'Mch. Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0082', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:24:40', '2026-03-09 23:05:15'),
(113, 116, 'Aneth Maila', 'F', '1995-12-25', 'Kigoma mjini', NULL, 'Ameolewa', 'Aneth', 3, 'Kongowe', '255623209891', 'anethmaila234@gmail.com', '2009-04-16', 'FPCT MWANDIGA KIGOMA', '2009-12-24', 'FPCT MWANDIGA KIGOMA', 'ELIAD NATHANAEL', 'MZEE WA KANISA', NULL, NULL, NULL, 'KUOMBA NA KUHUBIRI', NULL, 'Elimu ya chuo kikuu', 'KUELEMISHA KUHUSU MATUMIZI YA FEDHA', 'Nimeajiriwa', 'FPCT HQ', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0099', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:29:09', '2026-03-10 12:25:06'),
(114, 117, 'Elias Pafla', 'M', '1988-03-18', 'Kigoma mjini', NULL, 'Ameoa', 'Dorcas', 1, 'Kizuiani', '255759605163', 'eliaspafla3@gmail.com', '2008-03-27', 'FPCT ujiji', '2008-03-12', 'FPCT ujiji kigoma', 'Mch Philipo', 'Mchungaji', NULL, NULL, NULL, 'Mwanamaombi', NULL, 'Elimu ya chuo', 'Usimamizi wa makasha', 'Nimejiajiri', 'Mbagara', '0759605163', 0, NULL, NULL, NULL, NULL, NULL, '0089', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:31:21', '2026-03-10 10:17:09'),
(115, 118, 'AHAZI EMAU MWENDAPOLE', 'M', '2002-06-05', 'Kasulu Kigoma', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255744948459', 'mwendapoleahaz@gmail.com', '2023-05-12', 'PFCT KURASINI', '2019-11-02', 'TAG KIMARA GORANI', 'Mch.Emmanuel Nikodemasi', 'Mchungaji', NULL, NULL, NULL, 'Uinjilisti', NULL, 'Elimu ya sekondari', 'Fundi guo', 'Nimeajiriwa', 'Keko', '0744948459', 0, NULL, NULL, NULL, NULL, NULL, '0090', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:45:05', '2026-03-10 14:32:00'),
(116, 119, 'Elisha Machimu', 'M', '1995-05-17', 'Geita', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255756915968', 'elishamachimu@gmail.com', '2010-11-13', 'FPCT SIMBO', '2013-03-24', 'UMOJA', 'Mchungaji FPCT SIMBO', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu', NULL, 'Elimu ya chuo kikuu', 'UHASIBU', 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0246', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:55:05', '2026-03-23 16:06:06'),
(117, 120, 'THERESIA EMMANUEL MUSHI', 'F', '1998-05-01', 'Moshi-Kilimanjaro', NULL, 'Ameolewa', 'ELISHA ELIA MBUBA', 0, 'Kigamboni', '255769860746', 'theresiaemmanuel40@gmail.com', '2014-09-09', 'TAG-MATUNDA', '2015-09-09', 'Moshi', 'THOMAS  KIBONA', 'MCHUNGAJI', NULL, NULL, NULL, 'Maombi', NULL, 'Elimu ya chuo kikuu', 'AGRICULTURAL ECONOMIST', 'Nimeajiriwa', 'TEMEKE VETINARY', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0091', NULL, NULL, 'active', NULL, 0, '2026-03-09 21:55:23', '2026-03-10 10:17:54');
INSERT INTO `members` (`id`, `user_id`, `full_name`, `gender`, `birth_date`, `birth_place`, `birth_district`, `marital_status`, `spouse_name`, `number_of_children`, `residential_zone`, `phone_number`, `email`, `date_of_conversion`, `church_of_conversion`, `baptism_date`, `baptism_place`, `baptizer_name`, `baptizer_title`, `previous_church`, `previous_church_status`, `tangu_lini`, `church_service`, `service_duration`, `education_level`, `profession`, `occupation`, `work_place`, `work_contact`, `lives_alone`, `lives_with`, `family_role`, `live_with_who`, `next_of_kin`, `next_of_kin_phone`, `membership_number`, `verified_by`, `membership_start_date`, `membership_status`, `deactivation_reason`, `is_authorized`, `created_at`, `updated_at`) VALUES
(118, 121, 'Witness Johnson Kitaa', 'F', '1999-12-01', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255782252032', 'johnsonwitness7@gmail.com', '2016-03-27', 'FPCT Mlimba-Morogoro', '2016-04-03', 'FPCT Mlimba-Morogoro', 'Nathanael Tamimu Mkupasi', 'Mchungaji kiongozi wa Misheni ya Mlimba jimbo la kilombero', NULL, NULL, NULL, 'Muimbaji (FGS)', NULL, 'Elimu ya chuo', 'Clinical medicine', 'Nimejiajiri', 'Mbagala sabasaba/ sabasaba kwa mpili', '0782252032', 1, NULL, NULL, NULL, NULL, NULL, '0101', NULL, NULL, 'active', NULL, 0, '2026-03-09 22:03:30', '2026-03-10 11:04:51'),
(119, 122, 'ELIZABETH JOHN LUTIGA', 'F', '1972-02-14', 'SINGIDA/ IRAMBA MASHARIKI', NULL, 'Ameolewa', 'JOHN DANIEL MGHENYI', 1, 'Mtongani', '255784492222', 'elizalutiga1@gmail.com', '1993-03-07', 'FPCT KURASINI', '1993-08-11', 'FPCT KURASINI', 'MCH.DANIEL MGHENYI', 'MCHUNGAJI', NULL, NULL, NULL, 'MEMBER KAMATI YA MAENDELEO NA HUDUMA MBALI MBALI', NULL, 'Elimu ya chuo', 'STOREKEEPER / CASHIER', 'Nimeajiriwa', 'RONHEAM COMPANY', '0784934000', 0, NULL, NULL, NULL, NULL, NULL, '0093', NULL, NULL, 'active', NULL, 0, '2026-03-09 22:33:39', '2026-03-10 10:19:35'),
(120, 123, 'Reuben gidion lomayan', 'M', '2002-07-13', 'Arusha', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255762808870', 'Reubengidion0@gmail.com', '2019-08-11', 'Fpct Nadosoito', '2024-10-11', 'Njiro', 'Mchungaji goodluc laizer', 'Makamu Askofu jimbo la Arusha mjini', NULL, NULL, NULL, 'Kujitolea', NULL, 'Elimu ya msingi', 'Fundi umeme wa magari', 'Nimejiajiri', 'Kariakoo kamata', '0762808870', 1, NULL, NULL, NULL, NULL, NULL, '0104', NULL, NULL, 'active', NULL, 0, '2026-03-09 22:48:25', '2026-03-10 11:06:38'),
(121, 124, 'Richard Nassoro Yumba', 'M', '1990-02-09', 'Kigoma', NULL, 'Ameoa', 'Assa Jonathan Kasongo', 1, 'Kigamboni', '255777957412', 'richardnassoroyumba@gmail.com', '2009-06-07', 'Kitangiri', '2009-12-13', 'Mwanza', 'Mzee Masama', 'Mzee wa kanisa', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Nimeajiriwa', 'Rungwe Express Buses', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0102', NULL, NULL, 'active', NULL, 0, '2026-03-09 22:48:51', '2026-03-10 14:29:05'),
(122, 125, 'Penuel onesmo kasasila', 'F', '1999-06-26', 'KAKONKO', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255755413565', 'penuelbaransoba@gmail.com', '2013-09-02', 'GWARAMA', '2013-12-12', 'GWARAMA', 'EVARISTO DAMIAN', 'MHASIBU WA KANISA', NULL, NULL, NULL, 'Mwanamaombi', NULL, 'Elimu ya chuo kikuu', 'UALIMUMU', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0110', NULL, NULL, 'active', NULL, 0, '2026-03-09 22:53:54', '2026-03-10 11:59:55'),
(123, 126, 'Abdon Israel', 'M', '2006-08-26', 'Iramba-Singida', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255765233373', 'israeljrabdon@gmail.com', '2023-12-30', 'FPCT KIMAHAMA ARUSHA', '2024-05-04', 'FPCT KURASINI', 'Pastor Oscar kindole', 'Mchungaji kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0106', NULL, NULL, 'active', NULL, 0, '2026-03-09 23:41:50', '2026-03-10 11:08:16'),
(124, 127, 'JOHN CHRISTOPHER PAZIA', 'M', '1991-06-10', 'Korogwe Tanga', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255763441922', 'iamjohnpazia@gmail.com', '2007-03-06', 'FPCT Mazinde Tanga', '2007-08-05', 'FPCT Mazinde Tanga', 'Mch. Leonard Sebarua', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji&Media', NULL, 'Elimu ya chuo kikuu', 'Mwandishi/Mtangazaji', 'Nimeajiriwa', NULL, '0763441922', 1, NULL, NULL, NULL, NULL, NULL, '0105', NULL, NULL, 'active', NULL, 0, '2026-03-10 00:08:53', '2026-03-10 11:06:44'),
(125, 128, 'Michael D. Michael', 'M', '2000-05-01', 'Tabora', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255683637757', 'michaeldiedone47@gmail.com', '2016-09-25', 'Katuga-FPCT', '2016-12-18', 'Tabora', 'Daniel Saheza', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Kilimo uchumi na biashara', 'Nimeajiriwa', 'Mkuranga', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0109', NULL, NULL, 'active', NULL, 0, '2026-03-10 00:43:02', '2026-03-10 11:59:50'),
(126, 129, 'Edina msubi', 'F', '1985-02-02', 'Mbogwe, Geita', NULL, 'Ameolewa', 'Amos Samwel Ntandu', 3, 'Mbande', '255747013806', 'edinamsubi23@gmail.com', '1996-12-25', 'Mbogwe', '1996-12-25', 'Mbogwe', 'Erasto Mbwire', 'Mchungaji', NULL, NULL, NULL, 'Shemasi', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Kariakoo', '0747013806', 0, NULL, NULL, NULL, NULL, NULL, '0096', NULL, NULL, 'active', NULL, 0, '2026-03-10 08:21:00', '2026-03-10 11:02:43'),
(127, 130, 'Samson Batista Kindole', 'M', '1998-11-21', 'Iringa', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255657402105', 'sonsabak10@gmail.com', '2024-11-30', 'Fpct kurasini', '2013-12-15', 'Fpct city church', 'Mch. Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, 'Fundi Mitambo', NULL, 'Elimu ya sekondari', 'sound engineer,videographer na graphic designer', 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0092', NULL, NULL, 'active', NULL, 0, '2026-03-10 08:22:02', '2026-03-10 10:18:53'),
(128, 131, 'JOHNBOSCO ROBERT NDOMBA', 'M', '2000-04-27', 'RUVUMA', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255783381589', 'johnboscondomba@gmail.com', '2018-05-15', 'KANISA LA MISINGI YA INJILI YA MITUME DUNIANI', '2019-11-17', 'KANISA LA MISINGI YA INJILI YA MITUME DUNIANI', 'ALINOTI CHARLES MRUMBA', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', NULL, '0769273286', 1, NULL, NULL, NULL, NULL, NULL, '0098', NULL, NULL, 'active', NULL, 0, '2026-03-10 09:22:30', '2026-03-10 11:03:43'),
(129, 132, 'Gelda Paulo', 'F', '1980-01-01', 'KIGOMA VIJIJINI/kIGOMA', NULL, 'Ameolewa', 'DAMIAN NDABATINYA', 4, 'Tandika', '255769431353', 'geldapaulo@gmail.com', '1994-07-15', 'FPCT NYARUBANDA', '1995-07-15', 'FPCT NYARUBANDA', 'AMON BIHURUMBA', 'MUINJILISTI', NULL, NULL, NULL, 'MAMA MZEE WA KANISA', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'KARIAKOO', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0095', NULL, NULL, 'active', NULL, 0, '2026-03-10 09:54:20', '2026-03-10 11:02:29'),
(130, 133, 'Jesca Emmanuel Pelembela', 'F', '1993-12-16', 'Pwani', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255656750710', 'jpelembela93@gmail.com', '2020-02-22', 'FPCT Kurasini', '2020-02-29', 'FPCT Kurasini', 'Rev. Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, 'Habari na Mawasiliano', NULL, 'Elimu ya chuo', 'Mwandishi Habari', 'Nimeajiriwa', 'Fundi Mitambo', '0656750710', 1, NULL, NULL, NULL, NULL, NULL, '0107', NULL, NULL, 'active', NULL, 0, '2026-03-10 10:24:37', '2026-03-10 12:52:41'),
(131, 134, 'DANIEL JOHN MGHENYI', 'M', '2003-03-13', 'Mwananyamala/ DAR ES SALAAM', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255692894256', 'danny.johnm13@gmail.com', '2019-03-01', 'FPCT KURASINI', '2020-03-14', 'FPCT KURASINI', 'MCHUNGAJI OSCAR KINDOLE', 'KATIBU WA FPCT NA MCHUNGAJI KIONGOZI', NULL, NULL, NULL, 'HUDUMA MBALI MBALI ZA KUJITOLEA', NULL, 'Elimu ya chuo kikuu', 'ACCOUNTANT', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0097', NULL, NULL, 'active', NULL, 0, '2026-03-10 10:28:26', '2026-03-10 11:03:15'),
(132, 135, 'MILTONI JOHN RUSIGALIYE', 'M', '1992-10-10', 'KIGOMA', NULL, 'Ameoa', 'AGNESTA TANDITSE BALANKANA', 2, 'Kongowe', '255766107442', 'sayunintawiha@gmail.com', '2010-12-24', 'FPCT NYARUBANDA', '2010-12-24', 'FPCT NYARUBANDA', 'MCH. KUMENYA', 'ASKOFU', NULL, NULL, NULL, 'MWIMBAJI', NULL, 'Elimu ya sekondari', 'MJASIRIAMALI', 'Nimejiajiri', 'MBAGALA - KONGOWE', '0766107442', 0, NULL, NULL, NULL, NULL, NULL, '0137', NULL, NULL, 'active', NULL, 0, '2026-03-10 10:36:14', '2026-03-11 00:13:44'),
(133, 136, 'Eliah Samson', 'M', '1994-11-14', 'Mkoa wa tabora', NULL, 'Ameoa', 'Vailethi Saimon', 0, 'Yerusalem', '255627768223', 'eliahsamson@gimail.com', '2019-05-05', 'Fpct kijichi', '2019-09-01', 'Fpct galilaya kasulu mjini', 'Eliya Mafyond', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji wa kwaya', NULL, 'Elimu ya sekondari', 'Dereva', 'Nimeajiriwa', 'Fpct kurasini', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0114', NULL, NULL, 'active', NULL, 0, '2026-03-10 11:13:46', '2026-03-10 12:30:52'),
(134, 137, 'Praygod Yohana', 'M', '1994-11-14', 'Dar-es-salaam', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255717330095', 'praygodyohana@gmail.com', '2024-02-12', 'FPCT KURASINI', '2024-05-05', 'FPCT KURASINI', 'MCHUNGAJI OSCAR KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'Media', NULL, 'Elimu ya chuo kikuu', 'Msimamizi wa biashara', 'Nimejiajiri', 'Mbagala', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0108', NULL, NULL, 'active', NULL, 0, '2026-03-10 11:42:36', '2026-03-10 11:59:37'),
(135, 138, 'ESTA ISRAEL SAMWEL', 'F', '2003-03-26', 'Njombe', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255768651845', 'mordecaiscousin@gmail.com', '2017-10-06', 'E.A.G.T JERUSALEM TEMPLE -MAFINGA', '2023-06-03', 'FPCT KURASINI', 'MCH.OSCAR KINDOLE', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, 'UALIMU', NULL, 'Elimu ya chuo', 'Ugavi na manunuzi', 'Nimejiajiri', 'Kariakoo', '0768651845', 0, NULL, NULL, NULL, NULL, NULL, '0112', NULL, NULL, 'active', NULL, 0, '2026-03-10 11:54:45', '2026-03-10 12:30:35'),
(136, 139, 'Rachel Charles Ng’wavi', 'F', '1999-09-14', 'Njombe', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255625149418', 'rachelcharles062@gmail.com', '2014-09-21', 'EAGT Mgendela', '2014-09-21', 'EAGT Mgendela', 'Mch. Ibrahim Mtonyole', 'Mchungaji kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Nimeajiriwa', 'Posta', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0113', NULL, NULL, 'active', NULL, 0, '2026-03-10 12:09:59', '2026-03-10 12:30:39'),
(137, 140, 'Eliakim Yusuph', 'M', '1996-10-05', 'Buhingwe-Kigoma', NULL, 'Hajaoa', NULL, 0, 'Mgeninani', '255672629274', 'eliakimyusuph@gmail.com', '2008-03-10', 'Anglikani', '2025-12-22', 'Tmc-Boko', 'Alen Siso', 'Askofu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'Temeke', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-10 13:16:55', '2026-03-10 13:16:55'),
(138, 141, 'DAVID GODFREY MADEJE', 'M', '1999-01-07', 'DODOMA', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255754742776', 'davidmadeje69@gmail.com', '2026-03-10', 'TAG URCC DODOMA', '2010-12-10', 'TAG URCC', 'Mch. BEDANI', 'Mchungaji', NULL, NULL, NULL, 'KWAYA (FGS)', NULL, 'Elimu ya chuo', 'MHASIBU', 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-10 14:03:55', '2026-03-10 14:03:55'),
(140, 143, 'Simeon Erasto Rwamugabo', 'M', '1998-05-16', 'Biharamulo-Kagera', NULL, 'Ameoa', 'Lydia Abel Kambona', 1, 'Kijichi', '255629018686', 'mategekopaul86@gmail.com', '2009-09-20', 'FPCT NTUNGAMO', '2009-12-19', 'FPCT NTUNGAMO', 'Mch. Erasto Paulo', 'Mchungaji', NULL, NULL, NULL, 'Mshirika Mwaminifu', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0120', NULL, NULL, 'active', NULL, 0, '2026-03-10 14:40:04', '2026-03-10 17:50:27'),
(141, 144, 'Assa Jonathan Kasongo', 'F', '1998-10-10', 'Dar es salaam', NULL, 'Ameolewa', 'Richard Nassoro Yumba', 1, 'Kigamboni', '255746454024', 'kasongoassa98@gmail.com', '2021-08-21', 'Kurasini', '2012-04-14', 'Kurasini', 'George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0117', NULL, NULL, 'active', NULL, 0, '2026-03-10 15:04:39', '2026-03-10 17:48:21'),
(142, 145, 'Martha Essau Nyaulingo', 'F', '1995-01-25', 'IRINGA Kilolo', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255688063104', 'marthanyaulingo913@gmail.com', '2015-08-05', 'TAG POLICE UFUNDI(GMC', '2015-08-23', 'TAG POLICE UFUNDI GMC', 'REV.WESTON SAMBO', 'Mchungaji kiongozi', NULL, NULL, NULL, 'HSP', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'TEMEKE  MWISHO', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0122', NULL, NULL, 'active', NULL, 0, '2026-03-10 15:16:49', '2026-03-10 17:51:47'),
(143, 146, 'Monica Samwel Yungu', 'F', '1993-05-14', 'Kibondo - Kigoma', NULL, 'Ameolewa', 'Zephania Jacob Nungwi', 0, 'Keko & Kurasini', '255736000391', 'monica.yungu@tpf.go.tz', '2004-04-04', 'Kibondo', '2006-04-01', 'Kibondo', 'Rev. Richard Maige', 'Mchungaji kiongozi ( Kwa sasa ameshafariki)', NULL, NULL, NULL, 'Mwombaji', NULL, 'Elimu ya chuo kikuu', 'Katibu Afya wa Hospitali', 'Nimeajiriwa', 'KRP- RRH', '0756822081', 0, NULL, NULL, NULL, NULL, NULL, '0121', NULL, NULL, 'active', NULL, 0, '2026-03-10 15:52:03', '2026-03-10 17:51:35'),
(144, 147, 'Atuganile Benson Mwambola', 'F', '2003-04-26', 'MBEYA-KYELA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255652655485', 'bensonatu2@gmail.com', '2017-10-03', 'Harrison Uwata Casfeta Fellowship', '2019-04-14', 'Fpct-kyela', 'Laman Mwaiposa', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'Busness Administration', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0118', NULL, NULL, 'active', NULL, 0, '2026-03-10 16:57:33', '2026-03-10 17:48:30'),
(145, 148, 'Agnes Isaya', 'F', '1996-10-18', 'Ikungi Singida', NULL, 'Ameolewa', 'Agnes', 1, 'Kizuiani', '255789841282', 'samwelyagnes3@gmail.com', '2015-07-01', 'EAGT', '2017-12-02', 'Fpct Mtavila', 'Lazaro Frances', 'Mchungaji', NULL, NULL, NULL, 'Muimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0119', NULL, NULL, 'active', NULL, 0, '2026-03-10 17:18:17', '2026-03-10 17:50:12'),
(146, 149, 'Leah January Mvungi', 'F', '1996-04-07', 'Arusha', NULL, 'Ameolewa', 'Evarist Merkiori Mrema', 0, 'Mtongani', '255764757383', 'leahmvungi9@gmail.com', '2011-10-07', 'Maranatha christian centre', '2012-06-17', 'Arusha', 'Askofu Erick Jason Mukwenda', 'Askofu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'Record managment assistant', 'Nimejiajiri', 'Kwa azizi ali', '0764757383', 0, NULL, NULL, NULL, NULL, NULL, '0125', NULL, NULL, 'active', NULL, 0, '2026-03-10 18:02:08', '2026-03-10 18:13:09'),
(147, 150, 'Esther Mhonda', 'F', '1992-04-15', 'Mufindi/Iringa', NULL, 'Ameolewa', 'Kelvin Dillunga', 1, 'Yerusalem', '255758982502', 'esthermhonda@gmail.com', '2016-12-10', 'TAG Iringa', '2017-03-20', 'TAG Iringa', 'Raphael Macha', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0126', NULL, NULL, 'active', NULL, 0, '2026-03-10 18:33:52', '2026-03-10 23:58:04'),
(148, 151, 'Niela frank mahuba', 'F', '1993-10-10', 'Kigoma mjini', NULL, 'Ameolewa', 'Niela  frank', 3, 'Kizuiani', '255769949175', 'nielategemea18@gimail.com', '2013-03-03', 'Katubuka fpct', '2013-03-15', 'Katubuka fpct', 'Mch.Tito julius', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0127', NULL, NULL, 'active', NULL, 0, '2026-03-10 18:48:40', '2026-03-10 23:58:20'),
(149, 152, 'ROGERS SIMON MAGENE', 'M', '1994-10-04', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kongowe', '255759242292', 'rogerssimon236@gmail.com', '2012-12-17', 'KATUBUKA FPCT', '2012-12-22', 'KATUBUKA FPCT', 'NESTORY GOLOBA', 'MZEE WA KANISA', NULL, NULL, NULL, 'MUIMBAJI', NULL, 'Elimu ya sekondari', 'FUNDI', 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0130', NULL, NULL, 'active', NULL, 0, '2026-03-10 18:56:48', '2026-03-10 23:59:25'),
(150, 153, 'Anna Claudian Mayengela', 'F', '1988-09-27', 'Dar es salam,', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255653567111', 'annamayengela55@gmail.com', '2006-04-30', 'FPCT BUNDA', '2006-04-30', 'Bunda ,Mara', 'Mch Muhango', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Nimejiajiri', 'Uwakala', '0653567111', 1, NULL, NULL, NULL, NULL, NULL, '0128', NULL, NULL, 'active', NULL, 0, '2026-03-10 19:03:18', '2026-03-10 23:58:38'),
(151, 154, 'LADSLAUS JOSEPHAT DYUGAMBE', 'M', '2003-08-03', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255679949883', 'cay.2004.08.03jose@gmail.com', '2015-12-20', 'FPCT MURUFITI', '2015-12-24', 'KIGOMA', 'MCH. GANGALA', 'FPCT MURUFITI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'MHASIBU', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0129', NULL, NULL, 'active', NULL, 0, '2026-03-10 19:07:27', '2026-03-10 23:58:43'),
(152, 155, 'David E. Kitundu', 'M', '1996-10-23', 'Ilala/Dar es Salaam', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255752505189', 'kitundudavied@gmail.com', '2014-10-18', 'FPCT KURASINI', '2014-10-18', 'FPCT KURASINI', 'Frank Kadodo', 'Mchungaji', NULL, NULL, NULL, 'Muziki', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', 'Dodoma', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0135', NULL, NULL, 'active', NULL, 0, '2026-03-10 19:55:48', '2026-03-11 00:11:38'),
(153, 156, 'CHRISTINA EZRA BALEGELEJE', 'F', '2001-04-07', 'NYAMAGANA-MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255626616703', 'christinaezra4@gmail.com', '2024-03-20', 'FPCT-KURASINI', '2024-05-04', 'FPCT-KURASINI', 'MCH:-OSCAR KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya chuo kikuu', 'MANAGER-RASILIMALI WATU', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0136', NULL, NULL, 'active', NULL, 0, '2026-03-10 20:58:34', '2026-03-11 00:11:53'),
(154, 157, 'Evarist Mrema', 'M', '1989-03-28', 'Tabora', NULL, 'Ameoa', 'Leah Mvungi', 0, 'Yerusalem', '255652464413', 'evaristj00@gmail.com', '2021-01-09', 'Fpct kurasini', '2021-09-17', 'Fpct kurasini', 'Oscar kindole', 'Mchungaji kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', 'Fundi simu (muuzaji na mtengenezaji )', 'Nimejiajiri', 'Kariakoo', '0652464413', 0, NULL, NULL, NULL, NULL, NULL, '0131', NULL, NULL, 'active', NULL, 0, '2026-03-10 22:23:32', '2026-03-11 00:10:32'),
(155, 158, 'KAIROS ELIPHASI STEPHANO', 'M', '2003-05-05', 'KATAVI', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255613898604', 'kairosmajaliwa@gmail.com', '2024-03-10', 'F.P.C.T KURASINI', '2024-05-04', 'FPCT KURASIN', 'OSCAR KINDOLE', 'Mchungaji', NULL, NULL, NULL, 'Usher', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, '0613898604', 0, NULL, NULL, NULL, NULL, NULL, '0132', NULL, NULL, 'active', NULL, 0, '2026-03-10 22:27:17', '2026-03-11 00:10:49'),
(156, 159, 'Elisha Emmanuel Mkodo', 'M', '2004-06-30', 'Kagera Bukoba', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255775752868', 'ellyemmanuel492@gmail.com', '2016-12-26', 'DEEPER LIFE BIBLE CHURCH', '2016-12-26', 'Mto kanoni', 'Mch Emmanuel Mkodo', 'Askofu', NULL, NULL, NULL, 'Mwanamuziki', NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0133', NULL, NULL, 'active', NULL, 0, '2026-03-10 22:31:25', '2026-03-11 00:11:02'),
(157, 160, 'Erika Jastin Ngao', 'F', '2001-09-27', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255775251894', 'Elizabethmgao41@gmail.com', '2024-02-25', 'Fpct kurasin', '2024-05-04', 'Fpct  kurasin', 'MCHUNGAJI  OSCAR  KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya sekondari', 'Mjasiliamali', 'Nimejiajiri', 'Mtongani', '0775251894', 1, NULL, NULL, NULL, NULL, NULL, '0134', NULL, NULL, 'active', NULL, 0, '2026-03-10 23:21:36', '2026-03-11 00:11:17'),
(158, 161, 'JESCA ADROFU STEPHANO', 'F', '2004-07-30', 'KIGOMA', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255674287981', 'stephanojesca68@gmail.com', '2024-08-04', 'FPCT KURASINI', '2023-06-03', 'FPCT KURASINI', 'Pastor Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, 'Ushers', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Kariakoo', '0674287981', 0, NULL, NULL, NULL, NULL, NULL, '0138', NULL, NULL, 'active', NULL, 0, '2026-03-11 00:08:20', '2026-03-11 00:16:14'),
(159, 162, 'Lydia Joshua Mwansasu', 'F', '1998-10-26', 'Rungwe mbeya', NULL, 'Ameolewa', 'Jacob Sanke Nyoni', 2, 'Mbande', '255764312396', 'lydiajacob1998@gmail.com', '2016-07-19', 'T.A.G MBANDE', '2027-02-19', 'T.A.G MBANDE', 'Mch Allan Mbata', 'Mchungaji', NULL, NULL, NULL, 'Sina', NULL, 'Elimu ya msingi', 'Sina', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0140', NULL, NULL, 'active', NULL, 0, '2026-03-11 00:54:43', '2026-03-11 10:07:10'),
(160, 163, 'Joshua Joas', 'M', '1997-09-07', 'Muleba-Kagera', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255785294006', 'joshuajoas97@gmail.com', '2012-12-29', 'FPCT MLUMO', '2012-12-29', 'Mlumo-kagera', 'Mch. Vicent F. Balabona', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'Kijichi', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0139', NULL, NULL, 'active', NULL, 0, '2026-03-11 05:25:58', '2026-03-11 10:07:07'),
(161, 164, 'Lucia Sospeter Bathoha', 'F', '2002-11-20', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255619219296', 'luciabathoha@gmail.com', '2019-11-30', 'Shuleni', '2020-03-11', 'FPCT KURASINI', 'Mch.OSCAR KINDOLE', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Muimbaji wa FGS', NULL, 'Elimu ya chuo', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0141', NULL, NULL, 'active', NULL, 0, '2026-03-11 11:03:58', '2026-03-11 20:53:24'),
(162, 165, 'Lessa Edimon Katwikilo', 'F', '2001-11-03', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255621810782', 'lessaediomon@gmail.com', '2011-04-16', 'FPCT KASANDA', '2011-04-16', 'FPCT KASANDA', 'Mwalimu ABEL BUTONO', 'Mzee wa kanisa na mwalimu wa katikisimu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'TAZARA', '0621 810 782', 0, NULL, NULL, NULL, NULL, NULL, '0143', NULL, NULL, 'active', NULL, 0, '2026-03-11 11:12:15', '2026-03-11 13:25:21'),
(163, 166, 'RONALD CALEB RWANDALLA', 'M', '1995-05-10', 'Ilala / Dar es salaam', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255763064857', 'ronaldrwandalla@hotmail.com', '2007-07-10', 'FPCT', '2011-07-10', 'Arusha', 'Mchungaji Kulindwa', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Petroleum Engineer', 'Nimeajiriwa', 'Administration', '0687230644', 0, NULL, NULL, NULL, NULL, NULL, '0142', NULL, NULL, 'active', NULL, 0, '2026-03-11 11:57:26', '2026-03-11 12:26:25'),
(164, 167, 'JESKA MESHAKI KHOLO', 'F', '2004-08-03', 'SINGIDA', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255769164245', 'jescahkholo36@gmail.com', '2022-04-18', 'STCC(FPCT)- SINGIDA', '2023-06-03', 'FPCT KURASINI', 'MCH; OSCAR KINDOLE', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0145', NULL, NULL, 'active', NULL, 0, '2026-03-11 12:39:19', '2026-03-11 14:57:35'),
(165, 168, 'Israel Abel', 'M', '2000-10-17', 'Igunga-Tabora', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255612643766', 'dottonkuba@gmail.com', '2015-11-14', 'Fpct itumba', '2022-02-19', 'Igunga', 'Moses seni', 'Mchungaji', NULL, NULL, NULL, 'Kwaya na sifa na muziki', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0214', NULL, NULL, 'active', NULL, 0, '2026-03-11 13:44:49', '2026-03-22 11:02:07'),
(166, 169, 'Shamimu Issa', 'F', '1999-12-23', 'Singida', NULL, 'Hajaolewa', NULL, 1, 'Mgeninani', '255690271871', 'shamimuissa025@gmail.com', '2024-04-13', 'Ebenezer restoration ministry of all nation', '2024-12-27', 'Fpct kurasini', 'Oscar kindole', 'Katibu mkuu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0144', NULL, NULL, 'active', NULL, 0, '2026-03-11 13:57:34', '2026-03-12 13:26:23'),
(167, 170, 'Abel Ahungu', 'M', '1984-08-28', 'Singida DC, Singida', NULL, 'Ameoa', 'Neema Mhando', 3, 'Kijichi', '255767890819', 'ahunguabel02@gmail.com', '1999-07-01', 'FPCT MSANGE', '2000-12-15', 'Msange Singida', 'Elias Ahungu', 'Mchungaji kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', NULL, '0767890819', 0, NULL, NULL, NULL, NULL, NULL, '0147', NULL, NULL, 'active', NULL, 0, '2026-03-11 15:01:01', '2026-03-11 20:09:27'),
(168, 171, 'Mahanga Raphael Buruna', 'M', '1995-11-27', 'Tarime / Mara', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255754942522', 'raphaelmahanga@gmail.com', '2014-02-15', 'FPCT - Nyabisaga', '2015-12-26', 'Nyabisaga', 'Mchungaji Joshua Ikwabe', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Kiongozi wa maombi ya CYM siku ya Juma tano', NULL, 'Elimu ya chuo kikuu', 'BSC. Computer Science', 'Nimeajiriwa', 'Multicons International', '+255 765 442 222', 0, NULL, NULL, NULL, NULL, NULL, '0146', NULL, NULL, 'active', NULL, 0, '2026-03-11 16:06:40', '2026-03-11 20:08:05'),
(169, 172, 'EDSON MICHAEL', 'M', '1986-10-14', 'Tabora', NULL, 'Ameoa', 'Gladis Muya', 2, 'Yerusalem', '255716669794', 'edson.maiko9@gmail.com', '2025-05-18', 'Kurasini', '2025-09-27', 'Kurasini', 'Timoth Nyanda', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Kariakoo', '0716669794', 0, NULL, NULL, NULL, NULL, NULL, '0148', NULL, NULL, 'active', NULL, 0, '2026-03-11 17:58:58', '2026-03-11 20:59:46'),
(170, 173, 'Yakobo Issaka Paulo', 'M', '1994-03-14', 'Tanga', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255712732587', 'jcbissack@gmail.com', '2012-09-02', 'Fpct tanga city church', '2012-12-09', 'Tanga', 'Mch.Tarimo', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', 'Fpct HQ', '0712732587', 1, NULL, NULL, NULL, NULL, NULL, '0157', NULL, NULL, 'active', NULL, 0, '2026-03-11 20:20:12', '2026-03-12 16:44:57'),
(171, 174, 'Upendo Isaya Kapama', 'F', '1993-05-17', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255718437044', 'geniouskapama@gmail.com', '2005-01-01', 'Glory Temple Assemblis of God', '2005-01-11', 'Mikocheni B', 'Mch. James Mwaipyana', 'Askofu', NULL, NULL, NULL, 'Sina', NULL, 'Elimu ya chuo kikuu', 'Hakimu Mkazi', 'Nimeajiriwa', 'Kituo Jumuishi Temeke', 'Sina', 0, NULL, NULL, NULL, NULL, NULL, '0149', NULL, NULL, 'active', NULL, 0, '2026-03-11 20:28:20', '2026-03-11 20:59:55'),
(172, 175, 'BERTIN JEREMIA MBOMBO', 'M', '1997-04-03', 'SUMBAWANGA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255711993739', 'bertinjeremia@gmail.com', '2014-01-11', 'FPCT SUMBAWANGA', '2014-04-13', 'SUMBAWANGA', 'SOLOMONI SAKAULA', 'MZEE WA KANISA', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-11 20:55:46', '2026-03-11 20:55:46'),
(174, 177, 'GLADNESS JAMES BABU.', 'F', '2003-03-13', 'MANYARA', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255745224991', 'gladiejamiee@gmail.com', '2017-03-17', 'FPCT KISARAWE', '2017-03-24', 'FPCT KISARAWE', 'MCH J. N. MUNA', 'MCHUNGAJI', NULL, NULL, NULL, 'MWALIMU WA WATOTO', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Sina kazi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0150', NULL, NULL, 'active', NULL, 0, '2026-03-11 22:22:45', '2026-03-12 08:45:10'),
(175, 178, 'Grace Dalas Mpabansi', 'F', '1987-09-25', 'Buhigwe/kigoma', NULL, 'Ameolewa', 'Benedicto Mugongo', 3, 'Tandika', '255764242496', 'mpabansigrace@gmaili.com', '2010-01-03', 'Fpct Shunga,kasulu', '2010-05-09', 'Fpct Mubanga', 'Nashon Kamana', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'Afisa Muuguzi', 'Nimeajiriwa', 'Zahanati ya kitunda ,manispaa ya Ilala', 'Box 25411 Dsm', 0, NULL, NULL, NULL, NULL, NULL, '0151', NULL, NULL, 'active', NULL, 0, '2026-03-11 23:07:20', '2026-03-12 08:50:41'),
(176, 179, 'Irene Herieli Mgonja', 'F', '2000-10-14', 'Manyara- Mbulu', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255746881275', 'irenehmgonja@gmail.com', '2012-05-20', 'TAG- Nzasa B', '2015-09-03', 'Chatembo- Mwandege', 'A. Mkoto', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'St. Matthews schools', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0154', NULL, NULL, 'active', NULL, 0, '2026-03-11 23:32:11', '2026-03-12 08:53:50'),
(177, 180, 'Peres yohana  fransisco', 'F', '2003-03-08', 'Kagera', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255776011863', 'peresyohana01@gmail.com', '2020-04-20', 'F.P.C.T BUKIRIRO', '2019-01-10', 'F.P.C.T  BUKIRIRO', 'Much.JOSIAH KABIRIGI', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0155', NULL, NULL, 'active', NULL, 0, '2026-03-11 23:54:02', '2026-03-12 08:53:59'),
(178, 181, 'Teresia Andrew Mwakalebela', 'F', '1995-01-10', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255753078654', 'teresiamwakalebela@gmail.com', '2010-10-23', 'TAG Tegemeo', '2010-10-30', 'Mbeya', 'Mchungaji Watson Mwanjoka', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Sina kazi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0152', NULL, NULL, 'active', NULL, 0, '2026-03-12 00:53:58', '2026-03-12 08:51:30'),
(179, 182, 'Isaaya Bahati', 'M', '2001-07-21', 'mbogwe _ geita', NULL, 'Ameoa', 'EDITHA PEUSON NDISA', 1, 'Mtongani', '255767936778', 'isaayabahati@gmail.com', '2017-07-01', 'YESU NI LANGO LA UZIMA', '2017-07-01', 'ISIMA', 'JEREMIA ELIAS LUFUNGULO', 'ASKOFU', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'MWALIMU', 'Nimeajiriwa', 'wailes', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0153', NULL, NULL, 'active', NULL, 0, '2026-03-12 07:24:35', '2026-03-12 08:53:12'),
(180, 183, 'Natalia S Pambe', 'F', '2002-04-20', 'Shinyanga', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255658226389', 'shijajoviana21@gmail.com', '2017-04-16', 'Kingdom Faith Church', '2023-06-04', 'Mwanza', 'Richard Nzwalla', 'Mchungaji', NULL, NULL, NULL, 'Praise and worship', NULL, 'Elimu ya chuo kikuu', 'Mwanafunzi', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0156', NULL, NULL, 'active', NULL, 0, '2026-03-12 09:56:29', '2026-03-12 12:38:11'),
(181, 184, 'Amani Chongela Muhono', 'M', '1987-04-04', 'Katavi', NULL, 'Ameoa', 'Fainess Japhet', 2, 'Kigamboni', '255657299836', 'Chongela74@gmail.com', '2016-08-12', 'Fpct Kitangiri', '2018-07-07', 'Fpct Kitangiri', 'Shadrack Buyila', 'Mchungaji', NULL, NULL, NULL, 'Maombi', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Kariakoo', '0657299836', 0, NULL, NULL, NULL, NULL, NULL, '0159', NULL, NULL, 'active', NULL, 0, '2026-03-12 14:48:49', '2026-03-12 18:14:45'),
(182, 185, 'Vanessa Fadhila', 'F', '1988-05-01', 'Morogoro Manispaa', NULL, 'Ameolewa', 'Sadiki Mohamed Nassoro', 3, 'Kigamboni', '255656663761', 'vanessafadhila24@gmail.com', '2009-05-10', 'Fpct kibaoni Ifakara', '2010-06-13', 'Fpct kibaoni Ifakara', 'Furgus lyagoda', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0158', NULL, NULL, 'active', NULL, 0, '2026-03-12 16:22:21', '2026-03-12 18:11:24'),
(183, 186, 'Vaileth Shukrani Saimon', 'F', '2002-04-24', 'Kigoma wilaya ya kasulu', NULL, 'Ameolewa', 'Eliah samson', 1, 'Yerusalem', '255622324585', 'vailethshukran50@gimail.com', '2018-08-23', 'Fpct kasulu kigoma', '2019-09-22', 'Fpct kagumga kasulu kigoma', 'Shedrack bunono', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Muimbaji wa kwaya', NULL, 'Elimu ya sekondari', 'Fundi cherehani', 'Nimejiajiri', 'Mbagara kuu njia ya ng\'ombe', '0622324585', 0, NULL, NULL, NULL, NULL, NULL, '0160', NULL, NULL, 'active', NULL, 0, '2026-03-12 19:09:28', '2026-03-13 14:04:35'),
(184, 187, 'Abigail Suleiman Mathew', 'F', '2004-08-12', 'Dar es salaam, Temeke', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255699650632', 'abigailmathew34@gmail.com', '2022-06-22', 'Mbeya', '2023-06-04', 'FPCT -Kurasini', 'Mch.Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0161', NULL, NULL, 'active', NULL, 0, '2026-03-13 15:03:25', '2026-03-13 15:08:22'),
(185, 188, 'AYUBU SELEMANI CHIZA', 'M', '1997-10-01', 'KIGOMA/KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255769146998', 'ayubuchiza107@gmail.com', '2010-10-01', 'TAG JERUSALEM SPIRITUAL CENTER', '2017-06-10', 'SINGIDA', 'MCH. RUSAJO', 'MCH. MSAIDIZI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'BIMA NA MAJANGA ( INSURANCE AND RISK MANAGEMENT', 'Nimeajiriwa', 'DAR ES SALAAM', 'MAMLAKA YA USIMAMIZI WA BIMA TANZANIA (TIRA)', 1, NULL, NULL, NULL, NULL, NULL, '0166', NULL, NULL, 'active', NULL, 0, '2026-03-15 07:15:28', '2026-03-15 22:54:01'),
(186, 189, 'Naftari Jeremia Musebei', 'M', '1980-12-20', 'Kigoma', NULL, 'Ameoa', 'Efrazia Ezekiel', 4, 'Keko & Kurasini', '255755207108', 'Naftarijeremia@gmail.com', '1999-04-09', 'Biharu', '1999-04-09', 'Biharu', 'Nahansoni Bigaga', 'Mchungani', NULL, NULL, NULL, 'Muhubili', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Keko', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0163', NULL, NULL, 'active', NULL, 0, '2026-03-15 10:25:46', '2026-03-15 22:51:47'),
(187, 190, 'Isaya Isack Amos', 'M', '1991-02-12', 'Uvinza Kigoma', NULL, 'Ameoa', 'Isaya', 1, 'Kizuiani', '255656113382', 'IsayaIsack4455@gmail.com', '2010-07-01', 'Pefa', '2013-08-03', 'Fpct Kurasini', 'George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Usher', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Dar & Moro', '0656113382', 0, NULL, NULL, NULL, NULL, NULL, '0162', NULL, NULL, 'active', NULL, 0, '2026-03-15 10:58:04', '2026-03-15 22:51:23'),
(188, 191, 'Prisca Simon Nyamhinda', 'F', '1997-07-13', 'Mara', NULL, 'Ameolewa', 'Onesmo I. Ayoub', 2, 'Tandika', '255747156221', 'Priscasimon07@gmail.com', '2024-11-03', 'FPCT KURASINI', '2024-12-27', 'FPCT Kurasini', 'Mch. OSCAR KINDOLE', 'Mchungaji Kiongozi', NULL, NULL, NULL, 'Sina', NULL, 'Elimu ya sekondari', 'SECRETARY', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0167', NULL, NULL, 'active', NULL, 0, '2026-03-15 12:12:06', '2026-03-16 21:03:09'),
(189, 192, 'ELIAS ELIAS SEKA', 'M', '1993-02-23', 'TABORA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255763448404', 'eliasseka@gmail.com', '2002-12-25', 'KLPT - ITANANA', '2008-04-13', 'KLPT - ITANANA', 'MCH. SAMSON DAUDI', 'MCHUNGAJI', NULL, NULL, NULL, 'MEDIA', NULL, 'Elimu ya chuo', 'ICT ASSISTANT', 'Nimeajiriwa', 'CHUO KIKUU CHA DAR ES SALAAM', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0169', NULL, NULL, 'active', NULL, 0, '2026-03-15 14:46:09', '2026-03-17 07:12:01'),
(190, 193, 'Raphael John mbuji', 'M', '1985-06-12', 'Korogwe/Tanga', NULL, 'Ameoa', 'Janet', 2, 'Kizuiani', '255714500276', 'raphaelmbuji3@gmail.com', '2001-12-13', 'Tanga', '2013-09-25', 'Kurasini', 'Daniel', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu', NULL, 'Elimu ya msingi', 'Chief Coker', 'Nimejiajiri', 'Mbezi', 'O714500276', 0, NULL, NULL, NULL, NULL, NULL, '0164', NULL, NULL, 'active', NULL, 0, '2026-03-15 17:29:38', '2026-03-15 22:53:02'),
(191, 194, 'Janeth Fanuel Mbugha', 'F', '1996-08-24', 'Singida vijijini /Singida', NULL, 'Ameolewa', 'RAPHAEL JOHN MBUJI', 2, 'Kizuiani', '255676686400', 'janethfanuel3@gmail.com', '2015-04-11', 'Fpct msange singida', '2015-04-11', 'Fpct msange', 'Mch Emanuel sungi', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu  sunday school', NULL, 'Elimu ya sekondari', 'Fundi cherehani', 'Nimejiajiri', 'Nyumbani', '0676686400', 0, NULL, NULL, NULL, NULL, NULL, '0165', NULL, NULL, 'active', NULL, 0, '2026-03-15 18:40:31', '2026-03-15 22:53:15'),
(192, 195, 'AMINA JUMANNE DANIEL', 'F', '2004-08-23', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255679309107', 'aminadaniel346@gmail.com', '2024-11-10', 'FPCT KURASINI', '2024-12-27', 'FPCT KURASINI', 'MCHUNGAJI OSCAR KINDOLE', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, 'Usafi', NULL, 'Elimu ya chuo', 'Mwanafunzi', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0168', NULL, NULL, 'active', NULL, 0, '2026-03-16 20:13:09', '2026-03-16 21:03:27'),
(193, 196, 'BENEDICTO SADOCK NTIGAHELA', 'M', '1991-11-18', 'Uvinza - Kigoma', NULL, 'Hajaoa', NULL, 1, 'Mbande', '255719712078', 'kelvinsadock990@gmail.com', '2008-04-01', 'FPCT BULANGAMILA', '2008-04-26', 'BULANGAMILA MTONI', 'Wilson Sabun', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', NULL, '0719712078', 0, NULL, NULL, NULL, NULL, NULL, '0170', NULL, NULL, 'active', NULL, 0, '2026-03-17 02:31:25', '2026-03-17 11:31:59'),
(194, 197, 'Tegemea Ezekiel Bitana', 'M', '1984-09-03', 'Kigoma', NULL, 'Ameoa', 'Niela Frank Mahuba', 3, 'Kizuiani', '255763423432', 'tegemeabitana15@gmail.com', '1999-12-25', 'Fpct', '1999-12-25', 'Kigoma', 'Nahansoni kasambili', 'Mzee wa kanisani', NULL, NULL, NULL, 'Mwimbaji wa kwaya', NULL, 'Elimu ya chuo', 'Ugava', 'Nimejiajiri', 'Mbagala sabasaba', '0763423432', 0, NULL, NULL, NULL, NULL, NULL, '0171', NULL, NULL, 'active', NULL, 0, '2026-03-17 17:32:25', '2026-03-17 20:16:19'),
(195, 198, 'Catherine Ulombo Kalibuha', 'F', '1960-11-29', 'Tanga', NULL, 'Mjane', NULL, 3, 'Kijichi', '255715787036', 'catherinekalibuha@gmail.com', '1990-10-14', 'Elimpentecoste', '1991-04-07', 'Mjesani Tanga', 'willium mhina', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', 'Mpishi', 'Nimejiajiri', NULL, '0715787036', 0, NULL, NULL, NULL, NULL, NULL, '0172', NULL, NULL, 'active', NULL, 0, '2026-03-17 20:05:43', '2026-03-17 20:18:54'),
(196, 199, 'Godfrey Mtamba', 'M', '1993-11-09', 'Kinondoni Dsm', NULL, 'Ameoa', 'Sarah Samweli Ntandu', 1, 'Yerusalem', '255714272737', 'godfreymtamba7@gmail.com', '2016-05-11', 'FPCT kurasini', '2016-06-25', 'FPCT kurasini', 'Mch.George Mwita', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0173', NULL, NULL, 'active', NULL, 0, '2026-03-17 21:50:40', '2026-03-18 00:50:58'),
(197, 200, 'PAULINA CARLOS', 'F', '2000-04-17', 'KINONDONI', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255766593280', 'paulinagicaro@gmail.com', '2016-03-18', 'VISION  CENTER  MINISTRIES', '2019-08-18', 'BAHARI BEACH', 'MOSES KASHAKALI', 'PASTOR', NULL, NULL, NULL, 'MEDIA', NULL, 'Elimu ya chuo kikuu', 'BUSINESS  ADMINISTRATOR', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0174', NULL, NULL, 'active', NULL, 0, '2026-03-18 00:47:49', '2026-03-18 00:57:02'),
(198, 201, 'Erasto Richard mlawa', 'M', '1990-06-19', 'Tanga', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255764804205', 'erastomlawa90@gmail.com', '2026-03-17', 'Klpt', '2020-12-05', 'Fpct kurasini', 'Much John jilangira', 'Mchungaji', NULL, NULL, NULL, 'IT', NULL, 'Elimu ya chuo', 'Mhasibu', 'Nimeajiriwa', 'Temeke hospital', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0179', NULL, NULL, 'active', NULL, 0, '2026-03-18 01:05:10', '2026-03-18 12:52:54'),
(199, 202, 'Elisha Makiya', 'M', '1986-04-26', 'Simiyu, Bariadi', NULL, 'Ameoa', 'Theresia Kindole', 0, 'Mgeninani', '255654468382', 'makiyaelisha@gmail.com', '2000-12-25', 'Fpct Bariadi Simiyu', '2001-04-24', 'Baridi Simiyu', 'Mchungaji Daniel Daninga', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Umishen', NULL, 'Elimu ya chuo kikuu', 'IT na Theolojia', 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0175', NULL, NULL, 'active', NULL, 0, '2026-03-18 09:37:38', '2026-03-18 12:28:06'),
(200, 203, 'Loveness l Mollel', 'F', '1988-03-25', 'Manyara', NULL, 'Ameolewa', 'Isaya Raphael', 3, 'Kigamboni', '255782941414', 'kwelilove@gmail.com', '2000-03-01', 'TERRAT FPCT', '2026-03-18', 'Terrat fpct', 'Yona sumari', 'Askofu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Nimeajiriwa', 'Temeke', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0178', NULL, NULL, 'active', NULL, 0, '2026-03-18 09:50:18', '2026-03-18 12:29:48'),
(201, 204, 'MOSES SAMSON MWAKISISILE', 'M', '2000-10-20', 'Kyela/Mbeya', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255762758467', 'remmoriss19@gmail.com', '2013-01-01', 'EAGT- Kyela', '2013-01-27', 'EAGT-Kyela', 'Mchungaji Keneth Kasunga', 'Askofu wa Jimbo', NULL, NULL, NULL, 'Karama ya Ualimu', NULL, 'Elimu ya chuo kikuu', 'Mhasibu wa umma na fedha', 'Nimeajiriwa', 'Mbagala-Temeke', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0209', NULL, NULL, 'active', NULL, 0, '2026-03-18 10:29:33', '2026-03-22 10:30:27'),
(202, 205, 'Frank Oliver Kakole', 'M', '1999-07-31', 'Nachingwea', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255625672476', 'kakolefrank@gmail.com', '2013-06-24', 'Lindi Ruo', '2014-04-19', 'Nachingwea', 'Erasto Kambos', 'Askofu Jimbo la kusini', NULL, NULL, NULL, 'Muziki na uimbaji', NULL, 'Elimu ya chuo kikuu', 'Actuarial Science', 'Nimeajiriwa', 'Halotel', '0625672476', 1, NULL, NULL, NULL, NULL, NULL, '0176', NULL, NULL, 'active', NULL, 0, '2026-03-18 10:48:33', '2026-03-18 12:28:26'),
(203, 206, 'Franco kihongosi', 'M', '1986-02-18', 'Iringa', NULL, 'Ameoa', 'Veronica Kindole', 3, 'Kinondoni', '255659953557', 'kihongosifranco@yahoo.com', '2004-03-21', 'TAG Igawilo Uyole Mbeya', '2004-04-11', 'TAG Igawilo Mbeya', 'Mch. Mwakalasya', 'Mchungaji Kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Accounts,Finance and Investment', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0177', NULL, NULL, 'active', NULL, 0, '2026-03-18 10:50:26', '2026-03-18 12:28:41'),
(204, 207, 'TEDDY BENARD LAWRENT', 'F', '2003-09-25', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255767337855', 'benardteddy98@gmail.com', '2019-09-25', 'TAG KIDAGAA', '2020-04-10', 'FPCT KURASINI', 'MCHUNGAJI OSCAR KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya chuo kikuu', 'ACTUARIAL SCIENCE', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0180', NULL, NULL, 'active', NULL, 0, '2026-03-18 10:59:43', '2026-03-18 12:55:39'),
(205, 208, 'Daniel Zakaria Elisha', 'M', '2026-10-24', 'Wilaya ya baridi Mkoani Simiyu', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255767381687', 'danielelisha2410@gmail.com', '2022-06-29', 'FPCT SOKON ONE', '2023-07-01', 'FPCT kisongo mkoani Arusha', 'Mchungaji Yona Muoko', 'Mweka hazina wa jimbo la Arusha', NULL, NULL, NULL, 'Ni musician na muhubiri na mwimbaji', NULL, 'Elimu ya chuo kikuu', 'Bachelor degree of Accountancy', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0210', NULL, NULL, 'active', NULL, 0, '2026-03-18 12:52:45', '2026-03-22 10:30:53'),
(206, 209, 'Rollin salum mkali', 'F', '1994-02-22', 'Kinondoni dar es salaam', NULL, 'Hajaoa', NULL, 1, 'Kongowe', '255679766245', 'waridimkali@gmail.com', '2017-06-24', 'Fpct kurasini', '2019-04-23', 'Fpct kurasini', 'Mwinjilist IMANI', 'Mwinjilist', NULL, NULL, NULL, 'Maombezi', NULL, 'Elimu ya sekondari', 'Hr', 'Nimeajiriwa', 'Dundani Mkuranga', '0679766245', 1, NULL, NULL, NULL, NULL, NULL, '0181', NULL, NULL, 'active', NULL, 0, '2026-03-18 13:01:10', '2026-03-18 13:47:33'),
(207, 210, 'Abigael Claudian', 'F', '1993-07-29', 'Bunda Mara', NULL, 'Ameolewa', 'Claudian Tembe Guguye', 1, 'Yerusalem', '255753667035', 'abigaelclaudian@gmail.com', '2007-09-30', 'FPCT BUNDA', '2011-12-24', 'Bunda Mara', 'Steven Rugongo', 'Askofu', NULL, NULL, NULL, 'Uombaji', NULL, 'Elimu ya chuo', 'Mfamasia', 'Nimeajiriwa', 'Dodoma Jiji', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-18 15:19:52', '2026-03-18 15:19:52'),
(208, 211, 'Elia Yohana Ghambuna', 'M', '1992-02-22', 'Singida, Singida vijijini', NULL, 'Mgane', NULL, 0, 'Yerusalem', '255768491664', 'eliaghambuna@gmail.com', '2017-08-20', 'Fpct kurasini', '2018-01-06', 'Fpct kurasini', 'Mch, Isaya Kapama', 'Mchungaji', NULL, NULL, NULL, 'Ushers', NULL, 'Elimu ya sekondari', 'Sina taaluma', 'Nimeajiriwa', 'Bandari kavu ya JEFAG', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0182', NULL, NULL, 'active', NULL, 0, '2026-03-18 16:41:40', '2026-03-18 21:47:53'),
(209, 212, 'Kayaga luchagula Ngeleja', 'M', '1995-10-21', 'Mwanza', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255745332312', 'Kluchagula@gmail.com', '2010-10-20', 'African Inland Church', '2019-06-01', 'FPCT KURASINI', 'JIlangila', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Mhasibu', 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0183', NULL, NULL, 'active', NULL, 0, '2026-03-18 18:00:18', '2026-03-18 21:47:56'),
(210, 213, 'Elizabeth Mkama', 'F', '1989-10-17', 'Mara', NULL, 'Ameolewa', 'Suleimani daud', 0, 'Yerusalem', '255659564354', 'mkamaelizabeth05@gmail.com', '2000-10-15', 'P.A.G', '2000-12-25', 'Bunda /Mara', 'Elias mginga', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', 'Hindu Mandal', '0659564354', 0, NULL, NULL, NULL, NULL, NULL, '0184', NULL, NULL, 'active', NULL, 0, '2026-03-18 18:22:07', '2026-03-18 21:48:01'),
(211, 214, 'Mathias Meshack Mathias', 'M', '2004-01-31', 'Geita', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255680852054', 'mathiasmeshack52@gmail.com', '2018-12-08', 'FPCT', '2020-12-13', 'FPCT  ILAMBA', 'Odasi Leonard', 'Mzeee wa kanisa', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0213', NULL, NULL, 'active', NULL, 0, '2026-03-18 19:06:08', '2026-03-22 10:57:36'),
(212, 215, 'Pendo jacksoni ilanda', 'F', '1988-11-01', 'Singida', NULL, 'Hajaolewa', NULL, 3, 'Mgeninani', '255684108225', 'pendoilanda394@gmail.com', '2005-07-01', 'Fpct msowero  kilosa', '2005-07-01', 'Fpct msowero kilosa', 'Mch.maiko', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Mgeni nani', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0185', NULL, NULL, 'active', NULL, 0, '2026-03-18 21:02:51', '2026-03-18 21:48:10'),
(213, 216, 'Falesi. Elimeriki.  Rudadi', 'M', '1979-07-25', 'Kigoma', NULL, 'Ameoa', 'Winifrida. Danieli.  Kambati', 0, 'Yerusalem', '255696972204', 'falexrudadi@gmail.com', '1995-07-16', 'Mahembe', '1995-07-16', 'Kigoma', 'Samsoni.  Sindatuma', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya msingi', 'Fundi.   Cherehani', 'Nimeajiriwa', 'Kwa. Zizi ali', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0186', NULL, NULL, 'active', NULL, 0, '2026-03-18 21:02:54', '2026-03-18 21:48:16'),
(214, 217, 'Clara Benard Nyungura', 'F', '1980-07-25', 'Kibondo/Kigoma', NULL, 'Ameolewa', 'Yahaya Jumanne Kisena', 2, 'Kigamboni', '255652722019', 'nyungurachausiku85@gmail', '2018-01-05', 'FPCT TANGA MJINI', '2018-02-18', 'TANGA', 'STEVEN R. MLENGA', 'ASKOFU', NULL, NULL, NULL, 'KAZI ZA MIKONO', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Mamlaka ya usimamizi wa Bandari Tanzania(TPA)', 'E.M', 0, NULL, NULL, NULL, NULL, NULL, '0189', NULL, NULL, 'active', NULL, 0, '2026-03-18 23:00:11', '2026-03-19 19:57:03'),
(215, 218, 'Donatus Mlawa', 'M', '2003-08-06', 'IRINGA VIJIJI', NULL, 'Hajaoa', NULL, 0, 'Kingugi', '255770722997', 'mlawadonatus@gmail.com', '2025-02-09', 'Fpct kurasini', '2025-05-04', 'Fpct kurasini', 'Mch osca kindole', 'Mchungaji kiongozi', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', 'Fundi rangi', 'Nimejiajiri', 'Binafsi', 'Yakwang', 0, NULL, NULL, NULL, NULL, NULL, '0188', NULL, NULL, 'active', NULL, 0, '2026-03-18 23:52:24', '2026-03-19 19:56:41'),
(216, 219, 'Nesta Jasson', 'F', '2002-03-09', 'Kagera', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255769116075', 'M@yahoo.com', '2014-03-07', 'Gpcc', '2022-03-27', 'Eagt ngara', 'Emilian', 'Mchungaji', NULL, NULL, NULL, 'Maombi', NULL, 'Elimu ya chuo kikuu', 'Ununuzi na ugavi', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0187', NULL, NULL, 'active', NULL, 0, '2026-03-19 10:34:38', '2026-03-19 15:35:50'),
(217, 220, 'Mollen Charles Bwagalilo', 'F', '1989-11-23', 'Temeke', NULL, 'Ameolewa', 'Faraja Alfayo Kataze', 3, 'Kigamboni', '255746670969', 'mollenbwagalilo@gmail.com', '2001-06-19', 'KKKT kurasini', '2012-12-19', 'FPCT Kurasini', 'Mchungaji (wa Pugu)', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'Huduma za fedha', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0190', NULL, NULL, 'active', NULL, 0, '2026-03-19 14:52:37', '2026-03-19 19:57:27'),
(218, 221, 'Losenius E Paul', 'M', '1982-03-22', 'Kagera', NULL, 'Ameoa', 'Eliam G. Kabende', 1, 'Kijichi', '255757906993', 'blperasto@gmail.com', '2002-03-07', 'FPCT Nyamahanga', '2003-03-19', 'FPCT Nyamahanga', 'Nikodem Luzenzwa', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0191', NULL, NULL, 'active', NULL, 0, '2026-03-19 15:33:27', '2026-03-22 08:51:42'),
(219, 222, 'SABURI EDMON KATWIKILO', 'F', '2003-03-10', 'KIGOMA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255616651436', 'saburiedmon@gmail.com', '2022-03-19', 'KASANDA', '2021-03-19', 'KASANDA', 'ABEL BUTONO', 'MZEE WA KANISA', NULL, NULL, NULL, 'MSHIRIKA', NULL, 'Elimu ya chuo kikuu', 'Uhasibu na fedha', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0198', NULL, NULL, 'active', NULL, 0, '2026-03-19 19:27:52', '2026-03-19 20:48:49'),
(220, 223, 'Josephine Yotham', 'F', '2003-06-18', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255740189965', 'josephinayotham95@gmail.com', '2014-06-01', 'EACT Kilelema', '2019-11-10', 'FPCT Kurasini', 'Mch. Kindole', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0192', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:06:12', '2026-03-19 20:47:49'),
(221, 224, 'Jusilini Stefano', 'F', '1976-01-07', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255714261485', 'jusilinestefano12@gmail.com', '2000-05-01', 'FPCT Muyama', '2000-08-22', 'FPCT Muyama', 'Mch. Kamonongo', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0197', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:17:01', '2026-03-19 20:48:29'),
(222, 225, 'Prisila Yotham', 'F', '2005-03-27', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255682390386', 'prisilayotham27@gmail.com', '2016-05-25', 'FPCT  Kurasini', '2021-06-13', 'FPCT kURASINI', 'Mch. Mwita', 'Mchungaji Kiongozi', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0193', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:32:51', '2026-03-19 20:47:57');
INSERT INTO `members` (`id`, `user_id`, `full_name`, `gender`, `birth_date`, `birth_place`, `birth_district`, `marital_status`, `spouse_name`, `number_of_children`, `residential_zone`, `phone_number`, `email`, `date_of_conversion`, `church_of_conversion`, `baptism_date`, `baptism_place`, `baptizer_name`, `baptizer_title`, `previous_church`, `previous_church_status`, `tangu_lini`, `church_service`, `service_duration`, `education_level`, `profession`, `occupation`, `work_place`, `work_contact`, `lives_alone`, `lives_with`, `family_role`, `live_with_who`, `next_of_kin`, `next_of_kin_phone`, `membership_number`, `verified_by`, `membership_start_date`, `membership_status`, `deactivation_reason`, `is_authorized`, `created_at`, `updated_at`) VALUES
(223, 226, 'Imani Ezekiel Bitana', 'F', '1976-04-11', 'Kigoma', NULL, 'Ameolewa', 'Phidel Seleman', 3, 'Mbande', '255714117667', 'imaniphidel01@gmail.com', '1992-08-04', 'Fpct mwanga', '1992-03-12', 'Fpct mwanga', 'Paskari', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', 'Mjasili amali', 'Nimejiajiri', 'Dar es salaam', '0714117667', 0, NULL, NULL, NULL, NULL, NULL, '0194', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:35:24', '2026-03-19 20:48:12'),
(224, 227, 'Vumilia Jackson', 'F', '1984-06-06', 'Kigoma', NULL, 'Ameolewa', 'Osward Kazaniye', 4, 'Kongowe', '255756432761', 'jacksonvumilia888@gmail.com', '1999-05-05', 'FPCT kigoma', '1999-05-12', 'FPCT Kigoma', 'Mch. Kidebuye', 'Mchungaji Kiongozi', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0195', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:44:01', '2026-03-19 20:48:17'),
(225, 228, 'Hagai Jeremia', 'M', '2000-10-28', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255764197657', 'hagaijeremia7@gmail.com', '2021-04-17', 'MMPT', '2021-04-17', 'MMPT Nyakayenzi', 'Mch:Jackobo mgunga', 'Mch:kiongoz', NULL, NULL, NULL, 'Mwimbaji FGS', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Kariakoo', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0196', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:44:41', '2026-03-19 20:48:20'),
(226, 229, 'Rose Wilisoni', 'F', '1996-06-23', 'DODOMA', NULL, 'Ameolewa', 'RAMSON IBRAHIM', 1, 'Kizuiani', '255683826003', 'rosewilisoni082@gmail.com', '2022-09-23', 'FPCT KURASINI', '2022-10-28', 'FPCT KURASINI', 'MCH. OSCAR KINDOLE', 'MCHUNGAJI', NULL, NULL, NULL, 'UIMBAJI', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'MBAGALA', '0683826003', 0, NULL, NULL, NULL, NULL, NULL, '0199', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:50:35', '2026-03-19 21:02:54'),
(227, 230, 'Neema Lameck', 'F', '2007-12-15', 'Dar es salaam', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255687506375', 'nercyzabron256@gmail.com', '2022-10-18', 'FPCT Kurasini', '2022-12-18', 'Fpct Kurasini', 'Mch. Yohana Msimba', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0200', NULL, NULL, 'active', NULL, 0, '2026-03-19 20:52:27', '2026-03-19 21:03:26'),
(228, 231, 'David Emmanuel Gervas', 'M', '1998-08-01', 'Tabora', NULL, 'Ameoa', 'Neema samwely Buzinza', 1, 'Mgeninani', '255688918874', 'de865202@gmail.com', '2015-04-04', 'F.p.c.t kasele', '2015-04-04', 'F.p.c.t kasele', 'Sosten', 'Mchungaji', NULL, NULL, NULL, 'Mshilika', NULL, 'Elimu ya chuo', 'Masonry and briking laying', 'Nimejiajiri', 'Mikwambe', '0688918874', 0, NULL, NULL, NULL, NULL, NULL, '0202', NULL, NULL, 'active', NULL, 0, '2026-03-20 15:36:44', '2026-03-22 10:28:16'),
(229, 232, 'EMILE SAMSON', 'M', '1997-03-19', 'SINGIDA MJINI', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255787274306', 'emisamsahinga19@gmail.com', '2026-03-21', 'EAGT UTEMINI SINGIDA', '2017-09-12', 'EAGT SINGIDA', 'ASKOFU JOHN JOSEPH MAFWIMBO', 'ASKOFU WA JIMBO', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', 'BACHELOR OF INSURANCE AND RISK MANAGEMENT', 'Nimejiajiri', 'KARIAKOO', '0787274306', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-21 18:30:42', '2026-03-21 18:30:42'),
(230, 233, 'Faustn John kiyogoma', 'M', '1980-02-29', 'Shinyanga', NULL, 'Ameoa', 'Cathelen Muhamedi', 3, 'Mgeninani', '255755904827', 'fastinikiyogima@gmail.com', '1994-08-01', 'Shalom tempo', '1994-12-24', 'Shalom tempo', 'Mchungaji Ndalawa', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', 'Bandalink', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0203', NULL, NULL, 'active', NULL, 0, '2026-03-21 21:59:24', '2026-03-22 10:28:36'),
(232, 235, 'Marry Samwel', 'F', '2005-10-09', 'Singida', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255756829817', 'marryntandu8@gmail.com', '2020-02-22', 'Fpct mtavira', '2023-09-16', 'Fpct mtavira', 'Paul juma', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0204', NULL, NULL, 'active', NULL, 0, '2026-03-22 09:05:23', '2026-03-22 10:28:41'),
(233, 236, 'Severina Aloyce Nyema', 'F', '1999-03-03', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255783055513', 'kanisasoft1@gmail.com', '2016-12-22', 'FPCT Morogoro', '2016-12-31', 'FPCT Morogoro', 'Akhan Shabani', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya sekondari', 'Mshonaji', 'Nimeajiriwa', 'Ubungo', '0783055513', 0, NULL, NULL, NULL, NULL, NULL, '0205', NULL, NULL, 'active', NULL, 0, '2026-03-22 09:39:49', '2026-03-22 10:28:48'),
(234, 237, 'Lilian robert lucas', 'F', '2003-10-23', 'Nyamagana', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255624754468', 'Viver255@icloud.com', '2026-03-22', 'Fgbf mwanza', '2026-03-22', 'FPCT kurasini', 'Kindole', 'Kchungaji', NULL, NULL, NULL, 'Mshirika', NULL, 'Elimu ya chuo kikuu', 'Wakal', 'Nimeajiriwa', 'Kariakoo', '0624754468', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 09:43:22', '2026-03-22 09:43:22'),
(235, 238, 'Happy maiko mwanza', 'F', '2026-03-02', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255658798394', 'Mwanzahappy847@gmail.com', '2015-07-01', 'Full gospel bible fellowship', '2015-07-22', 'Mbeya', 'Jeminah kingdom mwaijande', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Temekee', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 09:54:15', '2026-03-22 09:54:15'),
(236, 239, 'Tarajien lenad longo', 'F', '1999-10-14', 'Iringa', NULL, 'Hajaolewa', NULL, 1, 'Yerusalem', '255621342797', 'lonkjen@gmail.com', '2008-07-01', 'PHM IRINGA', '2008-07-01', 'Tosamaganga Secondary', 'Kilasi', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'Maendeleo ya jamii', 'Sina kazi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 09:58:53', '2026-03-22 09:58:53'),
(237, 240, 'Yohana Sambai Mwandu', 'M', '1978-11-22', 'Shinyanga', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255654662671', 'Kanisasoft2@gmail.com', '2002-07-22', 'MM Kahama', '2002-12-23', 'FPCT Kahama', 'alexsand Mgunda', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0215', NULL, NULL, 'active', NULL, 0, '2026-03-22 09:59:09', '2026-03-22 11:05:58'),
(238, 241, 'Elisha', 'M', '1999-06-14', 'Babati manyara', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255744148450', 'simonelisha382@gmail.com', '2018-03-01', 'International evangelism church', '2018-03-22', 'Babati', 'Simon qaymo', 'Mchungqji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', 'Amekosea kujisajili', 0, '2026-03-22 10:02:46', '2026-03-22 10:07:50'),
(239, 242, 'Janet Lewis Chisi', 'F', '1982-09-27', 'Mfulila', NULL, 'Ameolewa', 'Oscar kindole', 5, 'Kongowe', '255684840485', 'janetkindole1980@gmail.com', '1996-12-22', 'Pentecostal holiness church', '1997-03-22', 'Pentecostal holiness church', 'Mchungaji Mpiana', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu wa Waongofu wapya', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Fundi Baiskeli', '0684840485', 0, NULL, NULL, NULL, NULL, NULL, '0201', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:05:39', '2026-03-22 10:07:24'),
(240, 243, 'Mosses Shuma', 'M', '2003-05-13', 'Temeke, Dar es salaam,', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255621517151', 'mucktadirshuma@gmail.com', '2014-01-01', 'FPCT Highway', '2017-01-01', 'FPCT Highway', 'Mch. Godfrey Nsunza', 'Mchungaji msaidizi', NULL, NULL, NULL, 'Mwinjiristi', NULL, 'Elimu ya chuo kikuu', 'Uhasibu', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0206', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:14:16', '2026-03-22 10:29:08'),
(241, 244, 'SIMON T ERICK', 'M', '2001-02-12', 'SONGWE', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255769037688', 'simonerick131@gmail.com', '2019-09-08', 'EAGT KAMFICHENI', '2020-01-01', 'MTO LULONGO', 'YOHANA RUVANDA', 'MCHUNGAJI', NULL, NULL, NULL, 'USHAURI', NULL, 'Elimu ya chuo kikuu', 'MHASIBU', 'Nimejiajiri', 'UWANJA WA SIFA', '0769037688', 1, NULL, NULL, NULL, NULL, NULL, '0216', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:18:17', '2026-03-22 11:11:15'),
(242, 245, 'Philimon Dastani Mhala', 'M', '1991-07-27', 'Kigoma', NULL, 'Ameoa', 'Lucy Dastan', 2, 'Kingugi', '255673131583', 'dastanphilimon59@gmail.com', '2007-09-22', 'FPCT Kisozi', '2007-12-25', 'FPCT Kisozi', 'Boazi Bijenge', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0207', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:21:57', '2026-03-22 10:29:19'),
(243, 246, 'Agnes E. Ndumbaro', 'F', '1994-12-18', 'Temeke Dar es Salaam', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255714106687', 'aggieerasto@gmail.com', '2017-10-30', 'St. Maurus, Kurasini (Roman Catholic)', '2019-04-26', 'FPCT Kurasini', 'Mch. George Mwita', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu wa Sunday School, Media Team Projection', NULL, 'Elimu ya chuo kikuu', 'Afisa Mipangomiji', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0208', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:26:23', '2026-03-22 10:29:24'),
(244, 247, 'Dominick  Daniel', 'M', '2002-06-05', 'Buhigwe  kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255734578470', 'domickdaniel05@gmail.com', '2018-06-25', 'FPCT KURASINI', '2018-11-10', 'FPCT KURASINI', 'Oscar kindole', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', 'Kariakoo', '0734578470', 1, NULL, NULL, NULL, NULL, NULL, '0251', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:34:42', '2026-03-24 12:18:06'),
(245, 248, 'PETRONILA ALOYCE MMANGA', 'F', '2004-07-24', 'Ilala, Dar es Salaam', NULL, 'Hajaolewa', NULL, 1, 'Kizuiani', '255664529151', 'kanisasoft3@gmai.com', '2025-06-22', 'FPCT KURASINI', '2025-08-23', 'FPCT KURASINI', 'Timothy Nyanda', 'Mchungaji', NULL, NULL, NULL, 'Sina', NULL, 'Elimu ya sekondari', 'Sina', 'Nimeajiriwa', 'Mbagala', 'Sina', 1, NULL, NULL, NULL, NULL, NULL, '0211', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:43:21', '2026-03-22 10:48:02'),
(246, 249, 'Aneth Lukas', 'F', '1980-06-07', 'Kigoma -Kasulu', NULL, 'Ameolewa', 'Amelek Philimon', 6, 'Kijichi', '255757861300', 'kanisasoft4@gmail.com', '1995-12-24', 'FPCT Kaguga Kasulu', '1995-12-31', 'FPCT Kaguga Kasulu', 'Antony Bungwa', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0212', NULL, NULL, 'active', NULL, 0, '2026-03-22 10:46:51', '2026-03-22 10:48:09'),
(247, 250, 'TITO SAIMON NJOKA', 'M', '2000-12-06', 'SINGIDA', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255758979191', 'njoccatittus@gmail.com', '2020-02-09', 'FPCT DAMAIDA', '2020-02-09', 'FPCT DAMAIDA', 'MCHUNGAJI STEPHANO', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'FLIGHT OPERATION OFFICER', 'Nimeajiriwa', 'AIRPORT', '0758979191', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 10:54:20', '2026-03-22 10:54:20'),
(248, 251, 'Bestina Paul Lwanji', 'F', '1958-06-16', 'Singida', NULL, 'Mjane', NULL, 5, 'Kongowe', '255756932522', 'kanisasoft@gmail.com', '1972-05-09', 'Sanjaranda', '1972-05-28', 'Sanjaranda', 'Nason Ntambalizo', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0222', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:19:58', '2026-03-22 15:21:52'),
(249, 252, 'Miriam Emmanuel kitima', 'F', '2003-04-04', 'Singida', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255754779172', 'wwmiriamemmanuel@gmail.com', '2020-07-07', 'Simbo', '2023-06-06', 'Kurasini', 'Mch kindole', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', 'Marketing', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0221', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:20:52', '2026-03-22 15:21:45'),
(250, 253, 'Uenic Samweli Mazengo', 'F', '1980-12-30', 'Tabora', NULL, 'Ameolewa', 'Charles Christopher', 4, 'Mtongani', '255689221254', 'kanisasoft5@gmail.com', '2023-07-01', 'FPCT Kurasini', '2023-07-30', 'FPCT Kurasini', 'George Mwita', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0226', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:29:45', '2026-03-22 15:55:49'),
(251, 254, 'Eflazia Ezekiel', 'F', '1988-07-01', 'Kigoma', NULL, 'Ameolewa', 'Naftari Jeremia', 4, 'Keko & Kurasini', '255675081303', 'kanisasoft9@gmail.com', '1995-12-04', 'FPCT Kigoma', '2006-12-30', 'FPCT kigoma', 'Nahason Migaga', 'mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0227', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:41:41', '2026-03-22 15:59:10'),
(252, 255, 'Seth', 'M', '1999-03-22', 'kagera', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255772250870', 'setnicodemas@gmail.Com', '2013-03-10', 'F.P.C.T ntungamo kagera', '2017-03-11', 'F.P.C.T ntungamo', 'gidion', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', 'elim', 'Nimeajiriwa', 'temeke', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', 'amejiandikisha kimakosa', 0, '2026-03-22 12:44:32', '2026-03-22 16:01:50'),
(253, 256, 'Glory Onesimo Mtata', 'F', '2004-02-16', 'Dodoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255755689908', 'kanisasoft6@gmail.com', '2015-07-01', 'Dodoma', '2021-07-01', 'FPCT KIMALA KOROGWE', 'Mch. John Joel', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', 'Marketing  sell', '0755689908', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 12:45:16', '2026-03-22 12:45:16'),
(254, 257, 'Claudi Amos Lipumba', 'M', '1985-01-01', 'Kigoma', NULL, 'Ameoa', 'Delfine Yamungu', 7, 'Mtongani', '255765849773', 'kanisasoft7@gmail.com', '2005-12-25', 'FPCT MWANGA', '2005-12-25', 'FPCT MWANGA', 'Mchungaji Gwimo', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Tandika sokon', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 12:46:45', '2026-03-22 12:46:45'),
(255, 258, 'Jovini Berson Peche', 'M', '1993-05-04', 'Kigoma', NULL, 'Ameoa', 'Naomi bendicto', 2, 'Yerusalem', '255746474020', 'kanisasoft13@gamil.com.k', '2009-07-01', 'FPCT Kaguruka', '2009-12-01', 'FPCT Kaguruka', 'Mch. Kiribwa', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0252', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:49:36', '2026-03-24 12:50:42'),
(256, 259, 'David Frank Mpenda', 'M', '2005-03-25', 'Tabora', NULL, 'Hajaoa', NULL, 0, 'Tandika', '255789358676', 'kanisasoft11@gmail.com', '2021-03-09', 'FPCT Mapigano', '2021-03-11', 'FPCT Mapigano', 'Mwal. Samweli Nkunzimana', 'Mwalimu wa kanisa', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', 'Fundi', 'Nimeajiriwa', 'Tandika', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0225', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:51:45', '2026-03-22 15:50:50'),
(257, 260, 'Hadija meshack jacksoni', 'F', '2000-02-01', 'Urambo wilaya kaliua mkoa tabora', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255690086665', 'kanisasoft8@gmail.comcom', '2024-10-22', 'Fpct matiga', '2024-12-27', 'Fpct kurasin', 'Ocska kindole', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', 'Kaliakoo', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0231', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:56:16', '2026-03-23 12:40:41'),
(258, 261, 'Ibrahim Sylvester', 'M', '1990-01-03', 'Katavi', NULL, 'Ameoa', 'Rizik Ibrahim', 2, 'Yerusalem', '255753153821', 'iibrahimsylvester@gmail.com', '2008-03-01', 'FPCT Nzega', '2008-03-01', 'FPCT Nzega', 'Mch. Elias Mbonye', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Vingunguti', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0248', NULL, NULL, 'active', NULL, 0, '2026-03-22 12:57:13', '2026-03-23 19:18:06'),
(259, 262, 'Samuely Paschal', 'M', '1998-04-04', 'TABORA/KALIUA', NULL, 'Ameoa', 'NEOSTA ERIAS', 1, 'Mtongani', '255650556599', 'samuelypaschal@gmail.com', '2019-03-05', 'Kurasini', '2019-09-05', 'Kurasini', 'John Jilangila', 'Mchugaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', 'Kariakoo', '0626580858', 0, NULL, NULL, NULL, NULL, NULL, '0228', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:00:44', '2026-03-22 16:06:57'),
(260, 263, 'Naomi Benedicto', 'F', '2000-05-12', 'Kigoma', NULL, 'Ameolewa', 'Jovini Berson', 2, 'Keko & Kurasini', '255755474025', 'kanisasoft16@gamil.com', '2016-06-19', 'FPCT Mwayaya', '2016-06-26', 'FPCT Mwayaya', 'Hermani Gombo', 'mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0253', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:02:58', '2026-03-24 13:06:48'),
(261, 264, 'Katwale leonard matandiko', 'M', '2026-05-04', 'Chato', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255675771385', 'Katwale@gmail.com', '2026-05-04', 'EAGT', '2026-06-11', 'GEITA', 'DANIEL BALIYAKULA', 'MCHUNGAJI', NULL, NULL, NULL, 'KUHUBIRI', NULL, 'Elimu ya chuo kikuu', 'BPLM', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 13:04:07', '2026-03-22 13:04:07'),
(262, 265, 'Ester Aman', 'F', '2008-08-14', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255680192736', 'kanisasoft18@gmail.com', '2024-07-01', 'FPCT Kurasini', '2025-10-01', 'FPCT Kurasini', 'Oscar kindole', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0261', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:10:24', '2026-03-24 13:54:39'),
(263, 266, 'Scholar amos mafuti', 'F', '2002-09-03', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255755960359', 'kanisasoft13@gmail.com', '2018-11-01', 'Ikonongo', '2018-12-22', 'FPCT IKONONGO', 'Mch. Sositen', 'Mchungaji', NULL, NULL, NULL, 'Mshirika', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Kariakoo', 'O637798514', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 13:11:07', '2026-03-22 13:11:07'),
(264, 267, 'Riziki Ibrahim Sylvester', 'F', '1990-01-03', 'Katavi', NULL, 'Ameolewa', 'Ibrahim Sylvester', 2, 'Yerusalem', '255754381974', 'kanisasoft19@gmail.com', '2007-07-01', 'FPCT', '2007-07-01', 'Katavi', 'Mch/Ntigeza', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Vingunguti', '0754381974', 0, NULL, NULL, NULL, NULL, NULL, '0249', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:12:05', '2026-03-23 19:20:06'),
(265, 268, 'Fanuel Teras zirah', 'M', '1994-01-30', 'Tabora', NULL, 'Ameoa', 'Irene Abel', 0, 'Mtongani', '255663121229', 'fanuelzirah@gmail', '2014-01-17', 'Kurasini fpct', '2014-01-18', 'Kurasini beach', 'Mch George mwita', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Kariakoo', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0257', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:14:31', '2026-03-24 13:18:48'),
(266, 269, 'Neusta Elias Mathayo', 'F', '2003-07-01', 'Tabora', NULL, 'Ameolewa', 'Samweli Pascal', 1, 'Mtongani', '255616722162', 'kanisasoft17@gmail.com', '2017-07-01', 'FPCT Ikonongo', '2017-07-01', 'FPCT Irugu', 'John Bakevia', 'Mchungaji', NULL, NULL, NULL, 'Mshirika', NULL, 'Elimu ya msingi', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0223', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:16:52', '2026-03-22 15:36:42'),
(267, 270, 'RICHARD  SULEMAN PAUL', 'M', '2000-03-17', 'NSIMBO/KATAVI', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255621289924', 'richardpaul3691827@gmail.com', '2024-03-11', 'FPCT KURASINI', '2024-03-06', 'FPCT KURASINI', 'OSCAR KINDOLE', 'MCHUNGAJI KIONGOZI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'KARIAKOO', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0224', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:21:52', '2026-03-22 15:46:04'),
(268, 271, 'Miriam Michael Yohana', 'F', '1997-07-07', 'Kigoma', NULL, 'Ameolewa', 'Samweli Gwau', 0, 'Kijichi', '255656375958', 'kanisasoft20@gamil.com', '2019-09-17', 'FPCT Uvinza', '2015-12-25', 'FPCT Uvinza', 'Mazegeli', 'Mzee wa kanisa', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0220', NULL, NULL, 'active', NULL, 0, '2026-03-22 13:25:16', '2026-03-23 19:24:56'),
(269, 272, 'Emmanuel Samson Messo', 'M', '1996-03-11', 'Musoma', NULL, 'Ameoa', 'Regina chares', 1, 'Mtongani', '255742647178', 'emesso582@gmail.com', '2022-03-01', 'P.A.G', '2022-03-25', 'Musoma', 'Mchungaji Paulo Anthon', 'Mchungaji', NULL, NULL, NULL, 'Mshilika wa kawaida', NULL, NULL, 'Darasa la 7', 'Nimejiajiri', 'Posta', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 14:12:44', '2026-03-22 14:12:44'),
(270, 273, 'Aloyce Jiles Joseph', 'M', '1998-02-26', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255686989156', 'aloycejiles79@gmail.com', '2014-01-07', 'MMPT', '2015-04-14', 'Kigoma', 'Briton Stansilaus', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya msingi', 'Mjasiliamali', 'Nimejiajiri', 'Kwa Aziz Ally', '0686989156', 0, NULL, NULL, NULL, NULL, NULL, '0218', NULL, NULL, 'active', NULL, 0, '2026-03-22 14:19:44', '2026-03-22 15:19:46'),
(271, 274, 'MARTHA ADAM AMANI', 'F', '1998-12-08', 'KIGOMA', NULL, 'Ameolewa', 'MICHAEL ERASTO SIMON', 1, 'Kongowe', '255745805587', 'marthaadam700@gmail.com', '2013-10-13', 'FPCT KITUNDA KATI', '2013-11-09', 'YOMBO KIWALANI', 'MICKLAS LUBABWA', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0258', NULL, NULL, 'active', NULL, 0, '2026-03-22 14:51:53', '2026-03-24 13:29:29'),
(272, 275, 'Olipa Yona', 'F', '2000-03-13', 'Kigoma', NULL, 'Ameolewa', 'Bilson Jonas', 2, 'Kizuiani', '255782720651', 'kanisasoft3@gmail.com', '2016-12-12', 'EAGT nkigo kigoma', '2016-12-12', 'EAGT Nkigo kigoma', 'Mchungaji Shedrack Lulumye', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0256', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:10:28', '2026-03-24 13:12:21'),
(273, 276, 'Beatrice Lameck Zabron', 'F', '1977-02-13', 'Kigoma', NULL, 'Mjane', NULL, 7, 'Mtongani', '255683634498', 'kanisasoft20@gmail.com', '1993-07-01', 'FPCT Buhigwe', '1993-08-01', 'FPCT Buhigwe', 'Kalibuami', 'Mzee wa Kanisa', NULL, NULL, NULL, 'Mshirika', NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Mfanyabiashara', '0683634498', 1, NULL, NULL, NULL, NULL, NULL, '0219', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:12:07', '2026-03-23 19:25:20'),
(274, 277, 'EVA TITO', 'F', '1996-05-28', 'Temeke', NULL, 'Ameolewa', 'Samwel chacha', 2, 'Kijichi', '255620633842', 'evatito04@gmail.com', '2014-05-10', 'Fpct chanika', '2014-03-29', 'Chanika', 'Jacksoni masunga', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', 'Nurse', 'Nimejiajiri', 'Posta', '0620633842', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 15:13:58', '2026-03-22 15:13:58'),
(275, 278, 'Jacklina Jackson Sangiza', 'F', '2004-06-30', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255677828812', 'kanisasoft21@gmail.com', '2017-06-04', 'FPCT Mkamba', '2020-06-14', 'FPCT Mkamba', 'Likiliwike', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', NULL, 'Nimejiajiri', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0217', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:14:24', '2026-03-22 15:15:13'),
(276, 279, 'Raphel Kanuti kunambi', 'M', '1989-04-28', 'Pwani', NULL, 'Ameoa', 'Pendo David', 1, 'Keko & Kurasini', '255783079925', 'Kanisasoft22@gmail.com', '2011-11-15', 'MRC', '2015-11-28', 'Kigamboni', 'Kasmir', 'Mchungaji', NULL, NULL, NULL, 'Mwinjilist', NULL, 'Elimu ya sekondari', 'Ujasiri', 'Nimejiajiri', 'Jamana printers', '0783079925', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 15:21:46', '2026-03-22 15:21:46'),
(277, 280, 'Joseph Prosper Basigwa', 'M', '2003-11-20', 'Temeke Dar es salaam', NULL, 'Hajaoa', NULL, 0, 'Kingugi', '255791340624', 'KanisaSoft7@gmal.com', '2024-11-30', 'FPCT Vikindu', '2025-05-04', 'FPCT kurasini', 'Mch Oscar kindole', 'Mch kiongozi', NULL, NULL, NULL, 'Mzi', NULL, 'Elimu ya sekondari', NULL, 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0259', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:26:45', '2026-03-24 13:34:26'),
(278, 281, 'Bilson Jonas Shamba', 'M', '1994-11-06', 'Kigoma', NULL, 'Ameoa', 'Olipa Yona', 2, 'Kizuiani', '255753081665', 'kanisasoft23@gmail.com', '2010-07-02', 'Fpct shinyanga mjin', '2010-07-03', 'Shinyanga mjini', 'Mchungaji efrahm mkumbo', 'Mchungaji', NULL, NULL, NULL, 'Muombaji', NULL, 'Elimu ya sekondari', NULL, 'Nimejiajiri', 'Chamanzi', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0232', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:41:28', '2026-03-23 19:24:25'),
(279, 282, 'Rahel Manase', 'F', '1998-11-05', 'Katavi', NULL, 'Ameolewa', 'Isaya Selesti', 2, 'Mbande', '255679994915', 'Kanisasoft24@gmail.com', '2022-05-09', 'FPCT KATAVI', '2022-09-02', 'FPCT KATAVI', 'Eliyazeri', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0245', NULL, NULL, 'active', NULL, 0, '2026-03-22 15:43:25', '2026-03-23 12:48:32'),
(280, 283, 'Isaya Seleste', 'M', '1996-02-02', 'KATAVI', NULL, 'Ameoa', 'Rahel Manase', 2, 'Mbande', '255784235023', 'Kanisasoft25@gmail.com', '2014-07-14', 'FPCT KATAVI', '2014-08-09', 'FPCT KATAVI', 'Eliazeri', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya msingi', 'Ujasiriamali', 'Nimeajiriwa', 'Tandika', '0784235023', 0, NULL, NULL, NULL, NULL, NULL, '0233', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:04:18', '2026-03-23 12:41:29'),
(281, 284, 'Daniel Jiles', 'M', '2004-02-07', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255750309156', 'kanisasoft26@gmail.com', '2018-07-01', 'M m pt', '2020-03-01', 'Kigoma', 'jeckonia lusoge', 'Mchungaji', NULL, NULL, NULL, 'Mwimbaji', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'Ilala boma', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0234', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:06:38', '2026-03-23 19:27:07'),
(282, 285, 'Stella Shertiely', 'F', '2006-04-21', 'Ilala', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255719674044', 'stellashartiel@gmail.com', '2019-06-01', 'Fpct kurasini', '2021-04-10', 'Fpct kurasini', 'Mchungaji Oscar kindole', 'Mchungaji', NULL, NULL, NULL, 'Uimbaji', NULL, 'Elimu ya chuo', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0235', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:09:42', '2026-03-23 12:41:38'),
(283, 286, 'JOSEPH R. MGUTU', 'M', '1984-11-28', 'Kigoma Kasulu', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255620679252', 'jmgutu72@gmail.com', '2002-03-15', 'FPCT Nyumbigwa', '2002-12-25', 'FPCT Nyumbigwa', 'James Maheze', 'MCHUNGAJI', NULL, NULL, NULL, 'Sijapa nafasi ya kuhudumu', NULL, 'Elimu ya sekondari', 'Uhasibu', 'Nimejiajiri', 'Vikindu', '0620679252', 1, NULL, NULL, NULL, NULL, NULL, '0236', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:31:50', '2026-03-23 23:48:31'),
(284, 287, 'Amos Zakaria kalinga', 'M', '2000-02-05', 'RUNGWE/MBEYA', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255763190646', 'kalingaamos90@gmail.com', '2013-07-10', 'SHALLOM ASSEMBLY', '2020-03-06', 'FPCT MASUGURU/KOROGWE', 'MCHUNGAJI  MWETA', 'MCHUNGAJI', NULL, NULL, NULL, 'MWIMBAJI', NULL, 'Elimu ya chuo', 'MWALIMU', 'Nimeajiriwa', 'MIBURANI SECONDARY SCHOOL', '0763190646', 0, NULL, NULL, NULL, NULL, NULL, '0237', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:40:21', '2026-03-23 12:41:48'),
(285, 288, 'EDINA MPEJIWA MAKENZI', 'F', '2006-07-04', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255619900796', 'edinampejiwa@gmail.com', '2018-10-20', 'E.A.G.T IRINGA', '2018-10-20', 'IRINGA', 'MICHAEL KILASI', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'Human Resource management', 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 16:42:10', '2026-03-22 16:42:10'),
(286, 289, 'Prisca Mayeji Mnemera', 'F', '1987-01-04', 'MAGU -MWANZA', NULL, 'Ameolewa', 'MARTIN JOHN MBAPILA', 3, 'Kizuiani', '255712009881', 'priscamnemera@gmail.com', '1998-12-05', 'P.A.G', '2000-12-24', 'BUNDA-MARA', 'PASTOR EZEKIEL JACKSON', 'ASKOFU WA JIMBO', NULL, NULL, NULL, 'Wimbaji', NULL, 'Elimu ya chuo kikuu', 'AFISA UGAVI', 'Nimeajiriwa', 'TANZANIA METHODIST CHURCH(TMC)', '0714747415', 0, NULL, NULL, NULL, NULL, NULL, '0229', NULL, NULL, 'active', NULL, 0, '2026-03-22 16:49:18', '2026-03-22 21:35:47'),
(287, 290, 'Esther John', 'F', '2003-04-12', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255689416180', 'emmanuelmethey566@gmail.com', '2025-12-04', 'FPCT YERUSALEMU TABORA', '2023-11-04', 'DAR ES SALAAM', 'Frank', 'Mchungaji', NULL, NULL, NULL, 'Muhumini', NULL, 'Elimu ya chuo kikuu', 'Bachelor of accountancy', 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, '2026-03-22 19:31:11', '2026-03-22 19:31:11'),
(288, 291, 'Esperansa William', 'F', '2000-08-31', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255621696851', 'williamkulwa16@gmail.com', '2015-12-15', 'FPCT mwanga', '2015-12-15', 'Kigoma', 'Jeremiah onesmo', 'Mchungaji msaidizi', NULL, NULL, NULL, 'Muimbaji', NULL, 'Elimu ya chuo kikuu', 'Uwalim', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0238', NULL, NULL, 'active', NULL, 0, '2026-03-22 20:46:59', '2026-03-23 12:42:00'),
(289, 292, 'Ezra Yavani Josias', 'M', '1996-05-17', 'Buhigwe/kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255715310596', 'Ezrayavanijosias@gmail.com', '2012-12-12', 'FPCT MJINI KATI', '2012-12-24', 'FPCT MJINI KATI', 'MCHUNGAJI BOAZI', 'MCHUNGAJI', NULL, NULL, NULL, 'MUIMBAJI(KUSIFU NA KUABUDU  HSP)', NULL, 'Elimu ya chuo kikuu', NULL, 'Mwanafunzi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '0239', NULL, NULL, 'active', NULL, 0, '2026-03-22 21:31:54', '2026-03-23 12:42:06'),
(290, 293, 'Macrice Daniel Mbodo', 'M', '1983-10-21', 'Kasulu, kigoma', NULL, 'Ameoa', 'Rahel', 2, 'Yerusalem', '255752498545', 'macrice.daniely@yahoo.com', '1999-05-01', 'FPCT Kasulu mjini', '1999-12-05', 'Kasulu', 'Askofu Bungwa', 'Askofu', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0230', NULL, NULL, 'active', NULL, 0, '2026-03-22 23:28:15', '2026-03-22 23:36:46'),
(291, 294, 'Numwagile Ackimu Mwakipale', 'F', '1989-05-28', 'Rungwe, Mbeya', NULL, 'Ameolewa', 'Kepha Michael', 1, 'Mgeninani', '255656303909', 'mwakipalen@gmail.com', '2017-03-19', 'FPCT Kurasini', '2018-03-19', 'FPCT Kurasini', 'Mch Oscar Kindole', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'Ununuzi na ugavi', 'Nimeajiriwa', 'Temeke', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0240', NULL, NULL, 'active', NULL, 0, '2026-03-23 00:13:18', '2026-03-23 12:42:14'),
(292, 295, 'DAVID ZACHARIA MABOYA', 'M', '2005-01-09', 'KAGERA', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255717631817', 'david@biziMana', '2025-05-18', 'Kurasin fpst', '2025-07-27', 'Kurasin fpst', 'NYANDA', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo', 'DEREVA', 'Nimeajiriwa', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0260', NULL, NULL, 'active', NULL, 0, '2026-03-23 08:00:48', '2026-03-24 13:35:22'),
(293, 296, 'Emiliana Mwita Nyakaraita', 'F', '1985-10-10', 'Serengeti, Mara', NULL, 'Ameolewa', 'Augusstino Madaki', 5, 'Mgeninani', '255652474828', 'emmyrhoby@gmail.com', '2026-03-10', 'Redeemed asembless of God', '2009-07-01', 'Sumbawanga', 'Mchungaji kyomo', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Hakuna', NULL, 'Elimu ya chuo kikuu', 'Ualimu', 'Nimeajiriwa', 'Chuo cha ualimu vikindu', 'Slp 16268', 0, NULL, NULL, NULL, NULL, NULL, '0241', NULL, NULL, 'active', NULL, 0, '2026-03-23 10:42:00', '2026-03-23 12:42:22'),
(294, 297, 'DIANA AZARIA GUSTAVE', 'F', '2003-11-23', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255797175781', 'dianaazaria1@gmail.com', '2021-07-25', 'Casfeta weruweru', '2022-12-10', 'Fpct Kurasini', 'Mch. Yohana Musimba', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya chuo kikuu', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0242', NULL, NULL, 'active', NULL, 0, '2026-03-23 11:35:26', '2026-03-23 12:42:25'),
(295, 298, 'DAINESS MANYEMA MLENGA', 'F', '1986-01-09', 'KATAVI', NULL, 'Ameolewa', 'AZARIA GUSTAVE MBOMBO', 6, 'Kinondoni', '255623845565', 'dainessmanyema@gmail.com', '2001-09-23', 'FPCT KAMINULA', '2001-12-16', 'FPCT KAMINULA', 'GUSTAVE MBOMBO', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Nimejiajiri', 'Kariakoo', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0243', NULL, NULL, 'active', NULL, 0, '2026-03-23 11:46:46', '2026-03-23 12:42:29'),
(296, 299, 'Eretina Mumba', 'F', '1960-10-10', 'Zambia', NULL, 'Ameolewa', 'Batista Kindole', 8, 'Tandika', '255785466691', 'eretinamumba10@gmail.com', '2022-06-03', 'FPCT Kurasini', '2022-07-10', 'FPCT Kurasini', 'Mch. Kindole', 'Mchungaji', NULL, NULL, NULL, NULL, NULL, 'Elimu ya msingi', NULL, 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0244', NULL, NULL, 'active', NULL, 0, '2026-03-23 12:37:59', '2026-03-23 12:42:44'),
(297, 300, 'Anastazia Gunamla Nchangenda', 'F', '1968-12-05', 'Kigoma', NULL, 'Mjane', NULL, 4, 'Tandika', '255653678154', 'fanirobert112@gmail.com', '2018-10-18', 'FPCT Kimamba Morogoro', '2019-08-10', 'Kimamba Morogoro', 'Aber ihonde', 'Mchungaji', NULL, NULL, NULL, 'Muombaji', NULL, 'Elimu ya msingi', 'Mfanyabiashara', 'Nimejiajiri', 'Tandika', '0653678154', 1, NULL, NULL, NULL, NULL, NULL, '0247', NULL, NULL, 'active', NULL, 0, '2026-03-23 18:48:50', '2026-03-23 19:05:50'),
(298, 301, 'Winfrida Azaria Gustave', 'F', '2005-10-26', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255785253636', 'winifridaazaria20@gmail.com', '2023-05-14', 'FPCT kurasini', '2023-06-10', 'FPCT kurasini', 'Pastor Oscar Kindole', 'Mchungaji kiongozi', NULL, NULL, NULL, 'Kujitolea kwa mambo ya kikanisa', NULL, 'Elimu ya chuo kikuu', NULL, 'Mwanafunzi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0250', NULL, NULL, 'active', NULL, 0, '2026-03-23 19:29:19', '2026-03-23 21:46:40'),
(299, 302, 'ESTER ELIA NTANDU', 'F', '1999-01-21', 'SINDIDA', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255662907294', 'esterelia709@icloud.com', '2010-01-03', 'FPCT MTAVIRA', '2018-02-11', 'MTAVIRA', 'MCHUNGAJI LAZARO FRANCIS', 'MCHUNGAJI', NULL, NULL, NULL, 'MWIMBAJI', NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'POSTA', NULL, 1, NULL, NULL, NULL, NULL, NULL, '0254', NULL, NULL, 'active', NULL, 0, '2026-03-24 09:32:06', '2026-03-24 12:59:52'),
(300, 303, 'Martin Mbapila', 'M', '1980-12-31', 'Ilala,Dar es Salaam', NULL, 'Ameoa', 'Prisca Mayeji Mnemera', 3, 'Kizuiani', '255712212901', 'dimartinspain@gmail.com', '2009-07-14', 'Assembly of God', '2012-11-14', 'Mwanza ,Malya', 'Mchungaji', 'Mchungaji', NULL, NULL, NULL, 'Mwalimu', NULL, 'Elimu ya chuo kikuu', 'Mwalimu', 'Sina kazi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0262', NULL, NULL, 'active', NULL, 0, '2026-03-24 17:42:17', '2026-03-24 18:33:52'),
(301, 304, 'NEEMA JUMA CHACHA', 'F', '2001-08-03', 'SERENGETI/MARA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255758363891', 'neemachacha935@gmail.com', '2015-07-01', 'EAGT-ISERESERE', '2016-09-03', 'MAJIMOTO', 'FAUSTINE MTATIRO MAHUNYO', 'MCHUNGAJI', NULL, NULL, NULL, NULL, NULL, 'Elimu ya sekondari', NULL, 'Nimeajiriwa', 'TWALIPO', '0758363891', 1, NULL, NULL, NULL, NULL, NULL, '0263', NULL, NULL, 'active', NULL, 0, '2026-03-24 20:20:59', '2026-03-24 20:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `member_group`
--

CREATE TABLE `member_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_group`
--

INSERT INTO `member_group` (`id`, `member_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 13, 8, '2026-01-27 22:47:34', '2026-01-27 22:47:34'),
(2, 13, 15, '2026-03-11 15:52:03', '2026-03-11 15:52:03'),
(3, 14, 15, '2026-03-11 15:54:05', '2026-03-11 15:54:05'),
(4, 20, 15, '2026-03-11 15:54:05', '2026-03-11 15:54:05'),
(5, 16, 15, '2026-03-11 15:54:06', '2026-03-11 15:54:06'),
(6, 17, 15, '2026-03-11 15:54:07', '2026-03-11 15:54:07'),
(7, 19, 15, '2026-03-11 15:54:07', '2026-03-11 15:54:07'),
(8, 21, 15, '2026-03-11 15:54:08', '2026-03-11 15:54:08'),
(9, 22, 15, '2026-03-11 15:54:09', '2026-03-11 15:54:09'),
(10, 58, 15, '2026-03-11 15:55:53', '2026-03-11 15:55:53'),
(11, 20, 14, '2026-03-11 16:02:10', '2026-03-11 16:02:10'),
(12, 14, 14, '2026-03-11 16:02:11', '2026-03-11 16:02:11'),
(13, 12, 14, '2026-03-11 16:02:11', '2026-03-11 16:02:11'),
(14, 13, 14, '2026-03-11 16:02:12', '2026-03-11 16:02:12'),
(15, 16, 14, '2026-03-11 16:02:12', '2026-03-11 16:02:12'),
(16, 17, 14, '2026-03-11 16:02:13', '2026-03-11 16:02:13'),
(17, 19, 14, '2026-03-11 16:02:13', '2026-03-11 16:02:13'),
(18, 21, 14, '2026-03-11 16:02:14', '2026-03-11 16:02:14'),
(19, 22, 14, '2026-03-11 16:02:14', '2026-03-11 16:02:14'),
(20, 25, 14, '2026-03-11 16:02:15', '2026-03-11 16:02:15'),
(21, 26, 14, '2026-03-11 16:02:16', '2026-03-11 16:02:16'),
(22, 27, 14, '2026-03-11 16:02:17', '2026-03-11 16:02:17'),
(23, 31, 14, '2026-03-11 16:02:17', '2026-03-11 16:02:17'),
(24, 32, 14, '2026-03-11 16:02:18', '2026-03-11 16:02:18'),
(25, 35, 14, '2026-03-11 16:02:19', '2026-03-11 16:02:19'),
(26, 41, 14, '2026-03-11 16:03:10', '2026-03-11 16:03:10'),
(27, 55, 14, '2026-03-11 16:03:10', '2026-03-11 16:03:10'),
(28, 52, 14, '2026-03-11 16:03:10', '2026-03-11 16:03:10'),
(29, 44, 14, '2026-03-11 16:03:10', '2026-03-11 16:03:10'),
(30, 42, 14, '2026-03-11 16:03:10', '2026-03-11 16:03:10'),
(31, 58, 14, '2026-03-11 16:03:11', '2026-03-11 16:03:11'),
(32, 47, 14, '2026-03-11 16:03:11', '2026-03-11 16:03:11'),
(33, 60, 14, '2026-03-11 16:03:11', '2026-03-11 16:03:11'),
(34, 78, 14, '2026-03-11 16:11:54', '2026-03-11 16:11:54'),
(35, 73, 14, '2026-03-11 16:11:55', '2026-03-11 16:11:55'),
(36, 71, 14, '2026-03-11 16:11:55', '2026-03-11 16:11:55'),
(37, 68, 14, '2026-03-11 16:11:56', '2026-03-11 16:11:56'),
(38, 64, 14, '2026-03-11 16:11:56', '2026-03-11 16:11:56'),
(39, 61, 14, '2026-03-11 16:11:57', '2026-03-11 16:11:57'),
(40, 62, 10, '2026-03-22 00:06:22', '2026-03-22 00:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_05_19_135833_create_groups_table', 1),
(2, '2025_05_19_140701_create_sessions_table', 1),
(3, '2025_05_19_143136_create_users_table', 1),
(4, '2025_05_19_145151_create_members_table', 1),
(5, '2025_05_19_152738_create_cache_table', 1),
(6, '2025_05_19_152903_create_personal_access_tokens_table', 1),
(7, '2025_05_20_160505_add_role_to_users_table', 1),
(8, '2025_05_24_152906_create_member_group_table', 1),
(9, '2025_05_24_221613_add_deactivation_reason_to_members_table', 1),
(10, '2025_05_25_010524_create_deleted_members_table', 1),
(11, '2025_05_25_022113_create_roles_table', 1),
(12, '2025_05_25_023307_add_role_id_to_users_table', 1),
(13, '2025_05_28_023331_create_guests_table', 1),
(14, '2025_05_28_180013_create_leadership_roles_table', 1),
(15, '2025_05_28_215130_create_leaders_table', 1),
(16, '2025_05_28_231210_add_status_to_leaders_table', 1),
(17, '2025_05_29_011805_create_events_table', 1),
(18, '2025_05_29_035001_create_contributions_table', 1),
(19, '2025_05_29_045500_create_contribution_types_table', 1),
(20, '2025_05_29_163350_create_assets_table', 1),
(21, '2025_05_29_164328_add_quantity_to_assets_table', 1),
(22, '2025_05_30_004603_add_protected_to_leadership_roles_table', 1),
(23, '2025_05_30_053817_create_sms_logs_table', 1),
(24, '2025_05_30_145145_add_receiver_to_sms_logs_table', 1),
(25, '2025_05_30_154922_update_leader_column_in_groups_table', 1),
(26, '2025_05_30_155630_rollback_leader_column_in_groups_table', 1),
(27, '2025_05_30_160254_add_leader_id_to_groups_table', 1),
(28, '2025_06_01_090502_create_galleries_table', 1),
(29, '2025_06_22_140334_update_marital_status_enum_in_users_table', 1),
(30, '2025_06_22_140606_update_marital_status_in_members_table', 1),
(31, '2025_06_23_150111_create_user_settings_table', 1),
(32, '2025_10_03_152712_add_new_fields_to_members_table', 1),
(33, '2025_10_03_154613_add_birth_district_to_users_table', 1),
(34, '2026_01_09_070450_create_password_resets_table', 2),
(35, '2026_01_17_135132_add_leader_code_to_leaders_table', 3),
(36, '2026_01_11_071705_create_personal_access_tokens_table', 1),
(37, '2025_11_27_092441_create_jobs_table', 4),
(38, '2026_01_22_115409_create_leader_leadership_role_table', 4),
(39, '2026_01_22_151715_remove_leadership_role_id_from_leaders_table', 5),
(40, '2026_01_24_062827_update_groups_table_structure', 6),
(41, '2026_01_22_144548_add_timestamps_to_leader_leadership_role_table', 4),
(42, '2026_03_09_122911_update_membership_status_enum_full_on_members_table', 7),
(43, '2026_03_11_133402_add_whatsapp_number_to_users_table', 8),
(44, '2026_03_18_142207_add_whatsapp_link_to_groups_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shadrackmussa97@gmail.com', '$2y$12$.NI3W.qzB48j88VftVUIQeAJC2c4M1FsDWyoycstWsu6R3HPWRYo6', '2026-01-15 16:05:57'),
('kaayah9@gmail.com', '$2y$12$LQuKNq/pmDbbpHaYl59b/eYtzxj5NOHqYZvtcg16.LSLCDpFQKq9G', '2026-01-21 21:38:35'),
('alfayokibhoge@gmail.com', '$2y$12$K7oLhZVrYp1Nt0OWU.v2ju5L9bA0f/Tp1/EugT6iAZ7ZBujQYPff.', '2026-02-25 18:26:15'),
('modky3@yahoo.com', '$2y$12$cMi4/.2i1AaIOVU.r25qFecslEuCy5pcWFcs1pf3fKgy.WJVwHwGK', '2026-02-27 15:46:30'),
('shadrackmussa97@gmail.com', '$2y$12$.NI3W.qzB48j88VftVUIQeAJC2c4M1FsDWyoycstWsu6R3HPWRYo6', '2026-01-15 16:05:57'),
('kaayah9@gmail.com', '$2y$12$LQuKNq/pmDbbpHaYl59b/eYtzxj5NOHqYZvtcg16.LSLCDpFQKq9G', '2026-01-21 21:38:35'),
('alfayokibhoge@gmail.com', '$2y$12$K7oLhZVrYp1Nt0OWU.v2ju5L9bA0f/Tp1/EugT6iAZ7ZBujQYPff.', '2026-02-25 18:26:15'),
('modky3@yahoo.com', '$2y$12$cMi4/.2i1AaIOVU.r25qFecslEuCy5pcWFcs1pf3fKgy.WJVwHwGK', '2026-02-27 15:46:30'),
('mwendapoleahaz@gmail.com', '$2y$12$.3frymA.jsput4a7qWuWI.gQKL0qNTOlTvmsG4..XtrcP3nXSsjw.', '2026-03-09 21:46:40'),
('sbathoha@gmail.com', '$2y$12$TwnGrWpEoWI3gZf72vEkieixMUJC0P0zQPFPAJdDRDZi/2abWitWW', '2026-03-14 13:16:09'),
('catherinekalibuha@gmail.com', '$2y$12$zeJPqmbh2YZNVmwiQm7s6uiLHJrRUv6v1uO6drXy1/GgfkpmVslpO', '2026-03-17 20:14:01'),
('mlawadonatus@gmail.com', '$2y$12$Ng.7tde8nWt/nr32TCUdZeznqT95PkESonvX4V0T3Utpq38aoFWm.', '2026-03-18 23:56:00'),
('M@yahoo.com', '$2y$12$FWtPNRWtJfesMm9jE4X7QeR4NMw4H5N6WDEqVvLoncTA0ZF1n9Ryi', '2026-03-19 15:03:26'),
('saburiedmon@gmail.com', '$2y$12$nUvzB0ix9fnH3P5Vaw4.ceSOyiFv7Bf.2AbbLu6qgsVGMmnUE.a4e', '2026-03-19 19:31:05'),
('marthaadam700@gmail.com', '$2y$12$AK1l6oJS1tFgmbrH/JHhZee1LnRAawUoDFYi0pMuLHy4o.A1GBzD2', '2026-03-22 14:55:05'),
('luciabathoha@gmail.com', '$2y$12$.6pLBwG.Xt1bt0f.pQ4ClOHMZK9QR80DdE2ofjAvv7i.i2h8UrzEK', '2026-03-22 15:34:45'),
('tmadaki48@gmail.com', '$2y$12$4GDb15Sr5zJdsQ4JKUPKA.DR70UdAnTFjcmfdvLGxnFtxMRpjvyZW', '2026-03-23 11:34:43'),
('dastanphilimon59@gmail.com', '$2y$12$FFbUQDKYQ8GJGZ3o7jMTgeJPy1uupXmgQCB25DgAoQ5bocnqHJpma', '2026-03-24 19:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '1c9526148781d95f6565ff0a9382c653a069c50bb8787fb8a77164e3081c1247', '[\"*\"]', NULL, NULL, '2025-11-16 21:59:12', '2025-11-16 21:59:12'),
(3, 'App\\Models\\User', 1, 'auth_token', '4deb4d278c7138b2e64bdf1839dac49690db036094c13e4b9d3fc901d4873084', '[\"*\"]', '2025-11-18 11:56:10', NULL, '2025-11-18 11:56:09', '2025-11-18 11:56:10'),
(5, 'App\\Models\\User', 1, 'auth_token', 'e433b3cd72e36c509cadf93e7ce2ee38b85c78a26ee238bf05420aea4f63328c', '[\"*\"]', '2025-11-18 15:07:29', NULL, '2025-11-18 15:05:50', '2025-11-18 15:07:29'),
(7, 'App\\Models\\User', 2, 'auth_token', '904ae257b8a03e201c25cbc7ceff611cb0b04882cab9b830e71cf29bc4e07386', '[\"*\"]', NULL, NULL, '2025-11-18 15:31:04', '2025-11-18 15:31:04'),
(10, 'App\\Models\\User', 1, 'auth_token', 'd212ecdaad9ff030492e68868f9f1f95d9d111c2d1fa5336112d6c4bd8080303', '[\"*\"]', '2025-11-27 13:27:29', NULL, '2025-11-27 13:26:34', '2025-11-27 13:27:29'),
(11, 'App\\Models\\User', 1, 'auth_token', 'ca1b96e0d55df8ed841ad29f2e7a93d6447c56a6d1cd563e145a40007de1cc07', '[\"*\"]', '2025-12-06 12:13:22', NULL, '2025-12-03 12:55:25', '2025-12-06 12:13:22'),
(12, 'App\\Models\\User', 1, 'auth_token', '510ff6887a1cafa89da8244a346faaf3561ecdd244c324c9ab88d01234c455e1', '[\"*\"]', NULL, NULL, '2025-12-06 10:53:14', '2025-12-06 10:53:14'),
(13, 'App\\Models\\User', 1, 'auth_token', '1eb0df9fb8c04149acefc1de60b428cbd6ee32b59869fba342cca57d77e604b0', '[\"*\"]', NULL, NULL, '2025-12-06 11:33:29', '2025-12-06 11:33:29'),
(15, 'App\\Models\\User', 1, 'auth_token', 'b29b8031bfa50de7bde599e5989f6c8e8beb8645fd05ebb0b1481815aeb7c441', '[\"*\"]', '2025-12-06 13:51:57', NULL, '2025-12-06 11:40:52', '2025-12-06 13:51:57'),
(17, 'App\\Models\\User', 3, 'auth_token', '04ce1b806ad1c1beb50093c36046ce25cdf474d4d938804cc58efd211274fe8a', '[\"*\"]', NULL, NULL, '2025-12-06 12:03:53', '2025-12-06 12:03:53'),
(18, 'App\\Models\\User', 1, 'auth_token', 'a33fb0d3c4bcf1f251a9cf2841c112dcca6620918bbb11e89c76c91e770c96ac', '[\"*\"]', '2025-12-06 12:06:21', NULL, '2025-12-06 12:04:09', '2025-12-06 12:06:21'),
(19, 'App\\Models\\User', 1, 'auth_token', '54999621ba5a124c69ebb5d1276a56269aff2b5e9acd40e648f837af94760c11', '[\"*\"]', '2025-12-06 16:22:10', NULL, '2025-12-06 12:16:56', '2025-12-06 16:22:10'),
(20, 'App\\Models\\User', 4, 'auth_token', '7b3d883cd178c81f8bdee0ba4442e9f5dc81fdb71b097b95b0217907daba80c1', '[\"*\"]', NULL, NULL, '2025-12-06 12:25:59', '2025-12-06 12:25:59'),
(21, 'App\\Models\\User', 5, 'auth_token', '16419b7971e98b0cac9e2aee7a3b212243d51f91e7e37c5276bec1d7226fc582', '[\"*\"]', NULL, NULL, '2025-12-06 12:37:31', '2025-12-06 12:37:31'),
(22, 'App\\Models\\User', 6, 'auth_token', '1f95afae49be0eb5865fb0b1cea4103f51c40a1b1faafbb24a100e8c6370fc33', '[\"*\"]', NULL, NULL, '2025-12-06 13:50:25', '2025-12-06 13:50:25'),
(23, 'App\\Models\\User', 7, 'auth_token', '4dec3c0e089b2432d9c5bd6cd14685b9d95e9ae8d9bb07bb9ef6ca22137cedbd', '[\"*\"]', NULL, NULL, '2025-12-06 16:13:34', '2025-12-06 16:13:34'),
(24, 'App\\Models\\User', 1, 'auth_token', 'e8a611170a6803413d69786c776eee68668f8a03bb51514315dbf5c4d1110082', '[\"*\"]', '2025-12-06 16:16:19', NULL, '2025-12-06 16:15:21', '2025-12-06 16:16:19'),
(26, 'App\\Models\\User', 8, 'auth_token', '6e55da5b9ecf035b71076d23d6d0603c3e3e42fbdc2908be45795eeac33d19c2', '[\"*\"]', NULL, NULL, '2025-12-08 17:40:21', '2025-12-08 17:40:21'),
(27, 'App\\Models\\User', 1, 'auth_token', 'b63345490f01cae7bbca853e8d023236e2276357e2bf6740b256f371ff314ba3', '[\"*\"]', '2025-12-08 17:40:56', NULL, '2025-12-08 17:40:28', '2025-12-08 17:40:56'),
(29, 'App\\Models\\User', 9, 'auth_token', 'b4e808b2bce7de7c99f1d70bc8c1c8fa18a32de69f1472d8d2cd4baf80a1d1e2', '[\"*\"]', NULL, NULL, '2025-12-13 16:06:49', '2025-12-13 16:06:49'),
(31, 'App\\Models\\User', 1, 'auth_token', '17c1269fe95c9c42f40ae87293c4f2ea2572592e83d9c14370bc33dd790d13c3', '[\"*\"]', '2025-12-13 16:21:12', NULL, '2025-12-13 16:21:11', '2025-12-13 16:21:12'),
(32, 'App\\Models\\User', 1, 'auth_token', 'a72c03af2ecd55ebe1d3c2f3116bac1ab02b227c90dccf3fdae663d5ffc521b5', '[\"*\"]', '2025-12-28 21:37:09', NULL, '2025-12-28 21:37:06', '2025-12-28 21:37:09'),
(35, 'App\\Models\\User', 10, 'auth_token', 'd471b613c3be02c0515de87b93252f84b2c66cbf1e37d2ea1a457870234a583b', '[\"*\"]', NULL, NULL, '2025-12-30 12:12:32', '2025-12-30 12:12:32'),
(37, 'App\\Models\\User', 11, 'auth_token', '747880838eee6b6d745d825710a9576ff2274b6c27c60379c875d656c3edd22c', '[\"*\"]', NULL, NULL, '2025-12-30 12:23:59', '2025-12-30 12:23:59'),
(38, 'App\\Models\\User', 1, 'auth_token', 'a8712902025f6c16be04a4f26d01d61467f7f2d4aef681620a12c988bc2aa4d2', '[\"*\"]', '2025-12-30 12:28:55', NULL, '2025-12-30 12:24:31', '2025-12-30 12:28:55'),
(40, 'App\\Models\\User', 1, 'auth_token', '5b960b6054997dcf577ba737bc7618165cf58413cafbfe69adc10aa6674edf31', '[\"*\"]', '2025-12-30 21:20:58', NULL, '2025-12-30 21:20:00', '2025-12-30 21:20:58'),
(41, 'App\\Models\\User', 15, 'auth_token', '7666d17fcee664f0f1ad9ecfc6dcb008b2d0b774402ce64b9fb748d21dde0640', '[\"*\"]', NULL, NULL, '2025-12-31 00:41:05', '2025-12-31 00:41:05'),
(42, 'App\\Models\\User', 15, 'auth_token', 'c1d3cc2c01698d865c1c608a1079ccecb115ae5a7a70dee4b8499ce26e223720', '[\"*\"]', '2025-12-31 02:38:03', NULL, '2025-12-31 02:37:42', '2025-12-31 02:38:03'),
(43, 'App\\Models\\User', 15, 'auth_token', '516a5193e93c4a83c9713a12459adcaafb1d3f625fb931ef287c36a2b9064bc5', '[\"*\"]', '2025-12-31 10:29:38', NULL, '2025-12-31 10:29:37', '2025-12-31 10:29:38'),
(44, 'App\\Models\\User', 15, 'auth_token', 'de87dc1b81ed3c9b1b94808ee2545db73185d905f479627b896e041527f566f9', '[\"*\"]', '2025-12-31 10:34:59', NULL, '2025-12-31 10:34:58', '2025-12-31 10:34:59'),
(46, 'App\\Models\\User', 15, 'auth_token', '57d7dc73bf10bd7d566d8728f334a0670a7819bd62ceea66524342f22a3accd6', '[\"*\"]', '2026-01-02 14:09:51', NULL, '2026-01-01 11:21:48', '2026-01-02 14:09:51'),
(47, 'App\\Models\\User', 15, 'auth_token', '8865e24a0cae5dca272484995aa1017388ba8e9cd5a5cf7ddfea06e76b6082c0', '[\"*\"]', '2026-01-02 13:26:21', NULL, '2026-01-02 13:26:07', '2026-01-02 13:26:21'),
(49, 'App\\Models\\User', 15, 'auth_token', '0db94760cde627a0e694740fba2b6b84659e80c517ab9490f41c2ede14fc410e', '[\"*\"]', '2026-01-02 20:21:27', NULL, '2026-01-02 20:19:37', '2026-01-02 20:21:27'),
(50, 'App\\Models\\User', 16, 'auth_token', '14ca3522c71cc0516cf917d49f31dc424b9b93cc3d4bc8129f6987e03e9adc09', '[\"*\"]', NULL, NULL, '2026-01-02 23:10:00', '2026-01-02 23:10:00'),
(51, 'App\\Models\\User', 15, 'auth_token', '45a4563fba95adb2ebed57003dad45e0a382d02f7f047bc68f11689b5983e01e', '[\"*\"]', '2026-01-03 03:15:48', NULL, '2026-01-03 03:15:18', '2026-01-03 03:15:48'),
(52, 'App\\Models\\User', 15, 'auth_token', '367645e27ef9c0033193eb1905ac12ae583b59bc9c104114cda61410f9ed8cd5', '[\"*\"]', '2026-01-03 03:16:38', NULL, '2026-01-03 03:16:11', '2026-01-03 03:16:38'),
(53, 'App\\Models\\User', 15, 'auth_token', '0e44be6e9d8f81cbb13167f7a5a682a199ff8db68cfb9f977a468382ddfa9e15', '[\"*\"]', '2026-01-03 10:21:55', NULL, '2026-01-03 10:21:30', '2026-01-03 10:21:55'),
(54, 'App\\Models\\User', 17, 'auth_token', 'c8381e1fceb0b887947532e69d8ae4063c46a98ae75267dac56c05f5da10faf5', '[\"*\"]', NULL, NULL, '2026-01-03 11:35:08', '2026-01-03 11:35:08'),
(55, 'App\\Models\\User', 15, 'auth_token', 'bc5d804071eac4ddad88ee19ec1dbe2a163eb616211628060ef591594633ad91', '[\"*\"]', '2026-01-03 11:45:11', NULL, '2026-01-03 11:44:55', '2026-01-03 11:45:11'),
(56, 'App\\Models\\User', 15, 'auth_token', '81c836acd38d5f217665af6239e8c448076932e8be77b4091b64dde264563b61', '[\"*\"]', '2026-01-03 11:46:14', NULL, '2026-01-03 11:45:22', '2026-01-03 11:46:14'),
(57, 'App\\Models\\User', 15, 'auth_token', '4fa54e01f0a90c2e0e95f615aae53edac8093a3b6d070786980accb836d0297f', '[\"*\"]', '2026-01-03 11:46:19', NULL, '2026-01-03 11:46:19', '2026-01-03 11:46:19'),
(58, 'App\\Models\\User', 17, 'auth_token', 'aa11b763f2e50ce9bfcf58bd6439f7d4cb51a6fa8f9f02ab4dd5a9bffeeb2af8', '[\"*\"]', '2026-01-03 13:30:40', NULL, '2026-01-03 13:24:07', '2026-01-03 13:30:40'),
(60, 'App\\Models\\User', 18, 'auth_token', 'a82799066e4cf7a1bc539bb0ca1115a405593f91103dd518308a934ca8e1d95a', '[\"*\"]', NULL, NULL, '2026-01-03 14:21:31', '2026-01-03 14:21:31'),
(62, 'App\\Models\\User', 15, 'auth_token', 'b2521e97b2995765afd535951c17a4f748f48198be1a99ac9096f7da1862985e', '[\"*\"]', '2026-01-03 14:32:54', NULL, '2026-01-03 14:32:41', '2026-01-03 14:32:54'),
(64, 'App\\Models\\User', 15, 'auth_token', '407f7fc26126882406bcd8956a54d4aa1fc2a317ac1f07552afd984380f56aad', '[\"*\"]', '2026-01-03 14:34:21', NULL, '2026-01-03 14:34:20', '2026-01-03 14:34:21'),
(65, 'App\\Models\\User', 15, 'auth_token', '8123ce4566429389612f58011547104b56ddd62075ccb211b5565ab26d3e43fe', '[\"*\"]', '2026-01-03 14:34:57', NULL, '2026-01-03 14:34:51', '2026-01-03 14:34:57'),
(66, 'App\\Models\\User', 15, 'auth_token', '2c0ba606a940316f0fad905dbdd96f1886b5f6390271db33fff9b4fe4078f5e4', '[\"*\"]', '2026-01-03 16:51:55', NULL, '2026-01-03 16:51:54', '2026-01-03 16:51:55'),
(67, 'App\\Models\\User', 15, 'auth_token', '06566217a6fc0a43fb7f226a440b844342dcd32ddc5418e82eb048f208d9a459', '[\"*\"]', '2026-01-03 18:13:06', NULL, '2026-01-03 18:13:05', '2026-01-03 18:13:06'),
(68, 'App\\Models\\User', 17, 'auth_token', 'bb6f28bb1af294304bf2d1fc0831f3877280c0cb83cfa7e03fca0860887f189a', '[\"*\"]', '2026-01-03 21:09:37', NULL, '2026-01-03 21:07:38', '2026-01-03 21:09:37'),
(69, 'App\\Models\\User', 17, 'auth_token', 'ab3188da9fc21cd3ab7d6aac6b916745fa6236e6257cab33b6c2dd30f254ac17', '[\"*\"]', '2026-01-03 21:14:55', NULL, '2026-01-03 21:10:54', '2026-01-03 21:14:55'),
(70, 'App\\Models\\User', 17, 'auth_token', '84b7d46713c2b3b16efc51d6fbb559cd29ef3f1f57da649fa0117a63696ce49d', '[\"*\"]', '2026-01-03 21:17:33', NULL, '2026-01-03 21:16:25', '2026-01-03 21:17:33'),
(71, 'App\\Models\\User', 17, 'auth_token', '12b012b47c4f360d03e12e9112dff3cbad36c0f2034469b2c058d5db45d376af', '[\"*\"]', '2026-01-03 21:23:04', NULL, '2026-01-03 21:18:46', '2026-01-03 21:23:04'),
(72, 'App\\Models\\User', 17, 'auth_token', '9f58b369a4e4db4c5d41960b18d721ae62ef1840f8cc6fc23cb1dd12922ac954', '[\"*\"]', '2026-01-03 21:38:32', NULL, '2026-01-03 21:38:30', '2026-01-03 21:38:32'),
(73, 'App\\Models\\User', 15, 'auth_token', 'd128fcdd9188e96d1148258530b05bd1a25195da662c2ddc0eef8f8c8ebbda03', '[\"*\"]', '2026-01-06 11:31:45', NULL, '2026-01-03 21:54:57', '2026-01-06 11:31:45'),
(74, 'App\\Models\\User', 15, 'auth_token', '4011e87892b6abdd6e8d86bc556bbe3cf6d08fe127add9c6c5d8ed9da7a5aa2e', '[\"*\"]', '2026-01-03 21:55:20', NULL, '2026-01-03 21:55:20', '2026-01-03 21:55:20'),
(75, 'App\\Models\\User', 17, 'auth_token', 'fa023070d58fbe7d56ef93e608348fb589887fe6ee3782dcb942e9d54950b2ee', '[\"*\"]', '2026-01-03 21:59:26', NULL, '2026-01-03 21:59:25', '2026-01-03 21:59:26'),
(76, 'App\\Models\\User', 15, 'auth_token', 'cba55e489923af50abd160b9d2faf07198e18e322b85885d642194b9ff834e1d', '[\"*\"]', '2026-01-03 22:00:08', NULL, '2026-01-03 22:00:08', '2026-01-03 22:00:08'),
(77, 'App\\Models\\User', 15, 'auth_token', '38578d3092936d1d42305d9b0fd8149b9a62f603ada67dc1e68a94cfc6a6c29f', '[\"*\"]', '2026-01-03 22:00:41', NULL, '2026-01-03 22:00:29', '2026-01-03 22:00:41'),
(78, 'App\\Models\\User', 15, 'auth_token', '4e8c7f9460f25aa977871a0fb1ad67f7955b06597481ff08113e4c5213e30ec8', '[\"*\"]', '2026-01-03 22:02:55', NULL, '2026-01-03 22:00:45', '2026-01-03 22:02:55'),
(79, 'App\\Models\\User', 15, 'auth_token', '6fb296913cb8222b4e27128b559a97d00bd513f0a6a3b89ae878d9902a8cd200', '[\"*\"]', '2026-01-03 22:05:14', NULL, '2026-01-03 22:04:32', '2026-01-03 22:05:14'),
(80, 'App\\Models\\User', 15, 'auth_token', 'e6f3a981cb8a242017248f8dc01df4954b2fb4dec9f09e0cd4bc71b7b0369f12', '[\"*\"]', '2026-01-03 22:05:51', NULL, '2026-01-03 22:05:31', '2026-01-03 22:05:51'),
(81, 'App\\Models\\User', 15, 'auth_token', 'dc7cd307bb348bd0edc0109024584e4920d9032b58c692fcb6dd77b4d9a0e7e3', '[\"*\"]', '2026-01-03 22:06:57', NULL, '2026-01-03 22:06:04', '2026-01-03 22:06:57'),
(82, 'App\\Models\\User', 15, 'auth_token', '0b4d82bfa4ab0cf8dffc66dfe0ff5d51fc103a3a9755559c69b1959e98594805', '[\"*\"]', '2026-01-03 22:10:32', NULL, '2026-01-03 22:07:34', '2026-01-03 22:10:32'),
(83, 'App\\Models\\User', 15, 'auth_token', '3971e0da513f6ae89781db2e044d7041d7c6b1d23ee91e8ba0d23e333372e786', '[\"*\"]', '2026-01-03 22:12:58', NULL, '2026-01-03 22:11:10', '2026-01-03 22:12:58'),
(84, 'App\\Models\\User', 15, 'auth_token', 'aeebf171162032ae332a707acf669b87089c41cc3dad26773b83a3edcaa3ef28', '[\"*\"]', '2026-01-03 22:13:15', NULL, '2026-01-03 22:13:05', '2026-01-03 22:13:15'),
(85, 'App\\Models\\User', 15, 'auth_token', '3969b79e529337ec5cc7eabde2f338e431c912392b7031c34b3178835cf16639', '[\"*\"]', '2026-01-03 22:13:40', NULL, '2026-01-03 22:13:38', '2026-01-03 22:13:40'),
(86, 'App\\Models\\User', 19, 'auth_token', 'f24f57c0b5a77663b39fe8db1bd2b8888a86e050406204766cf2cc7077db9d23', '[\"*\"]', NULL, NULL, '2026-01-03 22:19:30', '2026-01-03 22:19:30'),
(87, 'App\\Models\\User', 17, 'auth_token', '0c2018ad4de406a374d0ad49400df057fca7f468b6c2bba5962944ce5d557bb0', '[\"*\"]', '2026-01-03 22:54:43', NULL, '2026-01-03 22:54:16', '2026-01-03 22:54:43'),
(88, 'App\\Models\\User', 17, 'auth_token', '5d1cc915a0fd8a24af31157f021c8e1d66691c20ed3fec17d8fbfb40ee7b64e5', '[\"*\"]', '2026-01-03 22:56:48', NULL, '2026-01-03 22:55:03', '2026-01-03 22:56:48'),
(89, 'App\\Models\\User', 17, 'auth_token', '874a5d2844d4eb83fefea9be819e435bb00c1311fa2d46d4cafd8d4d6d1f293f', '[\"*\"]', '2026-01-03 23:01:31', NULL, '2026-01-03 22:56:54', '2026-01-03 23:01:31'),
(90, 'App\\Models\\User', 15, 'auth_token', 'a1497b18a78180c9bb9954adfc4fd5fab3210ece5020e2cb85a700bccfdd6ae6', '[\"*\"]', '2026-01-03 23:11:25', NULL, '2026-01-03 23:11:23', '2026-01-03 23:11:25'),
(91, 'App\\Models\\User', 15, 'auth_token', 'cc8de659540c24ac3a85fed77048fa7ec9df161a8208fb35ac14a0f4974d6e99', '[\"*\"]', '2026-01-03 23:11:44', NULL, '2026-01-03 23:11:39', '2026-01-03 23:11:44'),
(92, 'App\\Models\\User', 17, 'auth_token', 'a8abeb8f1f05705fd8b6c2d75a74de70e3da8162ec43e786a3255deb4ce0a7f9', '[\"*\"]', '2026-01-03 23:15:35', NULL, '2026-01-03 23:14:42', '2026-01-03 23:15:35'),
(93, 'App\\Models\\User', 17, 'auth_token', '3bde4d43048d9f0d31d9817d8fce52dee69c52289199d9620475cba7be49abbc', '[\"*\"]', '2026-01-03 23:15:52', NULL, '2026-01-03 23:15:51', '2026-01-03 23:15:52'),
(94, 'App\\Models\\User', 15, 'auth_token', '0442fb6526535eada3b3b87a895ad7cdbd33f5bdf05978cc01b10516b4ec18d1', '[\"*\"]', '2026-01-03 23:38:14', NULL, '2026-01-03 23:38:08', '2026-01-03 23:38:14'),
(95, 'App\\Models\\User', 15, 'auth_token', '634c30271516fbbdb14b5592aad0ebc55bbca5cdc142c39766f74eaf69ab5323', '[\"*\"]', '2026-01-03 23:45:55', NULL, '2026-01-03 23:45:33', '2026-01-03 23:45:55'),
(96, 'App\\Models\\User', 15, 'auth_token', '733bb0bba5fd289ef0a89c219288801a51c6b6231b279626c07cb0f42660582b', '[\"*\"]', '2026-01-04 09:49:56', NULL, '2026-01-04 09:49:19', '2026-01-04 09:49:56'),
(97, 'App\\Models\\User', 15, 'auth_token', 'a95034762e84cb65519c90d87f14534932c94e2a4d4fa8fa3a788365194a98e7', '[\"*\"]', '2026-01-04 09:59:07', NULL, '2026-01-04 09:58:54', '2026-01-04 09:59:07'),
(98, 'App\\Models\\User', 20, 'auth_token', '79350bc68b22bb707ef14c4369f1156b83e109a9a1f4f9c9ebad40aa47afb8bb', '[\"*\"]', NULL, NULL, '2026-01-04 11:40:19', '2026-01-04 11:40:19'),
(99, 'App\\Models\\User', 15, 'auth_token', '358ae332bbbddc6d055254cc5b23a886496741a3378a0321b7670f1805bee0a0', '[\"*\"]', '2026-01-04 21:42:28', NULL, '2026-01-04 21:42:23', '2026-01-04 21:42:28'),
(100, 'App\\Models\\User', 17, 'auth_token', '4097e70fc47a2028cafb8b6381069d6bfa81eb15cc99b7c40f1dbd629c97c23c', '[\"*\"]', '2026-01-04 22:37:57', NULL, '2026-01-04 22:37:02', '2026-01-04 22:37:57'),
(101, 'App\\Models\\User', 15, 'auth_token', '4542b60bcd94cfb914a7182bccae5ce7d3c67b28822b7533fe88ef688b302b97', '[\"*\"]', '2026-01-04 22:42:17', NULL, '2026-01-04 22:41:54', '2026-01-04 22:42:17'),
(102, 'App\\Models\\User', 21, 'auth_token', 'fa2d1b8624400cb149f1b52cfca78a4d42f9e789abfd613f407b8e76aa56da69', '[\"*\"]', NULL, NULL, '2026-01-05 10:44:00', '2026-01-05 10:44:00'),
(103, 'App\\Models\\User', 15, 'auth_token', '212beb0d871dd024559ca8de106d0966020b91d6b5bfe93ddec61ef914a85364', '[\"*\"]', '2026-01-05 18:12:03', NULL, '2026-01-05 17:51:09', '2026-01-05 18:12:03'),
(104, 'App\\Models\\User', 15, 'auth_token', 'f030ef5d9b8bb462abcacb999fedc024c3d96ec854cf1c02cbf557340bc13108', '[\"*\"]', '2026-01-05 18:14:15', NULL, '2026-01-05 18:10:48', '2026-01-05 18:14:15'),
(105, 'App\\Models\\User', 15, 'auth_token', 'e83b18a51a2005b5eaed9bf9847cdf6ebdfea4fb3634e64bd7045de2be97eca3', '[\"*\"]', '2026-01-05 18:14:52', NULL, '2026-01-05 18:14:51', '2026-01-05 18:14:52'),
(106, 'App\\Models\\User', 15, 'auth_token', 'a818eb5dda6c595f32cfccd7fd86ec128792353c701becdd70d4082583c734b7', '[\"*\"]', '2026-01-05 18:15:13', NULL, '2026-01-05 18:15:02', '2026-01-05 18:15:13'),
(107, 'App\\Models\\User', 15, 'auth_token', '885e483c09681b52878ab2223df0453a1517a98c82b0887c07d011cd63223bac', '[\"*\"]', '2026-01-05 21:38:56', NULL, '2026-01-05 21:38:20', '2026-01-05 21:38:56'),
(108, 'App\\Models\\User', 15, 'auth_token', '6bbec34a4e6b7e94b0e8b44296444007fb72141ab9d3a207e6d9747f6460d13e', '[\"*\"]', '2026-01-06 10:54:53', NULL, '2026-01-06 10:54:51', '2026-01-06 10:54:53'),
(109, 'App\\Models\\User', 15, 'auth_token', '1c5ef168dd137594c69b71f1df6890aeb1d1cc449964bb5930b5ddbe37dc3497', '[\"*\"]', '2026-01-06 10:59:50', NULL, '2026-01-06 10:59:35', '2026-01-06 10:59:50'),
(110, 'App\\Models\\User', 15, 'auth_token', 'f866893a1872d0153707a08d931aeff59619b15c67ebbcdac546e41684a0414e', '[\"*\"]', '2026-01-06 11:07:38', NULL, '2026-01-06 11:07:30', '2026-01-06 11:07:38'),
(112, 'App\\Models\\User', 15, 'auth_token', '5275c26d89e556c3b04c99947f7307ba245cc90d153ba82325e75ed7fa3f5bb1', '[\"*\"]', '2026-01-06 15:25:34', NULL, '2026-01-06 15:25:07', '2026-01-06 15:25:34'),
(116, 'App\\Models\\User', 15, 'auth_token', '31049fb459c02d7d895bbb19edec7d209a26802805bf75c5cd6d47cdb2e03e56', '[\"*\"]', NULL, NULL, '2026-01-06 19:06:55', '2026-01-06 19:06:55'),
(117, 'App\\Models\\User', 15, 'auth_token', 'b4e98bc3f38ee67f720fbf2d836ce4024d69166c81da97a194dfec0c30e651c3', '[\"*\"]', '2026-01-06 19:08:03', NULL, '2026-01-06 19:07:29', '2026-01-06 19:08:03'),
(118, 'App\\Models\\User', 15, 'auth_token', '33dd3ecbd23badcc22821c4b34e97d90067f1c07257bbbd82ba39a846dfa5f81', '[\"*\"]', '2026-01-06 20:03:04', NULL, '2026-01-06 19:49:59', '2026-01-06 20:03:04'),
(119, 'App\\Models\\User', 15, 'auth_token', 'd70c608a35709a3ae62a7d6edd5a6c92e2806b89a98d71a0db562fa9b99f9b8c', '[\"*\"]', '2026-01-06 21:25:22', NULL, '2026-01-06 21:16:14', '2026-01-06 21:25:22'),
(120, 'App\\Models\\User', 17, 'auth_token', '2941cb3d9b4ab39cc00efb010a4612925ebece6482f66b7f181550cb6b376bfb', '[\"*\"]', '2026-01-06 22:10:16', NULL, '2026-01-06 22:09:58', '2026-01-06 22:10:16'),
(121, 'App\\Models\\User', 17, 'auth_token', '4f3ac50a329ffd8fe9b59d51b22f07ef92c8a194a256e80d56c2a567b22c8b97', '[\"*\"]', '2026-01-06 23:02:40', NULL, '2026-01-06 23:02:24', '2026-01-06 23:02:40'),
(122, 'App\\Models\\User', 17, 'auth_token', '486f4b70b6a519dd9b20847884599919e23afa1e514a7d4bd8b1ca6a2523d004', '[\"*\"]', '2026-01-06 23:04:18', NULL, '2026-01-06 23:04:17', '2026-01-06 23:04:18'),
(123, 'App\\Models\\User', 17, 'auth_token', '8729c4b181519ca4bb16fa703cefb9104d4c1b46fd653e1c8f3a1781f0034e67', '[\"*\"]', '2026-01-06 23:06:29', NULL, '2026-01-06 23:06:20', '2026-01-06 23:06:29'),
(124, 'App\\Models\\User', 17, 'auth_token', '32e49bd27d9ab8dd8a396acb36807331433e9fd705f65174acb85e3abd988d68', '[\"*\"]', '2026-01-06 23:08:52', NULL, '2026-01-06 23:08:34', '2026-01-06 23:08:52'),
(125, 'App\\Models\\User', 15, 'auth_token', 'e94b35d54cd6af59de61c85fe42b44717ef39a4eec1fd0ee3c960597cb9c007a', '[\"*\"]', '2026-01-06 23:16:39', NULL, '2026-01-06 23:16:25', '2026-01-06 23:16:39'),
(126, 'App\\Models\\User', 15, 'auth_token', '7b29f13b414ff0ed160dab8155a9c60a8e2ac8cf035f2fe5ade26bb1bc26b874', '[\"*\"]', '2026-01-06 23:43:25', NULL, '2026-01-06 23:43:12', '2026-01-06 23:43:25'),
(127, 'App\\Models\\User', 15, 'auth_token', '976740779c5185d224a66f0c96f710976423478d6c5a1218da81ca62982a37be', '[\"*\"]', '2026-01-06 23:43:47', NULL, '2026-01-06 23:43:41', '2026-01-06 23:43:47'),
(128, 'App\\Models\\User', 15, 'auth_token', '7687e6a902b9a86f9b6cdce97a63822d5e7aebf92fc5e23036be964f5c27c468', '[\"*\"]', '2026-01-06 23:44:28', NULL, '2026-01-06 23:44:16', '2026-01-06 23:44:28'),
(129, 'App\\Models\\User', 15, 'auth_token', '6a0daf981c18d878ab0875c1ea33bb4faa9995d681188edbf43ff5e69f6df59b', '[\"*\"]', '2026-01-06 23:45:15', NULL, '2026-01-06 23:44:41', '2026-01-06 23:45:15'),
(130, 'App\\Models\\User', 22, 'auth_token', '711e8ac5a8bc43ead26bd64ff3c776a67ded25955c4795fa185e869aaa364864', '[\"*\"]', NULL, NULL, '2026-01-07 11:13:50', '2026-01-07 11:13:50'),
(131, 'App\\Models\\User', 15, 'auth_token', 'b4b4753c49170e49e164278157eaca2d3129d38e3b530f87b84ebeed007c86ec', '[\"*\"]', '2026-01-07 12:57:42', NULL, '2026-01-07 12:57:32', '2026-01-07 12:57:42'),
(132, 'App\\Models\\User', 23, 'auth_token', '39f5780f22af9e69dafcc5aba1a675b74019134bbcc087094232837eb6521769', '[\"*\"]', NULL, NULL, '2026-01-07 14:07:25', '2026-01-07 14:07:25'),
(133, 'App\\Models\\User', 17, 'auth_token', '776209a6269435b806d2b2b5e54d455c1d58e3a918d6361b68d1c9a617d3faf1', '[\"*\"]', '2026-01-07 14:23:32', NULL, '2026-01-07 14:22:37', '2026-01-07 14:23:32'),
(134, 'App\\Models\\User', 15, 'auth_token', 'c32db3257593edbdd6ed48ac3b6f2aa40a9fd6bc2651c2984f4285f84440ac5b', '[\"*\"]', '2026-01-07 14:36:09', NULL, '2026-01-07 14:34:21', '2026-01-07 14:36:09'),
(135, 'App\\Models\\User', 23, 'auth_token', '67ece10fc8cc5f5dd886a7376cdd7cbc82271da5eeb14367ec01c87c97054a34', '[\"*\"]', '2026-01-07 14:39:16', NULL, '2026-01-07 14:37:30', '2026-01-07 14:39:16'),
(136, 'App\\Models\\User', 15, 'auth_token', 'bb1cca3866574a960bfd061763b7daa7c62e994ea99127cff547a995cc11da3e', '[\"*\"]', '2026-01-07 15:02:36', NULL, '2026-01-07 15:02:05', '2026-01-07 15:02:36'),
(137, 'App\\Models\\User', 15, 'auth_token', 'bb0b1146cd3086aeba78a4e1b7dd811c40931a7062a8791961783e7c68d15686', '[\"*\"]', '2026-01-07 15:08:57', NULL, '2026-01-07 15:03:26', '2026-01-07 15:08:57'),
(138, 'App\\Models\\User', 24, 'auth_token', '463fe3d097c439120a507305d448ea0af4acd6637eb24429a68af6f6541c682f', '[\"*\"]', NULL, NULL, '2026-01-07 15:08:26', '2026-01-07 15:08:26'),
(139, 'App\\Models\\User', 23, 'auth_token', 'd6359296d04347d5bd77c98fcbf804f9a446221939be7c7b524fcb5197ae77cf', '[\"*\"]', '2026-01-07 18:25:17', NULL, '2026-01-07 15:10:06', '2026-01-07 18:25:17'),
(140, 'App\\Models\\User', 17, 'auth_token', '1a5e5f8eafc7cb175def2c443f278bbc9a5186acc2f24095845bb7634c303200', '[\"*\"]', '2026-01-07 16:24:03', NULL, '2026-01-07 16:13:15', '2026-01-07 16:24:03'),
(143, 'App\\Models\\User', 15, 'auth_token', 'b8f426666efcddbdbd89079d81ce0d998843aa420a1ad389ae36208a70977b26', '[\"*\"]', '2026-01-07 19:39:55', NULL, '2026-01-07 19:39:38', '2026-01-07 19:39:55'),
(144, 'App\\Models\\User', 15, 'auth_token', '19407ca8602d1ae43bae829ecb62af6bde3c82556995261d0df7c582f16cb5b4', '[\"*\"]', '2026-01-07 19:42:59', NULL, '2026-01-07 19:41:30', '2026-01-07 19:42:59'),
(145, 'App\\Models\\User', 15, 'auth_token', '62988c22a0fed33706cbb41b765462667bc96de17b51c1f83301b8278ee970cd', '[\"*\"]', '2026-01-07 19:43:49', NULL, '2026-01-07 19:43:13', '2026-01-07 19:43:49'),
(146, 'App\\Models\\User', 15, 'auth_token', 'e01575b1233428f050652ca3b509e4c2d7ffa8536bd1842b4152a8188c3ff6c4', '[\"*\"]', '2026-01-07 19:45:30', NULL, '2026-01-07 19:45:02', '2026-01-07 19:45:30'),
(147, 'App\\Models\\User', 15, 'auth_token', '7ad1a493ef4b8c55f49b08195f0302fc8ba1400a188fe7a95296a0b607680154', '[\"*\"]', '2026-01-07 19:46:25', NULL, '2026-01-07 19:46:20', '2026-01-07 19:46:25'),
(148, 'App\\Models\\User', 15, 'auth_token', '4830af280aaf9a29992fb67f98f3242ec2570608a9368920590ebe4ac8f5b23d', '[\"*\"]', '2026-01-07 19:46:42', NULL, '2026-01-07 19:46:41', '2026-01-07 19:46:42'),
(149, 'App\\Models\\User', 15, 'auth_token', 'e8f6563659a21ba99aaf15fd9630a1af9557f977d43ed52f785439ac6a00a016', '[\"*\"]', '2026-01-07 19:47:11', NULL, '2026-01-07 19:47:07', '2026-01-07 19:47:11'),
(150, 'App\\Models\\User', 15, 'auth_token', 'a8ed79cc6a25bd501238ff6c687d940b6bbde208c014a84e56f90b8410f4855a', '[\"*\"]', '2026-01-07 19:48:44', NULL, '2026-01-07 19:47:38', '2026-01-07 19:48:44'),
(151, 'App\\Models\\User', 15, 'auth_token', '4d62d725517614c191afffd4c0167a4fd360a22a6e69ade0dd84333a6ac7d948', '[\"*\"]', '2026-01-07 19:49:03', NULL, '2026-01-07 19:48:59', '2026-01-07 19:49:03'),
(152, 'App\\Models\\User', 15, 'auth_token', '94ecca88a1e6830868acc26d7bbc61747545f2bed4bd6eef548fa90543f0ef7b', '[\"*\"]', '2026-01-07 19:54:12', NULL, '2026-01-07 19:54:07', '2026-01-07 19:54:12'),
(153, 'App\\Models\\User', 15, 'auth_token', '1574afbcc3fa0d24ee3d8021cd64a993380d8b125b05418a409a5c921a189ac2', '[\"*\"]', '2026-01-07 19:54:35', NULL, '2026-01-07 19:54:33', '2026-01-07 19:54:35'),
(154, 'App\\Models\\User', 15, 'auth_token', 'ee7045ead83825fe5ceab427538f6ab5702351f489f32eafbf605d0bab87559a', '[\"*\"]', '2026-01-07 20:34:54', NULL, '2026-01-07 20:30:30', '2026-01-07 20:34:54'),
(155, 'App\\Models\\User', 15, 'auth_token', 'fe328b8cd31cd2f4f17e7ab9a0a0c786612fe5ac79e5d822aa67b1ecb73c6011', '[\"*\"]', '2026-01-07 20:35:42', NULL, '2026-01-07 20:35:00', '2026-01-07 20:35:42'),
(156, 'App\\Models\\User', 15, 'auth_token', 'bbfec3e74a3816e177a77deecec3df46944225abf601360b10023f87ff1ee591', '[\"*\"]', '2026-01-07 20:36:59', NULL, '2026-01-07 20:35:51', '2026-01-07 20:36:59'),
(157, 'App\\Models\\User', 15, 'auth_token', '94c4cd615458ba25dc1b0bba58ebd1ffec212901318ad0bbd54545b87a61e4c8', '[\"*\"]', '2026-01-07 20:38:23', NULL, '2026-01-07 20:38:22', '2026-01-07 20:38:23'),
(158, 'App\\Models\\User', 15, 'auth_token', '776371db05bd3371744021a804e345a6892d22e3c60eb5a22d6b0694ac77ff2f', '[\"*\"]', '2026-01-07 20:38:59', NULL, '2026-01-07 20:38:42', '2026-01-07 20:38:59'),
(159, 'App\\Models\\User', 15, 'auth_token', '476e482edb4edde7ce40ed173ea2a61ebe0a5203cc294880e268d815e4a43f9a', '[\"*\"]', '2026-01-07 20:46:54', NULL, '2026-01-07 20:46:53', '2026-01-07 20:46:54'),
(160, 'App\\Models\\User', 15, 'auth_token', 'f0a849cfcd1562352bf0707918b4fde4338654e703603c8d01fe9474ba79c32c', '[\"*\"]', '2026-01-07 20:47:33', NULL, '2026-01-07 20:47:32', '2026-01-07 20:47:33'),
(161, 'App\\Models\\User', 15, 'auth_token', '211d59dd972cd70bd430facfe0866fc6bcdd2648c4dad8e9ecf3050e3a2a58e0', '[\"*\"]', '2026-01-07 21:19:32', NULL, '2026-01-07 21:19:18', '2026-01-07 21:19:32'),
(162, 'App\\Models\\User', 15, 'auth_token', 'dce01583c9829f00ce088acb8db81684ef42e864b000e124efdc5a79614cd474', '[\"*\"]', '2026-01-07 21:19:54', NULL, '2026-01-07 21:19:53', '2026-01-07 21:19:54'),
(163, 'App\\Models\\User', 15, 'auth_token', '386a526b26080224ee64939902dcf22b01d69149b247e3062ad163b0f5c05517', '[\"*\"]', '2026-01-07 21:20:30', NULL, '2026-01-07 21:20:29', '2026-01-07 21:20:30'),
(164, 'App\\Models\\User', 15, 'auth_token', 'cdecff4aee60f0ce0716d3ce3ebb06647baac2738e69bd2daf0731b80da717e8', '[\"*\"]', '2026-01-07 21:22:42', NULL, '2026-01-07 21:22:29', '2026-01-07 21:22:42'),
(165, 'App\\Models\\User', 15, 'auth_token', '56cb3db201fd21bc3728678af9d21a3c09a1921093049731c819aaa72a574824', '[\"*\"]', '2026-01-07 21:24:24', NULL, '2026-01-07 21:23:11', '2026-01-07 21:24:24'),
(166, 'App\\Models\\User', 15, 'auth_token', '5e09fc21a97b9eb8501bc12d1f87722b50c458f6138f5315b4939ffcc4b903c9', '[\"*\"]', '2026-01-07 23:39:27', NULL, '2026-01-07 21:43:43', '2026-01-07 23:39:27'),
(167, 'App\\Models\\User', 15, 'auth_token', '2afd9606d2a099045f67ee784017e5ee6f517978c4d0201d6ba2d89e1f2dc173', '[\"*\"]', '2026-01-08 15:30:28', NULL, '2026-01-07 21:47:16', '2026-01-08 15:30:28'),
(168, 'App\\Models\\User', 15, 'auth_token', '8a9a8042cd7b469881867be746429e1c4734bb813ca5ce254117c9ad31fe81ef', '[\"*\"]', '2026-01-07 21:57:02', NULL, '2026-01-07 21:57:02', '2026-01-07 21:57:02'),
(169, 'App\\Models\\User', 15, 'auth_token', '66fcc2fffe4182410b8ca4f3ca26b7fd270f64fab68b96164fe615516dff9afa', '[\"*\"]', NULL, NULL, '2026-01-08 21:53:58', '2026-01-08 21:53:58'),
(170, 'App\\Models\\User', 15, 'auth_token', 'cae1f5d4d7334067189ffc7018c87400f86dbfc37887495323f514f11c0c8454', '[\"*\"]', '2026-01-08 21:54:54', NULL, '2026-01-08 21:54:12', '2026-01-08 21:54:54'),
(171, 'App\\Models\\User', 17, 'auth_token', '30e9750e2a65bab1bb6b21efcb1e528148434433482692239b948cfde61c085c', '[\"*\"]', '2026-01-09 10:04:55', NULL, '2026-01-09 10:02:50', '2026-01-09 10:04:55'),
(172, 'App\\Models\\User', 24, 'auth_token', '4113c9364cf6bd34c38c7fe4dba458410504a3a4b0b76623154614fe2d5b5f6e', '[\"*\"]', '2026-01-09 10:33:15', NULL, '2026-01-09 10:33:11', '2026-01-09 10:33:15'),
(174, 'App\\Models\\User', 15, 'auth_token', 'f91bfa34e5b43ea65c28cc4912fed20f97f99807b3132c72c076f5634136fac1', '[\"*\"]', '2026-01-09 14:37:38', NULL, '2026-01-09 14:37:35', '2026-01-09 14:37:38'),
(175, 'App\\Models\\User', 15, 'auth_token', '58484aeaf48c855dcdf538905663bb69a220c082fcd78c220f5f06a87a82f80b', '[\"*\"]', '2026-01-09 18:23:37', NULL, '2026-01-09 16:47:38', '2026-01-09 18:23:37'),
(176, 'App\\Models\\User', 15, 'auth_token', 'c0b5fbab60e47e206de764024d08120a03db5d083280fdf18d253abf1a975fdd', '[\"*\"]', '2026-01-10 00:35:39', NULL, '2026-01-10 00:35:37', '2026-01-10 00:35:39'),
(178, 'App\\Models\\User', 15, 'auth_token', '41da4a6be5194bfb37ac7a42360b8b8d170d7c0f2b1e684a3172c26585455525', '[\"*\"]', '2026-01-10 14:29:29', NULL, '2026-01-10 14:29:26', '2026-01-10 14:29:29'),
(179, 'App\\Models\\User', 15, 'auth_token', '632d40a586fc820a5be191d5fd656222b322c473e668c4bf3592ff5dc7db6086', '[\"*\"]', '2026-01-10 14:29:52', NULL, '2026-01-10 14:29:43', '2026-01-10 14:29:52'),
(183, 'App\\Models\\User', 15, 'auth_token', '857704215e1ad4b09fb4a881a1b73e68a6cf02a0685947d28e13046667b9fb21', '[\"*\"]', '2026-01-11 12:50:27', NULL, '2026-01-11 12:50:25', '2026-01-11 12:50:27'),
(185, 'App\\Models\\User', 15, 'auth_token', 'ca6dbd7c967b586d0a7e48576323c6150dcc9e6e365e8db04173c0a2c054fe17', '[\"*\"]', '2026-01-12 09:15:05', NULL, '2026-01-12 09:15:02', '2026-01-12 09:15:05'),
(186, 'App\\Models\\User', 17, 'auth_token', '4e0a3109d90db4b7b2c3e5385748a80d20eb5ca302eb68cbf656cbff03454fc1', '[\"*\"]', '2026-01-12 09:58:47', NULL, '2026-01-12 09:56:49', '2026-01-12 09:58:47'),
(187, 'App\\Models\\User', 17, 'auth_token', '35aa123e8290a842ad09871b94ca809047ab2a6850f72afa283676c4d148eb9f', '[\"*\"]', '2026-01-12 09:59:32', NULL, '2026-01-12 09:59:31', '2026-01-12 09:59:32'),
(188, 'App\\Models\\User', 17, 'auth_token', 'bccec747229e217c0106d5554b6af2c7ea1091a027db09a5f06a049989ccb7fb', '[\"*\"]', '2026-01-12 10:01:29', NULL, '2026-01-12 10:00:29', '2026-01-12 10:01:29'),
(189, 'App\\Models\\User', 17, 'auth_token', '064dad920dc4a3e82967e03c204e9e7a71f4236bccb6434b867deda2894ada58', '[\"*\"]', '2026-01-12 10:13:54', NULL, '2026-01-12 10:02:02', '2026-01-12 10:13:54'),
(190, 'App\\Models\\User', 15, 'auth_token', 'f26ccc661d13e1b6ae6598628b9c0049e62a7fc4b76da92a04ff3528c887bc43', '[\"*\"]', '2026-01-12 10:13:13', NULL, '2026-01-12 10:09:23', '2026-01-12 10:13:13'),
(191, 'App\\Models\\User', 15, 'auth_token', '07dbb3142414eccbc46027ad65fc26daaf7688b32f4e09f35d5196b350b672e1', '[\"*\"]', '2026-01-12 10:22:54', NULL, '2026-01-12 10:13:34', '2026-01-12 10:22:54'),
(192, 'App\\Models\\User', 15, 'auth_token', '660dff3410bdbc9a007b513a42edaf5a4d78fd1ab1cd183021683b8ffd5efd82', '[\"*\"]', '2026-01-12 10:14:48', NULL, '2026-01-12 10:14:47', '2026-01-12 10:14:48'),
(193, 'App\\Models\\User', 15, 'auth_token', 'db602a2af7974666e63704084b363098e845c4a9282f42fd83bde25edb7b5afb', '[\"*\"]', '2026-01-12 10:15:26', NULL, '2026-01-12 10:15:25', '2026-01-12 10:15:26'),
(194, 'App\\Models\\User', 15, 'auth_token', '429d69798134e7126e40e04b6f13730d5b775fc1300ff5ec6c145e6b5ba0f09d', '[\"*\"]', '2026-01-12 10:15:47', NULL, '2026-01-12 10:15:46', '2026-01-12 10:15:47'),
(195, 'App\\Models\\User', 17, 'auth_token', 'ad1084f502a37339ee62f75609731f78334ec8a9a2d21b312497bef7c9977549', '[\"*\"]', '2026-01-12 10:19:47', NULL, '2026-01-12 10:19:46', '2026-01-12 10:19:47'),
(198, 'App\\Models\\User', 15, 'auth_token', '7b89edff365abf3e78fdbd94378d4124d2ccb2d1f5a4dbbf99f47eec1dea0a26', '[\"*\"]', '2026-01-13 09:08:10', NULL, '2026-01-12 21:57:22', '2026-01-13 09:08:10'),
(199, 'App\\Models\\User', 15, 'auth_token', 'daac7fab311eb1072635b0a4c03ce949033c9163924a0497fcb7fe7f974bfed4', '[\"*\"]', '2026-01-12 22:00:16', NULL, '2026-01-12 22:00:14', '2026-01-12 22:00:16'),
(200, 'App\\Models\\User', 15, 'auth_token', 'e3e7599735f53e7565cd4db4d1136563c6a621fe97aa72aa9930472087f5bf8c', '[\"*\"]', '2026-01-12 22:00:31', NULL, '2026-01-12 22:00:25', '2026-01-12 22:00:31'),
(201, 'App\\Models\\User', 15, 'auth_token', 'c99299d6af7443ab47435caf008d669d879944093d902eb2268f16f6f23ad598', '[\"*\"]', '2026-01-12 22:01:57', NULL, '2026-01-12 22:01:37', '2026-01-12 22:01:57'),
(202, 'App\\Models\\User', 15, 'auth_token', 'e270885e33a8fc69afef1de273edc5aa52fbdbe9ca4f354f8953f0ae9c9a6bf7', '[\"*\"]', '2026-01-12 22:02:51', NULL, '2026-01-12 22:02:21', '2026-01-12 22:02:51'),
(203, 'App\\Models\\User', 15, 'auth_token', '5811d2378fde1d5eb05ed18f231186bb16f1f968f23c647713df2f30f8227d74', '[\"*\"]', '2026-01-12 22:03:07', NULL, '2026-01-12 22:03:06', '2026-01-12 22:03:07'),
(204, 'App\\Models\\User', 15, 'auth_token', 'e1e58df36cefc6aceb16030140cc73a48a966ce1a08424b76dc1d1ae6448bb2e', '[\"*\"]', '2026-01-12 22:04:53', NULL, '2026-01-12 22:04:22', '2026-01-12 22:04:53'),
(205, 'App\\Models\\User', 15, 'auth_token', '3269282cacddc2a768f829d484755c69e78160a77cbe1375745145d7fe1b2937', '[\"*\"]', '2026-01-12 22:21:55', NULL, '2026-01-12 22:21:54', '2026-01-12 22:21:55'),
(206, 'App\\Models\\User', 15, 'auth_token', '5282a04a1de23df7883c60c2a37ba048f7c57445fd4990665fe73cb5d068017f', '[\"*\"]', '2026-01-13 14:28:46', NULL, '2026-01-13 14:28:45', '2026-01-13 14:28:46'),
(207, 'App\\Models\\User', 15, 'auth_token', '5a3243166f490d0a988d91a5ff75d9f6091349843d9c3a262484f9dc716bfe0f', '[\"*\"]', '2026-01-13 14:29:27', NULL, '2026-01-13 14:29:26', '2026-01-13 14:29:27'),
(208, 'App\\Models\\User', 15, 'auth_token', 'bda6a4fded1ac9a0b9581b2d934d86e2ca86459163e27fa5c1b429d1c2c2c7d3', '[\"*\"]', '2026-01-13 14:30:15', NULL, '2026-01-13 14:30:14', '2026-01-13 14:30:15'),
(209, 'App\\Models\\User', 15, 'auth_token', '1a14d09a9228d277445a09ab0f2b7ed9325e8f354bd865ed647b817f2ad284cf', '[\"*\"]', '2026-01-13 14:34:17', NULL, '2026-01-13 14:34:16', '2026-01-13 14:34:17'),
(212, 'App\\Models\\User', 15, 'auth_token', 'c5d5061e7a3322d98d68b9025a1430fc2aac8b16e22472646e755f10a5515363', '[\"*\"]', '2026-01-15 16:33:14', NULL, '2026-01-15 16:33:10', '2026-01-15 16:33:14'),
(215, 'App\\Models\\User', 15, 'auth_token', 'bf0beb4fca50737d2ec33c80bcdd36f0f054fcb404224a1b71d0b31c3ee49006', '[\"*\"]', '2026-01-15 17:11:13', NULL, '2026-01-15 17:11:10', '2026-01-15 17:11:13'),
(216, 'App\\Models\\User', 15, 'auth_token', 'eb1aae6a685aa72b12e67ca5513a00fd2b3d529d9ec5edf29733593a5cf25586', '[\"*\"]', '2026-01-15 17:13:38', NULL, '2026-01-15 17:13:37', '2026-01-15 17:13:38'),
(217, 'App\\Models\\User', 15, 'auth_token', 'f4e1b4f52a8ade2b688ae6d6d41c3fe1a89e1c6f2365c87f5b59861da30f26c0', '[\"*\"]', '2026-01-15 17:17:43', NULL, '2026-01-15 17:17:41', '2026-01-15 17:17:43'),
(218, 'App\\Models\\User', 23, 'auth_token', 'c278833a9e1a2520e531d0e2b5bf174269f6b6c11360a051f5f3f61fc82042ea', '[\"*\"]', '2026-01-15 22:16:03', NULL, '2026-01-15 22:14:11', '2026-01-15 22:16:03'),
(219, 'App\\Models\\User', 23, 'auth_token', '25b9a07a731562d7e3cd2c4407759f006246dbf97d18b92a3e3f5dfac6ae0242', '[\"*\"]', '2026-01-15 22:56:51', NULL, '2026-01-15 22:56:50', '2026-01-15 22:56:51'),
(220, 'App\\Models\\User', 17, 'auth_token', '65064cbc9e0bbb3c59a97d5ddf093cb01ac982b78149047b9b947c10e8702f2e', '[\"*\"]', '2026-01-15 23:51:51', NULL, '2026-01-15 23:47:23', '2026-01-15 23:51:51'),
(221, 'App\\Models\\User', 17, 'auth_token', '298a8c0f28b878772b868aa5483ea917f5c14b08584a7fa69a5f8fbf4a1ed838', '[\"*\"]', '2026-01-15 23:53:09', NULL, '2026-01-15 23:53:05', '2026-01-15 23:53:09'),
(222, 'App\\Models\\User', 15, 'auth_token', 'bc4e9ed963e5bb0445ca77d193b773ff0167561da947213fc97196c1f81b6dee', '[\"*\"]', '2026-01-16 07:52:41', NULL, '2026-01-16 07:51:55', '2026-01-16 07:52:41'),
(223, 'App\\Models\\User', 15, 'auth_token', 'cfd270280acc99def65804085c21d2c1e8926717ddd198b440705ea4ce1f39be', '[\"*\"]', '2026-01-16 07:52:51', NULL, '2026-01-16 07:52:50', '2026-01-16 07:52:51'),
(224, 'App\\Models\\User', 15, 'auth_token', '173d65d494a94d452cad3380d097d5b2b9e329a3b634d87695f2a6e850b90358', '[\"*\"]', '2026-01-16 07:54:09', NULL, '2026-01-16 07:53:17', '2026-01-16 07:54:09'),
(225, 'App\\Models\\User', 15, 'auth_token', 'ad5d5e4215cb9365c583cbbaf7125025e5577ca7c2ca1ff7de4a634db4abe66a', '[\"*\"]', '2026-01-16 07:54:36', NULL, '2026-01-16 07:54:19', '2026-01-16 07:54:36'),
(226, 'App\\Models\\User', 15, 'auth_token', 'df4f0c758c47b44511c6b78e3f1c12bec1d3fc908163e8630378814abec8d39e', '[\"*\"]', '2026-01-16 07:55:22', NULL, '2026-01-16 07:55:12', '2026-01-16 07:55:22'),
(227, 'App\\Models\\User', 15, 'auth_token', '466822e97b25c5e42dcabe0367825f27f3249ecab109e09c1ab6c8b52a5923e1', '[\"*\"]', '2026-01-16 19:52:49', NULL, '2026-01-16 11:47:04', '2026-01-16 19:52:49'),
(228, 'App\\Models\\User', 15, 'auth_token', '7d4295a532fc53916ea8601e030396ee376fd1bbb23aff2e39ccf6f597b796e9', '[\"*\"]', '2026-01-16 21:12:49', NULL, '2026-01-16 21:12:26', '2026-01-16 21:12:49'),
(229, 'App\\Models\\User', 15, 'auth_token', 'e03c7f5bd3594bc46cde4cf106529ef92b4c0dad4985a16fd73a49ff6910aeb5', '[\"*\"]', '2026-01-16 21:13:38', NULL, '2026-01-16 21:13:17', '2026-01-16 21:13:38'),
(230, 'App\\Models\\User', 15, 'auth_token', '91a6fae8c2f336c44a6c3f3183c6bf69526856aa0e1da6d0f2c1008bfcf96bfa', '[\"*\"]', '2026-01-16 21:14:05', NULL, '2026-01-16 21:13:48', '2026-01-16 21:14:05'),
(231, 'App\\Models\\User', 15, 'auth_token', '8277b4a5daac08b730b836abf0bf6d13ac872aab2153f237f464e47393805f66', '[\"*\"]', '2026-01-16 21:14:35', NULL, '2026-01-16 21:14:25', '2026-01-16 21:14:35'),
(232, 'App\\Models\\User', 15, 'auth_token', '4f4083ef225e556dd5d2703099991a54d2227f98eb962218e73ec74fc78920d7', '[\"*\"]', '2026-01-16 21:14:50', NULL, '2026-01-16 21:14:41', '2026-01-16 21:14:50'),
(233, 'App\\Models\\User', 15, 'auth_token', 'e4a86e0f6b7ada47cc1d848bc6010965170cd0796dea56af91da8861ef6321a3', '[\"*\"]', '2026-01-16 21:15:07', NULL, '2026-01-16 21:15:06', '2026-01-16 21:15:07'),
(234, 'App\\Models\\User', 15, 'auth_token', '0a8a193746e76a527a68bbb376cff97a20a25708d775814dcb09547993675aec', '[\"*\"]', '2026-01-16 21:16:15', NULL, '2026-01-16 21:15:40', '2026-01-16 21:16:15'),
(235, 'App\\Models\\User', 15, 'auth_token', 'd992e55999929140458490e71e07e3358c17157caf71da07b9bb4e3af4f3d03b', '[\"*\"]', '2026-01-16 21:16:50', NULL, '2026-01-16 21:16:22', '2026-01-16 21:16:50'),
(236, 'App\\Models\\User', 15, 'auth_token', '4133d488eb55f5cee0f50dc36cd5131d2a5a7bf78e12a8550df316f56ed91943', '[\"*\"]', '2026-01-16 21:17:10', NULL, '2026-01-16 21:17:04', '2026-01-16 21:17:10'),
(237, 'App\\Models\\User', 25, 'auth_token', '510628d65f3a5d106daa9d43f47992c1460b3381c4b7823d410585d4b425c3a5', '[\"*\"]', NULL, NULL, '2026-01-17 10:06:51', '2026-01-17 10:06:51'),
(239, 'App\\Models\\User', 15, 'auth_token', '1d1b0eb3877cd9a0c2689ca75273e6c8efec8f0e80644a46f2301f46938a3a5d', '[\"*\"]', '2026-01-17 14:05:11', NULL, '2026-01-17 14:05:09', '2026-01-17 14:05:11'),
(241, 'App\\Models\\User', 15, 'auth_token', '203fe176126594ff9fa485c31f563d9c0f5c873348aa4907bb686b811168ee08', '[\"*\"]', '2026-01-17 15:08:50', NULL, '2026-01-17 14:58:22', '2026-01-17 15:08:50'),
(243, 'App\\Models\\User', 15, 'auth_token', '195de7fdd7b5e102997fa508d6c4c2f9ca3b794b09566dbfe8a5e0e8373ed597', '[\"*\"]', '2026-01-17 15:13:40', NULL, '2026-01-17 15:12:33', '2026-01-17 15:13:40'),
(244, 'App\\Models\\User', 15, 'auth_token', 'c2cfc725baa87cdb5289098fa363cc0f580f46af21a7a7dbebbd4297e2c9f92b', '[\"*\"]', '2026-01-17 18:08:28', NULL, '2026-01-17 17:12:23', '2026-01-17 18:08:28'),
(245, 'App\\Models\\User', 15, 'auth_token', '9b97210e977e88c6bae53ecee10b5f9e59ceea5a123ebfa6d44274ce7a713f78', '[\"*\"]', '2026-01-17 19:28:45', NULL, '2026-01-17 19:24:44', '2026-01-17 19:28:45'),
(246, 'App\\Models\\User', 15, 'auth_token', '205f35b5307b0f01b6630998171b8fc2802a968fee38e408d8d6950ab94d4b2d', '[\"*\"]', '2026-01-17 21:16:46', NULL, '2026-01-17 21:13:57', '2026-01-17 21:16:46'),
(247, 'App\\Models\\User', 15, 'auth_token', 'b0f014a32db996e38ea1b85cab3e7a0ac9eac907d62442ab488ce33cc437f421', '[\"*\"]', '2026-01-17 23:11:08', NULL, '2026-01-17 22:47:37', '2026-01-17 23:11:08'),
(249, 'App\\Models\\User', 15, 'auth_token', '910df27b73e0e0a647c83ef24a01f1101260cf45bda06494eee165ed35369acc', '[\"*\"]', '2026-01-17 22:59:08', NULL, '2026-01-17 22:59:07', '2026-01-17 22:59:08'),
(250, 'App\\Models\\User', 15, 'auth_token', '7ea20f71be2d217fdc7d94b0f50ce413dd16afbc18a2237a11db3011b8678cd0', '[\"*\"]', '2026-01-18 14:13:38', NULL, '2026-01-18 14:12:42', '2026-01-18 14:13:38'),
(251, 'App\\Models\\User', 15, 'auth_token', '2be85ffa821ef85f0dc1422a5e0e87e8d4707a1c821efd62f287d658df104d09', '[\"*\"]', '2026-01-18 14:14:16', NULL, '2026-01-18 14:13:46', '2026-01-18 14:14:16'),
(252, 'App\\Models\\User', 15, 'auth_token', '50688e84f025639c55b963d9f0599b5213c82116e200d343112b3004116dea78', '[\"*\"]', '2026-01-18 14:14:44', NULL, '2026-01-18 14:14:21', '2026-01-18 14:14:44'),
(253, 'App\\Models\\User', 15, 'auth_token', '10602c3811ddcdf37f0ebc409fae9403cc3417ca067aeec110fd266be02ff611', '[\"*\"]', '2026-01-18 14:17:49', NULL, '2026-01-18 14:17:41', '2026-01-18 14:17:49'),
(254, 'App\\Models\\User', 15, 'auth_token', '12e37edc27b1df01b030c8dd0c286482a9b165274cfba999a1b0862885cc0313', '[\"*\"]', '2026-01-18 14:19:28', NULL, '2026-01-18 14:18:04', '2026-01-18 14:19:28'),
(255, 'App\\Models\\User', 15, 'auth_token', '175df4818dfd50f653623e534d4a682933d4009c64720fc30f9a861b540d9721', '[\"*\"]', '2026-01-18 14:20:19', NULL, '2026-01-18 14:19:35', '2026-01-18 14:20:19'),
(256, 'App\\Models\\User', 15, 'auth_token', 'c3701b8b1fb0bfe086c739308aadc761dab2db46dc550468cf5bf7166d0308f8', '[\"*\"]', '2026-01-18 14:21:20', NULL, '2026-01-18 14:20:26', '2026-01-18 14:21:20'),
(257, 'App\\Models\\User', 15, 'auth_token', 'fae1eb0408cb2bd8d37253cb054822a0538976412633cf36b80ca9fff7127c3d', '[\"*\"]', '2026-01-18 14:21:45', NULL, '2026-01-18 14:21:27', '2026-01-18 14:21:45'),
(258, 'App\\Models\\User', 15, 'auth_token', '3504be80257c62818c4d141476f50413fb17ad68c06897e42a449a48f88aecd6', '[\"*\"]', '2026-01-18 14:24:01', NULL, '2026-01-18 14:22:19', '2026-01-18 14:24:01'),
(259, 'App\\Models\\User', 15, 'auth_token', 'af00b18d00da98e857a7dbf033763ab0f0cc1b5f9773e0692239fe28b5715941', '[\"*\"]', '2026-01-18 14:24:21', NULL, '2026-01-18 14:24:20', '2026-01-18 14:24:21'),
(260, 'App\\Models\\User', 15, 'auth_token', '66a58ed014056cdb555c82fe5df6f04e9a6ce423758c4a544c6f5efadaa44672', '[\"*\"]', '2026-01-19 10:59:23', NULL, '2026-01-19 10:59:21', '2026-01-19 10:59:23'),
(261, 'App\\Models\\User', 15, 'auth_token', '6eaeb969b0cca8eaf9bf0adc9b8a6c1feb21158f176020b23d202f9012691946', '[\"*\"]', '2026-01-19 18:20:04', NULL, '2026-01-19 16:01:27', '2026-01-19 18:20:04'),
(262, 'App\\Models\\User', 15, 'auth_token', '29fbd73655ffae28454a09f7acbfbe266c53577abd4ef748f140f4ab5922bb72', '[\"*\"]', '2026-01-19 16:05:19', NULL, '2026-01-19 16:05:07', '2026-01-19 16:05:19'),
(263, 'App\\Models\\User', 15, 'auth_token', '73416c6238aebdfff7c6d182e65c9425ae7c32a09775dc9aca6be57ad8f18e47', '[\"*\"]', '2026-01-19 16:05:39', NULL, '2026-01-19 16:05:38', '2026-01-19 16:05:39'),
(264, 'App\\Models\\User', 15, 'auth_token', '50f7f4909ed4cb22c0053ea81053cc6c7eff732cff99f40d17aa6a445bca2a48', '[\"*\"]', '2026-01-19 16:06:32', NULL, '2026-01-19 16:06:31', '2026-01-19 16:06:32'),
(265, 'App\\Models\\User', 15, 'auth_token', '0415749b5cc6ca3f5d9d7ed39f27178886f06593b84480d92af6d4dcae0f63f1', '[\"*\"]', '2026-01-20 16:57:15', NULL, '2026-01-19 16:07:27', '2026-01-20 16:57:15'),
(266, 'App\\Models\\User', 15, 'auth_token', '48110b3686ba9dbc9f9b175ecf49ec739da02b0d213f59d1baa7a90f3f625019', '[\"*\"]', '2026-01-19 18:20:04', NULL, '2026-01-19 17:56:26', '2026-01-19 18:20:04'),
(267, 'App\\Models\\User', 15, 'auth_token', '992c602f212d26a47a70e82be9289800f301919c9ddac850cdae3041bc79c499', '[\"*\"]', '2026-01-20 17:03:55', NULL, '2026-01-20 17:03:39', '2026-01-20 17:03:55'),
(268, 'App\\Models\\User', 15, 'auth_token', '9e47c2df70a21d628b05b4e4b24e9fc66e9fb8f67cfa3cfa2a2a06f8d6db6de9', '[\"*\"]', '2026-01-20 17:04:17', NULL, '2026-01-20 17:04:10', '2026-01-20 17:04:17'),
(269, 'App\\Models\\User', 15, 'auth_token', '86bc334a93fa09cb259cfe8433c89168516301c5dc7fe5e4b52d9eb690fff4f9', '[\"*\"]', '2026-01-20 17:04:31', NULL, '2026-01-20 17:04:31', '2026-01-20 17:04:31'),
(271, 'App\\Models\\User', 15, 'auth_token', 'eef5b9a1b63e40607f1e5ef874f5d311a5342a1ba4183ad5c4255ddb4d52da7e', '[\"*\"]', '2026-01-20 18:24:07', NULL, '2026-01-20 18:22:33', '2026-01-20 18:24:07'),
(272, 'App\\Models\\User', 15, 'auth_token', 'c0e39567ee08aa2c772cff0cff564c0e762fa864318acf59c0e4eb7fd769320f', '[\"*\"]', '2026-01-21 00:29:25', NULL, '2026-01-20 18:44:59', '2026-01-21 00:29:25'),
(274, 'App\\Models\\User', 15, 'auth_token', '859d71b6e864caba13496a557e3d9e4e99977f3dda54e35be0ceca899c8f8edf', '[\"*\"]', '2026-01-21 22:18:40', NULL, '2026-01-21 21:41:21', '2026-01-21 22:18:40'),
(275, 'App\\Models\\User', 15, 'auth_token', 'af61f7ef304a8888f316e5e4466275fff75be4d690162414c63e0654a7f81675', '[\"*\"]', '2026-01-21 22:42:00', NULL, '2026-01-21 22:29:17', '2026-01-21 22:42:00'),
(276, 'App\\Models\\User', 15, 'auth_token', '9cddb8940e532339997e31efb9cbc6538cc5190a9c397a107c9f3de3a8673324', '[\"*\"]', '2026-01-21 22:40:51', NULL, '2026-01-21 22:40:19', '2026-01-21 22:40:51'),
(277, 'App\\Models\\User', 15, 'auth_token', 'c1a6a10ffed73518ab483160223710078093030bfc2184ecd45204a5f32eb61f', '[\"*\"]', '2026-01-21 22:41:14', NULL, '2026-01-21 22:41:07', '2026-01-21 22:41:14'),
(278, 'App\\Models\\User', 15, 'auth_token', '6dc4bba18823cbce4b1cf3f57122a055f95d86e354fc7417755f7a0915772231', '[\"*\"]', '2026-01-21 22:42:03', NULL, '2026-01-21 22:42:02', '2026-01-21 22:42:03'),
(279, 'App\\Models\\User', 15, 'auth_token', 'bea71cff58c391dc66f6af76b75096f491f8a40e67420531e3ffc82d5d50bec2', '[\"*\"]', '2026-01-21 22:42:34', NULL, '2026-01-21 22:42:29', '2026-01-21 22:42:34'),
(280, 'App\\Models\\User', 15, 'auth_token', '96afb0bf40a16f043fb98336dcf9d5d5d4c1a83fda98eed12cf021e957bbbfe6', '[\"*\"]', '2026-01-21 22:43:49', NULL, '2026-01-21 22:43:47', '2026-01-21 22:43:49'),
(281, 'App\\Models\\User', 15, 'auth_token', '0a2888e9a22a0a6e238d4c1dc342f347886f4a6fb13c852f2ce0d975be8c3446', '[\"*\"]', '2026-01-23 13:26:13', NULL, '2026-01-23 13:25:54', '2026-01-23 13:26:13'),
(282, 'App\\Models\\User', 15, 'auth_token', '6bb8eaa02c4751fc07d21554299fde92927073e6dce093bdd35f48e426312590', '[\"*\"]', '2026-01-24 10:41:59', NULL, '2026-01-24 10:30:06', '2026-01-24 10:41:59'),
(283, 'App\\Models\\User', 15, 'auth_token', 'a81e96155ee2b6bd81c9a2e58ca13725419f2916069e40bf156bd18c71d43a1f', '[\"*\"]', '2026-01-24 20:37:51', NULL, '2026-01-24 20:24:35', '2026-01-24 20:37:51'),
(284, 'App\\Models\\User', 15, 'auth_token', '02ba1b22eb15ff758546b119e8322c9ca4fe4e51c4d76d686d157599d8fa6661', '[\"*\"]', NULL, NULL, '2026-01-27 11:42:08', '2026-01-27 11:42:08'),
(285, 'App\\Models\\User', 15, 'auth_token', 'c3a1c4b4cc15a660ee9ca42c1e2df0167dffc05bbc450be618eee3838422863f', '[\"*\"]', NULL, NULL, '2026-01-27 11:54:05', '2026-01-27 11:54:05'),
(286, 'App\\Models\\User', 15, 'auth_token', '00c3d29530f25bc892f6b1f314db6fa7a688cb41679c9647ab74c8427d8b8b89', '[\"*\"]', '2026-01-27 11:54:42', NULL, '2026-01-27 11:54:26', '2026-01-27 11:54:42'),
(287, 'App\\Models\\User', 15, 'auth_token', 'bee5a5fd636a08c4148d692527fbf72c0734326ab21f04301c614ee2302db6a0', '[\"*\"]', '2026-01-27 14:38:07', NULL, '2026-01-27 14:31:32', '2026-01-27 14:38:07'),
(288, 'App\\Models\\User', 15, 'auth_token', 'c19fded22d60a62d8958557986df12d372a355ea7b9e1be60ba3a072583955d3', '[\"*\"]', '2026-01-27 16:55:38', NULL, '2026-01-27 16:55:36', '2026-01-27 16:55:38'),
(289, 'App\\Models\\User', 15, 'auth_token', 'aa13a0e423d47428b03aff87a776f7979b7c5fd9078a8321978fa1fd474f159f', '[\"*\"]', '2026-01-27 17:06:25', NULL, '2026-01-27 17:06:06', '2026-01-27 17:06:25'),
(290, 'App\\Models\\User', 15, 'auth_token', '23dfd8a059a082a7df0b9a8607ac841962c07e05c1ddfb05f5a67b6e26c7ea3b', '[\"*\"]', '2026-01-27 17:07:36', NULL, '2026-01-27 17:07:07', '2026-01-27 17:07:36'),
(291, 'App\\Models\\User', 15, 'auth_token', '855107a963db42840abb3921739da232cb90fb76f2609e123e2139b1c10b1950', '[\"*\"]', '2026-01-27 17:09:29', NULL, '2026-01-27 17:08:36', '2026-01-27 17:09:29'),
(292, 'App\\Models\\User', 15, 'auth_token', 'ebb09c79207b41640fde780f4159c42a30508c9901ac8a5e226057a99ee7a725', '[\"*\"]', '2026-01-27 17:11:18', NULL, '2026-01-27 17:09:40', '2026-01-27 17:11:18'),
(293, 'App\\Models\\User', 15, 'auth_token', 'd67852d5d38567cf657f85228d3f826c2b9fde4093a51fb21adca3b7366533c8', '[\"*\"]', '2026-01-27 17:12:26', NULL, '2026-01-27 17:12:23', '2026-01-27 17:12:26'),
(294, 'App\\Models\\User', 15, 'auth_token', '4348dbf1b883722969170df00e58b7553d31d068dfe676fc28e8889accd9cb31', '[\"*\"]', '2026-01-27 19:36:20', NULL, '2026-01-27 19:30:40', '2026-01-27 19:36:20'),
(295, 'App\\Models\\User', 15, 'auth_token', 'f773cb941e8b2af2640ff1bb0c92b5189e1f17ade59608578cd80f401e773efd', '[\"*\"]', '2026-01-27 22:48:02', NULL, '2026-01-27 22:26:30', '2026-01-27 22:48:02'),
(296, 'App\\Models\\User', 15, 'auth_token', 'eeb540ea13b76ef982336cb3689b81ba63f0a5a4925fdf5ac4c891567f7d371b', '[\"*\"]', '2026-01-28 11:56:32', NULL, '2026-01-28 09:48:57', '2026-01-28 11:56:32'),
(297, 'App\\Models\\User', 15, 'auth_token', 'b3233a0b69ce17d2255ed13c1b10e56a976b6c70ad35e730352f7ddcb088f440', '[\"*\"]', '2026-01-28 12:50:51', NULL, '2026-01-28 12:50:44', '2026-01-28 12:50:51');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(298, 'App\\Models\\User', 15, 'auth_token', '629e3dcc6e14ae64858af3c904d3b7015885cc6e713f9058ec2ef0cb37b86211', '[\"*\"]', '2026-01-28 13:08:14', NULL, '2026-01-28 13:06:20', '2026-01-28 13:08:14'),
(299, 'App\\Models\\User', 15, 'auth_token', '04a1da4b80ea5555f87e5538f54bc378b1b5feefe0c1aed08cf9606512e1678d', '[\"*\"]', '2026-01-28 14:00:15', NULL, '2026-01-28 13:59:47', '2026-01-28 14:00:15'),
(300, 'App\\Models\\User', 15, 'auth_token', '763fdead14e6d2c1c608a4462569ec9e0255202bf4a19c193d65d691bbc8653d', '[\"*\"]', '2026-01-29 21:28:22', NULL, '2026-01-28 20:02:40', '2026-01-29 21:28:22'),
(301, 'App\\Models\\User', 15, 'auth_token', '4d3a22ef0d9cd7833e041da1fcc8a9d6ca4d1913a54f51305a84edde2e3f3184', '[\"*\"]', '2026-01-29 21:20:02', NULL, '2026-01-29 21:19:37', '2026-01-29 21:20:02'),
(302, 'App\\Models\\User', 15, 'auth_token', '03f412936e2227e6fea730c372ac5e7c50b37f675b80cab85b7fc0ed6126d412', '[\"*\"]', '2026-01-29 21:32:28', NULL, '2026-01-29 21:30:23', '2026-01-29 21:32:28'),
(303, 'App\\Models\\User', 15, 'auth_token', 'a34e535ad8e976b5ec0a88db831210fcd8a6e7604a565ebc24f5ea2ea37e8d7f', '[\"*\"]', '2026-01-30 16:13:57', NULL, '2026-01-30 16:09:14', '2026-01-30 16:13:57'),
(304, 'App\\Models\\User', 15, 'auth_token', '084d1ba0fbca26b77b05cbb964fe012379b801009e2fa7bf341fdb43d0991ecb', '[\"*\"]', '2026-01-31 17:31:42', NULL, '2026-01-31 17:31:31', '2026-01-31 17:31:42'),
(305, 'App\\Models\\User', 15, 'auth_token', '95a8280c149ef48acbfaffcffc471fb3ba6bd78ebf9cf2030608f2e9a2d4216e', '[\"*\"]', '2026-01-31 17:32:33', NULL, '2026-01-31 17:31:54', '2026-01-31 17:32:33'),
(306, 'App\\Models\\User', 15, 'auth_token', '858cbb3f5d824a6e41591ec0df9a95d653cb7ea42c1a7be5075e80026b2c1d48', '[\"*\"]', '2026-01-31 23:04:08', NULL, '2026-01-31 17:33:24', '2026-01-31 23:04:08'),
(307, 'App\\Models\\User', 15, 'auth_token', 'cc3b5284db787f2bd4aa5ea286d8a4b48675f0d8f33c2ab9fae35c23140f33f3', '[\"*\"]', '2026-01-31 18:39:57', NULL, '2026-01-31 18:09:44', '2026-01-31 18:39:57'),
(308, 'App\\Models\\User', 17, 'auth_token', '6d79f11d2ac2c46500d0e7872b18d4f12feb6861db84d112250f6ad2df2eb246', '[\"*\"]', NULL, NULL, '2026-01-31 18:33:49', '2026-01-31 18:33:49'),
(309, 'App\\Models\\User', 15, 'auth_token', '6682fe7a8eed2b53d92350edfbe32dd571f3861e7f524dc0afc9211639e82b3d', '[\"*\"]', '2026-02-01 01:02:20', NULL, '2026-02-01 00:58:59', '2026-02-01 01:02:20'),
(310, 'App\\Models\\User', 15, 'auth_token', '8684a36d3d640b7b15141b5d47a88ebc93f442a3f0c931f231258c867082f814', '[\"*\"]', '2026-02-04 19:23:24', NULL, '2026-02-04 17:05:50', '2026-02-04 19:23:24'),
(311, 'App\\Models\\User', 15, 'auth_token', '4e1e13f1b442e43a4b32c0298a7a1368810a2b238d85ce3420dd694e0836c3b2', '[\"*\"]', '2026-02-04 19:28:52', NULL, '2026-02-04 19:23:31', '2026-02-04 19:28:52'),
(312, 'App\\Models\\User', 15, 'auth_token', 'beada562dd914bc77fe96af63be6fc66181a18a9e48ef648ee4ade0218498d45', '[\"*\"]', '2026-02-04 19:31:54', NULL, '2026-02-04 19:29:10', '2026-02-04 19:31:54'),
(314, 'App\\Models\\User', 15, 'auth_token', '7d2e196ac316caef663609ebd99cac1fa28c67abfe8965804a1d2d55e65e1a25', '[\"*\"]', '2026-02-05 06:32:52', NULL, '2026-02-05 06:32:40', '2026-02-05 06:32:52'),
(315, 'App\\Models\\User', 15, 'auth_token', '221e938deaad65ec415348badaa7f06783998fa6cd6e1983b41dad5de29aadc3', '[\"*\"]', '2026-02-05 19:29:52', NULL, '2026-02-05 19:29:49', '2026-02-05 19:29:52'),
(316, 'App\\Models\\User', 15, 'auth_token', 'f514817936749d2b6b4a4196a5ffa748e343a5a82fb66989c83b4becd754902b', '[\"*\"]', '2026-02-06 12:50:31', NULL, '2026-02-06 12:39:48', '2026-02-06 12:50:31'),
(317, 'App\\Models\\User', 15, 'auth_token', 'f81b54a51c47de05e881b1a8ec74a5ff4a963ad046a3b7e6b3e30bc9f7f7b28c', '[\"*\"]', NULL, NULL, '2026-02-06 13:05:00', '2026-02-06 13:05:00'),
(318, 'App\\Models\\User', 15, 'auth_token', 'ff4ab92e46e1a769478861c8e37719c09a33a799df301511f45619587c5c4f15', '[\"*\"]', NULL, NULL, '2026-02-06 13:05:32', '2026-02-06 13:05:32'),
(319, 'App\\Models\\User', 15, 'auth_token', '98e2299990e8c5228a45052eb14d360653cf350b7cce3e52c76106edbd137de4', '[\"*\"]', '2026-02-06 13:11:42', NULL, '2026-02-06 13:06:51', '2026-02-06 13:11:42'),
(320, 'App\\Models\\User', 15, 'auth_token', '93c70c12c2c031707d67f15a75377847a069d78b90d2f7789b30ef5661d86402', '[\"*\"]', '2026-02-06 17:20:59', NULL, '2026-02-06 15:28:43', '2026-02-06 17:20:59'),
(322, 'App\\Models\\User', 15, 'auth_token', '9b0e97f84e91c7a4df259042564361bac150e0788b95250a392f95609678603b', '[\"*\"]', '2026-02-07 12:16:01', NULL, '2026-02-07 12:15:57', '2026-02-07 12:16:01'),
(323, 'App\\Models\\User', 15, 'auth_token', '76fcf9d2d77d121b6b3fa9703d19b42b39acceb9306ee532a93d606f498df8f8', '[\"*\"]', '2026-02-07 12:16:27', NULL, '2026-02-07 12:16:12', '2026-02-07 12:16:27'),
(324, 'App\\Models\\User', 15, 'auth_token', '8c6817aa40148e8c81b3a8f7d93df918d0c32c5be095ef92fe042970722bcf4d', '[\"*\"]', '2026-02-07 12:17:30', NULL, '2026-02-07 12:16:44', '2026-02-07 12:17:30'),
(325, 'App\\Models\\User', 15, 'auth_token', 'dea789bb77ed39f7b20fbc14c896e243c63667c46f29a7b3736a032367578e45', '[\"*\"]', '2026-02-07 12:17:42', NULL, '2026-02-07 12:17:41', '2026-02-07 12:17:42'),
(326, 'App\\Models\\User', 15, 'auth_token', 'dddf6ebd462b6d7a02e106dc7d32ba062245ee37e2f96ce1561d944cdf75fabb', '[\"*\"]', '2026-02-07 12:17:53', NULL, '2026-02-07 12:17:53', '2026-02-07 12:17:53'),
(327, 'App\\Models\\User', 15, 'auth_token', '86ee7939f05edde6ffa8f4ed85948d80dd876b4faca3e7ea7055415263dfd620', '[\"*\"]', '2026-02-07 15:20:20', NULL, '2026-02-07 15:20:19', '2026-02-07 15:20:20'),
(329, 'App\\Models\\User', 15, 'auth_token', '7a07ac5270c0f5944b39078d5741af8af3a92fa94ad8a7b628543a939bb79b94', '[\"*\"]', '2026-02-08 22:13:59', NULL, '2026-02-07 15:36:48', '2026-02-08 22:13:59'),
(330, 'App\\Models\\User', 15, 'auth_token', 'f19e4afb91ab13b2cd6176c49e331db8e90259cafe5b3fdfac7dc984e0ecd771', '[\"*\"]', '2026-02-08 01:29:12', NULL, '2026-02-08 01:28:49', '2026-02-08 01:29:12'),
(331, 'App\\Models\\User', 15, 'auth_token', '49054f8b33798f2ebf2749fe8471c95d81210f70e7ae15861faf999e577365f3', '[\"*\"]', '2026-02-11 13:57:05', NULL, '2026-02-11 13:56:40', '2026-02-11 13:57:05'),
(332, 'App\\Models\\User', 15, 'auth_token', '202b12cf172846aefa5f72d9be575cffac0366c25b608da2c8e290134c5431d4', '[\"*\"]', '2026-02-12 23:02:44', NULL, '2026-02-12 23:02:31', '2026-02-12 23:02:44'),
(333, 'App\\Models\\User', 15, 'auth_token', '698385d9f2f28607de175de60f2ea0e78d2c3365735456e1e613faafc9e1d5d6', '[\"*\"]', '2026-02-16 22:07:44', NULL, '2026-02-13 15:07:02', '2026-02-16 22:07:44'),
(334, 'App\\Models\\User', 15, 'auth_token', 'f16c26636737c4e211f84bea9860befa3fa91fecb1ad194cdf8b43e7ac7102f0', '[\"*\"]', '2026-02-17 18:28:52', NULL, '2026-02-17 18:28:41', '2026-02-17 18:28:52'),
(335, 'App\\Models\\User', 15, 'auth_token', 'dcf43b76b835f45fc8b9c0d63b9a1179a85f3cc8e914cb28244f7d706057d3b7', '[\"*\"]', '2026-02-17 18:29:27', NULL, '2026-02-17 18:28:59', '2026-02-17 18:29:27'),
(336, 'App\\Models\\User', 15, 'auth_token', '1b22dd3fafdfbde930c0f3bfc24162f7cd1131e780d7a83f53559c19f3fe7550', '[\"*\"]', '2026-02-17 18:29:53', NULL, '2026-02-17 18:29:45', '2026-02-17 18:29:53'),
(337, 'App\\Models\\User', 15, 'auth_token', '4125b2c0b02f5525fb45979fb94d5f65d0e128c1d4660ea473934d1577b03bd8', '[\"*\"]', '2026-02-17 18:30:08', NULL, '2026-02-17 18:30:03', '2026-02-17 18:30:08'),
(338, 'App\\Models\\User', 15, 'auth_token', 'abac8cde3cd8792b674d1291a3933564ade68557c0e83bf1d8d159208411f9e1', '[\"*\"]', '2026-02-17 18:30:18', NULL, '2026-02-17 18:30:17', '2026-02-17 18:30:18'),
(339, 'App\\Models\\User', 15, 'auth_token', 'db3cc0c238e817254c69f3b9882d92219c14059a29a6e233d0c46aaf03da724d', '[\"*\"]', '2026-02-17 18:51:48', NULL, '2026-02-17 18:51:48', '2026-02-17 18:51:48'),
(340, 'App\\Models\\User', 15, 'auth_token', '873cdf1b8bb954f4472ea2a73c123c96b2aa6c293fc751ba3c7d68e33fcc7f8e', '[\"*\"]', '2026-02-17 18:53:36', NULL, '2026-02-17 18:53:35', '2026-02-17 18:53:36'),
(341, 'App\\Models\\User', 15, 'auth_token', '494fd87e7b496b162f229df012d492348ef642b0ce17c147ff7c294bc81c9f96', '[\"*\"]', '2026-02-17 18:55:34', NULL, '2026-02-17 18:54:16', '2026-02-17 18:55:34'),
(342, 'App\\Models\\User', 17, 'auth_token', 'dfcf12af7c693a053552f13906d2b8aaf920471ac6c240280fbce8291957ef44', '[\"*\"]', '2026-02-18 11:01:44', NULL, '2026-02-18 10:59:12', '2026-02-18 11:01:44'),
(343, 'App\\Models\\User', 17, 'auth_token', 'c0dade04eb118b160432a99f87f5ce670578d15d6894f4746f145c1525973699', '[\"*\"]', '2026-02-18 11:05:03', NULL, '2026-02-18 11:02:59', '2026-02-18 11:05:03'),
(344, 'App\\Models\\User', 17, 'auth_token', 'a203d9e953c3cf27fb7287fd1fa5dd625f375e1031fca74bd82678ee43931335', '[\"*\"]', '2026-02-18 11:31:03', NULL, '2026-02-18 11:30:36', '2026-02-18 11:31:03'),
(345, 'App\\Models\\User', 17, 'auth_token', 'df0381dd50b10f6eac70cd752abf3f65b211c150cf84e31baec31245c48c40a9', '[\"*\"]', '2026-02-18 11:31:45', NULL, '2026-02-18 11:31:44', '2026-02-18 11:31:45'),
(346, 'App\\Models\\User', 17, 'auth_token', 'b3b518722e5f45a9278ec7e430cbb8283b49704901edac504370d608cc349aa7', '[\"*\"]', '2026-02-18 11:34:50', NULL, '2026-02-18 11:34:49', '2026-02-18 11:34:50'),
(347, 'App\\Models\\User', 15, 'auth_token', '8596200b72de723c2824b41c01ada0377158747ddd9d646984cd66fc9b0ea155', '[\"*\"]', '2026-02-18 11:39:38', NULL, '2026-02-18 11:39:25', '2026-02-18 11:39:38'),
(348, 'App\\Models\\User', 15, 'auth_token', '36d1f47947cd46dd87b25c22998487ba42c530d8fc8240e88aa9e4a637f5ecda', '[\"*\"]', '2026-02-18 11:43:32', NULL, '2026-02-18 11:43:15', '2026-02-18 11:43:32'),
(349, 'App\\Models\\User', 15, 'auth_token', '4cf8f80b1f85b05f971b189ac3fa0a922f0e1c28955e9931ce60fefa0cbc671e', '[\"*\"]', '2026-02-18 11:44:02', NULL, '2026-02-18 11:44:01', '2026-02-18 11:44:02'),
(350, 'App\\Models\\User', 15, 'auth_token', 'f6b534050e12966d90e50b9613a0956afbf7f183e1ad1a967e6b308d43b7091d', '[\"*\"]', '2026-02-18 11:45:23', NULL, '2026-02-18 11:45:22', '2026-02-18 11:45:23'),
(351, 'App\\Models\\User', 15, 'auth_token', '9e8c5d690cb522222c29425d26f478ddcc3962f1c15c74e497df7580bfb7ae90', '[\"*\"]', '2026-02-18 11:45:45', NULL, '2026-02-18 11:45:44', '2026-02-18 11:45:45'),
(352, 'App\\Models\\User', 15, 'auth_token', '40a4660f7f648e691aae932912c24fdf18d61c0e04505a55f379e15a0226efa7', '[\"*\"]', '2026-02-18 11:45:54', NULL, '2026-02-18 11:45:50', '2026-02-18 11:45:54'),
(353, 'App\\Models\\User', 23, 'auth_token', '0bf37ce754a1a3c62fb586c179dbb84559ed6b9dabfed75ae692e772f17fcb67', '[\"*\"]', '2026-03-09 20:43:47', NULL, '2026-02-18 12:07:43', '2026-03-09 20:43:47'),
(354, 'App\\Models\\User', 15, 'auth_token', '222e715bff57cfbe8293679da29c6bf408447f5e4f5f047852b2db0b5422d361', '[\"*\"]', '2026-02-18 12:09:40', NULL, '2026-02-18 12:09:39', '2026-02-18 12:09:40'),
(355, 'App\\Models\\User', 15, 'auth_token', '068c6e8bb7c242aa853ecd81085d14476ce8be6d2a6b4689d08d968a371013e4', '[\"*\"]', '2026-02-18 12:12:01', NULL, '2026-02-18 12:11:56', '2026-02-18 12:12:01'),
(356, 'App\\Models\\User', 15, 'auth_token', '1dbd8ea7a644c9b5f7549bf8f0ee4dddbfe0bc1862688f5adef8f23c25eaa0ea', '[\"*\"]', '2026-02-18 12:12:33', NULL, '2026-02-18 12:12:32', '2026-02-18 12:12:33'),
(357, 'App\\Models\\User', 15, 'auth_token', 'fc08fff6fb44315cd6dd94f164cca04ad009ce204f844c79997c86eac83f2c3a', '[\"*\"]', '2026-02-18 12:13:58', NULL, '2026-02-18 12:13:52', '2026-02-18 12:13:58'),
(358, 'App\\Models\\User', 15, 'auth_token', 'c6862f2e318a6ff409bc83592b877710c7483402b59e41f8379d419842768fd3', '[\"*\"]', '2026-02-18 12:18:04', NULL, '2026-02-18 12:18:03', '2026-02-18 12:18:04'),
(359, 'App\\Models\\User', 15, 'auth_token', 'f9e6474ea75b2a4e7b0bef6e84038e11132de6902fcd8d43efa50623ed4c78fc', '[\"*\"]', '2026-02-18 12:25:55', NULL, '2026-02-18 12:25:39', '2026-02-18 12:25:55'),
(360, 'App\\Models\\User', 15, 'auth_token', 'b59148047b46a0fd83624bfa1f47ecc02dfffeb9695cf85604a6a250812c2edb', '[\"*\"]', '2026-02-18 12:26:21', NULL, '2026-02-18 12:26:20', '2026-02-18 12:26:21'),
(361, 'App\\Models\\User', 15, 'auth_token', '7ed3d4f5d34d7a0ea3673181f76be6b1804e53e1599ad13ada743ce026550318', '[\"*\"]', '2026-02-18 12:27:37', NULL, '2026-02-18 12:27:37', '2026-02-18 12:27:37'),
(362, 'App\\Models\\User', 15, 'auth_token', 'af2062ba0eaf4fa97d8a6889924f623bec620819c139842cabd2b152a2439b9f', '[\"*\"]', '2026-02-18 12:30:04', NULL, '2026-02-18 12:30:03', '2026-02-18 12:30:04'),
(363, 'App\\Models\\User', 15, 'auth_token', '0950e8e6127b5710f86499cd496625366dd1b4e75ea054133b9f6728e919db0c', '[\"*\"]', '2026-02-18 12:31:10', NULL, '2026-02-18 12:31:09', '2026-02-18 12:31:10'),
(364, 'App\\Models\\User', 15, 'auth_token', '45fb59f4eefae6954f0657d34fe502a2a95e0310f04920410cc84544394fc60a', '[\"*\"]', '2026-02-18 13:36:06', NULL, '2026-02-18 12:41:09', '2026-02-18 13:36:06'),
(365, 'App\\Models\\User', 15, 'auth_token', '92341754119012c1525bb789bf0904f3ead6256d702a073731cb61c6d7639300', '[\"*\"]', '2026-02-18 12:44:13', NULL, '2026-02-18 12:44:12', '2026-02-18 12:44:13'),
(366, 'App\\Models\\User', 15, 'auth_token', '676b31a49f39075e120dcad6298397a5547c6da4365d5399156436ec41e7d238', '[\"*\"]', '2026-02-18 12:45:59', NULL, '2026-02-18 12:45:59', '2026-02-18 12:45:59'),
(367, 'App\\Models\\User', 15, 'auth_token', '47ed6ee7d51f6f2c20bb296c00b0a5217e98cbd299acd67ff4aae373712d5df8', '[\"*\"]', '2026-02-18 13:13:59', NULL, '2026-02-18 13:13:58', '2026-02-18 13:13:59'),
(368, 'App\\Models\\User', 15, 'auth_token', '0951b41db33b7bdb7264706c45c44c0e5ed9c88eee93aa3e8dfdd4b4795d2716', '[\"*\"]', '2026-02-18 13:14:19', NULL, '2026-02-18 13:14:18', '2026-02-18 13:14:19'),
(369, 'App\\Models\\User', 15, 'auth_token', '5fdd5ece8f5d0a52bee51d0b568c0f979f53cc2775dd59b341a4e02082621785', '[\"*\"]', '2026-02-18 13:15:40', NULL, '2026-02-18 13:15:36', '2026-02-18 13:15:40'),
(370, 'App\\Models\\User', 15, 'auth_token', 'f52439cf96adf4581eee7603a1bef91e069e702a7150dfe939cdff85c4955c67', '[\"*\"]', '2026-02-18 13:16:17', NULL, '2026-02-18 13:16:16', '2026-02-18 13:16:17'),
(371, 'App\\Models\\User', 15, 'auth_token', '7d3c6e5693694a5514c2c7cbd28ccdf3abbb5392c62d5447ac538d37d01ee010', '[\"*\"]', '2026-02-18 13:16:54', NULL, '2026-02-18 13:16:53', '2026-02-18 13:16:54'),
(372, 'App\\Models\\User', 15, 'auth_token', 'f1fb7f54bcd93e6e603779611fc061f3c809436bd84223b7b3a9c7e5f4a40ae4', '[\"*\"]', NULL, NULL, '2026-02-18 13:26:38', '2026-02-18 13:26:38'),
(373, 'App\\Models\\User', 15, 'auth_token', 'f90795a9791755d880572fd6c9bff09e94681587064a443a88024342769490c4', '[\"*\"]', '2026-02-18 13:36:11', NULL, '2026-02-18 13:36:10', '2026-02-18 13:36:11'),
(375, 'App\\Models\\User', 15, 'auth_token', 'f9e752b4cf7af606ad8febbc625b73250891647b87d8e82a2fd7794282e64f97', '[\"*\"]', '2026-02-19 12:37:59', NULL, '2026-02-18 15:02:39', '2026-02-19 12:37:59'),
(376, 'App\\Models\\User', 15, 'auth_token', '5ad5531cfb5c7e4148e5561f851ed5f9f4d20e71d6dc7d792b1dbfcb67a7ba2e', '[\"*\"]', '2026-02-19 21:33:11', NULL, '2026-02-19 20:36:13', '2026-02-19 21:33:11'),
(377, 'App\\Models\\User', 15, 'auth_token', '99be14ec05ed3196b0d0513112d663242760fd4362f41681c2255bc03ca745d9', '[\"*\"]', '2026-02-19 20:37:15', NULL, '2026-02-19 20:37:12', '2026-02-19 20:37:15'),
(378, 'App\\Models\\User', 15, 'auth_token', '5fca81f085c2e7dd774e54822ebd3f48fe9e3788a879f5b263397e8b2858de9e', '[\"*\"]', '2026-02-19 20:38:07', NULL, '2026-02-19 20:37:47', '2026-02-19 20:38:07'),
(379, 'App\\Models\\User', 15, 'auth_token', '8527ccd9502f1c5e7bd12492d8c227ab0ef56ef80302898195f945a1174a6ac2', '[\"*\"]', '2026-02-19 20:38:42', NULL, '2026-02-19 20:38:15', '2026-02-19 20:38:42'),
(380, 'App\\Models\\User', 15, 'auth_token', 'f7f4546f36d6578683ca980196b23fac7d821bcd205817b29d048fad9ce57434', '[\"*\"]', '2026-02-20 14:11:46', NULL, '2026-02-19 20:59:19', '2026-02-20 14:11:46'),
(381, 'App\\Models\\User', 26, 'auth_token', 'ab13c46c5731f2a8b3138a1005321ff83367ee328a4f6e6b3aaf124a6c2151eb', '[\"*\"]', NULL, NULL, '2026-02-23 10:32:17', '2026-02-23 10:32:17'),
(382, 'App\\Models\\User', 27, 'auth_token', 'fe0498eabdf508567efc8ad586217c3afea744f672c86b9d55b0e275d81ed256', '[\"*\"]', NULL, NULL, '2026-02-23 10:34:16', '2026-02-23 10:34:16'),
(383, 'App\\Models\\User', 28, 'auth_token', '34b2c8bbbc883e828b4b37034de14f0291c2bd76559eda22e7ffcfd19469e839', '[\"*\"]', NULL, NULL, '2026-02-23 11:23:11', '2026-02-23 11:23:11'),
(384, 'App\\Models\\User', 29, 'auth_token', '1800dc4d772cc9807884938ad010fd9e1922742588910b3dee191d130c504c3e', '[\"*\"]', NULL, NULL, '2026-02-23 12:02:45', '2026-02-23 12:02:45'),
(385, 'App\\Models\\User', 30, 'auth_token', '8796fe52af496ae301a3acf74425102f03e0eb14ad58f4f83fdd24e97c24d133', '[\"*\"]', NULL, NULL, '2026-02-23 12:34:49', '2026-02-23 12:34:49'),
(387, 'App\\Models\\User', 15, 'auth_token', '25a26672b5196f1cfc358397ab596fd566246d88bd9d1b244d79828acd1e38ff', '[\"*\"]', '2026-02-23 13:20:28', NULL, '2026-02-23 13:20:21', '2026-02-23 13:20:28'),
(388, 'App\\Models\\User', 31, 'auth_token', 'de51c1c455dad29e734a730d8d2d4c19d82c00c027562a2eac875e74682d9556', '[\"*\"]', NULL, NULL, '2026-02-23 13:22:45', '2026-02-23 13:22:45'),
(389, 'App\\Models\\User', 32, 'auth_token', '47a54a4e15b827cd566c35dc4b7eec7614e7390693075ef8ff499d6117243190', '[\"*\"]', NULL, NULL, '2026-02-23 13:29:54', '2026-02-23 13:29:54'),
(390, 'App\\Models\\User', 15, 'auth_token', '9788f3e654f02036696b46d76b8e7f60f1a6a2de9048cf9aa425c8a955f1ba43', '[\"*\"]', '2026-02-23 13:36:12', NULL, '2026-02-23 13:30:15', '2026-02-23 13:36:12'),
(391, 'App\\Models\\User', 33, 'auth_token', '43d149a444f318d6fd025b4509ee2502528cabe31f9c0b4554f499a513583574', '[\"*\"]', NULL, NULL, '2026-02-23 14:36:16', '2026-02-23 14:36:16'),
(392, 'App\\Models\\User', 34, 'auth_token', '990db23b4367908add045cea1228df8112aa11ec6c3350f067bb76b7e3c18905', '[\"*\"]', NULL, NULL, '2026-02-23 16:08:59', '2026-02-23 16:08:59'),
(393, 'App\\Models\\User', 15, 'auth_token', '4ce745890e2a9b2517142b1ae7633a738c675dcb51feb3cc5b0ef3f3fc567cce', '[\"*\"]', '2026-02-23 17:39:22', NULL, '2026-02-23 17:38:31', '2026-02-23 17:39:22'),
(394, 'App\\Models\\User', 15, 'auth_token', '7aceae243e3247f90be3ef733de08d24216d6c7ba005548e43bdb1a5bea1bacc', '[\"*\"]', '2026-02-23 17:47:39', NULL, '2026-02-23 17:47:34', '2026-02-23 17:47:39'),
(395, 'App\\Models\\User', 15, 'auth_token', '0e83ca0e6018969e3bf32d56af5c3de3eb5ba0414da42881d11ec5074553a7bc', '[\"*\"]', '2026-02-23 17:47:58', NULL, '2026-02-23 17:47:57', '2026-02-23 17:47:58'),
(396, 'App\\Models\\User', 15, 'auth_token', '11a3fa5cbcfae0e57a72e38f4d1de544d16e7bdb4c2f825873eccec5f405928f', '[\"*\"]', '2026-02-23 17:54:27', NULL, '2026-02-23 17:52:24', '2026-02-23 17:54:27'),
(397, 'App\\Models\\User', 26, 'auth_token', '0070fef967f7825369b0396e0456c26f301dafb01504ee654438601db6ec49ee', '[\"*\"]', '2026-02-23 17:53:58', NULL, '2026-02-23 17:53:03', '2026-02-23 17:53:58'),
(398, 'App\\Models\\User', 27, 'auth_token', '57e726b5d5c10f07c4bb1afe2ba9d91a4200a0d6bb01fe04f0d6dec058d83757', '[\"*\"]', '2026-02-24 15:16:57', NULL, '2026-02-23 17:56:07', '2026-02-24 15:16:57'),
(399, 'App\\Models\\User', 17, 'auth_token', '3af201ce0f07ab758c3b874fc1c7b7c9a11ba7c9c39de322ac8d5488b0640732', '[\"*\"]', '2026-02-24 00:55:45', NULL, '2026-02-24 00:51:09', '2026-02-24 00:55:45'),
(400, 'App\\Models\\User', 17, 'auth_token', '2e06a950781b85228c7c48f8e66d5498639cf5e98a4f1bb09107e8f0fd35e803', '[\"*\"]', '2026-02-24 00:56:57', NULL, '2026-02-24 00:56:03', '2026-02-24 00:56:57'),
(401, 'App\\Models\\User', 17, 'auth_token', '52c63b5356e0ae57e6a914f88130cadb2bbad83243b1828ca225dcde199af01d', '[\"*\"]', '2026-02-24 00:57:06', NULL, '2026-02-24 00:57:05', '2026-02-24 00:57:06'),
(402, 'App\\Models\\User', 35, 'auth_token', '9b5d20d1b6927340acc9a45d72cff0f9e92ffae03f25784280ee39b890407207', '[\"*\"]', NULL, NULL, '2026-02-24 02:17:14', '2026-02-24 02:17:14'),
(403, 'App\\Models\\User', 36, 'auth_token', 'ae7b5c9724fd58cb57a81746643cddc0cc92b636cbd96b4c3c6c1ba262512f96', '[\"*\"]', NULL, NULL, '2026-02-24 09:09:46', '2026-02-24 09:09:46'),
(404, 'App\\Models\\User', 17, 'auth_token', '5c42a09d71829ed0970effa690b89ba362c2921c02dd603187b57bb268a51b80', '[\"*\"]', '2026-02-24 09:17:25', NULL, '2026-02-24 09:13:58', '2026-02-24 09:17:25'),
(405, 'App\\Models\\User', 36, 'auth_token', 'de4a306707d391d432fad2aef79788f47b36218f45e1af8a77900638065785ed', '[\"*\"]', '2026-02-24 09:20:46', NULL, '2026-02-24 09:20:20', '2026-02-24 09:20:46'),
(406, 'App\\Models\\User', 26, 'auth_token', 'd5959da028f5fdc2ddc46c33ed65ceb2e4d1a92b90b355ab944fad144bb320af', '[\"*\"]', '2026-02-24 09:21:12', NULL, '2026-02-24 09:20:54', '2026-02-24 09:21:12'),
(407, 'App\\Models\\User', 37, 'auth_token', '2f213816d972dc30d87a234957ca5d8ad2d10bd6cff46f14f2d1f5744242a4e8', '[\"*\"]', NULL, NULL, '2026-02-24 10:04:54', '2026-02-24 10:04:54'),
(408, 'App\\Models\\User', 15, 'auth_token', '72c3eac06a13a1c2ab4d3f04204eaf15e998e515b29e5a1c4878eafb30f806a2', '[\"*\"]', '2026-02-24 16:36:23', NULL, '2026-02-24 10:23:23', '2026-02-24 16:36:23'),
(409, 'App\\Models\\User', 15, 'auth_token', 'fb8ae4a451505a65d5898ec5e0b6a5dd47ee3768335c875d0e7aa1e80c935ef5', '[\"*\"]', NULL, NULL, '2026-02-24 10:24:47', '2026-02-24 10:24:47'),
(410, 'App\\Models\\User', 15, 'auth_token', '53b8e3240a3be259106cf64a09bdc52a15f866aa413b8a52a367b82175df138b', '[\"*\"]', '2026-02-24 10:25:08', NULL, '2026-02-24 10:24:47', '2026-02-24 10:25:08'),
(411, 'App\\Models\\User', 15, 'auth_token', 'e67e0ecae961e4f9b68a15e178e6826b5db443c325d8eb6b41aba721751b9aba', '[\"*\"]', '2026-02-24 10:45:34', NULL, '2026-02-24 10:45:24', '2026-02-24 10:45:34'),
(412, 'App\\Models\\User', 15, 'auth_token', 'f7212566078bfe5ab32827daba9d82dab1cd3c2b2af2d1d03aa774c5c773c58f', '[\"*\"]', '2026-02-24 13:07:45', NULL, '2026-02-24 11:01:54', '2026-02-24 13:07:45'),
(413, 'App\\Models\\User', 38, 'auth_token', '0abc92a68028fc3f5397490607407a2ebe7ebb24f248444c66bd440c00101562', '[\"*\"]', NULL, NULL, '2026-02-24 13:11:17', '2026-02-24 13:11:17'),
(414, 'App\\Models\\User', 15, 'auth_token', '0c131daa73191ff78b610c5fded14621005acb2e5aaa5ad724e0ccb244049332', '[\"*\"]', '2026-02-24 14:02:37', NULL, '2026-02-24 13:18:36', '2026-02-24 14:02:37'),
(415, 'App\\Models\\User', 15, 'auth_token', '18eabe8ce3b4d3c95c979c6bfaae93f54b47f20706a03b1a42f21edb9b4cc895', '[\"*\"]', '2026-02-24 13:21:53', NULL, '2026-02-24 13:21:37', '2026-02-24 13:21:53'),
(416, 'App\\Models\\User', 15, 'auth_token', 'd0803560ea85024bc0263163a0f4db7149bc529e146cbd570c3e1b7123cd50f4', '[\"*\"]', '2026-02-24 15:29:50', NULL, '2026-02-24 13:30:42', '2026-02-24 15:29:50'),
(417, 'App\\Models\\User', 39, 'auth_token', 'f84e3e97a2ade98704d348b87d0c336760da67dbfb3dcb558da69e87b7f71d03', '[\"*\"]', NULL, NULL, '2026-02-24 13:48:08', '2026-02-24 13:48:08'),
(418, 'App\\Models\\User', 15, 'auth_token', '567ead4c9eebaeec4f693154288c31b2ba8f3dea2f2d6916cdd0ebe4ba6b9ca8', '[\"*\"]', '2026-02-25 11:08:32', NULL, '2026-02-24 14:03:24', '2026-02-25 11:08:32'),
(419, 'App\\Models\\User', 40, 'auth_token', 'a1d8d291d884a4e4384f5f52baf1fa03f1f7cefaa7e545742206e2cc891efb18', '[\"*\"]', NULL, NULL, '2026-02-24 14:26:39', '2026-02-24 14:26:39'),
(420, 'App\\Models\\User', 41, 'auth_token', '15539f030c6d9eb5adc6df8c23d88953f0f73af184dc5a12038d7a0255718d91', '[\"*\"]', NULL, NULL, '2026-02-24 14:29:18', '2026-02-24 14:29:18'),
(421, 'App\\Models\\User', 39, 'auth_token', '9157b289b1feac2d8ca38c7bb309fe7a8e4bc3e91c5b5ff70fa0e9a70e527c6d', '[\"*\"]', '2026-02-24 15:22:21', NULL, '2026-02-24 15:20:54', '2026-02-24 15:22:21'),
(422, 'App\\Models\\User', 42, 'auth_token', '26b0c42fa9a9d95b99943ba0a4fa0a063b120f50dc84ba75fda828bfd5a1b920', '[\"*\"]', NULL, NULL, '2026-02-24 15:31:13', '2026-02-24 15:31:13'),
(423, 'App\\Models\\User', 34, 'auth_token', '64123e7bd06481e93e6de2a62c5dc4993078c7692fccf30c8f8e21a564ca3be4', '[\"*\"]', '2026-02-24 19:03:10', NULL, '2026-02-24 18:55:51', '2026-02-24 19:03:10'),
(424, 'App\\Models\\User', 43, 'auth_token', '258aac978c2d365f267e7e47749794b36b4dda663e916494bd3dd00c210571ac', '[\"*\"]', NULL, NULL, '2026-02-24 21:15:24', '2026-02-24 21:15:24'),
(425, 'App\\Models\\User', 44, 'auth_token', '9a13fa5367999f7eb38b86fe0285b4472beaee07a6be0128856e5a532532d266', '[\"*\"]', NULL, NULL, '2026-02-24 22:20:49', '2026-02-24 22:20:49'),
(426, 'App\\Models\\User', 45, 'auth_token', 'afe3579c45d92cac6afeea209016894c1b8dd83edf95907582d6652b49c8410e', '[\"*\"]', NULL, NULL, '2026-02-24 22:25:28', '2026-02-24 22:25:28'),
(427, 'App\\Models\\User', 15, 'auth_token', '25e3aa67f5dee7ce21873618d662474737ed57825e74bf689f57b1858ae29bb4', '[\"*\"]', '2026-02-25 00:41:37', NULL, '2026-02-24 22:36:33', '2026-02-25 00:41:37'),
(428, 'App\\Models\\User', 46, 'auth_token', 'ddc483f4623cba1f8d54b8c54eca2df781bfefea678bc615123ca63901600cd0', '[\"*\"]', NULL, NULL, '2026-02-24 23:46:44', '2026-02-24 23:46:44'),
(429, 'App\\Models\\User', 27, 'auth_token', '074e3c89a5ca3b20d8c2a0bd3d42c2685864f523b17c338ff747530c4062591b', '[\"*\"]', '2026-02-25 20:42:47', NULL, '2026-02-25 00:17:46', '2026-02-25 20:42:47'),
(430, 'App\\Models\\User', 32, 'auth_token', '21cfe662955a6136541072b6fecd9d60b3f24ae79449b146c7ebbe00b0e4196f', '[\"*\"]', '2026-02-25 00:44:50', NULL, '2026-02-25 00:43:50', '2026-02-25 00:44:50'),
(431, 'App\\Models\\User', 15, 'auth_token', 'f15e3c757c4d6ff0aaf06f21b79b80a3d227c2e7edae6cbef3effcac8db02def', '[\"*\"]', '2026-02-25 01:31:21', NULL, '2026-02-25 00:45:46', '2026-02-25 01:31:21'),
(432, 'App\\Models\\User', 32, 'auth_token', '239277351306552b5ab7d252a01bb1ad036d4eef38d3c41b979d8ebfb38f6ce5', '[\"*\"]', '2026-02-25 01:04:00', NULL, '2026-02-25 01:03:56', '2026-02-25 01:04:00'),
(433, 'App\\Models\\User', 47, 'auth_token', '2e02b3d56bad933f5e91ade5c81b593ef3941a460df45bb746de36a2373c5f97', '[\"*\"]', NULL, NULL, '2026-02-25 02:51:21', '2026-02-25 02:51:21'),
(435, 'App\\Models\\User', 48, 'auth_token', '6851b7078701c01933dbd3a94b4ca7f0ba9f60a44fc09462f0698f7087cb6fb1', '[\"*\"]', NULL, NULL, '2026-02-25 11:11:29', '2026-02-25 11:11:29'),
(436, 'App\\Models\\User', 15, 'auth_token', '974e1eb55db227819fe33b9919cd1f0e8150004ee3edcadaf51a0a51caffa218', '[\"*\"]', '2026-02-25 11:21:37', NULL, '2026-02-25 11:11:37', '2026-02-25 11:21:37'),
(437, 'App\\Models\\User', 49, 'auth_token', 'c5f3d4fee80899a71378ee8bc8ee38e21503fee8e8bd8e28fa08143e5ddb3200', '[\"*\"]', NULL, NULL, '2026-02-25 11:16:43', '2026-02-25 11:16:43'),
(438, 'App\\Models\\User', 15, 'auth_token', '06b560afdc121bb7ea8466a27fd83a9b4147fb1c0e61fd27b3dbf6a12f5557aa', '[\"*\"]', '2026-02-25 11:19:29', NULL, '2026-02-25 11:19:26', '2026-02-25 11:19:29'),
(439, 'App\\Models\\User', 15, 'auth_token', '897849bcc953948d562d3d1e0004839a4ee0b107f426466eb07225a6eb3f42c1', '[\"*\"]', '2026-02-25 11:21:40', NULL, '2026-02-25 11:21:21', '2026-02-25 11:21:40'),
(440, 'App\\Models\\User', 15, 'auth_token', '61a1117195a3907ea7c0867e680d80b44f4980427843b2a3be6a4b6b24da2cf9', '[\"*\"]', '2026-02-25 13:20:19', NULL, '2026-02-25 11:26:27', '2026-02-25 13:20:19'),
(441, 'App\\Models\\User', 15, 'auth_token', 'd434edf60f332ce9fbb0ee3bb228c25cf9636082eb575a9e1089ea74dc970911', '[\"*\"]', '2026-02-25 11:29:09', NULL, '2026-02-25 11:28:56', '2026-02-25 11:29:09'),
(442, 'App\\Models\\User', 17, 'auth_token', 'aceda2f261c532c09a27e454c3c0f55cf27c0b8186e8f05dddd76b65555e269d', '[\"*\"]', '2026-02-25 12:13:36', NULL, '2026-02-25 12:08:46', '2026-02-25 12:13:36'),
(443, 'App\\Models\\User', 17, 'auth_token', '2f43bada131d746ed3fa8a824478c292e7408ef81d025d32bd21d0e3f3373acb', '[\"*\"]', '2026-02-25 12:16:27', NULL, '2026-02-25 12:14:20', '2026-02-25 12:16:27'),
(444, 'App\\Models\\User', 17, 'auth_token', '2333a6a6f75725fd0beecc8f8bbf51be09accb4c18e41f60697ac3c041f7d9a4', '[\"*\"]', '2026-02-25 12:25:50', NULL, '2026-02-25 12:23:09', '2026-02-25 12:25:50'),
(445, 'App\\Models\\User', 50, 'auth_token', '5764fa6b3f40a90ebf902fff210695f3edce294091ab8eebc889dd5f659beed1', '[\"*\"]', NULL, NULL, '2026-02-25 12:30:10', '2026-02-25 12:30:10'),
(446, 'App\\Models\\User', 17, 'auth_token', '40d4dfc2713fd65f7ea8b9afa581a0398cb215ff7aa5670ea3c932c42fd43bd7', '[\"*\"]', '2026-02-25 12:34:03', NULL, '2026-02-25 12:32:28', '2026-02-25 12:34:03'),
(448, 'App\\Models\\User', 24, 'auth_token', '4b05f68bc53b453a63414ce57a35c262c088f52a9dac2e6a3737f12605fb75d2', '[\"*\"]', NULL, NULL, '2026-02-25 13:03:53', '2026-02-25 13:03:53'),
(449, 'App\\Models\\User', 24, 'auth_token', 'fa76535125be76eb0d3c93dcc3b82cb6bd60ee7a4899a045588113c648eab58b', '[\"*\"]', NULL, NULL, '2026-02-25 13:04:11', '2026-02-25 13:04:11'),
(450, 'App\\Models\\User', 24, 'auth_token', '7e89642957f74db2d02f7b5730b4e3d87c44ef7836f5de2f1874e577dada35cd', '[\"*\"]', NULL, NULL, '2026-02-25 13:04:33', '2026-02-25 13:04:33'),
(451, 'App\\Models\\User', 24, 'auth_token', 'b171e12a141e022c55bd91db1b3c974beceb9501a2ba97d83e1633fd8c57f5b6', '[\"*\"]', NULL, NULL, '2026-02-25 13:07:29', '2026-02-25 13:07:29'),
(452, 'App\\Models\\User', 15, 'auth_token', 'd57a2f4134df1c844eed244668c5c285d9bc2d10665ab1bed4564d8d265686b3', '[\"*\"]', '2026-02-25 14:31:06', NULL, '2026-02-25 14:28:06', '2026-02-25 14:31:06'),
(453, 'App\\Models\\User', 24, 'auth_token', '42d97ea0c2c3266c81047f617b22ff51cbcd3886fadca71c37f1aa7263ebc4fb', '[\"*\"]', NULL, NULL, '2026-02-25 14:32:44', '2026-02-25 14:32:44'),
(454, 'App\\Models\\User', 17, 'auth_token', 'ac98caf48e40b2bacfdb6ce350c65b69f8d76e12794b19451629335df9ff8c1d', '[\"*\"]', '2026-02-25 14:41:34', NULL, '2026-02-25 14:36:34', '2026-02-25 14:41:34'),
(455, 'App\\Models\\User', 17, 'auth_token', '0249290fcdcec3f51d63ab7a8e33b7b8bb75822436af9fe8d390bf794776a194', '[\"*\"]', '2026-02-27 22:05:45', NULL, '2026-02-25 14:43:37', '2026-02-27 22:05:45'),
(456, 'App\\Models\\User', 15, 'auth_token', '507a28d2543eca55224ef14911807c411ad240830f83221070bccc2ad1f4a507', '[\"*\"]', '2026-02-25 15:01:14', NULL, '2026-02-25 15:00:54', '2026-02-25 15:01:14'),
(457, 'App\\Models\\User', 24, 'auth_token', 'b7e8f3dea813e333c21c471aed40f7c8f5a1bfb014973a41dc83b5a170dd1f35', '[\"*\"]', NULL, NULL, '2026-02-25 15:04:18', '2026-02-25 15:04:18'),
(458, 'App\\Models\\User', 24, 'auth_token', 'facf1167b63064339b786a85c40ec12239eb5f163a0d39942038d1e49cefc2c6', '[\"*\"]', NULL, NULL, '2026-02-25 15:05:42', '2026-02-25 15:05:42'),
(459, 'App\\Models\\User', 24, 'auth_token', '7829a1030ecfad7fee963924d5d3ffb27a18e0e0954e90f1b13171bb2bd23f50', '[\"*\"]', NULL, NULL, '2026-02-25 15:05:44', '2026-02-25 15:05:44'),
(461, 'App\\Models\\User', 15, 'auth_token', 'c589e483d1ceceff9e9787f66af337dd088c8bc46af19fdf75f964362908e7fd', '[\"*\"]', '2026-02-25 15:21:59', NULL, '2026-02-25 15:21:27', '2026-02-25 15:21:59'),
(462, 'App\\Models\\User', 15, 'auth_token', '858b3c49853039aa6b954e6b0cf756b80310529f0eb673e7db5964b168a398fe', '[\"*\"]', '2026-02-25 15:53:24', NULL, '2026-02-25 15:53:05', '2026-02-25 15:53:24'),
(463, 'App\\Models\\User', 51, 'auth_token', '847f8049467c6fc0e0f7fbbdcefca12daf2e891bd5341edda83bc28af443e900', '[\"*\"]', NULL, NULL, '2026-02-25 17:43:49', '2026-02-25 17:43:49'),
(464, 'App\\Models\\User', 46, 'auth_token', '644680d63866b2d7b02d8000303d77797a90c4c5c96369f7acc6c4592cc4a8eb', '[\"*\"]', '2026-02-25 17:45:49', NULL, '2026-02-25 17:44:32', '2026-02-25 17:45:49'),
(465, 'App\\Models\\User', 38, 'auth_token', '7ad22b97b91c051ba9e7164bd33b5a9b6fd629000fc82e0c492f9289d60e03d7', '[\"*\"]', '2026-02-25 17:54:04', NULL, '2026-02-25 17:51:57', '2026-02-25 17:54:04'),
(466, 'App\\Models\\User', 30, 'auth_token', 'd3cd88baedabf660ef16a06ef3f40ecb6bc422a55ee40834882d0bb1cf8f19ea', '[\"*\"]', '2026-02-25 18:07:21', NULL, '2026-02-25 18:06:58', '2026-02-25 18:07:21'),
(467, 'App\\Models\\User', 52, 'auth_token', 'a47d9994cd4d803130cf32abdbc8d10ecf86425c224089f2d260c71763a87a8d', '[\"*\"]', NULL, NULL, '2026-02-25 18:12:55', '2026-02-25 18:12:55'),
(468, 'App\\Models\\User', 37, 'auth_token', 'd2e11e07fc8d8a447f8fcecdfc6b493271528a5ff4eec188805d659c0eae4c60', '[\"*\"]', '2026-02-25 18:20:55', NULL, '2026-02-25 18:14:41', '2026-02-25 18:20:55'),
(469, 'App\\Models\\User', 37, 'auth_token', '678b2678c3396207a39b72788c8cfd4149688d858dcdac9b3fd5e08bb2733087', '[\"*\"]', '2026-02-25 18:22:57', NULL, '2026-02-25 18:22:45', '2026-02-25 18:22:57'),
(470, 'App\\Models\\User', 37, 'auth_token', '1b56679eaeef2e7377c47ca82ccca87b972237c919f39510fdf07286fe348afd', '[\"*\"]', '2026-02-25 18:24:01', NULL, '2026-02-25 18:23:38', '2026-02-25 18:24:01'),
(471, 'App\\Models\\User', 53, 'auth_token', '285119c6797ee198f5d3e5704b73bd0752909540efd8b776d957993f315ae0b4', '[\"*\"]', NULL, NULL, '2026-02-25 18:24:45', '2026-02-25 18:24:45'),
(472, 'App\\Models\\User', 41, 'auth_token', 'd56de279fe5f7e9637b7b446e96bc2c78d9b149c3e96cf905f5c97d63598b7e6', '[\"*\"]', '2026-02-25 18:29:58', NULL, '2026-02-25 18:29:03', '2026-02-25 18:29:58'),
(473, 'App\\Models\\User', 52, 'auth_token', '2af794256aa9f151d64569e28932f333467d04196fcbe3f15163c16cb053fe04', '[\"*\"]', '2026-02-25 18:41:45', NULL, '2026-02-25 18:41:05', '2026-02-25 18:41:45'),
(474, 'App\\Models\\User', 45, 'auth_token', '36650614b757214ba67701e20f93efd713c5c35b483e0b71b8bf90d07a83465a', '[\"*\"]', '2026-02-25 18:41:31', NULL, '2026-02-25 18:41:28', '2026-02-25 18:41:31'),
(475, 'App\\Models\\User', 24, 'auth_token', '429d53ef6c2e1e632dc476bd5e697bd70eec0c22e5713f225bcd1a16ca1be8f3', '[\"*\"]', NULL, NULL, '2026-02-25 18:45:53', '2026-02-25 18:45:53'),
(476, 'App\\Models\\User', 54, 'auth_token', '18efa5bbad1c34ef19b0aa88d4e4ed754cef130ccda8d82433bfedbb52a2f8de', '[\"*\"]', NULL, NULL, '2026-02-25 18:51:46', '2026-02-25 18:51:46'),
(477, 'App\\Models\\User', 55, 'auth_token', '0e2d903b67738ac91cb01e411e6b99cf71e10544ace09811103b766bd5947afa', '[\"*\"]', NULL, NULL, '2026-02-25 19:06:15', '2026-02-25 19:06:15'),
(478, 'App\\Models\\User', 15, 'auth_token', '71294b64524760e0ab21a775540b054c69ace56d113fc11532085e981e19a7b4', '[\"*\"]', '2026-02-25 20:41:41', NULL, '2026-02-25 20:41:06', '2026-02-25 20:41:41'),
(479, 'App\\Models\\User', 53, 'auth_token', 'b836c2667cc37819fe4fd1698a272eeb1ff01c717bd5ba73813a26c8d0972729', '[\"*\"]', '2026-02-25 20:47:07', NULL, '2026-02-25 20:46:05', '2026-02-25 20:47:07'),
(480, 'App\\Models\\User', 15, 'auth_token', 'bc06d0c612ba3ea2e89fb5024334fdb841a11de1b839c5c36426c66a8fe54a9a', '[\"*\"]', '2026-02-26 00:46:00', NULL, '2026-02-25 21:28:04', '2026-02-26 00:46:00'),
(481, 'App\\Models\\User', 56, 'auth_token', '41353012a1d3db73ac7058a10fe7a20e110e38e27f2a27b45214ea598822e9cf', '[\"*\"]', NULL, NULL, '2026-02-25 22:00:08', '2026-02-25 22:00:08'),
(482, 'App\\Models\\User', 57, 'auth_token', '5f69a8eab1fbcb14d84969f89a658955034a4356be5ed3e1e0d0e1647b8aebdc', '[\"*\"]', NULL, NULL, '2026-02-25 22:13:22', '2026-02-25 22:13:22'),
(483, 'App\\Models\\User', 17, 'auth_token', '49119f8bb9ead22ca72bab3cb30a806bdbc274545bbed2fd9d6452766c99fc49', '[\"*\"]', '2026-02-25 22:45:54', NULL, '2026-02-25 22:45:28', '2026-02-25 22:45:54'),
(484, 'App\\Models\\User', 26, 'auth_token', 'c8fadf98e7d59c3fcc6caf4a2fbfd4e9d5af4a1bf55cfeff918b96e80b4f3fa2', '[\"*\"]', '2026-02-25 23:10:34', NULL, '2026-02-25 23:05:53', '2026-02-25 23:10:34'),
(485, 'App\\Models\\User', 15, 'auth_token', 'ff478adb8313ac977522f599a18447ea12164aa36d4f03e807720d4562beb348', '[\"*\"]', NULL, NULL, '2026-02-25 23:53:40', '2026-02-25 23:53:40'),
(486, 'App\\Models\\User', 15, 'auth_token', 'd15e6c6d4fd11889e849c19f53979f6030ca6e3a222b4da2b27f2a50a249208f', '[\"*\"]', '2026-02-25 23:57:48', NULL, '2026-02-25 23:53:44', '2026-02-25 23:57:48'),
(487, 'App\\Models\\User', 17, 'auth_token', '7e00249ec18b2f72244f583a7d4832a669eed20623c9741798ebded9fe483fb6', '[\"*\"]', '2026-02-26 00:27:57', NULL, '2026-02-26 00:27:56', '2026-02-26 00:27:57'),
(488, 'App\\Models\\User', 58, 'auth_token', '7645cd76c5c51d18cadec899edd37a77fa97654a68547ae1b94e58110825f67e', '[\"*\"]', NULL, NULL, '2026-02-26 00:36:02', '2026-02-26 00:36:02'),
(489, 'App\\Models\\User', 17, 'auth_token', '15fa781f94048dd7c96e76a5652bfe22a4f7df3e841f1cb3775f5e074aaaf306', '[\"*\"]', '2026-02-26 01:03:07', NULL, '2026-02-26 00:39:00', '2026-02-26 01:03:07'),
(490, 'App\\Models\\User', 15, 'auth_token', '38a70a35a0b8209ca670d7b9ebd00591bf9a8eb1f45c1c674b6f8bd41402b9f5', '[\"*\"]', '2026-02-26 00:41:54', NULL, '2026-02-26 00:41:44', '2026-02-26 00:41:54'),
(491, 'App\\Models\\User', 24, 'auth_token', 'aa5e50590bbc4e6d2e109fbd08e0b5879aea871fe3e5ce5458a1f35e24365f97', '[\"*\"]', NULL, NULL, '2026-02-26 00:55:54', '2026-02-26 00:55:54'),
(492, 'App\\Models\\User', 24, 'auth_token', '741d1dca6f35eea774d6b42a2fbb251fba42174bb66d2ba2fa3912a65ed6bc78', '[\"*\"]', NULL, NULL, '2026-02-26 00:58:31', '2026-02-26 00:58:31'),
(493, 'App\\Models\\User', 24, 'auth_token', '982c0fb7eec2668d3113ce56a2b71e9afe6600dacc77c1e0559c1b7742d37852', '[\"*\"]', NULL, NULL, '2026-02-26 00:58:45', '2026-02-26 00:58:45'),
(494, 'App\\Models\\User', 17, 'auth_token', '6c851bdb2214bace7e047fe352394b8620182359a763c73255af902d30e88934', '[\"*\"]', '2026-02-26 01:06:33', NULL, '2026-02-26 01:03:40', '2026-02-26 01:06:33'),
(495, 'App\\Models\\User', 59, 'auth_token', 'caf50c860f5d534211e87586beddcd3fb4b18fa3e4a1ea205a1965354cbac12b', '[\"*\"]', NULL, NULL, '2026-02-26 01:05:41', '2026-02-26 01:05:41'),
(496, 'App\\Models\\User', 17, 'auth_token', '35842a4aaa3c2b81e294de26a3212ab7c3ed90a04ef696911584ac1db4d766ce', '[\"*\"]', '2026-02-26 01:08:09', NULL, '2026-02-26 01:07:45', '2026-02-26 01:08:09'),
(497, 'App\\Models\\User', 56, 'auth_token', 'ef7e70a89554a6692129d18da0b83232f9490669e11bb0b3f6a08b3bcf9fa961', '[\"*\"]', '2026-02-26 01:20:48', NULL, '2026-02-26 01:14:51', '2026-02-26 01:20:48'),
(498, 'App\\Models\\User', 17, 'auth_token', 'c856e0fd275c2f8fb35f57750370708b673d008e2e0d99ac620766f3995f599c', '[\"*\"]', '2026-02-26 01:25:20', NULL, '2026-02-26 01:16:32', '2026-02-26 01:25:20'),
(499, 'App\\Models\\User', 17, 'auth_token', '19640e8db6a39b3eac9e463d630de92a45ffadf86d3fe79fa99cfe65dd096367', '[\"*\"]', '2026-02-26 01:25:33', NULL, '2026-02-26 01:25:32', '2026-02-26 01:25:33'),
(500, 'App\\Models\\User', 15, 'auth_token', '1be86832ed8bf526a2d0d5f5ee5474da74db03dd3147cf25f4a14d89d88f50f5', '[\"*\"]', '2026-02-26 01:28:13', NULL, '2026-02-26 01:27:59', '2026-02-26 01:28:13'),
(502, 'App\\Models\\User', 46, 'auth_token', '8c74b57f8af6f88c80298c08ee6ca5706d2bbeecdc4779cc824c5f1aaa3e17de', '[\"*\"]', '2026-02-26 01:52:14', NULL, '2026-02-26 01:52:14', '2026-02-26 01:52:14'),
(503, 'App\\Models\\User', 15, 'auth_token', '9356edb34cf66fb3f78f2a1fdae79d6a6eef55b1809e422152e6a1935ce17488', '[\"*\"]', '2026-02-26 02:03:18', NULL, '2026-02-26 01:55:13', '2026-02-26 02:03:18'),
(504, 'App\\Models\\User', 15, 'auth_token', 'aaead05e222a2cd33e4fedde976329e2dd918fc44bcdb94da762bfd5a2471dfc', '[\"*\"]', '2026-02-27 13:35:16', NULL, '2026-02-26 01:59:50', '2026-02-27 13:35:16'),
(505, 'App\\Models\\User', 60, 'auth_token', '855725cc194ed418e53170746324cdb6b98ccd6dcebd85de0628d87b30b1f6df', '[\"*\"]', NULL, NULL, '2026-02-26 02:07:12', '2026-02-26 02:07:12'),
(506, 'App\\Models\\User', 36, 'auth_token', 'fcbf1327ab1568c5f4cd9e71f55242dbbaf5b9a99b84983347134be7aa2bc8d9', '[\"*\"]', '2026-02-26 09:03:30', NULL, '2026-02-26 09:01:20', '2026-02-26 09:03:30'),
(508, 'App\\Models\\User', 15, 'auth_token', '7e46f542a80d7e41d9242cbd6142519d417b32d3614959cb7e183524b211afc7', '[\"*\"]', '2026-02-26 15:17:35', NULL, '2026-02-26 14:47:24', '2026-02-26 15:17:35'),
(509, 'App\\Models\\User', 15, 'auth_token', '87da26559f19295216f179acef9c60fd05855f793e28335d4ae2f3cf5b12d0d8', '[\"*\"]', '2026-02-26 17:57:25', NULL, '2026-02-26 15:04:49', '2026-02-26 17:57:25'),
(510, 'App\\Models\\User', 61, 'auth_token', 'a6457edeba6ff0af09f80b4f2c907ca1506d03c217bb0a0444b50d272bc7a43f', '[\"*\"]', NULL, NULL, '2026-02-26 15:27:13', '2026-02-26 15:27:13'),
(511, 'App\\Models\\User', 15, 'auth_token', '8aeee35fe455ae3a468583b89fc84dca4a75b1a3638bab9e6abbf900d0c07ddf', '[\"*\"]', '2026-02-27 02:39:01', NULL, '2026-02-26 15:29:40', '2026-02-27 02:39:01'),
(512, 'App\\Models\\User', 15, 'auth_token', '87997dbcfcffb397924e95e4152b86a00585ee6f6cad4e519ac58f4c27afdcd4', '[\"*\"]', '2026-02-26 17:54:03', NULL, '2026-02-26 15:42:56', '2026-02-26 17:54:03'),
(513, 'App\\Models\\User', 32, 'auth_token', 'a17e9461793aa578bb4487dc002abb4a212b8c968d2efd0f2bd8a43919671df8', '[\"*\"]', '2026-02-26 16:08:11', NULL, '2026-02-26 16:08:08', '2026-02-26 16:08:11'),
(514, 'App\\Models\\User', 32, 'auth_token', 'e3b62189f915df4590b113dc6edece386945a1a23fb2bae544026e5874fe888e', '[\"*\"]', '2026-02-26 16:09:42', NULL, '2026-02-26 16:09:24', '2026-02-26 16:09:42'),
(515, 'App\\Models\\User', 32, 'auth_token', '4c5dc41c4fe2f33de01961febcd6b9168b85729159d8f62d453064e8a3cf9de8', '[\"*\"]', '2026-02-26 16:12:53', NULL, '2026-02-26 16:12:52', '2026-02-26 16:12:53'),
(516, 'App\\Models\\User', 62, 'auth_token', '49a764f8434398930e63669bb2dad7d0d16325d99ee9f5ec93f2fbdf5e1032cc', '[\"*\"]', NULL, NULL, '2026-02-26 16:42:37', '2026-02-26 16:42:37'),
(517, 'App\\Models\\User', 24, 'auth_token', '52685ae1ef53b3e41cd078ce8c7f200c4a02ef4bb598a893578a4347352123c0', '[\"*\"]', NULL, NULL, '2026-02-26 16:46:18', '2026-02-26 16:46:18'),
(518, 'App\\Models\\User', 17, 'auth_token', '968a9e3d0cb5057ff5fa79b6bd8ae90cb95b0e637781d63665b647b4941db36e', '[\"*\"]', '2026-02-26 17:17:40', NULL, '2026-02-26 17:14:13', '2026-02-26 17:17:40'),
(519, 'App\\Models\\User', 32, 'auth_token', '863676ceb33edfac030c18e84404dd21714736bd6d92db7426bb123038a92353', '[\"*\"]', '2026-02-26 17:17:32', NULL, '2026-02-26 17:17:30', '2026-02-26 17:17:32'),
(520, 'App\\Models\\User', 17, 'auth_token', '982e200bc8ce1c2ad534ffeb07521ef3416cb7b6b82fe2b61a9f26d91891b6de', '[\"*\"]', '2026-02-26 17:18:59', NULL, '2026-02-26 17:18:25', '2026-02-26 17:18:59'),
(521, 'App\\Models\\User', 32, 'auth_token', '0dc87d0491df557403cab421699f0962653eb438d2d187a9135ab592286df30c', '[\"*\"]', '2026-02-26 17:18:40', NULL, '2026-02-26 17:18:39', '2026-02-26 17:18:40'),
(522, 'App\\Models\\User', 60, 'auth_token', 'a63996fb08c6663609ac3e774407bc01fee2a3a391d09bcd3bdd36fd2a5de228', '[\"*\"]', '2026-02-26 20:21:20', NULL, '2026-02-26 20:20:44', '2026-02-26 20:21:20'),
(523, 'App\\Models\\User', 60, 'auth_token', '5d53d61291b7ca3bd73a7dc679aedef07127224b4a36eed13eae97fe7f9728fd', '[\"*\"]', '2026-02-26 20:24:16', NULL, '2026-02-26 20:21:52', '2026-02-26 20:24:16'),
(524, 'App\\Models\\User', 60, 'auth_token', '4ddf54a10d863a1c5123451709ca2029c53a06335f738ce9745a20262103535a', '[\"*\"]', '2026-02-26 20:27:34', NULL, '2026-02-26 20:27:33', '2026-02-26 20:27:34'),
(525, 'App\\Models\\User', 63, 'auth_token', 'bd70bd9d98d8ba0435c4544326f9e363f3620e925fc65b1fd1a82227590292a6', '[\"*\"]', NULL, NULL, '2026-02-27 01:07:31', '2026-02-27 01:07:31'),
(526, 'App\\Models\\User', 17, 'auth_token', 'b1cc1416d17b5d9952d1a9a50a8df877721e2922b2417d95d0a122684329f14c', '[\"*\"]', '2026-02-27 01:18:28', NULL, '2026-02-27 01:18:06', '2026-02-27 01:18:28'),
(527, 'App\\Models\\User', 15, 'auth_token', '11543822067760021474b33b51ce02a23cd24fd0ceeeeb05cdcf7fbd547e4494', '[\"*\"]', '2026-02-27 02:54:44', NULL, '2026-02-27 02:53:45', '2026-02-27 02:54:44'),
(528, 'App\\Models\\User', 15, 'auth_token', 'b4f32316690eab3a2d5aa6b2dcac1a1f4f297cad93c3a3c5ef04faae35e9c7b1', '[\"*\"]', '2026-02-27 02:55:27', NULL, '2026-02-27 02:55:04', '2026-02-27 02:55:27'),
(529, 'App\\Models\\User', 15, 'auth_token', 'a7c8ab006e62dc252f4f70f5421fc3ef8fde0fe55dbe632b152624a3a5611c76', '[\"*\"]', '2026-02-27 15:25:58', NULL, '2026-02-27 12:26:50', '2026-02-27 15:25:58'),
(530, 'App\\Models\\User', 17, 'auth_token', '8ad324763efd5ae3b874da5d57875de4366173c0a538f7d6da0c2bae27fde0f3', '[\"*\"]', '2026-02-27 12:54:15', NULL, '2026-02-27 12:53:52', '2026-02-27 12:54:15'),
(531, 'App\\Models\\User', 64, 'auth_token', 'a5583ca4305812a309f7273216c994769c75438155f075d888522eb20a77afd8', '[\"*\"]', NULL, NULL, '2026-02-27 13:12:03', '2026-02-27 13:12:03'),
(532, 'App\\Models\\User', 65, 'auth_token', '970c37be07e86227c600b2aeaf36f9dd456ad8e27f93b269cb92ca1b10b4ef72', '[\"*\"]', NULL, NULL, '2026-02-27 13:19:07', '2026-02-27 13:19:07'),
(533, 'App\\Models\\User', 17, 'auth_token', '6587071f55b49ff38df47fb12dfd2474d5f16086b6ca2fde2f05b618a2c70aeb', '[\"*\"]', '2026-02-27 13:52:09', NULL, '2026-02-27 13:51:43', '2026-02-27 13:52:09'),
(534, 'App\\Models\\User', 17, 'auth_token', 'd2258e92c52f3212ff6b6b3ab3e01d063e3c240d9a5fab6e766bfe18e8af76b9', '[\"*\"]', '2026-02-27 13:53:33', NULL, '2026-02-27 13:53:08', '2026-02-27 13:53:33'),
(535, 'App\\Models\\User', 24, 'auth_token', 'b59eaf47c426a0f09ed2774cf6ba0782dad9474292c03919d09284297126d614', '[\"*\"]', NULL, NULL, '2026-02-27 14:16:54', '2026-02-27 14:16:54'),
(536, 'App\\Models\\User', 42, 'auth_token', '37206925264e03f7296cef666c9ee95bae2825b30c766c895ed0f39c9af0635e', '[\"*\"]', '2026-02-27 14:45:57', NULL, '2026-02-27 14:42:20', '2026-02-27 14:45:57'),
(537, 'App\\Models\\User', 15, 'auth_token', 'd1b41e5fcf0fd16aae56abfb9da83ed3d97dcb4d27e9da8263d05169f367ab16', '[\"*\"]', '2026-02-27 15:51:39', NULL, '2026-02-27 15:26:46', '2026-02-27 15:51:39'),
(539, 'App\\Models\\User', 66, 'auth_token', '479fd8a1f270fc169034787ea4605bb3d02740769c6c469de16fa92e63138d94', '[\"*\"]', NULL, NULL, '2026-02-27 15:59:02', '2026-02-27 15:59:02'),
(540, 'App\\Models\\User', 67, 'auth_token', '50bf077f4bd9cb1bb8a8ca61051e51654b17eeae4254fddbf39047e7eb65ca41', '[\"*\"]', NULL, NULL, '2026-02-27 16:13:17', '2026-02-27 16:13:17'),
(541, 'App\\Models\\User', 15, 'auth_token', '3404668302c7313e2f7388bcc4fabcad2c6605669c6207433398abc68a9cf137', '[\"*\"]', '2026-02-27 17:10:56', NULL, '2026-02-27 17:04:20', '2026-02-27 17:10:56'),
(542, 'App\\Models\\User', 64, 'auth_token', '822fc69963a808ed82febc2a3ed14c7c2bf8cd9ea48c7419047690fe258e9dba', '[\"*\"]', '2026-02-27 18:09:12', NULL, '2026-02-27 17:50:44', '2026-02-27 18:09:12'),
(543, 'App\\Models\\User', 64, 'auth_token', 'fcb942b1b2c0392568d287eeab82c774115384411bb1c6c2d9d17f15086ee698', '[\"*\"]', '2026-02-27 18:09:24', NULL, '2026-02-27 18:09:16', '2026-02-27 18:09:24'),
(544, 'App\\Models\\User', 68, 'auth_token', '91a89d0b8c460803faed15e628d9df8ea9ed1d644a48bcae2c648a1b7de97cdc', '[\"*\"]', NULL, NULL, '2026-02-27 18:32:32', '2026-02-27 18:32:32'),
(545, 'App\\Models\\User', 69, 'auth_token', 'b5156ba60227a4be498089357e1361bf335e6ecd05383486932c630bdaf53647', '[\"*\"]', NULL, NULL, '2026-02-27 20:20:50', '2026-02-27 20:20:50'),
(546, 'App\\Models\\User', 70, 'auth_token', '83d8b48016633e3f187d4f8767af5ee5555ccec8bedf63f08c84b1760452fa65', '[\"*\"]', NULL, NULL, '2026-02-27 20:30:37', '2026-02-27 20:30:37'),
(547, 'App\\Models\\User', 21, 'auth_token', 'f889e0f0c8349ea11213e60d59688a80b94c3e5e1fa7cc2cfd2dc0d93d5d42f8', '[\"*\"]', NULL, NULL, '2026-02-27 20:31:21', '2026-02-27 20:31:21'),
(548, 'App\\Models\\User', 17, 'auth_token', '0aadea64d815eba1c89cd59b285c02d28cb1e142e93307cb85b87839899f1a1f', '[\"*\"]', '2026-02-27 21:16:55', NULL, '2026-02-27 21:16:54', '2026-02-27 21:16:55'),
(549, 'App\\Models\\User', 17, 'auth_token', '62213d37ac50976c24fcf83513350f2a3131a06a2ab40be64b0bdba510eab183', '[\"*\"]', '2026-02-27 21:22:49', NULL, '2026-02-27 21:22:32', '2026-02-27 21:22:49'),
(550, 'App\\Models\\User', 39, 'auth_token', '7cc6cb524e3ecb8117890190555415a8414ac451f01c614e73b28a0f9f3bd667', '[\"*\"]', '2026-02-27 22:24:24', NULL, '2026-02-27 22:21:59', '2026-02-27 22:24:24'),
(551, 'App\\Models\\User', 15, 'auth_token', 'd5cd7e6e4fd768fedf3f6f245f8f2235db46374eec3b2b4361d3993c05ee1b91', '[\"*\"]', '2026-03-05 08:46:04', NULL, '2026-02-28 00:03:46', '2026-03-05 08:46:04'),
(552, 'App\\Models\\User', 17, 'auth_token', '69e2fa55fef3b72d14c04c6030397493f85a4c24cfc277c823fd2d8faf9f298f', '[\"*\"]', '2026-02-28 00:35:07', NULL, '2026-02-28 00:29:26', '2026-02-28 00:35:07'),
(553, 'App\\Models\\User', 17, 'auth_token', '5552edcc414d07e719167d7a6f2516fcecebd8baa9b54e5de23b078098b1fd51', '[\"*\"]', '2026-02-28 00:38:11', NULL, '2026-02-28 00:36:17', '2026-02-28 00:38:11'),
(554, 'App\\Models\\User', 17, 'auth_token', '7376af56b5628409f21ca30ad9f9413439a08050866f267b7d07931e8637db24', '[\"*\"]', '2026-02-28 00:38:27', NULL, '2026-02-28 00:38:26', '2026-02-28 00:38:27'),
(555, 'App\\Models\\User', 17, 'auth_token', 'f7e7a6b3860c3612b9a624338aaaf4e10148e7188b0051b44bc8b2b251510c26', '[\"*\"]', '2026-02-28 00:39:21', NULL, '2026-02-28 00:38:54', '2026-02-28 00:39:21'),
(556, 'App\\Models\\User', 17, 'auth_token', '77ef66a866820efa4839438ccbec28ac784d2964b6435b95d1e0b032caff20ba', '[\"*\"]', '2026-02-28 00:39:58', NULL, '2026-02-28 00:39:39', '2026-02-28 00:39:58'),
(557, 'App\\Models\\User', 17, 'auth_token', '68365d481c4e4a12c79b7ada9640eeb35cec7d7d1eacbef247db64b755d8814d', '[\"*\"]', '2026-02-28 00:42:54', NULL, '2026-02-28 00:40:11', '2026-02-28 00:42:54'),
(558, 'App\\Models\\User', 15, 'auth_token', '7ddb2871847ce8263743e5b68e73b64b4002c7151aafd5e498755289f6ea45b6', '[\"*\"]', '2026-02-28 17:52:31', NULL, '2026-02-28 00:42:54', '2026-02-28 17:52:31'),
(559, 'App\\Models\\User', 17, 'auth_token', '7e1d2c52f39f84467067606583b62e345076508efa74649e551fb57185a4ca90', '[\"*\"]', '2026-02-28 00:43:34', NULL, '2026-02-28 00:43:15', '2026-02-28 00:43:34'),
(560, 'App\\Models\\User', 17, 'auth_token', '99aec146f9e1be953837da7b91e007ff25a5cce9dcfda3eeaf4672ec5902f7d0', '[\"*\"]', '2026-02-28 00:43:52', NULL, '2026-02-28 00:43:50', '2026-02-28 00:43:52'),
(561, 'App\\Models\\User', 17, 'auth_token', '6288022af0f7e6bf1cd6e4ccdef025ad1492f190ca8f9c668869706157611103', '[\"*\"]', '2026-02-28 00:47:30', NULL, '2026-02-28 00:47:23', '2026-02-28 00:47:30'),
(562, 'App\\Models\\User', 17, 'auth_token', 'fb904d7d670950af8a77211eb7ab050b2d469cb6d80d9bfb346d4e20d4d69c2a', '[\"*\"]', '2026-02-28 00:49:08', NULL, '2026-02-28 00:49:07', '2026-02-28 00:49:08'),
(563, 'App\\Models\\User', 17, 'auth_token', 'affa237686fc2f98987ae0c81560d3067e39b9027f28b9cea91415ad3407338d', '[\"*\"]', '2026-02-28 00:50:25', NULL, '2026-02-28 00:49:35', '2026-02-28 00:50:25'),
(564, 'App\\Models\\User', 17, 'auth_token', 'cf7339f47d1c5f8e8a0319f7c673315fc6aa1d58a752ba865bd1c14c5deeb29f', '[\"*\"]', '2026-02-28 00:50:32', NULL, '2026-02-28 00:50:30', '2026-02-28 00:50:32'),
(565, 'App\\Models\\User', 17, 'auth_token', 'c73b4164d10f9c8b7126ea67978df5ba61f50782938a0bae950a5347889ec78e', '[\"*\"]', '2026-02-28 08:38:05', NULL, '2026-02-28 00:55:02', '2026-02-28 08:38:05');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(566, 'App\\Models\\User', 71, 'auth_token', 'a89ea0c41e3ad1ddfdcac4721921efd3dc8216d82bc0a431e074f0c7cb4e46b8', '[\"*\"]', NULL, NULL, '2026-02-28 01:21:34', '2026-02-28 01:21:34'),
(567, 'App\\Models\\User', 17, 'auth_token', 'f88cacb7783c2c3e5436fb2e12ee6c7fba6b3a54986cf3191f83ca03091d98e4', '[\"*\"]', '2026-02-28 08:39:24', NULL, '2026-02-28 08:38:22', '2026-02-28 08:39:24'),
(568, 'App\\Models\\User', 17, 'auth_token', '5187a2d15ad341b5aa01831f2c4b6fb1c425624c3c2366f97425167689957f53', '[\"*\"]', '2026-02-28 17:48:40', NULL, '2026-02-28 17:46:46', '2026-02-28 17:48:40'),
(569, 'App\\Models\\User', 17, 'auth_token', '89d6003df95c7b4c75ebae127086ddb36073884a39d7905e8731daf12ce848aa', '[\"*\"]', '2026-02-28 17:57:29', NULL, '2026-02-28 17:57:28', '2026-02-28 17:57:29'),
(570, 'App\\Models\\User', 36, 'auth_token', 'fa48bdc3995de210e2f705c4020031fc0c2524091a4bcb47f7a4cc93ecc2d241', '[\"*\"]', '2026-02-28 18:16:11', NULL, '2026-02-28 18:15:43', '2026-02-28 18:16:11'),
(571, 'App\\Models\\User', 72, 'auth_token', '4cffa9848f86484940345212909cce8841d8bb87e0487c4ec5dc70ef37c59519', '[\"*\"]', NULL, NULL, '2026-02-28 18:38:57', '2026-02-28 18:38:57'),
(572, 'App\\Models\\User', 73, 'auth_token', '35938a1f1f429f9f95ed0b9c1d868297881a1f37015f86b8ae5890c507b82ba5', '[\"*\"]', NULL, NULL, '2026-02-28 23:50:39', '2026-02-28 23:50:39'),
(573, 'App\\Models\\User', 74, 'auth_token', '3b6558066274302804199fbb05b50356037c3bc76d94a2c16ccb4a1ccc57ed14', '[\"*\"]', NULL, NULL, '2026-03-01 00:21:30', '2026-03-01 00:21:30'),
(574, 'App\\Models\\User', 75, 'auth_token', 'b0f401fcbe70ba80fc50b8f0f3cf7efee81d353a55427ab911bdf43ca06bd065', '[\"*\"]', NULL, NULL, '2026-03-01 01:24:52', '2026-03-01 01:24:52'),
(575, 'App\\Models\\User', 76, 'auth_token', 'a30e8c0eaec8a6145e3931b5eb40b276aee37c5ae055a481057ec62ed17d8a37', '[\"*\"]', NULL, NULL, '2026-03-01 16:31:52', '2026-03-01 16:31:52'),
(576, 'App\\Models\\User', 15, 'auth_token', 'ce3f2adb93e41ab4787a5f46835c6aaa3cebcc04a31dcb935893a98b4651e3b1', '[\"*\"]', '2026-03-01 16:34:22', NULL, '2026-03-01 16:33:56', '2026-03-01 16:34:22'),
(577, 'App\\Models\\User', 77, 'auth_token', '160d425aa4cfca587228fdb9ba8e9f24552702b16eb684426abc017b767564d1', '[\"*\"]', NULL, NULL, '2026-03-01 17:02:25', '2026-03-01 17:02:25'),
(578, 'App\\Models\\User', 17, 'auth_token', 'cc7fbdb921632d8a2878021383564cd4680d734f0dc08af9a769d2a704b4b7da', '[\"*\"]', '2026-03-01 17:38:33', NULL, '2026-03-01 17:37:22', '2026-03-01 17:38:33'),
(579, 'App\\Models\\User', 15, 'auth_token', 'dc16cb4520d4cbfca50a4832b6dabf8945a67be6a7711f92ff89055c311fed1d', '[\"*\"]', '2026-03-01 18:04:08', NULL, '2026-03-01 18:02:53', '2026-03-01 18:04:08'),
(580, 'App\\Models\\User', 15, 'auth_token', '73d87efd2461de195ac2977e841ee3f3baa3345f8181240245411fb2eca7b3b9', '[\"*\"]', '2026-03-01 18:18:43', NULL, '2026-03-01 18:04:25', '2026-03-01 18:18:43'),
(581, 'App\\Models\\User', 78, 'auth_token', '5dfd0f90c991787a6ec26a9931dd2aa06666f53a79f96bc7e77c42682846e0a6', '[\"*\"]', NULL, NULL, '2026-03-01 18:17:27', '2026-03-01 18:17:27'),
(582, 'App\\Models\\User', 15, 'auth_token', '9b1b01587c6705eab22e5155ad79b15ae006060882d2399205a2756b67ae2317', '[\"*\"]', NULL, NULL, '2026-03-01 18:19:30', '2026-03-01 18:19:30'),
(583, 'App\\Models\\User', 15, 'auth_token', 'cc252885abedcb92fd697c74a8b82eba876521c8c7231d0fbf5756d8761927d8', '[\"*\"]', NULL, NULL, '2026-03-01 18:19:35', '2026-03-01 18:19:35'),
(584, 'App\\Models\\User', 15, 'auth_token', '58365dce45980296e0c32e87cdead8646dd737ced80682d4cc3b0e980f790afb', '[\"*\"]', '2026-03-01 18:40:04', NULL, '2026-03-01 18:19:35', '2026-03-01 18:40:04'),
(585, 'App\\Models\\User', 78, 'auth_token', 'd1b1b9f17d4e016aeb9808b996313490a0d0612fa5c9c6261094f625179288c1', '[\"*\"]', '2026-03-01 18:23:21', NULL, '2026-03-01 18:23:18', '2026-03-01 18:23:21'),
(586, 'App\\Models\\User', 17, 'auth_token', 'd09d8d530ec67de06eb9eecfa718bc06263b4b5ab7a98102d712cddf57224bb8', '[\"*\"]', '2026-03-01 22:57:25', NULL, '2026-03-01 22:57:24', '2026-03-01 22:57:25'),
(587, 'App\\Models\\User', 79, 'auth_token', 'a5c998618bafc7cf5590afa890c807744c4a88202b65a34b56257b83e25ec72c', '[\"*\"]', NULL, NULL, '2026-03-02 02:03:32', '2026-03-02 02:03:32'),
(588, 'App\\Models\\User', 15, 'auth_token', 'e2edb3f97a93e13b7b34224af23cc3fd14243a25befd7e250c1561ad01fc7f43', '[\"*\"]', '2026-03-02 15:48:10', NULL, '2026-03-02 11:12:33', '2026-03-02 15:48:10'),
(589, 'App\\Models\\User', 15, 'auth_token', '5021bb74488295fe61637780c2df61c491f3f913dc21e02efc61ac597c9e4257', '[\"*\"]', '2026-03-02 12:44:04', NULL, '2026-03-02 12:34:58', '2026-03-02 12:44:04'),
(590, 'App\\Models\\User', 15, 'auth_token', 'ff0403665b406b8c10f9205f463dbee6daa5414ea3bc87f5731c69a44006aa2c', '[\"*\"]', '2026-03-02 15:04:41', NULL, '2026-03-02 13:21:15', '2026-03-02 15:04:41'),
(591, 'App\\Models\\User', 17, 'auth_token', '3191dc583d043ed4929ec308a0d1616683c340357dab361f91310aa7105973c2', '[\"*\"]', '2026-03-02 14:07:09', NULL, '2026-03-02 14:06:29', '2026-03-02 14:07:09'),
(592, 'App\\Models\\User', 33, 'auth_token', '25a13a8b134824657ee2808335169975833a9554aa6976a797517c117a0bc77b', '[\"*\"]', '2026-03-02 14:45:13', NULL, '2026-03-02 14:43:59', '2026-03-02 14:45:13'),
(593, 'App\\Models\\User', 15, 'auth_token', 'b1f3ef6b558c131b5ca9707b831876f3da68e834b9bf14edefcde5e905cf4780', '[\"*\"]', '2026-03-02 15:08:34', NULL, '2026-03-02 15:07:39', '2026-03-02 15:08:34'),
(594, 'App\\Models\\User', 15, 'auth_token', '84cbc6d787ae4a5f97b711c9289fdd28ad86c294cb02b17c34d0f2117c92db65', '[\"*\"]', '2026-03-02 15:18:20', NULL, '2026-03-02 15:18:09', '2026-03-02 15:18:20'),
(595, 'App\\Models\\User', 33, 'auth_token', '3443d9a91bea6d1cb718f21e0c0c4adc67bab7fcae0d079d8a350559eda4d534', '[\"*\"]', '2026-03-02 15:41:43', NULL, '2026-03-02 15:39:10', '2026-03-02 15:41:43'),
(596, 'App\\Models\\User', 33, 'auth_token', 'e5fc109fe12f0bcf6490e373df9650b27e661b3b1814598d7961b76bffced18c', '[\"*\"]', '2026-03-02 15:45:03', NULL, '2026-03-02 15:44:33', '2026-03-02 15:45:03'),
(597, 'App\\Models\\User', 15, 'auth_token', '120c653a95d53efb868abd33971324a56aad1434c84ec73fe46e664c96aacdd8', '[\"*\"]', '2026-03-02 15:56:55', NULL, '2026-03-02 15:45:57', '2026-03-02 15:56:55'),
(598, 'App\\Models\\User', 33, 'auth_token', '53693491c725dd74925b81fb69542503d9bedc20034583e7aae61a25b49c85ea', '[\"*\"]', '2026-03-02 15:52:44', NULL, '2026-03-02 15:52:43', '2026-03-02 15:52:44'),
(599, 'App\\Models\\User', 33, 'auth_token', 'c63d7db250a4c624c9030f2f33771023eced38032f599b2d3df957750eaa032d', '[\"*\"]', '2026-03-02 15:54:16', NULL, '2026-03-02 15:54:15', '2026-03-02 15:54:16'),
(600, 'App\\Models\\User', 15, 'auth_token', '34c2c17440208950fa74784130f160d5d053dbb68eaec4e7b222fcc4915ba9e4', '[\"*\"]', '2026-03-02 19:58:52', NULL, '2026-03-02 15:56:52', '2026-03-02 19:58:52'),
(601, 'App\\Models\\User', 33, 'auth_token', '8e195d9fc7a7693dc7824d27f9e2e9aa63e0917f03938d2d7f9f7ca224fb42e2', '[\"*\"]', '2026-03-02 15:58:23', NULL, '2026-03-02 15:58:22', '2026-03-02 15:58:23'),
(602, 'App\\Models\\User', 15, 'auth_token', 'f4cb4ef2b3e467d3bb337e40532ea8376522c267e2a9e41857b05996db79a266', '[\"*\"]', '2026-03-02 19:58:53', NULL, '2026-03-02 15:58:43', '2026-03-02 19:58:53'),
(603, 'App\\Models\\User', 17, 'auth_token', '454d62393d52704642bf96b3f071603c932b937b2561e79d891af9b5b19b2514', '[\"*\"]', '2026-03-02 16:35:57', NULL, '2026-03-02 16:35:56', '2026-03-02 16:35:57'),
(604, 'App\\Models\\User', 15, 'auth_token', 'ec48499d8b1cb1d727cf63323bd66fc758785e8d81738ba75814ab4a4783e9da', '[\"*\"]', '2026-03-02 19:58:55', NULL, '2026-03-02 19:58:54', '2026-03-02 19:58:55'),
(605, 'App\\Models\\User', 15, 'auth_token', '32db868e5d1dff97b6a9ad45cd9ce55efeb86d7b6a761e13a5b61352398dddad', '[\"*\"]', '2026-03-02 19:59:36', NULL, '2026-03-02 19:59:35', '2026-03-02 19:59:36'),
(606, 'App\\Models\\User', 15, 'auth_token', 'bc6d3555fef94da1f588a3d3b5d4267c967db797ee6b901d5c5751f0d7cb7807', '[\"*\"]', '2026-03-02 20:00:09', NULL, '2026-03-02 19:59:59', '2026-03-02 20:00:09'),
(607, 'App\\Models\\User', 15, 'auth_token', 'ba03a2cd59317b00bedcaa54b2d9f4737302fb5217d96e404ac6a88a3e731d37', '[\"*\"]', '2026-03-02 20:01:05', NULL, '2026-03-02 20:00:32', '2026-03-02 20:01:05'),
(608, 'App\\Models\\User', 15, 'auth_token', '7587812d409f9f905356c93b53ff9ae2fa72f0fe71ef1d5f93eaf40c0de1be4f', '[\"*\"]', '2026-03-03 09:27:49', NULL, '2026-03-02 20:54:39', '2026-03-03 09:27:49'),
(609, 'App\\Models\\User', 80, 'auth_token', '27280e6c85feaf30d9186f2c45a643ada3c13f4a2db52257a6f1fb103312372b', '[\"*\"]', NULL, NULL, '2026-03-02 21:47:49', '2026-03-02 21:47:49'),
(610, 'App\\Models\\User', 17, 'auth_token', 'bd66bb26bb6360c5fb71b58c83860501ccecd51cd3be2ac142e98869cd6d7a93', '[\"*\"]', '2026-03-02 22:38:35', NULL, '2026-03-02 22:37:35', '2026-03-02 22:38:35'),
(611, 'App\\Models\\User', 80, 'auth_token', '94e89692948b0043c3b516ce6456cf3b23f22fb4dca02fcb49f387397db63040', '[\"*\"]', '2026-03-02 22:39:55', NULL, '2026-03-02 22:39:31', '2026-03-02 22:39:55'),
(612, 'App\\Models\\User', 78, 'auth_token', 'e343c8f281a03ab77726d93989ccc1382f12e29e20056b3b38a34ff86f1ad218', '[\"*\"]', '2026-03-03 00:08:08', NULL, '2026-03-03 00:08:05', '2026-03-03 00:08:08'),
(613, 'App\\Models\\User', 53, 'auth_token', '2da800c83a3f89c4e220448c28222a13fa4282d271d18e5d054ee925e04065f8', '[\"*\"]', '2026-03-03 09:36:24', NULL, '2026-03-03 09:36:22', '2026-03-03 09:36:24'),
(614, 'App\\Models\\User', 53, 'auth_token', '52a92809db60762716f240d3940c26a1513358a6c79c9cd5d5a3321cf64b6c1e', '[\"*\"]', '2026-03-11 11:26:02', NULL, '2026-03-03 09:36:43', '2026-03-11 11:26:02'),
(615, 'App\\Models\\User', 15, 'auth_token', '8631182cfebae526f71d3a88f9d3961b81d4bb61e2591b660353e0719a74d284', '[\"*\"]', '2026-03-03 13:48:03', NULL, '2026-03-03 11:23:45', '2026-03-03 13:48:03'),
(616, 'App\\Models\\User', 81, 'auth_token', '485c3a598f0ca684dc8bf7c0893ce2f665515f3e20dab52136de598f6f99d258', '[\"*\"]', NULL, NULL, '2026-03-03 12:13:31', '2026-03-03 12:13:31'),
(617, 'App\\Models\\User', 17, 'auth_token', '935e769352e61bb7a4932f5531aa5dea8a8d6f0e15a57692b9c6f89dfff34bca', '[\"*\"]', '2026-03-03 12:16:28', NULL, '2026-03-03 12:16:14', '2026-03-03 12:16:28'),
(618, 'App\\Models\\User', 81, 'auth_token', '3a838621e36cebf4a14159ead52aa76b64dc883630bbf4ed0b1c68fa92f3b6f7', '[\"*\"]', '2026-03-03 12:24:53', NULL, '2026-03-03 12:20:22', '2026-03-03 12:24:53'),
(619, 'App\\Models\\User', 17, 'auth_token', '6ee84dfa8e4636c1a5cdd20b438bf55d968dd32ad7c24e2391ffab80a22746d7', '[\"*\"]', '2026-03-03 13:39:10', NULL, '2026-03-03 13:39:09', '2026-03-03 13:39:10'),
(620, 'App\\Models\\User', 17, 'auth_token', 'bb8c66d15f048dd752b646a580793a704f7efd9af0c4879e89e40d81f695a2c3', '[\"*\"]', '2026-03-03 13:49:37', NULL, '2026-03-03 13:41:32', '2026-03-03 13:49:37'),
(621, 'App\\Models\\User', 17, 'auth_token', '7dc0ae06c77143d1a274bfca6bffa52a68eb82426673efa864f2720e2f32e85b', '[\"*\"]', '2026-03-03 13:50:23', NULL, '2026-03-03 13:49:41', '2026-03-03 13:50:23'),
(622, 'App\\Models\\User', 15, 'auth_token', '6fee93bf3df7e642c81c3c7029677207246a268baaeec8d1afb4cccaf8c65a0a', '[\"*\"]', '2026-03-04 15:18:56', NULL, '2026-03-03 15:50:18', '2026-03-04 15:18:56'),
(623, 'App\\Models\\User', 82, 'auth_token', 'a3cd3c5fd4eab984a954e03c39dd7fdb78ca2d70c0752572cdcbf74b37e17b4a', '[\"*\"]', NULL, NULL, '2026-03-03 20:58:34', '2026-03-03 20:58:34'),
(624, 'App\\Models\\User', 83, 'auth_token', '7249a2224329327f7063411ce2660a84b4bdd777370b0bcaa68aa376574358df', '[\"*\"]', NULL, NULL, '2026-03-03 22:08:37', '2026-03-03 22:08:37'),
(625, 'App\\Models\\User', 45, 'auth_token', '05c7f81207e12c9f99c80c293d594728f406134df3190a2f339d7b369bf2a33f', '[\"*\"]', '2026-03-03 22:11:36', NULL, '2026-03-03 22:11:32', '2026-03-03 22:11:36'),
(626, 'App\\Models\\User', 45, 'auth_token', '69699732724276ba344934013f75990ae2248c145d32e99f441bccf1473cc966', '[\"*\"]', '2026-03-03 22:12:52', NULL, '2026-03-03 22:12:50', '2026-03-03 22:12:52'),
(627, 'App\\Models\\User', 84, 'auth_token', '92e74d9866925ac5862d338f198349dd4bdf6978c296c1c1417f699eff5b00a7', '[\"*\"]', NULL, NULL, '2026-03-03 22:19:15', '2026-03-03 22:19:15'),
(628, 'App\\Models\\User', 85, 'auth_token', '7ee20efd12f5f9cb5bbe04b7addf1fc4ff5c2827e7b9ff284bf13187ef697005', '[\"*\"]', NULL, NULL, '2026-03-03 22:38:39', '2026-03-03 22:38:39'),
(629, 'App\\Models\\User', 86, 'auth_token', '25171f7030f6292e0bdb00f890450c482937ccf0dbb8953533f1066ec3a68740', '[\"*\"]', NULL, NULL, '2026-03-03 23:34:35', '2026-03-03 23:34:35'),
(630, 'App\\Models\\User', 87, 'auth_token', 'fb3f3067b3b8a90fe2b2d3017693c5ecd9f374061cd3d193dec5b0b86dac8c01', '[\"*\"]', NULL, NULL, '2026-03-04 01:04:02', '2026-03-04 01:04:02'),
(631, 'App\\Models\\User', 17, 'auth_token', '3566789a23866eb05194231ee4f3cd8194cd923c2d242e014db9b2d144570b43', '[\"*\"]', NULL, NULL, '2026-03-04 01:25:14', '2026-03-04 01:25:14'),
(632, 'App\\Models\\User', 17, 'auth_token', 'a27768849a45799638109ff8cb8fafe097ea4490d159503341b6a5fc810bb157', '[\"*\"]', '2026-03-04 01:30:01', NULL, '2026-03-04 01:25:19', '2026-03-04 01:30:01'),
(633, 'App\\Models\\User', 17, 'auth_token', '3691419c28807461dd4fa5d62fde57acf3c1e61cd13cabb191fb9e0d87cdbf74', '[\"*\"]', '2026-03-04 11:20:48', NULL, '2026-03-04 11:20:21', '2026-03-04 11:20:48'),
(634, 'App\\Models\\User', 15, 'auth_token', '511300d3b5213c23e7188c1d651220a77a8a5e470dcb46b4a12f8af943a1a0cc', '[\"*\"]', '2026-03-04 14:12:24', NULL, '2026-03-04 14:12:11', '2026-03-04 14:12:24'),
(635, 'App\\Models\\User', 15, 'auth_token', '5314d6991dcf627918c3b6329d49d2ce57d9e3ae272865ee555d56ca084b9591', '[\"*\"]', '2026-03-04 14:12:49', NULL, '2026-03-04 14:12:22', '2026-03-04 14:12:49'),
(636, 'App\\Models\\User', 15, 'auth_token', '3f1c750d8a31c66e775875814e5e226b330cc89fc846646573e6ce5739c4319a', '[\"*\"]', '2026-03-04 14:13:22', NULL, '2026-03-04 14:13:16', '2026-03-04 14:13:22'),
(637, 'App\\Models\\User', 88, 'auth_token', '699676df605680fe488ee43d931865e399a50121f43e0efc67ffaecec07e892d', '[\"*\"]', NULL, NULL, '2026-03-04 14:27:17', '2026-03-04 14:27:17'),
(638, 'App\\Models\\User', 17, 'auth_token', '29ebdcf1e6459b71dafcf5027cb5133e51cdf8b89814509467407c687fb1849b', '[\"*\"]', '2026-03-04 14:52:58', NULL, '2026-03-04 14:51:14', '2026-03-04 14:52:58'),
(639, 'App\\Models\\User', 17, 'auth_token', 'cc68126f6e5c5712885881a52b006724db63b09b2809b963762cef8152c432b5', '[\"*\"]', '2026-03-04 15:34:03', NULL, '2026-03-04 15:34:02', '2026-03-04 15:34:03'),
(640, 'App\\Models\\User', 89, 'auth_token', '6eff0e59bdb052f04ef523b1a18c848e6ae8d122c13d9b464b997e6b9f8e6df6', '[\"*\"]', NULL, NULL, '2026-03-04 15:40:17', '2026-03-04 15:40:17'),
(642, 'App\\Models\\User', 90, 'auth_token', 'c82c4c2fd278de54b6a455f4ab6b013305b619c24ff268dd91d77d68729b223f', '[\"*\"]', NULL, NULL, '2026-03-04 18:00:11', '2026-03-04 18:00:11'),
(643, 'App\\Models\\User', 15, 'auth_token', 'd62957f35bae2ed1f1c27300f8254f0d4cf62509c5d33c0f32e581eb6ec0f80f', '[\"*\"]', '2026-03-05 10:31:02', NULL, '2026-03-05 10:30:32', '2026-03-05 10:31:02'),
(644, 'App\\Models\\User', 15, 'auth_token', '8182308c33a8e344df0dc204da2609d03cfe05beee2831af80b74ce48822a9c0', '[\"*\"]', '2026-03-05 10:32:03', NULL, '2026-03-05 10:31:32', '2026-03-05 10:32:03'),
(645, 'App\\Models\\User', 53, 'auth_token', 'e941aa82d9432eb3ea34a28a338819ac3fb86651e04ef6db205c4b92d1995d90', '[\"*\"]', '2026-03-05 17:18:19', NULL, '2026-03-05 17:18:01', '2026-03-05 17:18:19'),
(646, 'App\\Models\\User', 15, 'auth_token', 'bd349da28d4d6e99e57d1965e0721eec9acf4f67218efd7f2fc2fd0de9ebff9f', '[\"*\"]', '2026-03-05 18:07:41', NULL, '2026-03-05 17:20:28', '2026-03-05 18:07:41'),
(647, 'App\\Models\\User', 53, 'auth_token', '0e9f0ae3995533a44cb6cc2ecb281aca91f582316403df59a1bc8c91989808c4', '[\"*\"]', '2026-03-05 17:22:41', NULL, '2026-03-05 17:22:40', '2026-03-05 17:22:41'),
(648, 'App\\Models\\User', 15, 'auth_token', 'a7a1e9b1a6040743b34babdfce6c2bcc2cdce4b7e2d4a9cada7ff2ee44a89dbc', '[\"*\"]', '2026-03-05 17:28:36', NULL, '2026-03-05 17:23:36', '2026-03-05 17:28:36'),
(649, 'App\\Models\\User', 15, 'auth_token', 'd0b7e43e5bd5b0b77c2950e1c500fc31f2567b00a242b8abb8ba92dfc79b0394', '[\"*\"]', '2026-03-05 17:29:38', NULL, '2026-03-05 17:29:29', '2026-03-05 17:29:38'),
(650, 'App\\Models\\User', 53, 'auth_token', 'a41659df0054c7311fa4f673541cd6e0d59de8c01ec0426bac852acc5f7a74c0', '[\"*\"]', '2026-03-05 17:31:47', NULL, '2026-03-05 17:31:07', '2026-03-05 17:31:47'),
(651, 'App\\Models\\User', 15, 'auth_token', '237739e1c2d55610e157ad2360164bf3cbdb63355c1e21fc6c3484f77696af72', '[\"*\"]', '2026-03-05 17:32:45', NULL, '2026-03-05 17:32:16', '2026-03-05 17:32:45'),
(652, 'App\\Models\\User', 15, 'auth_token', '24611abc9108d29d01cb795909b12ebf96bd36251c0fc443bd068288bc4ee522', '[\"*\"]', '2026-03-05 17:33:25', NULL, '2026-03-05 17:33:11', '2026-03-05 17:33:25'),
(653, 'App\\Models\\User', 15, 'auth_token', '31dc366e87e0b14d29d288bbe088536eaee36c94208c9256b9035b26c4032f8c', '[\"*\"]', '2026-03-05 17:34:25', NULL, '2026-03-05 17:33:39', '2026-03-05 17:34:25'),
(654, 'App\\Models\\User', 15, 'auth_token', 'd042e8702c5cfc8b48f889156c1e32e5892d7e49fe9ee03877093f151b0984f9', '[\"*\"]', '2026-03-05 19:41:14', NULL, '2026-03-05 19:41:13', '2026-03-05 19:41:14'),
(655, 'App\\Models\\User', 15, 'auth_token', 'a94b5d6fc08afa599248ffa410440f42b2ccf819b98249e5822f0f3fda594c5f', '[\"*\"]', '2026-03-07 18:31:15', NULL, '2026-03-05 19:58:58', '2026-03-07 18:31:15'),
(656, 'App\\Models\\User', 53, 'auth_token', 'c5ed5b113a4ccaf7d47accae1c876aaa5612c8deb8c545d398d675e3a01c9eed', '[\"*\"]', '2026-03-06 16:30:58', NULL, '2026-03-06 16:28:46', '2026-03-06 16:30:58'),
(657, 'App\\Models\\User', 91, 'auth_token', 'c534a922593d9c79ef03ff84fa84dc3a7abe522b4bbae53c3ba3c79eeb84650a', '[\"*\"]', NULL, NULL, '2026-03-07 22:21:45', '2026-03-07 22:21:45'),
(658, 'App\\Models\\User', 92, 'auth_token', '518993ca182faea1b11e762c7e3c2370f3fcfa30b7cb548d53c2af2e4e4083f8', '[\"*\"]', NULL, NULL, '2026-03-08 17:15:00', '2026-03-08 17:15:00'),
(659, 'App\\Models\\User', 15, 'auth_token', 'd4f833215e98ffd4d492148db261177d1e830a6f47d054ede5c9852ab1b4885b', '[\"*\"]', '2026-03-09 10:47:58', NULL, '2026-03-08 17:16:11', '2026-03-09 10:47:58'),
(660, 'App\\Models\\User', 87, 'auth_token', '757a02d27d4973b5744120cd4976a30ad1e884d0a8f7f96d02499ed290cb1cc1', '[\"*\"]', '2026-03-08 21:50:38', NULL, '2026-03-08 21:50:36', '2026-03-08 21:50:38'),
(661, 'App\\Models\\User', 87, 'auth_token', '055f18d9b1b754108eaaf4f552f412d5bd44c24ba00986d1ec7371681c16f1c1', '[\"*\"]', '2026-03-08 21:57:59', NULL, '2026-03-08 21:57:58', '2026-03-08 21:57:59'),
(662, 'App\\Models\\User', 87, 'auth_token', '7fb9d9933b45443684fe71bb853c57dc5994aafac10b88c965c6d9f6f9c3df03', '[\"*\"]', '2026-03-08 21:58:26', NULL, '2026-03-08 21:58:25', '2026-03-08 21:58:26'),
(663, 'App\\Models\\User', 87, 'auth_token', '1685144f7ac8e4bc34e9a625ba68665028de1bf3e825cf86fa3a3d4319d04567', '[\"*\"]', '2026-03-08 21:58:55', NULL, '2026-03-08 21:58:54', '2026-03-08 21:58:55'),
(664, 'App\\Models\\User', 87, 'auth_token', '8bf0add605d00533fcb21d018d55491e7f8e39fe104abd55eeb4b6d09ea30ba3', '[\"*\"]', '2026-03-08 22:00:51', NULL, '2026-03-08 22:00:50', '2026-03-08 22:00:51'),
(665, 'App\\Models\\User', 87, 'auth_token', 'e08e0ef95db80c2a9c4e8914e1be6d1c545630ab8c5c343a29df2b7f35aa74ce', '[\"*\"]', '2026-03-08 22:07:14', NULL, '2026-03-08 22:07:13', '2026-03-08 22:07:14'),
(666, 'App\\Models\\User', 87, 'auth_token', 'b1eb497637dadf8cf0ea5710604d05d2817e9d80e66104f1c67801c48612ae2f', '[\"*\"]', '2026-03-08 22:11:11', NULL, '2026-03-08 22:11:10', '2026-03-08 22:11:11'),
(667, 'App\\Models\\User', 87, 'auth_token', '4f29e34bbc818320a52ac1e3547dbf772390a772b8406e65a254d04f2403e07c', '[\"*\"]', '2026-03-08 22:12:15', NULL, '2026-03-08 22:12:14', '2026-03-08 22:12:15'),
(668, 'App\\Models\\User', 87, 'auth_token', '2f7d6af9d03b046d72fd754099bf6918ec533e3cf288fed10529c94549ec7239', '[\"*\"]', '2026-03-08 22:13:09', NULL, '2026-03-08 22:13:08', '2026-03-08 22:13:09'),
(669, 'App\\Models\\User', 87, 'auth_token', '1a1a8121453ed66295cef888e004aa774869195990dbea7cc05a977b9d863eff', '[\"*\"]', '2026-03-08 22:14:52', NULL, '2026-03-08 22:14:50', '2026-03-08 22:14:52'),
(670, 'App\\Models\\User', 93, 'auth_token', 'ca761f3a57321d0618930ade907db59ebc62c3c15a0c628ca14e26f030eec1ca', '[\"*\"]', NULL, NULL, '2026-03-08 22:23:29', '2026-03-08 22:23:29'),
(671, 'App\\Models\\User', 15, 'auth_token', 'ec79c2f90dad4a9eb2acdf0c94e03e7004c1eb07987bbc35d788f33fabde264e', '[\"*\"]', '2026-03-08 23:50:48', NULL, '2026-03-08 23:50:27', '2026-03-08 23:50:48'),
(672, 'App\\Models\\User', 94, 'auth_token', '5c79408f681a2ab6a34257768c1c886a9aa93b9931409d3171f7e028f4ba22de', '[\"*\"]', NULL, NULL, '2026-03-09 00:03:46', '2026-03-09 00:03:46'),
(673, 'App\\Models\\User', 15, 'auth_token', 'c52507e1f543ae158587ce19cb90f862adfecd5ac011bf1d493ceeff737e2e21', '[\"*\"]', '2026-03-09 18:15:26', NULL, '2026-03-09 09:45:58', '2026-03-09 18:15:26'),
(674, 'App\\Models\\User', 53, 'auth_token', '9ed48842ab6d7408486b380ac1e92593aa3118b3485236600cb13050800acefc', '[\"*\"]', '2026-03-09 09:51:48', NULL, '2026-03-09 09:49:40', '2026-03-09 09:51:48'),
(675, 'App\\Models\\User', 15, 'auth_token', '2e9930e507f4f58efb282cff484c46a0065ab7aa6393102283db6d97d0ac9c20', '[\"*\"]', NULL, NULL, '2026-03-09 12:00:36', '2026-03-09 12:00:36'),
(676, 'App\\Models\\User', 15, 'auth_token', '84b2a9495b96ea218a84370104a0240a0b28b5d0b41175822db97df2941c5de1', '[\"*\"]', '2026-03-09 12:00:39', NULL, '2026-03-09 12:00:37', '2026-03-09 12:00:39'),
(677, 'App\\Models\\User', 95, 'auth_token', '3f8b6a23be7fef3b1eb5a54f588f94404e565825801822480850d0ae229fba53', '[\"*\"]', NULL, NULL, '2026-03-09 13:37:20', '2026-03-09 13:37:20'),
(678, 'App\\Models\\User', 96, 'auth_token', '9476912e31953a7ccde5b96d548b174c941084b7a5e5166c2141ac20213f43fc', '[\"*\"]', NULL, NULL, '2026-03-09 13:46:22', '2026-03-09 13:46:22'),
(679, 'App\\Models\\User', 97, 'auth_token', '4a7a76bf903dea68c4ee06ea95d67090ec167691626d30a481ca4f64280c3f34', '[\"*\"]', NULL, NULL, '2026-03-09 13:46:51', '2026-03-09 13:46:51'),
(680, 'App\\Models\\User', 98, 'auth_token', '8b963e31a7a78aafa805fd83171bf3b0da524b4f8836f613110fa2c390941c81', '[\"*\"]', NULL, NULL, '2026-03-09 13:49:58', '2026-03-09 13:49:58'),
(681, 'App\\Models\\User', 99, 'auth_token', 'd10ca568e94690212f75407aa2d162c783e16ee8d2210b7555c1942cd593fedc', '[\"*\"]', NULL, NULL, '2026-03-09 14:09:19', '2026-03-09 14:09:19'),
(682, 'App\\Models\\User', 17, 'auth_token', 'b65b034898c3770dd5a26b6fc8a7bb3dcebecbe68b2f76e90fc613fb059e346f', '[\"*\"]', '2026-03-09 14:17:41', NULL, '2026-03-09 14:15:34', '2026-03-09 14:17:41'),
(683, 'App\\Models\\User', 17, 'auth_token', 'cd3c50120f61e62dacc9eb38ccb4582955bbcf8e38024089185c0b73a0a0113c', '[\"*\"]', '2026-03-09 14:18:10', NULL, '2026-03-09 14:18:09', '2026-03-09 14:18:10'),
(684, 'App\\Models\\User', 17, 'auth_token', 'ca2c4537b2a3b6db967f1cf87c00b1513a0e8a31819f016c398723bdc694817e', '[\"*\"]', '2026-03-09 14:52:48', NULL, '2026-03-09 14:52:13', '2026-03-09 14:52:48'),
(685, 'App\\Models\\User', 100, 'auth_token', '1de58232826d37cb73a75b156aeabe274531f313ee10e232af43553a81de2281', '[\"*\"]', NULL, NULL, '2026-03-09 15:12:08', '2026-03-09 15:12:08'),
(686, 'App\\Models\\User', 101, 'auth_token', '05a7bf5005d1575b258f338e3c9b598267e06a5e43309c8ed8910f869989bce0', '[\"*\"]', NULL, NULL, '2026-03-09 15:14:04', '2026-03-09 15:14:04'),
(687, 'App\\Models\\User', 17, 'auth_token', '94ff00848ca3d099297ea0265c8382b686e063616bd8416a285a2d45b45cf6af', '[\"*\"]', '2026-03-09 15:23:29', NULL, '2026-03-09 15:23:28', '2026-03-09 15:23:29'),
(688, 'App\\Models\\User', 17, 'auth_token', '37e986bf57c11710028482b12ff7b437cda8be3a81f166cb5331b6723f64f6af', '[\"*\"]', '2026-03-09 15:40:08', NULL, '2026-03-09 15:32:02', '2026-03-09 15:40:08'),
(689, 'App\\Models\\User', 17, 'auth_token', 'd00eabe6a664aed659aa41202b2aeb47dd004ae99a787f5a84f4c0b48662a105', '[\"*\"]', '2026-03-09 17:25:18', NULL, '2026-03-09 17:25:17', '2026-03-09 17:25:18'),
(690, 'App\\Models\\User', 102, 'auth_token', '5ee36a0465306ef5d6bdc64e222bc107baf1e0b5b0fa1f256bab782522fff4e9', '[\"*\"]', NULL, NULL, '2026-03-09 17:33:49', '2026-03-09 17:33:49'),
(691, 'App\\Models\\User', 103, 'auth_token', 'eae8fd1489a06cdc384942862154d68801ef7576b89633527e5685825ac23b7f', '[\"*\"]', NULL, NULL, '2026-03-09 17:45:37', '2026-03-09 17:45:37'),
(692, 'App\\Models\\User', 15, 'auth_token', 'abc8b1f6976b53751a122da8936a3f676b50c3a0ad5e7d73dceed8ea94e7a614', '[\"*\"]', '2026-03-09 18:19:54', NULL, '2026-03-09 18:16:17', '2026-03-09 18:19:54'),
(693, 'App\\Models\\User', 15, 'auth_token', '0cbeb947dcfc9701a9f99722d02518f070fe7c937722c1575ec4f87095b2b305', '[\"*\"]', '2026-03-09 18:19:01', NULL, '2026-03-09 18:18:22', '2026-03-09 18:19:01'),
(694, 'App\\Models\\User', 17, 'auth_token', 'e322f285d8993852e269de85175cb1b79de91e7a613f58e1a9d44d007ce332ab', '[\"*\"]', '2026-03-09 18:19:15', NULL, '2026-03-09 18:19:03', '2026-03-09 18:19:15'),
(696, 'App\\Models\\User', 15, 'auth_token', '9959ad8aedcf9fd6eb309bfff357b493956bd2514f820d37012d7d86151a1c29', '[\"*\"]', '2026-03-09 18:58:18', NULL, '2026-03-09 18:57:58', '2026-03-09 18:58:18'),
(697, 'App\\Models\\User', 17, 'auth_token', 'e87c7365273bbf404e68ea62df323da2b9944974c611c050eb3f6a930138e86c', '[\"*\"]', '2026-03-09 19:29:56', NULL, '2026-03-09 19:21:09', '2026-03-09 19:29:56'),
(698, 'App\\Models\\User', 103, 'auth_token', 'a3773ec089b99d7beea98e947e6b340ac5109d9f4a0f033e183b2395578fd3cc', '[\"*\"]', '2026-03-09 19:58:42', NULL, '2026-03-09 19:58:38', '2026-03-09 19:58:42'),
(699, 'App\\Models\\User', 104, 'auth_token', '39da018f27fc2e108d49c3ff0da2d6457f009ba0212981ba709c97fc70dce37a', '[\"*\"]', NULL, NULL, '2026-03-09 20:00:53', '2026-03-09 20:00:53'),
(700, 'App\\Models\\User', 15, 'auth_token', '2a2cfdcadd8bf563fd501a4819175f0cfc24fca2414a0e002917d5f2da6f8788', '[\"*\"]', '2026-03-09 20:11:50', NULL, '2026-03-09 20:11:02', '2026-03-09 20:11:50'),
(701, 'App\\Models\\User', 105, 'auth_token', '28fcfb543fb456b0c3a0f57a110ee1665e16997dba98a9911b035d6ea531c797', '[\"*\"]', NULL, NULL, '2026-03-09 20:12:03', '2026-03-09 20:12:03'),
(702, 'App\\Models\\User', 106, 'auth_token', '5666a0a17e55947ca2078c22ad3ac2b568377281032d6e972def324e5244aff9', '[\"*\"]', NULL, NULL, '2026-03-09 20:14:07', '2026-03-09 20:14:07'),
(703, 'App\\Models\\User', 107, 'auth_token', 'df08d590026b0ef586f61f0a5e193fdd7b1861fbf271a194a15e9ced75d68e2f', '[\"*\"]', NULL, NULL, '2026-03-09 20:15:18', '2026-03-09 20:15:18'),
(704, 'App\\Models\\User', 108, 'auth_token', 'f6fbc01db0a8ec59f34563a6ffb3cb7cac80c1814887201648a0ac6d5ce7518e', '[\"*\"]', NULL, NULL, '2026-03-09 20:21:14', '2026-03-09 20:21:14'),
(705, 'App\\Models\\User', 109, 'auth_token', '3400f0f1e20406e58567148518bc128a313991fde0268ccba2c9c2041074e3d5', '[\"*\"]', NULL, NULL, '2026-03-09 20:29:46', '2026-03-09 20:29:46'),
(706, 'App\\Models\\User', 91, 'auth_token', '5f58aa902301db83ca3c9b45c82e502ccc7075e19363d0aca145aaa99b32e141', '[\"*\"]', '2026-03-09 20:30:45', NULL, '2026-03-09 20:30:41', '2026-03-09 20:30:45'),
(707, 'App\\Models\\User', 110, 'auth_token', 'bf8d052b86035bba33d4fd41c7faaadeac346c8c11844d942ab7c92918ca8a8d', '[\"*\"]', NULL, NULL, '2026-03-09 20:31:29', '2026-03-09 20:31:29'),
(708, 'App\\Models\\User', 111, 'auth_token', '776d3e42bdf267357565f30fff63cb272f120a765c5026ff1fd3bce1a7d8006d', '[\"*\"]', NULL, NULL, '2026-03-09 20:33:12', '2026-03-09 20:33:12'),
(709, 'App\\Models\\User', 15, 'auth_token', '3764f0ee2ed5f6595fd39dc3e90f711bae7a9b0ead8cc86188e2bf1558860a42', '[\"*\"]', '2026-03-09 20:52:23', NULL, '2026-03-09 20:33:29', '2026-03-09 20:52:23'),
(710, 'App\\Models\\User', 15, 'auth_token', '8cc1b7cf8cd7f2f088f251498081e6d3076d17a7f695ce4c772de49eb13f0a3e', '[\"*\"]', '2026-03-09 20:37:18', NULL, '2026-03-09 20:37:16', '2026-03-09 20:37:18'),
(711, 'App\\Models\\User', 112, 'auth_token', '2202dbafb0d0fa6a252058bf99116aca2198302c4bbdb2f41d8cd8625281c835', '[\"*\"]', NULL, NULL, '2026-03-09 20:48:28', '2026-03-09 20:48:28'),
(712, 'App\\Models\\User', 15, 'auth_token', 'e8e2dae5e392f7ab635213ad14ab43045fa60ffddfdc77a1ad81094624f50d2f', '[\"*\"]', '2026-03-09 20:52:14', NULL, '2026-03-09 20:48:45', '2026-03-09 20:52:14'),
(713, 'App\\Models\\User', 113, 'auth_token', 'f45b06f609267e2072c62316711915e8817052244ca09f655b48090a1511e1da', '[\"*\"]', NULL, NULL, '2026-03-09 20:50:07', '2026-03-09 20:50:07'),
(714, 'App\\Models\\User', 15, 'auth_token', '479556e2ef52eb076859882526b6213dd2453a11a523554765ae2d7d0577a236', '[\"*\"]', '2026-03-09 21:41:09', NULL, '2026-03-09 20:55:02', '2026-03-09 21:41:09'),
(715, 'App\\Models\\User', 15, 'auth_token', '7f02a94b3916756f7a523289df103014c524594ecda22bc94554643994c58f0a', '[\"*\"]', '2026-03-11 00:13:04', NULL, '2026-03-09 20:59:59', '2026-03-11 00:13:04'),
(716, 'App\\Models\\User', 15, 'auth_token', '8ffb1ebb010cc191c2ff7fe10a14f5164625098d8a14c93b0728cbbdae878762', '[\"*\"]', '2026-03-09 23:38:34', NULL, '2026-03-09 21:06:05', '2026-03-09 23:38:34'),
(717, 'App\\Models\\User', 17, 'auth_token', '3e6b208dbda479328c80723ed6c9da693985c0eaedfc32d7534bbbd7b3f62972', '[\"*\"]', '2026-03-09 21:07:24', NULL, '2026-03-09 21:07:22', '2026-03-09 21:07:24'),
(718, 'App\\Models\\User', 17, 'auth_token', '6d5d49e95076afba0a073cf12e85fc76bb4846e7275d1d61d8586e4f2f1145ad', '[\"*\"]', '2026-03-09 21:08:34', NULL, '2026-03-09 21:08:32', '2026-03-09 21:08:34'),
(719, 'App\\Models\\User', 114, 'auth_token', '9b466c4e44bd0dc304a0c6eeb46f02b813f71c204a3748549ebd9f096eeee460', '[\"*\"]', NULL, NULL, '2026-03-09 21:24:18', '2026-03-09 21:24:18'),
(720, 'App\\Models\\User', 115, 'auth_token', '24ff9108c3576a386264935168370e7c98ca1b04a38d9059195811b8341c0972', '[\"*\"]', NULL, NULL, '2026-03-09 21:24:40', '2026-03-09 21:24:40'),
(721, 'App\\Models\\User', 17, 'auth_token', '249cc8612ade4257530b6fd57a3be974103ed7dead267bc1ac3491f855d543f7', '[\"*\"]', '2026-03-09 21:28:18', NULL, '2026-03-09 21:28:17', '2026-03-09 21:28:18'),
(722, 'App\\Models\\User', 116, 'auth_token', 'a1c8581bdbb02710d712db5cf1bdecf70240162d4cb7ea3db31b0485dfe49c2a', '[\"*\"]', NULL, NULL, '2026-03-09 21:29:09', '2026-03-09 21:29:09'),
(723, 'App\\Models\\User', 117, 'auth_token', '13dff238eba6f33f117ce3e4db55969572db8f36a95f086450bbd59f5bc367db', '[\"*\"]', NULL, NULL, '2026-03-09 21:31:21', '2026-03-09 21:31:21'),
(724, 'App\\Models\\User', 81, 'auth_token', '838342348cb29f51577d5fec371bc8be3803ec1ea652cb4f3ab923cfef6c0195', '[\"*\"]', '2026-03-09 21:37:18', NULL, '2026-03-09 21:33:20', '2026-03-09 21:37:18'),
(725, 'App\\Models\\User', 80, 'auth_token', 'dfe2c457791faf590ee9bbcc29e11121f94b786dfa0e4252f8ec013957489812', '[\"*\"]', '2026-03-09 21:35:19', NULL, '2026-03-09 21:33:29', '2026-03-09 21:35:19'),
(726, 'App\\Models\\User', 15, 'auth_token', 'e7e9aa4bd6dd0d473cf6280a5f92c0eba262bdac768e497315a223e804210db4', '[\"*\"]', '2026-03-09 21:35:31', NULL, '2026-03-09 21:35:28', '2026-03-09 21:35:31'),
(727, 'App\\Models\\User', 15, 'auth_token', 'b7de6fe9bf22ee7fa22f9a5dad42cb8e9823fa2fd053727b6f10cf47dfea9b37', '[\"*\"]', '2026-03-09 21:44:36', NULL, '2026-03-09 21:41:56', '2026-03-09 21:44:36'),
(728, 'App\\Models\\User', 118, 'auth_token', 'e02ad7f1250e05cea35b940190729cb0344e93f568af1482ed9811c4930c28cc', '[\"*\"]', NULL, NULL, '2026-03-09 21:45:05', '2026-03-09 21:45:05'),
(729, 'App\\Models\\User', 119, 'auth_token', 'd2eeb04deea8b2957998e1cd3597b0c2fd30335c5c218465e514a611d59867ce', '[\"*\"]', NULL, NULL, '2026-03-09 21:55:06', '2026-03-09 21:55:06'),
(730, 'App\\Models\\User', 120, 'auth_token', '8285dfbccc2181fb3a55b1065c20cc2a25f8c273c3e1720e731be7458cb3c95f', '[\"*\"]', NULL, NULL, '2026-03-09 21:55:23', '2026-03-09 21:55:23'),
(731, 'App\\Models\\User', 121, 'auth_token', '97bbb6751701d203b7aa875a290d1b85a73ae2d7c0a142a448b95ff8820881cc', '[\"*\"]', NULL, NULL, '2026-03-09 22:03:30', '2026-03-09 22:03:30'),
(732, 'App\\Models\\User', 122, 'auth_token', '211d8f540053e4ff220ff7a70ad2ec6842f0da6ce905e8009291ad2885230534', '[\"*\"]', NULL, NULL, '2026-03-09 22:33:39', '2026-03-09 22:33:39'),
(733, 'App\\Models\\User', 101, 'auth_token', '35abb88a091cd5776dd2b2800d7ac152440eaa9df4212b33e9fd01177feaf095', '[\"*\"]', NULL, NULL, '2026-03-09 22:45:53', '2026-03-09 22:45:53'),
(734, 'App\\Models\\User', 123, 'auth_token', '4694e56fa5e6bccf1540793de58ce88a5930344a7c13d10452280b7272c20b2a', '[\"*\"]', NULL, NULL, '2026-03-09 22:48:26', '2026-03-09 22:48:26'),
(735, 'App\\Models\\User', 124, 'auth_token', '198069938c14bd090c0fa369eb47ae1d6a89d2fc5633c5304fa0384fcd6ad564', '[\"*\"]', NULL, NULL, '2026-03-09 22:48:52', '2026-03-09 22:48:52'),
(736, 'App\\Models\\User', 125, 'auth_token', '986fac151a547d968ee0de05215c63e62a24292aeea1ee197e2e7bdb85d904e3', '[\"*\"]', NULL, NULL, '2026-03-09 22:53:54', '2026-03-09 22:53:54'),
(737, 'App\\Models\\User', 17, 'auth_token', '54c0a31601506d670e84bec0283b2575c95e7f5e4154c6496b8d82b5b17c84a5', '[\"*\"]', '2026-03-09 22:59:48', NULL, '2026-03-09 22:59:47', '2026-03-09 22:59:48'),
(738, 'App\\Models\\User', 17, 'auth_token', '48dabe3372fdf7b756efcae6a1d3511e3fb5450da4fbef88f67c1fc4db787993', '[\"*\"]', '2026-03-09 23:08:24', NULL, '2026-03-09 22:59:59', '2026-03-09 23:08:24'),
(739, 'App\\Models\\User', 126, 'auth_token', '554a096a1dcf9e4d7589300bf3ca5778b53273abb3aef48c3e3871d8b93e098d', '[\"*\"]', NULL, NULL, '2026-03-09 23:41:50', '2026-03-09 23:41:50'),
(740, 'App\\Models\\User', 127, 'auth_token', '7a0b0f6bb15fdde67e16df856b07b275444f9dca77daac9920f278e7aeee4f31', '[\"*\"]', NULL, NULL, '2026-03-10 00:08:53', '2026-03-10 00:08:53'),
(741, 'App\\Models\\User', 128, 'auth_token', '6bf2aeb3da218d38e03c374fb3936a2c68850ef1516f00b8fd34a1103a2bc5c2', '[\"*\"]', NULL, NULL, '2026-03-10 00:43:03', '2026-03-10 00:43:03'),
(742, 'App\\Models\\User', 47, 'auth_token', 'd760426a372e08b417ea286da6b918c067bb5bf819c00acc39fde61f46af2447', '[\"*\"]', '2026-03-10 02:10:20', NULL, '2026-03-10 02:09:18', '2026-03-10 02:10:20'),
(743, 'App\\Models\\User', 15, 'auth_token', '0edf7b4d9029d297bf42292c25364ab5d18f5da0f85bc49b69a3f131ecbe0f5e', '[\"*\"]', '2026-03-11 16:57:41', NULL, '2026-03-10 07:40:31', '2026-03-11 16:57:41'),
(744, 'App\\Models\\User', 15, 'auth_token', '94ad7af90e7b62334cd3589ff46b00e84e9f2152a0b170ad213d9e0133113e5b', '[\"*\"]', '2026-03-10 08:29:35', NULL, '2026-03-10 08:05:40', '2026-03-10 08:29:35'),
(745, 'App\\Models\\User', 129, 'auth_token', '093a418a1c92c12934b33747ff9a8d7305b18fb5308a835b851f64a873e0a3f8', '[\"*\"]', NULL, NULL, '2026-03-10 08:21:00', '2026-03-10 08:21:00'),
(746, 'App\\Models\\User', 130, 'auth_token', '7e584584f3ddbc1148cd69b9cc64812569085138b6d870170c6232aca164a920', '[\"*\"]', NULL, NULL, '2026-03-10 08:22:02', '2026-03-10 08:22:02'),
(747, 'App\\Models\\User', 87, 'auth_token', '6f79f7f3082e0a1209d6d9b99d7487c7c2f956ac1860460dc8c37011de09a3f1', '[\"*\"]', '2026-03-10 08:44:43', NULL, '2026-03-10 08:44:40', '2026-03-10 08:44:43'),
(748, 'App\\Models\\User', 26, 'auth_token', 'b1848f3d669f77752aad24f275046f24a35372e4d8d88950f6baf07bd67b6971', '[\"*\"]', '2026-03-10 08:56:04', NULL, '2026-03-10 08:54:11', '2026-03-10 08:56:04'),
(749, 'App\\Models\\User', 114, 'auth_token', '00582627adb631f614ae88ed5a46fa9f0bfdd9b176967977cc3dbec8770bbafa', '[\"*\"]', '2026-03-10 09:03:17', NULL, '2026-03-10 08:55:21', '2026-03-10 09:03:17'),
(750, 'App\\Models\\User', 15, 'auth_token', 'ee1b481193fc555a3e4b9527c35fcd04a1c57dcc92f0e57681774d67585ccb4a', '[\"*\"]', '2026-03-10 10:21:46', NULL, '2026-03-10 09:11:07', '2026-03-10 10:21:46'),
(751, 'App\\Models\\User', 131, 'auth_token', '72dbe5c6b9bd68a1cb6d8953226af03930848bb9a72a4c3d917eee043ccfd9d1', '[\"*\"]', NULL, NULL, '2026-03-10 09:22:30', '2026-03-10 09:22:30'),
(752, 'App\\Models\\User', 132, 'auth_token', '9004b4bb2bc0f30f9241af340527cfdfb95c3693f35484df3c2696b9ff3dc641', '[\"*\"]', NULL, NULL, '2026-03-10 09:54:20', '2026-03-10 09:54:20'),
(753, 'App\\Models\\User', 23, 'auth_token', '4d74fa38a5e464a48c6b47d7fa05823aeea5c9b7f537e6dec0755a7a6e81d12e', '[\"*\"]', '2026-03-23 11:49:01', NULL, '2026-03-10 09:57:09', '2026-03-23 11:49:01'),
(754, 'App\\Models\\User', 15, 'auth_token', '7b5d99ea599e88e6404a9c16979e29734e371f547dac7c3f37d1c29e4fe2a184', '[\"*\"]', '2026-03-10 10:03:05', NULL, '2026-03-10 10:01:58', '2026-03-10 10:03:05'),
(755, 'App\\Models\\User', 17, 'auth_token', '04c569f1a1d4e59a391218196e38144c0b072b3a417c235a777c81c8e8da5993', '[\"*\"]', '2026-03-10 10:20:23', NULL, '2026-03-10 10:15:22', '2026-03-10 10:20:23'),
(756, 'App\\Models\\User', 133, 'auth_token', 'e2c29121af6cc59650665c4829882aaadd5fccf9bb73a83a52f533d294d0ca83', '[\"*\"]', NULL, NULL, '2026-03-10 10:24:37', '2026-03-10 10:24:37'),
(757, 'App\\Models\\User', 134, 'auth_token', '266a0dd869cae565eb9f6ce06bed81e263a1e7565eff1774368f5cefa8c8f7a6', '[\"*\"]', NULL, NULL, '2026-03-10 10:28:26', '2026-03-10 10:28:26'),
(758, 'App\\Models\\User', 17, 'auth_token', 'cc39f5f594f31c83f4ece27f02b2602588bb0e4004e3128bd04c3d597fa39048', '[\"*\"]', '2026-03-10 11:08:18', NULL, '2026-03-10 10:33:16', '2026-03-10 11:08:18'),
(759, 'App\\Models\\User', 135, 'auth_token', 'bece4c411f3bc7fb1ea5e1883d3125278574d66bf4f2537e0b43e3cdb22bb8d3', '[\"*\"]', NULL, NULL, '2026-03-10 10:36:15', '2026-03-10 10:36:15'),
(760, 'App\\Models\\User', 15, 'auth_token', '30741afdf9c7d2e86d7c5c878a6c1ab9f7ce69282701e6b672488ff703992e8b', '[\"*\"]', '2026-03-10 14:32:00', NULL, '2026-03-10 10:48:35', '2026-03-10 14:32:00'),
(761, 'App\\Models\\User', 17, 'auth_token', '39e5ce36deb311dbfe80c8b5de74356124b64632e2e2ba470792b8c587a5dcb1', '[\"*\"]', '2026-03-10 11:10:50', NULL, '2026-03-10 11:10:49', '2026-03-10 11:10:50'),
(762, 'App\\Models\\User', 136, 'auth_token', '63148d975bfcb6eb115054b1bf6f0be2c1e46e1dcda5141ac6797ae17fdd8033', '[\"*\"]', NULL, NULL, '2026-03-10 11:13:46', '2026-03-10 11:13:46'),
(763, 'App\\Models\\User', 137, 'auth_token', 'bfc67cda4a3e69f9dbd009727559bef9327bf6592b8e2590488b3e852fa610ed', '[\"*\"]', NULL, NULL, '2026-03-10 11:42:36', '2026-03-10 11:42:36'),
(764, 'App\\Models\\User', 138, 'auth_token', 'b30eb710f4f82e3f3d5b5f0f08b5af251d831ed9a66f431ddb5a7275411f3130', '[\"*\"]', NULL, NULL, '2026-03-10 11:54:45', '2026-03-10 11:54:45'),
(765, 'App\\Models\\User', 17, 'auth_token', 'f9e89256ae636076a187ffbb669f50e774e883364a7c73b54a28e1d715e72382', '[\"*\"]', '2026-03-10 11:59:57', NULL, '2026-03-10 11:58:58', '2026-03-10 11:59:57'),
(766, 'App\\Models\\User', 133, 'auth_token', '3d8b03a8f658292f85f976a306b891564c3f69e38fad601d0e7faa1df84791b1', '[\"*\"]', '2026-03-10 12:08:00', NULL, '2026-03-10 12:07:56', '2026-03-10 12:08:00'),
(767, 'App\\Models\\User', 139, 'auth_token', '4488643db1021d5c8db5cd49ca13bd83f11570d7d5b5f84efbae92dc9a428bc5', '[\"*\"]', NULL, NULL, '2026-03-10 12:09:59', '2026-03-10 12:09:59'),
(768, 'App\\Models\\User', 17, 'auth_token', 'ff0a76796064b0c6b940ffda0f36d53165c6eb5cc5f5bc55eaa62c19d16b1374', '[\"*\"]', '2026-03-10 12:20:34', NULL, '2026-03-10 12:12:21', '2026-03-10 12:20:34'),
(769, 'App\\Models\\User', 17, 'auth_token', '8c5538ec7e6a92374cacabe943b48d24963338fe0559e19157c5b52913e20857', '[\"*\"]', '2026-03-10 12:26:33', NULL, '2026-03-10 12:21:21', '2026-03-10 12:26:33'),
(770, 'App\\Models\\User', 17, 'auth_token', '7663c09b8160f33ce4b67a1910d3a9ca4f28c029e1d173eedcc107fccc6743ce', '[\"*\"]', '2026-03-10 12:42:29', NULL, '2026-03-10 12:27:15', '2026-03-10 12:42:29'),
(771, 'App\\Models\\User', 15, 'auth_token', 'd57932ae70400dd722cff8a644bce5cc7465fd190d7e32c0d0171421b1d826e6', '[\"*\"]', '2026-03-10 12:45:24', NULL, '2026-03-10 12:45:22', '2026-03-10 12:45:24'),
(772, 'App\\Models\\User', 15, 'auth_token', 'cc89c7cb35ed077d78abc403679fe27adfc90851a4c3b7df106e0b3809c93588', '[\"*\"]', '2026-03-10 12:49:41', NULL, '2026-03-10 12:49:40', '2026-03-10 12:49:41'),
(773, 'App\\Models\\User', 140, 'auth_token', '226a6ae639a1cb7ee8bb6eaf494bbbe9c9178d7c754758dcc9d85d362bf90d18', '[\"*\"]', NULL, NULL, '2026-03-10 13:16:55', '2026-03-10 13:16:55'),
(774, 'App\\Models\\User', 15, 'auth_token', 'f299db102e684ffecd4e0f7e77170665cbd685c8a33578285efe240a9da8fdf0', '[\"*\"]', '2026-03-10 13:46:13', NULL, '2026-03-10 13:35:02', '2026-03-10 13:46:13'),
(775, 'App\\Models\\User', 15, 'auth_token', 'b19b8775a7a22859ffa0655f8c309132d0e630babf63f750325591db2181def7', '[\"*\"]', '2026-03-10 14:51:43', NULL, '2026-03-10 13:56:51', '2026-03-10 14:51:43'),
(776, 'App\\Models\\User', 128, 'auth_token', '258e8a9fadf250806285ac1c4446140234bd90832ccdec1891bbe4071a9c99ab', '[\"*\"]', '2026-03-11 22:20:34', NULL, '2026-03-10 13:57:24', '2026-03-11 22:20:34'),
(777, 'App\\Models\\User', 141, 'auth_token', '988047678049e2d4e2b274fc0879056cda4fdab51fcb92a73fbd62657fba909f', '[\"*\"]', NULL, NULL, '2026-03-10 14:03:55', '2026-03-10 14:03:55'),
(778, 'App\\Models\\User', 15, 'auth_token', 'c08136d0e0219696885dfe37496a68cb0a8bd8f40e08778aa6a17f8faeaca2be', '[\"*\"]', NULL, NULL, '2026-03-10 14:19:15', '2026-03-10 14:19:15'),
(779, 'App\\Models\\User', 15, 'auth_token', '4385e2fde23a486485367bd1a9192b418d29139330d7ab9711ddca369a88d537', '[\"*\"]', NULL, NULL, '2026-03-10 14:22:19', '2026-03-10 14:22:19'),
(781, 'App\\Models\\User', 142, 'auth_token', '02b6117358784fa3106782d33699186189cf9048a707e43ce0726072172e8c72', '[\"*\"]', NULL, NULL, '2026-03-10 14:28:15', '2026-03-10 14:28:15'),
(782, 'App\\Models\\User', 15, 'auth_token', '3545348245f5ea2bb12c2ce5eb15d13b02636ea34d2f81b1c18715bac4841e52', '[\"*\"]', '2026-03-10 14:44:38', NULL, '2026-03-10 14:28:22', '2026-03-10 14:44:38'),
(783, 'App\\Models\\User', 118, 'auth_token', '2cfd2e09b95e72ae90688940dcc985ba0c6091c07bb4777faebe00cd5f610993', '[\"*\"]', '2026-03-10 14:32:52', NULL, '2026-03-10 14:32:31', '2026-03-10 14:32:52'),
(784, 'App\\Models\\User', 118, 'auth_token', 'e8549ed5bf66aa400cb69296ef96766012f53f44a7b38821813f57251def8c00', '[\"*\"]', '2026-03-10 14:35:45', NULL, '2026-03-10 14:34:02', '2026-03-10 14:35:45'),
(785, 'App\\Models\\User', 15, 'auth_token', '71d4a2e3172eb3826fc16787177ae78c9e4647de9e17878d8b21fd04f9e8667b', '[\"*\"]', '2026-03-10 14:35:24', NULL, '2026-03-10 14:35:22', '2026-03-10 14:35:24'),
(786, 'App\\Models\\User', 118, 'auth_token', '944adbf45f63912fcd1dbe2a30d39af2241a18a24be632010882e9a8b923a3e9', '[\"*\"]', '2026-03-10 14:36:32', NULL, '2026-03-10 14:36:31', '2026-03-10 14:36:32'),
(787, 'App\\Models\\User', 143, 'auth_token', '49e68244ad94c2a636f09815465d053784f6478c7d665374b50711e35a62c5c8', '[\"*\"]', NULL, NULL, '2026-03-10 14:40:05', '2026-03-10 14:40:05'),
(788, 'App\\Models\\User', 144, 'auth_token', '0d486967a03bf454e72c3459d71e4f949daecfff1b4e2e85b6e5a122e9990f43', '[\"*\"]', NULL, NULL, '2026-03-10 15:04:39', '2026-03-10 15:04:39'),
(789, 'App\\Models\\User', 103, 'auth_token', '8953dfa3215d6e1b17950fdafb3b2311b35f8e795698ad2ffd01eee688a4fb11', '[\"*\"]', '2026-03-10 15:16:55', NULL, '2026-03-10 15:13:05', '2026-03-10 15:16:55'),
(790, 'App\\Models\\User', 145, 'auth_token', '5ff25089cea933b167592ca856bfd7f8cdb40f6bfb0f205d75a0f3bc0152588e', '[\"*\"]', NULL, NULL, '2026-03-10 15:16:49', '2026-03-10 15:16:49'),
(791, 'App\\Models\\User', 15, 'auth_token', '5e4b82f14767b8b5cb87092271fbdb3386a3c19cfc3eb4084a67a3b55ea357dc', '[\"*\"]', '2026-03-10 15:48:20', NULL, '2026-03-10 15:48:19', '2026-03-10 15:48:20'),
(792, 'App\\Models\\User', 146, 'auth_token', 'f52ba42552f5238a5c4c332bd66f7d2c5a4294a888e6f89b21cea30bca1c2acd', '[\"*\"]', NULL, NULL, '2026-03-10 15:52:03', '2026-03-10 15:52:03'),
(793, 'App\\Models\\User', 15, 'auth_token', 'd70defff3b5465d664202eeaae2da0a1710a7a01e9449cd96875ddea1ecd73e8', '[\"*\"]', '2026-03-10 21:30:05', NULL, '2026-03-10 15:57:54', '2026-03-10 21:30:05'),
(794, 'App\\Models\\User', 147, 'auth_token', '7d9d0246cc93f01e6a3f0508d80ef61713098a180e124cf36c4e0c13f4c53281', '[\"*\"]', NULL, NULL, '2026-03-10 16:57:33', '2026-03-10 16:57:33'),
(795, 'App\\Models\\User', 17, 'auth_token', 'a40e2f9a675e031c3b1f7ca6b64d185753c05903fe34a9fdea4bea59a48bf5d9', '[\"*\"]', '2026-03-10 17:13:13', NULL, '2026-03-10 17:12:30', '2026-03-10 17:13:13'),
(796, 'App\\Models\\User', 148, 'auth_token', 'aecab848815749dc34c6f8452f02d21b403390df5b2297194e431b1a3a739ede', '[\"*\"]', NULL, NULL, '2026-03-10 17:18:17', '2026-03-10 17:18:17'),
(797, 'App\\Models\\User', 17, 'auth_token', '94c317873e364f7f25d15c8ef8069924db5d0902d6c397ddd5847db3a0c2f600', '[\"*\"]', '2026-03-10 17:32:48', NULL, '2026-03-10 17:32:47', '2026-03-10 17:32:48'),
(798, 'App\\Models\\User', 17, 'auth_token', '8e48c6b608f5796cf6983c9007efaddf71b37fffa3b3c91fd010b6c1a341cd5b', '[\"*\"]', '2026-03-10 17:36:06', NULL, '2026-03-10 17:36:05', '2026-03-10 17:36:06'),
(799, 'App\\Models\\User', 17, 'auth_token', 'd7b567ab27c58aa47e5dc1d1163f1e8197a8771a2d091f523016a02e423ab5e5', '[\"*\"]', '2026-03-10 17:45:31', NULL, '2026-03-10 17:36:51', '2026-03-10 17:45:31'),
(800, 'App\\Models\\User', 17, 'auth_token', 'b621bd7524757732dd009074b0e038aac1e270c7dc2b6de206a7a6822c96dd21', '[\"*\"]', '2026-03-10 17:47:45', NULL, '2026-03-10 17:45:55', '2026-03-10 17:47:45'),
(801, 'App\\Models\\User', 17, 'auth_token', '1728d408d70f91f32a24009c4a1ec4ae6e28e6e075cebc42876322daa4614643', '[\"*\"]', '2026-03-10 17:56:02', NULL, '2026-03-10 17:48:10', '2026-03-10 17:56:02'),
(802, 'App\\Models\\User', 17, 'auth_token', 'c3fbc97e8faea51a8a6ed55f8e0194e1dd6fbb103f1a2e2f3d076399f20b6583', '[\"*\"]', '2026-03-10 17:56:48', NULL, '2026-03-10 17:56:46', '2026-03-10 17:56:48'),
(803, 'App\\Models\\User', 17, 'auth_token', '8be628d2a88af6f703047f062406077ecff47859a2154af279e9430534a949d7', '[\"*\"]', '2026-03-10 17:57:26', NULL, '2026-03-10 17:57:05', '2026-03-10 17:57:26'),
(804, 'App\\Models\\User', 149, 'auth_token', '862ccca574ae9709d590a1e933b8e294f35f6e5559624ad0293c0b21f00a28f5', '[\"*\"]', NULL, NULL, '2026-03-10 18:02:08', '2026-03-10 18:02:08'),
(805, 'App\\Models\\User', 17, 'auth_token', 'e7d5f28d021cf46e5c0cbf650581af31675c62793989e16a09753fa2ed575e71', '[\"*\"]', '2026-03-10 18:13:11', NULL, '2026-03-10 18:03:25', '2026-03-10 18:13:11'),
(806, 'App\\Models\\User', 15, 'auth_token', 'a38515800f9a9c1ba6fb85f9a635c441035002e63b2be600ef3e6d226198cd81', '[\"*\"]', '2026-03-10 18:16:45', NULL, '2026-03-10 18:14:49', '2026-03-10 18:16:45'),
(807, 'App\\Models\\User', 150, 'auth_token', '743b3b08b0eeeff0fcdd9a8199a29ae9c3ad4dbdefc8d559dfcfcbcbdaaca32a', '[\"*\"]', NULL, NULL, '2026-03-10 18:33:53', '2026-03-10 18:33:53'),
(808, 'App\\Models\\User', 151, 'auth_token', 'd9146fa7ae010a48abba307e9a1ca45e05b503bd282ffce6fb97f7211c1e8442', '[\"*\"]', NULL, NULL, '2026-03-10 18:48:40', '2026-03-10 18:48:40'),
(809, 'App\\Models\\User', 152, 'auth_token', '0d1ab9c98bada65135cfd2e32d14bdf9b135c7b3fa7233ccdb2cc03ad0dbb7f6', '[\"*\"]', NULL, NULL, '2026-03-10 18:56:48', '2026-03-10 18:56:48'),
(810, 'App\\Models\\User', 153, 'auth_token', '3c504d334d15d0b69f4eb40dfc93b0571df8dc7bf54ed1c225c68fdb2b147c5c', '[\"*\"]', NULL, NULL, '2026-03-10 19:03:18', '2026-03-10 19:03:18'),
(811, 'App\\Models\\User', 154, 'auth_token', 'bf97464e6e48d5f406bc14b1af95980acad8db9e4f1d68d096baa51bafdd442b', '[\"*\"]', NULL, NULL, '2026-03-10 19:07:27', '2026-03-10 19:07:27'),
(812, 'App\\Models\\User', 155, 'auth_token', '6010ace05bc37ed37c405fc6fb3acf2332a1f65ef2beb3f7b2707ad273d246ad', '[\"*\"]', NULL, NULL, '2026-03-10 19:55:49', '2026-03-10 19:55:49'),
(813, 'App\\Models\\User', 156, 'auth_token', 'ea78de82ab46a2ccfa24ad5fb503b99f3b964b6a517be4e5139f431b9f0f737e', '[\"*\"]', NULL, NULL, '2026-03-10 20:58:34', '2026-03-10 20:58:34'),
(814, 'App\\Models\\User', 15, 'auth_token', 'bfb52c4451e3a99722e20363fa078eaf074e1b9314cd70701f05adca018f85fa', '[\"*\"]', '2026-03-11 11:11:00', NULL, '2026-03-10 21:39:55', '2026-03-11 11:11:00'),
(815, 'App\\Models\\User', 36, 'auth_token', '19fe5872c29f5773bd931441b7afcabc0873984a5d616a7ba83992d878e05aec', '[\"*\"]', '2026-03-10 21:51:39', NULL, '2026-03-10 21:51:21', '2026-03-10 21:51:39'),
(816, 'App\\Models\\User', 157, 'auth_token', 'c36f9846e7227e8c4dcafb1fc5aae89b5b2e3cd8bf83af9c22170420b77e5d99', '[\"*\"]', NULL, NULL, '2026-03-10 22:23:33', '2026-03-10 22:23:33'),
(817, 'App\\Models\\User', 158, 'auth_token', '6c2a6398ddbd19df36b4dad82765c928484a004fdadf99deb2e58a1227eac1ee', '[\"*\"]', NULL, NULL, '2026-03-10 22:27:17', '2026-03-10 22:27:17'),
(818, 'App\\Models\\User', 159, 'auth_token', '4c24cd5be6120427be04e2d28d4c4ea0ce9ae3a31f256dde2ee44d8e6268ae65', '[\"*\"]', NULL, NULL, '2026-03-10 22:31:26', '2026-03-10 22:31:26'),
(819, 'App\\Models\\User', 160, 'auth_token', '59ea38e3fdade7178ed59f892902eda31d8106ed5d99bbf6838817a8c2b1094a', '[\"*\"]', NULL, NULL, '2026-03-10 23:21:37', '2026-03-10 23:21:37'),
(820, 'App\\Models\\User', 17, 'auth_token', 'cd89277142895f3a2f7432c231f5b0a79e5da7ea87eb20e7de6462f586cccea7', '[\"*\"]', NULL, NULL, '2026-03-10 23:55:46', '2026-03-10 23:55:46'),
(821, 'App\\Models\\User', 17, 'auth_token', 'e7fd4eebb86ad8389461b46ae624ab501ccdc2fec677b5e9438b67ada2a4920e', '[\"*\"]', NULL, NULL, '2026-03-10 23:55:51', '2026-03-10 23:55:51'),
(822, 'App\\Models\\User', 17, 'auth_token', '948b5816ac13b837948f4621b96e40daac5182e0e9c660a6f1d6b437b6498a7d', '[\"*\"]', NULL, NULL, '2026-03-10 23:56:00', '2026-03-10 23:56:00'),
(823, 'App\\Models\\User', 17, 'auth_token', '253fc79a4761815ff1dab97ef7ebcc587d6ab04bee5de4c519ea11a4a7972c90', '[\"*\"]', NULL, NULL, '2026-03-10 23:56:11', '2026-03-10 23:56:11'),
(824, 'App\\Models\\User', 17, 'auth_token', 'bdbb377899c12b34a213bfe98d941bbd81427c23b1dbae6b5c5b15367424a1aa', '[\"*\"]', '2026-03-11 00:16:16', NULL, '2026-03-10 23:56:17', '2026-03-11 00:16:16'),
(825, 'App\\Models\\User', 161, 'auth_token', 'b41af758bcb45f0e0c2f6f47d1c94852b75abf53768a7bd2a04d53c3d39cbb6a', '[\"*\"]', NULL, NULL, '2026-03-11 00:08:20', '2026-03-11 00:08:20'),
(826, 'App\\Models\\User', 135, 'auth_token', 'ffb382f0000fa1a507eda0f6644de7026f48a5a4dbbd0a2c6ad44d589a26e42b', '[\"*\"]', '2026-03-11 00:24:34', NULL, '2026-03-11 00:22:09', '2026-03-11 00:24:34'),
(827, 'App\\Models\\User', 81, 'auth_token', 'f4c70c3df20b4f9560da7fe39cde1d239953e0c38261a058c07847526cba86ee', '[\"*\"]', '2026-03-11 00:22:25', NULL, '2026-03-11 00:22:23', '2026-03-11 00:22:25'),
(829, 'App\\Models\\User', 162, 'auth_token', '4ec97a8a98ceed1ebb1b074a06f459ab7773f22745ff3c5e40f8f6fe3686e2bf', '[\"*\"]', NULL, NULL, '2026-03-11 00:54:43', '2026-03-11 00:54:43');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(830, 'App\\Models\\User', 163, 'auth_token', 'f480dbccb3a418bf9d5c9f5230e644f62d09f1002acc89c52d66bfe6c99eeed3', '[\"*\"]', NULL, NULL, '2026-03-11 05:25:59', '2026-03-11 05:25:59'),
(831, 'App\\Models\\User', 15, 'auth_token', '391724ed1218be333f65b0c59ecb9ecd6d2d4887bd5922c94c5b5335e57860d2', '[\"*\"]', '2026-03-11 09:57:31', NULL, '2026-03-11 09:49:57', '2026-03-11 09:57:31'),
(832, 'App\\Models\\User', 17, 'auth_token', 'abaedafca4f365599ab04bb77b93d50a83ba70fab5390efb12ee605a0da9ec6f', '[\"*\"]', '2026-03-11 12:26:27', NULL, '2026-03-11 09:54:12', '2026-03-11 12:26:27'),
(833, 'App\\Models\\User', 143, 'auth_token', '70403432a7bd1e81388dd19a7fef367957d2c28734cdbd2e6662b32047fb7c53', '[\"*\"]', '2026-03-11 10:18:34', NULL, '2026-03-11 10:18:30', '2026-03-11 10:18:34'),
(834, 'App\\Models\\User', 143, 'auth_token', 'daff0979acb83679f4b02b6fad8b28e7f5f0bdafa48a65653bae57263f9d1a4a', '[\"*\"]', '2026-03-11 10:22:22', NULL, '2026-03-11 10:19:21', '2026-03-11 10:22:22'),
(835, 'App\\Models\\User', 26, 'auth_token', '77bde3e551d50cc02e50c0e84cf798a6a3f9f68888604ca4807a642f32e3ea9b', '[\"*\"]', '2026-03-11 10:29:06', NULL, '2026-03-11 10:28:58', '2026-03-11 10:29:06'),
(836, 'App\\Models\\User', 164, 'auth_token', '39dbcdec97623f581d05181740b8501b10b574e1a97f76b7e473cbbd2c955215', '[\"*\"]', NULL, NULL, '2026-03-11 11:03:58', '2026-03-11 11:03:58'),
(837, 'App\\Models\\User', 165, 'auth_token', 'f640e713ef5922b7406f72e9f50c9f41d89801820dc3c229c990910b17d37cf6', '[\"*\"]', NULL, NULL, '2026-03-11 11:12:16', '2026-03-11 11:12:16'),
(838, 'App\\Models\\User', 91, 'auth_token', '5103e06a7086e56a8b2e796521ef35da9b349b2fb6032eaac7077504262e43f3', '[\"*\"]', '2026-03-11 11:17:07', NULL, '2026-03-11 11:14:02', '2026-03-11 11:17:07'),
(839, 'App\\Models\\User', 15, 'auth_token', '107340cdee3338b18bbf79619cc669fdb0287db98d499e89221da59a2347d048', '[\"*\"]', NULL, NULL, '2026-03-11 11:39:51', '2026-03-11 11:39:51'),
(840, 'App\\Models\\User', 15, 'auth_token', '5d5b210276f5169fe1f3d89e919074c6dbfad1ed1bce42db863a5d9653d2a530', '[\"*\"]', '2026-03-11 11:39:54', NULL, '2026-03-11 11:39:52', '2026-03-11 11:39:54'),
(841, 'App\\Models\\User', 91, 'auth_token', '3496d937562861f038699a77ef7c64f832180963818337672492fad275161719', '[\"*\"]', '2026-03-11 11:40:25', NULL, '2026-03-11 11:40:12', '2026-03-11 11:40:25'),
(842, 'App\\Models\\User', 15, 'auth_token', '40343bc03b56af8f7f48acb2e373239f7ccb896aafa56ebedb9a38841b16b776', '[\"*\"]', '2026-03-11 11:43:34', NULL, '2026-03-11 11:43:32', '2026-03-11 11:43:34'),
(843, 'App\\Models\\User', 15, 'auth_token', 'a950de59169cff877be1e618a3e3f4033f06df6a007b9daf81d9de051f36271e', '[\"*\"]', '2026-03-19 01:09:53', NULL, '2026-03-11 11:44:12', '2026-03-19 01:09:53'),
(844, 'App\\Models\\User', 166, 'auth_token', '838cd971c3eaefe9161ba8de9331e4fb4567321a602fb0b202f937d0d70b0f59', '[\"*\"]', NULL, NULL, '2026-03-11 11:57:27', '2026-03-11 11:57:27'),
(845, 'App\\Models\\User', 129, 'auth_token', '593df46290fe6721cfc21cadd681a28019da95f013de29427b3ad484b3359d14', '[\"*\"]', '2026-03-11 12:03:54', NULL, '2026-03-11 12:03:13', '2026-03-11 12:03:54'),
(846, 'App\\Models\\User', 32, 'auth_token', '53e019ec85bdba6cc1701f2ae4b0e67bb2f0437fa34d5a14703258cf11145e1d', '[\"*\"]', '2026-03-11 12:06:59', NULL, '2026-03-11 12:06:20', '2026-03-11 12:06:59'),
(847, 'App\\Models\\User', 167, 'auth_token', 'ba7cf25e1052c20fb6deb304facbcfea7c3152d79c7bf0f50c2d685a66964940', '[\"*\"]', NULL, NULL, '2026-03-11 12:39:20', '2026-03-11 12:39:20'),
(848, 'App\\Models\\User', 100, 'auth_token', '5b5e0f31bf5555305c28bd7630974591de7311f2b2f4d4a57194b80f85a8c7f4', '[\"*\"]', NULL, NULL, '2026-03-11 12:59:56', '2026-03-11 12:59:56'),
(849, 'App\\Models\\User', 100, 'auth_token', 'f4ce6231a74967c3caaf9571c35b01520ef3daf61449ff98ffd66703bf66d45a', '[\"*\"]', '2026-03-11 13:00:03', NULL, '2026-03-11 12:59:57', '2026-03-11 13:00:03'),
(850, 'App\\Models\\User', 17, 'auth_token', 'ae11dfe9624b57142d18aa90ad1d99e7631ad1e55294d9aadd589413acb53d77', '[\"*\"]', '2026-03-11 13:25:25', NULL, '2026-03-11 13:24:53', '2026-03-11 13:25:25'),
(851, 'App\\Models\\User', 168, 'auth_token', '75da2afb04e21207be302c90f15fadeb9a4a3f942dc79440f62da6764b867cac', '[\"*\"]', NULL, NULL, '2026-03-11 13:44:50', '2026-03-11 13:44:50'),
(852, 'App\\Models\\User', 169, 'auth_token', '86f1dcf97e7c745dd6b1e8f0cc74273e7988451c5b296dd986bb25a0de4533fc', '[\"*\"]', NULL, NULL, '2026-03-11 13:57:35', '2026-03-11 13:57:35'),
(853, 'App\\Models\\User', 17, 'auth_token', '6f8e97f8a393ed659da4cfc9ff74a30bfcda3423feedf21ae544b6423eb25b49', '[\"*\"]', '2026-03-11 14:12:40', NULL, '2026-03-11 14:12:11', '2026-03-11 14:12:40'),
(854, 'App\\Models\\User', 166, 'auth_token', '762ecf757d20db2b7bd5c1363e434875375c0e2a296a49bc67ef641a3a1dd585', '[\"*\"]', '2026-03-17 20:33:11', NULL, '2026-03-11 14:18:58', '2026-03-17 20:33:11'),
(855, 'App\\Models\\User', 17, 'auth_token', 'c3226b470018f7fcefaa9281f20eb815a4ae200b8b4c9bc4b02b1831da5ec97e', '[\"*\"]', '2026-03-11 15:03:37', NULL, '2026-03-11 14:56:56', '2026-03-11 15:03:37'),
(856, 'App\\Models\\User', 170, 'auth_token', '2db582961f75fe86fdfa649a9e415a04f0f3c8ad4a4f20becb58bf303d8455d7', '[\"*\"]', NULL, NULL, '2026-03-11 15:01:02', '2026-03-11 15:01:02'),
(857, 'App\\Models\\User', 15, 'auth_token', '731f1b6297bbc470fc0bdf58d81c69c6f3f1dc631cabca90def9fa43b19dc12a', '[\"*\"]', '2026-03-11 17:28:02', NULL, '2026-03-11 15:14:06', '2026-03-11 17:28:02'),
(858, 'App\\Models\\User', 17, 'auth_token', 'dfd9410dcba706a11e11e046fef1224f06ae46f8f638cd87949c64b9fec94c31', '[\"*\"]', '2026-03-11 15:49:36', NULL, '2026-03-11 15:39:03', '2026-03-11 15:49:36'),
(859, 'App\\Models\\User', 17, 'auth_token', '7469f281c3f3aa113dd82a07ed67df4dfbabdabdd3f0a7c0bdc4e6e79a0201dd', '[\"*\"]', '2026-03-11 16:18:44', NULL, '2026-03-11 15:49:44', '2026-03-11 16:18:44'),
(860, 'App\\Models\\User', 163, 'auth_token', '5a8ffacc20b140a762651db3942f7764b377724da7cd4d9950e3613afb7feef9', '[\"*\"]', '2026-03-11 16:41:46', NULL, '2026-03-11 15:54:55', '2026-03-11 16:41:46'),
(861, 'App\\Models\\User', 171, 'auth_token', 'f65ba90eb5cd573648d78e0a2bc596b3ae0db11876e1e0efd80c517632445bd9', '[\"*\"]', NULL, NULL, '2026-03-11 16:06:40', '2026-03-11 16:06:40'),
(862, 'App\\Models\\User', 165, 'auth_token', 'bef6f1d31e255920a7317ae8864b56dbe264d00659706de968831f3b53fbd934', '[\"*\"]', '2026-03-11 16:27:27', NULL, '2026-03-11 16:26:52', '2026-03-11 16:27:27'),
(863, 'App\\Models\\User', 17, 'auth_token', '0d52c575f34090614c56590f7ff4d6b76810f23c339cd45de5122cccce28b382', '[\"*\"]', '2026-03-11 20:07:24', NULL, '2026-03-11 16:52:53', '2026-03-11 20:07:24'),
(864, 'App\\Models\\User', 15, 'auth_token', '21bde39119ce37b0e5f3d831ec552df8f3348bf4b96c495367e9e844c0837dfb', '[\"*\"]', '2026-03-11 17:15:24', NULL, '2026-03-11 16:57:53', '2026-03-11 17:15:24'),
(865, 'App\\Models\\User', 81, 'auth_token', '79270d413cfd32c0fe79e15f3fcb18ee436dfff504202d85bcd9050d171edd3e', '[\"*\"]', '2026-03-11 17:02:39', NULL, '2026-03-11 17:01:18', '2026-03-11 17:02:39'),
(866, 'App\\Models\\User', 172, 'auth_token', '26cd2fa833ce59600afb9fa12b1a028a6c3c559d182bdb021da03f9076b306ba', '[\"*\"]', NULL, NULL, '2026-03-11 17:58:58', '2026-03-11 17:58:58'),
(867, 'App\\Models\\User', 36, 'auth_token', 'b8e5f035cd6c7b8760e7fdf0e91f64effe9a6790f3838bb041ed1f17fab50dc1', '[\"*\"]', '2026-03-11 20:01:10', NULL, '2026-03-11 20:00:25', '2026-03-11 20:01:10'),
(869, 'App\\Models\\User', 15, 'auth_token', '234248190357eb9322b3484eed6f770ed69ee96dcb1545b33dba209bbf62ac5a', '[\"*\"]', '2026-03-11 20:01:53', NULL, '2026-03-11 20:01:45', '2026-03-11 20:01:53'),
(870, 'App\\Models\\User', 17, 'auth_token', 'b1d5a5f4fd9541ad70f81c01b7299514cb5c8b72c2a2256b0b9edcb2c64d7b58', '[\"*\"]', '2026-03-11 20:52:02', NULL, '2026-03-11 20:07:34', '2026-03-11 20:52:02'),
(871, 'App\\Models\\User', 173, 'auth_token', 'aee57bd1deedb59cc9efebd2844b19a0f9132d46a9519737316ed8b9f83b4f57', '[\"*\"]', NULL, NULL, '2026-03-11 20:20:13', '2026-03-11 20:20:13'),
(873, 'App\\Models\\User', 174, 'auth_token', 'ae44b7dcbdc315be19405ee7107af51d711d86cabd2491f799d21edced1a1873', '[\"*\"]', NULL, NULL, '2026-03-11 20:28:20', '2026-03-11 20:28:20'),
(874, 'App\\Models\\User', 75, 'auth_token', '5a09472a6ed26fcd7991e95b8691e9d2a34ee978ac172fc2cba13484edea797a', '[\"*\"]', '2026-03-11 20:41:56', NULL, '2026-03-11 20:33:51', '2026-03-11 20:41:56'),
(875, 'App\\Models\\User', 170, 'auth_token', '78b59783ffb92ad4b17188edee1662633c462ff6469e37ced3dcd83019943290', '[\"*\"]', '2026-03-11 20:37:29', NULL, '2026-03-11 20:34:47', '2026-03-11 20:37:29'),
(876, 'App\\Models\\User', 15, 'auth_token', '6127951285113ebc23dcb76148a8ef820b170d956c826798c1ebfd73c2cbb33e', '[\"*\"]', '2026-03-12 15:07:18', NULL, '2026-03-11 20:47:07', '2026-03-12 15:07:18'),
(877, 'App\\Models\\User', 17, 'auth_token', 'ee3c98d42c1bad4e6d826393c9d7e8d94f0af2990baeef84edf62f09123c2d99', '[\"*\"]', '2026-03-11 20:58:06', NULL, '2026-03-11 20:52:29', '2026-03-11 20:58:06'),
(878, 'App\\Models\\User', 175, 'auth_token', '9b602087074e8729c489be1095aa176af0879a4f7d3a786ffda5b5c3c4eb9dfe', '[\"*\"]', NULL, NULL, '2026-03-11 20:55:46', '2026-03-11 20:55:46'),
(879, 'App\\Models\\User', 17, 'auth_token', '1813052ececcef94bec9f605c6f03227c99f4d420cafbcbc4274db110c0023ef', '[\"*\"]', '2026-03-11 21:40:00', NULL, '2026-03-11 20:58:38', '2026-03-11 21:40:00'),
(880, 'App\\Models\\User', 176, 'auth_token', '1b35e0e8679576ea710fd7f83702e318eb338e78ce64cd4a1d2041e7fbd4a261', '[\"*\"]', NULL, NULL, '2026-03-11 21:05:41', '2026-03-11 21:05:41'),
(881, 'App\\Models\\User', 15, 'auth_token', '42411d62b6e64f551ee8d84b75071448314a41932a7eb7f173b9a382b3288145', '[\"*\"]', '2026-03-11 23:17:09', NULL, '2026-03-11 21:30:41', '2026-03-11 23:17:09'),
(882, 'App\\Models\\User', 17, 'auth_token', 'a8b81e4c5ecb8c10fa9ccbd45d60e0d9844cab4e1f8636dbba1ed5b788488cd3', '[\"*\"]', '2026-03-11 21:50:48', NULL, '2026-03-11 21:40:48', '2026-03-11 21:50:48'),
(883, 'App\\Models\\User', 177, 'auth_token', '790e077f6ba651989a902780a03dbd8f1bb0524f457b5bda9cb08fcc18ea80ba', '[\"*\"]', NULL, NULL, '2026-03-11 22:22:46', '2026-03-11 22:22:46'),
(884, 'App\\Models\\User', 178, 'auth_token', '09257c050fb4cb97344124568b87d557eb8de39d3a436588504d0f90dbb67490', '[\"*\"]', NULL, NULL, '2026-03-11 23:07:20', '2026-03-11 23:07:20'),
(885, 'App\\Models\\User', 179, 'auth_token', 'dd2d9c62bfdec06e91d19d8a7bb0d2637d771932624af0bbeac273f97e83a4d5', '[\"*\"]', NULL, NULL, '2026-03-11 23:32:12', '2026-03-11 23:32:12'),
(886, 'App\\Models\\User', 180, 'auth_token', '3bc5353f39e6544e2b8644b2b4cf3e180c5b6977fc6ae9dad345401593ff2033', '[\"*\"]', NULL, NULL, '2026-03-11 23:54:02', '2026-03-11 23:54:02'),
(887, 'App\\Models\\User', 181, 'auth_token', 'b313ef20759d4e5234f357c8a6dcc65d57a5251ff493075043de84f5e677ef45', '[\"*\"]', NULL, NULL, '2026-03-12 00:53:59', '2026-03-12 00:53:59'),
(888, 'App\\Models\\User', 182, 'auth_token', '7b0bc202c7220eb0c85f0373668d33df035833c56afac0ffa7eabdb4c922fcf0', '[\"*\"]', NULL, NULL, '2026-03-12 07:24:36', '2026-03-12 07:24:36'),
(889, 'App\\Models\\User', 17, 'auth_token', '4e20664993531894335ab3b082531f7ca00607a95bb3638dabdd7d3941c31946', '[\"*\"]', '2026-03-12 12:36:56', NULL, '2026-03-12 08:41:53', '2026-03-12 12:36:56'),
(890, 'App\\Models\\User', 164, 'auth_token', 'eb4e01cda2677138e8c51646f85fd09ba90eaa350f669af9ac5de5ccf9c0470c', '[\"*\"]', '2026-03-12 08:55:30', NULL, '2026-03-12 08:54:57', '2026-03-12 08:55:30'),
(891, 'App\\Models\\User', 183, 'auth_token', '68c876788d8474f49d62b5a6f0c8064cc8127ed70cb096e0f198b62d25c7ac4d', '[\"*\"]', NULL, NULL, '2026-03-12 09:56:30', '2026-03-12 09:56:30'),
(892, 'App\\Models\\User', 17, 'auth_token', 'ebefec03d59afa282568dc9618980819fc75b2ca6c732793444bfe1750ad76dd', '[\"*\"]', '2026-03-12 09:58:30', NULL, '2026-03-12 09:58:05', '2026-03-12 09:58:30'),
(893, 'App\\Models\\User', 17, 'auth_token', 'e4c991dd2922828cb59f3eea07a97abf525c76ee6a8edac2e46bc2dec0970392', '[\"*\"]', '2026-03-12 10:03:12', NULL, '2026-03-12 10:03:11', '2026-03-12 10:03:12'),
(894, 'App\\Models\\User', 15, 'auth_token', '07e0d089006d84a585ea9084e425da5493ba7a47dd4e41d94c877e3ee51dfd17', '[\"*\"]', '2026-03-12 10:44:12', NULL, '2026-03-12 10:44:11', '2026-03-12 10:44:12'),
(895, 'App\\Models\\User', 15, 'auth_token', '715712620dcb8207055aded1936434cfb8119aa1379c5aca280e79be7324b78d', '[\"*\"]', '2026-03-12 11:24:38', NULL, '2026-03-12 10:44:48', '2026-03-12 11:24:38'),
(896, 'App\\Models\\User', 15, 'auth_token', '62a805b15def75e63308416b81c8b16f7c554a9ff5c0a318702eac63c7952a11', '[\"*\"]', '2026-03-12 12:28:04', NULL, '2026-03-12 11:35:35', '2026-03-12 12:28:04'),
(897, 'App\\Models\\User', 17, 'auth_token', 'f55d8675023047cd8484be24d40fbe3a8c305efbc520e2316628ef23e4b4ba1a', '[\"*\"]', '2026-03-12 12:38:19', NULL, '2026-03-12 12:37:11', '2026-03-12 12:38:19'),
(898, 'App\\Models\\User', 15, 'auth_token', '9c46b526b2d580421fed9a9bfaf70479b18867b6e45ad145417f62be3275a105', '[\"*\"]', '2026-03-12 14:04:02', NULL, '2026-03-12 13:25:01', '2026-03-12 14:04:02'),
(899, 'App\\Models\\User', 17, 'auth_token', '936e943757b7fc64f2b6e5aab97c103729a39468df799d27026551a6d4835ade', '[\"*\"]', '2026-03-12 13:28:27', NULL, '2026-03-12 13:27:06', '2026-03-12 13:28:27'),
(900, 'App\\Models\\User', 184, 'auth_token', '9facb0077ffbfe9f9c3ab99675c8cb080bf6cbe73c12edf1dfcc2f03e4381a0b', '[\"*\"]', NULL, NULL, '2026-03-12 14:48:49', '2026-03-12 14:48:49'),
(901, 'App\\Models\\User', 185, 'auth_token', '1b9f4abdf76a7ff3e477d2367bcf99d4e38a19d23d050f4a4de9401423d6fb1f', '[\"*\"]', NULL, NULL, '2026-03-12 16:22:22', '2026-03-12 16:22:22'),
(902, 'App\\Models\\User', 17, 'auth_token', 'e5161c6d4dca1cc351aa3c6ee510a30413404bc9b74b1af4b8f9e563e05ea943', '[\"*\"]', '2026-03-12 16:48:17', NULL, '2026-03-12 16:42:00', '2026-03-12 16:48:17'),
(903, 'App\\Models\\User', 15, 'auth_token', '00f556ba28298f2797f0d1a74dc23d96ea2cc19113c88e0176f733ac65b4dac4', '[\"*\"]', '2026-03-12 17:46:39', NULL, '2026-03-12 17:46:29', '2026-03-12 17:46:39'),
(904, 'App\\Models\\User', 17, 'auth_token', '39e4ed4cb84a32445f6c12fe3ddeee0f9afdc68522566309fb5490d7750153d5', '[\"*\"]', '2026-03-12 18:11:25', NULL, '2026-03-12 18:10:50', '2026-03-12 18:11:25'),
(905, 'App\\Models\\User', 17, 'auth_token', '08d08b9a132eda1d32adfc333c7d167f67006d2e13aaea3fa005b0f33593ac85', '[\"*\"]', '2026-03-12 18:14:46', NULL, '2026-03-12 18:12:54', '2026-03-12 18:14:46'),
(906, 'App\\Models\\User', 186, 'auth_token', '81a1093fdf58194b4731e1f3ee4d6825fddc12480f0becb33a57e223c4c4a50a', '[\"*\"]', NULL, NULL, '2026-03-12 19:09:28', '2026-03-12 19:09:28'),
(907, 'App\\Models\\User', 171, 'auth_token', '853248a9c7b75fe9e11fa746e0da7ceecd4c7d68d76a78be3bef4b7a4e3954a5', '[\"*\"]', '2026-03-13 11:57:15', NULL, '2026-03-13 09:58:39', '2026-03-13 11:57:15'),
(908, 'App\\Models\\User', 17, 'auth_token', '60a507ed3c80e02ff62df2ae238c843844f852a336ae733ca49248406b8de5af', '[\"*\"]', '2026-03-13 11:15:07', NULL, '2026-03-13 11:15:00', '2026-03-13 11:15:07'),
(909, 'App\\Models\\User', 15, 'auth_token', '3a6bb019de220eab61ee80194b7fb324f9960e1921d9eac9c72d3e0a33640f1b', '[\"*\"]', '2026-03-13 11:26:59', NULL, '2026-03-13 11:23:59', '2026-03-13 11:26:59'),
(910, 'App\\Models\\User', 17, 'auth_token', '59cef87c5bd1ac36535fe4a050950c87003fe713ed17644af48b2ca532ed5725', '[\"*\"]', '2026-03-13 13:52:25', NULL, '2026-03-13 13:50:28', '2026-03-13 13:52:25'),
(911, 'App\\Models\\User', 17, 'auth_token', 'ddd01ea4dc7ddb51c6cdd7917077dadfb22b824cbb061910ae2a74f695039870', '[\"*\"]', '2026-03-13 13:57:52', NULL, '2026-03-13 13:53:43', '2026-03-13 13:57:52'),
(912, 'App\\Models\\User', 15, 'auth_token', 'bbb217dbea1de330912ec76132c82ff74cd396548899650a0870149ef4db57b8', '[\"*\"]', '2026-03-13 13:54:58', NULL, '2026-03-13 13:54:55', '2026-03-13 13:54:58'),
(913, 'App\\Models\\User', 17, 'auth_token', 'a526486ba23304722aa995c6b38389ce7a589f21467381d3bb7ccf6ea044a0c2', '[\"*\"]', '2026-03-13 14:04:37', NULL, '2026-03-13 14:01:04', '2026-03-13 14:04:37'),
(914, 'App\\Models\\User', 15, 'auth_token', '9a95a854d2d32f91ae5d8759af818bac0be7aa5596dd70e618c8c4500392ee60', '[\"*\"]', '2026-03-13 14:41:55', NULL, '2026-03-13 14:40:48', '2026-03-13 14:41:55'),
(915, 'App\\Models\\User', 187, 'auth_token', '39fb25ed43d17e8c1bef61a7ce0ead584edc3c0f3aa1cedd2382de155fd47151', '[\"*\"]', NULL, NULL, '2026-03-13 15:03:26', '2026-03-13 15:03:26'),
(916, 'App\\Models\\User', 15, 'auth_token', '8cd8d21c5287b0e3a4be1c1ef8a7172e1774bd153300d8b9af2079ab9aadddfa', '[\"*\"]', '2026-03-13 15:10:55', NULL, '2026-03-13 15:05:46', '2026-03-13 15:10:55'),
(917, 'App\\Models\\User', 17, 'auth_token', 'd73da9f535462c0d243316a8da25588cf4be5ae86a43a05c5cad4a3693d58770', '[\"*\"]', '2026-03-13 20:18:53', NULL, '2026-03-13 15:54:50', '2026-03-13 20:18:53'),
(918, 'App\\Models\\User', 17, 'auth_token', '78045b9349e442b886e74d32ac11b27a133a23b777831b1ab6d83c45e9b9b83d', '[\"*\"]', '2026-03-15 13:39:44', NULL, '2026-03-13 16:57:49', '2026-03-15 13:39:44'),
(919, 'App\\Models\\User', 15, 'auth_token', 'df7a02c517926d6d7cdd75a0607c7b72e3847c3e2bbf93d97536a67513768038', '[\"*\"]', '2026-03-13 17:27:53', NULL, '2026-03-13 17:26:15', '2026-03-13 17:27:53'),
(920, 'App\\Models\\User', 15, 'auth_token', 'ef094fe4db700391bebd24062f1117d0d63b67c2f55c222e752e11e51db5fc3f', '[\"*\"]', '2026-03-13 19:47:12', NULL, '2026-03-13 19:21:40', '2026-03-13 19:47:12'),
(921, 'App\\Models\\User', 15, 'auth_token', '53cc07f0f6b3a1fbf340f1cf357ffcf1aad228ff4de0a0444ba352517015cc95', '[\"*\"]', '2026-03-15 06:44:30', NULL, '2026-03-13 19:55:22', '2026-03-15 06:44:30'),
(922, 'App\\Models\\User', 15, 'auth_token', '04f70cd0dc2eeb7acd879826c0187004396eba5339e86a7fd5eaf724b887638a', '[\"*\"]', '2026-03-13 22:45:43', NULL, '2026-03-13 21:00:52', '2026-03-13 22:45:43'),
(923, 'App\\Models\\User', 15, 'auth_token', '3d479a0aa7e663fcbe7073f28bbd53ec14c607481d94b69e8517dd69cfe55ef2', '[\"*\"]', '2026-03-14 07:21:39', NULL, '2026-03-13 22:46:25', '2026-03-14 07:21:39'),
(924, 'App\\Models\\User', 15, 'auth_token', '2e110c094372bfa45ca0f5f2a6d50ae6f62cc03a690d85996ce958045660e99d', '[\"*\"]', '2026-03-13 23:10:37', NULL, '2026-03-13 22:50:19', '2026-03-13 23:10:37'),
(925, 'App\\Models\\User', 24, 'auth_token', '6f82bdadc92514ec4810b081482f10228fe8b86580890139af02cf2c82df72b5', '[\"*\"]', NULL, NULL, '2026-03-14 13:17:15', '2026-03-14 13:17:15'),
(926, 'App\\Models\\User', 188, 'auth_token', '4fbd7b8a124154ec490f27db4141429e52f4b288969ec6626395d6ed29210b26', '[\"*\"]', NULL, NULL, '2026-03-15 07:15:28', '2026-03-15 07:15:28'),
(927, 'App\\Models\\User', 189, 'auth_token', '9619081baaf07a1b622e6e3adcdf574842e45467824d6e8cc56c86d4e4ee89c2', '[\"*\"]', NULL, NULL, '2026-03-15 10:25:46', '2026-03-15 10:25:46'),
(928, 'App\\Models\\User', 190, 'auth_token', 'e0a05355eee25d75e1ee9c048c45215205681988115e69d052128197538fd0a9', '[\"*\"]', NULL, NULL, '2026-03-15 10:58:04', '2026-03-15 10:58:04'),
(929, 'App\\Models\\User', 81, 'auth_token', 'e9c33b7065e0bef174dfb3edc553a1532e7abc116498081bd2741e8f031dfc30', '[\"*\"]', '2026-03-15 11:51:58', NULL, '2026-03-15 11:51:45', '2026-03-15 11:51:58'),
(930, 'App\\Models\\User', 81, 'auth_token', '8d57836941d11eb5e5f7f30d84c4a9f317833d1ba711c81dc8e40af45a23fe0c', '[\"*\"]', '2026-03-16 21:47:05', NULL, '2026-03-15 11:53:30', '2026-03-16 21:47:05'),
(931, 'App\\Models\\User', 191, 'auth_token', 'fc88ae3995cb1b5f4f095c6708211a3192b39e5a46a17c4087ce754992915130', '[\"*\"]', NULL, NULL, '2026-03-15 12:12:06', '2026-03-15 12:12:06'),
(932, 'App\\Models\\User', 192, 'auth_token', 'a4bb8bb2c9c8b96a06d92e62ff55af8af0ef20623942c3873c63c97cbdd69d3d', '[\"*\"]', NULL, NULL, '2026-03-15 14:46:09', '2026-03-15 14:46:09'),
(933, 'App\\Models\\User', 193, 'auth_token', '5b63758c3b732cb0778182ed0bc75c1eb6f8fd54b78908e48787d624037b85f1', '[\"*\"]', NULL, NULL, '2026-03-15 17:29:39', '2026-03-15 17:29:39'),
(934, 'App\\Models\\User', 194, 'auth_token', 'a8894f44632e81c46c7982dd684ca10af13ab793f89d48a3f070735b39c5649a', '[\"*\"]', NULL, NULL, '2026-03-15 18:40:32', '2026-03-15 18:40:32'),
(935, 'App\\Models\\User', 17, 'auth_token', 'af8e2f68b40ae0762758d1ca20e3de9fc3c90cc3db489193d0b95ce274c389a0', '[\"*\"]', '2026-03-15 22:54:02', NULL, '2026-03-15 22:34:25', '2026-03-15 22:54:02'),
(936, 'App\\Models\\User', 15, 'auth_token', '60841922cadce8ed35bd5e42cf3a02b4bdf8cb42b08761d786855201d7e675c8', '[\"*\"]', '2026-03-16 09:46:27', NULL, '2026-03-16 09:39:08', '2026-03-16 09:46:27'),
(937, 'App\\Models\\User', 53, 'auth_token', '5520edf73b0eb89813f93ec2187115627916e433c8934577351d669f46944376', '[\"*\"]', '2026-03-16 09:53:53', NULL, '2026-03-16 09:47:56', '2026-03-16 09:53:53'),
(938, 'App\\Models\\User', 15, 'auth_token', '9408e944289c655c7c75cfeeb488948082d25b8471724efca6f851b1feff4b4d', '[\"*\"]', '2026-03-16 09:54:08', NULL, '2026-03-16 09:54:07', '2026-03-16 09:54:08'),
(939, 'App\\Models\\User', 15, 'auth_token', 'add3b84faeaef166276118c5ab33e0e7f5a1b86736841bb0a58e64d08a541df9', '[\"*\"]', '2026-03-16 13:45:36', NULL, '2026-03-16 13:32:26', '2026-03-16 13:45:36'),
(940, 'App\\Models\\User', 15, 'auth_token', '940af6854110c75c99b3a6cc63566d1ed685569ff6ced605840b4f06cf18e282', '[\"*\"]', '2026-03-16 21:57:33', NULL, '2026-03-16 15:14:25', '2026-03-16 21:57:33'),
(941, 'App\\Models\\User', 15, 'auth_token', 'dbae5ff8772549c31338be72ed31f67ad26c6cf0493b75c0d52fc86d9e29432e', '[\"*\"]', '2026-03-16 19:09:45', NULL, '2026-03-16 19:09:44', '2026-03-16 19:09:45'),
(942, 'App\\Models\\User', 15, 'auth_token', 'f60eb1402295fec12edf7906d9f3c6c89712d351c818319dc8eac33bff238549', '[\"*\"]', '2026-03-16 19:46:46', NULL, '2026-03-16 19:46:42', '2026-03-16 19:46:46'),
(943, 'App\\Models\\User', 195, 'auth_token', '86a984d39375628aafc2816d5c4586ba6160ffe3e54e221fb4f72b50b69a3cb6', '[\"*\"]', NULL, NULL, '2026-03-16 20:13:09', '2026-03-16 20:13:09'),
(944, 'App\\Models\\User', 17, 'auth_token', '9cdd2897b8530252d42b45355427e31e699e6b8ae67b7345490799c60ec18b5f', '[\"*\"]', '2026-03-16 21:03:30', NULL, '2026-03-16 21:02:34', '2026-03-16 21:03:30'),
(945, 'App\\Models\\User', 196, 'auth_token', 'cdeda201354a19dd26e14eb43e82f6ddfd8cd7fa971d2b0b4a3474eb3a747ad9', '[\"*\"]', NULL, NULL, '2026-03-17 02:31:25', '2026-03-17 02:31:25'),
(946, 'App\\Models\\User', 17, 'auth_token', '80e63a7f151cdab10af8c58195bf7fcebd00a0ecf5655f18e4da56d3479639d0', '[\"*\"]', '2026-03-17 07:12:03', NULL, '2026-03-17 07:11:50', '2026-03-17 07:12:03'),
(947, 'App\\Models\\User', 17, 'auth_token', 'efb54290c174015b36ade0053825db64dfc288d8d86d24d63bdf43fb10c7b25a', '[\"*\"]', '2026-03-17 07:12:28', NULL, '2026-03-17 07:12:27', '2026-03-17 07:12:28'),
(948, 'App\\Models\\User', 15, 'auth_token', '41de7d5beef8f2d140e90be31342215cc1e651c3895e9cecd50b900aa1d82f77', '[\"*\"]', '2026-03-17 08:20:13', NULL, '2026-03-17 08:20:11', '2026-03-17 08:20:13'),
(949, 'App\\Models\\User', 15, 'auth_token', '671eeaaf43b2eadc2f2482442b83d3f0eb87ba6dc5eba248fd3eb1c43696586e', '[\"*\"]', '2026-03-17 09:12:18', NULL, '2026-03-17 08:35:13', '2026-03-17 09:12:18'),
(950, 'App\\Models\\User', 15, 'auth_token', '98384b2198767ff11d69feff51ab6e13d7ad6cd532d17c3883a25c5e4654ff4e', '[\"*\"]', '2026-03-17 10:28:44', NULL, '2026-03-17 10:28:34', '2026-03-17 10:28:44'),
(951, 'App\\Models\\User', 15, 'auth_token', 'd875d4bae2679ed155d6a99301cdb5f2472f6e069a7a158701714b748f7a50d4', '[\"*\"]', '2026-03-19 16:14:23', NULL, '2026-03-17 11:17:45', '2026-03-19 16:14:23'),
(952, 'App\\Models\\User', 17, 'auth_token', '92448c761d04937cc2b038c3abce1a25cc2c47d6753378e1589bd89379ff5e2d', '[\"*\"]', '2026-03-17 11:32:01', NULL, '2026-03-17 11:31:43', '2026-03-17 11:32:01'),
(953, 'App\\Models\\User', 15, 'auth_token', 'b4fc37ed02ccef76fd4c327e9322f65a3954a09b1159f52e4dacb94f6a3471d1', '[\"*\"]', '2026-03-17 20:44:40', NULL, '2026-03-17 11:56:20', '2026-03-17 20:44:40'),
(954, 'App\\Models\\User', 17, 'auth_token', '81ebb84383d32e24775fb58896365ad6d47cb53eeb8d8340ee0afcffbba40685', '[\"*\"]', '2026-03-17 20:15:58', NULL, '2026-03-17 12:16:04', '2026-03-17 20:15:58'),
(955, 'App\\Models\\User', 106, 'auth_token', '237e5ea0277152c7952700403a783994e8a22f4d58292641aa547460410eb37c', '[\"*\"]', '2026-03-17 12:53:10', NULL, '2026-03-17 12:49:44', '2026-03-17 12:53:10'),
(956, 'App\\Models\\User', 106, 'auth_token', '6d9c56824f747c4fcb5b7610c5342fc0df22b725a47857f4bbcef37bd0d742b7', '[\"*\"]', '2026-03-17 12:54:36', NULL, '2026-03-17 12:54:35', '2026-03-17 12:54:36'),
(957, 'App\\Models\\User', 197, 'auth_token', '674f9c15bcad820e86c550b394c7a6ab8992d942e8a644ea326aceee6ff8b11c', '[\"*\"]', NULL, NULL, '2026-03-17 17:32:25', '2026-03-17 17:32:25'),
(958, 'App\\Models\\User', 198, 'auth_token', '39aeac8d2fbd2c73cb5e27ecb2901aab63c78bfd0bd07f77eab61c1bc494a9c8', '[\"*\"]', NULL, NULL, '2026-03-17 20:05:44', '2026-03-17 20:05:44'),
(959, 'App\\Models\\User', 17, 'auth_token', '0cc3cf4bd50bcd1f87f470e9553d9675d67e484bc891e337cf2eaeab2e09c0f7', '[\"*\"]', '2026-03-18 00:50:07', NULL, '2026-03-17 20:16:05', '2026-03-18 00:50:07'),
(960, 'App\\Models\\User', 199, 'auth_token', 'ffff88c2a6ac2c7e27035a400e7eb8d79acd1b40be59f41aeff51b231dfb333e', '[\"*\"]', NULL, NULL, '2026-03-17 21:50:41', '2026-03-17 21:50:41'),
(961, 'App\\Models\\User', 200, 'auth_token', '2b019c11ebae2fd1f0010371121b8bb972354b9dadc85044f48e0f42f834f869', '[\"*\"]', NULL, NULL, '2026-03-18 00:47:49', '2026-03-18 00:47:49'),
(962, 'App\\Models\\User', 17, 'auth_token', '312d8148bf668419602266badf1fff07e7c26ec2a275becb510bf007b5cd6413', '[\"*\"]', '2026-03-18 00:57:03', NULL, '2026-03-18 00:50:20', '2026-03-18 00:57:03'),
(963, 'App\\Models\\User', 200, 'auth_token', 'acec96d7d4134e4dca26a60975271a75bf34244e00e19d4ba9ccfa1d7ab7177b', '[\"*\"]', '2026-03-18 01:00:16', NULL, '2026-03-18 00:57:53', '2026-03-18 01:00:16'),
(964, 'App\\Models\\User', 201, 'auth_token', '6ed7d753a9a79756ef5e2ec3ceb3782b0d55f291b838044e872f8544c820b7f4', '[\"*\"]', NULL, NULL, '2026-03-18 01:05:11', '2026-03-18 01:05:11'),
(965, 'App\\Models\\User', 37, 'auth_token', '80f624fd8e89121fe88d0d330b2048acdf770671464a890267322ea9a7647221', '[\"*\"]', '2026-03-18 07:20:56', NULL, '2026-03-18 07:20:54', '2026-03-18 07:20:56'),
(966, 'App\\Models\\User', 146, 'auth_token', '534dc4ecf86bf55f735a59038822b3a1dc5b42ad4680304853fea573bf1da528', '[\"*\"]', '2026-03-18 09:38:01', NULL, '2026-03-18 09:32:32', '2026-03-18 09:38:01'),
(967, 'App\\Models\\User', 202, 'auth_token', '02dd3c157b833ac73781db9d7cd39ac9abc24cc16ef1aa91c75f2fe68f2809d4', '[\"*\"]', NULL, NULL, '2026-03-18 09:37:39', '2026-03-18 09:37:39'),
(968, 'App\\Models\\User', 203, 'auth_token', '43cb9a42cdc27396e2749055d6473edd19881a86d39649e9af92cdab0549b1c0', '[\"*\"]', NULL, NULL, '2026-03-18 09:50:18', '2026-03-18 09:50:18'),
(969, 'App\\Models\\User', 204, 'auth_token', '895cc105461c4bf139e9ce6bb64e1059857ef1784031ff7e5ad593193dc14bde', '[\"*\"]', NULL, NULL, '2026-03-18 10:29:33', '2026-03-18 10:29:33'),
(970, 'App\\Models\\User', 205, 'auth_token', '8f294a10c2a9aec759b60fa8f9400df16fd6a00fa1c642120d8d699a239ab0db', '[\"*\"]', NULL, NULL, '2026-03-18 10:48:34', '2026-03-18 10:48:34'),
(971, 'App\\Models\\User', 206, 'auth_token', 'ced3cf8c88846272c8bcd92eeee0c86e84676f85c78123596dd256627622cc15', '[\"*\"]', NULL, NULL, '2026-03-18 10:50:27', '2026-03-18 10:50:27'),
(972, 'App\\Models\\User', 15, 'auth_token', '3a13c3388e8b8cb789c33f3a7a516bac38fe10b1ad981216fceb9ee1644c9eb9', '[\"*\"]', '2026-03-18 17:59:40', NULL, '2026-03-18 10:56:47', '2026-03-18 17:59:40'),
(973, 'App\\Models\\User', 207, 'auth_token', 'a2629fc0c8881855afc0245c88a6463fe466005a18066bd683d0612bb9f46766', '[\"*\"]', NULL, NULL, '2026-03-18 10:59:44', '2026-03-18 10:59:44'),
(974, 'App\\Models\\User', 36, 'auth_token', 'faccf1c0bcdc7365069cf26e11566ab9cc73bc9c199ba2fa1958ac4d1ef83a09', '[\"*\"]', '2026-03-18 11:05:05', NULL, '2026-03-18 11:04:55', '2026-03-18 11:05:05'),
(975, 'App\\Models\\User', 158, 'auth_token', '853af45c8a41b4d8c91e8719f57f422249ad4c4da77131363d74b6e61c5af68a', '[\"*\"]', '2026-03-18 11:35:51', NULL, '2026-03-18 11:35:48', '2026-03-18 11:35:51'),
(976, 'App\\Models\\User', 118, 'auth_token', 'e03e834966bdf4289eeb540b4bdab297b86a66406eb0ecd14c2199911496fd4f', '[\"*\"]', '2026-03-18 11:40:20', NULL, '2026-03-18 11:40:18', '2026-03-18 11:40:20'),
(977, 'App\\Models\\User', 17, 'auth_token', '02da85e1e225a36f89b0475fc54ddc6962755a74e5326b6d6296b438f2c6cba3', '[\"*\"]', '2026-03-18 12:29:49', NULL, '2026-03-18 12:27:50', '2026-03-18 12:29:49'),
(978, 'App\\Models\\User', 17, 'auth_token', '8315e4080175599ba7af67dae4485cf91030db912f1fb590ba5559a47d481e69', '[\"*\"]', '2026-03-18 12:55:41', NULL, '2026-03-18 12:52:41', '2026-03-18 12:55:41'),
(979, 'App\\Models\\User', 208, 'auth_token', '6e25b98516ce90a064e8b58da47b21c54f1771b64b0b319d2fe3a988e21c2591', '[\"*\"]', NULL, NULL, '2026-03-18 12:52:45', '2026-03-18 12:52:45'),
(980, 'App\\Models\\User', 209, 'auth_token', 'd748162a903de53e9498238396299d6ccb1b41fa559cc69d0d4a65961d892358', '[\"*\"]', NULL, NULL, '2026-03-18 13:01:10', '2026-03-18 13:01:10'),
(981, 'App\\Models\\User', 17, 'auth_token', '6f7d2e09292b0a16aba3aa76d8ccb643bc693fabbf0afc5fd6404752d95044c2', '[\"*\"]', '2026-03-18 21:36:20', NULL, '2026-03-18 13:47:20', '2026-03-18 21:36:20'),
(982, 'App\\Models\\User', 210, 'auth_token', '2549650cf4d4f58ae822a4b6619d3af98787a990b73a7396f7dd6d2b51318ca8', '[\"*\"]', NULL, NULL, '2026-03-18 15:19:52', '2026-03-18 15:19:52'),
(983, 'App\\Models\\User', 154, 'auth_token', '8780143e394f696497330ed92a88778a9a17a1e927a874637a58e0ee7e03fa32', '[\"*\"]', '2026-03-18 15:38:37', NULL, '2026-03-18 15:36:08', '2026-03-18 15:38:37'),
(985, 'App\\Models\\User', 211, 'auth_token', 'ed03bd8e2ff20ae988f1d3715bacbb99f7a466b59b65bf971afe586c1d38e0b9', '[\"*\"]', NULL, NULL, '2026-03-18 16:41:41', '2026-03-18 16:41:41'),
(986, 'App\\Models\\User', 212, 'auth_token', 'd9878e130f98eaf6e40058105454f54a48c6dc2ff3e543c08b3c552b997544fb', '[\"*\"]', NULL, NULL, '2026-03-18 18:00:19', '2026-03-18 18:00:19'),
(987, 'App\\Models\\User', 213, 'auth_token', '36f8dced1cf3b16d64a415db564c81c0e2cd5a9f6d21484950e12789cac06184', '[\"*\"]', NULL, NULL, '2026-03-18 18:22:08', '2026-03-18 18:22:08'),
(988, 'App\\Models\\User', 214, 'auth_token', 'e4c1b29e8eb320ae77f7b689b15a38b11ff5eea0e0b7c1774e4e9443db20556e', '[\"*\"]', NULL, NULL, '2026-03-18 19:06:09', '2026-03-18 19:06:09'),
(989, 'App\\Models\\User', 15, 'auth_token', 'aa81079471b00c88a80e3ae6150cd523f4f3cb47fc5d4619cabf976f7904e700', '[\"*\"]', '2026-03-18 22:02:53', NULL, '2026-03-18 19:25:31', '2026-03-18 22:02:53'),
(990, 'App\\Models\\User', 15, 'auth_token', 'ed0023ae59fd924cca947dd4efbe8deb7a82005897002216f756ed23fc4abde3', '[\"*\"]', '2026-03-19 19:37:08', NULL, '2026-03-18 20:16:50', '2026-03-19 19:37:08'),
(991, 'App\\Models\\User', 215, 'auth_token', '29b0c11099ef62f32aad28708914d5b8b53a4c2a9bd8407fd3a73fb588e21150', '[\"*\"]', NULL, NULL, '2026-03-18 21:02:51', '2026-03-18 21:02:51'),
(992, 'App\\Models\\User', 216, 'auth_token', '1d1c48836f0586aa69387a452d17d3fdb19bd99d9df69c46718205abb87b38b3', '[\"*\"]', NULL, NULL, '2026-03-18 21:02:54', '2026-03-18 21:02:54'),
(993, 'App\\Models\\User', 17, 'auth_token', 'cc4aad33d56a2729c4e42f61fa47b254c27c713251554e40bfdee4ae811c1e6a', '[\"*\"]', '2026-03-18 21:48:17', NULL, '2026-03-18 21:36:28', '2026-03-18 21:48:17'),
(994, 'App\\Models\\User', 217, 'auth_token', '3ff04284d07f56b8457e9aafc429aa747dc9ad860f5b516bab0f180eb7a9ecec', '[\"*\"]', NULL, NULL, '2026-03-18 23:00:11', '2026-03-18 23:00:11'),
(995, 'App\\Models\\User', 218, 'auth_token', '21052f02595c93c82bfa6105ba8d569f1d03e3452e45534fe251cf50c587e37f', '[\"*\"]', NULL, NULL, '2026-03-18 23:52:24', '2026-03-18 23:52:24'),
(996, 'App\\Models\\User', 15, 'auth_token', '66773b64957b80e39a5785cfae23a7c62d2cf30e3ab4f0350a63c20098761cbb', '[\"*\"]', '2026-03-19 01:23:14', NULL, '2026-03-19 01:22:52', '2026-03-19 01:23:14'),
(997, 'App\\Models\\User', 15, 'auth_token', '6a7c29bd0c2f77e8ad4fd1a3a7aa9f8bb70ecf0943ec0997aae6fbbd112fc89a', '[\"*\"]', '2026-03-19 01:24:14', NULL, '2026-03-19 01:23:39', '2026-03-19 01:24:14'),
(998, 'App\\Models\\User', 15, 'auth_token', '1aa067a6fcf346fc4765187007b01478a7c07309b3cd4f65e00f1e210b1794e0', '[\"*\"]', '2026-03-19 01:24:35', NULL, '2026-03-19 01:24:21', '2026-03-19 01:24:35'),
(999, 'App\\Models\\User', 15, 'auth_token', 'f0e42a1ee0bf52d4a2f079d2cbdbc57232012b7bc58fcf4a478bf49f02cb3103', '[\"*\"]', '2026-03-19 01:26:14', NULL, '2026-03-19 01:25:53', '2026-03-19 01:26:14'),
(1000, 'App\\Models\\User', 15, 'auth_token', '35eef2736e72bdd4d49f9b086ba026730bc772a19a326024116b9d2d6c7e9684', '[\"*\"]', '2026-03-19 01:26:37', NULL, '2026-03-19 01:26:36', '2026-03-19 01:26:37'),
(1001, 'App\\Models\\User', 15, 'auth_token', '543ec85c431af52fab3854565e7376c84af634449ce4c70b7c6cef36b581cf8d', '[\"*\"]', '2026-03-19 01:26:52', NULL, '2026-03-19 01:26:50', '2026-03-19 01:26:52'),
(1002, 'App\\Models\\User', 15, 'auth_token', '08f1acb579b10744260c0670faca29e17f6e357b10582d82c854f8444b4429be', '[\"*\"]', '2026-03-19 01:29:02', NULL, '2026-03-19 01:28:49', '2026-03-19 01:29:02'),
(1003, 'App\\Models\\User', 15, 'auth_token', 'e1bf6611fb9fded36e380c4e2b73b31f36a3d6fefb377e6e512ced51c85c71f3', '[\"*\"]', '2026-03-19 01:34:37', NULL, '2026-03-19 01:29:11', '2026-03-19 01:34:37'),
(1004, 'App\\Models\\User', 15, 'auth_token', 'd9068ebcec76228ca8800ea04273013a8a155d6a08a7bdf1035210704d0bb496', '[\"*\"]', '2026-03-19 01:35:09', NULL, '2026-03-19 01:35:08', '2026-03-19 01:35:09'),
(1005, 'App\\Models\\User', 15, 'auth_token', 'a3a84e1e84bcbb447c6159ff2c36cabb52b4be87e3bfe6ff5cf7b87dcb2c8f57', '[\"*\"]', '2026-03-19 01:35:30', NULL, '2026-03-19 01:35:19', '2026-03-19 01:35:30'),
(1006, 'App\\Models\\User', 15, 'auth_token', 'dbd2a31218fa1f9f285fb6837008cac7ca0163f9ce52083a8c68266733053106', '[\"*\"]', '2026-03-19 09:17:33', NULL, '2026-03-19 09:16:47', '2026-03-19 09:17:33'),
(1007, 'App\\Models\\User', 15, 'auth_token', '196edd789b45aa6152c7da57ba2de9cafb8372617eee558802cd543504a6486a', '[\"*\"]', '2026-03-22 12:23:03', NULL, '2026-03-19 10:25:17', '2026-03-22 12:23:03'),
(1008, 'App\\Models\\User', 219, 'auth_token', 'bb4ff96531eb011ecb90c4e932c37bcd38af2fd2fcacefd964e3e93659222e7d', '[\"*\"]', NULL, NULL, '2026-03-19 10:34:38', '2026-03-19 10:34:38'),
(1009, 'App\\Models\\User', 220, 'auth_token', 'e5ef47858149e8cc2ae9a3690badb47f33fbc6f4dd8569048302ddb7fad59339', '[\"*\"]', NULL, NULL, '2026-03-19 14:52:38', '2026-03-19 14:52:38'),
(1010, 'App\\Models\\User', 92, 'auth_token', '81b2b5c998dcd60f61344f6c9dc4f0589e46d5bbe397e0f3736cc1f2f45f0f8b', '[\"*\"]', '2026-03-19 15:09:38', NULL, '2026-03-19 15:09:35', '2026-03-19 15:09:38'),
(1011, 'App\\Models\\User', 92, 'auth_token', 'b9d859e7ce86f167cee3c7c32381e2657601b8141b1900b122d81ad1351f35f8', '[\"*\"]', '2026-03-19 15:10:27', NULL, '2026-03-19 15:10:25', '2026-03-19 15:10:27'),
(1012, 'App\\Models\\User', 172, 'auth_token', '1e3b2f8152a0c4715faebb4b8c3e2606042ca39d95984cc93453e7bde85d84e5', '[\"*\"]', '2026-03-19 15:31:07', NULL, '2026-03-19 15:29:52', '2026-03-19 15:31:07'),
(1013, 'App\\Models\\User', 221, 'auth_token', '06e11af341967f4f997200640795661d913fbd9bc480e59b293cfd8a149bac03', '[\"*\"]', NULL, NULL, '2026-03-19 15:33:27', '2026-03-19 15:33:27'),
(1014, 'App\\Models\\User', 17, 'auth_token', 'e9eb593559aef4aef5ee6291fa062a71089797e9711ecc40464bc6eab827d93d', '[\"*\"]', '2026-03-19 15:44:40', NULL, '2026-03-19 15:35:07', '2026-03-19 15:44:40'),
(1015, 'App\\Models\\User', 17, 'auth_token', 'ca8ccde1ebc2ea1db066142cde4f51b039f703868c1bd2e256c6cda6c2fb0fe5', '[\"*\"]', '2026-03-19 15:44:51', NULL, '2026-03-19 15:44:50', '2026-03-19 15:44:51'),
(1016, 'App\\Models\\User', 17, 'auth_token', '31516a0bc9ea733b5e0bbd3ad98f6323d55216252c7453bb1b2894899348ae41', '[\"*\"]', '2026-03-19 15:45:47', NULL, '2026-03-19 15:45:46', '2026-03-19 15:45:47'),
(1017, 'App\\Models\\User', 17, 'auth_token', 'c0052e2be3f2ebf042b7caa8e9fe3d794bc39d53ddeb99696e7586a2cbd12e82', '[\"*\"]', '2026-03-19 19:55:43', NULL, '2026-03-19 15:54:01', '2026-03-19 19:55:43'),
(1018, 'App\\Models\\User', 32, 'auth_token', '8bb5b03656785fa0873e67809ea7ba47b169bb56d0f2bea45cce562d4f9f23d5', '[\"*\"]', '2026-03-19 18:51:54', NULL, '2026-03-19 18:51:32', '2026-03-19 18:51:54'),
(1019, 'App\\Models\\User', 222, 'auth_token', '525988f7b1975c1e958ac8541aaaf7f455e7ec4102a7dd05c96688f44e4495da', '[\"*\"]', NULL, NULL, '2026-03-19 19:27:53', '2026-03-19 19:27:53'),
(1020, 'App\\Models\\User', 17, 'auth_token', '1e1cab805f2a6dea5fb4fc0e0d5a3565314431428b7200930fc9a2ccc04c79f7', '[\"*\"]', '2026-03-19 20:47:05', NULL, '2026-03-19 19:55:59', '2026-03-19 20:47:05'),
(1021, 'App\\Models\\User', 15, 'auth_token', '68e57fadeb40104ca6aeb5a252e2c27cd65010dd15c36663e46107fe1a9aceeb', '[\"*\"]', '2026-03-19 19:59:43', NULL, '2026-03-19 19:59:42', '2026-03-19 19:59:43'),
(1022, 'App\\Models\\User', 223, 'auth_token', '90fb065a3347b4fb7cd306cd7540813b3583821fa596a8316d2100bf3bb2e651', '[\"*\"]', NULL, NULL, '2026-03-19 20:06:13', '2026-03-19 20:06:13'),
(1023, 'App\\Models\\User', 15, 'auth_token', '968ec71eb872f01c2b7bbf5368c20cf8bd3b5a1a9e4e9ce17f66788bd8a7b32d', '[\"*\"]', '2026-03-19 20:20:47', NULL, '2026-03-19 20:13:25', '2026-03-19 20:20:47'),
(1024, 'App\\Models\\User', 224, 'auth_token', 'd948fbd0d2b9ef893cdf7ac72ae953615175f962b6fe678345c7ff0575a47939', '[\"*\"]', NULL, NULL, '2026-03-19 20:17:01', '2026-03-19 20:17:01'),
(1025, 'App\\Models\\User', 225, 'auth_token', '9382722d222ceb4afdb2cdc5d1930d1a69a1eaaa8d7a1c19769014350d880750', '[\"*\"]', NULL, NULL, '2026-03-19 20:32:51', '2026-03-19 20:32:51'),
(1026, 'App\\Models\\User', 226, 'auth_token', '20067183bc6a3c5c2d9bf00d5502c55c82be95091a8e077fd52a9c485a23408e', '[\"*\"]', NULL, NULL, '2026-03-19 20:35:24', '2026-03-19 20:35:24'),
(1027, 'App\\Models\\User', 227, 'auth_token', '638f17ba62569e9991b12253551ab57b86cc44424bdf2abe34b2d7930233b757', '[\"*\"]', NULL, NULL, '2026-03-19 20:44:02', '2026-03-19 20:44:02'),
(1028, 'App\\Models\\User', 228, 'auth_token', 'e121dd1146465f585d4455b9b11147749a449967feefe9142b19ce75d858a58b', '[\"*\"]', NULL, NULL, '2026-03-19 20:44:41', '2026-03-19 20:44:41'),
(1029, 'App\\Models\\User', 17, 'auth_token', '59ddf76e3275d0c5f3f1b64a747988084c0c3f86043d25120d2fed59cc4fbbac', '[\"*\"]', '2026-03-19 20:48:52', NULL, '2026-03-19 20:47:30', '2026-03-19 20:48:52'),
(1030, 'App\\Models\\User', 229, 'auth_token', '33754eb89a8a72614a8bde3a6690ec52cfccdcb032656330bd592a5fb96ae485', '[\"*\"]', NULL, NULL, '2026-03-19 20:50:36', '2026-03-19 20:50:36'),
(1031, 'App\\Models\\User', 230, 'auth_token', '4751949424ff49ae0c405a63f2c324baf58607f93ccdfa7efdd2394ddc452fa8', '[\"*\"]', NULL, NULL, '2026-03-19 20:52:27', '2026-03-19 20:52:27'),
(1032, 'App\\Models\\User', 17, 'auth_token', 'ccf0526f987130bc16d15ca2cdce1dc21f23e6fba1ffdf588764ab486c7b0b3b', '[\"*\"]', '2026-03-19 21:03:27', NULL, '2026-03-19 21:02:23', '2026-03-19 21:03:27'),
(1033, 'App\\Models\\User', 216, 'auth_token', '51cd99fe43eb572e8bc73a162e6c7d71b3ccef0c2a19249c7f7b2f1dbb09d030', '[\"*\"]', NULL, NULL, '2026-03-20 00:59:41', '2026-03-20 00:59:41'),
(1034, 'App\\Models\\User', 231, 'auth_token', '5e9067f6d6152753af0b7cfb8867ed3904e39bdccf36ebbd13302b74ad9dcc04', '[\"*\"]', NULL, NULL, '2026-03-20 15:36:44', '2026-03-20 15:36:44'),
(1035, 'App\\Models\\User', 15, 'auth_token', 'cae5010a516ca8f345a0d2f970cc045d2f31e7a5d463480b52e72cb10dbdf790', '[\"*\"]', '2026-03-21 08:19:09', NULL, '2026-03-20 22:27:43', '2026-03-21 08:19:09'),
(1036, 'App\\Models\\User', 15, 'auth_token', '903e948526995f95649e336d105c1aa6413c2607d46f564b989555bc8539688e', '[\"*\"]', '2026-03-23 19:08:21', NULL, '2026-03-21 09:33:11', '2026-03-23 19:08:21'),
(1037, 'App\\Models\\User', 15, 'auth_token', '596255769329eb869894c80266e621834d15b1bff0257b7467fa343bc3d87b7a', '[\"*\"]', '2026-03-21 10:44:28', NULL, '2026-03-21 10:16:23', '2026-03-21 10:44:28'),
(1038, 'App\\Models\\User', 232, 'auth_token', 'fa48356b43e1929d16ea6a836b730120694f153fe2dc1c3c3c210a937c213775', '[\"*\"]', NULL, NULL, '2026-03-21 18:30:43', '2026-03-21 18:30:43'),
(1039, 'App\\Models\\User', 15, 'auth_token', '5bbcc7e2122df81894c39551f0f500985cd3cd94598a997a89efcc26c3d85961', '[\"*\"]', '2026-03-21 23:35:56', NULL, '2026-03-21 21:01:16', '2026-03-21 23:35:56'),
(1040, 'App\\Models\\User', 233, 'auth_token', '91a80e9f2fd8c18170b16cf1ac7094d1f33e1202ff99006fc9ab6d7057459605', '[\"*\"]', NULL, NULL, '2026-03-21 21:59:25', '2026-03-21 21:59:25'),
(1041, 'App\\Models\\User', 234, 'auth_token', 'ab0635c63206882e899518d4758224bb4ad93cd42e8b43a9c37eb5f4c7674803', '[\"*\"]', NULL, NULL, '2026-03-21 23:50:56', '2026-03-21 23:50:56'),
(1042, 'App\\Models\\User', 15, 'auth_token', 'd85d62d91fae93c21e8449d587bbdaca7f2a4ca293bc37817fd0dec496e00b0d', '[\"*\"]', '2026-03-21 23:51:45', NULL, '2026-03-21 23:51:05', '2026-03-21 23:51:45'),
(1043, 'App\\Models\\User', 15, 'auth_token', 'd6400709289800232ef2766837347b164b0448a451e82eac9a7cdb96408a18f1', '[\"*\"]', '2026-03-22 00:09:00', NULL, '2026-03-21 23:52:20', '2026-03-22 00:09:00'),
(1044, 'App\\Models\\User', 17, 'auth_token', 'f5e5ad35d991c82b1b91db02691fd44ea1778ca4801aa9a31c7fcd14343823c6', '[\"*\"]', '2026-03-22 00:33:14', NULL, '2026-03-22 00:33:13', '2026-03-22 00:33:14'),
(1045, 'App\\Models\\User', 15, 'auth_token', '4118bc5122c06c1cf7a55f67d049f071f0f0180732d687b72ec42d2b99efe75e', '[\"*\"]', '2026-03-22 01:10:22', NULL, '2026-03-22 01:05:35', '2026-03-22 01:10:22'),
(1046, 'App\\Models\\User', 15, 'auth_token', '6d76883f7c84f20e00fd594c3b239495e50ccd27588f1f7190872a0f75875e01', '[\"*\"]', '2026-03-22 08:01:25', NULL, '2026-03-22 08:01:23', '2026-03-22 08:01:25'),
(1047, 'App\\Models\\User', 15, 'auth_token', 'a3596200c1d40faf7fba7c8bc6f4915c6bd48eec0e8196bcbcacd3da5cc056ce', '[\"*\"]', '2026-03-22 08:45:45', NULL, '2026-03-22 08:03:45', '2026-03-22 08:45:45'),
(1048, 'App\\Models\\User', 235, 'auth_token', 'fd4f0f6d143347683ac27e1138a0b8517c3c28fa0403d6f85e38a19a85b253fd', '[\"*\"]', NULL, NULL, '2026-03-22 09:05:24', '2026-03-22 09:05:24'),
(1049, 'App\\Models\\User', 15, 'auth_token', '617ef02a8e3cfb6cec1578c1ff062311654244f0c978507a41cba4dd73d0ea41', '[\"*\"]', '2026-03-22 09:22:01', NULL, '2026-03-22 09:18:10', '2026-03-22 09:22:01'),
(1050, 'App\\Models\\User', 111, 'auth_token', '5c611361223f615c52892cf4297509e3c1238f4f29c7c3b00069ffaad22a1958', '[\"*\"]', '2026-03-22 09:24:15', NULL, '2026-03-22 09:23:17', '2026-03-22 09:24:15'),
(1051, 'App\\Models\\User', 154, 'auth_token', '829c658fa7f76fe92d5848af0a976ea1a01dd42c17369bba5cfa27c3907e21be', '[\"*\"]', '2026-03-22 09:33:08', NULL, '2026-03-22 09:32:46', '2026-03-22 09:33:08'),
(1052, 'App\\Models\\User', 236, 'auth_token', 'cfd8b2308f25a5c71cc52b9684dc68099f13ed42148d30641d3c6d713eb359e5', '[\"*\"]', NULL, NULL, '2026-03-22 09:39:49', '2026-03-22 09:39:49'),
(1053, 'App\\Models\\User', 111, 'auth_token', '7474a12bf0c85ce4abf758936ae20e6dca75ce54727030d6c96ae5fddc134df1', '[\"*\"]', '2026-03-22 09:40:42', NULL, '2026-03-22 09:40:40', '2026-03-22 09:40:42'),
(1054, 'App\\Models\\User', 237, 'auth_token', '6edb5c3c0f967bd9988b92a0566cd33b20a38d2c63d326a56c6a62a3e03b730b', '[\"*\"]', NULL, NULL, '2026-03-22 09:43:22', '2026-03-22 09:43:22'),
(1055, 'App\\Models\\User', 238, 'auth_token', 'bc66b25cfd39108f6c263066bba881fcb3b28bc37aa463097fc7390c0fbf3275', '[\"*\"]', NULL, NULL, '2026-03-22 09:54:15', '2026-03-22 09:54:15'),
(1056, 'App\\Models\\User', 239, 'auth_token', '497fb4781789b7a719ced461f4bbf63b8e946ad2cd33bba60edd60fe7e7c72ef', '[\"*\"]', NULL, NULL, '2026-03-22 09:58:53', '2026-03-22 09:58:53'),
(1057, 'App\\Models\\User', 240, 'auth_token', '92947a9194969bcce20cd72c14765ae7dbdb8e7ac2356d4f4972faa0f7caf733', '[\"*\"]', NULL, NULL, '2026-03-22 09:59:09', '2026-03-22 09:59:09'),
(1058, 'App\\Models\\User', 15, 'auth_token', '5f45146609287a11cb3a7a3700e61248414df6a985ae28ca1dcbff12e0bda9c5', '[\"*\"]', '2026-03-22 10:23:58', NULL, '2026-03-22 10:02:06', '2026-03-22 10:23:58'),
(1059, 'App\\Models\\User', 241, 'auth_token', 'e42b6e0481e980632c3123b10ca16315100d2be968c1e225cd3b5f21af99875d', '[\"*\"]', NULL, NULL, '2026-03-22 10:02:46', '2026-03-22 10:02:46'),
(1060, 'App\\Models\\User', 242, 'auth_token', '381e48ff1d06b482f072beec6b0db8bd946bf30a2669ae0f7dcece76dee44e3a', '[\"*\"]', NULL, NULL, '2026-03-22 10:05:39', '2026-03-22 10:05:39'),
(1061, 'App\\Models\\User', 17, 'auth_token', 'fa176baef43e90b622039267897b2cfb6e78a1e90c9b27985433e2c05ae4cd9b', '[\"*\"]', '2026-03-22 10:07:50', NULL, '2026-03-22 10:06:45', '2026-03-22 10:07:50'),
(1062, 'App\\Models\\User', 243, 'auth_token', '90f4026276bfa7e393a05e756d57801f478cb232a02624ccd5b97ff429653e3a', '[\"*\"]', NULL, NULL, '2026-03-22 10:14:16', '2026-03-22 10:14:16'),
(1063, 'App\\Models\\User', 182, 'auth_token', '1a04ee3abf95d401195b06bc4ed005702fe974ce1b63d6104ff20317759b53fa', '[\"*\"]', '2026-03-22 10:14:21', NULL, '2026-03-22 10:14:16', '2026-03-22 10:14:21'),
(1064, 'App\\Models\\User', 182, 'auth_token', '8141f9c34f36a021011726764d1b8bdc2af0cfeb1d182b0fd9fffc95a18be6da', '[\"*\"]', '2026-03-22 10:20:46', NULL, '2026-03-22 10:15:53', '2026-03-22 10:20:46'),
(1065, 'App\\Models\\User', 244, 'auth_token', '2c0145f243b6bbb386613227c1f2c2c82d607e0252502108b823b08ee35b3430', '[\"*\"]', NULL, NULL, '2026-03-22 10:18:18', '2026-03-22 10:18:18'),
(1067, 'App\\Models\\User', 245, 'auth_token', '55e7278d020c2924ceecef4a39952fc80b8e491b17c4b3eb52d52de0d08382b3', '[\"*\"]', NULL, NULL, '2026-03-22 10:21:57', '2026-03-22 10:21:57'),
(1068, 'App\\Models\\User', 15, 'auth_token', 'bca784b6d768b9c7b6f7b28e0f2191a1626064154567b1c71fa8aba021a3f50f', '[\"*\"]', '2026-03-22 11:01:42', NULL, '2026-03-22 10:24:59', '2026-03-22 11:01:42'),
(1069, 'App\\Models\\User', 246, 'auth_token', 'd91b1e7a1d5550a26d46c1ab141cec3af2ccd74cae647af145fe5de68651cbdb', '[\"*\"]', NULL, NULL, '2026-03-22 10:26:23', '2026-03-22 10:26:23'),
(1070, 'App\\Models\\User', 15, 'auth_token', '30ca49e198ca602f960b59c7d7e954b4bdef16acd9d006ee58444d058c7d078f', '[\"*\"]', '2026-03-22 10:30:55', NULL, '2026-03-22 10:27:02', '2026-03-22 10:30:55'),
(1071, 'App\\Models\\User', 247, 'auth_token', '2a630fbd011a2abad36b64db1c0bbf90a0ca9d0659d393b409299abc031ba261', '[\"*\"]', NULL, NULL, '2026-03-22 10:34:42', '2026-03-22 10:34:42'),
(1072, 'App\\Models\\User', 248, 'auth_token', 'e6e11918cbdb2cd9bc6ebc5979b8753f5c412e64ba11287ec01808ff168ed9bb', '[\"*\"]', NULL, NULL, '2026-03-22 10:43:21', '2026-03-22 10:43:21'),
(1073, 'App\\Models\\User', 249, 'auth_token', '2ff552d5e87c70c521b30538d7aabf23943b7baf6b386c79a62494aca58ee018', '[\"*\"]', NULL, NULL, '2026-03-22 10:46:51', '2026-03-22 10:46:51'),
(1074, 'App\\Models\\User', 246, 'auth_token', '695f5fb6746845128e960bb244008000f31d097725f996c261bf691b78ba95ab', '[\"*\"]', '2026-03-22 10:50:58', NULL, '2026-03-22 10:49:56', '2026-03-22 10:50:58'),
(1075, 'App\\Models\\User', 250, 'auth_token', '0d78efcbba200cb88f17081ffcd8e6f5459f014d6d3402332aed6e0f5f0cf566', '[\"*\"]', NULL, NULL, '2026-03-22 10:54:21', '2026-03-22 10:54:21'),
(1076, 'App\\Models\\User', 15, 'auth_token', 'cd369b140872bea5aceebb2c33775c89a553a41193f7ff117fac53f20323118f', '[\"*\"]', '2026-03-22 14:21:11', NULL, '2026-03-22 11:01:52', '2026-03-22 14:21:11'),
(1077, 'App\\Models\\User', 244, 'auth_token', '6947348dacf766975013bd9bca49a753d6539b6431b917c9567b0a849202e94b', '[\"*\"]', '2026-03-22 11:34:40', NULL, '2026-03-22 11:33:53', '2026-03-22 11:34:40'),
(1078, 'App\\Models\\User', 246, 'auth_token', '9a5b642d0bfedc16c80ed0b028ee7d5e0020eef5079aa0ebf29a86d484d33a21', '[\"*\"]', '2026-03-22 11:52:29', NULL, '2026-03-22 11:52:27', '2026-03-22 11:52:29'),
(1079, 'App\\Models\\User', 251, 'auth_token', 'aa0ec5300f9e145f50e97bd41e6f9eb8bfde4c5b9ecd8cadd788e83d95180db8', '[\"*\"]', NULL, NULL, '2026-03-22 12:19:58', '2026-03-22 12:19:58'),
(1080, 'App\\Models\\User', 252, 'auth_token', '1a60f6a95da5b43010793be6beca8ca117e811682c931283f9252c220a4c30cd', '[\"*\"]', NULL, NULL, '2026-03-22 12:20:53', '2026-03-22 12:20:53'),
(1081, 'App\\Models\\User', 253, 'auth_token', '68b7c2e51f41f72c9a3835477fd3932f9d0eef93e691215834a6a16ce01d3ffa', '[\"*\"]', NULL, NULL, '2026-03-22 12:29:46', '2026-03-22 12:29:46'),
(1082, 'App\\Models\\User', 254, 'auth_token', 'dddc5699bde8bda7ef1c9d6d6dc71bd8820a0c2883983da0655e23e219721d95', '[\"*\"]', NULL, NULL, '2026-03-22 12:41:41', '2026-03-22 12:41:41'),
(1083, 'App\\Models\\User', 255, 'auth_token', '8ba9665e6f6b47cf0f8f7a4133ac0a122809bbd7b9935ece42b0a727cb50488a', '[\"*\"]', NULL, NULL, '2026-03-22 12:44:32', '2026-03-22 12:44:32'),
(1084, 'App\\Models\\User', 256, 'auth_token', '13e48f8ae51872db5541fea95571e868e5f9edc2c3b6766c3671724d36a13cbd', '[\"*\"]', NULL, NULL, '2026-03-22 12:45:16', '2026-03-22 12:45:16'),
(1085, 'App\\Models\\User', 163, 'auth_token', '38e8fa86481c9724a6320d9f1c8cbe5a707fc476ea1728f897a76ab94ab59f3a', '[\"*\"]', '2026-03-22 12:46:18', NULL, '2026-03-22 12:45:34', '2026-03-22 12:46:18'),
(1086, 'App\\Models\\User', 257, 'auth_token', '40c8770893830cb58e8e6b3eae613185c10c5f1049b23d72135923752d18238d', '[\"*\"]', NULL, NULL, '2026-03-22 12:46:46', '2026-03-22 12:46:46'),
(1087, 'App\\Models\\User', 158, 'auth_token', 'e81696f14deca4f8bd6656a84a92bff1d8aafe5fc5bf0cdd97fcaeea166e061c', '[\"*\"]', NULL, NULL, '2026-03-22 12:47:26', '2026-03-22 12:47:26'),
(1088, 'App\\Models\\User', 258, 'auth_token', '2e21732b3c07381713a6358bb918398aef3ba0784fd8e8f32fdbd484a7b88fc3', '[\"*\"]', NULL, NULL, '2026-03-22 12:49:36', '2026-03-22 12:49:36'),
(1089, 'App\\Models\\User', 259, 'auth_token', '60495a5c09ad357fa9522b62160145a7c2e209767b15c221eea3eafd017d6a20', '[\"*\"]', NULL, NULL, '2026-03-22 12:51:46', '2026-03-22 12:51:46'),
(1090, 'App\\Models\\User', 260, 'auth_token', 'ac7ab5788ae9f1e5465125cf1453b20d2e6891e406547ba68a2fe79a74982e87', '[\"*\"]', NULL, NULL, '2026-03-22 12:56:17', '2026-03-22 12:56:17'),
(1091, 'App\\Models\\User', 261, 'auth_token', '931ec691571b2603133f9b846cf98eccd04145e57ff0ccd2754049ce9ceb5d2c', '[\"*\"]', NULL, NULL, '2026-03-22 12:57:14', '2026-03-22 12:57:14'),
(1092, 'App\\Models\\User', 262, 'auth_token', 'cd663bfd0935b13750ce755fd72a614c058c57648b59addd8ca7411008309dc7', '[\"*\"]', NULL, NULL, '2026-03-22 13:00:44', '2026-03-22 13:00:44');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1093, 'App\\Models\\User', 263, 'auth_token', '174596bfe0670b2731d05c8d4d886840c45ee2141515c95220469fd8210d0281', '[\"*\"]', NULL, NULL, '2026-03-22 13:02:59', '2026-03-22 13:02:59'),
(1094, 'App\\Models\\User', 264, 'auth_token', '94168a6404a12cb2502a00662c7aa6a6a22df8a092eb467a0107af00fb7d3f7a', '[\"*\"]', NULL, NULL, '2026-03-22 13:04:07', '2026-03-22 13:04:07'),
(1095, 'App\\Models\\User', 265, 'auth_token', '6db0b2fe0a6bb990cd3044c5caba28effabd076d0275613a4070df4ae5ef6ea7', '[\"*\"]', NULL, NULL, '2026-03-22 13:10:25', '2026-03-22 13:10:25'),
(1096, 'App\\Models\\User', 266, 'auth_token', '7243eccc13307c61ef3ba73e6082e063bdfd7918a2bde9c1fb93149ba743c3cb', '[\"*\"]', NULL, NULL, '2026-03-22 13:11:08', '2026-03-22 13:11:08'),
(1097, 'App\\Models\\User', 267, 'auth_token', '7068984518f673cc70c5b21fb6292c97482e6e29cfba25579bb4f369102bdfb6', '[\"*\"]', NULL, NULL, '2026-03-22 13:12:05', '2026-03-22 13:12:05'),
(1098, 'App\\Models\\User', 268, 'auth_token', '6fa158a74fa5ee0ddfc1560861acd3021ffe41a46abfd8c8d2bbec53da217c63', '[\"*\"]', NULL, NULL, '2026-03-22 13:14:32', '2026-03-22 13:14:32'),
(1099, 'App\\Models\\User', 269, 'auth_token', '6717d225d111bccdd58e752cd17898de23d7d2c3a11aa042276408073a841e00', '[\"*\"]', NULL, NULL, '2026-03-22 13:16:53', '2026-03-22 13:16:53'),
(1100, 'App\\Models\\User', 270, 'auth_token', '44d8dacda5df1bd4e70e720dc150aa6fe8272721bd5a0b0c9616206c05643530', '[\"*\"]', NULL, NULL, '2026-03-22 13:21:52', '2026-03-22 13:21:52'),
(1101, 'App\\Models\\User', 271, 'auth_token', 'd6df96049f924bfb942ddfc324f0231039b80405aa8c663ec9217de27825e490', '[\"*\"]', NULL, NULL, '2026-03-22 13:25:16', '2026-03-22 13:25:16'),
(1102, 'App\\Models\\User', 216, 'auth_token', 'f92b8b22382876f0d768714be52f3e9479e06518d3c7013e7615860bdb3421d6', '[\"*\"]', '2026-03-22 13:32:43', NULL, '2026-03-22 13:28:52', '2026-03-22 13:32:43'),
(1103, 'App\\Models\\User', 37, 'auth_token', 'a5f7092846f9ba734279dac138b30ff8e2e00b34a880d73b662aff6452a50073', '[\"*\"]', '2026-03-22 13:37:38', NULL, '2026-03-22 13:33:52', '2026-03-22 13:37:38'),
(1104, 'App\\Models\\User', 272, 'auth_token', '41dea130baed159ec78b809a92b6978b4b90643445418c86d5813ec48bcf0b93', '[\"*\"]', NULL, NULL, '2026-03-22 14:12:45', '2026-03-22 14:12:45'),
(1105, 'App\\Models\\User', 273, 'auth_token', '6cfe8b7a6f6926ae525276bcbc928867ace82ec2ce93792f04fc932f21ebeedb', '[\"*\"]', NULL, NULL, '2026-03-22 14:19:44', '2026-03-22 14:19:44'),
(1106, 'App\\Models\\User', 15, 'auth_token', '10bd7154f30cac25e6250070ca19d74e8ea5b81bb5f57d862c7b7f9d0069fa18', '[\"*\"]', '2026-03-22 15:29:00', NULL, '2026-03-22 14:22:42', '2026-03-22 15:29:00'),
(1107, 'App\\Models\\User', 202, 'auth_token', '7c37db992d8beaf137096b34295b8f4fa91abd1149c394beb6b1a36e10af5086', '[\"*\"]', '2026-03-22 14:42:08', NULL, '2026-03-22 14:38:21', '2026-03-22 14:42:08'),
(1108, 'App\\Models\\User', 274, 'auth_token', '7b44c1ed33e19bf2290c0ea1b1cde8646154b02cd60f9419b677b84f47c66f7c', '[\"*\"]', NULL, NULL, '2026-03-22 14:51:54', '2026-03-22 14:51:54'),
(1109, 'App\\Models\\User', 275, 'auth_token', 'e3fd5afcdf4f5b2994f102fe8643a50f083176fd9cf10090fa931cdfdef8cd10', '[\"*\"]', NULL, NULL, '2026-03-22 15:10:29', '2026-03-22 15:10:29'),
(1110, 'App\\Models\\User', 276, 'auth_token', '1e2f4b0d0641c086c65c0d1ba0168fa28e31d00c46457bdbdb7d2927694ffe2f', '[\"*\"]', NULL, NULL, '2026-03-22 15:12:07', '2026-03-22 15:12:07'),
(1111, 'App\\Models\\User', 277, 'auth_token', '2b231468d8cb54939accda28131a29c4ec61a371331d3d2ea38b864636f24cdd', '[\"*\"]', NULL, NULL, '2026-03-22 15:13:59', '2026-03-22 15:13:59'),
(1112, 'App\\Models\\User', 278, 'auth_token', '4c59cfde7793b8d4f66ccd774878973514f8ecbf9de9d731cfdbabdeff1b7978', '[\"*\"]', NULL, NULL, '2026-03-22 15:14:25', '2026-03-22 15:14:25'),
(1113, 'App\\Models\\User', 279, 'auth_token', '9d1d2bb276ea3f28e70a8c0cb8dd6d8a1d540b884f0abe109fccd138e8f36350', '[\"*\"]', NULL, NULL, '2026-03-22 15:21:46', '2026-03-22 15:21:46'),
(1114, 'App\\Models\\User', 280, 'auth_token', '6eae8fb692e84499b1929d03d93b1a8d6cc6d4e6917e525be7584a863a5838ec', '[\"*\"]', NULL, NULL, '2026-03-22 15:26:46', '2026-03-22 15:26:46'),
(1115, 'App\\Models\\User', 240, 'auth_token', '743acc62f075f1b92cfd6f5d5c6ff007937e1cfe9cdff5e899b3b31195d259b9', '[\"*\"]', '2026-03-22 15:32:38', NULL, '2026-03-22 15:32:03', '2026-03-22 15:32:38'),
(1116, 'App\\Models\\User', 164, 'auth_token', 'c82078fd97f93c04e875f311492afd164f287fe2a4cbf9a6cebf663015507759', '[\"*\"]', '2026-03-22 15:36:09', NULL, '2026-03-22 15:35:56', '2026-03-22 15:36:09'),
(1117, 'App\\Models\\User', 15, 'auth_token', '5a3211c3875ce3335baf531b53816aab2c6617884d70095e0497d816076c4fe3', '[\"*\"]', '2026-03-22 16:07:41', NULL, '2026-03-22 15:36:12', '2026-03-22 16:07:41'),
(1118, 'App\\Models\\User', 281, 'auth_token', 'a634f3e70fd07857014c76b9875a63ca5ffa6d8b9517ed488e9522703a8a76cd', '[\"*\"]', NULL, NULL, '2026-03-22 15:41:28', '2026-03-22 15:41:28'),
(1119, 'App\\Models\\User', 282, 'auth_token', '177b2851f29f3b8fa551f3988a8613cdcd2cd3172231ab2860ad87f49e7b2b04', '[\"*\"]', NULL, NULL, '2026-03-22 15:43:26', '2026-03-22 15:43:26'),
(1120, 'App\\Models\\User', 17, 'auth_token', '55b190daf5fa93e35b11c7b52ec87a512cdc6da260a2a0466f02d5c98e5a2aec', '[\"*\"]', '2026-03-22 16:01:50', NULL, '2026-03-22 16:00:56', '2026-03-22 16:01:50'),
(1121, 'App\\Models\\User', 283, 'auth_token', '23a52e2526acaabf6eac4bf750833d1a26a709144e1fcc2e4d144147b4c16dbc', '[\"*\"]', NULL, NULL, '2026-03-22 16:04:19', '2026-03-22 16:04:19'),
(1122, 'App\\Models\\User', 284, 'auth_token', '00e88923611b5caea6ef7a5d4c9a13a407eb9fe7dcc64f6ea39fa2297369ed54', '[\"*\"]', NULL, NULL, '2026-03-22 16:06:38', '2026-03-22 16:06:38'),
(1123, 'App\\Models\\User', 17, 'auth_token', '258841bd08124c30b967ab246d8661ab09b24fe44851f6140677bb5488365cc0', '[\"*\"]', '2026-03-22 16:07:57', NULL, '2026-03-22 16:07:40', '2026-03-22 16:07:57'),
(1124, 'App\\Models\\User', 17, 'auth_token', 'fcb615882282d250736d9b691a057c5b2a60d16b91091be95064879b0b6b4e97', '[\"*\"]', '2026-03-22 16:08:45', NULL, '2026-03-22 16:08:12', '2026-03-22 16:08:45'),
(1125, 'App\\Models\\User', 285, 'auth_token', 'd6dddd8033deedcd45a7187bcb927df6ea452a854aa024baf0b96c2f1cc7ccb1', '[\"*\"]', NULL, NULL, '2026-03-22 16:09:42', '2026-03-22 16:09:42'),
(1126, 'App\\Models\\User', 286, 'auth_token', '0bfb7ffbd270bb99d142f9824196019be719dffa2d09a5643e056f13c670c37c', '[\"*\"]', NULL, NULL, '2026-03-22 16:31:50', '2026-03-22 16:31:50'),
(1127, 'App\\Models\\User', 287, 'auth_token', 'c25665e5f5e52baecea0af5e8b06db05a5e21f4320c557f2f1355cf748513c66', '[\"*\"]', NULL, NULL, '2026-03-22 16:40:21', '2026-03-22 16:40:21'),
(1128, 'App\\Models\\User', 288, 'auth_token', 'af07ab95e354fbb89b387e81dba4ededf52ae6970fcfdaaab61dabd7e80dee5c', '[\"*\"]', NULL, NULL, '2026-03-22 16:42:10', '2026-03-22 16:42:10'),
(1129, 'App\\Models\\User', 289, 'auth_token', '31ee906e99451c210a41202c23b8d2a8d8e22fa0fff229079f9beace6aeedbb0', '[\"*\"]', NULL, NULL, '2026-03-22 16:49:18', '2026-03-22 16:49:18'),
(1130, 'App\\Models\\User', 290, 'auth_token', '6f99e2517e78aa88fd8eb8a10096ed708b8057ebc7b9028dbb38fc3e2fc7dc78', '[\"*\"]', NULL, NULL, '2026-03-22 19:31:12', '2026-03-22 19:31:12'),
(1131, 'App\\Models\\User', 15, 'auth_token', '53eeef31ab94c4d89b69bc5a22b218bedfdb803271f22a6dc48582526d42df42', '[\"*\"]', '2026-03-23 06:18:33', NULL, '2026-03-22 19:34:49', '2026-03-23 06:18:33'),
(1132, 'App\\Models\\User', 291, 'auth_token', '56e2d9f6118b7bd6e877e3e1f5942660cb6a8a5ac7fbc28e4fe693cd1e48f1c4', '[\"*\"]', NULL, NULL, '2026-03-22 20:46:59', '2026-03-22 20:46:59'),
(1133, 'App\\Models\\User', 17, 'auth_token', 'a5a4df20e19f3360f03442e3e34c33e75b050bf40045a3125f10f807506a6bd4', '[\"*\"]', '2026-03-22 21:04:21', NULL, '2026-03-22 21:04:19', '2026-03-22 21:04:21'),
(1134, 'App\\Models\\User', 292, 'auth_token', '404d38d968d418d5a267f2c353a77bb7eff17b7684ffab89d99ec5edb67d5968', '[\"*\"]', NULL, NULL, '2026-03-22 21:31:55', '2026-03-22 21:31:55'),
(1135, 'App\\Models\\User', 17, 'auth_token', '02d3cbc6ec6ccc4145ded2d20de19f56f7f7ad295938817e0bb2de3cd98ab034', '[\"*\"]', '2026-03-22 21:35:49', NULL, '2026-03-22 21:35:23', '2026-03-22 21:35:49'),
(1136, 'App\\Models\\User', 293, 'auth_token', 'a7f61e96901250104c83d37ae31f881cf47e52a967adcd5353f342d8b87fc998', '[\"*\"]', NULL, NULL, '2026-03-22 23:28:15', '2026-03-22 23:28:15'),
(1137, 'App\\Models\\User', 17, 'auth_token', '5739192e91bede0aeccb06389a296f1aa5a97c63842aedf01fd4decb6ff4afce', '[\"*\"]', '2026-03-22 23:36:48', NULL, '2026-03-22 23:35:19', '2026-03-22 23:36:48'),
(1138, 'App\\Models\\User', 294, 'auth_token', '741a0f2406c56a79009bf5736035791c5dd99766c62e846c169c8ead3b19e895', '[\"*\"]', NULL, NULL, '2026-03-23 00:13:19', '2026-03-23 00:13:19'),
(1139, 'App\\Models\\User', 15, 'auth_token', '83fa57a9be427bfbcbdce16ec618764d045b8020cb1a561842818862c6f3942d', '[\"*\"]', '2026-03-23 06:18:48', NULL, '2026-03-23 06:18:47', '2026-03-23 06:18:48'),
(1140, 'App\\Models\\User', 15, 'auth_token', '1ef5f2e0524fb597f67a62bc31725482e86c4bbe4c31467e4d64016bd1a54b26', '[\"*\"]', '2026-03-23 08:31:54', NULL, '2026-03-23 07:06:06', '2026-03-23 08:31:54'),
(1141, 'App\\Models\\User', 295, 'auth_token', '5f918d6ef81a91a2e2a4830f77d31db251bfcae5186779d53ece6e6983f607f5', '[\"*\"]', NULL, NULL, '2026-03-23 08:00:48', '2026-03-23 08:00:48'),
(1142, 'App\\Models\\User', 37, 'auth_token', '5907cb2a387f8cf7ea3368c04d46801022e1ad51274e9613afb9521fbb53503d', '[\"*\"]', '2026-03-23 08:19:30', NULL, '2026-03-23 08:18:58', '2026-03-23 08:19:30'),
(1143, 'App\\Models\\User', 37, 'auth_token', '19fe4986e394aadc7edb2a4e52d707dd864432d034cd1c7693e661daeb0bcf42', '[\"*\"]', '2026-03-23 08:22:46', NULL, '2026-03-23 08:21:01', '2026-03-23 08:22:46'),
(1144, 'App\\Models\\User', 188, 'auth_token', 'b8886c62f9ff587e85d612c713e84c8990a2e98943c50074e484c944620dfdf7', '[\"*\"]', '2026-03-23 10:03:26', NULL, '2026-03-23 10:02:46', '2026-03-23 10:03:26'),
(1145, 'App\\Models\\User', 15, 'auth_token', '4d394efd5c27253f1749d682e890ad776f7d5c241064cb4a52d4bf6704968bf1', '[\"*\"]', '2026-03-23 11:03:12', NULL, '2026-03-23 10:27:08', '2026-03-23 11:03:12'),
(1146, 'App\\Models\\User', 296, 'auth_token', '0ead1027142ab28bfeee43d96ced1c2cf919a2508863e6a616e947e22cfe55b1', '[\"*\"]', NULL, NULL, '2026-03-23 10:42:00', '2026-03-23 10:42:00'),
(1147, 'App\\Models\\User', 63, 'auth_token', 'fc0a331243a790c1905a7dca9da88557e4f7345298aafe920616e413a3dca7c9', '[\"*\"]', NULL, NULL, '2026-03-23 11:32:38', '2026-03-23 11:32:38'),
(1148, 'App\\Models\\User', 297, 'auth_token', 'a84d685a49a99a11d24152e5f9cf8bcbda2e244132b3393d8174a280a4da4168', '[\"*\"]', NULL, NULL, '2026-03-23 11:35:26', '2026-03-23 11:35:26'),
(1149, 'App\\Models\\User', 63, 'auth_token', '322ec4d2feeb9066df4bf5a4bcd34595d5fe3182fe54fbbeb967f625ced781b6', '[\"*\"]', NULL, NULL, '2026-03-23 11:36:50', '2026-03-23 11:36:50'),
(1150, 'App\\Models\\User', 15, 'auth_token', 'b7bb5069597d60f370876afb724fe81cc60f2905461741aa5d7099959f7a9391', '[\"*\"]', '2026-03-23 11:43:15', NULL, '2026-03-23 11:43:09', '2026-03-23 11:43:15'),
(1151, 'App\\Models\\User', 298, 'auth_token', '0c08fecfe57316117b43dc984cb6695f6e0c63c595d3a2827556bc5ffc207596', '[\"*\"]', NULL, NULL, '2026-03-23 11:46:46', '2026-03-23 11:46:46'),
(1152, 'App\\Models\\User', 299, 'auth_token', '0c9b629e1a78ea78598ede97531cda0b7f5ea9b8805a74ec13da5930747bf5bf', '[\"*\"]', NULL, NULL, '2026-03-23 12:37:59', '2026-03-23 12:37:59'),
(1153, 'App\\Models\\User', 63, 'auth_token', '3077da39a0b07993e97e9831c7174506b3b53c690ae5db95585b70d757d7a53a', '[\"*\"]', '2026-03-23 12:44:42', NULL, '2026-03-23 12:39:59', '2026-03-23 12:44:42'),
(1154, 'App\\Models\\User', 63, 'auth_token', '277241d5f6cad5a9ccf0483d0f3337e9b2d3876fa5d21e0739d1bbff1eb01772', '[\"*\"]', '2026-03-23 12:56:27', NULL, '2026-03-23 12:45:09', '2026-03-23 12:56:27'),
(1155, 'App\\Models\\User', 63, 'auth_token', 'f835484b3f2a10d54eedcafbcb9895263cda9d52714cbdcf96aa4dc13978322b', '[\"*\"]', '2026-03-23 14:29:52', NULL, '2026-03-23 13:49:54', '2026-03-23 14:29:52'),
(1156, 'App\\Models\\User', 63, 'auth_token', '3642d71a4f703d0a8bd06f3940b5ef257787e6594201909bcbbf5000bd93ce9f', '[\"*\"]', '2026-03-23 16:06:26', NULL, '2026-03-23 16:05:59', '2026-03-23 16:06:26'),
(1157, 'App\\Models\\User', 63, 'auth_token', '1dd6c7e4ae65314efbbd3147dee0cdad05a6dff3f88308c7eeac2aa0d3bf34b8', '[\"*\"]', '2026-03-23 16:06:46', NULL, '2026-03-23 16:06:45', '2026-03-23 16:06:46'),
(1158, 'App\\Models\\User', 300, 'auth_token', '83cbc0067374533670687ae0e5cdaa35115e32c73c97a488396404ac14e3cbe1', '[\"*\"]', NULL, NULL, '2026-03-23 18:48:51', '2026-03-23 18:48:51'),
(1159, 'App\\Models\\User', 63, 'auth_token', 'aca6f4f69833ab60f3ec4dbb6945f496dc1fdaa3441276a7b8b99c810b37c8fd', '[\"*\"]', '2026-03-23 19:20:06', NULL, '2026-03-23 19:05:07', '2026-03-23 19:20:06'),
(1160, 'App\\Models\\User', 63, 'auth_token', '2343c65250c5c5091d43a68e65637808844ac595ea396495cc85d81eef575315', '[\"*\"]', '2026-03-23 19:27:07', NULL, '2026-03-23 19:20:24', '2026-03-23 19:27:07'),
(1161, 'App\\Models\\User', 301, 'auth_token', 'fa64efc349e0327f477f8a55ae12f0cf32f1cca248bef68eb764509eb5d7cf75', '[\"*\"]', NULL, NULL, '2026-03-23 19:29:19', '2026-03-23 19:29:19'),
(1162, 'App\\Models\\User', 15, 'auth_token', 'c1a0a9ff27d599c0393caafc8b429e360b70f0464c9af57d86e8942af8a74a6f', '[\"*\"]', '2026-03-23 21:33:54', NULL, '2026-03-23 21:33:35', '2026-03-23 21:33:54'),
(1163, 'App\\Models\\User', 15, 'auth_token', '701c358a0c19957679dbb5d1c1f42908276492ae569d3e835284e5cf0aaef664', '[\"*\"]', '2026-03-25 00:14:14', NULL, '2026-03-23 21:34:50', '2026-03-25 00:14:14'),
(1164, 'App\\Models\\User', 63, 'auth_token', '23cce13ff5b8ad56d186c3fcc2b84bdaccd99da188b048883ab51036fe40a49e', '[\"*\"]', '2026-03-23 21:46:40', NULL, '2026-03-23 21:43:03', '2026-03-23 21:46:40'),
(1165, 'App\\Models\\User', 63, 'auth_token', '98c42b911646a1d668aab2b4078944ae4f87adbfed25f4926016964510bd172d', '[\"*\"]', '2026-03-23 21:47:13', NULL, '2026-03-23 21:47:12', '2026-03-23 21:47:13'),
(1166, 'App\\Models\\User', 63, 'auth_token', 'd866182a9e061537c4efddd1b80ac79af027fe8e5cdad55d0da7d32edb627a35', '[\"*\"]', '2026-03-23 22:27:16', NULL, '2026-03-23 22:27:15', '2026-03-23 22:27:16'),
(1167, 'App\\Models\\User', 63, 'auth_token', '46c4480906642c6d2d209869ec9867edbc009bded3c1a71a0c6cd8a5879676f2', '[\"*\"]', '2026-03-23 22:28:42', NULL, '2026-03-23 22:28:40', '2026-03-23 22:28:42'),
(1168, 'App\\Models\\User', 63, 'auth_token', '905e0d41ffb295b85b2bb3244996ff0302d5222de88e5ff1c2ec4aeb4abc2925', '[\"*\"]', '2026-03-23 22:31:17', NULL, '2026-03-23 22:31:15', '2026-03-23 22:31:17'),
(1169, 'App\\Models\\User', 17, 'auth_token', 'd72af5950b8bd80a6aedf8eb92825ff0ab5bb6bcb2b0be0b5e1f491eb909fa85', '[\"*\"]', '2026-03-23 23:48:31', NULL, '2026-03-23 23:44:56', '2026-03-23 23:48:31'),
(1170, 'App\\Models\\User', 17, 'auth_token', 'bea1c2e369c3add39bbcaeea1a15c04550e66e905fa0fdcb521bdeb58a2063db', '[\"*\"]', '2026-03-23 23:49:05', NULL, '2026-03-23 23:48:48', '2026-03-23 23:49:05'),
(1171, 'App\\Models\\User', 302, 'auth_token', 'a10546b2ae0fddaa6e106becd0397a89ea441acfc9a063efea71d2e926ce2385', '[\"*\"]', NULL, NULL, '2026-03-24 09:32:06', '2026-03-24 09:32:06'),
(1172, 'App\\Models\\User', 63, 'auth_token', 'fcb6969186a2ada9c5e04ca60d6c142a6ac9de5535e85f2929ddee07a642115b', '[\"*\"]', '2026-03-24 11:42:03', NULL, '2026-03-24 11:42:02', '2026-03-24 11:42:03'),
(1173, 'App\\Models\\User', 63, 'auth_token', 'f53dfecbc4f3de692cd0e6114e95afb49e9d236f9c0a2a889e800dbb6aebc22b', '[\"*\"]', '2026-03-24 12:21:32', NULL, '2026-03-24 11:54:39', '2026-03-24 12:21:32'),
(1174, 'App\\Models\\User', 63, 'auth_token', 'a32459e300a0ccfc3d4801d2a0686437bdafedd47c3ba6887b8c0abccc214ac0', '[\"*\"]', '2026-03-24 12:51:50', NULL, '2026-03-24 12:21:45', '2026-03-24 12:51:50'),
(1175, 'App\\Models\\User', 63, 'auth_token', '0e91fb9e6bce93afc8c7a7d1bf1aedffa2212eeece2bb028ab06dc2d8ff75e05', '[\"*\"]', '2026-03-24 13:04:41', NULL, '2026-03-24 12:57:46', '2026-03-24 13:04:41'),
(1176, 'App\\Models\\User', 63, 'auth_token', '212aff4b3761ecbb386f12ae562f8dabfc705bff24eabba87cb231714336fb47', '[\"*\"]', '2026-03-24 13:12:22', NULL, '2026-03-24 13:04:53', '2026-03-24 13:12:22'),
(1177, 'App\\Models\\User', 63, 'auth_token', '0aa050736c20d852a96c4286af40b6a9e2b11b45d5aaf4deb3fe74cedb2e5e91', '[\"*\"]', '2026-03-24 13:55:00', NULL, '2026-03-24 13:18:14', '2026-03-24 13:55:00'),
(1178, 'App\\Models\\User', 63, 'auth_token', '1d4de8562ea86617454ff919ab6afa5998d8ab69f028db63bd59642c8e871334', '[\"*\"]', '2026-03-24 14:13:02', NULL, '2026-03-24 13:57:25', '2026-03-24 14:13:02'),
(1179, 'App\\Models\\User', 303, 'auth_token', 'c04130a69112b17699b0bfcb68acbe528dc71ab10582941b837334efd6c49caa', '[\"*\"]', NULL, NULL, '2026-03-24 17:42:17', '2026-03-24 17:42:17'),
(1180, 'App\\Models\\User', 63, 'auth_token', '16b0a5827a849227c131bccee5252a54e2fc2cf0b3bf8e2232153ee0d1d1ebda', '[\"*\"]', '2026-03-24 19:40:49', NULL, '2026-03-24 18:33:15', '2026-03-24 19:40:49'),
(1181, 'App\\Models\\User', 245, 'auth_token', 'bfc13e04126399c0a86e1f43c85dc5ab17daf972c6ae35dee0bdd87cc284bb12', '[\"*\"]', '2026-03-24 19:06:52', NULL, '2026-03-24 19:01:53', '2026-03-24 19:06:52'),
(1182, 'App\\Models\\User', 63, 'auth_token', 'c2619e9c1e55d7d93a8d1e02992cfbb48af9ec4f9441adfa65f0922ede42a96e', '[\"*\"]', '2026-03-24 19:41:08', NULL, '2026-03-24 19:41:07', '2026-03-24 19:41:08'),
(1183, 'App\\Models\\User', 63, 'auth_token', '4a74ae75a7c6681ab6aeeb6e98910f4281d6018343ec3b8f1bfa51784af69814', '[\"*\"]', '2026-03-24 20:18:04', NULL, '2026-03-24 20:18:03', '2026-03-24 20:18:04'),
(1184, 'App\\Models\\User', 304, 'auth_token', 'a5304de629d300eb3bf226f385df5a9a3fffd90a74c945559900a9a855a431a4', '[\"*\"]', NULL, NULL, '2026-03-24 20:21:00', '2026-03-24 20:21:00'),
(1185, 'App\\Models\\User', 63, 'auth_token', '7456ac88c95f87f82985a1f938d3ab7e1405955d18c1a8546a2b6c3ccc5f44a9', '[\"*\"]', '2026-03-24 22:24:59', NULL, '2026-03-24 20:21:45', '2026-03-24 22:24:59'),
(1186, 'App\\Models\\User', 245, 'auth_token', '1cf7541b5b51d20da83127c28234f9dca23023de19798dadfb4b7426a694f85f', '[\"*\"]', '2026-03-24 21:06:05', NULL, '2026-03-24 21:05:51', '2026-03-24 21:06:05'),
(1187, 'App\\Models\\User', 63, 'auth_token', '68815c2bd095a1708d298b308dd67afe31bc44265d6884acc4c7ff8552a078d7', '[\"*\"]', '2026-03-24 22:25:03', NULL, '2026-03-24 22:25:02', '2026-03-24 22:25:03'),
(1188, 'App\\Models\\User', 15, 'auth_token', '20271c8c76fb3ecc4db5f677eb2b988b393eb59814943dd3fb49d4230d0e7b60', '[\"*\"]', '2026-03-25 00:15:14', NULL, '2026-03-25 00:14:33', '2026-03-25 00:15:14'),
(1189, 'App\\Models\\User', 17, 'auth_token', '6c0778818efcbe40a0670893d12b07cab049a30822f8b075fca964c5d70b109f', '[\"*\"]', '2026-03-25 08:12:35', NULL, '2026-03-25 08:08:56', '2026-03-25 08:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`response`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_logs`
--

INSERT INTO `sms_logs` (`id`, `recipient`, `receiver`, `type`, `message`, `status`, `response`, `created_at`, `updated_at`) VALUES
(1, '255712345678', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1376834024,255712345678,Send Successful\\r\\n\"', '2025-12-03 12:56:07', '2025-12-03 12:56:07'),
(2, '255712345678', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1376837454,255712345678,Send Successful\\r\\n\"', '2025-12-03 12:59:27', '2025-12-03 12:59:27'),
(3, '255767983236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1376841648,255767983236,Send Successful\\r\\n\"', '2025-12-03 13:03:48', '2025-12-03 13:03:48'),
(4, '255744141430', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1376846139,255744141430,Send Successful\\r\\n\"', '2025-12-03 13:05:26', '2025-12-03 13:05:26'),
(5, '255767983236', 'shadrack', 'direct', 'shadrack anajaribu.', 'Sent', '\"1382576192,255767983236,Send Successful\\r\\n\"', '2025-12-06 12:08:47', '2025-12-06 12:08:47'),
(6, '255767983236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1382578303,255767983236,Send Successful\\r\\n\"', '2025-12-06 12:10:54', '2025-12-06 12:10:54'),
(7, '255767983236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1382579753,255767983236,Send Successful\\r\\n\"', '2025-12-06 12:11:52', '2025-12-06 12:11:52'),
(8, '255767983236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1382580530,255767983236,Send Successful\\r\\n\"', '2025-12-06 12:12:40', '2025-12-06 12:12:40'),
(9, '255767983236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1382580850,255767983236,Send Successful\\r\\n\"', '2025-12-06 12:13:01', '2025-12-06 12:13:01'),
(10, '255616148236', 'shadrack', 'direct', 'This is a test notification.', 'Sent', '\"1382581184,255616148236,Send Successful\\r\\n\"', '2025-12-06 12:13:23', '2025-12-06 12:13:23'),
(23, '255673216366', 'shadrack', 'direct', 'This is a test message emmaculate.', 'Sent', '\"1382649183,255673216366,Send Successful\\r\\n\"', '2025-12-06 13:21:02', '2025-12-06 13:21:02'),
(24, '255673216366', 'shadrack', 'direct', 'This is a test message emmaculate.', 'Sent', '\"1382649297,255673216366,Send Successful\\r\\n\"', '2025-12-06 13:21:19', '2025-12-06 13:21:19'),
(25, '255710125217', 'shadrack', 'direct', 'This is a test message emmaculate.', 'Sent', '\"1382649516,255710125217,Send Successful\\r\\n\"', '2025-12-06 13:21:51', '2025-12-06 13:21:51'),
(26, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Sent', '\"1382680518,255767983236,Send Successful\\r\\n\"', '2025-12-06 13:54:50', '2025-12-06 13:54:50'),
(27, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Sent', '\"1382820489,255767983236,Send Successful\\r\\n\"', '2025-12-06 16:22:10', '2025-12-06 16:22:10'),
(28, '255767983236', 'SHADRACK LEONARD', 'direct', 'Hello SHADRACK LEONARD, your membership number is 0003', 'Sent', '\"1385385479,255767983236,Send Successful\\r\\n\"', '2025-12-08 17:40:57', '2025-12-08 17:40:57'),
(29, '255679931931', 'PENDO MUNISI', 'direct', 'Hello PENDO MUNISI, your membership number is 0004', 'Sent', '\"1394469668,255679931931,Send Successful\\r\\n\"', '2025-12-13 16:08:31', '2025-12-13 16:08:31'),
(30, '255712104508', 'Tumaini Peter', 'direct', 'Hello Tumaini Peter, your membership number is 0005', 'Sent', '\"1420048255,255712104508,Send Successful\\r\\n\"', '2025-12-30 12:13:35', '2025-12-30 12:13:35'),
(31, '255757579684', 'Dennis Elisha Mhoka', 'direct', 'Hello Dennis Elisha Mhoka, your membership number is 0006', 'Sent', '\"1420058387,255757579684,Send Successful\\r\\n\"', '2025-12-30 12:24:56', '2025-12-30 12:24:56'),
(32, '255784824624', 'Oscar Batista Kindole', 'direct', 'Hello Oscar Batista Kindole, your membership number is 0001', 'Sent', '\"1426759191,255784824624,Send Successful\\r\\n\"', '2026-01-03 03:15:48', '2026-01-03 03:15:48'),
(33, '255787001007', 'Isaya Raphael Mwanyamba', 'direct', 'Hello Isaya Raphael Mwanyamba, your membership number is 0002', 'Sent', '\"1426936083,255787001007,Send Successful\\r\\n\"', '2026-01-03 11:45:12', '2026-01-03 11:45:12'),
(34, '255754544438', 'Reuben Bulugu', 'direct', 'Hello Reuben Bulugu, your membership number is 0003', 'Sent', '\"1428376100,255754544438,Send Successful\\r\\n\"', '2026-01-03 23:01:25', '2026-01-03 23:01:25'),
(35, '255788677472', 'Dr. Suleiman Mathew IKOMBA', 'direct', 'Hello Dr. Suleiman Mathew IKOMBA, your membership number is 0004', 'Sent', '\"1429508139,255788677472,Send Successful\\r\\n\"', '2026-01-04 22:37:55', '2026-01-04 22:37:55'),
(36, '255788677472', 'Dr. Suleiman Mathew IKOMBA', 'direct', 'Hello Dr. Suleiman Mathew IKOMBA, your membership number is 0004', 'Sent', '\"1429508159,255788677472,Send Successful\\r\\n\"', '2026-01-04 22:37:57', '2026-01-04 22:37:57'),
(37, '255758047674', 'DAMIAN GERVAS NDABATINYA', 'direct', 'Bwana Yesu asifiwe DAMIAN GERVAS NDABATINYA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0005', 'Sent', '\"1433747600,255758047674,Send Successful\\r\\n\"', '2026-01-07 14:22:58', '2026-01-07 14:22:58'),
(38, '255719800813', 'Julius Kindole', 'direct', 'Bwana Yesu asifiwe Julius Kindole, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0006', 'Sent', '\"1433747848,255719800813,Send Successful\\r\\n\"', '2026-01-07 14:23:08', '2026-01-07 14:23:08'),
(39, '255768920734', 'Sospeter Bathoha', 'direct', 'Bwana Yesu asifiwe Sospeter Bathoha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0007', 'Sent', '\"1436691731,255768920734,Send Successful\\r\\n\"', '2026-01-09 10:04:38', '2026-01-09 10:04:38'),
(40, '255758833304', 'NTULI KAPOLOGWE', 'direct', 'Bwana Yesu asifiwe NTULI KAPOLOGWE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0008', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-01-18 14:14:17', '2026-01-18 14:14:17'),
(41, '255712104508', 'Tumaini  Peter Kaaya', 'individual', 'Yesu asifiwe hii ni majaribio tu ya sms kutoka KanisaSoft, Kama umeipokea tuma kwenye group tuone', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-19 12:17:22', '2026-02-19 12:17:22'),
(42, '255712104508', 'Tumaini  Peter Kaaya', 'individual', 'Hili ni jaribio la pili kutoka KanisaSoft, je umeipata? Tuma kwenye group screenshot', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-19 12:19:30', '2026-02-19 12:19:30'),
(43, '255658698146', 'Neema Mustapha Kiluwasha', 'direct', 'Bwana Yesu asifiwe Neema Mustapha Kiluwasha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0009', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-23 17:39:10', '2026-02-23 17:39:10'),
(44, '255714991925', 'Natalia Beza', 'direct', 'Bwana Yesu asifiwe Natalia Beza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0010', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-23 17:39:23', '2026-02-23 17:39:23'),
(45, '255657300333', 'Erick Andrea', 'direct', 'Bwana Yesu asifiwe Erick Andrea, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0011', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 00:52:21', '2026-02-24 00:52:21'),
(46, '255754244794', 'Benedicto Mugongo', 'direct', 'Bwana Yesu asifiwe Benedicto Mugongo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0012', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:15:11', '2026-02-24 09:15:11'),
(47, '255737774790', 'AHUNGU MODKY', 'direct', 'Bwana Yesu asifiwe AHUNGU MODKY, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0013', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:16:15', '2026-02-24 09:16:15'),
(48, '255712658038', 'HERIEL GABRIEL', 'direct', 'Bwana Yesu asifiwe HERIEL GABRIEL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0014', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:16:34', '2026-02-24 09:16:34'),
(49, '255655323199', 'THEOPHILDA CHRISTOPHER', 'direct', 'Bwana Yesu asifiwe THEOPHILDA CHRISTOPHER, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0015', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:16:45', '2026-02-24 09:16:45'),
(50, '255716654579', 'Jacob Sanke Nyoni', 'direct', 'Bwana Yesu asifiwe Jacob Sanke Nyoni, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0016', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:17:07', '2026-02-24 09:17:07'),
(51, '255762748397', 'Hannah Kimicha Rwandalla', 'direct', 'Bwana Yesu asifiwe Hannah Kimicha Rwandalla, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0017', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:17:18', '2026-02-24 09:17:18'),
(52, '255754897675', 'Amos Samwel Ntandu', 'direct', 'Bwana Yesu asifiwe Amos Samwel Ntandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0018', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 09:17:26', '2026-02-24 09:17:26'),
(53, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 11:02:26', '2026-02-24 11:02:26'),
(54, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 11:25:55', '2026-02-24 11:25:55'),
(55, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:13:20', '2026-02-24 12:13:20'),
(56, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:19:30', '2026-02-24 12:19:30'),
(57, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:19:34', '2026-02-24 12:19:34'),
(58, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:26:08', '2026-02-24 12:26:08'),
(59, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:26:32', '2026-02-24 12:26:32'),
(60, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 12:27:04', '2026-02-24 12:27:04'),
(61, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 13:07:46', '2026-02-24 13:07:46'),
(62, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 13:19:06', '2026-02-24 13:19:06'),
(63, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 13:23:06', '2026-02-24 13:23:06'),
(64, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 13:35:22', '2026-02-24 13:35:22'),
(65, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 13:35:30', '2026-02-24 13:35:30'),
(66, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 14:00:38', '2026-02-24 14:00:38'),
(67, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 14:01:40', '2026-02-24 14:01:40'),
(68, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 14:02:38', '2026-02-24 14:02:38'),
(69, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 14:03:40', '2026-02-24 14:03:40'),
(70, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Failed: Invalid Password.\r\n', '\"Invalid Password.\\r\\n\"', '2026-02-24 14:16:48', '2026-02-24 14:16:48'),
(71, '255767983236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522188718\\\",\\\"number\\\":\\\"255767983236\\\",\\\"str_response\\\":\\\"1522188718,255767983236,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:37:03', '2026-02-24 14:37:03'),
(72, '255754778376', 'Elicia Sekishaku Kisoma', 'direct', 'Bwana Yesu asifiwe Elicia Sekishaku Kisoma, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0019', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522199484\\\",\\\"number\\\":\\\"255754778376\\\",\\\"str_response\\\":\\\"1522199484,255754778376,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:52:48', '2026-02-24 14:52:48'),
(73, '255742490455', 'Adriano Nashoni Kibhoge', 'direct', 'Bwana Yesu asifiwe Adriano Nashoni Kibhoge, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0020', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522204252\\\",\\\"number\\\":\\\"255742490455\\\",\\\"str_response\\\":\\\"1522204252,255742490455,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:55:50', '2026-02-24 14:55:50'),
(74, '255755146527', 'Aman Mdewa Nthangu', 'direct', 'Bwana Yesu asifiwe Aman Mdewa Nthangu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0021', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522204387\\\",\\\"number\\\":\\\"255755146527\\\",\\\"str_response\\\":\\\"1522204387,255755146527,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:55:59', '2026-02-24 14:55:59'),
(75, '255755114343', 'ALFAYO NASHONI KIBOGE', 'direct', 'Bwana Yesu asifiwe ALFAYO NASHONI KIBOGE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0022', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522205174\\\",\\\"number\\\":\\\"255755114343\\\",\\\"str_response\\\":\\\"1522205174,255755114343,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:57:15', '2026-02-24 14:57:15'),
(76, '255677149158', 'Elizabeth Christopher Migeto', 'direct', 'Bwana Yesu asifiwe Elizabeth Christopher Migeto, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0023', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522206383\\\",\\\"number\\\":\\\"255677149158\\\",\\\"str_response\\\":\\\"1522206383,255677149158,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:58:38', '2026-02-24 14:58:38'),
(77, '255714842713', 'Neema Kazare', 'direct', 'Bwana Yesu asifiwe Neema Kazare, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0024', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522206964\\\",\\\"number\\\":\\\"255714842713\\\",\\\"str_response\\\":\\\"1522206964,255714842713,Send Successful\\\"}]\\r\\n\"', '2026-02-24 14:59:35', '2026-02-24 14:59:35'),
(78, '255616148236', 'shalemu', 'direct', 'This is a test message shalemu.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522219569\\\",\\\"number\\\":\\\"255616148236\\\",\\\"str_response\\\":\\\"1522219569,255616148236,Send Successful\\\"}]\\r\\n\"', '2026-02-24 15:08:09', '2026-02-24 15:08:09'),
(79, '255712104508', 'Tumaini  Peter Kaaya', 'individual', 'Hii hapa test kwa Kaaya, Imefika?', 'Sent', '\"[{\\\"msg_id\\\":\\\"1522537452\\\",\\\"number\\\":\\\"255712104508\\\",\\\"str_response\\\":\\\"1522537452,255712104508,Send Successful\\\"}]\\r\\n\"', '2026-02-24 16:12:48', '2026-02-24 16:12:48'),
(80, '255758295657', 'Veronica chavala', 'direct', 'Bwana Yesu asifiwe Veronica chavala, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0025', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523007568\\\",\\\"number\\\":\\\"255758295657\\\",\\\"str_response\\\":\\\"1523007568,255758295657,Send Successful\\\"}]\\r\\n\"', '2026-02-24 23:45:40', '2026-02-24 23:45:40'),
(81, '255758295657', 'Veronica chavala', 'direct', 'Bwana Yesu asifiwe Veronica chavala, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0025', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523007917\\\",\\\"number\\\":\\\"255758295657\\\",\\\"str_response\\\":\\\"1523007917,255758295657,Send Successful\\\"}]\\r\\n\"', '2026-02-24 23:45:41', '2026-02-24 23:45:41'),
(82, '255759076332', 'Denis Cleophace', 'direct', 'Bwana Yesu asifiwe Denis Cleophace, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0026', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523022790\\\",\\\"number\\\":\\\"255759076332\\\",\\\"str_response\\\":\\\"1523022790,255759076332,Send Successful\\\"}]\\r\\n\"', '2026-02-25 00:03:40', '2026-02-25 00:03:40'),
(83, '255616148236', 'shalemu', 'direct', 'This is a test message shalemu 25/02', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523779096\\\",\\\"number\\\":\\\"255616148236\\\",\\\"str_response\\\":\\\"1523779096,255616148236,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:02:23', '2026-02-25 11:02:23'),
(84, '255616148236', 'shalemu', 'direct', 'This is a test message shalemu 25/02', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523808719\\\",\\\"number\\\":\\\"255616148236\\\",\\\"str_response\\\":\\\"1523808719,255616148236,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:05:48', '2026-02-25 11:05:48'),
(85, '255744141430', 'shalemu', 'direct', 'This is a test message for kanisasoft', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523836581\\\",\\\"number\\\":\\\"255744141430\\\",\\\"str_response\\\":\\\"1523836581,255744141430,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:08:32', '2026-02-25 11:08:32'),
(86, '255767983236', 'SHADRACK LEONARD', 'direct', 'Bwana Yesu asifiwe SHADRACK LEONARD, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0027', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523864548\\\",\\\"number\\\":\\\"255767983236\\\",\\\"str_response\\\":\\\"1523864548,255767983236,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:11:49', '2026-02-25 11:11:49'),
(87, '255690255885', 'LUTUFYO FRANCIS', 'direct', 'Bwana Yesu asifiwe LUTUFYO FRANCIS, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0027', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523868419\\\",\\\"number\\\":\\\"255690255885\\\",\\\"str_response\\\":\\\"1523868419,255690255885,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:19:08', '2026-02-25 11:19:08'),
(88, '255744932734', 'Edith Beza', 'direct', 'Bwana Yesu asifiwe Edith Beza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0027', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523872300\\\",\\\"number\\\":\\\"255744932734\\\",\\\"str_response\\\":\\\"1523872300,255744932734,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:21:41', '2026-02-25 11:21:41'),
(89, '255764648884', 'BEATRICE ELIA MHANA', 'direct', 'Bwana Yesu asifiwe BEATRICE ELIA MHANA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0028', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523876227\\\",\\\"number\\\":\\\"255764648884\\\",\\\"str_response\\\":\\\"1523876227,255764648884,Send Successful\\\"}]\\r\\n\"', '2026-02-25 11:29:10', '2026-02-25 11:29:10'),
(90, '255785480389', 'Perecy beza', 'direct', 'Bwana Yesu asifiwe Perecy beza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0002', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523905543\\\",\\\"number\\\":\\\"255785480389\\\",\\\"str_response\\\":\\\"1523905543,255785480389,Send Successful\\\"}]\\r\\n\"', '2026-02-25 12:09:34', '2026-02-25 12:09:34'),
(91, '255762285686', 'GLORIA ANDREW MBWAMBO', 'direct', 'Bwana Yesu asifiwe GLORIA ANDREW MBWAMBO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0029', 'Sent', '\"[{\\\"msg_id\\\":\\\"1523923808\\\",\\\"number\\\":\\\"255762285686\\\",\\\"str_response\\\":\\\"1523923808,255762285686,Send Successful\\\"}]\\r\\n\"', '2026-02-25 12:34:04', '2026-02-25 12:34:04'),
(92, '255712104508', 'Tumaini  Peter Kaaya', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104551\\\",\\\"number\\\":\\\"255712104508\\\",\\\"str_response\\\":\\\"1524104551,255712104508,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:07', '2026-02-25 14:31:07'),
(93, '255784824624', 'Oscar Batista Kindole', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104558\\\",\\\"number\\\":\\\"255784824624\\\",\\\"str_response\\\":\\\"1524104558,255784824624,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:07', '2026-02-25 14:31:07'),
(94, '255787001007', 'Isaya Raphael Mwanyamba', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104565\\\",\\\"number\\\":\\\"255787001007\\\",\\\"str_response\\\":\\\"1524104565,255787001007,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:07', '2026-02-25 14:31:07'),
(95, '255754544438', 'Reuben Bulugu', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104576\\\",\\\"number\\\":\\\"255754544438\\\",\\\"str_response\\\":\\\"1524104576,255754544438,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:08', '2026-02-25 14:31:08'),
(96, '255788677472', 'Dr. Suleiman Mathew IKOMBA', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104583\\\",\\\"number\\\":\\\"255788677472\\\",\\\"str_response\\\":\\\"1524104583,255788677472,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:08', '2026-02-25 14:31:08'),
(97, '255699650632', 'Abigail Suleiman Mathew', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104592\\\",\\\"number\\\":\\\"255699650632\\\",\\\"str_response\\\":\\\"1524104592,255699650632,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:08', '2026-02-25 14:31:08'),
(98, '255758047674', 'DAMIAN GERVAS NDABATINYA', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104600\\\",\\\"number\\\":\\\"255758047674\\\",\\\"str_response\\\":\\\"1524104600,255758047674,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:09', '2026-02-25 14:31:09'),
(99, '255719800813', 'Julius Kindole', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104609\\\",\\\"number\\\":\\\"255719800813\\\",\\\"str_response\\\":\\\"1524104609,255719800813,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:09', '2026-02-25 14:31:09'),
(100, '255768920734', 'Sospeter Bathoha', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104619\\\",\\\"number\\\":\\\"255768920734\\\",\\\"str_response\\\":\\\"1524104619,255768920734,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:09', '2026-02-25 14:31:09'),
(101, '255758833304', 'NTULI KAPOLOGWE', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104631\\\",\\\"number\\\":\\\"255758833304\\\",\\\"str_response\\\":\\\"1524104631,255758833304,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:10', '2026-02-25 14:31:10'),
(102, '255658698146', 'Neema Mustapha Kiluwasha', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104641\\\",\\\"number\\\":\\\"255658698146\\\",\\\"str_response\\\":\\\"1524104641,255658698146,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:10', '2026-02-25 14:31:10'),
(103, '255714991925', 'Natalia Beza', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104646\\\",\\\"number\\\":\\\"255714991925\\\",\\\"str_response\\\":\\\"1524104646,255714991925,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:11', '2026-02-25 14:31:11'),
(104, '255655323199', 'THEOPHILDA CHRISTOPHER', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104650\\\",\\\"number\\\":\\\"255655323199\\\",\\\"str_response\\\":\\\"1524104650,255655323199,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:11', '2026-02-25 14:31:11'),
(105, '255716654579', 'Jacob Sanke Nyoni', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104657\\\",\\\"number\\\":\\\"255716654579\\\",\\\"str_response\\\":\\\"1524104657,255716654579,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:11', '2026-02-25 14:31:11'),
(106, '255712658038', 'HERIEL GABRIEL', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104659\\\",\\\"number\\\":\\\"255712658038\\\",\\\"str_response\\\":\\\"1524104659,255712658038,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:12', '2026-02-25 14:31:12'),
(107, '255737774790', 'AHUNGU MODKY', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104663\\\",\\\"number\\\":\\\"255737774790\\\",\\\"str_response\\\":\\\"1524104663,255737774790,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:12', '2026-02-25 14:31:12'),
(108, '255754897675', 'Amos Samwel Ntandu', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104666\\\",\\\"number\\\":\\\"255754897675\\\",\\\"str_response\\\":\\\"1524104666,255754897675,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:12', '2026-02-25 14:31:12'),
(109, '255754778376', 'Elicia Sekishaku Kisoma', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104670\\\",\\\"number\\\":\\\"255754778376\\\",\\\"str_response\\\":\\\"1524104670,255754778376,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:13', '2026-02-25 14:31:13'),
(110, '255657300333', 'Erick Andrea', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104673\\\",\\\"number\\\":\\\"255657300333\\\",\\\"str_response\\\":\\\"1524104673,255657300333,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:13', '2026-02-25 14:31:13'),
(111, '255762748397', 'Hannah Kimicha Rwandalla', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104676\\\",\\\"number\\\":\\\"255762748397\\\",\\\"str_response\\\":\\\"1524104676,255762748397,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:14', '2026-02-25 14:31:14'),
(112, '255754244794', 'Benedicto Mugongo', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104679\\\",\\\"number\\\":\\\"255754244794\\\",\\\"str_response\\\":\\\"1524104679,255754244794,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:14', '2026-02-25 14:31:14'),
(113, '255742490455', 'Adriano Nashoni Kibhoge', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104680\\\",\\\"number\\\":\\\"255742490455\\\",\\\"str_response\\\":\\\"1524104680,255742490455,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:14', '2026-02-25 14:31:14'),
(114, '255755146527', 'Aman Mdewa Nthangu', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104683\\\",\\\"number\\\":\\\"255755146527\\\",\\\"str_response\\\":\\\"1524104683,255755146527,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:15', '2026-02-25 14:31:15'),
(115, '255677149158', 'Elizabeth Christopher Migeto', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104686\\\",\\\"number\\\":\\\"255677149158\\\",\\\"str_response\\\":\\\"1524104686,255677149158,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:15', '2026-02-25 14:31:15'),
(116, '255714842713', 'Neema Kazare', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104692\\\",\\\"number\\\":\\\"255714842713\\\",\\\"str_response\\\":\\\"1524104692,255714842713,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:15', '2026-02-25 14:31:15'),
(117, '255755114343', 'ALFAYO NASHONI KIBOGE', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104695\\\",\\\"number\\\":\\\"255755114343\\\",\\\"str_response\\\":\\\"1524104695,255755114343,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:16', '2026-02-25 14:31:16'),
(118, '255764648884', 'BEATRICE ELIA MHANA', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104697\\\",\\\"number\\\":\\\"255764648884\\\",\\\"str_response\\\":\\\"1524104697,255764648884,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:16', '2026-02-25 14:31:16'),
(119, '255756673176', 'Meshack clement mihayo', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104703\\\",\\\"number\\\":\\\"255756673176\\\",\\\"str_response\\\":\\\"1524104703,255756673176,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:16', '2026-02-25 14:31:16'),
(120, '255785480389', 'Perecy beza', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104706\\\",\\\"number\\\":\\\"255785480389\\\",\\\"str_response\\\":\\\"1524104706,255785480389,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:17', '2026-02-25 14:31:17'),
(121, '255758295657', 'Veronica chavala', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104708\\\",\\\"number\\\":\\\"255758295657\\\",\\\"str_response\\\":\\\"1524104708,255758295657,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:17', '2026-02-25 14:31:17'),
(122, '255759076332', 'Denis Cleophace', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104711\\\",\\\"number\\\":\\\"255759076332\\\",\\\"str_response\\\":\\\"1524104711,255759076332,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:18', '2026-02-25 14:31:18'),
(123, '255744932734', 'Edith Beza', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104714\\\",\\\"number\\\":\\\"255744932734\\\",\\\"str_response\\\":\\\"1524104714,255744932734,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:18', '2026-02-25 14:31:18'),
(124, '255762285686', 'GLORIA ANDREW MBWAMBO', 'all', 'Shalom,  Hongera  kwa kujisajili kwenye mfumo. \nKaribu FPCT KURASINI.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524104720\\\",\\\"number\\\":\\\"255762285686\\\",\\\"str_response\\\":\\\"1524104720,255762285686,Send Successful\\\"}]\\r\\n\"', '2026-02-25 14:31:18', '2026-02-25 14:31:18'),
(125, '255756673176', 'Meshack clement mihayo', 'direct', 'Bwana Yesu asifiwe Meshack clement mihayo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0030', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524309846\\\",\\\"number\\\":\\\"255756673176\\\",\\\"str_response\\\":\\\"1524309846,255756673176,Send Successful\\\"}]\\r\\n\"', '2026-02-25 15:53:25', '2026-02-25 15:53:25'),
(126, '255756673176', 'Meshack clement mihayo', 'individual', 'Bwana Yesu asifiwe Meshack clement mihayo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0030', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524334366\\\",\\\"number\\\":\\\"255756673176\\\",\\\"str_response\\\":\\\"1524334366,255756673176,Send Successful\\\"}]\\r\\n\"', '2026-02-25 16:18:53', '2026-02-25 16:18:53'),
(127, '255655323199', 'THEOPHILDA CHRISTOPHER', 'individual', 'Bwana Yesu asifiwe Theofilda Christopher, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0015', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524502742\\\",\\\"number\\\":\\\"255655323199\\\",\\\"str_response\\\":\\\"1524502742,255655323199,Send Successful\\\"}]\\r\\n\"', '2026-02-25 17:06:08', '2026-02-25 17:06:08'),
(128, '255769531914', 'NOELA MUSSA', 'direct', 'Bwana Yesu asifiwe NOELA MUSSA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0031', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524585135\\\",\\\"number\\\":\\\"255769531914\\\",\\\"str_response\\\":\\\"1524585135,255769531914,Send Successful\\\"}]\\r\\n\"', '2026-02-25 18:37:31', '2026-02-25 18:37:31'),
(129, '255758295657', 'Veronica chavala', 'individual', 'Bwana Yesu asifiwe Veronica Chavala, Sasa wewe ni mshirika rasmi wa FPCT kurasini Namba yako ya ushirika ni: 0025', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524586525\\\",\\\"number\\\":\\\"255758295657\\\",\\\"str_response\\\":\\\"1524586525,255758295657,Send Successful\\\"}]\\r\\n\"', '2026-02-25 18:41:10', '2026-02-25 18:41:10'),
(130, '255754774918', 'Noel Damson Nthangu', 'direct', 'Bwana Yesu asifiwe Noel Damson Nthangu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0032', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524593380\\\",\\\"number\\\":\\\"255754774918\\\",\\\"str_response\\\":\\\"1524593380,255754774918,Send Successful\\\"}]\\r\\n\"', '2026-02-25 18:55:35', '2026-02-25 18:55:35'),
(131, '255747584779', 'Sam Batenzi', 'direct', 'Bwana Yesu asifiwe Sam Batenzi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0033', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524636703\\\",\\\"number\\\":\\\"255747584779\\\",\\\"str_response\\\":\\\"1524636703,255747584779,Send Successful\\\"}]\\r\\n\"', '2026-02-25 20:12:00', '2026-02-25 20:12:00'),
(132, '255787285496', 'ANGELA ANTELIMI KALALU', 'direct', 'Bwana Yesu asifiwe ANGELA ANTELIMI KALALU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0034', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524667242\\\",\\\"number\\\":\\\"255787285496\\\",\\\"str_response\\\":\\\"1524667242,255787285496,Send Successful\\\"}]\\r\\n\"', '2026-02-25 20:41:41', '2026-02-25 20:41:41'),
(133, '255679320447', 'Felix William', 'direct', 'Bwana Yesu asifiwe Felix William, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0035', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524685284\\\",\\\"number\\\":\\\"255679320447\\\",\\\"str_response\\\":\\\"1524685284,255679320447,Send Successful\\\"}]\\r\\n\"', '2026-02-25 21:29:21', '2026-02-25 21:29:21'),
(134, '255679320447', 'Felix William', 'direct', 'Bwana Yesu asifiwe Felix William, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0035', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524685295\\\",\\\"number\\\":\\\"255679320447\\\",\\\"str_response\\\":\\\"1524685295,255679320447,Send Successful\\\"}]\\r\\n\"', '2026-02-25 21:29:22', '2026-02-25 21:29:22'),
(135, '255679320447', 'Felix William', 'direct', 'Bwana Yesu asifiwe Felix William, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0035', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524685296\\\",\\\"number\\\":\\\"255679320447\\\",\\\"str_response\\\":\\\"1524685296,255679320447,Send Successful\\\"}]\\r\\n\"', '2026-02-25 21:29:22', '2026-02-25 21:29:22'),
(136, '255686360843', 'ANOLD GIDION FUMBUKA', 'direct', 'Bwana Yesu asifiwe ANOLD GIDION FUMBUKA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0036', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524716308\\\",\\\"number\\\":\\\"255686360843\\\",\\\"str_response\\\":\\\"1524716308,255686360843,Send Successful\\\"}]\\r\\n\"', '2026-02-25 22:45:55', '2026-02-25 22:45:55'),
(137, '255717480049', 'Theresia kindole', 'direct', 'Bwana Yesu asifiwe Theresia kindole, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0037', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524813256\\\",\\\"number\\\":\\\"255717480049\\\",\\\"str_response\\\":\\\"1524813256,255717480049,Send Successful\\\"}]\\r\\n\"', '2026-02-26 00:39:18', '2026-02-26 00:39:18'),
(138, '255612145642', 'ESTER MATHAYO CHARLES', 'direct', 'Bwana Yesu asifiwe ESTER MATHAYO CHARLES, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0038', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524815123\\\",\\\"number\\\":\\\"255612145642\\\",\\\"str_response\\\":\\\"1524815123,255612145642,Send Successful\\\"}]\\r\\n\"', '2026-02-26 00:45:08', '2026-02-26 00:45:08'),
(139, '255786504664', 'Jane Martin', 'direct', 'Bwana Yesu asifiwe Jane Martin, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0039', 'Sent', '\"[{\\\"msg_id\\\":\\\"1524831303\\\",\\\"number\\\":\\\"255786504664\\\",\\\"str_response\\\":\\\"1524831303,255786504664,Send Successful\\\"}]\\r\\n\"', '2026-02-26 01:28:13', '2026-02-26 01:28:13'),
(140, '255714842713', 'Neema Kazare', 'individual', 'Habari NEEMA KAZARE, usajili wako FPCT Kurasini umekamilika. Namba yako ya ushirika ni: 0024. Karibu FPCT Kurasini.', 'Sent', '\"[{\\\"msg_id\\\":\\\"1525930442\\\",\\\"number\\\":\\\"255714842713\\\",\\\"str_response\\\":\\\"1525930442,255714842713,Send Successful\\\"}]\\r\\n\"', '2026-02-26 14:45:26', '2026-02-26 14:45:26'),
(141, '255787285496', 'ANGELA ANTELIMI KALALU', 'individual', 'Hii ni sms ya majaribio kujua kama imekufikia kutoka kanisasoft', 'Sent', '\"[{\\\"msg_id\\\":\\\"1526010609\\\",\\\"number\\\":\\\"255787285496\\\",\\\"str_response\\\":\\\"1526010609,255787285496,Send Successful\\\"}]\\r\\n\"', '2026-02-26 15:12:57', '2026-02-26 15:12:57'),
(142, '255754502656', 'Wenceslaus Benedict Fungamtama', 'direct', 'Bwana Yesu asifiwe Wenceslaus Benedict Fungamtama, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0040', 'Sent', '\"[{\\\"msg_id\\\":\\\"1526082544\\\",\\\"number\\\":\\\"255754502656\\\",\\\"str_response\\\":\\\"1526082544,255754502656,Send Successful\\\"}]\\r\\n\"', '2026-02-26 15:29:52', '2026-02-26 15:29:52'),
(143, '255674918283', 'UYANJO JOHN', 'direct', 'Bwana Yesu asifiwe UYANJO JOHN, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0041', 'Sent', '\"[{\\\"msg_id\\\":\\\"1526082744\\\",\\\"number\\\":\\\"255674918283\\\",\\\"str_response\\\":\\\"1526082744,255674918283,Send Successful\\\"}]\\r\\n\"', '2026-02-26 15:30:01', '2026-02-26 15:30:01'),
(144, '255785480389', 'Perecy beza', 'individual', 'Bwana Yesu asifiwe Perecy beza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0042', 'Sent', '\"[{\\\"msg_id\\\":\\\"1526116732\\\",\\\"number\\\":\\\"255785480389\\\",\\\"str_response\\\":\\\"1526116732,255785480389,Send Successful\\\"}]\\r\\n\"', '2026-02-26 15:33:06', '2026-02-26 15:33:06'),
(145, '255757445207', 'AUGUSTINO MADAKI BONIPHACE', 'direct', 'Bwana Yesu asifiwe AUGUSTINO MADAKI BONIPHACE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0044', 'Sent', '\"[{\\\"msg_id\\\":\\\"1528373465\\\",\\\"number\\\":\\\"255757445207\\\",\\\"str_response\\\":\\\"1528373465,255757445207,Send Successful\\\"}]\\r\\n\"', '2026-02-27 01:18:29', '2026-02-27 01:18:29'),
(146, '255746562364', 'MAGRETH SYLIVESTER ROBERT', 'direct', 'Bwana Yesu asifiwe MAGRETH SYLIVESTER ROBERT, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0045', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529292562\\\",\\\"number\\\":\\\"255746562364\\\",\\\"str_response\\\":\\\"1529292562,255746562364,Send Successful\\\"}]\\r\\n\"', '2026-02-27 13:35:16', '2026-02-27 13:35:16'),
(147, '255712104508', 'Tumaini  Peter Kaaya', 'individual', 'Bwana Yesu asifiwe TUMAINI PETER KAAYA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0043', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529369619\\\",\\\"number\\\":\\\"255712104508\\\",\\\"str_response\\\":\\\"1529369619,255712104508,Send Successful\\\"}]\\r\\n\"', '2026-02-27 13:55:09', '2026-02-27 13:55:09'),
(148, '255719800813', 'Julius Kindole', 'individual', 'Bwana Yesu asifiwe JULIUS KINDOLE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0006', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529396300\\\",\\\"number\\\":\\\"255719800813\\\",\\\"str_response\\\":\\\"1529396300,255719800813,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:03:59', '2026-02-27 14:03:59'),
(149, '255787001007', 'Isaya Raphael Mwanyamba', 'individual', 'Bwana Yesu asifiwe ISAYA RAPHAEL MWANYAMBA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0002', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529397929\\\",\\\"number\\\":\\\"255787001007\\\",\\\"str_response\\\":\\\"1529397929,255787001007,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:06:01', '2026-02-27 14:06:01'),
(150, '255784824624', 'Oscar Batista Kindole', 'individual', 'Bwana Yesu asifiwe OSCAR BATISTA KINDOLE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0001', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529398958\\\",\\\"number\\\":\\\"255784824624\\\",\\\"str_response\\\":\\\"1529398958,255784824624,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:07:35', '2026-02-27 14:07:35'),
(151, '255754544438', 'Reuben Bulugu', 'individual', 'Bwana Yesu asifiwe REUBEN BULUGU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0003', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529399428\\\",\\\"number\\\":\\\"255754544438\\\",\\\"str_response\\\":\\\"1529399428,255754544438,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:08:47', '2026-02-27 14:08:47'),
(152, '255788677472', 'Dr. Suleiman Mathew IKOMBA', 'individual', 'Bwana Yesu asifiwe Dr. SULEIMAN MATHEW IKOMBA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0004', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529400535\\\",\\\"number\\\":\\\"255788677472\\\",\\\"str_response\\\":\\\"1529400535,255788677472,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:10:25', '2026-02-27 14:10:25'),
(153, '255758047674', 'DAMIAN GERVAS NDABATINYA', 'individual', 'Bwana Yesu asifiwe DAMIAN GERVAS NDABATINYA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0005', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529401515\\\",\\\"number\\\":\\\"255758047674\\\",\\\"str_response\\\":\\\"1529401515,255758047674,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:11:57', '2026-02-27 14:11:57'),
(154, '255768920734', 'Sospeter Bathoha', 'individual', 'Bwana Yesu asifiwe SOSPETER BATHOHA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0007', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529402163\\\",\\\"number\\\":\\\"255768920734\\\",\\\"str_response\\\":\\\"1529402163,255768920734,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:13:13', '2026-02-27 14:13:13'),
(155, '255758833304', 'NTULI KAPOLOGWE', 'individual', 'Bwana Yesu asifiwe NTULI KAPOLOGWE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0008', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529402790\\\",\\\"number\\\":\\\"255758833304\\\",\\\"str_response\\\":\\\"1529402790,255758833304,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:14:47', '2026-02-27 14:14:47'),
(156, '255658698146', 'Neema Mustapha Kiluwasha', 'individual', 'Bwana Yesu asifiwe NEEMA MUSTAPHA KILUWASHA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0009', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529403554\\\",\\\"number\\\":\\\"255658698146\\\",\\\"str_response\\\":\\\"1529403554,255658698146,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:16:06', '2026-02-27 14:16:06'),
(157, '255714991925', 'Natalia Beza', 'individual', 'Bwana Yesu asifiwe NATALIA BEZA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0010', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529404050\\\",\\\"number\\\":\\\"255714991925\\\",\\\"str_response\\\":\\\"1529404050,255714991925,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:17:10', '2026-02-27 14:17:10'),
(158, '255655323199', 'THEOPHILDA CHRISTOPHER', 'individual', 'Bwana Yesu asifiwe THEOPHILDA CHRISTOPHER, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0015', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529404977\\\",\\\"number\\\":\\\"255655323199\\\",\\\"str_response\\\":\\\"1529404977,255655323199,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:18:35', '2026-02-27 14:18:35'),
(159, '255716654579', 'Jacob Sanke Nyoni', 'individual', 'Bwana Yesu asifiwe JACOB SANKE NYONI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0016', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529405377\\\",\\\"number\\\":\\\"255716654579\\\",\\\"str_response\\\":\\\"1529405377,255716654579,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:19:49', '2026-02-27 14:19:49'),
(160, '255712658038', 'HERIEL GABRIEL', 'individual', 'Bwana Yesu asifiwe HERIEL GABRIEL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0014', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529410076\\\",\\\"number\\\":\\\"255712658038\\\",\\\"str_response\\\":\\\"1529410076,255712658038,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:25:28', '2026-02-27 14:25:28'),
(161, '255737774790', 'AHUNGU MODKY', 'individual', 'Bwana Yesu asifiwe AHUNGU MODKY, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0013', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529410512\\\",\\\"number\\\":\\\"255737774790\\\",\\\"str_response\\\":\\\"1529410512,255737774790,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:26:21', '2026-02-27 14:26:21'),
(162, '255754897675', 'Amos Samwel Ntandu', 'individual', 'Bwana Yesu asifiwe AMOS SAMWEL NTANDU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0018', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529410999\\\",\\\"number\\\":\\\"255754897675\\\",\\\"str_response\\\":\\\"1529410999,255754897675,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:27:50', '2026-02-27 14:27:50'),
(163, '255754778376', 'Elicia Sekishaku Kisoma', 'individual', 'Bwana Yesu asifiwe ELICIA SEKISHAKU KISOMA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0019', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529411402\\\",\\\"number\\\":\\\"255754778376\\\",\\\"str_response\\\":\\\"1529411402,255754778376,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:29:18', '2026-02-27 14:29:18'),
(164, '255657300333', 'Erick Andrea', 'individual', 'Bwana Yesu asifiwe ERICK ANDREA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0011', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529412174\\\",\\\"number\\\":\\\"255657300333\\\",\\\"str_response\\\":\\\"1529412174,255657300333,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:30:25', '2026-02-27 14:30:25'),
(165, '255762748397', 'Hannah Kimicha Rwandalla', 'individual', 'Bwana Yesu asifiwe HANNAH KIMICHA RWANDALLA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0017', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529414020\\\",\\\"number\\\":\\\"255762748397\\\",\\\"str_response\\\":\\\"1529414020,255762748397,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:31:38', '2026-02-27 14:31:38'),
(166, '255754244794', 'Benedicto Mugongo', 'individual', 'Bwana Yesu asifiwe BENEDICTO MUGONGO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0012', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529415553\\\",\\\"number\\\":\\\"255754244794\\\",\\\"str_response\\\":\\\"1529415553,255754244794,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:33:12', '2026-02-27 14:33:12'),
(167, '255742490455', 'Adriano Nashoni Kibhoge', 'individual', 'Bwana Yesu asifiwe ADRIANO NASHONI KIBHOGE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0020', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529416765\\\",\\\"number\\\":\\\"255742490455\\\",\\\"str_response\\\":\\\"1529416765,255742490455,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:34:33', '2026-02-27 14:34:33'),
(168, '255755146527', 'Aman Mdewa Nthangu', 'individual', 'Bwana Yesu asifiwe AMAN MDEWA NTHANGU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0021', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529418107\\\",\\\"number\\\":\\\"255755146527\\\",\\\"str_response\\\":\\\"1529418107,255755146527,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:35:52', '2026-02-27 14:35:52'),
(169, '255677149158', 'Elizabeth Christopher Migeto', 'individual', 'Bwana Yesu asifiwe ELIZABETH CHRISTOPHER MIGETO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0023', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529419186\\\",\\\"number\\\":\\\"255677149158\\\",\\\"str_response\\\":\\\"1529419186,255677149158,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:37:23', '2026-02-27 14:37:23'),
(170, '255714842713', 'Neema Kazare', 'individual', 'Bwana Yesu asifiwe NEEMA KAZARE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0024', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529419825\\\",\\\"number\\\":\\\"255714842713\\\",\\\"str_response\\\":\\\"1529419825,255714842713,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:38:23', '2026-02-27 14:38:23'),
(171, '255755114343', 'ALFAYO NASHONI KIBOGE', 'individual', 'Bwana Yesu asifiwe ALFAYO NASHONI KIBOGE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0022', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529420388\\\",\\\"number\\\":\\\"255755114343\\\",\\\"str_response\\\":\\\"1529420388,255755114343,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:39:24', '2026-02-27 14:39:24'),
(172, '255764648884', 'BEATRICE ELIA MHANA', 'individual', 'Bwana Yesu asifiwe BEATRICE ELIA MHANA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0028', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529421248\\\",\\\"number\\\":\\\"255764648884\\\",\\\"str_response\\\":\\\"1529421248,255764648884,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:40:35', '2026-02-27 14:40:35'),
(173, '255756673176', 'Meshack clement mihayo', 'individual', 'Bwana Yesu asifiwe MESHACK CLEMENT MIHAYO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0030', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529422200\\\",\\\"number\\\":\\\"255756673176\\\",\\\"str_response\\\":\\\"1529422200,255756673176,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:41:48', '2026-02-27 14:41:48');
INSERT INTO `sms_logs` (`id`, `recipient`, `receiver`, `type`, `message`, `status`, `response`, `created_at`, `updated_at`) VALUES
(174, '255716668317', 'PERECY BEZA', 'individual', 'Bwana Yesu asifiwe PERECY BEZA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0042', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529422490\\\",\\\"number\\\":\\\"255716668317\\\",\\\"str_response\\\":\\\"1529422490,255716668317,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:42:51', '2026-02-27 14:42:51'),
(175, '255758295657', 'Veronica chavala', 'individual', 'Bwana Yesu asifiwe VERONICA CHAVALA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0025', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529431239\\\",\\\"number\\\":\\\"255758295657\\\",\\\"str_response\\\":\\\"1529431239,255758295657,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:48:59', '2026-02-27 14:48:59'),
(176, '255759076332', 'Denis Cleophace', 'individual', 'Bwana Yesu asifiwe DENIS CLEOPHACE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0026', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529431622\\\",\\\"number\\\":\\\"255759076332\\\",\\\"str_response\\\":\\\"1529431622,255759076332,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:50:03', '2026-02-27 14:50:03'),
(177, '255744932734', 'Edith Batenzi', 'individual', 'Bwana Yesu asifiwe EDITH BATENZI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0027', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529432151\\\",\\\"number\\\":\\\"255744932734\\\",\\\"str_response\\\":\\\"1529432151,255744932734,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:50:46', '2026-02-27 14:50:46'),
(178, '255762285686', 'GLORIA ANDREW MBWAMBO', 'individual', 'Bwana Yesu asifiwe GLORIA  ANDREW MBWAMBO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0029', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529433024\\\",\\\"number\\\":\\\"255762285686\\\",\\\"str_response\\\":\\\"1529433024,255762285686,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:52:18', '2026-02-27 14:52:18'),
(179, '255679320447', 'Felix William', 'individual', 'Bwana Yesu asifiwe FELIX WILLIAM, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0035', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529433340\\\",\\\"number\\\":\\\"255679320447\\\",\\\"str_response\\\":\\\"1529433340,255679320447,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:53:13', '2026-02-27 14:53:13'),
(180, '255769531914', 'NOELA MUSSA', 'individual', 'Bwana Yesu asifiwe NOELA MUSSA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0031', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529433592\\\",\\\"number\\\":\\\"255769531914\\\",\\\"str_response\\\":\\\"1529433592,255769531914,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:53:54', '2026-02-27 14:53:54'),
(181, '255787285496', 'ANGELA ANTELIMI KALALU', 'individual', 'Bwana Yesu asifiwe ANGELA ANTELIMI KALALU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0034', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529434026\\\",\\\"number\\\":\\\"255787285496\\\",\\\"str_response\\\":\\\"1529434026,255787285496,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:55:07', '2026-02-27 14:55:07'),
(182, '255747584779', 'Sam Batenzi', 'individual', 'Bwana Yesu asifiwe SAM BATENZI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0033', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529434602\\\",\\\"number\\\":\\\"255747584779\\\",\\\"str_response\\\":\\\"1529434602,255747584779,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:56:08', '2026-02-27 14:56:08'),
(183, '255686360843', 'ANOLD GIDION FUMBUKA', 'individual', 'Bwana Yesu asifiwe ANOLD GIDION FUMBUKA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0036', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529435129\\\",\\\"number\\\":\\\"255686360843\\\",\\\"str_response\\\":\\\"1529435129,255686360843,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:57:11', '2026-02-27 14:57:11'),
(184, '255612145642', 'ESTER MATHAYO CHARLES', 'individual', 'Bwana Yesu asifiwe ESTER MATHAYO CHARLES, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0038', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529435505\\\",\\\"number\\\":\\\"255612145642\\\",\\\"str_response\\\":\\\"1529435505,255612145642,Send Successful\\\"}]\\r\\n\"', '2026-02-27 14:58:18', '2026-02-27 14:58:18'),
(185, '255717480049', 'Theresia kindole', 'individual', 'Bwana Yesu asifiwe THERESIA KINDOLE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0037', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529440766\\\",\\\"number\\\":\\\"255717480049\\\",\\\"str_response\\\":\\\"1529440766,255717480049,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:04:55', '2026-02-27 15:04:55'),
(186, '255786504664', 'Jane Martin', 'individual', 'Bwana Yesu asifiwe JANE MARTIN, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0039', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529441470\\\",\\\"number\\\":\\\"255786504664\\\",\\\"str_response\\\":\\\"1529441470,255786504664,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:05:56', '2026-02-27 15:05:56'),
(187, '255674918283', 'UYANJO JOHN', 'individual', 'Bwana Yesu asifiwe UYANJO JOHN, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0041', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529442073\\\",\\\"number\\\":\\\"255674918283\\\",\\\"str_response\\\":\\\"1529442073,255674918283,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:07:00', '2026-02-27 15:07:00'),
(188, '255754502656', 'Wenceslaus Benedict Fungamtama', 'individual', 'Bwana Yesu asifiwe WENCESLAUS BENEDICT FUNGAMTAMA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0040', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529442532\\\",\\\"number\\\":\\\"255754502656\\\",\\\"str_response\\\":\\\"1529442532,255754502656,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:08:16', '2026-02-27 15:08:16'),
(189, '255757445207', 'AUGUSTINO MADAKI BONIPHACE', 'individual', 'Bwana Yesu asifiwe AUGUSTINO MADAKI BONIPHACE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0044', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529443573\\\",\\\"number\\\":\\\"255757445207\\\",\\\"str_response\\\":\\\"1529443573,255757445207,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:10:40', '2026-02-27 15:10:40'),
(190, '255746562364', 'MAGRETH SYLIVESTER ROBERT', 'individual', 'Bwana Yesu asifiwe MAGRETH SYLIVESTER ROBERT, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0045', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529444554\\\",\\\"number\\\":\\\"255746562364\\\",\\\"str_response\\\":\\\"1529444554,255746562364,Send Successful\\\"}]\\r\\n\"', '2026-02-27 15:12:02', '2026-02-27 15:12:02'),
(191, '255713863847', 'Kepha Thomas Michael', 'direct', 'Bwana Yesu asifiwe Kepha Thomas Michael, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0046', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529548003\\\",\\\"number\\\":\\\"255713863847\\\",\\\"str_response\\\":\\\"1529548003,255713863847,Send Successful\\\"}]\\r\\n\"', '2026-02-27 16:25:52', '2026-02-27 16:25:52'),
(192, '255713213731', 'Aloyce Godfrey Beza', 'direct', 'Bwana Yesu asifiwe Aloyce Godfrey Beza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0047', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529548290\\\",\\\"number\\\":\\\"255713213731\\\",\\\"str_response\\\":\\\"1529548290,255713213731,Send Successful\\\"}]\\r\\n\"', '2026-02-27 16:26:04', '2026-02-27 16:26:04'),
(193, '255682690607', 'Alam Alexander', 'direct', 'Bwana Yesu asifiwe Alam Alexander, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0048', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529674700\\\",\\\"number\\\":\\\"255682690607\\\",\\\"str_response\\\":\\\"1529674700,255682690607,Send Successful\\\"}]\\r\\n\"', '2026-02-27 17:05:02', '2026-02-27 17:05:02'),
(194, '255761360607', 'Alam Alexander', 'individual', 'Shalom, Hongera kwa kujisajili  kwenye mfumo,  karibu FPCT Kurasini, Namba yako ya ushirika ni 0048', 'Sent', '\"[{\\\"msg_id\\\":\\\"1529677752\\\",\\\"number\\\":\\\"255761360607\\\",\\\"str_response\\\":\\\"1529677752,255761360607,Send Successful\\\"}]\\r\\n\"', '2026-02-27 17:10:56', '2026-02-27 17:10:56'),
(195, '255755624764', 'David Fredrick Mhando', 'direct', 'Bwana Yesu asifiwe David Fredrick Mhando, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0049', 'Sent', '\"[{\\\"msg_id\\\":\\\"1530729458\\\",\\\"number\\\":\\\"255755624764\\\",\\\"str_response\\\":\\\"1530729458,255755624764,Send Successful\\\"}]\\r\\n\"', '2026-02-28 08:39:24', '2026-02-28 08:39:24'),
(196, '255719453147', 'lydia msabaha midello', 'direct', 'Bwana Yesu asifiwe lydia msabaha midello, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0050', 'Sent', '\"[{\\\"msg_id\\\":\\\"1531536425\\\",\\\"number\\\":\\\"255719453147\\\",\\\"str_response\\\":\\\"1531536425,255719453147,Send Successful\\\"}]\\r\\n\"', '2026-02-28 17:48:31', '2026-02-28 17:48:31'),
(197, '255756945201', 'Philomena Solomon Muhamila', 'direct', 'Bwana Yesu asifiwe Philomena Solomon Muhamila, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0051', 'Sent', '\"[{\\\"msg_id\\\":\\\"1531536507\\\",\\\"number\\\":\\\"255756945201\\\",\\\"str_response\\\":\\\"1531536507,255756945201,Send Successful\\\"}]\\r\\n\"', '2026-02-28 17:48:41', '2026-02-28 17:48:41'),
(198, '255713625929', 'Javan Jerome Zablon', 'direct', 'Bwana Yesu asifiwe Javan Jerome Zablon, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0052', 'Sent', '\"[{\\\"msg_id\\\":\\\"1532915686\\\",\\\"number\\\":\\\"255713625929\\\",\\\"str_response\\\":\\\"1532915686,255713625929,Send Successful\\\"}]\\r\\n\"', '2026-03-01 17:37:55', '2026-03-01 17:37:55'),
(199, '255654999179', 'Ndungutse Yosia Misigaro', 'direct', 'Bwana Yesu asifiwe Ndungutse Yosia Misigaro, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0053', 'Sent', '\"[{\\\"msg_id\\\":\\\"1532915846\\\",\\\"number\\\":\\\"255654999179\\\",\\\"str_response\\\":\\\"1532915846,255654999179,Send Successful\\\"}]\\r\\n\"', '2026-03-01 17:38:11', '2026-03-01 17:38:11'),
(200, '255654999179', 'Ndungutse Yosia Misigaro', 'direct', 'Bwana Yesu asifiwe Ndungutse Yosia Misigaro, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0053', 'Sent', '\"[{\\\"msg_id\\\":\\\"1532915856\\\",\\\"number\\\":\\\"255654999179\\\",\\\"str_response\\\":\\\"1532915856,255654999179,Send Successful\\\"}]\\r\\n\"', '2026-03-01 17:38:12', '2026-03-01 17:38:12'),
(201, '255673073841', 'Jacqueline  Maduka', 'direct', 'Bwana Yesu asifiwe Jacqueline  Maduka, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0054', 'Sent', '\"[{\\\"msg_id\\\":\\\"1532916039\\\",\\\"number\\\":\\\"255673073841\\\",\\\"str_response\\\":\\\"1532916039,255673073841,Send Successful\\\"}]\\r\\n\"', '2026-03-01 17:38:34', '2026-03-01 17:38:34'),
(202, '255716572056', 'Laurencia  Thomas Mlawa', 'direct', 'Bwana Yesu asifiwe Laurencia  Thomas Mlawa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0055', 'Sent', '\"[{\\\"msg_id\\\":\\\"1532961996\\\",\\\"number\\\":\\\"255716572056\\\",\\\"str_response\\\":\\\"1532961996,255716572056,Send Successful\\\"}]\\r\\n\"', '2026-03-01 18:20:12', '2026-03-01 18:20:12'),
(203, '255754778376', 'Elicia Sekishaku Kisoma', 'individual', 'Bwana Yesu asifiwe Elicia Sekishaku Kisoma, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0019', 'Sent', '\"[{\\\"msg_id\\\":\\\"1534427887\\\",\\\"number\\\":\\\"255754778376\\\",\\\"str_response\\\":\\\"1534427887,255754778376,Send Successful\\\"}]\\r\\n\"', '2026-03-02 13:36:09', '2026-03-02 13:36:09'),
(204, '255658588591', 'FATUMA ABUBAKARI NGARAMA', 'direct', 'Bwana Yesu asifiwe FATUMA ABUBAKARI NGARAMA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0056', 'Sent', '\"[{\\\"msg_id\\\":\\\"1534459105\\\",\\\"number\\\":\\\"255658588591\\\",\\\"str_response\\\":\\\"1534459105,255658588591,Send Successful\\\"}]\\r\\n\"', '2026-03-02 14:07:09', '2026-03-02 14:07:09'),
(205, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310272\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310272,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(206, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310275\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310275,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(207, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310277\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310277,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(208, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310278\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310278,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(209, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310280\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310280,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(210, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310293\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310293,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(211, '255748589142', 'Patrick Ibrahim Makuhi', 'direct', 'Bwana Yesu asifiwe Patrick Ibrahim Makuhi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0058', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310296\\\",\\\"number\\\":\\\"255748589142\\\",\\\"str_response\\\":\\\"1535310296,255748589142,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:52', '2026-03-02 19:58:52'),
(212, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310331\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310331,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(213, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310356\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310356,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(214, '255748589142', 'Patrick Ibrahim Makuhi', 'direct', 'Bwana Yesu asifiwe Patrick Ibrahim Makuhi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0058', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310359\\\",\\\"number\\\":\\\"255748589142\\\",\\\"str_response\\\":\\\"1535310359,255748589142,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(215, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310362\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310362,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(216, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310370\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310370,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(217, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310376\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310376,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(218, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310396\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310396,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(219, '255764284549', 'Ayoub Isaac Butandu', 'direct', 'Bwana Yesu asifiwe Ayoub Isaac Butandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0057', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535310433\\\",\\\"number\\\":\\\"255764284549\\\",\\\"str_response\\\":\\\"1535310433,255764284549,Send Successful\\\"}]\\r\\n\"', '2026-03-02 19:58:53', '2026-03-02 19:58:53'),
(220, '255758625618', 'ROSE DAVID KUMENYA', 'direct', 'Bwana Yesu asifiwe ROSE DAVID KUMENYA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0059', 'Sent', '\"[{\\\"msg_id\\\":\\\"1535420662\\\",\\\"number\\\":\\\"255758625618\\\",\\\"str_response\\\":\\\"1535420662,255758625618,Send Successful\\\"}]\\r\\n\"', '2026-03-02 22:38:36', '2026-03-02 22:38:36'),
(221, '255767800507', 'Jumanne John Mbilao', 'direct', 'Bwana Yesu asifiwe Jumanne John Mbilao, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0060', 'Sent', '\"[{\\\"msg_id\\\":\\\"1536196111\\\",\\\"number\\\":\\\"255767800507\\\",\\\"str_response\\\":\\\"1536196111,255767800507,Send Successful\\\"}]\\r\\n\"', '2026-03-03 12:16:29', '2026-03-03 12:16:29'),
(222, '255784299942', 'Ernest Gyunda', 'direct', 'Bwana Yesu asifiwe Ernest Gyunda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0061', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537355419\\\",\\\"number\\\":\\\"255784299942\\\",\\\"str_response\\\":\\\"1537355419,255784299942,Send Successful\\\"}]\\r\\n\"', '2026-03-04 01:26:30', '2026-03-04 01:26:30'),
(223, '255767435625', 'NEZIA SHELF SHERTIELY', 'direct', 'Bwana Yesu asifiwe NEZIA SHELF SHERTIELY, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0062', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537355499\\\",\\\"number\\\":\\\"255767435625\\\",\\\"str_response\\\":\\\"1537355499,255767435625,Send Successful\\\"}]\\r\\n\"', '2026-03-04 01:26:44', '2026-03-04 01:26:44'),
(224, '255758159929', 'Faraja Anthony Rutebuka', 'direct', 'Bwana Yesu asifiwe Faraja Anthony Rutebuka, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0063', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537515619\\\",\\\"number\\\":\\\"255758159929\\\",\\\"str_response\\\":\\\"1537515619,255758159929,Send Successful\\\"}]\\r\\n\"', '2026-03-04 11:20:48', '2026-03-04 11:20:48'),
(225, '255626536720', 'Joseph William Makange', 'direct', 'Bwana Yesu asifiwe Joseph William Makange, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0064', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537713279\\\",\\\"number\\\":\\\"255626536720\\\",\\\"str_response\\\":\\\"1537713279,255626536720,Send Successful\\\"}]\\r\\n\"', '2026-03-04 14:52:32', '2026-03-04 14:52:32'),
(226, '255682956632', 'Witness Morice', 'direct', 'Bwana Yesu asifiwe Witness Morice, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0065', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537713422\\\",\\\"number\\\":\\\"255682956632\\\",\\\"str_response\\\":\\\"1537713422,255682956632,Send Successful\\\"}]\\r\\n\"', '2026-03-04 14:52:38', '2026-03-04 14:52:38'),
(227, '255768549003', 'Doto Geofrey Chima', 'direct', 'Bwana Yesu asifiwe Doto Geofrey Chima, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0066', 'Sent', '\"[{\\\"msg_id\\\":\\\"1537713769\\\",\\\"number\\\":\\\"255768549003\\\",\\\"str_response\\\":\\\"1537713769,255768549003,Send Successful\\\"}]\\r\\n\"', '2026-03-04 14:52:58', '2026-03-04 14:52:58'),
(228, '255656740678', 'Janeth Mramba', 'direct', 'Bwana Yesu asifiwe Janeth Mramba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0067', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546371171\\\",\\\"number\\\":\\\"255656740678\\\",\\\"str_response\\\":\\\"1546371171,255656740678,Send Successful\\\"}]\\r\\n\"', '2026-03-09 14:15:54', '2026-03-09 14:15:54'),
(229, '255683246553', 'Naomi Josiah Kabirigi', 'direct', 'Bwana Yesu asifiwe Naomi Josiah Kabirigi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0068', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546371369\\\",\\\"number\\\":\\\"255683246553\\\",\\\"str_response\\\":\\\"1546371369,255683246553,Send Successful\\\"}]\\r\\n\"', '2026-03-09 14:16:07', '2026-03-09 14:16:07'),
(230, '255678121710', 'Rachel Gyunda', 'direct', 'Bwana Yesu asifiwe Rachel Gyunda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0069', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546467349\\\",\\\"number\\\":\\\"255678121710\\\",\\\"str_response\\\":\\\"1546467349,255678121710,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:32:37', '2026-03-09 15:32:37'),
(231, '255672119848', 'Richard Mussa Lutobanija', 'direct', 'Bwana Yesu asifiwe Richard Mussa Lutobanija, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0070', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546467866\\\",\\\"number\\\":\\\"255672119848\\\",\\\"str_response\\\":\\\"1546467866,255672119848,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:33:11', '2026-03-09 15:33:11'),
(232, '255687482953', 'JOSEPH KAVASHA YUNUS ALEX', 'direct', 'Bwana Yesu asifiwe JOSEPH KAVASHA YUNUS ALEX, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0071', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546467916\\\",\\\"number\\\":\\\"255687482953\\\",\\\"str_response\\\":\\\"1546467916,255687482953,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:33:16', '2026-03-09 15:33:16'),
(233, '255673286630', 'Dorcas Vicent Nangonga', 'direct', 'Bwana Yesu asifiwe Dorcas Vicent Nangonga, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0072', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546468285\\\",\\\"number\\\":\\\"255673286630\\\",\\\"str_response\\\":\\\"1546468285,255673286630,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:33:59', '2026-03-09 15:33:59'),
(234, '255767939928', 'JONAS MARCO MPANZO', 'direct', 'Bwana Yesu asifiwe JONAS MARCO MPANZO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0073', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546469738\\\",\\\"number\\\":\\\"255767939928\\\",\\\"str_response\\\":\\\"1546469738,255767939928,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:35:49', '2026-03-09 15:35:49'),
(235, '255759933152', 'Rahel Alfredy', 'direct', 'Bwana Yesu asifiwe Rahel Alfredy, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0074', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546470544\\\",\\\"number\\\":\\\"255759933152\\\",\\\"str_response\\\":\\\"1546470544,255759933152,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:36:37', '2026-03-09 15:36:37'),
(236, '255783166249', 'HELMAN EMANNUEL CHARLES', 'direct', 'Bwana Yesu asifiwe HELMAN EMANNUEL CHARLES, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0075', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546471559\\\",\\\"number\\\":\\\"255783166249\\\",\\\"str_response\\\":\\\"1546471559,255783166249,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:37:28', '2026-03-09 15:37:28'),
(237, '255784681321', 'FREDRICK JACOB BALIGOMWA', 'direct', 'Bwana Yesu asifiwe FREDRICK JACOB BALIGOMWA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0076', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546472876\\\",\\\"number\\\":\\\"255784681321\\\",\\\"str_response\\\":\\\"1546472876,255784681321,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:38:37', '2026-03-09 15:38:37'),
(238, '255625604709', 'Baraka Exon', 'direct', 'Bwana Yesu asifiwe Baraka Exon, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0077', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546474154\\\",\\\"number\\\":\\\"255625604709\\\",\\\"str_response\\\":\\\"1546474154,255625604709,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:39:30', '2026-03-09 15:39:30'),
(239, '255748375141', 'Jane Joseph Elias', 'direct', 'Bwana Yesu asifiwe Jane Joseph Elias, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0078', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546475036\\\",\\\"number\\\":\\\"255748375141\\\",\\\"str_response\\\":\\\"1546475036,255748375141,Send Successful\\\"}]\\r\\n\"', '2026-03-09 15:40:09', '2026-03-09 15:40:09'),
(240, '255672646219', 'Daniel Vicent Nangonga', 'direct', 'Bwana Yesu asifiwe Daniel Vicent Nangonga, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0079', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546831049\\\",\\\"number\\\":\\\"255672646219\\\",\\\"str_response\\\":\\\"1546831049,255672646219,Send Successful\\\"}]\\r\\n\"', '2026-03-09 18:19:16', '2026-03-09 18:19:16'),
(241, '255713766759', 'Efraim Bisese', 'direct', 'Bwana Yesu asifiwe Efraim Bisese, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0080', 'Sent', '\"[{\\\"msg_id\\\":\\\"1546861487\\\",\\\"number\\\":\\\"255713766759\\\",\\\"str_response\\\":\\\"1546861487,255713766759,Send Successful\\\"}]\\r\\n\"', '2026-03-09 19:21:38', '2026-03-09 19:21:38'),
(242, '255742660107', 'Paulo Kwilasa', 'direct', 'Bwana Yesu asifiwe Paulo Kwilasa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0081', 'Sent', '\"1547248896,255742660107,Send Successful\\r\\n\"', '2026-03-09 23:05:03', '2026-03-09 23:05:03'),
(243, '255650877876', 'Aneth Amos', 'direct', 'Bwana Yesu asifiwe Aneth Amos, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0082', 'Sent', '\"1547249025,255650877876,Send Successful\\r\\n\"', '2026-03-09 23:05:19', '2026-03-09 23:05:19'),
(244, '255753019220', 'Elisha Elia Mbuba', 'direct', 'Bwana Yesu asifiwe Elisha Elia Mbuba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0083', 'Sent', '\"1547252000,255753019220,Send Successful\\r\\n\"', '2026-03-09 23:08:25', '2026-03-09 23:08:25'),
(245, '255687099011', 'Miriam Fredy Mkisi', 'direct', 'Bwana Yesu asifiwe Miriam Fredy Mkisi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0084', 'Sent', '\"1547898914,255687099011,Send Successful\\r\\n\"', '2026-03-10 09:59:09', '2026-03-10 09:59:09'),
(246, '255653748496', 'Deborah Emmanuel Christopher', 'direct', 'Bwana Yesu asifiwe Deborah Emmanuel Christopher, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0085', 'Sent', '\"1548069149,255653748496,Send Successful\\r\\n\"', '2026-03-10 10:16:14', '2026-03-10 10:16:14'),
(247, '255621686814', 'Lilian Kameta', 'direct', 'Bwana Yesu asifiwe Lilian Kameta, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0086', 'Sent', '\"1548074173,255621686814,Send Successful\\r\\n\"', '2026-03-10 10:16:28', '2026-03-10 10:16:28'),
(248, '255758021689', 'Moreen romanus mdemu', 'direct', 'Bwana Yesu asifiwe Moreen romanus mdemu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0087', 'Sent', '\"1548075297,255758021689,Send Successful\\r\\n\"', '2026-03-10 10:16:48', '2026-03-10 10:16:48'),
(249, '255679901762', 'Esther David Mpinga', 'direct', 'Bwana Yesu asifiwe Esther David Mpinga, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0088', 'Sent', '\"1548075482,255679901762,Send Successful\\r\\n\"', '2026-03-10 10:16:58', '2026-03-10 10:16:58'),
(250, '255759605163', 'Elias Pafla', 'direct', 'Bwana Yesu asifiwe Elias Pafla, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0089', 'Sent', '\"1548075569,255759605163,Send Successful\\r\\n\"', '2026-03-10 10:17:12', '2026-03-10 10:17:12'),
(251, '255744948459', 'AHAZI EMAU MWENDAPOLE', 'direct', 'Bwana Yesu asifiwe AHAZI EMAU MWENDAPOLE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0090', 'Sent', '\"1548078832,255744948459,Send Successful\\r\\n\"', '2026-03-10 10:17:37', '2026-03-10 10:17:37'),
(252, '255769860746', 'THERESIA EMMANUEL MUSHI', 'direct', 'Bwana Yesu asifiwe THERESIA EMMANUEL MUSHI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0091', 'Sent', '\"1548082614,255769860746,Send Successful\\r\\n\"', '2026-03-10 10:17:57', '2026-03-10 10:17:57'),
(253, '255657402105', 'Samson Batista Kindole', 'direct', 'Bwana Yesu asifiwe Samson Batista Kindole, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0092', 'Sent', '\"1548089946,255657402105,Send Successful\\r\\n\"', '2026-03-10 10:18:56', '2026-03-10 10:18:56'),
(254, '255784492222', 'ELIZABETH JOHN LUTIGA', 'direct', 'Bwana Yesu asifiwe ELIZABETH JOHN LUTIGA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0093', 'Sent', '\"1548090423,255784492222,Send Successful\\r\\n\"', '2026-03-10 10:19:37', '2026-03-10 10:19:37'),
(255, '255767943911', 'Kelvin Victor Dillunga', 'direct', 'Bwana Yesu asifiwe Kelvin Victor Dillunga, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0094', 'Sent', '\"1548091400,255767943911,Send Successful\\r\\n\"', '2026-03-10 10:20:24', '2026-03-10 10:20:24'),
(256, '255769431353', 'Gelda Paulo', 'direct', 'Bwana Yesu asifiwe Gelda Paulo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0095', 'Sent', '\"1548294954,255769431353,Send Successful\\r\\n\"', '2026-03-10 11:02:32', '2026-03-10 11:02:32'),
(257, '255747013806', 'Edina msubi', 'direct', 'Bwana Yesu asifiwe Edina msubi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0096', 'Sent', '\"1548295101,255747013806,Send Successful\\r\\n\"', '2026-03-10 11:02:46', '2026-03-10 11:02:46'),
(258, '255692894256', 'DANIEL JOHN MGHENYI', 'direct', 'Bwana Yesu asifiwe DANIEL JOHN MGHENYI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0097', 'Sent', '\"1548295563,255692894256,Send Successful\\r\\n\"', '2026-03-10 11:03:18', '2026-03-10 11:03:18'),
(259, '255783381589', 'JOHNBOSCO ROBERT NDOMBA', 'direct', 'Bwana Yesu asifiwe JOHNBOSCO ROBERT NDOMBA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0098', 'Sent', '\"1548295861,255783381589,Send Successful\\r\\n\"', '2026-03-10 11:03:46', '2026-03-10 11:03:46'),
(260, '255623209891', 'aneth maila', 'direct', 'Bwana Yesu asifiwe aneth maila, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0099', 'Sent', '\"1548296103,255623209891,Send Successful\\r\\n\"', '2026-03-10 11:04:12', '2026-03-10 11:04:12'),
(261, '255625414536', 'NEEMA IBRAHIMU', 'direct', 'Bwana Yesu asifiwe NEEMA IBRAHIMU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0100', 'Sent', '\"1548296220,255625414536,Send Successful\\r\\n\"', '2026-03-10 11:04:23', '2026-03-10 11:04:23'),
(262, '255782252032', 'Witness Johnson Kitaa', 'direct', 'Bwana Yesu asifiwe Witness Johnson Kitaa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0101', 'Sent', '\"1548296391,255782252032,Send Successful\\r\\n\"', '2026-03-10 11:04:53', '2026-03-10 11:04:53'),
(263, '255746454024', 'Richard Nassoro Yumba', 'direct', 'Bwana Yesu asifiwe Richard Nassoro Yumba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0102', 'Sent', '\"1548296596,255746454024,Send Successful\\r\\n\"', '2026-03-10 11:05:22', '2026-03-10 11:05:22'),
(264, '255635213724', 'Grace Oscar kindole', 'direct', 'Bwana Yesu asifiwe Grace Oscar kindole, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0103', 'Sent', '\"1548296694,255635213724,Send Successful\\r\\n\"', '2026-03-10 11:05:37', '2026-03-10 11:05:37'),
(265, '255762808870', 'Reuben gidion lomayan', 'direct', 'Bwana Yesu asifiwe Reuben gidion lomayan, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0104', 'Sent', '\"1548297236,255762808870,Send Successful\\r\\n\"', '2026-03-10 11:06:41', '2026-03-10 11:06:41'),
(266, '255763441922', 'JOHN CHRISTOPHER PAZIA', 'direct', 'Bwana Yesu asifiwe JOHN CHRISTOPHER PAZIA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0105', 'Sent', '\"1548297282,255763441922,Send Successful\\r\\n\"', '2026-03-10 11:06:47', '2026-03-10 11:06:47'),
(267, '255765233373', 'Abdon Israel', 'direct', 'Bwana Yesu asifiwe Abdon Israel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0106', 'Sent', '\"1548298230,255765233373,Send Successful\\r\\n\"', '2026-03-10 11:08:18', '2026-03-10 11:08:18'),
(268, '255656750710', 'Jesca Emmanuel Pelembela', 'direct', 'Bwana Yesu asifiwe Jesca Emmanuel Pelembela, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0107', 'Sent', '\"1548360941,255656750710,Send Successful\\r\\n\"', '2026-03-10 11:59:13', '2026-03-10 11:59:13'),
(269, '255717330095', 'Praygod Yohana', 'direct', 'Bwana Yesu asifiwe Praygod Yohana, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0108', 'Sent', '\"1548361180,255717330095,Send Successful\\r\\n\"', '2026-03-10 11:59:40', '2026-03-10 11:59:40'),
(270, '255683637757', 'Michael D. Michael', 'direct', 'Bwana Yesu asifiwe Michael D. Michael, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0109', 'Sent', '\"1548361323,255683637757,Send Successful\\r\\n\"', '2026-03-10 11:59:52', '2026-03-10 11:59:52'),
(271, '255755413565', 'Penuel onesmo kasasila', 'direct', 'Bwana Yesu asifiwe Penuel onesmo kasasila, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0110', 'Sent', '\"1548361365,255755413565,Send Successful\\r\\n\"', '2026-03-10 11:59:58', '2026-03-10 11:59:58'),
(272, '255625254512', 'Lydia Francis julias', 'direct', 'Bwana Yesu asifiwe Lydia Francis julias, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0111', 'Sent', '\"1548371158,255625254512,Send Successful\\r\\n\"', '2026-03-10 12:15:06', '2026-03-10 12:15:06'),
(273, '255768651845', 'ESTA ISRAEL SAMWEL', 'direct', 'Bwana Yesu asifiwe ESTA ISRAEL SAMWEL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0112', 'Sent', '\"1548383714,255768651845,Send Successful\\r\\n\"', '2026-03-10 12:30:38', '2026-03-10 12:30:38'),
(274, '255625149418', 'Rachel Charles Ng’wavi', 'direct', 'Bwana Yesu asifiwe Rachel Charles Ng’wavi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0113', 'Sent', '\"1548383814,255625149418,Send Successful\\r\\n\"', '2026-03-10 12:30:43', '2026-03-10 12:30:43'),
(275, '255627768223', 'Eliah Samson', 'direct', 'Bwana Yesu asifiwe Eliah Samson, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0114', 'Sent', '\"1548383932,255627768223,Send Successful\\r\\n\"', '2026-03-10 12:30:57', '2026-03-10 12:30:57'),
(276, '255788359022', 'Ebenezer Mathew', 'direct', 'Bwana Yesu asifiwe Ebenezer Mathew, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0115', 'Sent', '\"1548387165,255788359022,Send Successful\\r\\n\"', '2026-03-10 12:33:56', '2026-03-10 12:33:56'),
(277, '255656750710', 'Jesca Emmanuel Pelembela', 'direct', 'Bwana Yesu asifiwe Jesca Emmanuel Pelembela, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0107', 'Sent', '\"1548407455,255656750710,Send Successful\\r\\n\"', '2026-03-10 12:52:46', '2026-03-10 12:52:46'),
(278, '255767983236', 'SHADRACK LEONARD', 'direct', 'Bwana Yesu asifiwe SHADRACK LEONARD, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0116', 'Sent', '\"1548544700,255767983236,Send Successful\\r\\n\"', '2026-03-10 14:28:44', '2026-03-10 14:28:44'),
(279, '255699650632', 'Abigail Suleiman Mathew', 'individual', 'Bwana Yesu asifiwe ABIGAIL SULEIMAN MATTHEW, Sasa wewe ni mshirika rasmi wa FPCT kurasini Namba yako ya ushirika ni: 0115', 'Sent', '\"1548578324,255699650632,Send Successful\\r\\n\"', '2026-03-10 14:51:25', '2026-03-10 14:51:25'),
(280, '255746454024', 'Assa Jonathan Kasongo', 'direct', 'Bwana Yesu asifiwe Assa Jonathan Kasongo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0117', 'Sent', '\"1549073262,255746454024,Send Successful\\r\\n\"', '2026-03-10 17:48:25', '2026-03-10 17:48:25'),
(281, '255652655485', 'Atuganile Benson Mwambola', 'direct', 'Bwana Yesu asifiwe Atuganile Benson Mwambola, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0118', 'Sent', '\"1549073313,255652655485,Send Successful\\r\\n\"', '2026-03-10 17:48:33', '2026-03-10 17:48:33'),
(282, '255789841282', 'Agnes Isaya', 'direct', 'Bwana Yesu asifiwe Agnes Isaya, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0119', 'Sent', '\"1549074042,255789841282,Send Successful\\r\\n\"', '2026-03-10 17:50:15', '2026-03-10 17:50:15'),
(283, '255629018686', 'Simeon Erasto Rwamugabo', 'direct', 'Bwana Yesu asifiwe Simeon Erasto Rwamugabo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0120', 'Sent', '\"1549074220,255629018686,Send Successful\\r\\n\"', '2026-03-10 17:50:30', '2026-03-10 17:50:30'),
(284, '255736000391', 'Monica Samwel Yungu', 'direct', 'Bwana Yesu asifiwe Monica Samwel Yungu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0121', 'Sent', '\"1549074921,255736000391,Send Successful\\r\\n\"', '2026-03-10 17:51:37', '2026-03-10 17:51:37'),
(285, '255688063104', 'Martha Essau Nyaulingo', 'direct', 'Bwana Yesu asifiwe Martha Essau Nyaulingo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0122', 'Sent', '\"1549075097,255688063104,Send Successful\\r\\n\"', '2026-03-10 17:51:50', '2026-03-10 17:51:50'),
(286, '255689373760', 'Eden Francis', 'direct', 'Bwana Yesu asifiwe Eden Francis, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0123', 'Sent', '\"1549086773,255689373760,Send Successful\\r\\n\"', '2026-03-10 18:09:23', '2026-03-10 18:09:23'),
(287, '255612639779', 'Angel William Makange', 'direct', 'Bwana Yesu asifiwe Angel William Makange, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0124', 'Sent', '\"1549087658,255612639779,Send Successful\\r\\n\"', '2026-03-10 18:10:49', '2026-03-10 18:10:49'),
(288, '255764757383', 'Leah January Mvungi', 'direct', 'Bwana Yesu asifiwe Leah January Mvungi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0125', 'Sent', '\"1549092745,255764757383,Send Successful\\r\\n\"', '2026-03-10 18:13:12', '2026-03-10 18:13:12'),
(289, '255758982502', 'Esther Mhonda', 'direct', 'Bwana Yesu asifiwe Esther Mhonda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0126', 'Sent', '\"1549551863,255758982502,Send Successful\\r\\n\"', '2026-03-10 23:58:08', '2026-03-10 23:58:08'),
(290, '255769949175', 'Niela frank mahuba', 'direct', 'Bwana Yesu asifiwe Niela frank mahuba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0127', 'Sent', '\"1549551916,255769949175,Send Successful\\r\\n\"', '2026-03-10 23:58:23', '2026-03-10 23:58:23'),
(291, '255653567111', 'Anna Claudian Mayengela', 'direct', 'Bwana Yesu asifiwe Anna Claudian Mayengela, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0128', 'Sent', '\"1549551988,255653567111,Send Successful\\r\\n\"', '2026-03-10 23:58:41', '2026-03-10 23:58:41'),
(292, '255679949883', 'LADSLAUS JOSEPHAT DYUGAMBE', 'direct', 'Bwana Yesu asifiwe LADSLAUS JOSEPHAT DYUGAMBE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0129', 'Sent', '\"1549552013,255679949883,Send Successful\\r\\n\"', '2026-03-10 23:58:46', '2026-03-10 23:58:46'),
(293, '255759242292', 'ROGERS SIMON MAGENE', 'direct', 'Bwana Yesu asifiwe ROGERS SIMON MAGENE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0130', 'Sent', '\"1549552260,255759242292,Send Successful\\r\\n\"', '2026-03-10 23:59:29', '2026-03-10 23:59:29'),
(294, '255652464413', 'Evarist Mrema', 'direct', 'Bwana Yesu asifiwe Evarist Mrema, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0131', 'Sent', '\"1549559107,255652464413,Send Successful\\r\\n\"', '2026-03-11 00:10:35', '2026-03-11 00:10:35'),
(295, '255613898604', 'KAIROS ELIPHASI STEPHANO', 'direct', 'Bwana Yesu asifiwe KAIROS ELIPHASI STEPHANO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0132', 'Sent', '\"1549559168,255613898604,Send Successful\\r\\n\"', '2026-03-11 00:10:52', '2026-03-11 00:10:52'),
(296, '255775752868', 'Elisha Emmanuel Mkodo', 'direct', 'Bwana Yesu asifiwe Elisha Emmanuel Mkodo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0133', 'Sent', '\"1549559211,255775752868,Send Successful\\r\\n\"', '2026-03-11 00:11:05', '2026-03-11 00:11:05'),
(297, '255775251894', 'Erika Jastin Ngao', 'direct', 'Bwana Yesu asifiwe Erika Jastin Ngao, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0134', 'Sent', '\"1549559259,255775251894,Send Successful\\r\\n\"', '2026-03-11 00:11:20', '2026-03-11 00:11:20'),
(298, '255752505189', 'David E. Kitundu', 'direct', 'Bwana Yesu asifiwe David E. Kitundu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0135', 'Sent', '\"1549559342,255752505189,Send Successful\\r\\n\"', '2026-03-11 00:11:41', '2026-03-11 00:11:41'),
(299, '255626616703', 'CHRISTINA EZRA BALEGELEJE', 'direct', 'Bwana Yesu asifiwe CHRISTINA EZRA BALEGELEJE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0136', 'Sent', '\"1549559410,255626616703,Send Successful\\r\\n\"', '2026-03-11 00:11:56', '2026-03-11 00:11:56'),
(300, '255766107442', 'MILTONI JOHN RUSIGALIYE', 'direct', 'Bwana Yesu asifiwe MILTONI JOHN RUSIGALIYE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0137', 'Sent', '\"1549560010,255766107442,Send Successful\\r\\n\"', '2026-03-11 00:13:46', '2026-03-11 00:13:46'),
(301, '255674287981', 'JESCA ADROFU STEPHANO', 'direct', 'Bwana Yesu asifiwe JESCA ADROFU STEPHANO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0138', 'Sent', '\"1549561282,255674287981,Send Successful\\r\\n\"', '2026-03-11 00:16:17', '2026-03-11 00:16:17'),
(302, '255687099011', 'Miriam Fredy Mkisi', 'individual', 'Bwana Yesu asifiwe MIRIAM FRED MKISI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0084', 'Sent', '\"1550225322,255687099011,Send Successful\\r\\n\"', '2026-03-11 09:57:31', '2026-03-11 09:57:31'),
(303, '255785294006', 'Joshua Joas', 'direct', 'Bwana Yesu asifiwe Joshua Joas, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0139', 'Sent', '\"1550238968,255785294006,Send Successful\\r\\n\"', '2026-03-11 10:07:10', '2026-03-11 10:07:10'),
(304, '255764312396', 'Lydia Joshua Mwansasu', 'direct', 'Bwana Yesu asifiwe Lydia Joshua Mwansasu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0140', 'Sent', '\"1550238986,255764312396,Send Successful\\r\\n\"', '2026-03-11 10:07:13', '2026-03-11 10:07:13'),
(305, '255689775142', 'Lucia Sospeter Bathoha', 'direct', 'Bwana Yesu asifiwe Lucia Sospeter Bathoha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0141', 'Sent', '\"1550392310,255689775142,Send Successful\\r\\n\"', '2026-03-11 12:26:12', '2026-03-11 12:26:12'),
(306, '255763064857', 'RONALD CALEB RWANDALLA', 'direct', 'Bwana Yesu asifiwe RONALD CALEB RWANDALLA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0142', 'Sent', '\"1550392530,255763064857,Send Successful\\r\\n\"', '2026-03-11 12:26:28', '2026-03-11 12:26:28'),
(307, '255621810782', 'Lessa Edimon Katwikilo', 'direct', 'Bwana Yesu asifiwe Lessa Edimon Katwikilo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0143', 'Sent', '\"1550485082,255621810782,Send Successful\\r\\n\"', '2026-03-11 13:25:25', '2026-03-11 13:25:25'),
(308, '255693361761', 'Shamimu Issa', 'direct', 'Bwana Yesu asifiwe Shamimu Issa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0144', 'Sent', '\"1550558079,255693361761,Send Successful\\r\\n\"', '2026-03-11 14:12:41', '2026-03-11 14:12:41'),
(309, '255769164245', 'JESKA MESHAKI KHOLO', 'direct', 'Bwana Yesu asifiwe JESKA MESHAKI KHOLO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0145', 'Sent', '\"1550622472,255769164245,Send Successful\\r\\n\"', '2026-03-11 14:57:38', '2026-03-11 14:57:38'),
(310, '255754942522', 'Mahanga Raphael Buruna', 'direct', 'Bwana Yesu asifiwe Mahanga Raphael Buruna, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0146', 'Sent', '\"1551289597,255754942522,Send Successful\\r\\n\"', '2026-03-11 20:08:07', '2026-03-11 20:08:07'),
(311, '255754942522', 'Mahanga Raphael Buruna', 'direct', 'Bwana Yesu asifiwe Mahanga Raphael Buruna, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0146', 'Sent', '\"1551289598,255754942522,Send Successful\\r\\n\"', '2026-03-11 20:08:08', '2026-03-11 20:08:08'),
(312, '255767890819', 'Abel Ahungu', 'direct', 'Bwana Yesu asifiwe Abel Ahungu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0147', 'Sent', '\"1551290098,255767890819,Send Successful\\r\\n\"', '2026-03-11 20:09:29', '2026-03-11 20:09:29'),
(313, '255716669794', 'EDSON MICHAEL', 'direct', 'Bwana Yesu asifiwe EDSON MICHAEL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0148', 'Sent', '\"1551307381,255716669794,Send Successful\\r\\n\"', '2026-03-11 20:59:48', '2026-03-11 20:59:48'),
(314, '255718437044', 'Upendo Isaya Kapama', 'direct', 'Bwana Yesu asifiwe Upendo Isaya Kapama, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0149', 'Sent', '\"1551307440,255718437044,Send Successful\\r\\n\"', '2026-03-11 20:59:57', '2026-03-11 20:59:57'),
(315, '255745224991', 'GLADNESS JAMES BABU.', 'direct', 'Bwana Yesu asifiwe GLADNESS JAMES BABU., Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0150', 'Sent', '\"1551650199,255745224991,Send Successful\\r\\n\"', '2026-03-12 08:45:12', '2026-03-12 08:45:12'),
(316, '255764242496', 'Grace Dalas Mpabansi', 'direct', 'Bwana Yesu asifiwe Grace Dalas Mpabansi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0151', 'Sent', '\"1551669352,255764242496,Send Successful\\r\\n\"', '2026-03-12 08:50:45', '2026-03-12 08:50:45'),
(317, '255764242496', 'Grace Dalas Mpabansi', 'direct', 'Bwana Yesu asifiwe Grace Dalas Mpabansi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0151', 'Sent', '\"1551669355,255764242496,Send Successful\\r\\n\"', '2026-03-12 08:50:46', '2026-03-12 08:50:46'),
(318, '255753078654', 'Teresia Andrew Mwakalebela', 'direct', 'Bwana Yesu asifiwe Teresia Andrew Mwakalebela, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0152', 'Sent', '\"1551672125,255753078654,Send Successful\\r\\n\"', '2026-03-12 08:51:32', '2026-03-12 08:51:32'),
(319, '255767936778', 'Isaaya Bahati', 'direct', 'Bwana Yesu asifiwe Isaaya Bahati, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0153', 'Sent', '\"1551692350,255767936778,Send Successful\\r\\n\"', '2026-03-12 08:53:14', '2026-03-12 08:53:14'),
(320, '255746881275', 'Irene Herieli Mgonja', 'direct', 'Bwana Yesu asifiwe Irene Herieli Mgonja, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0154', 'Sent', '\"1551700382,255746881275,Send Successful\\r\\n\"', '2026-03-12 08:53:52', '2026-03-12 08:53:52'),
(321, '255776011863', 'Peres yohana  fransisco', 'direct', 'Bwana Yesu asifiwe Peres yohana  fransisco, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0155', 'Sent', '\"1551704306,255776011863,Send Successful\\r\\n\"', '2026-03-12 08:54:01', '2026-03-12 08:54:01'),
(322, '255658226389', 'Natalia S Pambe', 'direct', 'Bwana Yesu asifiwe Natalia S Pambe, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0156', 'Sent', '\"1552613220,255658226389,Send Successful\\r\\n\"', '2026-03-12 12:38:20', '2026-03-12 12:38:20'),
(323, '255712732587', 'Yakobo issaka paulo', 'direct', 'Bwana Yesu asifiwe Yakobo issaka paulo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0157', 'Sent', '\"1553505497,255712732587,Send Successful\\r\\n\"', '2026-03-12 16:44:25', '2026-03-12 16:44:25'),
(324, '255656663761', 'Vanessa Fadhila', 'direct', 'Bwana Yesu asifiwe Vanessa Fadhila, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0158', 'Sent', '\"1553580470,255656663761,Send Successful\\r\\n\"', '2026-03-12 18:11:26', '2026-03-12 18:11:26'),
(325, '255657299836', 'Amani Chongela Muhono', 'direct', 'Bwana Yesu asifiwe Amani Chongela Muhono, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0159', 'Sent', '\"1553582818,255657299836,Send Successful\\r\\n\"', '2026-03-12 18:14:47', '2026-03-12 18:14:47');
INSERT INTO `sms_logs` (`id`, `recipient`, `receiver`, `type`, `message`, `status`, `response`, `created_at`, `updated_at`) VALUES
(326, '255789841282', 'Agnes Isaya', 'individual', 'Bwana Yesu asifiwe Agnes Isaya, Sasa wewe ni mshirika rasmi wa FPCT Kurasini Namba yako ya ushirika: 0119', 'Sent', '\"1556432708,255789841282,Send Successful\\r\\n\"', '2026-03-13 13:57:35', '2026-03-13 13:57:35'),
(327, '255622324585', 'Vaileth Shukrani Saimon', 'direct', 'Bwana Yesu asifiwe Vaileth Shukrani Saimon, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0160', 'Sent', '\"1556437149,255622324585,Send Successful\\r\\n\"', '2026-03-13 14:04:37', '2026-03-13 14:04:37'),
(328, '255699650632', 'Abigail Suleiman Mathew', 'direct', 'Bwana Yesu asifiwe Abigail Suleiman Mathew, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0161', 'Sent', '\"1556638916,255699650632,Send Successful\\r\\n\"', '2026-03-13 15:08:25', '2026-03-13 15:08:25'),
(329, '255656113382', 'Isaya Isack Amos', 'direct', 'Bwana Yesu asifiwe Isaya Isack Amos, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0162', 'Sent', '\"1561994643,255656113382,Send Successful\\r\\n\"', '2026-03-15 22:51:25', '2026-03-15 22:51:25'),
(330, '255755207108', 'Naftari Jeremia Musebei', 'direct', 'Bwana Yesu asifiwe Naftari Jeremia Musebei, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0163', 'Sent', '\"1561994858,255755207108,Send Successful\\r\\n\"', '2026-03-15 22:51:49', '2026-03-15 22:51:49'),
(331, '255714500276', 'Raphael John mbuji', 'direct', 'Bwana Yesu asifiwe Raphael John mbuji, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0164', 'Sent', '\"1561995988,255714500276,Send Successful\\r\\n\"', '2026-03-15 22:53:04', '2026-03-15 22:53:04'),
(332, '255676686400', 'Janeth Fanuel Mbugha', 'direct', 'Bwana Yesu asifiwe Janeth Fanuel Mbugha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0165', 'Sent', '\"1561996149,255676686400,Send Successful\\r\\n\"', '2026-03-15 22:53:17', '2026-03-15 22:53:17'),
(333, '255769146998', 'AYUBU SELEMANI CHIZA', 'direct', 'Bwana Yesu asifiwe AYUBU SELEMANI CHIZA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0166', 'Sent', '\"1561996613,255769146998,Send Successful\\r\\n\"', '2026-03-15 22:54:03', '2026-03-15 22:54:03'),
(334, '255747156221', 'Prisca Simon Nyamhinda', 'direct', 'Bwana Yesu asifiwe Prisca Simon Nyamhinda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0167', 'Sent', '\"1563839526,255747156221,Send Successful\\r\\n\"', '2026-03-16 21:03:11', '2026-03-16 21:03:11'),
(335, '255679309107', 'AMINA JUMANNE DANIEL', 'direct', 'Bwana Yesu asifiwe AMINA JUMANNE DANIEL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0168', 'Sent', '\"1563839662,255679309107,Send Successful\\r\\n\"', '2026-03-16 21:03:30', '2026-03-16 21:03:30'),
(336, '255763448404', 'ELIAS ELIAS SEKA', 'direct', 'Bwana Yesu asifiwe ELIAS ELIAS SEKA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0169', 'Sent', '\"1564073194,255763448404,Send Successful\\r\\n\"', '2026-03-17 07:12:04', '2026-03-17 07:12:04'),
(337, '255719712078', 'BENEDICTO SADOCK NTIGAHELA', 'direct', 'Bwana Yesu asifiwe BENEDICTO SADOCK NTIGAHELA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0170', 'Sent', '\"1564983941,255719712078,Send Successful\\r\\n\"', '2026-03-17 11:32:01', '2026-03-17 11:32:01'),
(338, '255763423432', 'Tegemea Ezekiel Bitana', 'direct', 'Bwana Yesu asifiwe Tegemea Ezekiel Bitana, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0171', 'Sent', '\"1565897115,255763423432,Send Successful\\r\\n\"', '2026-03-17 20:16:21', '2026-03-17 20:16:21'),
(339, '255715787036', 'Catherine Ulombo Kalibuha', 'direct', 'Bwana Yesu asifiwe Catherine Ulombo Kalibuha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0172', 'Sent', '\"1565897962,255715787036,Send Successful\\r\\n\"', '2026-03-17 20:18:57', '2026-03-17 20:18:57'),
(340, '255714272737', 'Godfrey Mtamba', 'direct', 'Bwana Yesu asifiwe Godfrey Mtamba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0173', 'Sent', '\"1566093324,255714272737,Send Successful\\r\\n\"', '2026-03-18 00:51:00', '2026-03-18 00:51:00'),
(341, '255766593280', 'PAULINA CARLOS', 'direct', 'Bwana Yesu asifiwe PAULINA CARLOS, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0174', 'Sent', '\"1566095053,255766593280,Send Successful\\r\\n\"', '2026-03-18 00:57:04', '2026-03-18 00:57:04'),
(342, '255654468382', 'Elisha Makiya', 'direct', 'Bwana Yesu asifiwe Elisha Makiya, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0175', 'Sent', '\"1566787835,255654468382,Send Successful\\r\\n\"', '2026-03-18 12:28:08', '2026-03-18 12:28:08'),
(343, '255625672476', 'Frank Oliver Kakole', 'direct', 'Bwana Yesu asifiwe Frank Oliver Kakole, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0176', 'Sent', '\"1566787954,255625672476,Send Successful\\r\\n\"', '2026-03-18 12:28:28', '2026-03-18 12:28:28'),
(344, '255659953557', 'Franco kihongosi', 'direct', 'Bwana Yesu asifiwe Franco kihongosi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0177', 'Sent', '\"1566788073,255659953557,Send Successful\\r\\n\"', '2026-03-18 12:28:43', '2026-03-18 12:28:43'),
(345, '255782941414', 'Loveness l Mollel', 'direct', 'Bwana Yesu asifiwe Loveness l Mollel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0178', 'Sent', '\"1566788514,255782941414,Send Successful\\r\\n\"', '2026-03-18 12:29:50', '2026-03-18 12:29:50'),
(346, '255764804205', 'Erasto Richard mlawa', 'direct', 'Bwana Yesu asifiwe Erasto Richard mlawa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0179', 'Sent', '\"1566822070,255764804205,Send Successful\\r\\n\"', '2026-03-18 12:52:56', '2026-03-18 12:52:56'),
(347, '255767337855', 'TEDDY BENARD LAWRENT', 'direct', 'Bwana Yesu asifiwe TEDDY BENARD LAWRENT, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0180', 'Sent', '\"1566824031,255767337855,Send Successful\\r\\n\"', '2026-03-18 12:55:41', '2026-03-18 12:55:41'),
(348, '255679766245', 'Rollin salum mkali', 'direct', 'Bwana Yesu asifiwe Rollin salum mkali, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0181', 'Sent', '\"1566890583,255679766245,Send Successful\\r\\n\"', '2026-03-18 13:47:36', '2026-03-18 13:47:36'),
(349, '255768491664', 'Elia Yohana Ghambuna', 'direct', 'Bwana Yesu asifiwe Elia Yohana Ghambuna, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0182', 'Sent', '\"1567875130,255768491664,Send Successful\\r\\n\"', '2026-03-18 21:47:55', '2026-03-18 21:47:55'),
(350, '255745332312', 'Kayaga luchagula Ngeleja', 'direct', 'Bwana Yesu asifiwe Kayaga luchagula Ngeleja, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0183', 'Sent', '\"1567875152,255745332312,Send Successful\\r\\n\"', '2026-03-18 21:47:59', '2026-03-18 21:47:59'),
(351, '255659564354', 'Elizabeth Mkama', 'direct', 'Bwana Yesu asifiwe Elizabeth Mkama, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0184', 'Sent', '\"1567875206,255659564354,Send Successful\\r\\n\"', '2026-03-18 21:48:03', '2026-03-18 21:48:03'),
(352, '255684108225', 'Pendo jacksoni ilanda', 'direct', 'Bwana Yesu asifiwe Pendo jacksoni ilanda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0185', 'Sent', '\"1567875261,255684108225,Send Successful\\r\\n\"', '2026-03-18 21:48:12', '2026-03-18 21:48:12'),
(353, '255696972204', 'Falesi. Elimeriki.  Rudadi', 'direct', 'Bwana Yesu asifiwe Falesi. Elimeriki.  Rudadi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0186', 'Sent', '\"1567875302,255696972204,Send Successful\\r\\n\"', '2026-03-18 21:48:18', '2026-03-18 21:48:18'),
(354, '255769116075', 'Nesta Jasson', 'direct', 'Bwana Yesu asifiwe Nesta Jasson, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0187', 'Sent', '\"1569945053,255769116075,Send Successful\\r\\n\"', '2026-03-19 15:35:52', '2026-03-19 15:35:52'),
(355, '255770722997', 'Donatus Mlawa', 'direct', 'Bwana Yesu asifiwe Donatus Mlawa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0188', 'Sent', '\"1570638798,255770722997,Send Successful\\r\\n\"', '2026-03-19 19:56:43', '2026-03-19 19:56:43'),
(356, '255652722019', 'Clara Benard Nyungura', 'direct', 'Bwana Yesu asifiwe Clara Benard Nyungura, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0189', 'Sent', '\"1570638877,255652722019,Send Successful\\r\\n\"', '2026-03-19 19:57:06', '2026-03-19 19:57:06'),
(357, '255746670969', 'Mollen Charles Bwagalilo', 'direct', 'Bwana Yesu asifiwe Mollen Charles Bwagalilo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0190', 'Sent', '\"1570638964,255746670969,Send Successful\\r\\n\"', '2026-03-19 19:57:29', '2026-03-19 19:57:29'),
(358, '255762841813', 'Losenius E Paul', 'direct', 'Bwana Yesu asifiwe Losenius E Paul, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0191', 'Sent', '\"1570639249,255762841813,Send Successful\\r\\n\"', '2026-03-19 19:58:51', '2026-03-19 19:58:51'),
(359, '255740189965', 'Josephine Yotham', 'direct', 'Bwana Yesu asifiwe Josephine Yotham, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0192', 'Sent', '\"1570677998,255740189965,Send Successful\\r\\n\"', '2026-03-19 20:47:53', '2026-03-19 20:47:53'),
(360, '255682390386', 'Prisila Yotham', 'direct', 'Bwana Yesu asifiwe Prisila Yotham, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0193', 'Sent', '\"1570678026,255682390386,Send Successful\\r\\n\"', '2026-03-19 20:47:59', '2026-03-19 20:47:59'),
(361, '255714117667', 'Imani Ezekiel Bitana', 'direct', 'Bwana Yesu asifiwe Imani Ezekiel Bitana, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0194', 'Sent', '\"1570678113,255714117667,Send Successful\\r\\n\"', '2026-03-19 20:48:14', '2026-03-19 20:48:14'),
(362, '255756432761', 'Vumilia Jackson', 'direct', 'Bwana Yesu asifiwe Vumilia Jackson, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0195', 'Sent', '\"1570678143,255756432761,Send Successful\\r\\n\"', '2026-03-19 20:48:19', '2026-03-19 20:48:19'),
(363, '255764197657', 'Hagai Jeremia', 'direct', 'Bwana Yesu asifiwe Hagai Jeremia, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0196', 'Sent', '\"1570678157,255764197657,Send Successful\\r\\n\"', '2026-03-19 20:48:23', '2026-03-19 20:48:23'),
(364, '255714261485', 'Jusilini Stefano', 'direct', 'Bwana Yesu asifiwe Jusilini Stefano, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0197', 'Sent', '\"1570678202,255714261485,Send Successful\\r\\n\"', '2026-03-19 20:48:31', '2026-03-19 20:48:31'),
(365, '255616651436', 'SABURI EDMON KATWIKILO', 'direct', 'Bwana Yesu asifiwe SABURI EDMON KATWIKILO, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0198', 'Sent', '\"1570678302,255616651436,Send Successful\\r\\n\"', '2026-03-19 20:48:53', '2026-03-19 20:48:53'),
(366, '255683826003', 'Rose Wilisoni', 'direct', 'Bwana Yesu asifiwe Rose Wilisoni, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0199', 'Sent', '\"1570739473,255683826003,Send Successful\\r\\n\"', '2026-03-19 21:02:56', '2026-03-19 21:02:56'),
(367, '255687506375', 'Neema Lameck', 'direct', 'Bwana Yesu asifiwe Neema Lameck, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0200', 'Sent', '\"1570739680,255687506375,Send Successful\\r\\n\"', '2026-03-19 21:03:28', '2026-03-19 21:03:28'),
(368, '255676966901', 'aaaaa', 'direct', 'Bwana Yesu asifiwe aaaaa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0201', 'Sent', '\"1573188050,255676966901,Send Successful\\r\\n\"', '2026-03-21 23:51:26', '2026-03-21 23:51:26'),
(369, '255676966901', 'aaaaa', 'direct', 'Bwana Yesu asifiwe aaaaa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0201', 'Sent', '\"1573188051,255676966901,Send Successful\\r\\n\"', '2026-03-21 23:51:27', '2026-03-21 23:51:27'),
(370, '255684840485', 'Janet Lewis Chisi', 'direct', 'Bwana Yesu asifiwe Janet Lewis Chisi, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0201', 'Sent', '\"1573271902,255684840485,Send Successful\\r\\n\"', '2026-03-22 10:07:26', '2026-03-22 10:07:26'),
(371, '255688918874', 'David Emmanuel Gervas', 'direct', 'Bwana Yesu asifiwe David Emmanuel Gervas, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0202', 'Sent', '\"1573278573,255688918874,Send Successful\\r\\n\"', '2026-03-22 10:28:21', '2026-03-22 10:28:21'),
(372, '255755904827', 'Faustn John kiyogoma', 'direct', 'Bwana Yesu asifiwe Faustn John kiyogoma, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0203', 'Sent', '\"1573278653,255755904827,Send Successful\\r\\n\"', '2026-03-22 10:28:38', '2026-03-22 10:28:38'),
(373, '255756829817', 'Marry Samwel', 'direct', 'Bwana Yesu asifiwe Marry Samwel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0204', 'Sent', '\"1573278669,255756829817,Send Successful\\r\\n\"', '2026-03-22 10:28:43', '2026-03-22 10:28:43'),
(374, '255783055513', 'Severina Aloyce Nyema', 'direct', 'Bwana Yesu asifiwe Severina Aloyce Nyema, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0205', 'Sent', '\"1573278705,255783055513,Send Successful\\r\\n\"', '2026-03-22 10:28:50', '2026-03-22 10:28:50'),
(375, '255621517151', 'Mosses Shuma', 'direct', 'Bwana Yesu asifiwe Mosses Shuma, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0206', 'Sent', '\"1573278754,255621517151,Send Successful\\r\\n\"', '2026-03-22 10:29:10', '2026-03-22 10:29:10'),
(376, '255673131583', 'Philimon Dastani Mhala', 'direct', 'Bwana Yesu asifiwe Philimon Dastani Mhala, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0207', 'Sent', '\"1573278778,255673131583,Send Successful\\r\\n\"', '2026-03-22 10:29:21', '2026-03-22 10:29:21'),
(377, '255714106687', 'Agnes E. Ndumbaro', 'direct', 'Bwana Yesu asifiwe Agnes E. Ndumbaro, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0208', 'Sent', '\"1573278797,255714106687,Send Successful\\r\\n\"', '2026-03-22 10:29:26', '2026-03-22 10:29:26'),
(378, '255762758467', 'MOSES SAMSON MWAKISISILE', 'direct', 'Bwana Yesu asifiwe MOSES SAMSON MWAKISISILE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0209', 'Sent', '\"1573279326,255762758467,Send Successful\\r\\n\"', '2026-03-22 10:30:29', '2026-03-22 10:30:29'),
(379, '255767381687', 'Daniel Zakaria Elisha', 'direct', 'Bwana Yesu asifiwe Daniel Zakaria Elisha, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0210', 'Sent', '\"1573279484,255767381687,Send Successful\\r\\n\"', '2026-03-22 10:30:56', '2026-03-22 10:30:56'),
(380, '255664529151', 'PETRONILA ALOYCE MMANGA', 'direct', 'Bwana Yesu asifiwe PETRONILA ALOYCE MMANGA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0211', 'Sent', '\"1573285779,255664529151,Send Successful\\r\\n\"', '2026-03-22 10:48:04', '2026-03-22 10:48:04'),
(381, '255757861300', 'Aneth Lukas', 'direct', 'Bwana Yesu asifiwe Aneth Lukas, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0212', 'Sent', '\"1573285802,255757861300,Send Successful\\r\\n\"', '2026-03-22 10:48:11', '2026-03-22 10:48:11'),
(382, '255680852054', 'Mathias Meshack Mathias', 'direct', 'Bwana Yesu asifiwe Mathias Meshack Mathias, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0213', 'Sent', '\"1573289032,255680852054,Send Successful\\r\\n\"', '2026-03-22 10:57:37', '2026-03-22 10:57:37'),
(383, '255612643766', 'Israel Abel', 'direct', 'Bwana Yesu asifiwe Israel Abel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0214', 'Sent', '\"1573292387,255612643766,Send Successful\\r\\n\"', '2026-03-22 11:02:09', '2026-03-22 11:02:09'),
(384, '255654662671', 'Yohana Sambai Mwandu', 'direct', 'Bwana Yesu asifiwe Yohana Sambai Mwandu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0215', 'Sent', '\"1573294253,255654662671,Send Successful\\r\\n\"', '2026-03-22 11:06:00', '2026-03-22 11:06:00'),
(385, '255769037688', 'SIMON T ERICK', 'direct', 'Bwana Yesu asifiwe SIMON T ERICK, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0216', 'Sent', '\"1573298075,255769037688,Send Successful\\r\\n\"', '2026-03-22 11:11:17', '2026-03-22 11:11:17'),
(386, '255759933152', 'Rahel Alfredy', 'individual', 'Bwana Yesu asifiwe RAHEL ALFREDY, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni: 0074', 'Sent', '\"1573303855,255759933152,Send Successful\\r\\n\"', '2026-03-22 11:28:30', '2026-03-22 11:28:30'),
(387, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403162,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:18', '2026-03-22 15:15:18'),
(388, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403167,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:19', '2026-03-22 15:15:19'),
(389, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403168,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:19', '2026-03-22 15:15:19'),
(390, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403187,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:24', '2026-03-22 15:15:24'),
(391, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403189,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:24', '2026-03-22 15:15:24'),
(392, '255677828812', 'Jacklina Jackson Sangiza', 'direct', 'Bwana Yesu asifiwe Jacklina Jackson Sangiza, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0217', 'Sent', '\"1573403188,255677828812,Send Successful\\r\\n\"', '2026-03-22 15:15:24', '2026-03-22 15:15:24'),
(393, '255686989156', 'Aloyce Jiles Joseph', 'direct', 'Bwana Yesu asifiwe Aloyce Jiles Joseph, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0218', 'Sent', '\"1573404197,255686989156,Send Successful\\r\\n\"', '2026-03-22 15:19:48', '2026-03-22 15:19:48'),
(394, '255683634498', 'Betrice Lameck Zabron', 'direct', 'Bwana Yesu asifiwe Betrice Lameck Zabron, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0219', 'Sent', '\"1573404335,255683634498,Send Successful\\r\\n\"', '2026-03-22 15:20:16', '2026-03-22 15:20:16'),
(395, '255656375958', 'Miriam Machiel Yohana', 'direct', 'Bwana Yesu asifiwe Miriam Machiel Yohana, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0220', 'Sent', '\"1573404739,255656375958,Send Successful\\r\\n\"', '2026-03-22 15:21:02', '2026-03-22 15:21:02'),
(396, '255754779172', 'Miriam Emmanuel kitima', 'direct', 'Bwana Yesu asifiwe Miriam Emmanuel kitima, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0221', 'Sent', '\"1573405228,255754779172,Send Successful\\r\\n\"', '2026-03-22 15:21:47', '2026-03-22 15:21:47'),
(397, '255756932522', 'Bestina Paul Lwanji', 'direct', 'Bwana Yesu asifiwe Bestina Paul Lwanji, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0222', 'Sent', '\"1573405249,255756932522,Send Successful\\r\\n\"', '2026-03-22 15:21:55', '2026-03-22 15:21:55'),
(398, '255616722162', 'Neusta Elias Mathayo', 'direct', 'Bwana Yesu asifiwe Neusta Elias Mathayo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0223', 'Sent', '\"1573411819,255616722162,Send Successful\\r\\n\"', '2026-03-22 15:36:44', '2026-03-22 15:36:44'),
(399, '255621289924', 'RICHARD  SULEMAN PAUL', 'direct', 'Bwana Yesu asifiwe RICHARD  SULEMAN PAUL, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0224', 'Sent', '\"1573417272,255621289924,Send Successful\\r\\n\"', '2026-03-22 15:46:07', '2026-03-22 15:46:07'),
(400, '255789358676', 'David Frank Mpenda', 'direct', 'Bwana Yesu asifiwe David Frank Mpenda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0225', 'Sent', '\"1573418391,255789358676,Send Successful\\r\\n\"', '2026-03-22 15:50:53', '2026-03-22 15:50:53'),
(401, '255789358676', 'David Frank Mpenda', 'direct', 'Bwana Yesu asifiwe David Frank Mpenda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0225', 'Sent', '\"1573418480,255789358676,Send Successful\\r\\n\"', '2026-03-22 15:50:58', '2026-03-22 15:50:58'),
(402, '255689221254', 'Uenic Samweli Mazengo', 'direct', 'Bwana Yesu asifiwe Uenic Samweli Mazengo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0226', 'Sent', '\"1573420136,255689221254,Send Successful\\r\\n\"', '2026-03-22 15:55:51', '2026-03-22 15:55:51'),
(403, '255689221254', 'Uenic Samweli Mazengo', 'direct', 'Bwana Yesu asifiwe Uenic Samweli Mazengo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0226', 'Sent', '\"1573420142,255689221254,Send Successful\\r\\n\"', '2026-03-22 15:55:52', '2026-03-22 15:55:52'),
(404, '255675081303', 'Eflazia Ezekiel', 'direct', 'Bwana Yesu asifiwe Eflazia Ezekiel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0227', 'Sent', '\"1573420921,255675081303,Send Successful\\r\\n\"', '2026-03-22 15:59:12', '2026-03-22 15:59:12'),
(405, '255650556599', 'Samuely Paschal', 'direct', 'Bwana Yesu asifiwe Samuely Paschal, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0228', 'Sent', '\"1573423488,255650556599,Send Successful\\r\\n\"', '2026-03-22 16:06:59', '2026-03-22 16:06:59'),
(406, '255712009881', 'Prisca Mayeji Mnemera', 'direct', 'Bwana Yesu asifiwe Prisca Mayeji Mnemera, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0229', 'Sent', '\"1573572353,255712009881,Send Successful\\r\\n\"', '2026-03-22 21:35:49', '2026-03-22 21:35:49'),
(407, '255752498545', 'Macrice Daniel Mbodo', 'direct', 'Bwana Yesu asifiwe Macrice Daniel Mbodo, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0230', 'Sent', '\"1573597603,255752498545,Send Successful\\r\\n\"', '2026-03-22 23:36:49', '2026-03-22 23:36:49'),
(408, '255690086665', 'Hadija meshack jacksoni', 'direct', 'Bwana Yesu asifiwe Hadija meshack jacksoni, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0231', 'Sent', '\"1574510667,255690086665,Send Successful\\r\\n\"', '2026-03-23 12:40:43', '2026-03-23 12:40:43'),
(409, '255753081665', 'Bilson jonas shamba', 'direct', 'Bwana Yesu asifiwe Bilson jonas shamba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0232', 'Sent', '\"1574513571,255753081665,Send Successful\\r\\n\"', '2026-03-23 12:41:18', '2026-03-23 12:41:18'),
(410, '255784235023', 'Isaya Seleste', 'direct', 'Bwana Yesu asifiwe Isaya Seleste, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0233', 'Sent', '\"1574513783,255784235023,Send Successful\\r\\n\"', '2026-03-23 12:41:30', '2026-03-23 12:41:30'),
(411, '255750309156', 'Daniel jiles', 'direct', 'Bwana Yesu asifiwe Daniel jiles, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0234', 'Sent', '\"1574513820,255750309156,Send Successful\\r\\n\"', '2026-03-23 12:41:35', '2026-03-23 12:41:35'),
(412, '255719674044', 'Stella Shertiely', 'direct', 'Bwana Yesu asifiwe Stella Shertiely, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0235', 'Sent', '\"1574513851,255719674044,Send Successful\\r\\n\"', '2026-03-23 12:41:40', '2026-03-23 12:41:40'),
(413, '255620679252', 'JOSEPH.R.MGUTU', 'direct', 'Bwana Yesu asifiwe JOSEPH.R.MGUTU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0236', 'Sent', '\"1574513870,255620679252,Send Successful\\r\\n\"', '2026-03-23 12:41:44', '2026-03-23 12:41:44'),
(414, '255763190646', 'Amos Zakaria kalinga', 'direct', 'Bwana Yesu asifiwe Amos Zakaria kalinga, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0237', 'Sent', '\"1574513911,255763190646,Send Successful\\r\\n\"', '2026-03-23 12:41:50', '2026-03-23 12:41:50'),
(415, '255621696851', 'Esperansa William', 'direct', 'Bwana Yesu asifiwe Esperansa William, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0238', 'Sent', '\"1574513979,255621696851,Send Successful\\r\\n\"', '2026-03-23 12:42:02', '2026-03-23 12:42:02'),
(416, '255715310596', 'Ezra Yavani Josias', 'direct', 'Bwana Yesu asifiwe Ezra Yavani Josias, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0239', 'Sent', '\"1574514011,255715310596,Send Successful\\r\\n\"', '2026-03-23 12:42:08', '2026-03-23 12:42:08'),
(417, '255656303909', 'Numwagile Ackimu Mwakipale', 'direct', 'Bwana Yesu asifiwe Numwagile Ackimu Mwakipale, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0240', 'Sent', '\"1574514061,255656303909,Send Successful\\r\\n\"', '2026-03-23 12:42:16', '2026-03-23 12:42:16'),
(418, '255652474828', 'Emiliana Mwita Nyakaraita', 'direct', 'Bwana Yesu asifiwe Emiliana Mwita Nyakaraita, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0241', 'Sent', '\"1574514112,255652474828,Send Successful\\r\\n\"', '2026-03-23 12:42:24', '2026-03-23 12:42:24'),
(419, '255797175781', 'DIANA AZARIA GUSTAVE', 'direct', 'Bwana Yesu asifiwe DIANA AZARIA GUSTAVE, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0242', 'Sent', '\"1574514132,255797175781,Send Successful\\r\\n\"', '2026-03-23 12:42:27', '2026-03-23 12:42:27'),
(420, '255623845565', 'DAINESS MANYEMA MLENGA', 'direct', 'Bwana Yesu asifiwe DAINESS MANYEMA MLENGA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0243', 'Sent', '\"1574514149,255623845565,Send Successful\\r\\n\"', '2026-03-23 12:42:31', '2026-03-23 12:42:31'),
(421, '255785466691', 'Eretina Mumba', 'direct', 'Bwana Yesu asifiwe Eretina Mumba, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0244', 'Sent', '\"1574514229,255785466691,Send Successful\\r\\n\"', '2026-03-23 12:42:46', '2026-03-23 12:42:46'),
(422, '255679994915', 'Rahel Manase', 'direct', 'Bwana Yesu asifiwe Rahel Manase, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0245', 'Sent', '\"1574516643,255679994915,Send Successful\\r\\n\"', '2026-03-23 12:48:34', '2026-03-23 12:48:34'),
(423, '255756915968', 'Elisha Machimu', 'direct', 'Bwana Yesu asifiwe Elisha Machimu, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0246', 'Sent', '\"1574778311,255756915968,Send Successful\\r\\n\"', '2026-03-23 16:06:09', '2026-03-23 16:06:09'),
(424, '255653678154', 'Anastazia Gunamla Nchangenda', 'direct', 'Bwana Yesu asifiwe Anastazia Gunamla Nchangenda, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0247', 'Sent', '\"1574911537,255653678154,Send Successful\\r\\n\"', '2026-03-23 19:05:52', '2026-03-23 19:05:52'),
(425, '255753153821', 'Ibrahim Sylvester Ibrahim Sylvester', 'direct', 'Bwana Yesu asifiwe Ibrahim Sylvester Ibrahim Sylvester, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0248', 'Sent', '\"1574913613,255753153821,Send Successful\\r\\n\"', '2026-03-23 19:10:23', '2026-03-23 19:10:23'),
(426, '255754381974', 'Ibrahim Sylvester Ibrahim Sylvester', 'direct', 'Bwana Yesu asifiwe Ibrahim Sylvester Ibrahim Sylvester, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0249', 'Sent', '\"1574917108,255754381974,Send Successful\\r\\n\"', '2026-03-23 19:18:29', '2026-03-23 19:18:29'),
(427, '255785253636', 'Winfrida Azaria Gustave', 'direct', 'Bwana Yesu asifiwe Winfrida Azaria Gustave, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0250', 'Sent', '\"1574986682,255785253636,Send Successful\\r\\n\"', '2026-03-23 21:45:02', '2026-03-23 21:45:02'),
(428, '255734578470', 'Dominick  Daniel', 'direct', 'Bwana Yesu asifiwe Dominick  Daniel, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0251', 'Sent', '\"1575933167,255734578470,Send Successful\\r\\n\"', '2026-03-24 12:18:08', '2026-03-24 12:18:08'),
(429, '255746474020', 'Jovini Berson Peche', 'direct', 'Bwana Yesu asifiwe Jovini Berson Peche, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0252', 'Sent', '\"1575961479,255746474020,Send Successful\\r\\n\"', '2026-03-24 12:50:44', '2026-03-24 12:50:44'),
(430, '255755474025', 'Naomi Bendicto', 'direct', 'Bwana Yesu asifiwe Naomi Bendicto, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0253', 'Sent', '\"1575961814,255755474025,Send Successful\\r\\n\"', '2026-03-24 12:50:59', '2026-03-24 12:50:59'),
(431, '255662907294', 'ESTER ELIA NTANDU', 'direct', 'Bwana Yesu asifiwe ESTER ELIA NTANDU, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0254', 'Sent', '\"1575967160,255662907294,Send Successful\\r\\n\"', '2026-03-24 12:59:54', '2026-03-24 12:59:54'),
(432, '255782720651', 'Olipa Yona', 'direct', 'Bwana Yesu asifiwe Olipa Yona, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0255', 'Sent', '\"1576001045,255782720651,Send Successful\\r\\n\"', '2026-03-24 13:12:23', '2026-03-24 13:12:23'),
(433, '255782720651', 'Olipa Yona', 'direct', 'Bwana Yesu asifiwe Olipa Yona, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0256', 'Sent', '\"1576001047,255782720651,Send Successful\\r\\n\"', '2026-03-24 13:12:23', '2026-03-24 13:12:23'),
(434, '255663121229', 'Fanuel Teras zirah', 'direct', 'Bwana Yesu asifiwe Fanuel Teras zirah, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0257', 'Sent', '\"1576013061,255663121229,Send Successful\\r\\n\"', '2026-03-24 13:18:49', '2026-03-24 13:18:49'),
(435, '255745805587', 'MARTHA ADAM AMANI', 'direct', 'Bwana Yesu asifiwe MARTHA ADAM AMANI, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0258', 'Sent', '\"1576030345,255745805587,Send Successful\\r\\n\"', '2026-03-24 13:29:31', '2026-03-24 13:29:31'),
(436, '255791340624', 'Joseph Prosper Basigwa', 'direct', 'Bwana Yesu asifiwe Joseph Prosper Basigwa, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0259', 'Sent', '\"1576035969,255791340624,Send Successful\\r\\n\"', '2026-03-24 13:34:29', '2026-03-24 13:34:29'),
(437, '255717631817', 'DAVID ZACHARIA MABOYA', 'direct', 'Bwana Yesu asifiwe DAVID ZACHARIA MABOYA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0260', 'Sent', '\"1576038150,255717631817,Send Successful\\r\\n\"', '2026-03-24 13:35:24', '2026-03-24 13:35:24'),
(438, '255680192736', 'Ester Aman', 'direct', 'Bwana Yesu asifiwe Ester Aman, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0261', 'Sent', '\"1576050165,255680192736,Send Successful\\r\\n\"', '2026-03-24 13:54:41', '2026-03-24 13:54:41'),
(439, '255712212901', 'Martin Mbapila', 'direct', 'Bwana Yesu asifiwe Martin Mbapila, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0262', 'Sent', '\"1576645103,255712212901,Send Successful\\r\\n\"', '2026-03-24 18:33:55', '2026-03-24 18:33:55'),
(440, '255758363891', 'NEEMA JUMA CHACHA', 'direct', 'Bwana Yesu asifiwe NEEMA JUMA CHACHA, Sasa wewe ni mshirika rasmi wa fpct kurasini Namba yako ya ushirika ni:  0263', 'Sent', '\"1576705116,255758363891,Send Successful\\r\\n\"', '2026-03-24 20:22:03', '2026-03-24 20:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_district` varchar(255) DEFAULT NULL,
  `marital_status` enum('Ameoa','Ameolewa','Hajaoa','Hajaolewa','Mjane','Mgane') DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `children_count` int(11) NOT NULL DEFAULT 0,
  `zone` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `gender`, `birth_date`, `birth_place`, `birth_district`, `marital_status`, `spouse_name`, `children_count`, `zone`, `phone`, `whatsapp_number`, `email`, `role_id`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'Tumaini  Peter Kaaya', 'M', '2025-12-30', '22 Feb 1991', NULL, 'Ameoa', 'Angela Kalalu', 0, 'Kijichi', '255712104508', NULL, 'Kaayah9@gmail.com', NULL, 'admin', '$2y$12$UR90qdaHbBu60TBhoyQQV.ggzKoikx2tmP.5w5ZPJAZcVbAgYkAQ.', NULL, '2025-12-31 00:41:05', '2026-02-26 15:40:22'),
(16, 'Oscar Batista Kindole', 'M', '1979-01-04', 'Iringa DC', NULL, 'Ameoa', 'Janet Chisi', 5, 'Kongowe', '255784824624', NULL, 'oscarkindole@gmail.com', NULL, 'kiongozi', '$2y$12$ifzkIsJ7oReeG9weoi2RxOKlzidO8taV.uduqAxxQF9sQVy3lYPkK', NULL, '2026-01-02 23:10:00', '2026-01-28 22:19:00'),
(17, 'Isaya Raphael Mwanyamba', 'M', '1979-12-19', 'Handeni TC/Tanga', NULL, 'Ameoa', 'Loveness Mollel', 3, 'Kigamboni', '255787001007', NULL, 'kakaisaya@gmail.com', NULL, 'admin', '$2y$12$g3XVw8ZZCb6lTAMjODOwrOHTHjD7DJo7uPup8OacAXW4unFXpa7tS', NULL, '2026-01-03 11:35:08', '2026-03-11 15:58:08'),
(19, 'Reuben Bulugu', 'M', '1963-04-16', 'Bariadi Simiyu', NULL, 'Ameoa', 'Jane Martine', 5, 'Kongowe', '255754544438', NULL, 'bulugur@yahoo.com', NULL, 'kiongozi', '$2y$12$Jb2NNbot3gXWIjVGFT8ioODBd7p4/dnwlV8Ol0wqr6kN1JBVS8KIy', NULL, '2026-01-03 22:19:30', '2026-01-29 21:26:02'),
(20, 'Dr. Suleiman Mathew IKOMBA', 'M', '1967-03-05', 'Kigoma Rular KIGOMA', NULL, 'Ameoa', 'Philomena Solomon Muhamila', 3, 'Mgeninani', '255788677472', NULL, 'suleimanikomba@gmail.com', NULL, 'kiongozi', '$2y$12$QBQiogrZYivmDhlVT98p8u9g1ADrVXytuWHjHhUNGk6wePH2FHWky', NULL, '2026-01-04 11:40:19', '2026-02-04 19:29:46'),
(22, 'DAMIAN GERVAS NDABATINYA', 'M', '1972-07-01', 'BUHIGWE KIGOMA', NULL, 'Ameoa', 'GERDA PAULO TEBUYE', 4, 'Tandika', '255758047674', NULL, 'kigomawax@gmail.com', NULL, 'kiongozi', '$2y$12$SrY/yQ0J7C1HzZhOEryyr.bPqPK2vEM7AoQqMVcZ3DjMmwWxxK/Om', NULL, '2026-01-07 11:13:50', '2026-02-04 19:28:20'),
(23, 'Julius B Kindole', 'M', '1981-06-03', 'Ilala, Dar Es Salaam', NULL, 'Ameoa', 'Emiliana Peter Kaaya', 4, 'Mgeninani', '255719800813', NULL, 'kindole72@gmail.com', NULL, 'admin', '$2y$12$rAJU4/3.a0C5f3zfw3uhPuhTf/YMpQ2NbmLrLbjQcToKBJ.flaDOO', NULL, '2026-01-07 14:07:25', '2026-03-11 16:11:46'),
(24, 'Sospeter Bathoha', 'M', '1975-04-06', 'Kigoma', NULL, 'Ameoa', 'Elicia Sekishahu Kisoma', 3, 'Mbande', '255768920734', NULL, 'sbathoha@gmail.com', NULL, 'kiongozi', '$2y$12$bt65onyC40/NYohLKk2p2Ogg1PAAuJIBFg5gf4EfolSUmgX4oj0ba', NULL, '2026-01-07 15:08:26', '2026-03-14 13:16:57'),
(25, 'NTULI KAPOLOGWE', 'M', '1985-01-27', 'Mbeya', NULL, 'Ameoa', 'Neema Peter Mndeme', 4, 'Mbande', '255758833304', NULL, 'wapastantuli@gmail.com', NULL, 'kiongozi', '$2y$12$0xU/aDhm4x7eg/fei2fm4.1StzE9b463gSl8kKKiYuNRRRsBCpr.q', NULL, '2026-01-17 10:06:48', '2026-01-28 22:20:58'),
(26, 'Neema Mustapha Kiluwasha', 'F', '1994-01-16', 'Bombo Hospital, Tanga', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255658698146', NULL, 'neymarkilu@gmail.com', NULL, 'mshirika', '$2y$12$7G2Tscx8n2.93WVzpqKC2OhRiLgbeYF0Q8pliCpJm0Iw09Na6y/VS', NULL, '2026-02-23 10:32:16', '2026-02-23 17:39:06'),
(27, 'Natalia Beza', 'F', '1994-09-11', 'Ilala', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255714991925', NULL, 'bezanatalia11@gmail.com', NULL, 'mshirika', '$2y$12$D1V6Od9BDMtE0xZtPeW94.7K0CqtEoLs0tE/JGhTMpfVuITcgzOb.', NULL, '2026-02-23 10:34:16', '2026-02-25 00:16:18'),
(28, 'THEOPHILDA CHRISTOPHER', 'F', '1976-12-26', 'KARAGWE KAGERA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255655323199', NULL, 'theophildachristopher@gmail.com', NULL, 'mshirika', '$2y$12$4P2GqZF9R94.UFZEjOvvFOEzR6fjf7p2SP3tKPJzvfGjlo.dM2OmO', NULL, '2026-02-23 11:23:11', '2026-02-24 09:16:42'),
(29, 'Jacob Sanke Nyoni', 'M', '1992-06-16', 'Kyela- Mveya', NULL, 'Ameoa', 'Lydia Joshua Mwansasu', 2, 'Mbande', '255716654579', NULL, 'Jacobsanke52@gmail.com', NULL, 'mshirika', '$2y$12$I9/jF05FR05AJzTBiw1gzeznwtt.SdCIY0s08iAGXHEWLBSOgXndy', NULL, '2026-02-23 12:02:45', '2026-02-27 14:23:11'),
(30, 'HERIEL GABRIEL', 'M', '1990-08-12', 'KOROGWE/TANGA', NULL, 'Ameoa', 'ROSE DAVID KUMENYA', 1, 'Kigamboni', '255712658038', NULL, 'herielgabriel61@gmail.com', NULL, 'mshirika', '$2y$12$LKlptvW39mRG129d7RAjlerTTHj7F.gBKUDH6MxHyOHmz5fMvuFqa', NULL, '2026-02-23 12:34:49', '2026-02-24 09:16:31'),
(31, 'AHUNGU MODKY', 'M', '1987-10-30', 'SINGIDA', NULL, 'Ameoa', 'Eliza', 2, 'Kijichi', '255737774790', NULL, 'modky3@yahoo.com', NULL, 'mshirika', '$2y$12$PiRNIh9lKOaBQVvdYKkhHeR0ZzZGNcg5fXCosm668yGC7Pt/euV5.', NULL, '2026-02-23 13:22:45', '2026-02-27 15:47:33'),
(32, 'Amos Samwel Ntandu', 'M', '1980-08-08', 'Ikungi/Singida', NULL, 'Ameoa', 'Eduna Mathayo Msubi', 3, 'Mbande', '255754897675', NULL, 'samwelamo@gmail.com', NULL, 'mshirika', '$2y$12$gSX2phxQ6l3AkVX/7Tk5Qe3flEruSSmCU57x5tZZqQDH8LQlGSUWu', NULL, '2026-02-23 13:29:53', '2026-02-26 16:26:45'),
(33, 'Elicia Sekishaku Kisoma', 'F', '1975-11-30', 'Kakonko/Kigoma', NULL, 'Ameolewa', 'Sospeter Bathoha', 3, 'Mbande', '255754778376', NULL, 'kisoma.elicia@gmail.com', NULL, 'mshirika', '$2y$12$47Urgg9zegD//61n.glGGOXjksja78jpEdq9xYijz7YkytsBGYblG', NULL, '2026-02-23 14:36:15', '2026-03-02 13:33:26'),
(34, 'Erick Andrea', 'M', '1981-02-04', 'Nyamagana', NULL, 'Ameoa', 'Tumain Daniel', 2, 'Mbande', '255657300333', NULL, 'erickandrea217@gmail.com', NULL, 'mshirika', '$2y$12$NXQrE2NoMBvz6B7JWabrrOE9F3Ja/9q4SN2oDdXrUyTA4YF82gssu', NULL, '2026-02-23 16:08:59', '2026-02-24 00:52:16'),
(35, 'Hannah Kimicha Rwandalla', 'F', '1966-07-07', 'Dar es salaam', NULL, 'Ameolewa', 'Caleb Joel Rwandalla', 3, 'Kizuiani', '255762748397', NULL, 'hannah.rwandala@yahoo.com', NULL, 'mshirika', '$2y$12$Y4shWos9XrnVTnlxyhoLTOp9vkT.Hcw82o9Q01ARoPZBiUehbqX2a', NULL, '2026-02-24 02:17:13', '2026-02-24 09:17:16'),
(36, 'Benedicto Mugongo', 'M', '1984-05-01', 'Buhigwe, Kigoma', NULL, 'Ameoa', 'Grace Dalasi', 3, 'Tandika', '255754244794', NULL, 'benjos98@yahoo.com', NULL, 'mshirika', '$2y$12$FN0S.vcxA46TXty2oe72NuLHisP3WpWhYmqzffa1XsN72ef0JM0Oi', NULL, '2026-02-24 09:09:45', '2026-02-24 09:15:07'),
(37, 'Adriano Nashoni Kibhoge', 'M', '1992-10-01', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255742490455', NULL, 'Kibhogeadriano@gmail.com', NULL, 'mshirika', '$2y$12$4VcxPyYa1BszQjWpUpRqsOU8rzx2f0VS1VUOwl2S9fGv2ytqbK4he', NULL, '2026-02-24 10:04:53', '2026-02-24 14:55:47'),
(38, 'Aman Mdewa Nthangu', 'M', '1991-04-06', 'Masasi/Mtwara', NULL, 'Ameoa', 'Beatrice Elia Mhana', 2, 'Kigamboni', '255755146527', NULL, 'amanmdewa@gmail.com', NULL, 'mshirika', '$2y$12$iVhWfFlo2p7cE10mcF/7Q.J04QpbY0aCaDoc6J.KZ4Zud4rgdNpku', NULL, '2026-02-24 13:11:17', '2026-02-24 14:55:56'),
(39, 'Elizabeth Christopher Migeto', 'F', '1992-02-10', 'TABORA', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255677149158', NULL, 'migetoelizabeth1991@gmail.com', NULL, 'mshirika', '$2y$12$zR4tcq5TL0wOx5KZ546ndu/8qxQpHcdePN1PufAhunKNr8goJxfPS', NULL, '2026-02-24 13:48:07', '2026-02-24 14:58:35'),
(40, 'Neema Kazare', 'F', '1985-02-27', 'Butiama (Mara)', NULL, 'Ameolewa', 'Emmanuel Stephano', 3, 'Yerusalem', '255714842713', NULL, 'kazareneema@gmail.com', NULL, 'mshirika', '$2y$12$Nj0E072mfVLRNYAAeEX8DuhPrzLDOsMvJANjvrpzkZtyvwRJ0yxHm', NULL, '2026-02-24 14:26:39', '2026-02-24 14:59:30'),
(41, 'ALFAYO NASHONI KIBOGE', 'M', '1998-04-25', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255755114343', NULL, 'alfayokibhoge@gmail.com', NULL, 'mshirika', '$2y$12$5WPQ61dIXmdjtdhBTAfFDObarDcwBLBNxIrzolrB0PVJ2QJM1qUk2', NULL, '2026-02-24 14:29:17', '2026-02-25 18:28:02'),
(42, 'BEATRICE ELIA MHANA', 'F', '1998-09-07', 'SHINYANGA', NULL, 'Ameolewa', 'AMAN MDEWA NTHANGU', 2, 'Kigamboni', '255764648884', NULL, 'mhanabeatrice@gmail.com', NULL, 'mshirika', '$2y$12$qc7DorgBR6pTaNOZZHH8new8Q2IEY6nKF2UbpHYdKyhhOgCFf3S5y', NULL, '2026-02-24 15:31:13', '2026-02-25 11:29:06'),
(43, 'Meshack clement mihayo', 'M', '1992-06-26', 'Shinyanga', NULL, 'Ameoa', 'Jesca yuvinus', 1, 'Mtongani', '255756673176', NULL, 'meshackmihayi01@gmail.com', NULL, 'mshirika', '$2y$12$4PsmIgS9gE3aW9seyUVzbOAFr.Q8cFbyNkrEUOPJQ9msLvO1dz2XK', NULL, '2026-02-24 21:15:23', '2026-02-25 15:53:21'),
(44, 'PERECY BEZA', 'F', '1960-10-07', 'Ngara', NULL, 'Mjane', NULL, 4, 'Keko & Kurasini', '255716668317', NULL, 'bezaperecy@gmail.com', NULL, 'mshirika', '$2y$12$Zbo5fk0UzXvTOkqrh4kOzeVM8phEYgZXEokSuPgiqehXjSzboP7da', NULL, '2026-02-24 22:20:48', '2026-02-26 17:54:03'),
(45, 'Veronica chavala', 'F', '1967-04-13', 'Mufindi/Iringa', NULL, 'Ameolewa', 'Shelf Shaltiel', 4, 'Mtongani', '255758295657', NULL, 'veronicachavala47@gmail.com', NULL, 'mshirika', '$2y$12$2aOI7rmVDjVqXSqeloc2YusIyFPlmQMgAq1Y.bwzCZOV3Kxs0LnDy', NULL, '2026-02-24 22:25:28', '2026-02-24 23:45:35'),
(46, 'Denis Cleophace', 'M', '1991-05-23', 'Nyamagana/Mwanza', NULL, 'Ameoa', 'Uyanjo Idabu', 1, 'Mbande', '255759076332', NULL, 'denisbube22@gmail.com', NULL, 'mshirika', '$2y$12$qaGyR5rEYMV6V863ypfeneynNUkCoca93ReUplGtMGUVLU2HCCvCW', NULL, '2026-02-24 23:46:43', '2026-02-25 00:03:36'),
(47, 'Edith Batenzi', 'F', '1992-02-05', 'Ilala', NULL, 'Ameolewa', 'Samwel Batenzi', 0, 'Kigamboni', '255744932734', NULL, 'chitedy@gmail.com', NULL, 'mshirika', '$2y$12$bMBk2Rpi0tb94aX1iScaQOlR12WLerAOKZCT5u.u0dpOkX/EtEkRC', NULL, '2026-02-25 02:51:21', '2026-02-27 12:28:44'),
(50, 'GLORIA ANDREW MBWAMBO', 'F', '1984-03-30', 'IRINGA MUNICIPAL', NULL, 'Ameolewa', 'WENCESLAUS FUNGAMTAMA', 3, 'Kigamboni', '255762285686', NULL, 'gloria.mbwambo@tcbbank.co.tz', NULL, 'mshirika', '$2y$12$I5BI4JtAr4CPJD7nDW0ZhOmIEqj8xmALROcXJagwyLmy7ju7ay0l2', NULL, '2026-02-25 12:30:09', '2026-02-25 12:34:00'),
(51, 'Felix William', 'M', '1994-10-02', 'Korogwe /Tanga', NULL, 'Ameoa', 'Kezia Shertiely', 1, 'Mtongani', '255679320447', NULL, 'felixwilliam808@gmail.com', NULL, 'mshirika', '$2y$12$YUM2kjm./pSH3SIROVINle4MBPwjhr0KuFEo6rCZc0T49BAJTfIk6', NULL, '2026-02-25 17:43:48', '2026-02-25 21:29:17'),
(52, 'NOELA MUSSA', 'F', '1990-12-25', 'Mwanza', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255769531914', NULL, 'noelamussa@gmail.com', NULL, 'mshirika', '$2y$12$o3VTwU7QbHSERECLfybmnuyhGwDCyOVIXGiKbSEW5/Zf6HolVl.2e', NULL, '2026-02-25 18:12:55', '2026-02-25 18:37:26'),
(53, 'ANGELA ANTELIMI KALALU', 'F', '1994-11-05', 'Babati Manyara', NULL, 'Ameolewa', 'TUMAINI KAAYA', 0, 'Kijichi', '255787285496', NULL, 'angela.kalalu@gmail.com', NULL, 'mshirika', '$2y$12$mwK7IcQs9fQm2.wwfoWhru52cZjNB/JDpImt4H2fZee84fHwVFK5W', NULL, '2026-02-25 18:24:44', '2026-02-25 20:41:28'),
(54, 'Noel Damson Nthangu', 'M', '1986-12-18', 'Newala', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255754774918', NULL, 'noel.nthangu@udsm.ac.tz', NULL, 'mshirika', '$2y$12$mxaurhgIAbLhw.Ncf5FgVuZQ/37TNxWyntn5wlHQ4vlogILoXi8wm', NULL, '2026-02-25 18:51:46', '2026-02-25 18:55:30'),
(55, 'Sam Batenzi', 'M', '1988-02-05', 'Mwanza', NULL, 'Ameoa', 'Edith Beza', 0, 'Kigamboni', '255747584779', NULL, 'sbatenzi@gmail.com', NULL, 'mshirika', '$2y$12$UCKpiu5EOpK6hH5039CBBurVQIzBT0RzbBOGuy7VYhx/IPmPAiys.', NULL, '2026-02-25 19:06:15', '2026-02-25 20:11:56'),
(56, 'ANOLD GIDION FUMBUKA', 'M', '1998-10-31', 'KINONDONI / DAR ES SALAAM', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255686360843', NULL, 'fumbukajr97@gmail.com', NULL, 'mshirika', '$2y$12$J4CJjFvaE0qhFsTEH/5C4uGZA1yI5LIiMi3kWwRtKm2UIv2cCejWG', NULL, '2026-02-25 22:00:08', '2026-02-25 22:45:50'),
(57, 'ESTER MATHAYO CHARLES', 'F', '2002-04-01', 'MAGU / MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255612145642', NULL, 'estercharles719@gmail.com', NULL, 'mshirika', '$2y$12$vxMt/wezF6/Jg7n88sLsxuGXD4OKoY.NpBV10ZnIObSqOSISN2SH.', NULL, '2026-02-25 22:13:21', '2026-02-26 00:45:04'),
(58, 'Theresia kindole', 'F', '1993-12-12', 'Temeke Dar es Salaam', NULL, 'Ameolewa', 'Elisha Makiya', 0, 'Mgeninani', '255717480049', NULL, 'thersiakindole@gmail.com', NULL, 'mshirika', '$2y$12$Z/OWPpb9SsHAqzbfAW5V1ePnepS4wAodcxXTfIkkCRid5bJeW4Woi', NULL, '2026-02-26 00:36:02', '2026-02-26 00:39:14'),
(59, 'Jane Martin', 'F', '1972-12-28', 'Busega/Simiyu', NULL, 'Ameolewa', 'Reuben Bulugu', 5, 'Kongowe', '255786504664', NULL, 'janemartn2@gmail.com', NULL, 'mshirika', '$2y$12$2xLMlzA.zGMIp5wVllL.JuwEs3bpuLtIW/JcZtwyAHEqpdl7j9J/y', NULL, '2026-02-26 01:05:41', '2026-02-26 01:28:10'),
(60, 'UYANJO JOHN', 'F', '1996-06-08', 'Temeke/Dar es salaam', NULL, 'Ameolewa', 'DENIS CLEOPHACE', 1, 'Mbande', '255674918283', NULL, 'uyanjo96@gmail.com', NULL, 'mshirika', '$2y$12$0ogK1sdlQMzd206AljMHo.byak92.V8owvTZn7Qr9OzLgnblrolLG', NULL, '2026-02-26 02:07:11', '2026-02-26 15:29:58'),
(61, 'Wenceslaus Benedict Fungamtama', 'M', '1978-01-09', 'Musoma, Mara', NULL, 'Ameoa', 'Gloria', 3, 'Kigamboni', '255754502656', NULL, 'fungamtama@yahoo.com', NULL, 'kiongozi', '$2y$12$WDLC7TsAUvTetB5xtXTOpefvOA2K11Gz0jqstQod.RTnTK91BtV/W', NULL, '2026-02-26 15:27:13', '2026-02-28 00:04:10'),
(62, 'Alam Alexander', 'M', '1994-04-18', 'Kigoma', NULL, 'Ameoa', 'Rachel Andrew Machupa', 0, 'Yerusalem', '255761360607', NULL, 'alamalexander3@gmail.com', NULL, 'mshirika', '$2y$12$pNds2sehYscBWpG/ka48XeEM./luyJ0dON3qmoNwwuQkjg/shl23.', NULL, '2026-02-26 16:42:37', '2026-02-27 17:06:12'),
(63, 'AUGUSTINO MADAKI BONIPHACE', 'M', '1984-11-20', 'Nzega, Tabora', NULL, 'Ameoa', 'Emiliana Mwita Nyakaraita', 5, 'Mgeninani', '255757445207', NULL, 'tmadaki48@gmail.com', NULL, 'admin', '$2y$12$j00txvDmWRxuZxTEnbVHtOKKlP7yrgdIgapTx7VLqChDvc/haUode', NULL, '2026-02-27 01:07:31', '2026-03-23 11:36:08'),
(64, 'MAGRETH SYLIVESTER ROBERT', 'F', '1999-03-23', 'NZEGA/TABORA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255746562364', NULL, 'magrethrobert23@gmail.com', NULL, 'mshirika', '$2y$12$LCNfNqB79BmNtwm.W6zSXOa7Boru1t/WHQ.VUD1MNxbWM59.VcbMe', NULL, '2026-02-27 13:12:03', '2026-02-27 13:35:07'),
(65, 'Kepha Thomas Michael', 'M', '1990-06-26', 'Ikungi', NULL, 'Ameoa', 'Numwagile Ackim Mwakipale', 1, 'Mgeninani', '255713863847', NULL, 'kephamichael26@gmail.com', NULL, 'mshirika', '$2y$12$5JNf19nSNw.oM67uhDOD1ufGrcFxqBHwfMWFLUfmvR6iIGgxUJ6Lq', NULL, '2026-02-27 13:19:07', '2026-02-27 16:25:48'),
(66, 'JONAS MARCO MPANZO', 'M', '1994-09-10', 'Mwanza', NULL, 'Ameoa', 'Illah', 1, 'Kinondoni', '255767939928', NULL, 'mpanzojonas@gmail.com', NULL, 'mshirika', '$2y$12$WZeDtKKOeyxkjsVBUXDKr.oS2v6utkl8mDs5uT.Zttu.EfZinXbi6', NULL, '2026-02-27 15:59:02', '2026-03-09 15:35:46'),
(67, 'Aloyce Godfrey Beza', 'M', '1988-10-29', 'Ilala', NULL, 'Ameoa', 'Lydia Msabaha', 1, 'Yerusalem', '255713213731', NULL, 'bezaaloyce@yahoo.com', NULL, 'mshirika', '$2y$12$osapo0iFHpG/CuJWcjGaZ.Oa2VihzZjay9zrUYyH/RMd7RTpxxu0u', NULL, '2026-02-27 16:13:16', '2026-02-27 16:26:01'),
(68, 'Lydia Msabaha Midello', 'F', '1991-05-19', 'Ilala - Dar es salaam', NULL, 'Ameolewa', 'Aloyce Beza', 1, 'Yerusalem', '255719453147', NULL, 'lydiamsabaha@gmail.com', NULL, 'mshirika', '$2y$12$CLQjJ0qC7mjq5mA0lM0Ure2qwh3vwq7dnxR2ua80mI/ppWGO7sU/m', NULL, '2026-02-27 18:32:32', '2026-03-10 07:42:42'),
(69, 'Ebenezer Mathew', 'M', '2001-07-27', 'Dar es Salaam', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255788359022', NULL, 'ebenezer.mathew@icloud.com', NULL, 'mshirika', '$2y$12$bU9uk/aXNsOgbEhFkspny.ep7TLABdQkv4nDySn3bJCCscAbe7RIO', NULL, '2026-02-27 20:20:49', '2026-03-10 12:33:52'),
(70, 'Philomena Solomon Muhamila', 'F', '1976-12-13', 'Kigoma, sanze', NULL, 'Ameolewa', 'Suleiman Mathew Ikomba', 3, 'Mgeninani', '255756945201', NULL, 'philomenamuhamila77@gmail.com', NULL, 'mshirika', '$2y$12$fRnh213XmcempP4Ivpz8QuKDHEJhz6nN4PrEZTx.KDDOxa01Iesd6', NULL, '2026-02-27 20:30:36', '2026-02-28 17:48:36'),
(71, 'David Fredrick Mhando', 'M', '1982-12-12', 'Handeni-Tanga', NULL, 'Ameoa', 'Lucy Obadia Ndilaliha', 3, 'Mgeninani', '255755624764', NULL, 'david.mhando82@gmail.com', NULL, 'mshirika', '$2y$12$5bkx3SIkQMLuT4wZXBX5HuEFLIVvzWYSoXmzAoheukqtYCe7g2ZwW', NULL, '2026-02-28 01:21:33', '2026-02-28 08:39:21'),
(72, 'Javan Jerome Zablon', 'M', '1988-06-15', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255713625929', NULL, 'javan.jerome@gmail.com', NULL, 'mshirika', '$2y$12$5bFE41r.jAieYJfqIL3AR.B5nhg8prwPAsuSpjKbeupBPwKzW2kVK', NULL, '2026-02-28 18:38:56', '2026-03-01 17:37:49'),
(73, 'FREDRICK JACOB BALIGOMWA', 'M', '1976-04-30', 'KASULU KIGOMA', NULL, 'Ameoa', 'Sorange Mathias Musavi', 4, 'Tandika', '255784681321', NULL, 'jacobbali.jb47@gmail.com', NULL, 'mshirika', '$2y$12$PeSOz87QqqF1kg9yooltp.D5ah6Inutq/JPbAuuPvds7m90MeArmW', NULL, '2026-02-28 23:50:39', '2026-03-09 15:38:35'),
(74, 'Ndungutse Yosia Misigaro', 'M', '1985-08-18', 'Kigoma', NULL, 'Ameoa', 'Fatuma Abubakar Ngarama', 2, 'Kinondoni', '255654999179', NULL, 'bitanandungutse@yahoo.com', NULL, 'mshirika', '$2y$12$PKSm6A6iZT1IcLTlmCGHye/aJfPgzwhVQMfnbgLzWBkTtpJ8cGjSW', NULL, '2026-03-01 00:21:30', '2026-03-01 17:38:08'),
(75, 'Ayoub Isaac Butandu', 'M', '1993-07-04', 'Kibonzo Kigoma', NULL, 'Ameoa', 'Queen Samwel', 1, 'Keko & Kurasini', '255764284549', NULL, 'ayoubbutandu@gmail.com', NULL, 'mshirika', '$2y$12$ElNVZx45p165.oV9zugv1OoeCgY3f5yPhrM.YiebtMKbc/viut/JC', NULL, '2026-03-01 01:24:52', '2026-03-02 15:58:42'),
(76, 'Jacqueline  Maduka', 'F', '1987-11-12', 'Maswa', NULL, 'Ameolewa', 'Peter Maduka', 1, 'Mbande', '255673073841', NULL, 'budagajacqueline@gmail.com', NULL, 'mshirika', '$2y$12$iLSNSjvQLuo78UWiCWjoTOgtuMZb2KwLUDynDFgKgHNNUWn78gGpO', NULL, '2026-03-01 16:31:52', '2026-03-01 17:38:30'),
(77, 'Patrick Ibrahim Makuhi', 'M', '2001-09-13', 'Ilala', NULL, 'Hajaoa', NULL, 0, 'Mgeninani', '255748589142', NULL, 'pmakuhi@gmail.com', NULL, 'mshirika', '$2y$12$sST6PIKYqz/Achkp5kIDt.3TQNtMaJIXD1A.OmTQuiIpKe4sV7.ai', NULL, '2026-03-01 17:02:25', '2026-03-02 15:58:43'),
(78, 'Laurencia  Thomas Mlawa', 'F', '1958-10-10', 'Iringa vijijini', NULL, 'Mjane', NULL, 1, 'Kingugi', '255716572056', NULL, 'mlawa1958@gmail.com', NULL, 'mshirika', '$2y$12$UnJWO4BfrIL9PAnsZL7xo.GMDZTCShGFsFwQF6oxcrtrHkaussvPe', NULL, '2026-03-01 18:17:27', '2026-03-01 18:20:06'),
(79, 'FATUMA ABUBAKARI NGARAMA', 'F', '1990-06-05', 'KAHAMA', NULL, 'Ameolewa', 'NDUNGUTSE YOSIA MISIGARO', 2, 'Kinondoni', '255658588591', NULL, 'fatumangarama@yahoo.com', NULL, 'mshirika', '$2y$12$n.tlh/NDtcNqj9z/M.WrbO1G0qJM4lf9nQPZKGAxdpwAKQ31mk39m', NULL, '2026-03-02 02:03:31', '2026-03-02 14:07:06'),
(80, 'ROSE DAVID KUMENYA', 'F', '1998-06-21', 'TABORA CBD', NULL, 'Ameolewa', 'HERIEL GABRIEL MWAMPULO', 1, 'Kigamboni', '255758625618', NULL, 'rosedavir26@icloud.com', NULL, 'mshirika', '$2y$12$7o5Deov9ajaKgdxqFpPUu.k2UYyno0SMTht/u9PSu97BA55AwQhYi', NULL, '2026-03-02 21:47:49', '2026-03-02 22:38:32'),
(81, 'Jumanne John Mbilao', 'M', '1973-08-31', 'Sumbawanga- Rukwa', NULL, 'Ameoa', 'Juliana Mboma', 3, 'Kinondoni', '255767800507', NULL, 'mbilaojj@gmail.com', NULL, 'mshirika', '$2y$12$pUk5DRZ4c6WuSlp1dTqeCeEaSYgYJ70ZPyqyBufw4tYC0v6UzdWsa', NULL, '2026-03-03 12:13:31', '2026-03-03 12:16:25'),
(82, 'Doto Geofrey Chima', 'F', '1991-03-02', 'Masasi Mtwara', NULL, 'Ameolewa', 'Boniphace Eliakim Nicodem', 1, 'Mtongani', '255768549003', NULL, 'dotochima287@gmail.com', NULL, 'mshirika', '$2y$12$UctJIQUMnhQsJ5wTp7vTPe1PWuveEd.aUXjYn7a.GfmyMCJlNPyH2', NULL, '2026-03-03 20:58:33', '2026-03-04 14:52:55'),
(83, 'NEZIA SHELF SHERTIELY', 'F', '2021-04-14', 'ILALA / DAR ES SALAAM', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255767435625', NULL, 'neziashertiely@gmail.com', NULL, 'mshirika', '$2y$12$jDN0rVwDsVr8aSOyfGJ/vuXjLO3RBzXZW7qTlbuwjE6F7idj/hyv6', NULL, '2026-03-03 22:08:37', '2026-03-04 01:26:40'),
(84, 'Ernest Gyunda', 'M', '1966-10-21', 'Kiomboi', NULL, 'Mgane', NULL, 4, 'Kinondoni', '255784299942', NULL, 'ernestgyunda12@gmail.com', NULL, 'mshirika', '$2y$12$LuVV9V0eMLTMwDvIIBiUqOcWtCOZlme4n1F.9mwfONUnx/cbaMURS', NULL, '2026-03-03 22:19:15', '2026-03-04 01:26:25'),
(85, 'Joseph William Makange', 'M', '1998-03-29', 'Shinyanga', NULL, 'Ameoa', 'Angel William', 0, 'Kigamboni', '255626536720', NULL, 'josephmakange95@gmail.com', NULL, 'mshirika', '$2y$12$YXxZKuibJO6bzX363M2PDOMtiufCMEhb5.QYQf4HTDRp9NmENEwM.', NULL, '2026-03-03 22:38:38', '2026-03-04 14:52:28'),
(86, 'Faraja Anthony Rutebuka', 'F', '1998-05-05', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255758159929', NULL, 'anthonyfaraja7@gmail.com', NULL, 'mshirika', '$2y$12$a3PoG8h7SXfKC1vMH/DZCuzw6G3TyflNjZrjFUjc6h5G7rlRGfRvy', NULL, '2026-03-03 23:34:35', '2026-03-04 11:20:45'),
(87, 'Witness Morice', 'F', '1977-10-20', 'Kigoma', NULL, 'Ameolewa', 'Morice Michael', 3, 'Mgeninani', '255682956632', NULL, 'witnessmorice2@gmail.com', NULL, 'mshirika', '$2y$12$60sWmUogSYhBt9v4b3EF/el0t/L.wEpx7h5yH5qr9MQOxzq8UZ.gW', NULL, '2026-03-04 01:04:01', '2026-03-04 14:52:35'),
(88, 'Jane Joseph Elias', 'F', '2001-05-27', 'Katavi', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255748375141', NULL, 'Josephjane@gmail.com', NULL, 'mshirika', '$2y$12$Wj3hR2rFm3dyvkgkLkh5buWSEO1FcK68OWDZ287dLd5lZbh02qYpq', NULL, '2026-03-04 14:27:16', '2026-03-09 15:40:06'),
(89, 'Angel William Makange', 'F', '2000-05-19', 'Ilemela', NULL, 'Ameolewa', 'Joseph William Makange', 0, 'Kigamboni', '255612639779', NULL, 'vijitotours@gmail.com', NULL, 'mshirika', '$2y$12$bJn/qMwdYAmNskh9gmV2JeOfDoewvl8uIADdMRtQeC8KCmguVNu1O', NULL, '2026-03-04 15:40:16', '2026-03-10 18:10:46'),
(90, 'Rachel Gyunda', 'F', '2001-10-15', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255678121710', NULL, 'rachelgyunda868@gmail.com', NULL, 'mshirika', '$2y$12$RObVzhHRCgLjva5B32BcBeVN7kQqgm7KIQ1zwm163mxabwAZ5uTK.', NULL, '2026-03-04 18:00:10', '2026-03-09 15:32:34'),
(91, 'Baraka Exon', 'M', '1993-06-05', 'Mpanda/Katavi', NULL, 'Ameoa', 'Lydia', 1, 'Kizuiani', '255625604709', NULL, 'barakaexon559@gmail.com', NULL, 'mshirika', '$2y$12$dgXsf8A5t/cgOejVi7N1COUAgfDYwxDJnRY252HV4.3LsHop/0012', NULL, '2026-03-07 22:21:44', '2026-03-09 15:39:28'),
(92, 'Rahel Alfredy', 'F', '1987-08-12', 'Kigoma kasulu', NULL, 'Ameolewa', 'MACRICE MBODO', 2, 'Yerusalem', '255759933152', NULL, 'rahelrugola87@gmail.com', NULL, 'mshirika', '$2y$12$wGBs8PCxjnmvVkfSiqu0qu5bQZOh4IUKX.lX/8r4sMuFc28Tqqvg2', NULL, '2026-03-08 17:15:00', '2026-03-09 15:36:34'),
(94, 'Eden Francis', 'M', '1994-08-08', 'Kaliua / Tabora', NULL, 'Ameoa', 'Jane Lwitiko', 1, 'Mtongani', '255689373760', NULL, 'edenfrancis17@gmail.com', NULL, 'mshirika', '$2y$12$eCvAQLY0Bxe9gKupOfcwG.RBvuuA6TlkWQdYLPYNPgU9EYJ2P1c4G', NULL, '2026-03-09 00:03:46', '2026-03-10 18:09:20'),
(95, 'Naomi Josiah Kabirigi', 'F', '1889-06-21', 'Ngara', NULL, 'Ameolewa', 'Nickson Kataze', 2, 'Mgeninani', '255683246553', NULL, 'naomi30@gmail.com', NULL, 'mshirika', '$2y$12$qElMcyrWFE.orrs.tky2eOKwqQfZqcykFvCL3EddcsCjBH57LEvK6', NULL, '2026-03-09 13:37:19', '2026-03-09 14:16:04'),
(96, 'Dorcas Vicent Nangonga', 'F', '2003-01-13', 'Rufiji/Pwani', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255673286630', NULL, 'dorcasvicent84@gmail.com', NULL, 'mshirika', '$2y$12$Hwo.Laxo6B/2QD3/9yNDvOcOOch20wfpRNJX2hAWSP03IBxXXWhJu', NULL, '2026-03-09 13:46:21', '2026-03-09 15:33:57'),
(97, 'HELMAN EMANNUEL CHARLES', 'M', '1996-07-23', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Tandika', '255783166249', NULL, 'herlyemanuel@gmail.com', NULL, 'mshirika', '$2y$12$evOmzWlqFhlqZJWhUWGWSO9FhIsK3aiTSCZiruyrbvnqif/2Nzu1u', NULL, '2026-03-09 13:46:50', '2026-03-09 15:37:26'),
(99, 'Janeth Mramba', 'F', '1993-12-02', 'Tabora', NULL, 'Ameolewa', 'Johnny Josephat Nyondo', 2, 'Kijichi', '255656740678', NULL, 'jmramba25@gmail.com', NULL, 'mshirika', '$2y$12$QYc9Q5/mLFHsKPQDSlojaeaLsLHdKJ/p2JzJCryRKsiYVMzI5JgIC', NULL, '2026-03-09 14:09:19', '2026-03-09 14:15:51'),
(100, 'Richard Mussa Lutobanija', 'M', '2000-01-01', 'Shinyanga', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255672119848', NULL, 'richardmussa848@gmail.com', NULL, 'mshirika', '$2y$12$sdRaitsJaEOjsBMiGxRiBuATT1nG2pioGTZT8pTYf2U.txf5v7Vru', NULL, '2026-03-09 15:12:08', '2026-03-09 18:28:49'),
(101, 'JOSEPH KAVASHA YUNUS ALEX', 'M', '1995-05-02', 'RUKWA/MPANDA', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255687482953', NULL, 'josephalexyunus@gmail.com', NULL, 'mshirika', '$2y$12$KPU70K5UfAZzbAAl8wZuCOi.UFiGIbJZINlorAfjdN8ZUDhvx2U2G', NULL, '2026-03-09 15:14:04', '2026-03-09 15:33:14'),
(102, 'Efraim Bisese', 'M', '2026-05-26', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255713766759', NULL, 'efraimbisese@gmail.com', NULL, 'mshirika', '$2y$12$tT1XlbVZa0kHlJ1f1LPPl.muSE.Wg4g2SrXZ08ryVMVnVWjZqjd0i', NULL, '2026-03-09 17:33:48', '2026-03-09 19:21:35'),
(103, 'Daniel Vicent Nangonga', 'M', '2000-03-21', 'Rufiji, Pwani', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255672646219', NULL, 'danielnangonga@gmail.com', NULL, 'mshirika', '$2y$12$IW76nBmqY.W9VMza8ap4c.GP2JIua10CFOBKvpUc4/.ZmBqswtSiO', NULL, '2026-03-09 17:45:36', '2026-03-09 18:19:13'),
(104, 'Kelvin Victor Dillunga', 'M', '1987-03-07', 'Kinondoni/Dar es Salaam', NULL, 'Ameoa', 'Esther Essau Mhonda', 1, 'Yerusalem', '255767943911', NULL, 'victkelvin@gmail.com', NULL, 'mshirika', '$2y$12$7paV9WxyN4EDRSz8WoJiee4cN6j1rBQJTFbDCLYcx548zeP4rVf0W', NULL, '2026-03-09 20:00:53', '2026-03-10 10:20:21'),
(105, 'Lydia Francis julias', 'F', '1996-09-14', 'Mpanda katavi', NULL, 'Ameolewa', 'Baraka Exon mwashitete', 1, 'Kizuiani', '255625254512', NULL, 'Lydianyanda@gmail', NULL, 'mshirika', '$2y$12$C9mERyH0F06m..UTxkTPaeDWxxINbJRPTPFu.kPEESt896bUPuQs2', NULL, '2026-03-09 20:12:03', '2026-03-10 12:15:02'),
(106, 'Deborah Emmanuel Christopher', 'F', '1999-07-10', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255653748496', NULL, 'deborachristopher05@gmail.com', NULL, 'mshirika', '$2y$12$QD3VFxR1OhTzIZ6MidofeuIYg.1Fq979FZ.P8b5pN0HQ/mOIYCeW6', NULL, '2026-03-09 20:14:06', '2026-03-10 10:16:11'),
(107, 'Grace Oscar kindole', 'F', '2005-12-07', 'Iringa Tagamenda', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255635213724', NULL, 'grace.okindole@gmail.com', NULL, 'mshirika', '$2y$12$nOmWHrbdhBWTkDZ4KQPTxeli/nNxYs2vo1csg.K7Xsk/IRZ.T39dy', NULL, '2026-03-09 20:15:18', '2026-03-10 11:05:34'),
(108, 'Lilian Kameta', 'F', '2000-12-23', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255743767556', NULL, 'liliankameta0@gmail.com', NULL, 'mshirika', '$2y$12$Yqp8Cd1q5XBgi4rNN10.3OgKQX3Jo8sE1qoKq.5CsI1eRL1KGjhAe', NULL, '2026-03-09 20:21:14', '2026-03-10 12:20:34'),
(109, 'Miriam Fredy Mkisi', 'F', '1995-03-08', 'Dar es Saalam', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255687099011', NULL, 'miriammkisi95@gmail.com', NULL, 'mshirika', '$2y$12$Jn4i3bHs8fDz0n2/IjQODeaItGtdExuD2gWkUGuPMjPSHDIxV155u', NULL, '2026-03-09 20:29:46', '2026-03-10 09:59:05'),
(110, 'Paulo Kwilasa', 'M', '1996-02-16', 'Nzega Tabora', NULL, 'Ameoa', 'Neema Silau', 0, 'Yerusalem', '255742660107', NULL, 'paulokwilasa20@gmail.com', NULL, 'mshirika', '$2y$12$HJgQfjq3BPq.untxwRwxh.hlHcfEuNDU5JFWYr7ruWr8N6geQj6Va', NULL, '2026-03-09 20:31:29', '2026-03-09 23:05:00'),
(111, 'NEEMA IBRAHIMU', 'F', '1999-11-10', 'TEMEKE', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255625414536', NULL, 'hawaomary36@gmail.com', NULL, 'mshirika', '$2y$12$eAsLbwEiXjGOaWzb9b1D5eOUxMz3LdeSWIulVIwmYx9gljo641C.K', NULL, '2026-03-09 20:33:11', '2026-03-10 11:04:20'),
(112, 'Moreen romanus mdemu', 'F', '2002-03-10', 'Iringa wilaya ya mfindi', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255758021689', NULL, 'moreenmdemu94@gmail.com', NULL, 'mshirika', '$2y$12$Y7u9Jovg0lg4PuraG346k.EqiGDim09q/.FXd9yCdUzmQ/1cH8Q96', NULL, '2026-03-09 20:48:28', '2026-03-10 10:16:45'),
(113, 'Esther David Mpinga', 'F', '2000-01-24', 'Singida, Singida', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255679901762', NULL, 'hadassahdavid67@gmail.com', NULL, 'mshirika', '$2y$12$UkbKW6Vhb3wQAcxFiGNW4.ClB1wuelSYQUtNx1V.gGVQGzQBaOP7u', NULL, '2026-03-09 20:50:07', '2026-03-10 10:16:56'),
(114, 'Elisha Elia Mbuba', 'M', '1996-08-11', 'Mbozi-Songwe', NULL, 'Ameoa', 'Theresia', 0, 'Kigamboni', '255753019220', NULL, 'elishambuba86@gmail.com', NULL, 'mshirika', '$2y$12$U/m.ellV7SWXgCPTCEWYtOFBftJ/RT81hBEBIwEXuGw6RP1yVN4H.', NULL, '2026-03-09 21:24:17', '2026-03-09 23:08:21'),
(115, 'Aneth Amos', 'F', '2006-10-04', 'Daressalaam', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255650877876', NULL, 'anethamos145@gmail.com', NULL, 'mshirika', '$2y$12$HpO9wuGCkhPqYP4mRfTrAepFmUdOLm43WNjGOKq8Z11UlEsCwwk06', NULL, '2026-03-09 21:24:40', '2026-03-09 23:05:15'),
(116, 'Aneth Maila', 'F', '1995-12-25', 'Kigoma mjini', NULL, 'Ameolewa', 'Aneth', 3, 'Kongowe', '255623209891', NULL, 'anethmaila234@gmail.com', NULL, 'mshirika', '$2y$12$/xWRqHtEklHaFqWesC7unuHD0Hr8GlSnt8ctr127tb6.k1HCv4NDi', NULL, '2026-03-09 21:29:09', '2026-03-10 12:23:38'),
(117, 'Elias Pafla', 'M', '1988-03-18', 'Kigoma mjini', NULL, 'Ameoa', 'Dorcas', 1, 'Kizuiani', '255759605163', NULL, 'eliaspafla3@gmail.com', NULL, 'mshirika', '$2y$12$WxU0rFH0mZOvxXFwv2OcZu0wVqjSksmv.Ia/S4f5wb7rXpkebYdRa', NULL, '2026-03-09 21:31:21', '2026-03-10 10:17:09'),
(118, 'AHAZI EMAU MWENDAPOLE', 'M', '2002-06-05', 'Kasulu Kigoma', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255744948459', NULL, 'mwendapoleahaz@gmail.com', NULL, 'mshirika', '$2y$12$Y9klAFF.S7.mhklzLLj0qekjnwJTQvD5eQa65l/i/BbqTivLxVkMu', NULL, '2026-03-09 21:45:05', '2026-03-10 14:35:45'),
(119, 'Elisha Machimu', 'M', '1995-05-17', 'Geita', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255756915968', NULL, 'elishamachimu@gmail.com', NULL, 'mshirika', '$2y$12$dcAOZKFvFyyKY2vSdlRob.ysARgsvzgPorSZU5IzYTtgEC7NsBvuC', NULL, '2026-03-09 21:55:05', '2026-03-23 16:06:06'),
(120, 'THERESIA EMMANUEL MUSHI', 'F', '1998-05-01', 'Moshi-Kilimanjaro', NULL, 'Ameolewa', 'ELISHA ELIA MBUBA', 0, 'Kigamboni', '255769860746', NULL, 'theresiaemmanuel40@gmail.com', NULL, 'mshirika', '$2y$12$qvMBqPKue5uCV1/E9qTYNOIWlqjKMEybMAvqmgZ/YNkzodidXrV3G', NULL, '2026-03-09 21:55:23', '2026-03-10 10:17:54'),
(121, 'Witness Johnson Kitaa', 'F', '1999-12-01', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255782252032', NULL, 'johnsonwitness7@gmail.com', NULL, 'mshirika', '$2y$12$4u8kpscAieODKYoBHPPEXejcVsCgEzfFDyRduTW/prGW1FiDdloZW', NULL, '2026-03-09 22:03:30', '2026-03-10 11:04:51'),
(122, 'ELIZABETH JOHN LUTIGA', 'F', '1972-02-14', 'SINGIDA/ IRAMBA MASHARIKI', NULL, 'Ameolewa', 'JOHN DANIEL MGHENYI', 1, 'Mtongani', '255784492222', NULL, 'elizalutiga1@gmail.com', NULL, 'mshirika', '$2y$12$CMtl/ztJ2yHRcy8VimrBFOyOPUKPcvvHDmRzq8t.KArOzgAHyKtrq', NULL, '2026-03-09 22:33:39', '2026-03-10 10:19:35'),
(123, 'Reuben gidion lomayan', 'M', '2002-07-13', 'Arusha', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255762808870', NULL, 'Reubengidion0@gmail.com', NULL, 'mshirika', '$2y$12$f8mwZUnSEG82coqh/5GRoOABg2F.RN0yXtXIoTgTkn6abP8y5.z8u', NULL, '2026-03-09 22:48:25', '2026-03-10 11:06:38'),
(124, 'Richard Nassoro Yumba', 'M', '1990-02-09', 'Kigoma', NULL, 'Ameoa', 'Assa Jonathan Kasongo', 1, 'Kigamboni', '255777957412', NULL, 'richardnassoroyumba@gmail.com', NULL, 'mshirika', '$2y$12$0A83jLKRf/MnG3UHd7IaD.t5g.u37QmKSvLXveMiwrAmXvg3rFD8m', NULL, '2026-03-09 22:48:51', '2026-03-10 14:29:05'),
(125, 'Penuel onesmo kasasila', 'F', '1999-06-26', 'KAKONKO', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255755413565', NULL, 'penuelbaransoba@gmail.com', NULL, 'mshirika', '$2y$12$b3i.o47iHySfeB1lgn/4PeI7.yHTBlzWYwzTzUb4RHrDr7rqLIfMq', NULL, '2026-03-09 22:53:54', '2026-03-10 11:59:55'),
(126, 'Abdon Israel', 'M', '2006-08-26', 'Iramba-Singida', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255765233373', NULL, 'israeljrabdon@gmail.com', NULL, 'mshirika', '$2y$12$pq3CporKdB/5twbxb7ub8.Tg3vQyjxoE1CldB.J7ApsXx7kGjhxd.', NULL, '2026-03-09 23:41:50', '2026-03-10 11:08:16'),
(127, 'JOHN CHRISTOPHER PAZIA', 'M', '1991-06-10', 'Korogwe Tanga', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255763441922', NULL, 'iamjohnpazia@gmail.com', NULL, 'mshirika', '$2y$12$eC/JJfAGr7Rm1vUQ2iVJfuGnIqIQU3tCVjRrFic1Fxbqq5wYQ136e', NULL, '2026-03-10 00:08:53', '2026-03-10 11:06:44'),
(128, 'Michael D. Michael', 'M', '2000-05-01', 'Tabora', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255683637757', NULL, 'michaeldiedone47@gmail.com', NULL, 'mshirika', '$2y$12$3PoLb/20cKJVofuDlOEJ4e6.3qvoFIuRUpc3pOM2J5.x.pJAL0rk2', NULL, '2026-03-10 00:43:02', '2026-03-10 11:59:50'),
(129, 'Edina msubi', 'F', '1985-02-02', 'Mbogwe, Geita', NULL, 'Ameolewa', 'Amos Samwel Ntandu', 3, 'Mbande', '255747013806', NULL, 'edinamsubi23@gmail.com', NULL, 'mshirika', '$2y$12$wISD8AENi1N/Y8jbQSB/4e9skS/buuGUje5yiN7SNOeznXjgFkI4u', NULL, '2026-03-10 08:21:00', '2026-03-10 11:02:43'),
(130, 'Samson Batista Kindole', 'M', '1998-11-21', 'Iringa', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255657402105', NULL, 'sonsabak10@gmail.com', NULL, 'mshirika', '$2y$12$P8QLdsZbnW3GWizC3ElVm.i/wg0vqg5sDS2cXbloXAdaVEwIctFsO', NULL, '2026-03-10 08:22:02', '2026-03-10 10:18:53'),
(131, 'JOHNBOSCO ROBERT NDOMBA', 'M', '2000-04-27', 'RUVUMA', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255783381589', NULL, 'johnboscondomba@gmail.com', NULL, 'mshirika', '$2y$12$ZnORNVDuJBUN4EPR2SsAtu9QrPpFt5Vj8lZyYrZXY02cFdzrU2B1e', NULL, '2026-03-10 09:22:30', '2026-03-10 11:03:43'),
(132, 'Gelda Paulo', 'F', '1980-01-01', 'KIGOMA VIJIJINI/kIGOMA', NULL, 'Ameolewa', 'DAMIAN NDABATINYA', 4, 'Tandika', '255769431353', NULL, 'geldapaulo@gmail.com', NULL, 'mshirika', '$2y$12$FfWjZjuxmNTbApG38GJYGOLcITjOpUgj3nWcFr5ywmIrEftzwZCY.', NULL, '2026-03-10 09:54:20', '2026-03-10 11:02:29'),
(133, 'Jesca Emmanuel Pelembela', 'F', '1993-12-16', 'Pwani', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255656750710', NULL, 'jpelembela93@gmail.com', NULL, 'mshirika', '$2y$12$lwQ6uR333YlyTJ3LNZzUgO9S4o5H2mkhk9u2NNGoLg5Fgy454exMu', NULL, '2026-03-10 10:24:37', '2026-03-10 12:52:41'),
(134, 'DANIEL JOHN MGHENYI', 'M', '2003-03-13', 'Mwananyamala/ DAR ES SALAAM', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255692894256', NULL, 'danny.johnm13@gmail.com', NULL, 'mshirika', '$2y$12$NweOjNKYTTsxgMLJ6N7QZeiFbBlqDdSmR4paAtv.KLYCGFJTnRosW', NULL, '2026-03-10 10:28:26', '2026-03-10 11:03:15'),
(135, 'MILTONI JOHN RUSIGALIYE', 'M', '1992-10-10', 'KIGOMA', NULL, 'Ameoa', 'AGNESTA TANDITSE BALANKANA', 2, 'Kongowe', '255766107442', NULL, 'sayunintawiha@gmail.com', NULL, 'mshirika', '$2y$12$P6qhFnw0.XE8JD8sv6kkcuK/mwHars6WnN7do0n1fiu02KogK3NJC', NULL, '2026-03-10 10:36:14', '2026-03-11 00:13:44'),
(136, 'Eliah Samson', 'M', '1994-11-14', 'Mkoa wa tabora', NULL, 'Ameoa', 'Vailethi Saimon', 0, 'Yerusalem', '255627768223', NULL, 'eliahsamson@gimail.com', NULL, 'mshirika', '$2y$12$8.WDRDBkAGKCA6w0B2lxc.qHAmz1Nuzdr1MpjEyGfjltwL7356vFq', NULL, '2026-03-10 11:13:46', '2026-03-10 12:30:52'),
(137, 'Praygod Yohana', 'M', '1994-11-14', 'Dar-es-salaam', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255717330095', NULL, 'praygodyohana@gmail.com', NULL, 'mshirika', '$2y$12$rwVKrlk9VM.AY/a8tAq1Nuf1Y1U5Gcr0vUStXliwJ2SyQzddqEjpm', NULL, '2026-03-10 11:42:36', '2026-03-10 11:59:37'),
(138, 'ESTA ISRAEL SAMWEL', 'F', '2003-03-26', 'Njombe', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255768651845', NULL, 'mordecaiscousin@gmail.com', NULL, 'mshirika', '$2y$12$M7riNxAs4Gmytzaz9T.ar.K78ArQj10Zw60opTJZVotCrqLHAsYKq', NULL, '2026-03-10 11:54:45', '2026-03-10 12:30:35'),
(139, 'Rachel Charles Ng’wavi', 'F', '1999-09-14', 'Njombe', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255625149418', NULL, 'rachelcharles062@gmail.com', NULL, 'mshirika', '$2y$12$tfoDECClrEGq0ry3Kou3fulR2L8UbgF3ROYJM3p1aWNY3WuLVUxaK', NULL, '2026-03-10 12:09:59', '2026-03-10 12:30:39'),
(140, 'Eliakim Yusuph', 'M', '1996-10-05', 'Buhingwe-Kigoma', NULL, 'Hajaoa', NULL, 0, 'Mgeninani', '255672629274', NULL, 'eliakimyusuph@gmail.com', NULL, NULL, '$2y$12$7LWSlx2K/luxAMaDyvVMXOio0wEzZ7Fy/kgDw1vimy326m9BN8Z.e', NULL, '2026-03-10 13:16:55', '2026-03-10 13:16:55'),
(141, 'DAVID GODFREY MADEJE', 'M', '1999-01-07', 'DODOMA', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255754742776', NULL, 'davidmadeje69@gmail.com', NULL, NULL, '$2y$12$jepnX9kSXA5zInY2gx2aG.voVauShqRLZuVhit5lGr7nCcM4MedU6', NULL, '2026-03-10 14:03:55', '2026-03-10 14:03:55'),
(143, 'Simeon Erasto Rwamugabo', 'M', '1998-05-16', 'Biharamulo-Kagera', NULL, 'Ameoa', 'Lydia Abel Kambona', 1, 'Kijichi', '255629018686', NULL, 'mategekopaul86@gmail.com', NULL, 'mshirika', '$2y$12$BTHqYTRhuCo63GI6up0vVOPYbOwqv5hVefxGc46YRFnZ1FsFN02US', NULL, '2026-03-10 14:40:04', '2026-03-10 17:50:27'),
(144, 'Assa Jonathan Kasongo', 'F', '1998-10-10', 'Dar es salaam', NULL, 'Ameolewa', 'Richard Nassoro Yumba', 1, 'Kigamboni', '255746454024', NULL, 'kasongoassa98@gmail.com', NULL, 'mshirika', '$2y$12$mFLBQbx3YbjWqg6U2yrJhOsWnNl/cfJ3/kPd76HPkYKSqaMwsFJzi', NULL, '2026-03-10 15:04:39', '2026-03-10 17:48:21'),
(145, 'Martha Essau Nyaulingo', 'F', '1995-01-25', 'IRINGA Kilolo', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255688063104', NULL, 'marthanyaulingo913@gmail.com', NULL, 'mshirika', '$2y$12$Zc9wkw3bYVKpSGxBQ0xFd.xgu0DnTgRu0L9YigBKTWeRYCS3KjS2a', NULL, '2026-03-10 15:16:49', '2026-03-10 17:51:47'),
(146, 'Monica Samwel Yungu', 'F', '1993-05-14', 'Kibondo - Kigoma', NULL, 'Ameolewa', 'Zephania Jacob Nungwi', 0, 'Keko & Kurasini', '255736000391', NULL, 'monica.yungu@tpf.go.tz', NULL, 'mshirika', '$2y$12$wWiJXLH9rfqPOd7tALI1buCoykLIZaHg0yO4Y7.o9mn8aG.On5MOu', NULL, '2026-03-10 15:52:03', '2026-03-10 17:51:35'),
(147, 'Atuganile Benson Mwambola', 'F', '2003-04-26', 'MBEYA-KYELA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255652655485', NULL, 'bensonatu2@gmail.com', NULL, 'mshirika', '$2y$12$JMEE/StaL13oBu2soPGSOeNWwppovQjM5aaTul5wEzLqv8AnZ73c2', NULL, '2026-03-10 16:57:33', '2026-03-10 17:48:30'),
(148, 'Agnes Isaya', 'F', '1996-10-18', 'Ikungi Singida', NULL, 'Ameolewa', 'Agnes', 1, 'Kizuiani', '255789841282', NULL, 'samwelyagnes3@gmail.com', NULL, 'mshirika', '$2y$12$Zu5aFcA8aWF1tqJKIuxCAeP4It5aXMWf58IAlycVxtRhkQaLTe76K', NULL, '2026-03-10 17:18:17', '2026-03-10 17:50:12'),
(149, 'Leah January Mvungi', 'F', '1996-04-07', 'Arusha', NULL, 'Ameolewa', 'Evarist Merkiori Mrema', 0, 'Mtongani', '255764757383', NULL, 'leahmvungi9@gmail.com', NULL, 'mshirika', '$2y$12$g0MP/p8xei24NOGFROg3AeTa78yY6ASRWjso5cw2ZhW96Z7Qo6TpO', NULL, '2026-03-10 18:02:08', '2026-03-10 18:13:09'),
(150, 'Esther Mhonda', 'F', '1992-04-15', 'Mufindi/Iringa', NULL, 'Ameolewa', 'Kelvin Dillunga', 1, 'Yerusalem', '255758982502', NULL, 'esthermhonda@gmail.com', NULL, 'mshirika', '$2y$12$vEg3FQlKUB8GA0VTr4TtlOnf.8iic.q/4Bt6VpkNSKXawgzmBcilq', NULL, '2026-03-10 18:33:52', '2026-03-10 23:58:04'),
(151, 'Niela frank mahuba', 'F', '1993-10-10', 'Kigoma mjini', NULL, 'Ameolewa', 'Niela  frank', 3, 'Kizuiani', '255769949175', NULL, 'nielategemea18@gimail.com', NULL, 'mshirika', '$2y$12$RVDO0uzedj1TGjt26./MXOLjqlAo/n.Ohs730/CBPJAH8dDhdNFe.', NULL, '2026-03-10 18:48:40', '2026-03-10 23:58:20'),
(152, 'ROGERS SIMON MAGENE', 'M', '1994-10-04', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kongowe', '255759242292', NULL, 'rogerssimon236@gmail.com', NULL, 'mshirika', '$2y$12$ZC3PSE4UNDECqBSP5N2gG./7KdoVaUcttdeHd.vkmRAeeiQxPM07m', NULL, '2026-03-10 18:56:48', '2026-03-10 23:59:25'),
(153, 'Anna Claudian Mayengela', 'F', '1988-09-27', 'Dar es salam,', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255653567111', NULL, 'annamayengela55@gmail.com', NULL, 'mshirika', '$2y$12$uiKB9DsMWST8eJUv76QFOeGqkFIN..Bc6f5cLKeQV1HSzSNla3cXO', NULL, '2026-03-10 19:03:18', '2026-03-10 23:58:38'),
(154, 'LADSLAUS JOSEPHAT DYUGAMBE', 'M', '2003-08-03', 'KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255679949883', NULL, 'cay.2004.08.03jose@gmail.com', NULL, 'mshirika', '$2y$12$/GCc.osjSv8eBWEtlMPaAe8apbQYOTNho3/HMWBTQ4ooM1HwjsKOe', NULL, '2026-03-10 19:07:27', '2026-03-10 23:58:43'),
(155, 'David E. Kitundu', 'M', '1996-10-23', 'Ilala/Dar es Salaam', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255752505189', NULL, 'kitundudavied@gmail.com', NULL, 'mshirika', '$2y$12$h6bnag2d2TgymnfO6Pjbv.FIKEDWs9V/SwcxCGKypObPiUUj9IUxW', NULL, '2026-03-10 19:55:48', '2026-03-11 00:11:38'),
(156, 'CHRISTINA EZRA BALEGELEJE', 'F', '2001-04-07', 'NYAMAGANA-MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255626616703', NULL, 'christinaezra4@gmail.com', NULL, 'mshirika', '$2y$12$66gNqkog5eK1Hx60pbm72OSTLRNQGHvQCTgTbLPy2E0SxoaJf.5zG', NULL, '2026-03-10 20:58:34', '2026-03-11 00:11:53'),
(157, 'Evarist Mrema', 'M', '1989-03-28', 'Tabora', NULL, 'Ameoa', 'Leah Mvungi', 0, 'Yerusalem', '255652464413', NULL, 'evaristj00@gmail.com', NULL, 'mshirika', '$2y$12$bGa8A6J34fDqZNeLUBCU8ujIO/fX2oqSsUrEMQbQnw36udRbzZjba', NULL, '2026-03-10 22:23:32', '2026-03-11 00:10:32'),
(158, 'KAIROS ELIPHASI STEPHANO', 'M', '2003-05-05', 'KATAVI', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255613898604', NULL, 'kairosmajaliwa@gmail.com', NULL, 'mshirika', '$2y$12$Tvyhvd68w.FGpzduX9BedeTEmcUwaWe.QRGhyjwNcPSGqXZ4YkslS', NULL, '2026-03-10 22:27:17', '2026-03-11 00:10:49'),
(159, 'Elisha Emmanuel Mkodo', 'M', '2004-06-30', 'Kagera Bukoba', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255775752868', NULL, 'ellyemmanuel492@gmail.com', NULL, 'mshirika', '$2y$12$S7ISA99ELNMUdEoqD6scjuQyDH6x2StnyfKraB.Rrcg6FYcw.b6vq', NULL, '2026-03-10 22:31:25', '2026-03-11 00:11:02'),
(160, 'Erika Jastin Ngao', 'F', '2001-09-27', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255775251894', NULL, 'Elizabethmgao41@gmail.com', NULL, 'mshirika', '$2y$12$vbhRF/TFsrXjFuGeIAlVpOfz2kska6qoQ3pqp9eENcjAE4YdhQvXm', NULL, '2026-03-10 23:21:36', '2026-03-11 00:11:17'),
(161, 'JESCA ADROFU STEPHANO', 'F', '2004-07-30', 'KIGOMA', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255674287981', NULL, 'stephanojesca68@gmail.com', NULL, 'mshirika', '$2y$12$ZZvTCLEcyeusIBvnsca08uthlSS1niwS.p5zS/Lm2XFmdQqDgZoAG', NULL, '2026-03-11 00:08:20', '2026-03-11 00:16:14'),
(162, 'Lydia Joshua Mwansasu', 'F', '1998-10-26', 'Rungwe mbeya', NULL, 'Ameolewa', 'Jacob Sanke Nyoni', 2, 'Mbande', '255764312396', NULL, 'lydiajacob1998@gmail.com', NULL, 'mshirika', '$2y$12$PKSO2dg1vtd94qYca9o8m.6V3NZDQptAoGh9zKKOrvTjomNwWXUCK', NULL, '2026-03-11 00:54:43', '2026-03-11 10:07:10'),
(163, 'Joshua Joas', 'M', '1997-09-07', 'Muleba-Kagera', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255785294006', NULL, 'joshuajoas97@gmail.com', NULL, 'mshirika', '$2y$12$dZlrHK/hcjNKH.zAsxyU2OhvrHS3yhX/8BOrJQdqORlgOLezYsciq', NULL, '2026-03-11 05:25:58', '2026-03-11 10:07:07'),
(164, 'Lucia Sospeter Bathoha', 'F', '2002-11-20', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255619219296', NULL, 'luciabathoha@gmail.com', NULL, 'mshirika', '$2y$12$nkvAHsgW534Zbqky/Xe2ke8Egb4Z419nXYC10V9ZUFXHzQ0Jwq0ZW', NULL, '2026-03-11 11:03:58', '2026-03-22 15:35:40'),
(165, 'Lessa Edimon Katwikilo', 'F', '2001-11-03', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255621810782', NULL, 'lessaediomon@gmail.com', NULL, 'mshirika', '$2y$12$TykkOCnk0FyHBeudg3KSouCnVy23EkYL1KtNoZOIYTFy3N97H5DsK', NULL, '2026-03-11 11:12:15', '2026-03-11 13:25:21'),
(166, 'RONALD CALEB RWANDALLA', 'M', '1995-05-10', 'Ilala / Dar es salaam', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255763064857', NULL, 'ronaldrwandalla@hotmail.com', NULL, 'mshirika', '$2y$12$yCK9Y.QDSVyjReSuMi5fCuT2ZxpYZNmTkUmQfMiG28HGLtPdtplqO', NULL, '2026-03-11 11:57:26', '2026-03-11 12:26:25'),
(167, 'JESKA MESHAKI KHOLO', 'F', '2004-08-03', 'SINGIDA', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255769164245', NULL, 'jescahkholo36@gmail.com', NULL, 'mshirika', '$2y$12$Fg/SF80uLOL1UEQymzQR/eYzxVPMvLB04AU97kEJvOQ9nfQ3KZNn6', NULL, '2026-03-11 12:39:19', '2026-03-11 14:57:35'),
(168, 'Israel Abel', 'M', '2000-10-17', 'Igunga-Tabora', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255612643766', NULL, 'dottonkuba@gmail.com', NULL, 'mshirika', '$2y$12$7fgm3PJanMUNXhF0o/Q9cOPcTvXEURrXPtoXwjmGSJjQI1vr5494y', NULL, '2026-03-11 13:44:49', '2026-03-22 11:02:07'),
(169, 'Shamimu Issa', 'F', '1999-12-23', 'Singida', NULL, 'Hajaolewa', NULL, 1, 'Mgeninani', '255690271871', NULL, 'shamimuissa025@gmail.com', NULL, 'mshirika', '$2y$12$SVZ82VIaJWLluVC/rppip.gA8K7S3ABdtWddDUhdJOSkJwNvihh.i', NULL, '2026-03-11 13:57:34', '2026-03-12 13:26:23'),
(170, 'Abel Ahungu', 'M', '1984-08-28', 'Singida DC, Singida', NULL, 'Ameoa', 'Neema Mhando', 3, 'Kijichi', '255767890819', NULL, 'ahunguabel02@gmail.com', NULL, 'mshirika', '$2y$12$HCGkMtHST.wqtLrWZY84beiv7V9YEecfDCg1DvvxxQSkg7iwSo1py', NULL, '2026-03-11 15:01:01', '2026-03-11 20:09:27'),
(171, 'Mahanga Raphael Buruna', 'M', '1995-11-27', 'Tarime / Mara', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255754942522', NULL, 'raphaelmahanga@gmail.com', NULL, 'mshirika', '$2y$12$P.jK7fohtkDeESD2LgLRl.r.6RIAdsEvQhdjeIRTph3hVcEPoYJUy', NULL, '2026-03-11 16:06:40', '2026-03-11 20:08:05'),
(172, 'EDSON MICHAEL', 'M', '1986-10-14', 'Tabora', NULL, 'Ameoa', 'Gladis Muya', 2, 'Yerusalem', '255716669794', NULL, 'edson.maiko9@gmail.com', NULL, 'mshirika', '$2y$12$/2XCVu6ernUls2bZPlfNhurUCsRBfTDyeT4YTGQsP2wzzHaiaLvzy', NULL, '2026-03-11 17:58:58', '2026-03-11 20:59:46'),
(173, 'Yakobo Issaka Paulo', 'M', '1994-03-14', 'Tanga', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255712732587', '0712732587', 'jcbissack@gmail.com', NULL, 'mshirika', '$2y$12$AhJC/K.2g7e9Gd4A9vDEhOZPSBZpdGg1Nz2KH9Q7/mpHFCTmNQj7.', NULL, '2026-03-11 20:20:12', '2026-03-12 16:44:57'),
(174, 'Upendo Isaya Kapama', 'F', '1993-05-17', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255718437044', '0718437044', 'geniouskapama@gmail.com', NULL, 'mshirika', '$2y$12$H5DAj3Ich/r1WJ3MsvzkEej/U1zeJifL2KgJCKBtIS8Gs7amHyOoy', NULL, '2026-03-11 20:28:20', '2026-03-11 20:59:55'),
(175, 'BERTIN JEREMIA MBOMBO', 'M', '1997-04-03', 'SUMBAWANGA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255711993739', '0742178913', 'bertinjeremia@gmail.com', NULL, NULL, '$2y$12$CRjEwcK/SIW0pZqc2EOJROie857hGuRg/VPqd4O8rIcme.Mxti.0S', NULL, '2026-03-11 20:55:46', '2026-03-11 20:55:46'),
(177, 'GLADNESS JAMES BABU.', 'F', '2003-03-13', 'MANYARA', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255745224991', '0745224991', 'gladiejamiee@gmail.com', NULL, 'mshirika', '$2y$12$Q9goyteJgE4.HLr.q5TsIeJiQN.SpIG9G.byncZATNxukZT/fnA72', NULL, '2026-03-11 22:22:45', '2026-03-12 08:45:10'),
(178, 'Grace Dalas Mpabansi', 'F', '1987-09-25', 'Buhigwe/kigoma', NULL, 'Ameolewa', 'Benedicto Mugongo', 3, 'Tandika', '255764242496', '0764242496', 'mpabansigrace@gmaili.com', NULL, 'mshirika', '$2y$12$cHzsovA99/zZKcT9bfq28ugUTC/3F0YRBPzC5f7oN/Eir3ehnepWu', NULL, '2026-03-11 23:07:20', '2026-03-12 08:50:41'),
(179, 'Irene Herieli Mgonja', 'F', '2000-10-14', 'Manyara- Mbulu', NULL, 'Hajaolewa', NULL, 0, 'Kongowe', '255746881275', '0746881275', 'irenehmgonja@gmail.com', NULL, 'mshirika', '$2y$12$N34YOSvnwb.YouLpdf7WHOkiacbO3WCUSjBRk.0Y6NSJ7pnGo4tWa', NULL, '2026-03-11 23:32:11', '2026-03-12 08:53:50'),
(180, 'Peres yohana  fransisco', 'F', '2003-03-08', 'Kagera', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255776011863', '0776011863', 'peresyohana01@gmail.com', NULL, 'mshirika', '$2y$12$09izFBuYC5X1XiHpidzIAucNey8LncFBfeNjYJBCRsN3HlcgTNf1q', NULL, '2026-03-11 23:54:02', '2026-03-12 08:53:59'),
(181, 'Teresia Andrew Mwakalebela', 'F', '1995-01-10', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255753078654', '0753078654', 'teresiamwakalebela@gmail.com', NULL, 'mshirika', '$2y$12$DDzQ.sP3Jn4B9U1zTPTRyOeIjD2mwYdumxK17IXNbX782Hw7AYVdm', NULL, '2026-03-12 00:53:58', '2026-03-12 08:51:30'),
(182, 'Isaaya Bahati', 'M', '2001-07-21', 'mbogwe _ geita', NULL, 'Ameoa', 'EDITHA PEUSON NDISA', 1, 'Mtongani', '255767936778', '0688001946', 'isaayabahati@gmail.com', NULL, 'mshirika', '$2y$12$jRhs/0h3Bu/bv0H4FyDmme0BiprzOopT5/4U5siLgWzqYx1E4Y9wC', NULL, '2026-03-12 07:24:35', '2026-03-12 08:53:12'),
(183, 'Natalia S Pambe', 'F', '2002-04-20', 'Shinyanga', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255658226389', '0658226389', 'shijajoviana21@gmail.com', NULL, 'mshirika', '$2y$12$.ylA4bfYGan.GLy3tp.q6.xoOhgk3d2PsUr3lp6TowoYbB6sTauQW', NULL, '2026-03-12 09:56:29', '2026-03-12 12:38:11'),
(184, 'Amani Chongela Muhono', 'M', '1987-04-04', 'Katavi', NULL, 'Ameoa', 'Fainess Japhet', 2, 'Kigamboni', '255657299836', '0657299836', 'Chongela74@gmail.com', NULL, 'mshirika', '$2y$12$NC/ld4IHmnM362HxzX3Kk.Gbd9NIA/2g9t0QdX.OHcDc3qin4Mlqy', NULL, '2026-03-12 14:48:49', '2026-03-12 18:14:45'),
(185, 'Vanessa Fadhila', 'F', '1988-05-01', 'Morogoro Manispaa', NULL, 'Ameolewa', 'Sadiki Mohamed Nassoro', 3, 'Kigamboni', '255656663761', '0656663761', 'vanessafadhila24@gmail.com', NULL, 'mshirika', '$2y$12$JgNULsjkFkNFTqpivB4LguIHFgAzuIhLjCqufjbMg/gyaN5DaPe8W', NULL, '2026-03-12 16:22:21', '2026-03-12 18:11:24'),
(186, 'Vaileth Shukrani Saimon', 'F', '2002-04-24', 'Kigoma wilaya ya kasulu', NULL, 'Ameolewa', 'Eliah samson', 1, 'Yerusalem', '255622324585', '0622324585', 'vailethshukran50@gimail.com', NULL, 'mshirika', '$2y$12$N1Wpl0xA8VQxQK5ucVwqU.wHfDti2Xf0odcPm0/6pxd6tLxgj9SKu', NULL, '2026-03-12 19:09:28', '2026-03-13 14:04:35'),
(187, 'Abigail Suleiman Mathew', 'F', '2004-08-12', 'Dar es salaam, Temeke', NULL, 'Hajaolewa', NULL, 0, 'Mgeninani', '255699650632', NULL, 'abigailmathew34@gmail.com', NULL, 'mshirika', '$2y$12$clchVmUdlcZvQzNx29PgCeLm5g8dcVr0jMB2/qL7jOL72oy3qgK0K', NULL, '2026-03-13 15:03:25', '2026-03-13 15:08:22'),
(188, 'AYUBU SELEMANI CHIZA', 'M', '1997-10-01', 'KIGOMA/KIGOMA', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255769146998', '0769146998', 'ayubuchiza107@gmail.com', NULL, 'mshirika', '$2y$12$SzHXflhTYgSTQ1DGbE5hJuXPKGbasn37Ad0tYcR6QL2OzAqwHNqxS', NULL, '2026-03-15 07:15:28', '2026-03-15 22:54:01'),
(189, 'Naftari Jeremia Musebei', 'M', '1980-12-20', 'Kigoma', NULL, 'Ameoa', 'Efrazia Ezekiel', 4, 'Keko & Kurasini', '255755207108', '0755207108', 'Naftarijeremia@gmail.com', NULL, 'mshirika', '$2y$12$3x2PTRrl3JEgXgChBcflrOFpi7r8NZK6Wkrc19b1TAFcDllh60Puy', NULL, '2026-03-15 10:25:46', '2026-03-15 22:51:47'),
(190, 'Isaya Isack Amos', 'M', '1991-02-12', 'Uvinza Kigoma', NULL, 'Ameoa', 'Isaya', 1, 'Kizuiani', '255656113382', '0656113382', 'IsayaIsack4455@gmail.com', NULL, 'mshirika', '$2y$12$sUeKknXvXFiIiBhveexTWOs.dfN0QBIhhJeVADrThLAW6ADUzdZ8q', NULL, '2026-03-15 10:58:04', '2026-03-15 22:51:23'),
(191, 'Prisca Simon Nyamhinda', 'F', '1997-07-13', 'Mara', NULL, 'Ameolewa', 'Onesmo I. Ayoub', 2, 'Tandika', '255747156221', '0747156221', 'Priscasimon07@gmail.com', NULL, 'mshirika', '$2y$12$24vKx/xSRAvlvkXlEJ0KhuSYcgWUGT9DRm38pGJUrTFDarIxcG27e', NULL, '2026-03-15 12:12:06', '2026-03-16 21:03:09'),
(192, 'ELIAS ELIAS SEKA', 'M', '1993-02-23', 'TABORA', NULL, 'Hajaoa', NULL, 0, 'Kinondoni', '255763448404', '0763448404', 'eliasseka@gmail.com', NULL, 'mshirika', '$2y$12$HatcL1pXhchNi1PdqmhbseSOrvmen8e1drXPFlWzgqGLm54ZEGld2', NULL, '2026-03-15 14:46:09', '2026-03-17 07:12:01'),
(193, 'Raphael John mbuji', 'M', '1985-06-12', 'Korogwe/Tanga', NULL, 'Ameoa', 'Janet', 2, 'Kizuiani', '255714500276', '0714500276', 'raphaelmbuji3@gmail.com', NULL, 'mshirika', '$2y$12$zBDBshnaev1HryB7zlrvKelr/9ypnkfFGzs0wWxkb6RO1VVZu.cTW', NULL, '2026-03-15 17:29:38', '2026-03-15 22:53:02');
INSERT INTO `users` (`id`, `full_name`, `gender`, `birth_date`, `birth_place`, `birth_district`, `marital_status`, `spouse_name`, `children_count`, `zone`, `phone`, `whatsapp_number`, `email`, `role_id`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(194, 'Janeth Fanuel Mbugha', 'F', '1996-08-24', 'Singida vijijini /Singida', NULL, 'Ameolewa', 'RAPHAEL JOHN MBUJI', 2, 'Kizuiani', '255676686400', '0676686400', 'janethfanuel3@gmail.com', NULL, 'mshirika', '$2y$12$MKNgQJA96nE6H//SoonXjelrPa.adhvmlVKi/daqlPypLfsF6897W', NULL, '2026-03-15 18:40:31', '2026-03-15 22:53:15'),
(195, 'AMINA JUMANNE DANIEL', 'F', '2004-08-23', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255679309107', '0679309107', 'aminadaniel346@gmail.com', NULL, 'mshirika', '$2y$12$RQmCBqfaoc6a3idjC43TOuH0lO.Ds9OQ8cFywurBsEWEv1Kw/orsm', NULL, '2026-03-16 20:13:09', '2026-03-16 21:03:27'),
(196, 'BENEDICTO SADOCK NTIGAHELA', 'M', '1991-11-18', 'Uvinza - Kigoma', NULL, 'Hajaoa', NULL, 1, 'Mbande', '255719712078', '0719712078', 'kelvinsadock990@gmail.com', NULL, 'mshirika', '$2y$12$g0NEntkxRKBpnR2fkbhK9u7.MBVy89LKhcM3QHwPQfGFg6CX3OXfa', NULL, '2026-03-17 02:31:25', '2026-03-17 11:31:59'),
(197, 'Tegemea Ezekiel Bitana', 'M', '1984-09-03', 'Kigoma', NULL, 'Ameoa', 'Niela Frank Mahuba', 3, 'Kizuiani', '255763423432', '0653980926', 'tegemeabitana15@gmail.com', NULL, 'mshirika', '$2y$12$GjPeELCMPDl2r0y4upzuX.FfLNeGco6KR9BDcldhp3egQIjmD8K52', NULL, '2026-03-17 17:32:25', '2026-03-17 20:16:19'),
(198, 'Catherine Ulombo Kalibuha', 'F', '1960-11-29', 'Tanga', NULL, 'Mjane', NULL, 3, 'Kijichi', '255715787036', '0715787036', 'catherinekalibuha@gmail.com', NULL, 'mshirika', '$2y$12$HnjrpuwlGGYMy95pxYn5mOrVC2lzh7uKJhJYr74RdYj468kTacQLu', NULL, '2026-03-17 20:05:43', '2026-03-17 20:18:54'),
(199, 'Godfrey Mtamba', 'M', '1993-11-09', 'Kinondoni Dsm', NULL, 'Ameoa', 'Sarah Samweli Ntandu', 1, 'Yerusalem', '255714272737', '0714272737', 'godfreymtamba7@gmail.com', NULL, 'mshirika', '$2y$12$GTYwECB97aPK5DIUGz2x4e3/nExBwRXtwl8Zhj73yq/KG4YZelj7m', NULL, '2026-03-17 21:50:40', '2026-03-18 00:50:58'),
(200, 'PAULINA CARLOS', 'F', '2000-04-17', 'KINONDONI', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255766593280', '0766593280', 'paulinagicaro@gmail.com', NULL, 'mshirika', '$2y$12$xW1omGzaKlAsFBs581vMf.oXyZ9RAtZSQpzvCfKOAPgMteeUkKjie', NULL, '2026-03-18 00:47:49', '2026-03-18 00:57:02'),
(201, 'Erasto Richard mlawa', 'M', '1990-06-19', 'Tanga', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255764804205', '0764804205', 'erastomlawa90@gmail.com', NULL, 'mshirika', '$2y$12$08QRN0IwJWq9NMKtTcdvIOav/EIFLhaAv1LFNIr/3iTcCemKQdZV6', NULL, '2026-03-18 01:05:10', '2026-03-18 12:52:54'),
(202, 'Elisha Makiya', 'M', '1986-04-26', 'Simiyu, Bariadi', NULL, 'Ameoa', 'Theresia Kindole', 0, 'Mgeninani', '255654468382', '0654468382', 'makiyaelisha@gmail.com', NULL, 'mshirika', '$2y$12$GjGMKZYyDu/uSMQtfystveFTeZhdNvAYdOoMrMUwE03hS1jKJmg.S', NULL, '2026-03-18 09:37:38', '2026-03-18 12:28:06'),
(203, 'Loveness l Mollel', 'F', '1988-03-25', 'Manyara', NULL, 'Ameolewa', 'Isaya Raphael', 3, 'Kigamboni', '255782941414', '0782941414', 'kwelilove@gmail.com', NULL, 'mshirika', '$2y$12$Ym19GeVWscdRV0QHDENECeFMI9eKg2uY4F/LP0WZLG/LMc2cFpfve', NULL, '2026-03-18 09:50:18', '2026-03-18 12:29:48'),
(204, 'MOSES SAMSON MWAKISISILE', 'M', '2000-10-20', 'Kyela/Mbeya', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255762758467', '0762758467', 'remmoriss19@gmail.com', NULL, 'mshirika', '$2y$12$2/xKhpmTaUxdCJx1mu6FV.4lIEc1KCN/tb2mHrsQJMSYsYM/Paile', NULL, '2026-03-18 10:29:33', '2026-03-22 10:30:27'),
(205, 'Frank Oliver Kakole', 'M', '1999-07-31', 'Nachingwea', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255625672476', '0625672476', 'kakolefrank@gmail.com', NULL, 'mshirika', '$2y$12$qR9XhmNRPDi9hDu/q7WgTuF22S73KaCF1qgsPTN/.Oc6xRUQO0Y0W', NULL, '2026-03-18 10:48:33', '2026-03-18 12:28:26'),
(206, 'Franco kihongosi', 'M', '1986-02-18', 'Iringa', NULL, 'Ameoa', 'Veronica Kindole', 3, 'Kinondoni', '255659953557', '0752995080', 'kihongosifranco@yahoo.com', NULL, 'mshirika', '$2y$12$.RifxuT2sSIjZqEtWXN8G.7Dd02CRTToZb2BoxvsO2uSUQwd0waY.', NULL, '2026-03-18 10:50:26', '2026-03-18 12:28:41'),
(207, 'TEDDY BENARD LAWRENT', 'F', '2003-09-25', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255767337855', '0767337855', 'benardteddy98@gmail.com', NULL, 'mshirika', '$2y$12$mCf2Tih.WtcYbX/Bk7xH8.snNL6WEvNr6cfvLqUg8TwmeJ1W0v.Iq', NULL, '2026-03-18 10:59:43', '2026-03-18 12:55:39'),
(208, 'Daniel Zakaria Elisha', 'M', '2026-10-24', 'Wilaya ya baridi Mkoani Simiyu', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255767381687', '0767381687', 'danielelisha2410@gmail.com', NULL, 'mshirika', '$2y$12$AGrCtG6JcyA6b/PqYV8nzuosugXMPc/K1VjYbxNYLI.990mJ0V64K', NULL, '2026-03-18 12:52:45', '2026-03-22 10:30:53'),
(209, 'Rollin salum mkali', 'F', '1994-02-22', 'Kinondoni dar es salaam', NULL, 'Hajaoa', NULL, 1, 'Kongowe', '255679766245', '0742666225', 'waridimkali@gmail.com', NULL, 'mshirika', '$2y$12$ToC2SRpLkyzpQhOggXOsbefHGF2/d8AZl5Km3nUhCnFnFSiWksyTm', NULL, '2026-03-18 13:01:10', '2026-03-18 13:47:33'),
(210, 'Abigael Claudian', 'F', '1993-07-29', 'Bunda Mara', NULL, 'Ameolewa', 'Claudian Tembe Guguye', 1, 'Yerusalem', '255753667035', '0753667035', 'abigaelclaudian@gmail.com', NULL, NULL, '$2y$12$jmrx6yYYBBo5ghhxpJZmUOXXlAMfqHw.0qGJmb.LerJuA/hvgFqTu', NULL, '2026-03-18 15:19:52', '2026-03-18 15:19:52'),
(211, 'Elia Yohana Ghambuna', 'M', '1992-02-22', 'Singida, Singida vijijini', NULL, 'Mgane', NULL, 0, 'Yerusalem', '255768491664', '0787133451', 'eliaghambuna@gmail.com', NULL, 'mshirika', '$2y$12$JXQx6tCITgUNLqnWA8Bm7eexyUh8KUeGK4LKZCM2.jTJgrXefjh1u', NULL, '2026-03-18 16:41:40', '2026-03-18 21:47:53'),
(212, 'Kayaga luchagula Ngeleja', 'M', '1995-10-21', 'Mwanza', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255745332312', '0745332312', 'Kluchagula@gmail.com', NULL, 'mshirika', '$2y$12$YV9WazxmkqDjp4nhgud70OfOzowjDNO8S45tPHRzaNFefZo.mtatC', NULL, '2026-03-18 18:00:18', '2026-03-18 21:47:56'),
(213, 'Elizabeth Mkama', 'F', '1989-10-17', 'Mara', NULL, 'Ameolewa', 'Suleimani daud', 0, 'Yerusalem', '255659564354', '0659564354', 'mkamaelizabeth05@gmail.com', NULL, 'mshirika', '$2y$12$/MAn0oIyRyjGuzjHh.aNAedkDAgsBvVTnJI5KU7OrCfjl47ha.QFK', NULL, '2026-03-18 18:22:07', '2026-03-18 21:48:01'),
(214, 'Mathias Meshack Mathias', 'M', '2004-01-31', 'Geita', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255680852054', '0680852054', 'mathiasmeshack52@gmail.com', NULL, 'mshirika', '$2y$12$qVXb5gcZqmtsjJsaJxwNVuFmnc0e6MZ1u4MKx/dm1BMdrsS5y5rUC', NULL, '2026-03-18 19:06:08', '2026-03-22 10:57:36'),
(215, 'Pendo jacksoni ilanda', 'F', '1988-11-01', 'Singida', NULL, 'Hajaolewa', NULL, 3, 'Mgeninani', '255684108225', NULL, 'pendoilanda394@gmail.com', NULL, 'mshirika', '$2y$12$NxRGD6xljo81PMk9qtGFVulmXQADWkiOW/lFxQ/2VjVy632VKnUEi', NULL, '2026-03-18 21:02:51', '2026-03-18 21:48:10'),
(216, 'Falesi. Elimeriki.  Rudadi', 'M', '1979-07-25', 'Kigoma', NULL, 'Ameoa', 'Winifrida. Danieli.  Kambati', 0, 'Yerusalem', '255696972204', '0696972204', 'falexrudadi@gmail.com', NULL, 'mshirika', '$2y$12$4Sk3x.3NK3rxMK1dXkuqjuJtYa46flOVQK2d3X3j.ybAtx0EaZy.O', NULL, '2026-03-18 21:02:54', '2026-03-18 21:48:16'),
(217, 'Clara Benard Nyungura', 'F', '1980-07-25', 'Kibondo/Kigoma', NULL, 'Ameolewa', 'Yahaya Jumanne Kisena', 2, 'Kigamboni', '255652722019', '0652722019', 'nyungurachausiku85@gmail', NULL, 'mshirika', '$2y$12$1UG2QOoDF/sBNJzRAadj5uoWQBZjpCbWPByt0Bx9dbs70oN0uR8DO', NULL, '2026-03-18 23:00:11', '2026-03-19 19:57:03'),
(218, 'Donatus Mlawa', 'M', '2003-08-06', 'IRINGA VIJIJI', NULL, 'Hajaoa', NULL, 0, 'Kingugi', '255770722997', '0770722997', 'mlawadonatus@gmail.com', NULL, 'mshirika', '$2y$12$9rjtJ4Bvvj4Ua9fDUGSuseV6bTgA5H.tRlgumM5QgI7JHroUwx6vu', NULL, '2026-03-18 23:52:24', '2026-03-19 19:56:41'),
(219, 'Nesta Jasson', 'F', '2002-03-09', 'Kagera', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255769116075', NULL, 'M@yahoo.com', NULL, 'mshirika', '$2y$12$CBF60nfmKHjS5ZzAskMmbOh.4xCYdoKRcYngPjwEdYcZbKC63O3Iy', NULL, '2026-03-19 10:34:38', '2026-03-19 15:35:50'),
(220, 'Mollen Charles Bwagalilo', 'F', '1989-11-23', 'Temeke', NULL, 'Ameolewa', 'Faraja Alfayo Kataze', 3, 'Kigamboni', '255746670969', '0746670969', 'mollenbwagalilo@gmail.com', NULL, 'mshirika', '$2y$12$w2wMk3mUc6pkUaJRRpIzceZ2mvO53H.Gu.GOLiYbraXK3y./iZrg6', NULL, '2026-03-19 14:52:37', '2026-03-19 19:57:27'),
(221, 'Losenius E Paul', 'M', '1982-03-22', 'Kagera', NULL, 'Ameoa', 'Eliam G. Kabende', 1, 'Kijichi', '255757906993', '0757906993', 'blperasto@gmail.com', NULL, 'mshirika', '$2y$12$Ero5FciP7skrxfpw.w6zLeXFsfoJA7U30zAV8xf.XBxQ.jNRw5wau', NULL, '2026-03-19 15:33:27', '2026-03-22 08:51:42'),
(222, 'SABURI EDMON KATWIKILO', 'F', '2003-03-10', 'KIGOMA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255616651436', '0683125875', 'saburiedmon@gmail.com', NULL, 'mshirika', '$2y$12$QvOnbUJ2zj/JCbysHGh2AeXN3TEdyD8O6zMmOHyRICuzbpAcVh8ua', NULL, '2026-03-19 19:27:52', '2026-03-19 20:48:49'),
(223, 'Josephine Yotham', 'F', '2003-06-18', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255740189965', NULL, 'josephinayotham95@gmail.com', NULL, 'mshirika', '$2y$12$jPaitLnXyJB126xBDyuCNOJukBbgsswPyZUZyFyGYAXgSM9zOQXxO', NULL, '2026-03-19 20:06:12', '2026-03-19 20:47:49'),
(224, 'Jusilini Stefano', 'F', '1976-01-07', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255714261485', NULL, 'jusilinestefano12@gmail.com', NULL, 'mshirika', '$2y$12$JtBN2BPV9CdWYdX2UNFn0.HSQIFwNZEYYmAdmRxW8.d7VWH0f7mui', NULL, '2026-03-19 20:17:01', '2026-03-19 20:48:29'),
(225, 'Prisila Yotham', 'F', '2005-03-27', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255682390386', NULL, 'prisilayotham27@gmail.com', NULL, 'mshirika', '$2y$12$Y1uHTZDJacy2RGJEX/e7tOvhGa/nOzuSETyfyVCy13Xw3WQe2NsSy', NULL, '2026-03-19 20:32:51', '2026-03-19 20:47:57'),
(226, 'Imani Ezekiel Bitana', 'F', '1976-04-11', 'Kigoma', NULL, 'Ameolewa', 'Phidel Seleman', 3, 'Mbande', '255714117667', '0714117667', 'imaniphidel01@gmail.com', NULL, 'mshirika', '$2y$12$TjTe4DV9AhD0HEry8075IuIl.ZWhu98bsc3MHwDxicf8zioPiOuwC', NULL, '2026-03-19 20:35:24', '2026-03-19 20:48:12'),
(227, 'Vumilia Jackson', 'F', '1984-06-06', 'Kigoma', NULL, 'Ameolewa', 'Osward Kazaniye', 4, 'Kongowe', '255756432761', NULL, 'jacksonvumilia888@gmail.com', NULL, 'mshirika', '$2y$12$8yyQGDI4O3infWtBqnMFReHSy.SC0lJZ1NC5mlNltHaoIW0j82/Ry', NULL, '2026-03-19 20:44:01', '2026-03-19 20:48:17'),
(228, 'Hagai Jeremia', 'M', '2000-10-28', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Mbande', '255764197657', '0764197657', 'hagaijeremia7@gmail.com', NULL, 'mshirika', '$2y$12$wjLg1MZQqfDdX5kedplFbuWJtv0oGkuXM17Spo/1Uvo9/4Du1TWwG', NULL, '2026-03-19 20:44:41', '2026-03-19 20:48:20'),
(229, 'Rose Wilisoni', 'F', '1996-06-23', 'DODOMA', NULL, 'Ameolewa', 'RAMSON IBRAHIM', 1, 'Kizuiani', '255683826003', NULL, 'rosewilisoni082@gmail.com', NULL, 'mshirika', '$2y$12$ISEoCdi9/BwfJUTitcnW6elbi8y4gKDnRc.DbsQ8Lg6uXFAxn2YE.', NULL, '2026-03-19 20:50:35', '2026-03-19 21:02:54'),
(230, 'Neema Lameck', 'F', '2007-12-15', 'Dar es salaam', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255687506375', NULL, 'nercyzabron256@gmail.com', NULL, 'mshirika', '$2y$12$XrwKf2bG96ILaf9wbAnOeufcFeq4DEpbHJPsBVfiH5R9Sqyqs.Dye', NULL, '2026-03-19 20:52:27', '2026-03-19 21:03:26'),
(231, 'David Emmanuel Gervas', 'M', '1998-08-01', 'Tabora', NULL, 'Ameoa', 'Neema samwely Buzinza', 1, 'Mgeninani', '255688918874', '0688918874', 'de865202@gmail.com', NULL, 'mshirika', '$2y$12$6yr87fFsDXmO3JFXIx65Xe9xEtQC2hksKXDimDEDsBuQueMrMNam2', NULL, '2026-03-20 15:36:44', '2026-03-22 10:28:16'),
(232, 'EMILE SAMSON', 'M', '1997-03-19', 'SINGIDA MJINI', NULL, 'Hajaoa', NULL, 0, 'Kigamboni', '255787274306', '0787274306', 'emisamsahinga19@gmail.com', NULL, NULL, '$2y$12$.AYjbWZTLALfWuwLItg/y.lXRXJW61Jxh8VCV4sxXXMtiTvffc53K', NULL, '2026-03-21 18:30:42', '2026-03-21 18:30:42'),
(233, 'Faustn John kiyogoma', 'M', '1980-02-29', 'Shinyanga', NULL, 'Ameoa', 'Cathelen Muhamedi', 3, 'Mgeninani', '255755904827', '0755904827', 'fastinikiyogima@gmail.com', NULL, 'mshirika', '$2y$12$zjYQ0gqvPJFgGM3YMCdxnekJ90lp8awU/xaFwixexp1IDws8G3nMC', NULL, '2026-03-21 21:59:24', '2026-03-22 10:28:36'),
(235, 'Marry Samwel', 'F', '2005-10-09', 'Singida', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255756829817', '0756829817', 'marryntandu8@gmail.com', NULL, 'mshirika', '$2y$12$DyyhOhwPlGwLvO/RBMk83uhqr.zFDMWiynsKjmouT.7rqkrD7SOz.', NULL, '2026-03-22 09:05:23', '2026-03-22 10:28:41'),
(236, 'Severina Aloyce Nyema', 'F', '1999-03-03', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Tandika', '255783055513', '0783055513', 'kanisasoft1@gmail.com', NULL, 'mshirika', '$2y$12$xuR.pz7NQ8ik6Z4JusjOKuVUycppx7ohziYjFy2knTTXSt91k5rLy', NULL, '2026-03-22 09:39:49', '2026-03-22 10:28:48'),
(237, 'Lilian robert lucas', 'F', '2003-10-23', 'Nyamagana', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255624754468', '0624754468', 'Viver255@icloud.com', NULL, NULL, '$2y$12$lazILq/ttLSG.XasZKFwCeXD652ofRdpNoC1EDCuOd2QhqxXwKIAy', NULL, '2026-03-22 09:43:22', '2026-03-22 09:43:22'),
(238, 'Happy maiko mwanza', 'F', '2026-03-02', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255658798394', '0612603167', 'Mwanzahappy847@gmail.com', NULL, NULL, '$2y$12$ekB3BuHFPX8hO3a1R8R/T.W4WFcDNZWXYFxoZdrkCbUDJ17JWGxNm', NULL, '2026-03-22 09:54:15', '2026-03-22 09:54:15'),
(239, 'Tarajien lenad longo', 'F', '1999-10-14', 'Iringa', NULL, 'Hajaolewa', NULL, 1, 'Yerusalem', '255621342797', '0621342797', 'lonkjen@gmail.com', NULL, NULL, '$2y$12$8VR6HXQF65Yv8QjLOvsC3.GaY2ANuBloH.pK5n9HXtNJcS2qGbhJC', NULL, '2026-03-22 09:58:53', '2026-03-22 09:58:53'),
(240, 'Yohana Sambai Mwandu', 'M', '1978-11-22', 'Shinyanga', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255654662671', '0654662671', 'Kanisasoft2@gmail.com', NULL, 'mshirika', '$2y$12$cAZxdeibL5nas66YvuyiYeVrNF1oq5hRmtAz5.X3HVAebMm/lVgHG', NULL, '2026-03-22 09:59:09', '2026-03-22 11:05:58'),
(241, 'Elisha', 'M', '1999-06-14', 'Babati manyara', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255744148450', NULL, 'simonelisha382@gmail.com', NULL, NULL, '$2y$12$P87tcz.PkR51ItFqvuU.5u6ZopcrIGY/uk/HgC0ZEZz6XAt.Rnv4i', NULL, '2026-03-22 10:02:46', '2026-03-22 10:02:46'),
(242, 'Janet Lewis Chisi', 'F', '1982-09-27', 'Mfulila', NULL, 'Ameolewa', 'Oscar kindole', 5, 'Kongowe', '255684840485', '0684840485', 'janetkindole1980@gmail.com', NULL, 'mshirika', '$2y$12$EbJ6r3Ljzoy5psTM8WG5LOmuWKC.csdOyMRwgVsyXunbsKLAVyhXO', NULL, '2026-03-22 10:05:39', '2026-03-22 10:07:24'),
(243, 'Mosses Shuma', 'M', '2003-05-13', 'Temeke, Dar es salaam,', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255621517151', '0621517151', 'mucktadirshuma@gmail.com', NULL, 'mshirika', '$2y$12$z33prXo0o6ZzZ403fSm1juCNg.l2raGx9Kdlhz/JCG9RAwWivcNn2', NULL, '2026-03-22 10:14:16', '2026-03-22 10:29:08'),
(244, 'SIMON T ERICK', 'M', '2001-02-12', 'SONGWE', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255769037688', '0769037688', 'simonerick131@gmail.com', NULL, 'mshirika', '$2y$12$8taQD3JSId1GyYjfrrfS9eOFKVxJt4tpjT0QqFrDvbCbfInTE4aae', NULL, '2026-03-22 10:18:17', '2026-03-22 11:11:15'),
(245, 'Philimon Dastani Mhala', 'M', '1991-07-27', 'Kigoma', NULL, 'Ameoa', 'Lucy Dastan', 2, 'Kingugi', '255673131583', '0715442542', 'dastanphilimon59@gmail.com', NULL, 'mshirika', '$2y$12$HSArKtYgbtqwcyktPgsBZOLALl7N55bfGkIuDvuIy0IioHV.iVPeW', NULL, '2026-03-22 10:21:57', '2026-03-22 10:29:19'),
(246, 'Agnes E. Ndumbaro', 'F', '1994-12-18', 'Temeke Dar es Salaam', NULL, 'Hajaolewa', NULL, 0, 'Kigamboni', '255714106687', '0714106687', 'aggieerasto@gmail.com', NULL, 'mshirika', '$2y$12$pss0bIFEFGiZ0xaZeSOB.uU0PCGr2vXkCVRxSDLHMhtXmSDY9YTTO', NULL, '2026-03-22 10:26:23', '2026-03-22 10:29:24'),
(247, 'Dominick  Daniel', 'M', '2002-06-05', 'Buhigwe  kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255734578470', '0734578470', 'domickdaniel05@gmail.com', NULL, 'mshirika', '$2y$12$PwwMDchJ.WX5/2kJBQ8oweESnWU2gbNur4mEA.bJDxKuZJlNU9BiK', NULL, '2026-03-22 10:34:42', '2026-03-24 12:18:06'),
(248, 'PETRONILA ALOYCE MMANGA', 'F', '2004-07-24', 'Ilala, Dar es Salaam', NULL, 'Hajaolewa', NULL, 1, 'Kizuiani', '255664529151', NULL, 'kanisasoft3@gmai.com', NULL, 'mshirika', '$2y$12$eY5ksI6zBb0gzSg0uYVqi.NQSyJrnvLwc1Jhz1YIrs9bc3J9VwZMK', NULL, '2026-03-22 10:43:21', '2026-03-22 10:48:02'),
(249, 'Aneth Lukas', 'F', '1980-06-07', 'Kigoma -Kasulu', NULL, 'Ameolewa', 'Amelek Philimon', 6, 'Kijichi', '255757861300', '0754939470', 'kanisasoft4@gmail.com', NULL, 'mshirika', '$2y$12$nmoOCQ7UM3h.BNvrVbcL5.OQnS1hOWCjbPoNthwE8i/9XdKUYdFQ.', NULL, '2026-03-22 10:46:51', '2026-03-22 10:48:09'),
(250, 'TITO SAIMON NJOKA', 'M', '2000-12-06', 'SINGIDA', NULL, 'Hajaoa', NULL, 0, 'Keko & Kurasini', '255758979191', '0758979191', 'njoccatittus@gmail.com', NULL, NULL, '$2y$12$UGl1OYAU.50D5oI04kJeZuMxiI.5T41H93WFQmiW6dy9hlXgvdr6m', NULL, '2026-03-22 10:54:20', '2026-03-22 10:54:20'),
(251, 'Bestina Paul Lwanji', 'F', '1958-06-16', 'Singida', NULL, 'Mjane', NULL, 5, 'Kongowe', '255756932522', '0756932522', 'kanisasoft@gmail.com', NULL, 'mshirika', '$2y$12$iLbZYfey2oU4L2T7hTV3bOrvxvbKggZ8kJMAKQxgVevue5zrj8wqC', NULL, '2026-03-22 12:19:58', '2026-03-22 15:21:52'),
(252, 'Miriam Emmanuel kitima', 'F', '2003-04-04', 'Singida', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255754779172', '0754779172', 'wwmiriamemmanuel@gmail.com', NULL, 'mshirika', '$2y$12$g6p5WsZCO.g5ephBwgfuledZFsfcquGfn2dX/KHFqKKMsuoFsrFjK', NULL, '2026-03-22 12:20:52', '2026-03-22 15:21:45'),
(253, 'Uenic Samweli Mazengo', 'F', '1980-12-30', 'Tabora', NULL, 'Ameolewa', 'Charles Christopher', 4, 'Mtongani', '255689221254', '0689221254', 'kanisasoft5@gmail.com', NULL, 'mshirika', '$2y$12$pyvzpk6cRODQNbueBeWGUepDFE6M7zQMZlRFtCq2V2qgIstRlcT3u', NULL, '2026-03-22 12:29:45', '2026-03-22 15:55:49'),
(254, 'Eflazia Ezekiel', 'F', '1988-07-01', 'Kigoma', NULL, 'Ameolewa', 'Naftari Jeremia', 4, 'Keko & Kurasini', '255675081303', '0714206730', 'kanisasoft9@gmail.com', NULL, 'mshirika', '$2y$12$F1tYDy453eSmV5OC8GHDieslRPTq3u034DpHixdeGt4ypvi7H1Z5a', NULL, '2026-03-22 12:41:41', '2026-03-22 15:59:10'),
(255, 'Seth', 'M', '1999-03-22', 'kagera', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255772250870', '0772250870', 'setnicodemas@gmail.Com', NULL, NULL, '$2y$12$9eDA/JAuOUpHPv3zsCGtFuLdqtpRpTVrzDBKfkVUk4z/NTan4RfRG', NULL, '2026-03-22 12:44:32', '2026-03-22 12:44:32'),
(256, 'Glory Onesimo Mtata', 'F', '2004-02-16', 'Dodoma', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255755689908', '0755689908', 'kanisasoft6@gmail.com', NULL, NULL, '$2y$12$HzV25yerPpkEuUtZsrNfs.a/V.IcUArLJxXFsAXC1vyP6VrkOa6XS', NULL, '2026-03-22 12:45:16', '2026-03-22 12:45:16'),
(257, 'Claudi Amos Lipumba', 'M', '1985-01-01', 'Kigoma', NULL, 'Ameoa', 'Delfine Yamungu', 7, 'Mtongani', '255765849773', '0766849773', 'kanisasoft7@gmail.com', NULL, NULL, '$2y$12$nnYL6ZxFSjQpogtiEREB4.TdLfx8sG8q1smPNbEzrCxfqAgCrGOGe', NULL, '2026-03-22 12:46:45', '2026-03-22 12:46:45'),
(258, 'Jovini Berson Peche', 'M', '1993-05-04', 'Kigoma', NULL, 'Ameoa', 'Naomi bendicto', 2, 'Yerusalem', '255746474020', '0755474025', 'kanisasoft13@gamil.com.k', NULL, 'mshirika', '$2y$12$BEv.9VXzslyeRQGM0DLmGeib2huwk6SaKSQXVKFEmOexGpJ3HO7pi', NULL, '2026-03-22 12:49:36', '2026-03-24 12:50:42'),
(259, 'David Frank Mpenda', 'M', '2005-03-25', 'Tabora', NULL, 'Hajaoa', NULL, 0, 'Tandika', '255789358676', NULL, 'kanisasoft11@gmail.com', NULL, 'mshirika', '$2y$12$Y0abOAL0pbTgWC94vXbE9e3JzeUTfBpZmauuFUwJD7z33UjvblwZi', NULL, '2026-03-22 12:51:45', '2026-03-22 15:50:50'),
(260, 'Hadija meshack jacksoni', 'F', '2000-02-01', 'Urambo wilaya kaliua mkoa tabora', NULL, 'Hajaolewa', NULL, 0, 'Kizuiani', '255690086665', '0690086665', 'kanisasoft8@gmail.comcom', NULL, 'mshirika', '$2y$12$8dtpH4yjRgyB4VBOoi4u3efiIXXx6MLHzVdMnSHZA6da6/ufUM1Ju', NULL, '2026-03-22 12:56:16', '2026-03-23 12:40:41'),
(261, 'Ibrahim Sylvester', 'M', '1990-01-03', 'Katavi', NULL, 'Ameoa', 'Rizik Ibrahim', 2, 'Yerusalem', '255753153821', '0753153821', 'iibrahimsylvester@gmail.com', NULL, 'mshirika', '$2y$12$gX00b2GgKSjmodz.rBoPie5uh7OrqvmqDRzuG5M5EtSnLvvGfiZ3O', NULL, '2026-03-22 12:57:13', '2026-03-23 19:18:06'),
(262, 'Samuely Paschal', 'M', '1998-04-04', 'TABORA/KALIUA', NULL, 'Ameoa', 'NEOSTA ERIAS', 1, 'Mtongani', '255650556599', '0626580858', 'samuelypaschal@gmail.com', NULL, 'mshirika', '$2y$12$1gRZqJ2YZbOp3/qC4zFACeEwwpWkZyR6JY9eWijd39PXUc7K.7IB2', NULL, '2026-03-22 13:00:44', '2026-03-22 16:06:57'),
(263, 'Naomi Benedicto', 'F', '2000-05-12', 'Kigoma', NULL, 'Ameolewa', 'Jovini Berson', 2, 'Keko & Kurasini', '255755474025', '0746474020', 'kanisasoft16@gamil.com', NULL, 'mshirika', '$2y$12$/9jAv..OztRTwp3S9lycueVO2wiIxBPOF3P/ysO6GpA62JfBYKBmC', NULL, '2026-03-22 13:02:58', '2026-03-24 13:06:48'),
(264, 'Katwale leonard matandiko', 'M', '2026-05-04', 'Chato', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255675771385', '0675771385', 'Katwale@gmail.com', NULL, NULL, '$2y$12$SfKYhPH2stH9Gs75kFxbH.9ux4cfQT4jy2Ndy0xQAEvIYOhQEmPny', NULL, '2026-03-22 13:04:07', '2026-03-22 13:04:07'),
(265, 'Ester Aman', 'F', '2008-08-14', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255680192736', '0680192736', 'kanisasoft18@gmail.com', NULL, 'mshirika', '$2y$12$lRYWlbR/oOUbXtFCZeJasOj/G2Ney1l9EYQ29.PNCtpWQiE.tJCT2', NULL, '2026-03-22 13:10:24', '2026-03-24 13:54:39'),
(266, 'Scholar amos mafuti', 'F', '2002-09-03', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255755960359', '0755960359', 'kanisasoft13@gmail.com', NULL, NULL, '$2y$12$2xsi451.RyuQuXlaecXl9O0/6OdBAwwXzrupCAhMNKIT3.l/2m9Ei', NULL, '2026-03-22 13:11:07', '2026-03-22 13:11:07'),
(267, 'Riziki Ibrahim Sylvester', 'F', '1990-01-03', 'Katavi', NULL, 'Ameolewa', 'Ibrahim Sylvester', 2, 'Yerusalem', '255754381974', NULL, 'kanisasoft19@gmail.com', NULL, 'mshirika', '$2y$12$mTFaUrob5uj/hX1Pn1W/gursS34mwsaq572JLVTAU/gSe7Ea8jgRq', NULL, '2026-03-22 13:12:05', '2026-03-23 19:20:06'),
(268, 'Fanuel Teras zirah', 'M', '1994-01-30', 'Tabora', NULL, 'Ameoa', 'Irene Abel', 0, 'Mtongani', '255663121229', '0784078799', 'fanuelzirah@gmail', NULL, 'mshirika', '$2y$12$reArI/rpMYO2voDJNH1sJOUG8XHE4PyOWK0fJUivf9Iz94Xt.03eW', NULL, '2026-03-22 13:14:31', '2026-03-24 13:18:48'),
(269, 'Neusta Elias Mathayo', 'F', '2003-07-01', 'Tabora', NULL, 'Ameolewa', 'Samweli Pascal', 1, 'Mtongani', '255616722162', NULL, 'kanisasoft17@gmail.com', NULL, 'mshirika', '$2y$12$cz4Do.iTWo.6UuWEHYX3QOuw6ZsSGV1uC.O4rxobK/q0fvVjdhztq', NULL, '2026-03-22 13:16:52', '2026-03-22 15:36:42'),
(270, 'RICHARD  SULEMAN PAUL', 'M', '2000-03-17', 'NSIMBO/KATAVI', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255621289924', '0621289924', 'richardpaul3691827@gmail.com', NULL, 'mshirika', '$2y$12$oSUub2N5s/JVBCRRwmvsguypSldHyPOZU23bKWLbD1CaTsCyRPgve', NULL, '2026-03-22 13:21:52', '2026-03-22 15:46:04'),
(271, 'Miriam Michael Yohana', 'F', '1997-07-07', 'Kigoma', NULL, 'Ameolewa', 'Samweli Gwau', 0, 'Kijichi', '255656375958', '0627824454', 'kanisasoft20@gamil.com', NULL, 'mshirika', '$2y$12$lWpwz7KiEwdnmdS4raiMyuzyl8g4Ipqh57SpAYtxW1VtOpJj7bSOm', NULL, '2026-03-22 13:25:16', '2026-03-23 19:23:21'),
(272, 'Emmanuel Samson Messo', 'M', '1996-03-11', 'Musoma', NULL, 'Ameoa', 'Regina chares', 1, 'Mtongani', '255742647178', '0742647178', 'emesso582@gmail.com', NULL, NULL, '$2y$12$xl3GKBDWR6kva65hp6VqHe9I4X7EGYoKcBkUHDEwbizAogp6StoRa', NULL, '2026-03-22 14:12:44', '2026-03-22 14:12:44'),
(273, 'Aloyce Jiles Joseph', 'M', '1998-02-26', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255686989156', '0686989156', 'aloycejiles79@gmail.com', NULL, 'mshirika', '$2y$12$X4tmyXmrInwS0EHgacy7d./rCSaU/aFlQbkLNCbBsROc2DXLmhw66', NULL, '2026-03-22 14:19:44', '2026-03-22 15:19:46'),
(274, 'MARTHA ADAM AMANI', 'F', '1998-12-08', 'KIGOMA', NULL, 'Ameolewa', 'MICHAEL ERASTO SIMON', 1, 'Kongowe', '255745805587', NULL, 'marthaadam700@gmail.com', NULL, 'mshirika', '$2y$12$Dv3vbUIFVj2dKYCwrtUypem7lbGo0HGUozH75gq1Nc8LBZAkSR5FS', NULL, '2026-03-22 14:51:53', '2026-03-24 13:29:29'),
(275, 'Olipa Yona', 'F', '2000-03-13', 'Kigoma', NULL, 'Ameolewa', 'Bilson Jonas', 2, 'Kizuiani', '255782720651', NULL, 'kanisasoft3@gmail.com', NULL, 'mshirika', '$2y$12$DVBXCOGriShPqX4v82QRE./d7jRxoUMch5JYsUV6CMjTt9ZE1xxZ2', NULL, '2026-03-22 15:10:28', '2026-03-24 13:12:21'),
(276, 'Beatrice Lameck Zabron', 'F', '1977-02-13', 'Kigoma', NULL, 'Mjane', NULL, 7, 'Mtongani', '255683634498', '0683634498', 'kanisasoft20@gmail.com', NULL, 'mshirika', '$2y$12$boSAe.vl5xIu5ws6JDcTXOViHodplaafNMrM2Xwnu.RRmnvzFHqU.', NULL, '2026-03-22 15:12:07', '2026-03-23 19:25:20'),
(277, 'EVA TITO', 'F', '1996-05-28', 'Temeke', NULL, 'Ameolewa', 'Samwel chacha', 2, 'Kijichi', '255620633842', '0620633842', 'evatito04@gmail.com', NULL, NULL, '$2y$12$WIrYwWthvuHqokNluymkQ.aDF/oIQTI7TFEvyfWLkmMGs.GeVvY3G', NULL, '2026-03-22 15:13:58', '2026-03-22 15:13:58'),
(278, 'Jacklina Jackson Sangiza', 'F', '2004-06-30', 'Morogoro', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255677828812', NULL, 'kanisasoft21@gmail.com', NULL, 'mshirika', '$2y$12$Qd7iF8Cj6XnMZe.AsmnALeuJPGCwWzZF9o9o2SyiVpUm5mcOuahdG', NULL, '2026-03-22 15:14:24', '2026-03-22 15:15:13'),
(279, 'Raphel Kanuti kunambi', 'M', '1989-04-28', 'Pwani', NULL, 'Ameoa', 'Pendo David', 1, 'Keko & Kurasini', '255783079925', '0783079925', 'Kanisasoft22@gmail.com', NULL, NULL, '$2y$12$hE3yf8VTIDAAvQeeRPVEHuFlMMlRBYMS842Ub1cUZXblgBrzmc4.q', NULL, '2026-03-22 15:21:46', '2026-03-22 15:21:46'),
(280, 'Joseph Prosper Basigwa', 'M', '2003-11-20', 'Temeke Dar es salaam', NULL, 'Hajaoa', NULL, 0, 'Kingugi', '255791340624', '0791340624', 'KanisaSoft7@gmal.com', NULL, 'mshirika', '$2y$12$P.lhUCjfni4hrbPGuTpEyuOCHOiQ3i9U14uUSSNMh53giBosliKrm', NULL, '2026-03-22 15:26:45', '2026-03-24 13:34:26'),
(281, 'Bilson Jonas Shamba', 'M', '1994-11-06', 'Kigoma', NULL, 'Ameoa', 'Olipa Yona', 2, 'Kizuiani', '255753081665', NULL, 'kanisasoft23@gmail.com', NULL, 'mshirika', '$2y$12$9ZWyq8beK9tlniqbukDG9..p08WjRatBtzhwS7o7q50T5BKHBB/A2', NULL, '2026-03-22 15:41:28', '2026-03-23 19:24:25'),
(282, 'Rahel Manase', 'F', '1998-11-05', 'Katavi', NULL, 'Ameolewa', 'Isaya Selesti', 2, 'Mbande', '255679994915', '0748235013', 'Kanisasoft24@gmail.com', NULL, 'mshirika', '$2y$12$HxyYZllhMNJKZwoBid/jJuLZXwNogonY8SB43tZxVg6Mcuf04UrTy', NULL, '2026-03-22 15:43:25', '2026-03-23 12:48:32'),
(283, 'Isaya Seleste', 'M', '1996-02-02', 'KATAVI', NULL, 'Ameoa', 'Rahel Manase', 2, 'Mbande', '255784235023', '0784235023', 'Kanisasoft25@gmail.com', NULL, 'mshirika', '$2y$12$pSLmxN12IyjfTVtB/1fZiepgwmdnYmApugp9NOfJci7gDWDJ7JCQC', NULL, '2026-03-22 16:04:18', '2026-03-23 12:41:29'),
(284, 'Daniel Jiles', 'M', '2004-02-07', 'Kigoma', NULL, 'Hajaoa', NULL, 0, 'Kizuiani', '255750309156', '0750309156', 'kanisasoft26@gmail.com', NULL, 'mshirika', '$2y$12$UDXvLvnKBm9xphT/Zk0QnuzZ.17OzcB4vbH41w.XzRXUO0sbeTnV.', NULL, '2026-03-22 16:06:38', '2026-03-23 19:26:10'),
(285, 'Stella Shertiely', 'F', '2006-04-21', 'Ilala', NULL, 'Hajaolewa', NULL, 0, 'Mtongani', '255719674044', '0719674044', 'stellashartiel@gmail.com', NULL, 'mshirika', '$2y$12$tM0yR.bRr0O52m9ZQcUKxuA9DmFnSKyC2wDza2nrQSmRy32SYm0kO', NULL, '2026-03-22 16:09:42', '2026-03-23 12:41:38'),
(286, 'JOSEPH R. MGUTU', 'M', '1984-11-28', 'Kigoma Kasulu', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255620679252', '0620679252', 'jmgutu72@gmail.com', NULL, 'mshirika', '$2y$12$oAnCanTZReahrm1qLBD5YuU4LDYYczN4n8ZVF04//g423Gc1Np4VS', NULL, '2026-03-22 16:31:50', '2026-03-23 23:48:31'),
(287, 'Amos Zakaria kalinga', 'M', '2000-02-05', 'RUNGWE/MBEYA', NULL, 'Hajaoa', NULL, 0, 'Mtongani', '255763190646', '0763190646', 'kalingaamos90@gmail.com', NULL, 'mshirika', '$2y$12$wwm5l9fLY1m245ypgT5uuOHdSNf.kMJlwJHZVhVllHr2fWdF.pJLe', NULL, '2026-03-22 16:40:21', '2026-03-23 12:41:48'),
(288, 'EDINA MPEJIWA MAKENZI', 'F', '2006-07-04', 'MWANZA', NULL, 'Hajaolewa', NULL, 0, 'Mbande', '255619900796', '0619900796', 'edinampejiwa@gmail.com', NULL, NULL, '$2y$12$ON345EGuMK1z0gUFmfVvbOuVtEFAkfm2PbbZrlo8Q4dAy5Q0jgyQe', NULL, '2026-03-22 16:42:10', '2026-03-22 16:42:10'),
(289, 'Prisca Mayeji Mnemera', 'F', '1987-01-04', 'MAGU -MWANZA', NULL, 'Ameolewa', 'MARTIN JOHN MBAPILA', 3, 'Kizuiani', '255712009881', '0712009881', 'priscamnemera@gmail.com', NULL, 'mshirika', '$2y$12$6ryal6YSCJYrgCUJcPv4n.xKcz9RlbNOdi/vXP11aJUUWnQv0WpeK', NULL, '2026-03-22 16:49:18', '2026-03-22 21:35:47'),
(290, 'Esther John', 'F', '2003-04-12', 'Tabora', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255689416180', '0689416180', 'emmanuelmethey566@gmail.com', NULL, NULL, '$2y$12$rSWU67S7xJbZL6b3dqh02O5990hvl7rdH7M/FrQkSDffKNeoNBlIO', NULL, '2026-03-22 19:31:11', '2026-03-22 19:31:11'),
(291, 'Esperansa William', 'F', '2000-08-31', 'Kigoma', NULL, 'Hajaolewa', NULL, 0, 'Keko & Kurasini', '255621696851', '0621696851', 'williamkulwa16@gmail.com', NULL, 'mshirika', '$2y$12$7K4s/IxjucShpv/JpY38.eXYNCo6Y6er8qkUoo/6WZ4mYrGQFwTOC', NULL, '2026-03-22 20:46:59', '2026-03-23 12:42:00'),
(292, 'Ezra Yavani Josias', 'M', '1996-05-17', 'Buhigwe/kigoma', NULL, 'Hajaoa', NULL, 0, 'Yerusalem', '255715310596', '0715310596', 'Ezrayavanijosias@gmail.com', NULL, 'mshirika', '$2y$12$VCn2o88172kdZY6DsFtYFOOW3R1ho1UWTj/F4MesWsNOU1Fz.2idq', NULL, '2026-03-22 21:31:54', '2026-03-23 12:42:06'),
(293, 'Macrice Daniel Mbodo', 'M', '1983-10-21', 'Kasulu, kigoma', NULL, 'Ameoa', 'Rahel', 2, 'Yerusalem', '255752498545', '0752498545', 'macrice.daniely@yahoo.com', NULL, 'mshirika', '$2y$12$1Acdc.maF1BYHLnlC.9cqOIqGwOBrQHYOkOwOSwIdTq6BcsAvqGB.', NULL, '2026-03-22 23:28:15', '2026-03-22 23:36:46'),
(294, 'Numwagile Ackimu Mwakipale', 'F', '1989-05-28', 'Rungwe, Mbeya', NULL, 'Ameolewa', 'Kepha Michael', 1, 'Mgeninani', '255656303909', '0755303969', 'mwakipalen@gmail.com', NULL, 'mshirika', '$2y$12$se8N73AhVri12Iu6EMp/ueJ.QLb0oJCXZvtMB3.DzkojRTkIg0Aju', NULL, '2026-03-23 00:13:18', '2026-03-23 12:42:14'),
(295, 'DAVID ZACHARIA MABOYA', 'M', '2005-01-09', 'KAGERA', NULL, 'Hajaoa', NULL, 0, 'Kijichi', '255717631817', '0717631817', 'david@biziMana', NULL, 'mshirika', '$2y$12$Bcky2Y.dsaxptR3QD3iW4uDD5bwcTQo4bI6TIPE7eGA9K85iGix1O', NULL, '2026-03-23 08:00:48', '2026-03-24 13:35:22'),
(296, 'Emiliana Mwita Nyakaraita', 'F', '1985-10-10', 'Serengeti, Mara', NULL, 'Ameolewa', 'Augusstino Madaki', 5, 'Mgeninani', '255652474828', '0652474828', 'emmyrhoby@gmail.com', NULL, 'mshirika', '$2y$12$6Jv9eMKCcVugZXsBt15R8urDdW9/vY7.jb1T4FemNwmU3EhXTVA5S', NULL, '2026-03-23 10:42:00', '2026-03-23 12:42:22'),
(297, 'DIANA AZARIA GUSTAVE', 'F', '2003-11-23', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255797175781', '0620175791', 'dianaazaria1@gmail.com', NULL, 'mshirika', '$2y$12$I3AnxDz3oYbOWQIsnYskmezdussdV4U7cqO9OpPFjInDfcDM6a3qK', NULL, '2026-03-23 11:35:26', '2026-03-23 12:42:25'),
(298, 'DAINESS MANYEMA MLENGA', 'F', '1986-01-09', 'KATAVI', NULL, 'Ameolewa', 'AZARIA GUSTAVE MBOMBO', 6, 'Kinondoni', '255623845565', '0622845565', 'dainessmanyema@gmail.com', NULL, 'mshirika', '$2y$12$d7Z9tFbKX2BgcEu/.QD0weNreW4RFK7wcs18r6yBR/Csh59wA4G/K', NULL, '2026-03-23 11:46:46', '2026-03-23 12:42:29'),
(299, 'Eretina Mumba', 'F', '1960-10-10', 'Zambia', NULL, 'Ameolewa', 'Batista Kindole', 8, 'Tandika', '255785466691', NULL, 'eretinamumba10@gmail.com', NULL, 'mshirika', '$2y$12$KFeClVJaLBH4HOyPE9PjM.viyzGuAk5lm8eHqV0TnddbZkcM1ULkC', NULL, '2026-03-23 12:37:59', '2026-03-23 12:42:44'),
(300, 'Anastazia Gunamla Nchangenda', 'F', '1968-12-05', 'Kigoma', NULL, 'Mjane', NULL, 4, 'Tandika', '255653678154', '0653678154', 'fanirobert112@gmail.com', NULL, 'mshirika', '$2y$12$d.mcURjuCx9Gyqw9rWisG.fWbDC4m6PdsbyxHrMOc/nq8f7YPcQZ.', NULL, '2026-03-23 18:48:50', '2026-03-23 19:05:50'),
(301, 'Winfrida Azaria Gustave', 'F', '2005-10-26', 'Mbeya', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255785253636', '0785253636', 'winifridaazaria20@gmail.com', NULL, 'mshirika', '$2y$12$3sAodpUMb03SIs7JxcLNxe8KRG9H7sjEvBaSOSjzY2pMlFwTQmWvC', NULL, '2026-03-23 19:29:19', '2026-03-23 21:46:40'),
(302, 'ESTER ELIA NTANDU', 'F', '1999-01-21', 'SINDIDA', NULL, 'Hajaolewa', NULL, 0, 'Kinondoni', '255662907294', '0692907294', 'esterelia709@icloud.com', NULL, 'mshirika', '$2y$12$T7u45pwX.VXJZC8.t.QWgudC8LV4XDV1S24rGwkULMbv0zbEUxOy2', NULL, '2026-03-24 09:32:06', '2026-03-24 12:59:52'),
(303, 'Martin Mbapila', 'M', '1980-12-31', 'Ilala,Dar es Salaam', NULL, 'Ameoa', 'Prisca Mayeji Mnemera', 3, 'Kizuiani', '255712212901', '0712212901', 'dimartinspain@gmail.com', NULL, 'mshirika', '$2y$12$J35Q8dBKVUshkVlQ1LC8quHl.qBFzixuO.bnqag3nua7goiW/DDb6', NULL, '2026-03-24 17:42:17', '2026-03-24 18:33:52'),
(304, 'NEEMA JUMA CHACHA', 'F', '2001-08-03', 'SERENGETI/MARA', NULL, 'Hajaolewa', NULL, 0, 'Yerusalem', '255758363891', '0758363891', 'neemachacha935@gmail.com', NULL, 'mshirika', '$2y$12$XguoiR1/51IsRPz9S3kbvO4MK6/TbLwT30wcOPf52KLU1izU30Vbe', NULL, '2026-03-24 20:20:59', '2026-03-24 20:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 15, 'dashboard_verse', 'Discovering Opportunities to Serve God', '2026-01-06 21:18:56', '2026-01-06 21:19:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contributions_user_id_foreign` (`user_id`);

--
-- Indexes for table `contribution_types`
--
ALTER TABLE `contribution_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contribution_types_name_unique` (`name`);

--
-- Indexes for table `deleted_members`
--
ALTER TABLE `deleted_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_leader_id_foreign` (`leader_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaders_user_id_foreign` (`user_id`);

--
-- Indexes for table `leadership_roles`
--
ALTER TABLE `leadership_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leadership_roles_title_unique` (`title`);

--
-- Indexes for table `leader_leadership_role`
--
ALTER TABLE `leader_leadership_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leader_leadership_role_leader_id_leadership_role_id_unique` (`leader_id`,`leadership_role_id`),
  ADD KEY `leader_leadership_role_leadership_role_id_foreign` (`leadership_role_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_user_id_foreign` (`user_id`);

--
-- Indexes for table `member_group`
--
ALTER TABLE `member_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_group_member_id_group_id_unique` (`member_id`,`group_id`),
  ADD KEY `member_group_group_id_foreign` (`group_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_settings_user_id_key_unique` (`user_id`,`key`),
  ADD KEY `user_settings_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contribution_types`
--
ALTER TABLE `contribution_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deleted_members`
--
ALTER TABLE `deleted_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `leadership_roles`
--
ALTER TABLE `leadership_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `leader_leadership_role`
--
ALTER TABLE `leader_leadership_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `member_group`
--
ALTER TABLE `member_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1190;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contributions`
--
ALTER TABLE `contributions`
  ADD CONSTRAINT `contributions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `members` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leaders`
--
ALTER TABLE `leaders`
  ADD CONSTRAINT `leaders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leader_leadership_role`
--
ALTER TABLE `leader_leadership_role`
  ADD CONSTRAINT `leader_leadership_role_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `leaders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leader_leadership_role_leadership_role_id_foreign` FOREIGN KEY (`leadership_role_id`) REFERENCES `leadership_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `member_group`
--
ALTER TABLE `member_group`
  ADD CONSTRAINT `member_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_group_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
