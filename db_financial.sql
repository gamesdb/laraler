-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 09:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_financial`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_09_105736_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('income','expense') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `date`, `category`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, '1010.50', '2024-11-23', 'Salary', 'income', 'Monthly salary payment 1', '2024-11-22 20:22:25', '2024-11-23 00:50:52'),
(2, '510.00', '2024-11-23', 'Groceries', 'expense', 'Shopping for groceries', '2024-11-22 20:22:25', '2024-11-23 00:34:49'),
(3, '743.93', '2024-11-21', 'Cosplay', 'income', 'Voluptatibus et itaque sed est consequatur.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(4, '293.42', '2024-11-04', 'Idol', 'expense', 'Qui quod eius voluptas saepe quia.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(5, '368.62', '2024-11-14', 'Subscription', 'income', 'Aut tempore illum autem cupiditate et.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(6, '439.73', '2024-11-14', 'Cosplay', 'income', 'Veniam tempora aut quo dolor omnis at est.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(7, '785.10', '2024-10-29', 'Movie', 'expense', 'Nobis cupiditate totam in.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(8, '839.34', '2024-10-26', 'Food', 'income', 'Iure similique quam aperiam iusto repellendus eos qui.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(9, '920.36', '2024-11-21', 'Gaming', 'income', 'Reiciendis occaecati ex consequatur sint.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(10, '619.70', '2024-11-13', 'Gaming', 'expense', 'Et in odit enim velit.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(11, '191.67', '2024-10-31', 'Shopping', 'expense', 'Est optio a aut est qui quisquam.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(12, '655.05', '2024-10-26', 'Shopping', 'income', 'Reiciendis odit ad unde ut.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(13, '768.81', '2024-11-17', 'Movie', 'income', 'Asperiores repudiandae nostrum quidem veniam corrupti aspernatur quia.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(14, '10.12', '2024-11-13', 'Cosplay', 'income', 'Unde aliquid totam et ea officiis unde consequatur dolorem.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(15, '459.75', '2024-10-27', 'Utilities', 'expense', 'Eligendi ut quo possimus sed vero.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(16, '27.28', '2024-11-21', 'Utilities', 'income', 'Quia nobis quam aut numquam est minima nisi.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(17, '824.04', '2024-11-04', 'Utilities', 'income', 'Vel alias at eaque dicta explicabo quaerat sint.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(18, '438.36', '2024-10-31', 'Shopping', 'expense', 'Odit praesentium officia et asperiores eum.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(19, '322.55', '2024-11-05', 'Subscription', 'expense', 'Consequatur eveniet tenetur assumenda.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(20, '887.73', '2024-11-03', 'Subscription', 'income', 'Aliquid quis quam consequuntur id.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(21, '309.77', '2024-10-29', 'Gaming', 'income', 'Omnis sit et rerum qui neque quia.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(22, '958.51', '2024-11-07', 'Food', 'expense', 'Magnam quo ipsa tempore aliquam voluptatum quisquam quo.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(23, '659.82', '2024-11-09', 'Movie', 'expense', 'Autem quaerat asperiores dolores et.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(24, '522.76', '2024-11-22', 'Gaming', 'income', 'Est ad commodi eos rem non nihil.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(25, '570.88', '2024-10-29', 'Idol', 'expense', 'Labore autem velit est.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(26, '702.50', '2024-11-03', 'Shopping', 'expense', 'Tempora illum molestias culpa ad odio.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(27, '707.32', '2024-10-31', 'Cosplay', 'expense', 'Perspiciatis facilis quidem laudantium.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(28, '163.54', '2024-10-31', 'Subscription', 'income', 'Accusantium nobis non error eum.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(29, '910.93', '2024-10-29', 'Shopping', 'expense', 'Deleniti ratione velit odit dicta dolore fuga.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(30, '365.75', '2024-11-02', 'Food', 'expense', 'Assumenda numquam ducimus et sapiente.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(31, '718.00', '2024-10-29', 'Food', 'income', 'Non aut officiis impedit eum sint qui vitae.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(32, '210.30', '2024-10-31', 'Food', 'income', 'Ipsum ut quisquam quibusdam rerum veniam.', '2024-11-22 20:24:02', '2024-11-22 20:24:02'),
(33, '100.00', '2024-11-23', 'cosplay', 'income', 'ya', '2024-11-22 21:40:45', '2024-11-22 21:40:45'),
(34, '100.00', '2024-11-23', 'cosplay', 'income', 'Ya', '2024-11-22 21:41:18', '2024-11-22 21:41:18'),
(35, '100.00', '2024-11-23', 'gaming', 'income', 'Buy hentai deluxe', '2024-11-22 21:42:42', '2024-11-22 21:42:42'),
(36, '500.00', '2024-11-23', 'gaming', 'income', 'Buy Hentai deluxe', '2024-11-22 21:43:24', '2024-11-22 21:43:24'),
(37, '213.00', '2024-11-23', 'gaming', 'income', 'Buy hentai', '2024-11-22 21:44:38', '2024-11-22 21:44:38'),
(38, '123.00', '2024-11-23', 'gaming', 'income', '2', '2024-11-22 21:45:17', '2024-11-22 21:45:17'),
(39, '124.00', '2024-11-23', 'gaming', 'income', 'buy hentai', '2024-11-22 21:47:12', '2024-11-22 21:47:12'),
(40, '123.00', '2024-11-23', 'gaming', 'income', 'Hentai deluxe', '2024-11-22 21:48:58', '2024-11-22 21:48:58'),
(41, '123.00', '2024-11-23', 'gaming', 'income', 'hentai deluxe', '2024-11-22 21:50:56', '2024-11-22 21:50:56'),
(42, '69.00', '2024-11-23', 'gaming', 'income', 'Buying hentai deluxe', '2024-11-22 21:51:26', '2024-11-22 21:51:26'),
(43, '420.00', '2024-11-23', 'idol', 'income', 'Buy cheki', '2024-11-22 21:52:46', '2024-11-22 21:52:46'),
(44, '232.00', '2024-11-23', 'gaming', 'expense', 'Buying hentai deluxe', '2024-11-22 21:55:24', '2024-11-22 21:55:24'),
(45, '900.00', '2024-11-23', 'Idol', 'expense', 'Cheki with my love prew', '2024-11-23 00:13:57', '2024-11-23 00:13:57'),
(46, '10000.00', '2024-11-23', 'Salary', 'income', 'Working hard', '2024-11-23 00:14:20', '2024-11-23 00:14:20'),
(47, '510.00', '2024-11-23', 'Groceries', 'income', 'Shopping for groceries 1', '2024-11-23 00:55:26', '2024-11-23 00:55:26');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
