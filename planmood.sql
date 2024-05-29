-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 09:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `planmood`
--

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_19_032622_create_personal_access_tokens_table', 1),
(5, '2024_05_27_040428_create_post_jurnals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 1, 'default', 'daa4aa467ed41034e8b9801cfc9f98c30892808530da94796502bb1819077a3a', '[\"*\"]', NULL, NULL, '2024-05-28 04:32:43', '2024-05-28 04:32:43'),
(2, 'App\\Models\\User', 1, 'default', 'afdf841d37ae47de7a9a2e7544b976eadcdfbd4f2165961f59d7d636aee34d5a', '[\"*\"]', NULL, NULL, '2024-05-28 04:33:14', '2024-05-28 04:33:14'),
(3, 'App\\Models\\User', 1, 'default', 'fe29f6933727d34b50358724462c4d802e1c0f5fc22bcf37ed197308e40bd913', '[\"*\"]', '2024-05-28 21:59:35', NULL, '2024-05-28 04:34:09', '2024-05-28 21:59:35'),
(4, 'App\\Models\\User', 2, 'default', '5f8b04a902b0a1065a082d42271277ab573bf4d3150c3389f9723cc79824e201', '[\"*\"]', NULL, NULL, '2024-05-28 04:37:46', '2024-05-28 04:37:46'),
(5, 'App\\Models\\User', 2, 'default', 'a9d68daf052bf3ac0baff9149eee3f7e340fcc76fc1950cf39ee29753b77b9cb', '[\"*\"]', NULL, NULL, '2024-05-28 04:38:04', '2024-05-28 04:38:04'),
(6, 'App\\Models\\User', 2, 'default', 'e0bde7bb41f75f02b7b21b81ff293c8f0391bf0d27d2fa91c1780ab9ac0d9624', '[\"*\"]', NULL, NULL, '2024-05-28 05:08:58', '2024-05-28 05:08:58'),
(7, 'App\\Models\\User', 1, 'default', 'eae5b81ef0c4f002581166d9ef288134f355e8ef8e0ee4aba22c937d5912b9e3', '[\"*\"]', NULL, NULL, '2024-05-28 05:09:59', '2024-05-28 05:09:59'),
(8, 'App\\Models\\User', 2, 'default', '914fc3daab24b1ab918bbab1611903c9a7ee9a30d1037e652d9f8c04b11b6864', '[\"*\"]', '2024-05-28 06:28:53', NULL, '2024-05-28 06:26:56', '2024-05-28 06:28:53'),
(9, 'App\\Models\\User', 1, 'default', 'be70b9ac7589630f873290f60eeb0531ca355559f50313104c03cb6d55f80336', '[\"*\"]', '2024-05-28 06:31:52', NULL, '2024-05-28 06:31:51', '2024-05-28 06:31:52'),
(10, 'App\\Models\\User', 2, 'default', '5e1967a16ef76bbe3b486404ad95d30b5711f95a1209a5fbe53c97eb3bca3b68', '[\"*\"]', '2024-05-28 07:16:48', NULL, '2024-05-28 06:33:30', '2024-05-28 07:16:48'),
(11, 'App\\Models\\User', 2, 'default', '71ba5ebecf2c836688771bb5016f51d41de5820751eb9f19caa7ede34f5ee9ba', '[\"*\"]', '2024-05-28 07:40:42', NULL, '2024-05-28 07:40:40', '2024-05-28 07:40:42'),
(12, 'App\\Models\\User', 1, 'default', 'fae51e876b88e2bdd1a99f1a7da041d0c56f4543a2f8729612e2ffe50f0bbbcd', '[\"*\"]', '2024-05-28 07:56:17', NULL, '2024-05-28 07:56:15', '2024-05-28 07:56:17'),
(13, 'App\\Models\\User', 1, 'default', '6b9b4c9245974afba1d0010f4f6163c8ba6835978cabade940146b18cdff1895', '[\"*\"]', '2024-05-28 07:57:46', NULL, '2024-05-28 07:57:43', '2024-05-28 07:57:46'),
(14, 'App\\Models\\User', 1, 'default', '512b4141f9909b605c2e17109abf81316ecf54da48acfe4171941ae1ddd2bb3a', '[\"*\"]', '2024-05-28 07:59:26', NULL, '2024-05-28 07:59:23', '2024-05-28 07:59:26'),
(15, 'App\\Models\\User', 1, 'default', '3495d1c567e5fb857798a67941ca6eb8c9086484c76e13941b4ae2b2d28488f0', '[\"*\"]', '2024-05-28 08:07:38', NULL, '2024-05-28 08:00:09', '2024-05-28 08:07:38'),
(16, 'App\\Models\\User', 1, 'default', '88dea490790c34366076d8327b08117847d302f90022a9ad7f13c0d682ff2c82', '[\"*\"]', '2024-05-28 08:09:55', NULL, '2024-05-28 08:09:53', '2024-05-28 08:09:55'),
(17, 'App\\Models\\User', 1, 'default', 'd466c68faaf0d663c84fd6f1cac893529b5fba1edc301c8d1b6aba6c2fb6e92f', '[\"*\"]', '2024-05-28 08:11:15', NULL, '2024-05-28 08:10:25', '2024-05-28 08:11:15'),
(18, 'App\\Models\\User', 1, 'default', '41c726cde6f5893ba2030e1da31530e297cbd8a136b7ab70984e4a1f93e98b6b', '[\"*\"]', '2024-05-28 08:38:46', NULL, '2024-05-28 08:34:50', '2024-05-28 08:38:46'),
(19, 'App\\Models\\User', 1, 'default', '9004aefb72e5d1607b156c22708b352c2a33ca2f4ac6b206593f21ab3ec2817f', '[\"*\"]', '2024-05-28 08:51:36', NULL, '2024-05-28 08:50:52', '2024-05-28 08:51:36'),
(20, 'App\\Models\\User', 1, 'default', '5583622838e8a22adaaccdd19e6f2c1211ee9ac708a1d01833c57d82895116b4', '[\"*\"]', '2024-05-28 08:55:36', NULL, '2024-05-28 08:55:12', '2024-05-28 08:55:36'),
(21, 'App\\Models\\User', 1, 'default', 'c938c8e08c1de21e4e4447ae96fdb4028aed7f3393dae5e5321955015414a67a', '[\"*\"]', '2024-05-28 08:57:32', NULL, '2024-05-28 08:57:10', '2024-05-28 08:57:32'),
(22, 'App\\Models\\User', 1, 'default', '47db2f011b0080f58cc9d31ec200679bf9284ded55fac0f7fc2cb1c6bf735ac6', '[\"*\"]', NULL, NULL, '2024-05-28 08:58:02', '2024-05-28 08:58:02'),
(23, 'App\\Models\\User', 1, 'default', '8d58766b1b61c0f5cfac22386743246d0d55a6c755c90541e49916eb4e0f448e', '[\"*\"]', '2024-05-28 09:09:02', NULL, '2024-05-28 09:08:30', '2024-05-28 09:09:02'),
(24, 'App\\Models\\User', 1, 'default', '2b796ae2bf8d07a89c0d9b63f1f64717279a0b6ebfc98950733e06b8611b1a59', '[\"*\"]', '2024-05-28 09:11:05', NULL, '2024-05-28 09:10:34', '2024-05-28 09:11:05'),
(25, 'App\\Models\\User', 1, 'default', '66e87b2bc1b20e32d90c5e57708e6e9d1d98266d0cbf5df8621a878936ec3715', '[\"*\"]', '2024-05-28 09:14:37', NULL, '2024-05-28 09:14:14', '2024-05-28 09:14:37'),
(26, 'App\\Models\\User', 1, 'default', '1f240a554f34ec908ffab41de82a0d8cf810a7603a95955ad5fc3f5d220c48d9', '[\"*\"]', '2024-05-28 09:17:00', NULL, '2024-05-28 09:16:44', '2024-05-28 09:17:00'),
(27, 'App\\Models\\User', 1, 'default', '0e2f2183eb35dbb7d7b35180378a6b2a1688de281c2469e7a28792dbe3976969', '[\"*\"]', '2024-05-28 09:22:14', NULL, '2024-05-28 09:21:52', '2024-05-28 09:22:14'),
(28, 'App\\Models\\User', 1, 'default', '269f058c11d2d4fd4317eab7abd107ecbcc1e7554423dd3aae72c689c4a0524c', '[\"*\"]', '2024-05-28 10:12:02', NULL, '2024-05-28 10:10:05', '2024-05-28 10:12:02'),
(29, 'App\\Models\\User', 1, 'default', 'df2bee1707ac36bd3d1a2ca155f8eaf3b9bbd7bbd8969242e189704141b5ae1f', '[\"*\"]', '2024-05-28 10:15:08', NULL, '2024-05-28 10:14:23', '2024-05-28 10:15:08'),
(30, 'App\\Models\\User', 1, 'default', '3778de573990e07c0df633e79c9d3c0e100de20d7358784ca15dd7e310cb8b41', '[\"*\"]', NULL, NULL, '2024-05-28 10:18:21', '2024-05-28 10:18:21'),
(31, 'App\\Models\\User', 1, 'default', '6925523ba71bfa9b91f0645037218dec81578f07e24551539ea8cbd519069ca9', '[\"*\"]', NULL, NULL, '2024-05-28 10:21:51', '2024-05-28 10:21:51'),
(32, 'App\\Models\\User', 1, 'default', '84b9c396188ec675d349194219b6fdda75136f0967b8bd13cb93c859f84df48e', '[\"*\"]', NULL, NULL, '2024-05-28 10:33:31', '2024-05-28 10:33:31'),
(33, 'App\\Models\\User', 1, 'default', 'aa6297138b578163e62d8fdd76e8010d2cac5d2857afaf2c4192897a56046d98', '[\"*\"]', '2024-05-28 10:37:24', NULL, '2024-05-28 10:36:36', '2024-05-28 10:37:24'),
(34, 'App\\Models\\User', 1, 'default', '796583a9d5b3d6d8a9205f48ef1d4d7028eeb4779fd10f93a59cd43c0abfcd17', '[\"*\"]', NULL, NULL, '2024-05-28 10:52:28', '2024-05-28 10:52:28'),
(35, 'App\\Models\\User', 1, 'default', '4cbd268d3f441abb58e2f24de921bff062838ad5ea48c875c1654289735cf9d7', '[\"*\"]', NULL, NULL, '2024-05-28 10:55:04', '2024-05-28 10:55:04'),
(36, 'App\\Models\\User', 1, 'default', '6a16d6b00aaf8add15fe6c727ff5324e389e733937c175a5d2d528569ec2b390', '[\"*\"]', NULL, NULL, '2024-05-28 10:55:58', '2024-05-28 10:55:58'),
(37, 'App\\Models\\User', 1, 'default', 'f5aba7cfd16c427edaa4bc3471c28ad605fdcb490527d6ed9173deb6628a7d10', '[\"*\"]', NULL, NULL, '2024-05-28 10:56:31', '2024-05-28 10:56:31'),
(38, 'App\\Models\\User', 1, 'default', '667b3fdda5681c4233367511a3fb50ae79b2e6fa531521ff0f1c5f8fcd337259', '[\"*\"]', NULL, NULL, '2024-05-28 11:01:16', '2024-05-28 11:01:16'),
(39, 'App\\Models\\User', 1, 'default', '600a971b377a7c823c4deaaaad691ebeabb2316b03e377bdf53a1323b89a950b', '[\"*\"]', '2024-05-28 14:46:31', NULL, '2024-05-28 14:45:53', '2024-05-28 14:46:31'),
(40, 'App\\Models\\User', 2, 'default', 'e344429db8836e0339e4a7b14905dad61a0d378038b0be6e1d64a4ff9050bcdb', '[\"*\"]', '2024-05-28 15:37:08', NULL, '2024-05-28 15:17:27', '2024-05-28 15:37:08'),
(41, 'App\\Models\\User', 1, 'default', '09403a54ca1c36b58b276f0ec304aeb806cec5b0135e8157bdbe485be65ab704', '[\"*\"]', '2024-05-28 15:50:56', NULL, '2024-05-28 15:46:58', '2024-05-28 15:50:56'),
(42, 'App\\Models\\User', 1, 'default', 'c3404c16386c8f2357c99a481da51048beea14ca6afabdaf6d1c7d1cb2727c03', '[\"*\"]', NULL, NULL, '2024-05-28 16:00:25', '2024-05-28 16:00:25'),
(43, 'App\\Models\\User', 1, 'default', '6604ef0343faee6ad9ded6995c305f8980d632873e301ca6647b1ff49f8ed788', '[\"*\"]', NULL, NULL, '2024-05-28 16:00:26', '2024-05-28 16:00:26'),
(44, 'App\\Models\\User', 1, 'default', '47e547ec011f999f0eac9cf04a7ea15cf88f58c6baf6c267ff02e134f2a4cfa3', '[\"*\"]', NULL, NULL, '2024-05-28 16:00:27', '2024-05-28 16:00:27'),
(45, 'App\\Models\\User', 1, 'default', '3c320bb95be69bfc8bc5aa162c40382dcd9f5be97a53cff128c9e4f170834a84', '[\"*\"]', NULL, NULL, '2024-05-28 16:00:28', '2024-05-28 16:00:28'),
(46, 'App\\Models\\User', 1, 'default', '42352f8ceee4d58a10e62271a42250aa61344f3ad77fc5015c98fb9ffed712aa', '[\"*\"]', NULL, NULL, '2024-05-28 16:05:04', '2024-05-28 16:05:04'),
(47, 'App\\Models\\User', 1, 'default', 'd094ec4b299ecf583d5028a8d58629041b6dc766405d976af7f81ecb90ad78c4', '[\"*\"]', NULL, NULL, '2024-05-28 16:09:47', '2024-05-28 16:09:47'),
(48, 'App\\Models\\User', 1, 'default', '8a1f341d2847d4351c4e56f241411f3427359ff59ee6d051c3858cc548242314', '[\"*\"]', NULL, NULL, '2024-05-28 16:11:24', '2024-05-28 16:11:24'),
(49, 'App\\Models\\User', 1, 'default', 'd883e898817e96225e75d0ec7e924a54d871c202f54d572b02899a3c58ceb1ab', '[\"*\"]', NULL, NULL, '2024-05-28 16:16:07', '2024-05-28 16:16:07'),
(50, 'App\\Models\\User', 1, 'default', '69d94d4f824730eb6cc6a126c0ca19e0d61bbf039f2b38002bb07f924ad691e3', '[\"*\"]', NULL, NULL, '2024-05-28 16:25:33', '2024-05-28 16:25:33'),
(51, 'App\\Models\\User', 1, 'default', '3258b91e211bdec5d036fc7eac0f04d369566da76279b72326eba81aaa96287a', '[\"*\"]', NULL, NULL, '2024-05-28 16:27:05', '2024-05-28 16:27:05'),
(52, 'App\\Models\\User', 1, 'default', '7d3915dc4d39ebe748e31e4b435630d9c57e58ff7e174134e5af0df9daa347eb', '[\"*\"]', NULL, NULL, '2024-05-28 18:25:26', '2024-05-28 18:25:26'),
(53, 'App\\Models\\User', 1, 'default', '356f693c8219b0bfe53eb3f4e4173b19f215e8bb808b3c582fe1773f7b4cc1fe', '[\"*\"]', NULL, NULL, '2024-05-28 18:27:18', '2024-05-28 18:27:18'),
(54, 'App\\Models\\User', 1, 'default', '57a28bcf3b67e384443ea1fa4ad0cbd4973b46ca8d7c79626adff6956582dc9f', '[\"*\"]', '2024-05-28 18:30:06', NULL, '2024-05-28 18:30:04', '2024-05-28 18:30:06'),
(55, 'App\\Models\\User', 1, 'default', '64bc0d0503109bab01e2ffffee8e045a7898949eb3453c1e01a3dcc4527260df', '[\"*\"]', '2024-05-28 18:35:34', NULL, '2024-05-28 18:35:32', '2024-05-28 18:35:34'),
(56, 'App\\Models\\User', 1, 'default', 'd49ec79017fedc618b3d04831092c3dc9fabb52423a25b3cf4be2a93bb4dc1e0', '[\"*\"]', NULL, NULL, '2024-05-28 18:36:24', '2024-05-28 18:36:24'),
(57, 'App\\Models\\User', 1, 'default', 'f79b9764a826717f09783736c080954250bef02417bcc743b02d46e7b4aba717', '[\"*\"]', '2024-05-28 18:37:14', NULL, '2024-05-28 18:37:12', '2024-05-28 18:37:14'),
(58, 'App\\Models\\User', 1, 'default', 'cbfb199a93a1d00f93688654bf5e33e0a14f581e61a3efc96810d41d7e3676ee', '[\"*\"]', '2024-05-28 18:40:01', NULL, '2024-05-28 18:39:59', '2024-05-28 18:40:01'),
(59, 'App\\Models\\User', 1, 'default', 'a9cb589f244438b0e31363d3982de443521649f391bf22e878373f07a0e2ea28', '[\"*\"]', '2024-05-28 18:42:00', NULL, '2024-05-28 18:41:58', '2024-05-28 18:42:00'),
(60, 'App\\Models\\User', 1, 'default', '391adaab6ad555aa1d423ccf64e2b4be1bb411b026dd0ea4f11c75183063494c', '[\"*\"]', '2024-05-28 18:54:32', NULL, '2024-05-28 18:54:31', '2024-05-28 18:54:32'),
(61, 'App\\Models\\User', 1, 'default', '4438d397d2e264b68c98c11f3fbd14db4d3ee027423e2a73305f9e43d40c5d0f', '[\"*\"]', '2024-05-28 19:00:04', NULL, '2024-05-28 19:00:02', '2024-05-28 19:00:04'),
(62, 'App\\Models\\User', 1, 'default', 'c9a24614f001e74d8b83ac8dd55d83693b8f5b7079b88f9dcdd7bd81f78e4bfa', '[\"*\"]', '2024-05-28 19:15:40', NULL, '2024-05-28 19:15:04', '2024-05-28 19:15:40'),
(63, 'App\\Models\\User', 1, 'default', '9245a794e51934bca993e68b73b2d975888452340f7c021375efb53758a2d003', '[\"*\"]', '2024-05-28 19:19:25', NULL, '2024-05-28 19:18:52', '2024-05-28 19:19:25'),
(64, 'App\\Models\\User', 1, 'default', '5c898ba6e9d4c4ce0734fc035f9c98f77be0e2f89d5778b15904d147e68435ae', '[\"*\"]', '2024-05-28 19:36:53', NULL, '2024-05-28 19:36:27', '2024-05-28 19:36:53'),
(65, 'App\\Models\\User', 1, 'default', '44697954d6476704412e2143a8e9635a089fdd7075988ab4baac88ca0f955427', '[\"*\"]', NULL, NULL, '2024-05-28 20:39:43', '2024-05-28 20:39:43'),
(66, 'App\\Models\\User', 1, 'default', '5fa7a3abd9a519eebfe6f427ce517e51936b63a0f8c5ea751a340fb46559dd83', '[\"*\"]', '2024-05-28 20:40:43', NULL, '2024-05-28 20:40:21', '2024-05-28 20:40:43'),
(67, 'App\\Models\\User', 1, 'default', '854436defac84ddfed59b726ea75f18c33af40453948514f3da46739db1036eb', '[\"*\"]', '2024-05-28 20:49:07', NULL, '2024-05-28 20:48:33', '2024-05-28 20:49:07'),
(68, 'App\\Models\\User', 1, 'default', 'cc70c9b0e1510fb03bea4264879e24b0d089bccbdd87ccb9cd652cce5c58dd82', '[\"*\"]', NULL, NULL, '2024-05-28 21:05:39', '2024-05-28 21:05:39'),
(69, 'App\\Models\\User', 1, 'default', '3209601c732b22d18118ff993ee1891f22ff26478cc7676e2491c25390d8da9e', '[\"*\"]', '2024-05-28 21:08:56', NULL, '2024-05-28 21:08:31', '2024-05-28 21:08:56'),
(70, 'App\\Models\\User', 1, 'default', '1d3e8256bd5aa14e8fcf352e4bce53effc1c6e1dbd19def259f6311d729819b8', '[\"*\"]', '2024-05-28 21:22:33', NULL, '2024-05-28 21:22:12', '2024-05-28 21:22:33'),
(71, 'App\\Models\\User', 1, 'default', '1f2615f3441b096d965345596dc32432b8b89f365edd2eaca82d1b3b6600dcde', '[\"*\"]', '2024-05-28 21:35:35', NULL, '2024-05-28 21:35:15', '2024-05-28 21:35:35'),
(72, 'App\\Models\\User', 1, 'default', '623bfe82dbd66731df3dafc2d7fcbf7b62a145312ebffcb732666811833e6eb8', '[\"*\"]', '2024-05-28 21:44:52', NULL, '2024-05-28 21:43:56', '2024-05-28 21:44:52'),
(73, 'App\\Models\\User', 1, 'default', '7c8ea65ea97ccac7e35ec6b250ca591ff3e13bd12dea3a8cb063d3b68a3f06ed', '[\"*\"]', '2024-05-28 21:56:24', NULL, '2024-05-28 21:55:56', '2024-05-28 21:56:24'),
(74, 'App\\Models\\User', 1, 'default', '2dab44c005ea456afc07bde5aadaea59dcd9e531cdfa0e098e92d2ae2c2545ab', '[\"*\"]', '2024-05-28 22:05:38', NULL, '2024-05-28 22:05:04', '2024-05-28 22:05:38'),
(75, 'App\\Models\\User', 1, 'default', 'c2f41e2d3edda3cd329804e3dc8bc7e64d6d9c03071af7d9d257bcf60a83e7ce', '[\"*\"]', NULL, NULL, '2024-05-28 22:09:12', '2024-05-28 22:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_jurnals`
--

CREATE TABLE `post_jurnals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tanggal_dibuat` date NOT NULL,
  `input_mood` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_jurnals`
--

INSERT INTO `post_jurnals` (`id`, `user_id`, `created_at`, `updated_at`, `judul`, `deskripsi`, `tanggal_dibuat`, `input_mood`, `image`) VALUES
(1, 1, '2024-05-28 04:35:58', '2024-05-28 04:35:58', 'test 123', 'wkwkwkw', '2024-05-28', 'Senang', NULL),
(4, 1, '2024-05-28 20:55:39', '2024-05-28 20:55:39', 'haha', 'wkwkwkw', '2024-05-28', 'Senang', NULL),
(5, 1, '2024-05-28 21:59:37', '2024-05-28 21:59:37', 'yyeee', 'wkwkwkw', '2024-05-28', 'Senang', NULL);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4yAOi9bbc7HHnwypRakINAMEafgtql4d3MfidZn6', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHBpeUNuQ2YyaU1MVnJuWUlrYWM4RkRxNE1tRWVvbk9pZ05Xa0pDZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716899711),
('5ButNWUIQ2sEqy6WebOyQlBioLMHetQCkjhLNkaw', NULL, '127.0.0.1', 'Dart/3.3 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZoaVlvdWNOdUlxcXdpUVk3VmN0elhUV0VsbEpwMzlUQzRYY0FPbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMC4wLjIuMjo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716920516),
('JWI7b40h5dNOOEHErbHYliC79xnSFYassokZd9m0', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnA4MDRZTjN2M0NJTzlDZmZTeHFXT0xjaFVyZzRod2p0T1JqUll5QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716941137),
('n2RSz8o46ZWigopsBw1GUxPxZ84CpfShqN92ZT6K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia25Wd0o2WjVSNm1KdXpiWU90RkdnSWh2d0pHTmwwcFVoVXNBVXFQYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716906151);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adit', 'adit@gmail.com', NULL, '$2y$12$48S1CzP5M.5ocPbRaBLSt.JbVu7kuHn3hgjHoXqsqXlIfmTV/5sMe', NULL, '2024-05-28 04:32:43', '2024-05-28 04:32:43'),
(2, 'satya', 'satya@gmail.com', NULL, '$2y$12$u5oBo.fwWz4JCuzWjxgqAedlfbZSy.vN7rf4J1iTEeCaY8P5vpHY6', NULL, '2024-05-28 04:37:46', '2024-05-28 04:37:46');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post_jurnals`
--
ALTER TABLE `post_jurnals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_jurnals_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `post_jurnals`
--
ALTER TABLE `post_jurnals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_jurnals`
--
ALTER TABLE `post_jurnals`
  ADD CONSTRAINT `post_jurnals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
