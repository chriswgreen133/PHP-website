-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 04:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commentbank`
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
-- Table structure for table `introduction_materials`
--

CREATE TABLE `introduction_materials` (
  `comments_id` int(10) UNSIGNED NOT NULL,
  `comment_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_tone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `introduction_materials`
--

INSERT INTO `introduction_materials` (`comments_id`, `comment_name`, `comment_tone`, `is_verified`, `firstname`, `surname`, `email`, `created_at`, `updated_at`) VALUES
(1, 'There is little or no introductory material and there has been a tendency to dive into the ‘meat’ of the work without preparing the reader, by leading gradually into the subject-matter.', 'n', 1, 'ab', 'ab', 'ab@gmail.com', NULL, '2022-04-06 13:36:29'),
(2, 'The scope of the introductory material is inadequate and there is insufficient review of relevant background information which underpins the work being reported; There should be adequate referencing within the introduction to demonstrate relevant wider reading in the relevant areas, cognate with the topic.', 'p', 1, 'av', 'av', 'av@gmail.com', NULL, '2022-04-06 13:37:31'),
(3, 'Irrelevant or inappropriate material has been included in the introductory material.', 'p', 1, 'ac43', 'a4', '4c@gmail.com', NULL, '2022-04-06 11:23:31'),
(4, 'dsdds', 'p', 0, 'dfdf', 'dfd', 'dfd@gmail.com', '2022-04-06 14:09:03', '2022-04-06 14:09:03'),
(5, 'dsdds', 'p', 0, 'dfdf', 'dfd', 'dfd@gmail.com', '2022-04-06 14:09:03', '2022-04-06 14:09:03');

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
(5, '2022_04_04_170132_create_introduction_materials_table', 1),
(6, '2022_04_04_172702_create_terminology_table', 1);

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
-- Table structure for table `terminology`
--

CREATE TABLE `terminology` (
  `comments_id` int(10) UNSIGNED NOT NULL,
  `comment_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_tone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terminology`
--

INSERT INTO `terminology` (`comments_id`, `comment_name`, `comment_tone`, `is_verified`, `firstname`, `surname`, `email`, `created_at`, `updated_at`) VALUES
(2, 'The method/methodology has not been justified through presentation of potential alternatives and resulting justification of the selected method on a balanced and well reasoned basis.', 'n', 0, 'al', 'al', 'al@gmail.com', NULL, NULL),
(4, 'Important assumptions have not been addressed/stated.4343', 'n', 1, 'ec', 'ec', 'ec@gmail.com', NULL, '2022-04-06 13:28:23'),
(5, 'Fundamental flaws in methodology have been noted.434', 'p', 1, 'ff', 'ff', 'ff@gmail.com', '2022-04-05 05:36:39', '2022-04-06 13:36:16'),
(6, 'Standard and well accepted approaches have not been adopted, without clear justification for avoiding these.', 'p', 0, 'sw', 'ws', 'sw@gmail.com', '2022-04-05 05:37:58', '2022-04-05 05:37:58'),
(7, 'The presentation of mathematics has clear deficiencies e.g. errors are present; wrong symbols have been used, Greek letters are absent or incorrect, subscripts and/or superscripts are missing; equation layout is flawed.', 'p', 0, 'Pm', 'D', 'pm@gmail.com', '2022-04-05 05:38:44', '2022-04-05 05:38:44'),
(8, 'Important equations/expressions have not been properly numbered in sequence.', 'p', 0, 'IE', 'EX', 'ie@yahoo.com', '2022-04-05 05:42:01', '2022-04-05 05:42:01'),
(9, 'Key steps are missing in the development of equations/expressions.', 'p', 0, 'k', 's', 'ks@gmail.com', '2022-04-05 05:42:32', '2022-04-05 05:42:32'),
(10, 'Excessive detail has been included in the development of equations/expressions.', 'p', 0, 'ED', 'DH', 'EDDH@gmail.com', '2022-04-05 05:45:15', '2022-04-05 05:45:15'),
(11, 'Excessive detail has been included in the development of equations/expressions.', 'p', 0, 'ED', 'DH', 'EDDH@gmail.com', '2022-04-05 05:49:37', '2022-04-05 05:49:37'),
(12, 'Excessive detail has been included in the development of equations/expressions.', 'p', 0, 'ED', 'DH', 'EDDH@gmail.com', '2022-04-05 06:02:16', '2022-04-05 06:02:16'),
(13, 'Excessive detail has been included in the development of equations/expressions.', 'p', 1, 'ED', 'DH', 'EDDH@gmail.com', '2022-04-05 06:03:20', '2022-04-06 13:36:22'),
(14, 'Excessive detail has been included in the development of equations/expressions.34343', 'p', 1, 'ED', 'DH', 'EDDH@gmail.com', '2022-04-05 06:57:34', '2022-04-06 14:28:04'),
(16, 'dfdfdf', 'p', 0, 'dfds', 'dfd', 'dfd@gmail.com', '2022-04-06 15:37:09', '2022-04-06 15:37:09'),
(17, 'Abbreviations and/or acronyms do not follow normal conventions or have not been explicitly defined at the first mention.', 'p', 0, 'chris', 'green', 'chris@gmail.com', '2022-04-07 04:46:53', '2022-04-07 04:46:53');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$t7DrLGpIlktsL8GxAEJCy.vvmFq/SpX7qDrlfFAgvlDkzvY/.nJHS', 'RZ8WVB95nFHtxeWwiJDscJtgVOTRXdcyE9k1fKwO0WuHmCbrrmOrvBQ5B4km', '2022-04-04 12:33:46', '2022-04-04 12:33:46');

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
-- Indexes for table `introduction_materials`
--
ALTER TABLE `introduction_materials`
  ADD PRIMARY KEY (`comments_id`);

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
-- Indexes for table `terminology`
--
ALTER TABLE `terminology`
  ADD PRIMARY KEY (`comments_id`);

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
-- AUTO_INCREMENT for table `introduction_materials`
--
ALTER TABLE `introduction_materials`
  MODIFY `comments_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terminology`
--
ALTER TABLE `terminology`
  MODIFY `comments_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
