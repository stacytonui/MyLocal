-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 11:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylocale`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wine', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(2, 'Beer', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(3, 'Soft Drinks', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(4, 'Vodka', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(5, 'Whiskey', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(6, 'Gin', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(7, 'Liqueur', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(8, 'Cognac', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(9, 'Rum', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(10, 'Tequila', '2020-04-13 19:12:39', '2020-04-13 19:12:39'),
(20, 'Tequila', '2020-04-13 19:31:04', '2020-04-13 19:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nairobi', '2020-04-12 14:48:46', '2020-04-12 14:50:45'),
(2, 'Eldoret', '2020-04-12 14:51:08', '2020-04-12 14:51:08'),
(3, 'Nakuru', '2020-04-12 14:51:28', '2020-04-12 14:51:28'),
(4, 'Mombasa', '2020-04-14 07:06:04', '2020-04-14 07:06:04'),
(5, 'Kajiado', '2020-04-14 07:06:04', '2020-04-14 07:06:04'),
(6, 'Machakos', '2020-04-14 07:06:04', '2020-04-14 07:06:04'),
(7, 'Kiambu', '2020-04-14 07:06:04', '2020-04-14 07:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`, `city_id`) VALUES
(1, 'Nairobi CBD', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 1),
(2, 'Gigiri', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 1),
(3, 'Chiromo', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 1),
(4, 'Eldoret-CBD', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 2),
(5, 'Annex', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 2),
(6, 'Kenmosa Estate', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 2),
(7, 'Milimani Estate', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 3),
(8, 'Nakuru-CBD', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 3),
(9, 'Kiamunyi Estate', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 3),
(10, 'City Mall', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 4),
(11, 'Bamburi Beach', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 4),
(12, 'Honolulu', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 4),
(13, 'Kitengela Town', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 5),
(14, 'Balozi', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 5),
(15, 'Milimani', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 5),
(16, 'Mlolongo - Weighbridge', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 6),
(17, 'Syokimau - Mabati', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 6),
(18, 'Syokimau - Dam ', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 6),
(19, 'Uthiru', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 7),
(20, 'Kinoo', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 7),
(21, 'Kiambu Town', '2020-04-14 08:51:45', '2020-04-14 08:51:45', 7);

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
(4, '2020_03_31_090432_create_locations_table', 1),
(5, '2020_03_31_092149_create_stores_table', 1),
(6, '2020_04_02_164739_create_categories_table', 1),
(7, '2020_04_02_164758_create_products_table', 1),
(8, '2020_04_02_181220_create_product_store_table', 1),
(9, '2020_04_02_213236_drop_store_id_column_from_products', 1),
(10, '2020_04_12_162745_create_areas_table', 1),
(11, '2020_04_12_164457_create_cities_table', 1),
(12, '2020_04_12_164716_add_city_id_column_to_locations', 1),
(14, '2020_04_12_171001_drop_areas_table', 2),
(15, '2020_04_12_172137_create_users_table', 3),
(16, '2020_04_12_172408_drop_users_table', 4),
(17, '2020_04_12_172529_create_users_table', 5),
(18, '2020_04_14_074141_add_phone_column_to_users_table', 6),
(19, '2020_04_14_115657_create_stores_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('stacyanne01@gmail.com', '$2y$10$vkoHjj2r62GbrwkSY.AbbeZzs.4uYGhv3CGS3pxtevm23nhhEoFsi', '2020-04-14 17:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `imagePath`, `category_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Tusker(6 Pack)', 'tusker.jpg', 2, 1200, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(2, 'Desperados (6 Pack)', 'desperados.jpg', 2, 1200, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(3, 'Tusker Malt(6 Pack)', 'tuskermalt.jpg', 2, 1200, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(4, 'Guinness(6 Pack)', 'guinness.jpg', 2, 1200, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(5, 'Four Cousins Red', 'four-cousins.jpg', 1, 700, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(6, 'Four Cousins White', 'four-cousins-white.jpg', 1, 700, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(7, 'Frontera', 'frontera.jpg', 1, 800, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(8, 'RW White', 'RW.jpg', 1, 1200, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(9, 'Del Monte(Mango)', 'del-monte-mango.jpg', 3, 250, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(10, 'Del Monte(Mixed Berry)', 'del-monte-mixed-berry.png', 3, 250, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(11, 'Del Monte(Orange)', 'del-monte-orange.jpg', 3, 250, '2020-04-13 19:31:04', '2020-04-13 19:31:04'),
(12, 'Del Monte(Passion Fruit)', 'del-monte-passion-fruit.jpg', 3, 250, '2020-04-13 19:31:04', '2020-04-13 19:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_store`
--

CREATE TABLE `product_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_store`
--

INSERT INTO `product_store` (`id`, `store_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(2, 1, 2, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(3, 1, 3, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(4, 1, 4, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(5, 1, 5, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(6, 1, 6, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(7, 1, 7, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(8, 1, 8, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(9, 1, 9, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(10, 1, 10, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(11, 1, 11, '2020-04-14 10:17:00', '2020-04-14 10:17:00'),
(12, 1, 12, '2020-04-14 10:17:01', '2020-04-14 10:17:01'),
(13, 2, 1, '2020-04-14 10:18:55', '2020-04-14 10:18:55'),
(14, 2, 2, '2020-04-14 10:18:55', '2020-04-14 10:18:55'),
(15, 2, 3, '2020-04-14 10:18:55', '2020-04-14 10:18:55'),
(16, 2, 4, '2020-04-14 10:18:55', '2020-04-14 10:18:55'),
(17, 2, 5, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(18, 2, 6, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(19, 2, 7, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(20, 2, 8, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(21, 2, 9, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(22, 2, 10, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(23, 2, 11, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(24, 2, 12, '2020-04-14 10:18:56', '2020-04-14 10:18:56'),
(25, 3, 1, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(26, 3, 2, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(27, 3, 3, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(28, 3, 4, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(29, 3, 5, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(30, 3, 6, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(31, 3, 7, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(32, 3, 8, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(33, 3, 9, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(34, 3, 10, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(35, 3, 11, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(36, 3, 12, '2020-04-14 10:19:05', '2020-04-14 10:19:05'),
(37, 4, 1, '2020-04-14 10:19:11', '2020-04-14 10:19:11'),
(38, 4, 2, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(39, 4, 3, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(40, 4, 4, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(41, 4, 5, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(42, 4, 6, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(43, 4, 7, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(44, 4, 8, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(45, 4, 9, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(46, 4, 10, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(47, 4, 11, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(48, 4, 12, '2020-04-14 10:19:12', '2020-04-14 10:19:12'),
(49, 5, 1, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(50, 5, 2, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(51, 5, 3, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(52, 5, 4, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(53, 5, 5, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(54, 5, 6, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(55, 5, 7, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(56, 5, 8, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(57, 5, 9, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(58, 5, 10, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(59, 5, 11, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(60, 5, 12, '2020-04-14 10:19:21', '2020-04-14 10:19:21'),
(61, 6, 1, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(62, 6, 2, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(63, 6, 3, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(64, 6, 4, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(65, 6, 5, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(66, 6, 6, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(67, 6, 7, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(68, 6, 8, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(69, 6, 9, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(70, 6, 10, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(71, 6, 11, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(72, 6, 12, '2020-04-14 10:19:30', '2020-04-14 10:19:30'),
(73, 7, 1, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(74, 7, 2, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(75, 7, 3, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(76, 7, 4, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(77, 7, 5, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(78, 7, 6, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(79, 7, 7, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(80, 7, 8, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(81, 7, 9, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(82, 7, 10, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(83, 7, 11, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(84, 7, 12, '2020-04-14 10:19:37', '2020-04-14 10:19:37'),
(85, 8, 1, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(86, 8, 2, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(87, 8, 3, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(88, 8, 4, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(89, 8, 5, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(90, 8, 6, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(91, 8, 7, '2020-04-14 10:19:45', '2020-04-14 10:19:45'),
(92, 8, 8, '2020-04-14 10:19:46', '2020-04-14 10:19:46'),
(93, 8, 9, '2020-04-14 10:19:46', '2020-04-14 10:19:46'),
(94, 8, 10, '2020-04-14 10:19:46', '2020-04-14 10:19:46'),
(95, 8, 11, '2020-04-14 10:19:46', '2020-04-14 10:19:46'),
(96, 8, 12, '2020-04-14 10:19:46', '2020-04-14 10:19:46'),
(97, 9, 1, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(98, 9, 2, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(99, 9, 3, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(100, 9, 4, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(101, 9, 5, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(102, 9, 6, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(103, 9, 7, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(104, 9, 8, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(105, 9, 9, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(106, 9, 10, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(107, 9, 11, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(108, 9, 12, '2020-04-14 10:19:54', '2020-04-14 10:19:54'),
(109, 10, 1, '2020-04-14 10:20:01', '2020-04-14 10:20:01'),
(110, 10, 2, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(111, 10, 3, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(112, 10, 4, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(113, 10, 5, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(114, 10, 6, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(115, 10, 7, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(116, 10, 8, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(117, 10, 9, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(118, 10, 10, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(119, 10, 11, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(120, 10, 12, '2020-04-14 10:20:02', '2020-04-14 10:20:02'),
(121, 11, 1, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(122, 11, 2, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(123, 11, 3, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(124, 11, 4, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(125, 11, 5, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(126, 11, 6, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(127, 11, 7, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(128, 11, 8, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(129, 11, 9, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(130, 11, 10, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(131, 11, 11, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(132, 11, 12, '2020-04-14 10:20:09', '2020-04-14 10:20:09'),
(133, 12, 1, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(134, 12, 2, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(135, 12, 3, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(136, 12, 4, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(137, 12, 5, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(138, 12, 6, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(139, 12, 7, '2020-04-14 10:20:15', '2020-04-14 10:20:15'),
(140, 12, 8, '2020-04-14 10:20:16', '2020-04-14 10:20:16'),
(141, 12, 9, '2020-04-14 10:20:16', '2020-04-14 10:20:16'),
(142, 12, 10, '2020-04-14 10:20:16', '2020-04-14 10:20:16'),
(143, 12, 11, '2020-04-14 10:20:16', '2020-04-14 10:20:16'),
(144, 12, 12, '2020-04-14 10:20:16', '2020-04-14 10:20:16'),
(145, 13, 1, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(146, 13, 2, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(147, 13, 3, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(148, 13, 4, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(149, 13, 5, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(150, 13, 6, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(151, 13, 7, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(152, 13, 8, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(153, 13, 9, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(154, 13, 10, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(155, 13, 11, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(156, 13, 12, '2020-04-14 10:20:23', '2020-04-14 10:20:23'),
(157, 14, 1, '2020-04-14 10:20:29', '2020-04-14 10:20:29'),
(158, 14, 2, '2020-04-14 10:20:29', '2020-04-14 10:20:29'),
(159, 14, 3, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(160, 14, 4, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(161, 14, 5, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(162, 14, 6, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(163, 14, 7, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(164, 14, 8, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(165, 14, 9, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(166, 14, 10, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(167, 14, 11, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(168, 14, 12, '2020-04-14 10:20:30', '2020-04-14 10:20:30'),
(169, 15, 1, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(170, 15, 2, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(171, 15, 3, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(172, 15, 4, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(173, 15, 5, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(174, 15, 6, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(175, 15, 7, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(176, 15, 8, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(177, 15, 9, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(178, 15, 10, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(179, 15, 11, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(180, 15, 12, '2020-04-14 10:20:39', '2020-04-14 10:20:39'),
(181, 16, 1, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(182, 16, 2, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(183, 16, 3, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(184, 16, 4, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(185, 16, 5, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(186, 16, 6, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(187, 16, 7, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(188, 16, 8, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(189, 16, 9, '2020-04-14 10:20:45', '2020-04-14 10:20:45'),
(190, 16, 10, '2020-04-14 10:20:46', '2020-04-14 10:20:46'),
(191, 16, 11, '2020-04-14 10:20:46', '2020-04-14 10:20:46'),
(192, 16, 12, '2020-04-14 10:20:46', '2020-04-14 10:20:46'),
(193, 17, 1, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(194, 17, 2, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(195, 17, 3, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(196, 17, 4, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(197, 17, 5, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(198, 17, 6, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(199, 17, 7, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(200, 17, 8, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(201, 17, 9, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(202, 17, 10, '2020-04-14 10:20:52', '2020-04-14 10:20:52'),
(203, 17, 11, '2020-04-14 10:20:53', '2020-04-14 10:20:53'),
(204, 17, 12, '2020-04-14 10:20:53', '2020-04-14 10:20:53'),
(205, 18, 1, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(206, 18, 2, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(207, 18, 3, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(208, 18, 4, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(209, 18, 5, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(210, 18, 6, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(211, 18, 7, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(212, 18, 8, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(213, 18, 9, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(214, 18, 10, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(215, 18, 11, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(216, 18, 12, '2020-04-14 10:21:37', '2020-04-14 10:21:37'),
(217, 19, 1, '2020-04-14 10:21:45', '2020-04-14 10:21:45'),
(218, 19, 2, '2020-04-14 10:21:45', '2020-04-14 10:21:45'),
(219, 19, 3, '2020-04-14 10:21:45', '2020-04-14 10:21:45'),
(220, 19, 4, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(221, 19, 5, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(222, 19, 6, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(223, 19, 7, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(224, 19, 8, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(225, 19, 9, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(226, 19, 10, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(227, 19, 11, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(228, 19, 12, '2020-04-14 10:21:46', '2020-04-14 10:21:46'),
(229, 20, 1, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(230, 20, 2, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(231, 20, 3, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(232, 20, 4, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(233, 20, 5, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(234, 20, 6, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(235, 20, 7, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(236, 20, 8, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(237, 20, 9, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(238, 20, 10, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(239, 20, 11, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(240, 20, 12, '2020-04-14 10:21:56', '2020-04-14 10:21:56'),
(241, 21, 1, '2020-04-14 10:22:04', '2020-04-14 10:22:04'),
(242, 21, 2, '2020-04-14 10:22:04', '2020-04-14 10:22:04'),
(243, 21, 3, '2020-04-14 10:22:04', '2020-04-14 10:22:04'),
(244, 21, 4, '2020-04-14 10:22:04', '2020-04-14 10:22:04'),
(245, 21, 5, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(246, 21, 6, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(247, 21, 7, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(248, 21, 8, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(249, 21, 9, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(250, 21, 10, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(251, 21, 11, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(252, 21, 12, '2020-04-14 10:22:05', '2020-04-14 10:22:05'),
(253, 22, 1, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(254, 22, 2, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(255, 22, 3, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(256, 22, 4, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(257, 22, 5, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(258, 22, 6, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(259, 22, 7, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(260, 22, 8, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(261, 22, 9, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(262, 22, 10, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(263, 22, 11, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(264, 22, 12, '2020-04-14 10:25:06', '2020-04-14 10:25:06'),
(265, 23, 1, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(266, 23, 2, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(267, 23, 3, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(268, 23, 4, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(269, 23, 5, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(270, 23, 6, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(271, 23, 7, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(272, 23, 8, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(273, 23, 9, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(274, 23, 10, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(275, 23, 11, '2020-04-14 10:25:17', '2020-04-14 10:25:17'),
(276, 23, 12, '2020-04-14 10:25:18', '2020-04-14 10:25:18'),
(277, 24, 1, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(278, 24, 2, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(279, 24, 3, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(280, 24, 4, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(281, 24, 5, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(282, 24, 6, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(283, 24, 7, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(284, 24, 8, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(285, 24, 9, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(286, 24, 10, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(287, 24, 11, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(288, 24, 12, '2020-04-14 10:25:28', '2020-04-14 10:25:28'),
(289, 25, 1, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(290, 25, 2, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(291, 25, 3, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(292, 25, 4, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(293, 25, 5, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(294, 25, 6, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(295, 25, 7, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(296, 25, 8, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(297, 25, 9, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(298, 25, 10, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(299, 25, 11, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(300, 25, 12, '2020-04-14 10:25:35', '2020-04-14 10:25:35'),
(301, 26, 1, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(302, 26, 2, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(303, 26, 3, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(304, 26, 4, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(305, 26, 5, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(306, 26, 6, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(307, 26, 7, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(308, 26, 8, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(309, 26, 9, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(310, 26, 10, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(311, 26, 11, '2020-04-14 10:25:41', '2020-04-14 10:25:41'),
(312, 26, 12, '2020-04-14 10:25:42', '2020-04-14 10:25:42'),
(313, 27, 1, '2020-04-14 10:25:52', '2020-04-14 10:25:52'),
(314, 27, 2, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(315, 27, 3, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(316, 27, 4, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(317, 27, 5, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(318, 27, 6, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(319, 27, 7, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(320, 27, 8, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(321, 27, 9, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(322, 27, 10, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(323, 27, 11, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(324, 27, 12, '2020-04-14 10:25:53', '2020-04-14 10:25:53'),
(325, 29, 1, '2020-04-14 10:26:00', '2020-04-14 10:26:00'),
(326, 29, 2, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(327, 29, 3, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(328, 29, 4, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(329, 29, 5, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(330, 29, 6, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(331, 29, 7, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(332, 29, 8, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(333, 29, 9, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(334, 29, 10, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(335, 29, 11, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(336, 29, 12, '2020-04-14 10:26:01', '2020-04-14 10:26:01'),
(337, 31, 1, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(338, 31, 2, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(339, 31, 3, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(340, 31, 4, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(341, 31, 5, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(342, 31, 6, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(343, 31, 7, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(344, 31, 8, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(345, 31, 9, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(346, 31, 10, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(347, 31, 11, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(348, 31, 12, '2020-04-14 10:27:32', '2020-04-14 10:27:32'),
(349, 33, 1, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(350, 33, 2, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(351, 33, 3, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(352, 33, 4, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(353, 33, 5, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(354, 33, 6, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(355, 33, 7, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(356, 33, 8, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(357, 33, 9, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(358, 33, 10, '2020-04-14 10:27:39', '2020-04-14 10:27:39'),
(359, 33, 11, '2020-04-14 10:27:40', '2020-04-14 10:27:40'),
(360, 33, 12, '2020-04-14 10:27:40', '2020-04-14 10:27:40'),
(361, 35, 1, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(362, 35, 2, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(363, 35, 3, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(364, 35, 4, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(365, 35, 5, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(366, 35, 6, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(367, 35, 7, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(368, 35, 8, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(369, 35, 9, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(370, 35, 10, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(371, 35, 11, '2020-04-14 10:27:50', '2020-04-14 10:27:50'),
(372, 35, 12, '2020-04-14 10:27:50', '2020-04-14 10:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locations_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `locations_id`, `created_at`, `updated_at`) VALUES
(1, 'V Club', 1, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(2, 'A Wines and Spirits', 1, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(3, 'T Club', 2, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(4, 'Goodwill Wines and Spirits', 2, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(5, 'T Club', 3, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(6, 'Eldoret Club', 3, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(7, 'S Club', 4, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(8, 'K Club', 4, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(9, 'V Club', 5, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(10, 'A Wines and Spirits', 5, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(11, 'T Club', 6, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(12, 'Goodwill Wines and Spirits', 6, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(13, 'Kenmosa 1', 7, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(14, 'Kenmosa 2', 7, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(15, 'Milimani 1', 8, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(16, 'Milimani 2', 8, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(17, 'Kiamunyi 1', 9, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(18, 'Kiamunyi 2', 9, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(19, 'City Mall 1', 10, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(20, 'City Mall 2', 10, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(21, 'Bamburi 1', 11, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(22, 'Bamburi 2', 11, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(23, 'Honolulu 1', 12, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(24, 'Honolulu 2', 12, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(25, 'Kitengela 1', 13, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(26, 'Kitengela 2', 13, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(27, 'Balozi 1', 14, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(28, 'Balozi 2', 14, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(29, 'Milimani 1', 15, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(31, 'Weighbridge 1', 16, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(33, 'Dam 1', 18, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(35, 'Uthiru 1', 19, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(37, 'Kinoo 1', 20, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(39, 'Kiambu 1', 21, '2020-04-14 08:57:43', '2020-04-14 08:57:43'),
(41, 'Mabati 1', 17, '2020-04-14 08:57:43', '2020-04-14 08:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Stacy Anne', 'stacyanne01@gmail.com', NULL, '$2y$10$FMbOd0.B8sxx4kde6eX3a./BxP9qx8.HQAgB1DjT9QeqRvuZVMueu', NULL, '2020-04-12 14:26:39', '2020-04-12 14:26:39', 0),
(2, 'Min Yoongi', 'min@gmail.com', NULL, '$2y$10$NuEe/Dw1DJm/aOtZXN3.m.1b6GP8dE5RN3fXBXBapm7uLoPpx84rK', 'L6pPBPuidXZpstZkp0VVG1MDof50s0GXBhfCZWC66OUOhb3rQoDQycVZCm8b', '2020-04-14 05:06:59', '2020-04-14 05:06:59', 706960287);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_city_id_foreign` (`city_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_store`
--
ALTER TABLE `product_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_locations_id_foreign` (`locations_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_store`
--
ALTER TABLE `product_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_locations_id_foreign` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
