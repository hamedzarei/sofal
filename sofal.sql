-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2017 at 12:28 AM
-- Server version: 10.0.31-MariaDB-1~trusty
-- PHP Version: 7.1.8-2+ubuntu14.04.1+deb.sury.org+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sofal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'دسته اول', '2017-11-23 20:30:00', '2017-11-23 20:30:00'),
(2, 'دسته دوم', '2017-11-26 20:30:00', '2017-11-26 20:30:00'),
(3, 'دسته سوم', '2017-11-26 20:30:00', '2017-11-26 20:30:00'),
(6, 'دسته چهارم', '2017-11-26 20:30:00', '2017-11-26 20:30:00'),
(7, 'دسته پنجم', '2017-11-27 18:20:01', '2017-11-27 18:20:01'),
(8, 'دسته ششم', '2017-11-27 18:20:01', '2017-11-27 18:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relatedEntity_id` int(11) NOT NULL,
  `relatedEntity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `relatedEntity_id`, `relatedEntity_type`, `created_at`, `updated_at`) VALUES
(1, 'img/category/1.jpg', 1, 'App\\Category', '2017-11-23 20:30:00', '2017-11-23 20:30:00'),
(2, 'img/category/2.jpg', 2, 'App\\Category', NULL, NULL),
(3, 'img/category/3.jpg', 3, 'App\\Category', NULL, NULL),
(4, 'img/category/4.jpg', 6, 'App\\Category', NULL, NULL),
(5, 'img/category/2.jpg', 7, 'App\\Category', NULL, NULL),
(6, 'img/category/1.jpg', 8, 'App\\Category', NULL, NULL),
(7, 'img/product/1.jpg', 1, 'App\\Product', NULL, NULL),
(8, 'img/product/2.jpg', 1, 'App\\Product', NULL, NULL),
(9, 'img/product/3.jpg', 1, 'App\\Product', NULL, NULL),
(10, 'img/product/4.jpg', 1, 'App\\Product', NULL, NULL),
(11, 'img/product/ZWO8F9N0MnjekN99HzWFBFXJ8VHHox2p5ptjKlZC.png', 7, 'App\\Product', '2017-12-04 17:12:26', '2017-12-04 17:12:26'),
(12, 'img/product/aXfBFxZf8W04LtpOt4EkFOTwqXbAOZYKBA2bmuRt.png', 8, 'App\\Product', '2017-12-04 17:13:19', '2017-12-04 17:13:19'),
(13, 'img/product/UJW1kTR6j8DQaGaNLoQ9toCcVc4okU85cb2JP8In.png', 9, 'App\\Product', '2017-12-04 17:13:27', '2017-12-04 17:13:27'),
(14, 'img/product/WJn9DDMXNgEwWA1phwfj72w1hOvl4jF65mUF2NJr.jpeg', 10, 'App\\Product', '2017-12-04 17:17:56', '2017-12-04 17:17:56'),
(15, 'img/product/YbQYuvo7XfUNBcf5eLYvI7vfOgPTV2Yd4Vk3sGsg.jpeg', 11, 'App\\Product', '2017-12-04 17:20:04', '2017-12-04 17:20:04');

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
(3, '2017_11_23_130445_create_categories_table', 1),
(4, '2017_11_23_130456_create_images_table', 1),
(8, '2017_11_26_210632_create_products_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `washable` int(11) NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `colors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `code`, `size`, `kind`, `washable`, `material`, `cost`, `colors`, `rating`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'سفال اول', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.', 'DKC-123', '15*48', 'دسته اول', 1, 'سرامیک', 15000, 'blue,red', '4.3', '1', NULL, NULL),
(2, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:04:12', '2017-12-04 17:04:12'),
(3, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:05:10', '2017-12-04 17:05:10'),
(4, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:09:53', '2017-12-04 17:09:53'),
(5, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:10:05', '2017-12-04 17:10:05'),
(6, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:11:37', '2017-12-04 17:11:37'),
(7, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:12:26', '2017-12-04 17:12:26'),
(8, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:13:19', '2017-12-04 17:13:19'),
(9, 'f', 'f', 'sdf', '123', 'دسته اول', 1, 'ser', 88, 'blue', '0', '1', '2017-12-04 17:13:27', '2017-12-04 17:13:27'),
(10, 'f', 's', 'a', '13', '1', 1, 'ser', 4, 'blue', '0', '1', '2017-12-04 17:17:55', '2017-12-04 17:17:55'),
(11, 'f', 'f', 'w', '123', '1', 1, 'ser', 5, 'blue', '0', '1', '2017-12-04 17:20:04', '2017-12-04 17:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('regular','admin','editor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hamed', 'hamedzarei.7232@gmail.com', '$2y$10$Iy3daW8.2qMLUukc5Ek9Lef3wlC0.F9Yv0p1q4YN4409wDtKZbdtK', 'regular', 'JCokG25jQxT0k3twMr5KdKOBfaPIjuolX4zAM7wKzWCBj0jPoCpl5610ZM6c', '2017-12-02 16:21:41', '2017-12-02 16:21:41'),
(2, 'hamed12', 'hamedzare.7232@gmail.com', '$2y$10$1JCnSB7hiis0fSaaSuH.OugsBwQcao5H8qJpc4kjdouFuCfthjn2G', 'regular', NULL, '2017-12-02 16:33:12', '2017-12-02 16:33:12'),
(3, 'hamed', 'hamedzarei.723@gmail.com', '$2y$10$NNN3hP8YmNxEvZOzgSmACOqS34wtXh5kBuuxXtg8yuNJC2bHMrLB.', 'regular', 'tzz624eKbBGPZXMzYCgyYiyROMUWsh7U8Irpjmm8sSaQn8fhihKpDBSSKOQ6', '2017-12-04 13:54:36', '2017-12-04 13:54:36'),
(4, 'hamed', 'hamedzarei.723@gmail.com', '$2y$10$QXz7wzig2ob9bVtrmDYIjO0maPCbOCDUC99suDIB7YFKqjPnUL3MS', 'regular', NULL, '2017-12-04 13:56:23', '2017-12-04 13:56:23'),
(5, 'admin', 'admin@admin.com', '$2y$10$mDmoJyFyM6evDXi0RnHKje0fsjhbo8Rjy.Tx3P8TrT2caOlSMHYmO', 'admin', 'gEblpstcsVQqyhjYu8YBSK95HCeZjLiumAfDKLpKH92ENVeQZZUTXS12EC5U', '2017-12-04 14:09:02', '2017-12-04 14:09:02'),
(6, 'user', 'user@user.com', '$2y$10$SH6WpEmxIH4khTaRc8h0Je8gHfdxche46/lbNuaybQdolDtsxtIXe', 'regular', 'LMg8BntaEyK0S3zQUatqhrjpMUCb7VkKKLxsYtpJ4aMrOuM5LgztIQFyE5ne', '2017-12-04 14:09:23', '2017-12-04 14:09:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
