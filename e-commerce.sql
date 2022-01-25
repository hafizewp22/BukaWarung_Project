-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2022 at 02:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '2022-01-23 23:26:23', '2022-01-23 23:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Fruit', 'fruit', 'Healthy fruit food', 1, 1, '1642944592.jpg', 'Fruit', 'Healthy fruit food', 'Fruit', '2021-12-05 19:51:43', '2022-01-23 06:29:52'),
(2, 'Vegetable', 'vegetable', 'Healthy vegetable food', 1, 1, '1642944567.jpg', 'vegetable', 'Healthy vegetable food', 'Healthy vegetable food', '2021-12-05 19:55:49', '2022-01-23 06:29:27'),
(3, 'Drink', 'drink', 'Healthy drink', 1, 1, '1642944644.jpg', 'drink', 'Healthy drink', 'Healthy drink', '2021-12-05 19:58:13', '2022-01-23 06:30:44'),
(4, 'Basic Food', 'Basic-Food', 'Basic Food', 1, 1, '1642943227.jpeg', 'Basic Food', 'Basic Food', 'Basic Food', '2021-12-07 00:23:02', '2022-01-23 06:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_12_03_113013_create_categories_table', 1),
(6, '2021_12_05_102541_create_products_table', 1),
(7, '2021_12_14_114142_create_carts_table', 2),
(8, '2021_12_21_100241_create_orders_table', 3),
(9, '2021_12_21_100840_create_order_items_table', 3),
(10, '2022_01_17_020852_create_wishlists_table', 4),
(11, '2022_01_18_023757_create_ratings_table', 5),
(13, '2022_01_22_023109_create_reviews_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `state`, `city`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '3', 'Doni', 'Ardi', 'd.ardi@gmail.com', '087724006119', 'Jl. Kebun Jeruk  A02', 'No 1 234', 'DKI Jakarta', 'Jakarta Barat', 'Indonesia', '1432', '50000', 'COD', NULL, 1, NULL, 'BukaWarung4412', '2022-01-23 19:47:50', '2022-01-23 19:49:19'),
(2, '2', 'Ani', 'Neswati', 'ani32@gmail.com', '08154206537', 'Rahayu Indah Blok A 02', 'No. 01', 'Banten', 'Serang', 'Indonesia', '4193', '38500', 'COD', NULL, 1, NULL, 'BukaWarung9467', '2022-01-23 19:59:34', '2022-01-23 20:02:00'),
(3, '2', 'Ani', 'Neswati', 'ani32@gmail.com', '08154206537', 'Rahayu Indah Blok A 02', 'No. 01', 'Banten', 'Serang', 'Indonesia', '4193', '29500', 'COD', NULL, 1, NULL, 'BukaWarung6565', '2022-01-23 20:14:01', '2022-01-23 20:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '1', '20000', '2022-01-23 19:47:50', '2022-01-23 19:47:50'),
(2, '1', '5', '1', '10000', '2022-01-23 19:47:50', '2022-01-23 19:47:50'),
(3, '1', '10', '1', '20000', '2022-01-23 19:47:50', '2022-01-23 19:47:50'),
(4, '2', '4', '1', '20000', '2022-01-23 19:59:34', '2022-01-23 19:59:34'),
(5, '2', '13', '1', '14000', '2022-01-23 19:59:34', '2022-01-23 19:59:34'),
(6, '2', '16', '2', '4500', '2022-01-23 19:59:34', '2022-01-23 19:59:34'),
(7, '3', '3', '1', '20000', '2022-01-23 20:14:01', '2022-01-23 20:14:01'),
(8, '3', '2', '1', '9500', '2022-01-23 20:14:01', '2022-01-23 20:14:01');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apple 2 Kg', 'apple-2-kg', 'This is a healthy apple', 'Apples are the most recommended fruit to be consumed every day, so there is a saying that says \"an apple a day keep the doctor away\". This is because apples are rich in antioxidants, flavonoids, and fiber. In addition, the content of phytonutrients and antioxidants in apples can help reduce the risk of cancer, hypertension, diabetes, and heart disease.', '10000', '10000', '1638760312.jpg', '78', '0', 0, 1, 'Apple', 'Apple', 'Apple', '2021-12-05 20:11:52', '2022-01-23 19:44:13'),
(2, 2, 'Green Spinach', 'green-spinach', 'Green Spinach a healthy vegetable', 'Green Spinach a healthy vegetable', '8000', '9500', '1638760503.jpg', '51', '0', 0, 0, 'Green Spinach', 'Green Spinach', 'Green Spinach a healthy vegetable', '2021-12-05 20:15:03', '2022-01-23 20:14:01'),
(3, 3, 'Indomilk Fresh Milk', 'indomilk-fresh-milk', 'Indomilk Fresh Milk', 'Indomilk Fresh Milk', '18000', '20000', '1638760644.png', '21', '0', 0, 1, 'Milk', 'Milk', 'Milk', '2021-12-05 20:17:24', '2022-01-23 20:14:01'),
(4, 1, 'Durian', 'Durian', 'This is a healthy Durian', 'Now eating durian doesn\'t have to be complicated and doesn\'t need to be zoned. Now there is a peeled montong durian that is guaranteed to be delicious, sweet, and legit with a weight of approximately 500gr', '60000', '20000', '1642491717.jpeg', '0', '10000', 0, 1, 'Durian', 'Durian', 'Durian', '2021-12-15 05:04:59', '2022-01-23 19:59:34'),
(5, 1, 'Orange 2 Kg', 'Orange-2-Kg', 'This is a healthy orange', 'Sunkist oranges are a high enough source of vitamin C which acts as an antioxidant.\r\nThe content is able to ward off free radicals that cause chronic diseases such as cancer.', '10000', '10000', '1642941030.jpg', '19', '0', 0, 1, 'Orange', 'Orange', 'Orange', '2022-01-23 05:30:30', '2022-01-23 19:47:50'),
(6, 1, 'Korea Strawberry 4 Kg', 'Korea-Strawberry-4-Kg', 'This is a healthy Strawberry', 'Have you tried Korean Strawberry? certainly different from other strawberries. from the appearance it is very tempting, in terms of color there is a little white on the stem. it has a refreshing sweet taste. curious?', '25000', '25000', '1642941321.png', '10', '0', 0, 0, 'Strawberry', 'Strawberry', 'Strawberry', '2022-01-23 05:35:21', '2022-01-23 05:35:21'),
(7, 2, 'Chilli pcs', 'Chilli-pcs', 'White mustard is a healthy vegetable', 'White mustard has a yellowish white color with curly leaves and a crunchy texture.\r\n\r\nSuitable for processing into kimchi.\r\n\r\nAble to lower cholesterol in the body.', '9500', '9500', '1642941690.png', '20', '0', 0, 1, 'Chilli', 'Chilli', 'Chilli', '2022-01-23 05:41:30', '2022-01-23 05:41:30'),
(8, 2, 'Red Cherry Tomatoes Pack', 'Red-Cherry-Tomatoes-Pack-250-gr', 'Healthy vegetable tomatoes', 'Has a bright red color with a slightly oval round shape.\r\n\r\nIt tastes sweeter than a large tomato.\r\n\r\nHigh water content so easy to break and runny.', '6500', '6500', '1642941964.png', '8', '0', 0, 0, 'Tomat Cherry', 'Tomat Cherry', 'Tomat Cherry', '2022-01-23 05:46:04', '2022-01-23 19:44:13'),
(9, 2, 'Spinach Green Root Pack', 'Spinach-Green-Root-Pack', 'Green Spinach a healthy vegetable', 'Green spinach is round and has a thin and smooth leaf texture\r\n\r\nThe stems are crispy and fresh.\r\n\r\nUseful for preventing various diseases such as heart, diabetes and skin.', '7980', '7980', '1642942130.png', '20', '0', 0, 0, 'Green Spinach', 'Green Spinach', 'Green Spinach', '2022-01-23 05:48:50', '2022-01-23 06:23:51'),
(10, 3, 'Vsoy Multigrain 1 Liter', 'Vsoy-Multigrain-1-Liter', 'Vsoy Multigrain 1 Liter', 'V Soy Multi Grain UHT signature rich & smooth taste and delectable multi-grains including purple brown rice, black sesame, barley and malt extract.\r\n\r\nFeel the benefits:\r\nLow sugar\r\nHigh in nutritional value, 8.3 g of protein per bottle\r\nMade from selected non-GMO Canadian whole soybeans and the finest ingredients\r\nHealth-enhancing multi grains (purple brown rice, black sesame, barley and malt extract)\r\n\r\nV-Soy is a 100% plant based soy milk made from carefully selected natural whole soybeans with a distinctly rich homemade taste and high nutritional value. Our base non-GMO soybean from Canada is truly the miracle bean, little in size yet loaded in mighty nutrients. The original flavour with the homemade goodness of soy has also been expanded to delicious Multi-grain, Low sugar and Golden Grain variants.\r\n\r\nEach of our ingredients have been conscientiously selected, from natural grains like brown rice, sesame, malts, barley, oats and roasted almonds! Perfectly suitable for vegans, vegetarians & those who are lactose intolerant.', '20000', '20000', '1642943433.png', '19', '0', 0, 1, 'Milk', 'Milk', 'Milk', '2022-01-23 06:10:33', '2022-01-23 19:47:50'),
(11, 3, 'Cimory Fresh Milk Strawberry', 'Cimory-Fresh-Milk-Strawberry', 'Cimory Fresh Milk Strawberry', 'description\r\nCimory Fresh Milk Strawberry 950 ml\r\nFresh Strawberry Pasteurized Milk made from fresh Cimory milk and guaranteed authenticity.\r\n\r\nBenefit\r\nFresh milk is useful for maintaining strong bone density and preventing osteoporosis, helping lower blood pressure, caring for teeth, preventing tooth decay, and maintaining oral health.\r\n\r\nConsumption & Storage Guide\r\nCimory Fresh Strawberry Milk can be drunk immediately and is more delicious when consumed cold. Can be stored at room temperature but should be stored in the refrigerator.', '25000', '25000', '1642943564.png', '30', '0', 0, 1, 'Milk', 'Milk', 'Milk', '2022-01-23 06:12:44', '2022-01-23 06:12:44'),
(12, 3, 'Sariwangi Teh Asli Teh', 'Sariwangi-Teh-Asli-Teh', 'Sariwangi Teh Asli Teh', 'Original Sariwangi Tea Bags Fill 50 Twin Packs\r\n\r\nProcessed from selected leaves, the packaging maintains the freshness of the taste and aroma', '15000', '15000', '1642943677.png', '40', '0', 0, 1, 'Teh', 'Teh', 'Teh', '2022-01-23 06:14:37', '2022-01-23 06:14:37'),
(13, 4, 'Rose Brand Minyak Goreng', 'Rose-Brand-Minyak-Goreng', 'Rose Brand Minyak Goreng', 'Made from selected palm oil and processed with high technology and hygienic.\r\n\r\nMake food more savory and delicious.\r\n\r\nContains Beta Carotene, omega 9, vitamins A and E which are good for the body.', '14000', '14000', '1642943792.png', '19', '0', 0, 1, 'Cooking oil', 'Cooking oil', 'Cooking oil', '2022-01-23 06:16:32', '2022-01-23 19:59:34'),
(14, 4, 'Gulaku Gula Kuning', 'Gulaku-Gula-Kuning', 'Gulaku Gula Kuning', 'Sugar Cane Sugar is made from selected original cane sugar with a hygienic process.\r\n\r\nIt has good quality at an affordable price.\r\n\r\nThe taste is very sweet, natural, pure and clean.', '12500', '12500', '1642943921.png', '30', '0', 0, 0, 'Sugar', 'Sugar', 'Sugar', '2022-01-23 06:18:41', '2022-01-23 06:24:07'),
(15, 4, 'Kims Tahu Putih', 'Kims-Tahu-Putih', 'Kims Tahu Putih', 'White Kims Tofu has a softer texture and crumbles easily.\r\n\r\n\r\nDoes not contain preservatives and artificial coloring, the water contained is natural water from tofu.', '13500', '13500', '1642944077.png', '20', '0', 0, 0, 'White tofu', 'White tofu', 'White tofu', '2022-01-23 06:21:17', '2022-01-23 06:23:31'),
(16, 4, '3 Ayam Mie Telur Kuning', '3-Ayam-Mie-Telur-Kuning', '3 Ayam Mie Telur Kuning', 'Egg noodles are processed with quality ingredients with high quality standards.\r\n\r\nHalal without using preservatives.\r\n\r\nSuitable to be processed into fried noodles or noodle soup.', '4500', '4500', '1642944181.png', '18', '0', 0, 1, 'Yellow Noodles', 'Yellow Noodles', 'Yellow Noodles', '2022-01-23 06:23:01', '2022-01-23 19:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '3', '3', '5', '2022-01-23 19:50:12', '2022-01-23 19:50:12'),
(2, '3', '5', '4', '2022-01-23 19:51:36', '2022-01-23 19:51:36'),
(3, '3', '10', '5', '2022-01-23 19:52:46', '2022-01-23 19:52:46'),
(4, '2', '4', '4', '2022-01-23 20:03:44', '2022-01-23 20:04:13'),
(5, '2', '13', '5', '2022-01-23 20:04:47', '2022-01-23 20:04:47'),
(6, '2', '16', '5', '2022-01-23 20:06:03', '2022-01-23 20:06:03'),
(7, '2', '3', '5', '2022-01-23 20:15:43', '2022-01-23 20:16:18'),
(8, '2', '2', '4', '2022-01-23 20:16:30', '2022-01-23 20:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '3', '3', 'Milk is still fresh and delicious. Delivery is neat and as ordered. Thank you.', '2022-01-23 19:50:56', '2022-01-23 19:50:56'),
(2, '3', '5', 'The oranges are still fresh and very tasty. But the shipment is not neat and takes a long time in delivery. Thank you.', '2022-01-23 19:52:17', '2022-01-23 19:52:17'),
(3, '3', '10', 'I really like the milk, it\'s the first time I\'ve tried it and the order is fast and according to the application. Later I want to buy again at the online shop BukaWarung', '2022-01-23 19:53:39', '2022-01-23 19:53:39'),
(4, '2', '4', 'Durian is delicious and smells good too', '2022-01-23 20:04:02', '2022-01-23 20:04:02'),
(5, '2', '13', 'The price of cooking oil is very cheap and quickly sent in 1 day directly arrived.', '2022-01-23 20:05:26', '2022-01-23 20:05:26'),
(6, '2', '16', 'Yellow noodles are going viral, they\'re really delicious and they ship quickly in 1 day and they arrive immediately.', '2022-01-23 20:06:37', '2022-01-23 20:06:37'),
(7, '2', '3', 'Very delicious milk', '2022-01-23 20:15:58', '2022-01-23 20:15:58'),
(8, '2', '2', 'Delivery takes a long time but the vegetables are still fresh', '2022-01-23 20:16:50', '2022-01-23 20:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@bukawarung.com', NULL, '$2y$10$OffexQKWZ20AD8j0xXyGWuLgL8ogB8jiNJUjDYGaFihWsBDfeh2QC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 19:38:50', '2022-01-23 19:38:50'),
(2, 'Ani', 'ani32@gmail.com', NULL, '$2y$10$MDCjxeyzC38C1GERPCJJ1.jtU5U0kwGmaHUJMszB48984qNDjwChy', 'Neswati', '08154206537', 'Rahayu Indah Blok A 02', 'No. 01', 'Serang', 'Banten', 'Indonesia', '4193', 0, NULL, '2022-01-23 19:40:31', '2022-01-23 19:59:34'),
(3, 'Doni', 'd.ardi@gmail.com', NULL, '$2y$10$Boj6CU.ZzBU8uLemCftZWeh1ILnYzBUAOQBD1pit6hdVZElGO/1Si', 'Ardi', '087724006119', 'Jl. Kebun Jeruk  A02', 'No 1 234', 'Jakarta Barat', 'DKI Jakarta', 'Indonesia', '1432', 0, NULL, '2022-01-23 19:41:10', '2022-01-23 19:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(1, '3', '4', '2022-01-23 19:42:31', '2022-01-23 19:42:31'),
(2, '2', '12', '2022-01-23 19:56:17', '2022-01-23 19:56:17'),
(3, '2', '10', '2022-01-23 19:56:23', '2022-01-23 19:56:23'),
(4, '2', '6', '2022-01-23 20:17:38', '2022-01-23 20:17:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
