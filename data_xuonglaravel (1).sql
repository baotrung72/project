-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 08:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_xuonglaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', NULL, NULL),
(2, 'Máy Tính', NULL, NULL),
(3, 'Máy Tính Bảng', NULL, NULL),
(4, 'Đồng Hồ Thông Minh', NULL, NULL),
(5, 'Phụ Kiện', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `rating`, `created_at`, `updated_at`) VALUES
(7, 2, 1, 'điện thoại xịn', 5, '2024-05-31 09:44:40', NULL),
(8, 2, 1, 'điện thoại mắc quá', 4, '2024-05-31 09:44:40', NULL),
(9, 2, 1, 'Đồ cùi', 1, '2024-05-31 09:44:40', NULL),
(10, 2, 1, 'e', 5, '2024-05-31 09:46:02', '2024-05-31 09:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_22_121543_create_categories_table', 1),
(9, '2024_05_27_094336_create_products_table', 2),
(10, '2024_05_30_162926_create_product_images_table', 3),
(11, '2024_05_31_063901_create_comments_table', 4),
(26, '2024_06_03_171906_create_order_table', 5),
(28, '2024_06_03_174333_create_order_details_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_money` int NOT NULL DEFAULT '0',
  `total_quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_fullname`, `user_phone`, `user_email`, `user_address`, `status`, `total_money`, `total_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'success', 0, 0, '2024-06-03 14:18:09', '2024-06-03 14:18:09'),
(2, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:22:01', '2024-06-03 14:22:01'),
(3, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:25:32', '2024-06-03 14:25:32'),
(4, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'dong nai', 'pending', 0, 0, '2024-06-03 14:25:51', '2024-06-03 14:25:51'),
(5, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:26:58', '2024-06-03 14:26:58'),
(6, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:29:23', '2024-06-03 14:29:23'),
(7, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:34:38', '2024-06-03 14:34:38'),
(8, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:41:24', '2024-06-03 14:41:24'),
(9, 2, 'TrungG', '0379000358', 'in4@gmail.com', 'trung quoc', 'pending', 0, 0, '2024-06-03 14:45:11', '2024-06-03 14:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 1, 8990000, '2024-06-03 14:45:11', '2024-06-03 14:45:11'),
(2, 9, 3, 1, 6490000, '2024-06-03 14:45:11', '2024-06-03 14:45:11');

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `sale_price` int DEFAULT NULL,
  `instock` int NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `price`, `sale_price`, `instock`, `rating`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy S23 FE 5G 128GB', 'samsung-galaxy-s23-fe-5g-128gb', '638471599704474139_samsung-galaxy-s23--fe-den-dd-AI.webp', 14890000, 13390000, 45, 4.4, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(2, 'OPPO Reno11 F 5G 8GB-256GB', 'oppo-reno11-f-5g-8gb-256gb', '638493832157161657_oppo-reno11-f-green-1.webp', 8990000, 8490000, 50, 4, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(3, 'Xiaomi Poco M6 Pro 8GB-256GB', 'xiaomi-poco-m6-pro-8gb-256gb', '638417729562660990_xiaomi-poco-m6-pro-dd-docquyen-bh.webp', 6490000, 5990000, 11, 3.9, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(4, 'Samsung Galaxy S23 5G 256GB', 'samsung-galaxy-s23-5g-256gb', '638518175414796345_samsung-galaxy-s23-5g-thumb-doc-quyen.webp', 24990000, 15490000, 19, 4.2, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(5, 'Honor X7b 8GB-256GB', 'honor-x7b-8gb-256gb', '638454261816142342_honor-x7b-xanh-6.webp', 5290000, 4990000, 14, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(6, 'OPPO A18 4GB-128GB', 'oppo-a18-4gb-128gb', '638509283036082649_OPPO-A18-thumb.webp', 3990000, 3690000, 28, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(7, 'iPhone 15 Pro Max 256GB', 'iphone-15-pro-max-256gb', '638342502751589917_ip-15-pro-max-dd-bh-2-nam.webp', 34990000, 29290000, 39, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(8, 'Samsung Galaxy S24 Ultra 5G 256GB', 'samsung-galaxy-s24-ultra-5g-256gb', '638477639726536939_samsung-galaxy-s24-ultra-dd-AI.webp', 33990000, 31990000, 50, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(9, 'Honor X9B 5G 12GB-256GB', 'honor-x9b-5g-12gb-256gb', '638405567889290705_honor-x9b-dd-dq-1.webp', 8990000, 8390000, 10, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(10, 'Samsung Galaxy A35 5G 128GB', 'samsung-galaxy-a35-5g-128gb', '638496340616522014_samsung-galaxy-a35-dd-doimoi.webp', 8290000, 7990000, 40, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(11, 'OPPO A58 6GB-128GB', 'oppo-a58-6gb-128gb', '638265802441511578_oppo-a58-dd.webp', 4990000, 4690000, 38, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(12, 'Xiaomi Redmi A3 4GB-128GB', 'xiaomi-redmi-a3-4gb-128gb', '638475678237775959_xiaomi-redmi-a3-dd-bh-thucu.webp', 2990000, 4690000, 21, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(13, 'Samsung Galaxy Z Flip4 5G 128GB', 'samsung-galaxy-z-flip4-5g-128gb', '638131739579610504_samsung-galaxy-z-flip4-tim-dd-tragop.webp', 23990000, 11990000, 29, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(14, 'Tecno Spark Go 2024 4GB-64GB', 'tecno-spark-go-2024-4gb-64gb', '638518773813324397_tecno-spark-go-2024-thumb-thu-cu-2g-100k.webp', 2190000, 1990000, 27, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(15, 'Samsung Galaxy A15 128GB', 'samsung-galaxy-a15-128gb', '638397853078631034_samsung-galaxy-a15-xanh-dd-doimoi.webp', 4490000, 4690000, 29, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(16, 'OPPO A78 8GB-256GB', 'oppo-a78-8gb-256gb', '638241536485031136_oppo-a78-den-dd.webp', 6990000, 6490000, 25, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(17, 'Xiaomi Redmi Note 13 6GB-128GB', 'xiaomi-redmi-note-13-6gb-128gb', '638421256103594350_xiaomi-redmi-note-13-dd-bh.webp', 4890000, 4690000, 37, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(18, 'Samsung Galaxy A05s 128GB', 'samsung-galaxy-a05s-128gb', '638352249930121103_samsung-galaxy-a05s-dd-doimay.webp', 3990000, 3590000, 41, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(19, 'Vivo Y03 4GB 64GB', 'vivo-y03-4gb-64gb', '638465432001765517_vivo-y03-dd.webp', 2990000, 4690000, 43, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(20, 'Samsung Galaxy A05 128GB', 'samsung-galaxy-a05-128gb', '638352248927372216_samsung-galaxy-a05-dd-doimay.webp', 3090000, 4690000, 33, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(21, 'Honor X5 Plus 4GB-64GB', 'honor-x5-plus-4gb-64gb', '638376267641979247_honor-x5-plus-dd-doimoi.webp', 2790000, 2490000, 15, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(22, 'Samsung Galaxy A23 5G', 'samsung-galaxy-a23-5g', '638451444037915753_samsung-galaxy-a23-5g-dd.webp', 5990000, 4190000, 24, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(23, 'OPPO A17k 3GB-64GB', 'oppo-a17k-3gb-64gb', '638071502027885611_oppo-a17k-den-dd-1.webp', 3290000, 2790000, 13, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14'),
(24, 'Xiaomi Redmi Note 12 6GB-128GB', 'xiaomi-redmi-note-12-6gb-128gb', '638409291764099900_xiaomi-redmi-note-12-thumb-dd-1.webp', 5290000, 4990000, 48, 0, 1, '2024-05-30 06:32:14', '2024-05-30 06:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img`) VALUES
(1, 1, '638463753210310750_samsung-galaxy-s23-fe-den-4.webp'),
(2, 1, '638463753211404407_samsung-galaxy-s23-fe-den-3.webp'),
(3, 1, '638463753210779352_samsung-galaxy-s23-fe-den-5.webp'),
(4, 1, '638463753210935577_samsung-galaxy-s23-fe-den-2.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'TrungG', 'in4@gmail.com', NULL, NULL, 'admin', NULL, '$2y$12$xKYG1WByoH4UBRVVZeGqDeRbNl1t3qgp5TY3p74nEbSaGu1hBbeXO', 'Hjt3iUDgfTU3P5LxvhkEEOpurBx9LV6MMQUYbNJzAzi6GJJSyzDUaCPk3SzL', '2024-05-26 02:53:10', '2024-05-26 02:53:10'),
(6, 'hehe', 'hehe@gmail.com', NULL, NULL, 'user', NULL, '123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
