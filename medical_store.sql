-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 08:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Super Admin' COMMENT 'Admin|Super Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone_no`, `avatar`, `remember_token`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Lebu', 'admin@gmail.com', '$2y$10$GfJqO.q9yXlOyJBJyzFXAOhOHJHBjLatlo6Fts/3gM44dArcUFoVu', '01715021790', NULL, NULL, 'Super Admin', '2019-03-21 01:08:06', '2019-03-19 21:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Insepta', 'Lorem ipsum', NULL, '2019-03-25 00:40:28', '2019-03-25 00:40:28'),
(2, 'Square', 'ghgjhghj', NULL, '2019-03-25 00:41:05', '2019-03-25 00:41:05'),
(3, 'Drug international', 'all types of medicine', NULL, '2019-03-26 02:30:39', '2019-03-26 02:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(6, 4, 1, 4, '::1', 1, '2019-03-27 23:28:41', '2019-03-27 23:29:57'),
(7, 4, 1, 5, '::1', 1, '2019-03-27 23:32:38', '2019-03-27 23:33:15'),
(8, 4, 2, 6, '::1', 1, '2019-03-30 00:31:45', '2019-03-30 00:32:30'),
(10, 4, 2, 7, '::1', 1, '2019-03-30 03:33:25', '2019-03-30 03:34:15'),
(11, 5, NULL, 8, '::1', 1, '2019-04-19 01:49:32', '2019-04-19 01:50:54'),
(12, 12, NULL, 8, '::1', 1, '2019-04-19 01:49:37', '2019-04-19 01:50:54'),
(13, 13, NULL, 8, '::1', 1, '2019-04-19 01:49:51', '2019-04-19 01:50:54'),
(14, 13, NULL, 9, '::1', 1, '2019-04-19 23:43:49', '2019-04-19 23:46:58'),
(15, 12, NULL, 9, '::1', 1, '2019-04-19 23:45:20', '2019-04-19 23:46:58'),
(16, 9, NULL, 9, '::1', 1, '2019-04-19 23:45:35', '2019-04-19 23:46:58'),
(17, 13, NULL, NULL, '::1', 1, '2019-04-19 23:51:42', '2019-04-19 23:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(5, 'Allergy Medicine', NULL, '1555656910.jpg', NULL, '2019-04-19 00:55:10', '2019-04-19 00:55:39'),
(6, 'Fever', NULL, '1555656980.jpg', NULL, '2019-04-19 00:56:20', '2019-04-19 00:56:20'),
(7, 'Cholera', NULL, '1555657043.jpg', NULL, '2019-04-19 00:57:23', '2019-04-19 00:57:23'),
(8, 'Asthma', NULL, '1555657074.jpg', NULL, '2019-04-19 00:57:54', '2019-04-19 00:57:54'),
(9, 'Diabetes', NULL, '1555657099.jpg', NULL, '2019-04-19 00:58:19', '2019-04-19 00:58:19'),
(10, 'Lupus', NULL, '1555657122.jpg', NULL, '2019-04-19 00:58:42', '2019-04-19 00:58:42'),
(11, 'High Blood Pressure', NULL, '1555657151.jpg', NULL, '2019-04-19 00:59:11', '2019-04-19 00:59:11'),
(12, 'Liver Disease', NULL, '1555657174.png', NULL, '2019-04-19 00:59:34', '2019-04-19 00:59:34'),
(13, 'Stomach Alcer', NULL, '1555657197.jpg', NULL, '2019-04-19 00:59:57', '2019-04-19 00:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `disease_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `disease_name`, `medicine_name`, `created_at`, `updated_at`) VALUES
(1, 'Alergy', 'Alatrol', '2019-03-26 02:21:07', '2019-04-19 00:37:49'),
(2, 'Fever', 'Napa', '2019-03-26 02:21:50', '2019-03-26 02:21:50'),
(3, 'Campylobacteriousis', 'Azithromycin 100mg', '2019-03-27 23:20:24', '2019-03-27 23:20:24'),
(4, 'Cholera', 'Doxycycline', '2019-04-19 00:27:38', '2019-04-19 00:27:38'),
(5, 'Asthma', 'Ventolin HFA', '2019-04-19 00:29:16', '2019-04-19 00:29:16'),
(6, 'Diabetes', 'Metformin', '2019-04-19 00:30:45', '2019-04-19 00:30:45'),
(7, 'Lupus', 'Plaquenil', '2019-04-19 00:31:59', '2019-04-19 00:31:59'),
(8, 'High Blood Pressure', 'Hydralazine', '2019-04-19 00:33:32', '2019-04-19 00:33:32'),
(9, 'Liver Disease', 'Acetylealth 600', '2019-04-19 00:35:19', '2019-04-19 00:35:19'),
(10, 'Stomach Alcer', 'Nexium 20', '2019-04-19 00:36:29', '2019-04-19 00:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Tangail', 1, '2019-03-27 23:35:56', '2019-03-27 23:35:56'),
(2, 'Gazipur', 1, '2019-04-19 01:15:20', '2019-04-19 01:15:20'),
(3, 'Manikganj', 1, '2019-04-19 01:15:41', '2019-04-19 01:15:41'),
(4, 'Narayanganj', 1, '2019-04-19 01:16:14', '2019-04-19 01:16:14'),
(5, 'Faridpur', 1, '2019-04-19 01:16:33', '2019-04-19 01:16:33'),
(6, 'Rajbari', 1, '2019-04-19 01:16:55', '2019-04-19 01:16:55'),
(7, 'Kishoreganj', 1, '2019-04-19 01:17:25', '2019-04-19 01:17:25'),
(8, 'Narshingdi', 1, '2019-04-19 01:17:41', '2019-04-19 01:17:41'),
(9, 'Dinajpur', 3, '2019-04-19 01:18:21', '2019-04-19 01:18:21'),
(10, 'Thakurgaon', 3, '2019-04-19 01:18:48', '2019-04-19 01:18:48'),
(11, 'Rangpur', 3, '2019-04-19 01:19:02', '2019-04-19 01:19:02'),
(12, 'Panchangarh', 3, '2019-04-19 01:19:22', '2019-04-19 01:19:22'),
(13, 'Dhaka', 1, '2019-04-19 01:19:34', '2019-04-19 01:19:34'),
(14, 'Nilphamari', 3, '2019-04-19 01:19:55', '2019-04-19 01:19:55'),
(15, 'Lalmonirhat', 3, '2019-04-19 01:20:13', '2019-04-19 01:20:13'),
(16, 'Kurigram', 3, '2019-04-19 01:20:25', '2019-04-19 01:20:25'),
(17, 'Gaibandha', 3, '2019-04-19 01:20:46', '2019-04-19 01:20:46'),
(18, 'Rajshahi', 2, '2019-04-19 01:21:23', '2019-04-19 01:21:23'),
(19, 'Bagura', 2, '2019-04-19 01:21:44', '2019-04-19 01:21:44'),
(20, 'Chapainawabganj', 2, '2019-04-19 01:22:01', '2019-04-19 01:22:01'),
(21, 'Jayputhat', 2, '2019-04-19 01:22:16', '2019-04-19 01:22:16'),
(22, 'Nauga', 2, '2019-04-19 01:22:37', '2019-04-19 01:22:37'),
(23, 'Natore', 2, '2019-04-19 01:22:49', '2019-04-19 01:22:49'),
(24, 'Pabna', 2, '2019-04-19 01:23:03', '2019-04-19 01:23:03'),
(25, 'Sirajgonj', 2, '2019-04-19 01:23:23', '2019-04-19 01:23:23'),
(26, 'Sylhet', 4, '2019-04-19 01:24:06', '2019-04-19 01:24:06'),
(27, 'Hobigonj', 4, '2019-04-19 01:24:25', '2019-04-19 01:24:25'),
(28, 'Moulovibajar', 4, '2019-04-19 01:24:49', '2019-04-19 01:24:49'),
(29, 'Sunamganj', 4, '2019-04-19 01:25:02', '2019-04-19 01:25:02'),
(30, 'Chottogram', 5, '2019-04-19 01:25:40', '2019-04-19 01:25:40'),
(31, 'Brahmanbaria', 5, '2019-04-19 01:25:55', '2019-04-19 01:25:55'),
(32, 'Comilla', 5, '2019-04-19 01:26:17', '2019-04-19 01:26:17'),
(33, 'Chandpur', 5, '2019-04-19 01:26:30', '2019-04-19 01:26:30'),
(34, 'Lokkhipur', 5, '2019-04-19 01:26:53', '2019-04-19 01:26:53'),
(35, 'Noakhali', 5, '2019-04-19 01:27:05', '2019-04-19 01:27:05'),
(36, 'Feni', 5, '2019-04-19 01:27:16', '2019-04-19 01:27:16'),
(37, 'Cox\'s bazar', 5, '2019-04-19 01:27:47', '2019-04-19 01:27:58'),
(38, 'Khagrachori', 5, '2019-04-19 01:28:14', '2019-04-19 01:28:14'),
(39, 'Rangamati', 5, '2019-04-19 01:28:27', '2019-04-19 01:28:27'),
(40, 'Bandarban', 5, '2019-04-19 01:28:41', '2019-04-19 01:28:41'),
(41, 'Bagerhat', 6, '2019-04-19 01:29:24', '2019-04-19 01:29:24'),
(42, 'Chuadanga', 6, '2019-04-19 01:29:40', '2019-04-19 01:29:40'),
(43, 'Jessore', 6, '2019-04-19 01:29:54', '2019-04-19 01:29:54'),
(44, 'Khulna', 6, '2019-04-19 01:30:07', '2019-04-19 01:30:07'),
(45, 'Kushtia', 6, '2019-04-19 01:30:24', '2019-04-19 01:30:24'),
(46, 'Magura', 6, '2019-04-19 01:30:38', '2019-04-19 01:30:38'),
(47, 'Meherpur', 6, '2019-04-19 01:30:53', '2019-04-19 01:30:53'),
(48, 'Shatkhira', 6, '2019-04-19 01:31:11', '2019-04-19 01:31:31'),
(49, 'Narail', 6, '2019-04-19 01:31:45', '2019-04-19 01:31:45'),
(50, 'Barishal', 7, '2019-04-19 01:32:33', '2019-04-19 01:32:33'),
(51, 'Borguna', 7, '2019-04-19 01:32:46', '2019-04-19 01:32:46'),
(52, 'Bhola', 7, '2019-04-19 01:33:00', '2019-04-19 01:33:00'),
(53, 'Jhalokathi', 7, '2019-04-19 01:33:23', '2019-04-19 01:33:23'),
(54, 'Pirojpur', 7, '2019-04-19 01:33:36', '2019-04-19 01:33:36'),
(55, 'Patuakhali', 7, '2019-04-19 01:33:52', '2019-04-19 01:33:52'),
(56, 'Mymensingh', 8, '2019-04-19 01:34:06', '2019-04-19 01:34:06'),
(57, 'Sherpur', 8, '2019-04-19 01:34:19', '2019-04-19 01:34:19'),
(58, 'Jamalpur', 8, '2019-04-19 01:34:32', '2019-04-19 01:34:32'),
(59, 'Netrokona', 8, '2019-04-19 01:34:47', '2019-04-19 01:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2019-03-27 23:35:30', '2019-03-27 23:35:30'),
(2, 'Rajshahi', 2, '2019-04-19 01:12:33', '2019-04-19 01:12:33'),
(3, 'Rangpur', 3, '2019-04-19 01:12:54', '2019-04-19 01:12:54'),
(4, 'Sylhet', 4, '2019-04-19 01:13:08', '2019-04-19 01:13:08'),
(5, 'Chottogram', 5, '2019-04-19 01:13:22', '2019-04-19 01:13:22'),
(6, 'Khulna', 6, '2019-04-19 01:13:36', '2019-04-19 01:13:36'),
(7, 'Barishal', 7, '2019-04-19 01:13:58', '2019-04-19 01:13:58'),
(8, 'Mymensingh', 8, '2019-04-19 01:14:12', '2019-04-19 01:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

CREATE TABLE `mappings` (
  `id` int(10) UNSIGNED NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`id`, `symptom_id`, `disease_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2019-03-26 02:22:18', '2019-03-26 02:22:18'),
(2, 1, 1, '2019-03-26 02:22:43', '2019-03-26 02:22:43'),
(3, 3, 3, '2019-03-27 23:20:56', '2019-03-27 23:20:56'),
(4, 4, 4, '2019-04-19 01:38:46', '2019-04-19 01:38:46'),
(5, 5, 5, '2019-04-19 01:39:11', '2019-04-19 01:39:11'),
(6, 6, 6, '2019-04-19 01:39:32', '2019-04-19 01:39:32'),
(7, 7, 7, '2019-04-19 01:39:47', '2019-04-19 01:39:47'),
(8, 8, 8, '2019-04-19 01:40:08', '2019-04-19 01:40:08'),
(9, 9, 9, '2019-04-19 01:40:25', '2019-04-19 01:40:25'),
(10, 10, 10, '2019-04-19 01:40:35', '2019-04-19 01:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_tb`
--

CREATE TABLE `mapping_tb` (
  `map_id` int(11) NOT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `symptom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapping_tb`
--

INSERT INTO `mapping_tb` (`map_id`, `disease_id`, `symptom_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 4, 11),
(12, 4, 12),
(13, 4, 13),
(14, 4, 14);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2018_02_22_165732_create_products_table', 1),
(21, '2018_02_23_014906_create_categories_table', 1),
(22, '2018_02_23_015040_create_brands_table', 1),
(23, '2018_02_23_015128_create_admins_table', 1),
(24, '2018_02_23_020211_create_product_images_table', 1),
(25, '2018_07_21_115850_create_divisions_table', 1),
(26, '2018_07_21_115908_create_districts_table', 1),
(27, '2018_08_28_033110_create_orders_table', 1),
(28, '2018_08_28_034133_create_carts_table', 1),
(29, '2018_08_28_083714_create_settings_table', 1),
(30, '2018_08_28_085245_create_payments_table', 1),
(31, '2019_03_19_194711_create_symptoms_table', 1),
(32, '2019_03_21_205421_create_diseases_table', 1),
(33, '2019_03_22_103655_create_mappings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `shipping_address`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '::1', 'lebu', 'o09898', 'utat', 'labonno@gmail.com', 'bhjjh', 1, 0, 1, '123', '2019-03-25 06:44:46', '2019-03-25 07:13:56'),
(2, NULL, 1, '::1', 'Labonno', '898989', 'uttara,dhaka', 'labonno@gmail.com', 'tttt', 0, 1, 1, '123', '2019-03-25 07:10:13', '2019-03-25 07:13:11'),
(3, NULL, 1, '::1', 'TAHMENA FERDOUS', '01715021790', 'Uttara ,Dhaka', 'labonno@gmail.com', 'Bye Medicine', 0, 1, 1, '123', '2019-03-26 02:26:29', '2019-03-26 02:27:28'),
(4, 1, 1, '::1', 'Rifat Ahmed', '01615021790', 'savar', 'Rifat@gmail.com', NULL, 0, 0, 0, '1526', '2019-03-27 23:29:57', '2019-03-27 23:29:57'),
(5, 1, 1, '::1', 'Rifat Ahmed', '01615021790', 'dhaka', 'Rifat@gmail.com', NULL, 0, 0, 0, '1523', '2019-03-27 23:33:14', '2019-03-27 23:33:14'),
(6, 2, 1, '::1', 'iubat university', '01715021475', 'tangail city', 'iubat@iubat.edu', NULL, 0, 0, 0, '1556', '2019-03-30 00:32:30', '2019-03-30 00:32:30'),
(7, 2, 1, '::1', 'iubat university', '01715021475', 'tangail', 'iubat@iubat.edu', NULL, 0, 0, 1, '12345', '2019-03-30 03:34:15', '2019-04-19 01:35:16'),
(8, NULL, 1, '::1', 'hasan', '01915021790', 'Savar, Dhaka', 'hasan@iubat.edu', NULL, 0, 0, 1, '12345', '2019-04-19 01:50:54', '2019-04-19 02:12:34'),
(9, NULL, 1, '::1', 'Moshiur', '01715021790', 'savar, dhaka', 'moshiur@gmail.com', NULL, 0, 0, 0, '1234', '2019-04-19 23:46:58', '2019-04-19 23:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '1',
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment No',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'agent|personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Rocket', 'rocket.jpg', 1, 'rocket', '017560390917', 'personal', '2019-03-18 18:00:00', '2019-03-21 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(4, 1, 2, 'Azithromycin 100mg', 'Diarrhoea', 'azithromycin-100mg', 60, 50, 0, NULL, 1, '2019-03-27 23:25:59', '2019-03-27 23:25:59'),
(5, 5, 1, 'Alatrol', 'Allergy Medicine', 'alatrol', 50, 20, 0, NULL, 1, '2019-04-19 01:03:21', '2019-04-19 01:03:21'),
(6, 6, 2, 'Napa', 'Fever Medicine', 'napa', 30, 10, 0, NULL, 1, '2019-04-19 01:04:41', '2019-04-19 01:04:41'),
(7, 7, 1, 'Doxycycline', 'Cholera medicine', 'doxycycline', 60, 40, 0, NULL, 1, '2019-04-19 01:05:25', '2019-04-19 01:05:25'),
(8, 8, 2, 'Ventolin HFA', 'Asthma medicine', 'ventolin-hfa', 60, 120, 0, NULL, 1, '2019-04-19 01:06:10', '2019-04-19 01:06:10'),
(9, 9, 3, 'Metformin', 'Diabetes medicine', 'metformin', 80, 150, 0, NULL, 1, '2019-04-19 01:06:58', '2019-04-19 01:06:58'),
(10, 10, 3, 'Plaquenil', 'Medicine for lupus', 'plaquenil', 180, 50, 0, NULL, 1, '2019-04-19 01:07:41', '2019-04-19 01:07:41'),
(11, 11, 3, 'Hydralazine', 'Medicine for High Blood Pressure', 'hydralazine', 60, 12, 0, NULL, 1, '2019-04-19 01:08:52', '2019-04-19 01:08:52'),
(12, 12, 1, 'Acetylealth 600', 'Medicine for liver disease', 'acetylealth-600', 45, 210, 0, NULL, 1, '2019-04-19 01:09:35', '2019-04-19 01:09:35'),
(13, 13, 3, 'Nexium 20', 'Medicine for Stomach Alcer', 'nexium-20', 90, 350, 0, NULL, 1, '2019-04-19 01:11:10', '2019-04-19 01:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Napa.jpg', '2019-03-25 00:44:19', '2019-03-25 00:44:19'),
(3, 3, '1553593659.jpg', '2019-03-26 03:47:39', '2019-03-26 03:47:39'),
(4, 4, '1553750759.jpg', '2019-03-27 23:25:59', '2019-03-27 23:25:59'),
(5, 5, '1555657401.jpg', '2019-04-19 01:03:21', '2019-04-19 01:03:21'),
(6, 6, '1555657481.jpg', '2019-04-19 01:04:41', '2019-04-19 01:04:41'),
(7, 7, '1555657525.jpg', '2019-04-19 01:05:25', '2019-04-19 01:05:25'),
(8, 8, '1555657571.jpg', '2019-04-19 01:06:11', '2019-04-19 01:06:11'),
(9, 9, '1555657618.jpg', '2019-04-19 01:06:58', '2019-04-19 01:06:58'),
(10, 10, '1555657662.jpg', '2019-04-19 01:07:42', '2019-04-19 01:07:42'),
(11, 11, '1555657732.jpg', '2019-04-19 01:08:52', '2019-04-19 01:08:52'),
(12, 12, '1555657775.png', '2019-04-19 01:09:35', '2019-04-19 01:09:35'),
(13, 13, '1555657870.jpg', '2019-04-19 01:11:10', '2019-04-19 01:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'lll@gmail.com', '01712445240', 'uttara,dhaka', 100, '2019-03-18 21:07:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `symptom_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `symptom_name`, `created_at`, `updated_at`) VALUES
(1, 'Red Skin, itching', '2019-03-26 02:20:25', '2019-03-26 02:20:25'),
(2, 'pain, headack', '2019-03-26 02:20:48', '2019-03-26 02:20:48'),
(3, 'Diarrhea,Abdominal pain', '2019-03-27 23:17:42', '2019-03-27 23:17:42'),
(4, 'Nausea and Vomiting, Dehydration', '2019-04-19 00:05:55', '2019-04-19 00:05:55'),
(5, 'Wheezing, Coughing, Chest tightness', '2019-04-19 00:07:22', '2019-04-19 00:07:22'),
(6, 'Increase Thirst, High blood sugar, hunger', '2019-04-19 00:08:20', '2019-04-19 00:08:20'),
(7, 'Low grade fever, loss of appetite', '2019-04-19 00:09:21', '2019-04-19 00:09:21'),
(8, 'Severe Headache, Chest pain, Irregular heartbeat', '2019-04-19 00:10:21', '2019-04-19 00:10:21'),
(9, 'Skin and eys yellowish, Itchy skin, loss of appetite', '2019-04-19 00:12:30', '2019-04-19 00:12:30'),
(10, 'Dull pain in the stomach, weight loss', '2019-04-19 00:13:33', '2019-04-19 00:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Division Table ID',
  `district_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'District Table ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0=Inactive|1=Active|2=Ban',
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `password`, `street_address`, `division_id`, `district_id`, `status`, `ip_address`, `avatar`, `shipping_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rifat', 'Ahmed', 'rifatahmed', '01615021790', 'Rifat@gmail.com', '$2y$10$HcktXyGj2k/oNjF8eCaZhOpOL1ll6PRct84ezadxbKP1bgPd9HQ42', 'dhaka-15', NULL, NULL, 0, '::1', NULL, NULL, 'aAjoNiJVdVY4nCgqqSgjOM9PhWTXcqFGF4GjlWB2LBy9VyiwLs0wqw8G9Th7', '2019-03-27 23:27:52', '2019-03-27 23:27:52'),
(2, 'iubat', 'university', 'iubatuniversity', '01715021475', 'iubat@iubat.edu', '$2y$10$6yfB8um4wK63IpWetNLNPOXk./j.VkAi7r7AS.lQ5lB1N2fmtwW..', 'tangail town', 1, 1, 0, '::1', NULL, NULL, 'JtH6rhNUfhncPM8fuAaAdJYwpMhiBGPMPgLUFAZhPZMQbPCEXr', '2019-03-30 00:31:11', '2019-03-30 00:31:11'),
(7, 'Habib', 'Hosain', 'habibhosain', '01958423685', 'habin@gmail.com', '$2y$10$Wdlnxo477vG1vWCsR43wNeHMV77gC3LO4/88/AQhVUgAuWe2O0AQy', 'chittaging, chitagong', 1, 30, 0, '::1', NULL, NULL, 'UzDYhGvq9V30i6aMEZ48fXqgbhTsoWrL7XKnMnPooGfa26PSTS', '2019-04-19 01:53:14', '2019-04-19 01:53:14'),
(11, 'ratul', 'hasan', 'ratulhasan', '01932587496', 'ratulhasan@gmail.com', '$2y$10$TAbkeDm8bWwJq67UG98gwOt6y2G/RUa0dbNcm5xleJstBBb2hnSMO', 'faridpur, dhaka', 1, 13, 0, '::1', NULL, NULL, 'rLDx8XwMItbiFU7wW2vWbto7FULuJSgjAsTmpTn6fo9d5PtNykUqVZIA1B98', '2019-04-19 01:57:29', '2019-04-19 01:57:29'),
(13, 'Bithi', 'Saha', 'bithisaha', '01920592306', 'Bithi@gmail.com', '$2y$10$F7KgychA4QPs3JMFiGXk2.M4BfIFPDUfdT6Zt2eExK5JwVJbK/PYa', 'dhaka', 1, 13, 0, '::1', NULL, NULL, 'GAebirzMwVg2hcaNHcdGlsUS98JhgmmkleJVqgJKYkgb3Eke8D', '2019-04-19 02:03:55', '2019-04-19 02:03:55'),
(14, 'fariha', 'jahan', 'farihajahan', '01725659832', 'faria@gmail.com', '$2y$10$sPqQQr5/AgrL21ZB3y.BrO2p4ffRREtpDqnm4bzeWkY60cCGh.gDG', 'uttara', 1, 5, 0, '::1', NULL, NULL, 'hsO1fkz9xW4xcxVvHIq6GzHtc4v8n6piCCeeUgLLLUIl2gAgtM', '2019-04-19 23:45:10', '2019-04-19 23:45:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mappings`
--
ALTER TABLE `mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_tb`
--
ALTER TABLE `mapping_tb`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_short_name_unique` (`short_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mappings`
--
ALTER TABLE `mappings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mapping_tb`
--
ALTER TABLE `mapping_tb`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
