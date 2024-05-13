-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2024 at 09:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missionstage`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
                         `key` varchar(255) NOT NULL,
                         `value` mediumtext NOT NULL,
                         `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
                               `key` varchar(255) NOT NULL,
                               `owner` varchar(255) NOT NULL,
                               `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
                            `comment_id` int NOT NULL,
                            `user_id` int NOT NULL,
                            `recipe_id` int NOT NULL,
                            `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `recipe_id`, `comment`) VALUES
                                                                             (1, 1, 1, 'abeulalal'),
                                                                             (2, 1, 1, 'reere'),
                                                                             (3, 1, 1, 'xw'),
                                                                             (4, 3, 1, 'heybro');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
                               `id` bigint UNSIGNED NOT NULL,
                               `uuid` varchar(255) NOT NULL,
                               `connection` text NOT NULL,
                               `queue` text NOT NULL,
                               `payload` longtext NOT NULL,
                               `exception` longtext NOT NULL,
                               `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
                        `id` bigint UNSIGNED NOT NULL,
                        `queue` varchar(255) NOT NULL,
                        `payload` longtext NOT NULL,
                        `attempts` tinyint UNSIGNED NOT NULL,
                        `reserved_at` int UNSIGNED DEFAULT NULL,
                        `available_at` int UNSIGNED NOT NULL,
                        `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
                               `id` varchar(255) NOT NULL,
                               `name` varchar(255) NOT NULL,
                               `total_jobs` int NOT NULL,
                               `pending_jobs` int NOT NULL,
                               `failed_jobs` int NOT NULL,
                               `failed_job_ids` longtext NOT NULL,
                               `options` mediumtext,
                               `cancelled_at` int DEFAULT NULL,
                               `created_at` int NOT NULL,
                               `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
                              `id` int UNSIGNED NOT NULL,
                              `migration` varchar(255) NOT NULL,
                              `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
                                                          (1, '0001_01_01_000000_create_users_table', 1),
                                                          (2, '0001_01_01_000001_create_cache_table', 1),
                                                          (3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
                                         `email` varchar(255) NOT NULL,
                                         `token` varchar(255) NOT NULL,
                                         `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
                           `recipe_id` int NOT NULL,
                           `title` varchar(128) NOT NULL,
                           `recipe` text NOT NULL,
                           `author` varchar(255) NOT NULL,
                           `is_enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `title`, `recipe`, `author`, `is_enabled`) VALUES
                                                                                   (1, 'PatesBolo', 'Viande et sauce tomate', 'zoubi@gmail.com', 1),
                                                                                   (2, 'Gato', 'Sucre,Farine,Piment,Tabasco', 'Zouba@gmail.com', 1),
                                                                                   (3, 'Poulet Pané', 'Oeufs,Farine,Chapelure et poulet et oui dans du poulet pané il y a du poulet', 'Zoubidos@gmail.com', 1),
                                                                                   (4, 'Burgir', 'Steakir,Formagir,Cornichir,tomatir,oignonir,saladinir,saucinir', 'Zoubida@gmail.com', 1),
                                                                                   (6, 'TripleMonstre', 'Mettez du rat dans un kebab et vous avez la recette ! MIAMMMMMMa', 'zoubi@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
                            `id` varchar(255) NOT NULL,
                            `user_id` bigint UNSIGNED DEFAULT NULL,
                            `ip_address` varchar(45) DEFAULT NULL,
                            `user_agent` text,
                            `payload` longtext NOT NULL,
                            `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
    ('9ShghdnW1AwNldOQ9s0IUSAmqcqRk6sEobIaiQQ6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYm5QT1loZGtCY3VLSXlJcVlpRWlPamNKRHRPY0NjWGpQbkF6WlVSUCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715075724);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `id` bigint UNSIGNED NOT NULL,
                         `name` varchar(255) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) NOT NULL,
                         `remember_token` varchar(100) DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                               (1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$9KTT99sAm2SVdEJDRm4o3uc1nDnGA2gqhaMYLeIS6iPKkU3XylxZ6', 'c1HNxlYiejqbyvtqN0B0s1MSTpXeu7NiJci9NDfrJQRqjouO0uxPbuYJiNij', '2024-05-02 11:20:39', '2024-05-02 11:43:37'),
                                                                                                                               (2, 'user1', 'user1@gmail.com', NULL, '$2y$12$L9aGKPwnd4DD/sefzW0wJO6YHBDREll/GyB65/3dMSRPxEMbqlBuC', NULL, '2024-05-03 04:20:06', '2024-05-03 04:20:06'),
                                                                                                                               (3, 'user2', 'user2@gmail.com', NULL, '$2y$12$D/wLevfY6L9RIzdqybJWBezcFY4wYwGGAignug3JHbsr.f6EXSGpG', NULL, '2024-05-03 04:20:36', '2024-05-03 04:20:36'),
                                                                                                                               (4, 'user3', 'user3@gmail.com', NULL, '$2y$12$.63BmNdtzNnTSr6FH9YZN.ZDKvP8uU9i8RkZN0GlNRGo2CmLzt68a', NULL, '2024-05-03 04:21:13', '2024-05-03 04:21:13');

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
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
    ADD PRIMARY KEY (`recipe_id`);

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
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
    MODIFY `recipe_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
