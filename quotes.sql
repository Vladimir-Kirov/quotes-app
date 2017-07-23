-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 юли 2017 в 15:06
-- Версия на сървъра: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotes`
--

-- --------------------------------------------------------

--
-- Структура на таблица `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `authors`
--

INSERT INTO `authors` (`id`, `created_at`, `updated_at`, `name`, `email`) VALUES
(1, '2017-06-27 15:32:39', '2017-06-27 15:32:39', 'Vladimir Kirov', 'vladimir__kirov@abv.bg'),
(2, '2017-06-27 15:34:26', '2017-06-27 15:34:26', 'Yordan Enev', 'yordan.enev@gmail.com'),
(3, '2017-06-27 15:36:17', '2017-06-27 15:36:17', 'Albert Einstein', 'a_einstein@gmail.com'),
(4, '2017-06-27 15:38:26', '2017-06-27 15:38:26', 'Peter', 'peter@gmail.com'),
(5, '2017-07-01 08:57:35', '2017-07-01 08:57:35', 'Ivan Ivanov', 'ivan@gmail.com');

-- --------------------------------------------------------

--
-- Структура на таблица `author_log`
--

CREATE TABLE `author_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `author_log`
--

INSERT INTO `author_log` (`id`, `created_at`, `updated_at`, `author`) VALUES
(1, '2017-06-27 16:08:49', '2017-06-27 16:08:49', 'Peter');

-- --------------------------------------------------------

--
-- Структура на таблица `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_17_194526_create_authors_table', 1),
(4, '2017_06_17_194736_create_quotes_table', 1),
(5, '2017_06_19_182443_create_quote_logs_table', 1),
(6, '2017_06_19_182705_create_author_logs_table', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `quotes`
--

INSERT INTO `quotes` (`id`, `created_at`, `updated_at`, `quote`, `author_id`) VALUES
(1, '2017-06-27 15:32:39', '2017-06-27 15:32:39', 'A day without laughter is a day wasted ...', 1),
(2, '2017-06-27 15:33:01', '2017-06-27 15:33:01', '"Where there''s a will there''s a way"', 1),
(3, '2017-06-27 15:34:26', '2017-06-27 15:34:26', 'Clever man know more than one says !', 2),
(4, '2017-06-27 15:36:17', '2017-06-27 15:36:17', '"It is impossible to deal with the problem using the same type of thinking that you brought this problem."', 3),
(5, '2017-06-27 15:37:00', '2017-06-27 15:37:00', '"Everything should be made as simple as possible, but not simpler".', 3),
(6, '2017-06-27 15:37:31', '2017-06-27 15:37:31', '~ IMAGINATION IS EVERYTHING ~', 3),
(7, '2017-06-27 15:38:26', '2017-06-27 15:38:26', '"To love is easier than you to show your love"', 4),
(8, '2017-07-01 08:57:35', '2017-07-01 08:57:35', 'Hello!', 5);

-- --------------------------------------------------------

--
-- Структура на таблица `quote_log`
--

CREATE TABLE `quote_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `quote_log`
--

INSERT INTO `quote_log` (`id`, `created_at`, `updated_at`, `author`) VALUES
(1, '2017-06-27 15:32:39', '2017-06-27 15:32:39', 'Vladimir Kirov'),
(2, '2017-06-27 15:33:01', '2017-06-27 15:33:01', 'Vladimir Kirov'),
(3, '2017-06-27 15:34:26', '2017-06-27 15:34:26', 'Yordan Enev'),
(4, '2017-06-27 15:36:17', '2017-06-27 15:36:17', 'Albert Einstein'),
(5, '2017-06-27 15:37:00', '2017-06-27 15:37:00', 'Albert Einstein'),
(6, '2017-06-27 15:37:32', '2017-06-27 15:37:32', 'Albert Einstein'),
(7, '2017-06-27 15:38:26', '2017-06-27 15:38:26', 'Peter'),
(8, '2017-07-01 08:57:35', '2017-07-01 08:57:35', 'Ivan Ivanov');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_log`
--
ALTER TABLE `author_log`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_log`
--
ALTER TABLE `quote_log`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `author_log`
--
ALTER TABLE `author_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_log`
--
ALTER TABLE `quote_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
