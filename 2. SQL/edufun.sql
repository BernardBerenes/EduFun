-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Nov 2024 pada 19.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(2, 'Network Security', '2024-11-05 10:59:33', '2024-11-05 10:59:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `writer_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Machine Learning', 'Ex distinctio aut quia pariatur consequatur. Soluta sint qui aliquam et et voluptatem. Sit laboriosam consequuntur pariatur beatae aut similique. Qui blanditiis aut et rerum autem laudantium quae est. Natus nam rerum provident quae laudantium. Rerum quaerat velit consequatur. Quo ipsum totam quod facere cumque. Eos reprehenderit deserunt aut atque. Recusandae rerum tenetur et magnam.\n\nSint deserunt aliquam dolorum et omnis voluptas voluptatibus. Facere voluptatibus cumque voluptas mollitia. Excepturi voluptate inventore perspiciatis vero. Libero qui aut voluptatum qui modi maxime aliquam. Eos aliquid iusto corporis nemo reiciendis praesentium. Est ea aut sint et omnis. Et blanditiis aspernatur voluptatum molestias maxime.', 'Machine Learning.png', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(2, 1, 2, 'Deep Learning', 'Reiciendis quisquam dignissimos culpa. Consequatur magnam incidunt rem recusandae ab ducimus reiciendis. Eum aut numquam occaecati totam. Quis asperiores perspiciatis quibusdam dolorum. In hic quod eveniet qui. Similique pariatur amet sunt nisi molestias. Ut vel aperiam quis atque dolores aperiam. Voluptatum repellat soluta aut tenetur perferendis ut deserunt. Eos et assumenda ex animi corporis aut. Harum rem architecto dolores quae ut magnam aut. Inventore aliquam et aspernatur debitis est. Reprehenderit nostrum error ducimus sint dicta dolor. Labore in ut cum velit saepe. Qui laboriosam ab dolorem ad earum.\n\nAperiam repudiandae non dolor et labore. Dolorem nihil hic sapiente mollitia quas facilis at quod. Tempora qui rerum quis minima magni laudantium ut. Expedita iste consequatur ea est dolorem eos. Porro et nam eum impedit. Fugit velit voluptatibus non voluptates aut voluptatibus ut. Aliquam aperiam voluptatem dolores aut magni quas. Delectus voluptates sint ut fugiat molestiae labore. Qui voluptas accusantium nihil. Consequatur eum nihil ratione fugiat unde quis. Ut molestias atque et error commodi et. Quos doloremque autem velit molestiae.', 'Deep Learning.jpeg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(3, 1, 2, 'Natural Language Processing', 'Voluptas eos magni sit possimus earum voluptatem laborum. Omnis aut ducimus consectetur. Tempora corrupti quae eaque nostrum odio sunt. Explicabo placeat tempore magni quo repellat vitae quo. Consequuntur optio harum ducimus est minus fuga dolorem optio. Et qui qui sint rem nostrum. Earum atque veniam sunt fugiat. Sit ducimus accusantium perferendis nobis quos. Et voluptas deleniti quia incidunt quia voluptatibus. Deserunt accusantium est earum aspernatur. At corporis occaecati aut maiores.\n\nPorro autem beatae eos. Amet ratione possimus et delectus. Odit consequatur repellendus error dignissimos adipisci optio. Temporibus sit itaque rerum. Voluptatem consequuntur velit est quibusdam quis. Ea cupiditate quisquam repellat porro ea ex. Perferendis commodi et ut quas qui dolorem non.', 'Natural Language Processing.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(4, 2, 3, 'Software Security', 'Non repellendus debitis veniam omnis. Eum deleniti cum quis autem. Mollitia itaque et corrupti ipsam possimus quasi architecto. Corporis eligendi ea amet consequatur. Vel voluptatem illo dolorem rerum. Consectetur aut aut dolorum omnis. Sit doloribus doloribus corrupti deserunt. Et animi nihil ut. Velit eligendi et nulla perspiciatis. Laboriosam tempora accusamus quis doloremque magni commodi.\n\nVel ut minima dignissimos corrupti nisi. Hic quo quas velit voluptate. Earum ad reiciendis voluptatem facilis consectetur omnis est. Omnis qui nulla quia possimus sit dolorem iste. Adipisci tenetur voluptatem repellat occaecati temporibus. Quia sit molestias et quisquam nihil dolorem. Recusandae fugit quia eveniet porro et iusto iste. Sed incidunt recusandae atque dolor voluptatem ut in.', 'Software Security.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(5, 2, 3, 'Network Administration', 'Vel distinctio necessitatibus nesciunt cum consequatur non assumenda. Dolorem enim magnam dolores ut eveniet laudantium architecto. Ad ut ut culpa asperiores nemo maiores. Itaque laborum nam necessitatibus libero neque expedita dolores. Repellendus unde ut sunt dolore sint eaque. Nostrum ut et alias ex. Omnis sed ipsum quia ipsum et distinctio. Omnis rerum consequatur molestias accusantium est exercitationem. Dignissimos at temporibus laborum dolorum qui facilis doloremque. Id nihil saepe molestiae nihil aliquid aut. Praesentium explicabo cupiditate ducimus vel. Et consequatur qui modi incidunt omnis. Laudantium omnis possimus consequuntur libero.\n\nRerum ipsa culpa tenetur blanditiis fuga molestias. Et enim quam assumenda aut voluptates expedita hic. Nisi consequatur doloremque tenetur pariatur assumenda veritatis. Quisquam voluptatem quia illo dolorem. Quia totam aliquam repudiandae. Ut et consequuntur iste sed ullam aut repellat sit. Consequatur ipsa facilis aut doloribus enim deleniti.', 'Network Administration.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(6, 2, 3, 'Popular Network Technology', 'Molestiae aut ipsa qui sed. Distinctio debitis quod error qui et quia quia. Officiis maxime ipsa qui laudantium aut magnam quisquam. Rerum exercitationem ducimus impedit et commodi. Ex veniam quam dolore enim explicabo sapiente quia. Aut quo qui fugit sunt. A odio sunt exercitationem asperiores. Aliquam vitae amet voluptas provident nihil quae veritatis. Explicabo at dolor quo dignissimos quo. Et aliquid eligendi sunt ea autem hic non. Quae voluptates repellat vero facilis enim. Ad corporis rerum molestiae necessitatibus repudiandae.\n\nMagnam quo asperiores id pariatur sequi autem ut. Dicta consectetur corporis neque. Sunt optio sed est error illo in adipisci. Impedit omnis eveniet sunt. Et inventore ut et quo at at. Id tenetur dolores qui repudiandae architecto est quam. Sunt enim impedit ut eaque. Aut aspernatur vero sit totam maxime similique. Hic incidunt facere aliquam qui.', 'Popular Network Technology.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_30_153510_create_categories_table', 1),
(5, '2024_10_30_154220_create_writers_table', 1),
(6, '2024_10_31_150505_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Struktur dari tabel `users`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `writers`
--

INSERT INTO `writers` (`id`, `name`, `profession`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 'Spesialis Interactive Multimedia', 'Raka Putra Wicaksono.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(2, 'Bia Mecca Annisa', 'Spesialis Data Science', 'Bia Mecca Annisa.jpg', '2024-11-05 10:59:33', '2024-11-05 10:59:33'),
(3, 'Abi Firmansyah', 'Spesialis Network Security', 'Abi Firmansyah.png', '2024-11-05 10:59:33', '2024-11-05 10:59:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
