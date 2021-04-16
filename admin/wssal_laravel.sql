-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2021 at 11:18 AM
-- Server version: 5.7.29
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wssal_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Wssal وصل'),
(19, 'app_short_description', 'بنوصلك في أي مكان'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'mail.wssal.app'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'no-reply@wssal.app'),
(24, 'mail_password', 'NnvAwk&&E7'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'no-reply@wssal.app'),
(27, 'mail_from_name', 'وصّل'),
(30, 'timezone', 'Africa/Cairo'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'warning'),
(34, 'app_logo', '8c1a969c-064b-4ae1-88e8-4168eb98aaa0'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '0'),
(78, 'enable_facebook', '0'),
(93, 'enable_stripe', '0'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#fecd0d'),
(117, 'main_dark_color', '#fecd0d'),
(118, 'second_color', '#043832'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyDdIqoEIPWp00hnQ7v2XtaWJIQoyIYM8pM'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0'),
(157, 'distance_unit', 'km'),
(158, 'enable_twitter', '0'),
(159, 'home_section_1', 'search'),
(160, 'home_section_2', 'slider'),
(161, 'home_section_3', 'categories'),
(162, 'home_section_4', 'top_markets'),
(163, 'home_section_5', 'popular'),
(164, 'home_section_6', 'popular'),
(165, 'home_section_7', 'slider'),
(166, 'home_section_8', 'trending_week'),
(167, 'home_section_9', 'slider'),
(168, 'home_section_10', 'popular'),
(169, 'home_section_11', 'empty'),
(170, 'home_section_12', 'empty');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pharmacy', 'Totam qui et nisi illo consequuntur esse culpa. Et officia minus occaecati qui deleniti. Aut beatae vitae veniam beatae quis. Commodi ullam id in. Vel sit sunt nemo consequatur deleniti.', '2021-03-25 10:06:52', '2021-03-31 23:38:06'),
(2, 'Food Restaurant', 'Nihil voluptas voluptatum similique rerum deleniti. Deserunt provident et numquam et nemo minima soluta. Beatae molestias dolores non eveniet dolorem minus odio. Eligendi voluptatibus quod a nobis aut unde. Ratione esse qui exercitationem magnam libero.', '2021-03-25 10:06:52', '2021-03-31 23:37:00'),
(3, 'Diary', 'Sit quibusdam qui aut. Rerum commodi voluptatem in nihil quasi ut. Omnis sit dolorem est aspernatur ad quo necessitatibus. Natus ut magni quaerat architecto ea aut quidem. Voluptas quidem earum voluptatibus sed sunt eos.', '2021-03-25 10:06:52', '2021-03-31 23:39:00'),
(4, 'Grocery', 'Enim non commodi sint magni rerum. Iure ipsum maiores est iure qui dolor. Sint enim voluptatem ex quo. Nam numquam unde quis soluta tempore molestiae dolores labore. Fugit provident in repellat nesciunt eveniet.', '2021-03-25 10:06:52', '2021-03-31 23:37:42'),
(5, 'Custom Delivery', 'Quae eum ullam soluta fugiat autem. Sed et possimus et rem et nesciunt consequatur. Nihil fugit labore ea. In rerum earum ipsa quia amet dicta. A fuga vitae et animi consequatur voluptates.', '2021-03-25 10:06:52', '2021-03-31 23:38:27'),
(6, 'Stores', 'Shop everything from different stores', '2021-03-25 10:06:52', '2021-04-04 09:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(8, 'Egyptian Pound', '£', 'EGP', 2, 0, '2021-03-25 10:18:02', '2021-03-25 10:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 18:30:00', '2019-09-06 18:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 18:43:58', '2019-09-06 18:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 18:49:22', '2019-09-06 18:49:22'),
(7, 'verifiedPhone', 'text', NULL, 1, 0, 0, 6, 4, 'App\\Models\\User', '2021-03-20 08:49:22', '2021-03-20 08:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(48, NULL, NULL, 4, 'App\\Models\\User', 7, '2021-03-25 10:31:46', '2021-03-25 10:31:46'),
(49, NULL, '', 5, 'App\\Models\\User', 7, '2021-03-25 10:31:46', '2021-03-25 10:31:46'),
(50, NULL, NULL, 6, 'App\\Models\\User', 7, '2021-03-25 10:31:46', '2021-03-25 10:31:46'),
(51, NULL, NULL, 7, 'App\\Models\\User', 7, '2021-03-25 10:31:46', '2021-03-25 10:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laborum blanditiis autem quo est earum quo molestiae.', '4715 DuBuque Forges Apt. 938\nWolfborough, MO 06392', '-48.065297', '-59.367654', 0, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(2, 'Nemo eius illo tempora.', '84604 Kristina Flat\nLeschfurt, HI 56690-6174', '-5.194109', '174.221474', 0, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(3, 'Libero sint totam impedit voluptates.', '30122 Gillian Lights Suite 591\nEast Laurianne, CT 59629', '-48.485505', '-5.640725', 0, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(4, 'Soluta non quasi rerum sint alias aliquid est.', '848 Trace Lane\nHegmannmouth, WY 89835-4014', '-30.416435', '-143.50825', 0, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(5, 'Quaerat maiores ut illo consectetur et doloribus cum.', '93782 Reed Brook Apt. 973\nNoemietown, NJ 79428-4599', '70.9046', '64.664415', 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(6, 'A magni repellendus sunt dolores.', '84002 Brycen Park Suite 736\nMichealberg, WY 25468-4041', '88.884993', '140.621623', 1, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(7, 'Impedit atque labore mollitia ea.', '971 Rosario Passage\nPort Emmie, SC 61012-4370', '84.650082', '-171.114064', 1, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(8, 'Fugit incidunt corrupti sequi deserunt.', '19384 McGlynn Plaza\nWalkermouth, MN 30305', '-15.986025', '-32.700309', 1, 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(9, 'Ratione corrupti atque praesentium error ad doloremque iste.', '7039 Grimes Drive Suite 865\nWest Aidaside, GA 10616-2808', '-22.71389', '11.334135', 0, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(10, 'Quisquam ratione ut nulla illum.', '510 Laurel Mission\nNorth Estrellaland, PA 65349-8005', '-34.932278', '5.284599', 1, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(11, 'Nostrum porro est et quis voluptatem.', '822 Miller Overpass\nLake Roxane, IN 44407-2675', '-48.931178', '-80.367669', 0, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(12, 'Sapiente voluptas sunt nobis rerum.', '1096 Arnulfo Causeway\nFlatleymouth, MO 64166-1078', '-38.939526', '-18.742002', 0, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(13, 'Ut ut minus voluptas sint deserunt similique.', '595 Coralie Vista Apt. 042\nCrookshaven, CA 20602', '29.9779', '0.873252', 1, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(14, 'Accusantium ut sint delectus quia natus magni qui.', '725 Glover Common\nLake Effie, NJ 01689', '51.677558', '-89.957614', 1, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(15, 'Sequi consequatur cumque et nihil quos tenetur eligendi.', '556 Elliott Estates Apt. 344\nLaverneside, LA 58544', '5.88067', '165.836037', 0, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_markets`
--

CREATE TABLE `driver_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_markets`
--

INSERT INTO `driver_markets` (`user_id`, `market_id`) VALUES
(5, 4),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `market_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `market_id`, `total_orders`, `total_earning`, `admin_earning`, `market_earning`, `delivery_fee`, `tax`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-04 17:48:01', '2021-04-04 17:48:01'),
(2, 3, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-04 17:58:58', '2021-04-04 17:58:58'),
(3, 4, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-04 18:00:32', '2021-04-04 18:00:32'),
(4, 5, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-04 18:03:49', '2021-04-04 18:03:49'),
(5, 11, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-04 18:06:45', '2021-04-04 18:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Et quia error quasi perspiciatis eum. Laboriosam vero ea explicabo sed maxime ut similique.', 'I--\' \'Oh, don\'t talk about trouble!\' said the Caterpillar. Alice said very politely, \'if I had our Dinah here, I know all the players, except the Lizard, who seemed to be an old Turtle--we used to.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(2, 'Eius nobis mollitia error tempora. Debitis quos aspernatur ut nihil.', 'On which Seven looked up eagerly, half hoping that the cause of this sort of thing that would be only rustling in the pool a little timidly: \'but it\'s no use in knocking,\' said the Caterpillar. This.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(3, 'Tenetur eos enim praesentium. Quos magni natus sunt vitae neque. Quis earum in excepturi assumenda.', 'Lizard\'s slate-pencil, and the shrill voice of the creature, but on second thoughts she decided to remain where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good deal until.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(4, 'Id voluptas omnis ipsum vel ut. Dolor et autem fuga maiores est.', 'These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen was close behind her, listening: so she bore it as to go and take it.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(5, 'Non dolorem aliquid culpa tempore eius in laudantium. Quia aut et harum et.', 'Queen\'s Croquet-Ground A large rose-tree stood near the King was the Cat remarked. \'Don\'t be impertinent,\' said the King said to herself, and began talking again. \'Dinah\'ll miss me very much at.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(6, 'Est ducimus vel vel ut beatae pariatur. Porro ut beatae enim sequi.', 'Alice. \'And ever since that,\' the Hatter added as an unusually large saucepan flew close by her. There was a table in the same tone, exactly as if his heart would break. She pitied him deeply. \'What.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(7, 'Et a odio quas expedita quidem rerum. Molestiae provident cumque sunt beatae.', 'I don\'t think,\' Alice went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, and in a tone of the miserable Mock Turtle. \'Hold your tongue!\' added the Gryphon, and the baby with some.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(8, 'Qui ut cum autem. Quo sed sed quo enim ut minus.', 'King. The White Rabbit read:-- \'They told me he was obliged to have any rules in particular; at least, if there were no tears. \'If you\'re going to say,\' said the Hatter. \'He won\'t stand beating.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(9, 'Ut in architecto autem et minus incidunt. Quidem nobis officia impedit molestias est minima.', 'King. \'I can\'t go no lower,\' said the King. \'Nothing whatever,\' said Alice. \'I\'ve read that in some alarm. This time there could be no sort of people live about here?\' \'In THAT direction,\' waving.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(10, 'Ea quia reprehenderit doloribus. Possimus amet ipsum non.', 'March Hare. The Hatter shook his head contemptuously. \'I dare say you never had fits, my dear, YOU must cross-examine the next witness.\' And he added in an agony of terror. \'Oh, there goes his.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(11, 'Est et omnis distinctio est. Consequatur est rem ea. Doloribus nulla nemo et fugiat debitis et.', 'Duchess, it had VERY long claws and a Long Tale They were indeed a queer-looking party that assembled on the bank, with her face brightened up again.) \'Please your Majesty,\' said Alice timidly.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(12, 'A aperiam in esse. Optio corporis est ut qui at id.', 'The baby grunted again, so she went on, very much pleased at having found out a history of the March Hare. \'Yes, please do!\' pleaded Alice. \'And be quick about it,\' said the Cat. \'Do you take me for.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(13, 'Aut inventore nam sunt quod odio. Minus aliquam aut perferendis harum quia aspernatur.', 'Writhing, of course, Alice could think of what work it would like the look of the ground.\' So she set to work very carefully, with one elbow against the door, and tried to curtsey as she said this.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(14, 'Est ut fugit cum aspernatur. Placeat ut molestiae illo voluptatem est.', 'Gryphon. \'The reason is,\' said the Caterpillar. Alice folded her hands, and was in the book,\' said the youth, \'one would hardly suppose That your eye was as much right,\' said the Duchess. An.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(15, 'Nobis recusandae aut minus sed. Iusto vel repellendus dignissimos ut incidunt ea id.', 'I beg your pardon!\' said the Gryphon: \'I went to school in the sand with wooden spades, then a row of lamps hanging from the Gryphon, sighing in his sleep, \'that \"I like what I get\" is the reason.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(16, 'Et laudantium modi possimus unde iusto omnis et. Nesciunt autem aperiam dolorem quod ut iste enim.', 'Alice: \'she\'s so extremely--\' Just then she heard a little bit of the hall; but, alas! the little dears came jumping merrily along hand in hand, in couples: they were playing the Queen added to one.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(17, 'Quasi eum non non ipsa quidem excepturi et. At quasi et maiores necessitatibus earum.', 'So you see, as she was quite pale (with passion, Alice thought), and it put the hookah out of court! Suppress him! Pinch him! Off with his head!\' she said, \'and see whether it\'s marked \"poison\" or.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(18, 'Sint ut corporis repudiandae fuga. Expedita culpa eos ad vitae et. Qui placeat est dolor tempora.', 'I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in at the moment, \'My dear! I wish you wouldn\'t squeeze so.\' said the Caterpillar. Alice folded her hands.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(19, 'Eius labore fugiat sit qui ut explicabo dolores. Veniam quia illum perferendis hic ut facere.', 'Dodo. Then they all crowded round her, calling out in a low voice. \'Not at first, but, after watching it a very little way out of sight, he said to herself, \'Now, what am I to do next, when suddenly.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(20, 'Eos amet quas dolorum. Magnam aut asperiores numquam quibusdam.', 'Pigeon, but in a large crowd collected round it: there was generally a frog or a serpent?\' \'It matters a good opportunity for showing off her head!\' about once in the book,\' said the King, the.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(21, 'Sit quia qui porro veniam asperiores officia voluptatem. Sit ea labore qui expedita porro ut.', 'You see the Mock Turtle interrupted, \'if you don\'t know of any good reason, and as he came, \'Oh! the Duchess, \'as pigs have to beat them off, and had to ask his neighbour to tell him. \'A nice muddle.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(22, 'Distinctio consequatur officia voluptas voluptatem necessitatibus. Quia cum maxime earum aut.', 'Alice began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with an M?\' said Alice. \'Then it wasn\'t very civil of you to learn?\' \'Well, there was enough of.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(23, 'Hic sunt aut consequatur eos. Et corrupti officia laudantium eveniet id totam natus autem.', 'Elsie, Lacie, and Tillie; and they lived at the stick, running a very good advice, (though she very seldom followed it), and handed back to the part about her any more if you\'d rather not.\' \'We.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(24, 'In ut a vitae qui id. Sed earum qui possimus dolores. Deserunt nihil temporibus vel.', 'Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a row of lamps hanging from the sky! Ugh, Serpent!\' \'But I\'m not myself, you see.\' \'I don\'t think they play at all a proper way of expressing.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(25, 'Nesciunt error ipsam in nulla et quam. Autem harum provident architecto. Aut earum qui est non.', 'The poor little Lizard, Bill, was in the world am I? Ah, THAT\'S the great hall, with the birds hurried off to trouble myself about you: you must manage the best thing to nurse--and she\'s such a rule.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(26, 'Nemo consequatur rerum et reiciendis numquam temporibus. Quas quasi rerum dolorem dolor.', 'Alice would not allow without knowing how old it was, and, as they came nearer, Alice could only hear whispers now and then she remembered having seen in her pocket, and pulled out a history of the.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(27, 'Et ullam et aut dolore voluptas dolorem maxime. Nesciunt provident nobis quia cumque.', 'Table doesn\'t signify: let\'s try the effect: the next witness was the White Rabbit read:-- \'They told me he was in a furious passion, and went down on one side, to look for her, and said, \'So you.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(28, 'Quasi consequuntur aspernatur magnam tempora. Non et unde nam non libero neque.', 'I only wish they WOULD put their heads downward! The Antipathies, I think--\' (she was so ordered about in a great many teeth, so she waited. The Gryphon sat up and picking the daisies, when suddenly.', 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(29, 'In ducimus optio facilis. Voluptates illum modi cum. Commodi dicta rerum quam sunt.', 'Dormouse began in a mournful tone, \'he won\'t do a thing before, and she felt that it might end, you know,\' said Alice very politely; but she saw maps and pictures hung upon pegs. She took down a.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(30, 'Ut incidunt explicabo et. Ut voluptatem alias rerum.', 'Alice felt so desperate that she began nibbling at the bottom of a candle is blown out, for she had plenty of time as she went on growing, and very nearly getting up and straightening itself out.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 09:31:52', '2019-08-31 09:31:52'),
(2, 'Services', '2019-08-31 09:32:03', '2019-08-31 09:32:03'),
(3, 'Delivery', '2019-08-31 09:32:11', '2019-08-31 09:32:11'),
(4, 'Misc', '2019-08-31 09:32:17', '2019-08-31 09:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 23, 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(3, 27, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(4, 23, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(5, 7, 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(7, 20, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(21, 7, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(22, 27, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(23, 6, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(26, 20, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(28, 7, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(30, 25, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 12:03:21', '2020-04-11 12:03:21'),
(2, 'Pharmacy', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 12:03:21', '2020-04-11 12:03:21'),
(3, 'Restaurant', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 12:03:21', '2020-04-11 12:03:21'),
(4, 'Store', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 12:03:21', '2020-04-11 12:03:21'),
(5, 'Electronics', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 12:03:21', '2020-04-11 12:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 'Beatae numquam voluptates iusto dolorem aut.', 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(2, 'Molestiae deserunt quia praesentium unde.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(3, 'Iure voluptatem fuga qui quod porro ea vel.', 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(5, 'Natus quisquam laboriosam ipsa impedit et consectetur quo voluptas.', 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(7, 'Quo quis voluptas dolores repudiandae deleniti pariatur est.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(9, 'Illum et consequatur pariatur dolor mollitia consequatur et aut.', 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(13, 'كيكات', 1, '2021-03-25 10:06:53', '2021-04-04 17:52:30'),
(15, 'Quisquam qui et alias commodi dolores eos.', 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(16, 'Deserunt debitis veritatis ut illo nulla voluptas.', 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(1, 'رشة ملح', 'مطعم متكامل', 'شارع التسعين، التجمع الخامس', '44.646836', '11.560981', '(819) 555-1149', '1-696-578-9920', 'رشة ملح', 10.00, 5.37, 10.00, 10.00, 0, 1, 1, '2021-03-25 10:06:52', '2021-04-04 17:50:06'),
(3, 'Computer Store', '<br>', '463 Garnett ParkwayLeonhaven, AK 40597-2442', '38.74135', '11.063401', '+1 (794) 363-0653', '+1-783-887-1348', '<br>', 13.70, 9.95, 89.21, 20.34, 0, 1, 1, '2021-03-25 10:06:52', '2021-04-04 17:58:58'),
(4, 'Grocery Wuckert PLC', '<br>', '2915 Faisal Bin Muhmmad Al Mubarak Street', '53.672592', '11.868019', NULL, NULL, '<br>', 25.11, 6.15, 60.20, 7.03, 0, 1, 1, '2021-03-25 10:06:52', '2021-04-04 18:00:32'),
(5, 'Pharmacy Powlowski and Sons', 'Fuga blanditiis rerum delectus fugit. Tenetur eveniet et enim sunt. Pariatur aut tempora et similique est. At dolor beatae quia dolor. Eos quo dolorem ut optio cum.', '3278 Cornell Ways Apt. 774Gilbertofurt, AK 91182-1979', '43.793993', '8.712479', '(254) 971-5671 x19762', '(572) 843-1853', 'Ut odio velit atque unde consequatur. Atque quo voluptatem voluptas non autem. Eum animi temporibus atque.', 22.85, 8.32, 18.18, 22.68, 0, 1, 1, '2021-03-25 10:06:52', '2021-04-04 18:03:49'),
(11, 'MacDonalds', '<p>fast food</p>', '434 street', '34.25423', '44.23433', NULL, NULL, NULL, 10.00, 7.00, 10.00, 10.00, 0, 1, 1, '2021-04-04 18:06:45', '2021-04-04 18:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `markets_payouts`
--

CREATE TABLE `markets_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_fields`
--

CREATE TABLE `market_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_fields`
--

INSERT INTO `market_fields` (`field_id`, `market_id`) VALUES
(3, 1),
(4, 3),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `market_reviews`
--

CREATE TABLE `market_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_reviews`
--

INSERT INTO `market_reviews` (`id`, `review`, `rate`, `user_id`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 'How she longed to change the subject. \'Go on with the strange creatures of her sister, who was sitting next to no toys to play with, and oh! ever so many tea-things are put out here?\' she asked.', 4, 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(5, 'Lobster Quadrille?\' the Gryphon whispered in a few minutes it puffed away without speaking, but at any rate,\' said Alice: \'three inches is such a long sleep you\'ve had!\' \'Oh, I\'ve had such a neck as.', 2, 3, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(6, 'March Hare. \'It was the White Rabbit read:-- \'They told me he was in a great letter, nearly as she leant against a buttercup to rest herself, and began staring at the flowers and the White Rabbit.', 1, 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(8, 'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon interrupted in a low voice, \'Your Majesty must cross-examine the next question is, what did the Dormouse began in a.', 5, 5, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(10, 'The executioner\'s argument was, that anything that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m not looking for them, but they were gardeners, or soldiers, or courtiers, or three pairs.', 2, 6, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(16, 'Gryphon hastily. \'Go on with the edge with each hand. \'And now which is which?\' she said to the King, the Queen, in a dreamy sort of a well--\' \'What did they draw?\' said Alice, in a hurry: a large.', 2, 3, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(20, 'Alice was very hot, she kept on good terms with him, he\'d do almost anything you liked with the end of the house of the ground--and I should be free of them even when they liked, and left foot, so.', 5, 1, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'app_logo', 'wssal_logo-05', 'wssal_logo-05.png', 'image/png', 'public', 47602, '[]', '{\"uuid\":\"21ba23f2-3647-42f9-b146-040dbe418bbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2021-03-25 10:39:50', '2021-03-25 10:39:51'),
(2, 'App\\Models\\Upload', 2, 'app_logo', 'wssal_main_logo_icon', 'wssal_main_logo_icon.png', 'image/png', 'public', 10585, '[]', '{\"uuid\":\"8c1a969c-064b-4ae1-88e8-4168eb98aaa0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2021-03-25 10:42:06', '2021-03-25 10:42:06'),
(3, 'App\\Models\\Upload', 3, 'image', 'store', 'store.png', 'image/png', 'public', 12286, '[]', '{\"uuid\":\"c79ed5d1-4455-4bb8-8708-7f1ba26d76d7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-04-04 09:59:53', '2021-04-04 09:59:53'),
(4, 'App\\Models\\Category', 6, 'image', 'store', 'store.png', 'image/png', 'public', 12286, '[]', '{\"uuid\":\"c79ed5d1-4455-4bb8-8708-7f1ba26d76d7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2021-04-04 09:59:57', '2021-04-04 09:59:57'),
(5, 'App\\Models\\Upload', 4, 'image', 'vitamin', 'vitamin.png', 'image/png', 'public', 15106, '[]', '{\"uuid\":\"bd1c9b5b-4bf0-4eb6-bf6d-a0eacc506a64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2021-04-04 10:02:04', '2021-04-04 10:02:04'),
(6, 'App\\Models\\Category', 1, 'image', 'vitamin', 'vitamin.png', 'image/png', 'public', 15106, '[]', '{\"uuid\":\"bd1c9b5b-4bf0-4eb6-bf6d-a0eacc506a64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2021-04-04 10:02:05', '2021-04-04 10:02:05'),
(7, 'App\\Models\\Upload', 5, 'image', 'healthy-food', 'healthy-food.png', 'image/png', 'public', 30378, '[]', '{\"uuid\":\"51c30951-51e1-4256-bc1d-9fb31408acdc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-04-04 10:02:48', '2021-04-04 10:02:48'),
(8, 'App\\Models\\Category', 4, 'image', 'healthy-food', 'healthy-food.png', 'image/png', 'public', 30378, '[]', '{\"uuid\":\"51c30951-51e1-4256-bc1d-9fb31408acdc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2021-04-04 10:02:49', '2021-04-04 10:02:49'),
(9, 'App\\Models\\Upload', 6, 'image', 'fast-food-2', 'fast-food-2.png', 'image/png', 'public', 29285, '[]', '{\"uuid\":\"23a91ab7-d185-43d2-9372-88197da105ff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-04-04 10:03:12', '2021-04-04 10:03:12'),
(10, 'App\\Models\\Category', 2, 'image', 'fast-food-2', 'fast-food-2.png', 'image/png', 'public', 29285, '[]', '{\"uuid\":\"23a91ab7-d185-43d2-9372-88197da105ff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2021-04-04 10:03:13', '2021-04-04 10:03:13'),
(11, 'App\\Models\\Upload', 7, 'image', 'dairy-products', 'dairy-products.png', 'image/png', 'public', 23646, '[]', '{\"uuid\":\"dee29293-5486-478c-b0a9-1d7e948a3465\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-04-04 10:03:31', '2021-04-04 10:03:32'),
(12, 'App\\Models\\Category', 3, 'image', 'dairy-products', 'dairy-products.png', 'image/png', 'public', 23646, '[]', '{\"uuid\":\"dee29293-5486-478c-b0a9-1d7e948a3465\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-04-04 10:03:33', '2021-04-04 10:03:33'),
(13, 'App\\Models\\Upload', 8, 'image', 'food-delivery', 'food-delivery.png', 'image/png', 'public', 19237, '[]', '{\"uuid\":\"356a5755-c5e7-40f2-ad7c-a8db5f7e5386\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2021-04-04 10:03:49', '2021-04-04 10:03:49'),
(14, 'App\\Models\\Category', 5, 'image', 'food-delivery', 'food-delivery.png', 'image/png', 'public', 19237, '[]', '{\"uuid\":\"356a5755-c5e7-40f2-ad7c-a8db5f7e5386\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2021-04-04 10:03:50', '2021-04-04 10:03:50'),
(15, 'App\\Models\\Upload', 9, 'image', '1371597695088', '1371597695088.jpg', 'image/jpeg', 'public', 41468, '[]', '{\"uuid\":\"68c610db-3abb-4851-949c-22857b1c395c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2021-04-04 17:28:17', '2021-04-04 17:28:18'),
(16, 'App\\Models\\Slide', 3, 'image', '1371597695088', '1371597695088.jpg', 'image/jpeg', 'public', 41468, '[]', '{\"uuid\":\"68c610db-3abb-4851-949c-22857b1c395c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2021-04-04 17:28:20', '2021-04-04 17:28:20'),
(17, 'App\\Models\\Upload', 10, 'image', '1371597695088', '1371597695088.jpg', 'image/jpeg', 'public', 41468, '[]', '{\"uuid\":\"e9b89847-f0a2-4798-a7f6-11cf64b17922\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2021-04-04 17:29:40', '2021-04-04 17:29:40'),
(19, 'App\\Models\\Upload', 11, 'image', 'mac', 'mac', 'image/jpeg', 'public', 105060, '[]', '{\"uuid\":\"2ce6d543-2aea-49f1-9e45-06665e093ae8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2021-04-04 17:33:58', '2021-04-04 17:33:58'),
(20, 'App\\Models\\Upload', 12, 'image', 'mac', 'mac.jpg', 'image/jpeg', 'public', 105060, '[]', '{\"uuid\":\"40f489f0-94af-4fac-9d57-89b94cc564c3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2021-04-04 17:34:11', '2021-04-04 17:34:11'),
(21, 'App\\Models\\Slide', 1, 'image', 'mac', 'mac.jpg', 'image/jpeg', 'public', 105060, '[]', '{\"uuid\":\"40f489f0-94af-4fac-9d57-89b94cc564c3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2021-04-04 17:34:22', '2021-04-04 17:34:22'),
(22, 'App\\Models\\Upload', 13, 'image', 'rm_logo-25', 'rm_logo-25.png', 'image/png', 'public', 62362, '[]', '{\"uuid\":\"4e4a7c44-422c-4719-b791-76acc513cca8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2021-04-04 17:47:56', '2021-04-04 17:47:56'),
(23, 'App\\Models\\Market', 1, 'image', 'rm_logo-25', 'rm_logo-25.png', 'image/png', 'public', 62362, '[]', '{\"uuid\":\"4e4a7c44-422c-4719-b791-76acc513cca8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2021-04-04 17:48:00', '2021-04-04 17:48:00'),
(24, 'App\\Models\\Upload', 14, 'image', 'cake', 'cake.jpg', 'image/jpeg', 'public', 25783, '[]', '{\"uuid\":\"bc6c3f56-cedb-411b-a7e9-06679ea998a1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2021-04-04 17:52:25', '2021-04-04 17:52:25'),
(25, 'App\\Models\\Gallery', 13, 'image', 'cake', 'cake.jpg', 'image/jpeg', 'public', 25783, '[]', '{\"uuid\":\"bc6c3f56-cedb-411b-a7e9-06679ea998a1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2021-04-04 17:52:31', '2021-04-04 17:52:31'),
(26, 'App\\Models\\Upload', 15, 'image', 'طريقة_عمل_كيكة_الشوكلاته', 'طريقة_عمل_كيكة_الشوكلاته.jpg', 'image/jpeg', 'public', 31845, '[]', '{\"uuid\":\"cd658846-d84f-4f19-a232-44e2548fde39\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2021-04-04 17:55:37', '2021-04-04 17:55:37'),
(27, 'App\\Models\\Product', 39, 'image', 'طريقة_عمل_كيكة_الشوكلاته', 'طريقة_عمل_كيكة_الشوكلاته.jpg', 'image/jpeg', 'public', 31845, '[]', '{\"uuid\":\"cd658846-d84f-4f19-a232-44e2548fde39\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2021-04-04 17:55:39', '2021-04-04 17:55:39'),
(28, 'App\\Models\\Upload', 16, 'image', '5dac1c60a2c07_office-electronics-printers-copiers', '5dac1c60a2c07_office-electronics-printers-copiers.jpg', 'image/jpeg', 'public', 48365, '[]', '{\"uuid\":\"d173438b-3b5f-437d-b2e7-9dcd5a6925fb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2021-04-04 17:58:33', '2021-04-04 17:58:33'),
(29, 'App\\Models\\Market', 3, 'image', '5dac1c60a2c07_office-electronics-printers-copiers', '5dac1c60a2c07_office-electronics-printers-copiers.jpg', 'image/jpeg', 'public', 48365, '[]', '{\"uuid\":\"d173438b-3b5f-437d-b2e7-9dcd5a6925fb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2021-04-04 17:58:58', '2021-04-04 17:58:58'),
(30, 'App\\Models\\Upload', 17, 'image', 'grocery-store-waste-1200x600', 'grocery-store-waste-1200x600.jpg', 'image/jpeg', 'public', 106805, '[]', '{\"uuid\":\"7aae51eb-708f-496e-a100-47e086ee73a5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2021-04-04 18:00:01', '2021-04-04 18:00:01'),
(31, 'App\\Models\\Upload', 18, 'image', 'grocery-store-waste-1200x600', 'grocery-store-waste-1200x600.jpg', 'image/jpeg', 'public', 106805, '[]', '{\"uuid\":\"929f162b-db70-45ad-b0e0-d266fc9d3cdc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2021-04-04 18:00:41', '2021-04-04 18:00:41'),
(32, 'App\\Models\\Market', 4, 'image', 'grocery-store-waste-1200x600', 'grocery-store-waste-1200x600.jpg', 'image/jpeg', 'public', 106805, '[]', '{\"uuid\":\"929f162b-db70-45ad-b0e0-d266fc9d3cdc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2021-04-04 18:00:42', '2021-04-04 18:00:42'),
(33, 'App\\Models\\Upload', 19, 'image', '1140-pharmacist-woman.imgcache.rev73f7dac4517c40077d7873481d533469', '1140-pharmacist-woman.imgcache.rev73f7dac4517c40077d7873481d533469.jpg', 'image/jpeg', 'public', 533275, '[]', '{\"uuid\":\"23ce8b4f-c599-44e8-931f-57d7bd352405\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2021-04-04 18:03:44', '2021-04-04 18:03:44'),
(34, 'App\\Models\\Market', 5, 'image', '1140-pharmacist-woman.imgcache.rev73f7dac4517c40077d7873481d533469', '1140-pharmacist-woman.imgcache.rev73f7dac4517c40077d7873481d533469.jpg', 'image/jpeg', 'public', 533275, '[]', '{\"uuid\":\"23ce8b4f-c599-44e8-931f-57d7bd352405\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2021-04-04 18:03:49', '2021-04-04 18:03:49'),
(35, 'App\\Models\\Upload', 20, 'image', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249.jpg', 'image/jpeg', 'public', 50505, '[]', '{\"uuid\":\"e0d67d4c-41e0-4ab2-bdc2-1f79fd4d8500\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2021-04-04 18:05:09', '2021-04-04 18:05:09'),
(36, 'App\\Models\\Upload', 21, 'image', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249.jpg', 'image/jpeg', 'public', 50505, '[]', '{\"uuid\":\"b3d98fdf-6045-4391-a0e4-b5e6d066ac25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2021-04-04 18:05:24', '2021-04-04 18:05:24'),
(37, 'App\\Models\\Upload', 22, 'image', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249.jpg', 'image/jpeg', 'public', 50505, '[]', '{\"uuid\":\"6f5368eb-f93b-41f2-891a-0a849abfef66\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2021-04-04 18:06:28', '2021-04-04 18:06:28'),
(38, 'App\\Models\\Upload', 23, 'image', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249.jpg', 'image/jpeg', 'public', 50505, '[]', '{\"uuid\":\"4cd867fb-197d-4ef6-947d-99cbd03f0130\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2021-04-04 18:06:43', '2021-04-04 18:06:43'),
(39, 'App\\Models\\Market', 11, 'image', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249', 'mcd-nfl-mcdonalds-app-feature-callout-desktop-574x249.jpg', 'image/jpeg', 'public', 50505, '[]', '{\"uuid\":\"4cd867fb-197d-4ef6-947d-99cbd03f0130\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2021-04-04 18:06:45', '2021-04-04 18:06:45');

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
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_markets_table', 1),
(11, '2019_08_29_213822_create_categories_table', 1),
(12, '2019_08_29_213826_create_option_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213838_create_options_table', 1),
(17, '2019_08_29_213842_create_galleries_table', 1),
(18, '2019_08_29_213847_create_product_reviews_table', 1),
(19, '2019_08_29_213921_create_payments_table', 1),
(20, '2019_08_29_213922_create_delivery_addresses_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_market_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111104_create_orders_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_options_table', 1),
(27, '2019_09_04_153859_create_cart_options_table', 1),
(28, '2019_09_04_153958_create_product_orders_table', 1),
(29, '2019_09_04_154957_create_product_order_options_table', 1),
(30, '2019_09_04_163857_create_user_markets_table', 1),
(31, '2019_10_22_144652_create_currencies_table', 1),
(32, '2019_12_14_134302_create_driver_markets_table', 1),
(33, '2020_03_25_094752_create_drivers_table', 1),
(34, '2020_03_25_094802_create_earnings_table', 1),
(35, '2020_03_25_094809_create_drivers_payouts_table', 1),
(36, '2020_03_25_094817_create_markets_payouts_table', 1),
(37, '2020_03_27_094855_create_notifications_table', 1),
(38, '2020_04_11_135804_create_market_fields_table', 1),
(39, '2020_08_23_181022_create_coupons_table', 1),
(40, '2020_08_23_181029_create_discountables_table', 1),
(41, '2020_09_01_192732_create_slides_table', 1),
(42, '2021_03_20_192732_create_slides_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `product_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(18, 'Green', 'Amet quam soluta voluptas sed.', 33.43, 27, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(22, 'Tomato', 'Eaque quisquam voluptatem facere odit explicabo.', 24.83, 25, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(31, 'Tomato', 'Impedit ea soluta.', 18.21, 8, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(34, 'Red', 'Voluptate illo rerum officia non illo.', 20.46, 8, 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(35, 'Oil', 'Quibusdam minus sit et.', 13.61, 6, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(38, '1Kg', 'Debitis adipisci voluptatem.', 16.29, 27, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(46, '5L', 'Numquam eos aliquid est quo.', 10.75, 20, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(47, 'Red', 'Suscipit cumque nulla vel.', 30.79, 6, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(53, 'L', 'Perspiciatis ab ut molestiae praesentium.', 45.74, 8, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(54, '1Kg', 'Commodi placeat vel.', 17.22, 27, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(62, 'S', 'Tempore id molestias quo rerum.', 27.80, 23, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 07:55:28', '2019-08-31 07:55:28'),
(2, 'Color', '2019-10-09 10:26:28', '2019-10-09 10:26:28'),
(3, 'Parfum', '2019-10-09 10:26:28', '2019-10-09 10:26:28'),
(4, 'Taste', '2019-10-09 10:26:28', '2019-10-09 10:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 13:39:28', '2019-10-15 15:03:14'),
(2, 'Preparing', '2019-10-15 15:03:50', '2019-10-15 15:03:50'),
(3, 'Ready', '2019-10-15 15:04:30', '2019-10-15 15:04:30'),
(4, 'On the Way', '2019-10-15 15:04:13', '2019-10-15 15:04:13'),
(5, 'Delivered', '2019-10-15 15:04:30', '2019-10-15 15:04:30');

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
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 11:58:02', '2020-03-29 11:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 11:58:02', '2020-03-29 11:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 11:58:02', '2020-03-29 11:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 11:58:02', '2020-03-29 11:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 11:58:03', '2020-03-29 11:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(30, 'markets.index', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(31, 'markets.create', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(32, 'markets.store', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(33, 'markets.edit', 'web', '2020-03-29 11:58:04', '2020-03-29 11:58:04', NULL),
(34, 'markets.update', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(35, 'markets.destroy', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 11:58:05', '2020-03-29 11:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 11:58:06', '2020-03-29 11:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 11:58:07', '2020-03-29 11:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 11:58:08', '2020-03-29 11:58:08', NULL),
(76, 'options.index', 'web', '2020-03-29 11:58:09', '2020-03-29 11:58:09', NULL),
(77, 'options.create', 'web', '2020-03-29 11:58:09', '2020-03-29 11:58:09', NULL),
(78, 'options.store', 'web', '2020-03-29 11:58:09', '2020-03-29 11:58:09', NULL),
(79, 'options.show', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(80, 'options.edit', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(81, 'options.update', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(82, 'options.destroy', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 11:58:10', '2020-03-29 11:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(92, 'marketReviews.index', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(93, 'marketReviews.create', 'web', '2020-03-29 11:58:11', '2020-03-29 11:58:11', NULL),
(94, 'marketReviews.store', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(95, 'marketReviews.edit', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(96, 'marketReviews.update', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(97, 'marketReviews.destroy', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 11:58:12', '2020-03-29 11:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 11:58:13', '2020-03-29 11:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 11:58:14', '2020-03-29 11:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 11:58:15', '2020-03-29 11:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 11:58:16', '2020-03-29 11:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 11:58:17', '2020-03-29 11:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(151, 'marketsPayouts.index', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(152, 'marketsPayouts.create', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(153, 'marketsPayouts.store', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(154, 'marketsPayouts.show', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(155, 'marketsPayouts.edit', 'web', '2020-03-29 11:58:18', '2020-03-29 11:58:18', NULL),
(156, 'marketsPayouts.update', 'web', '2020-03-29 11:58:19', '2020-03-29 11:58:19', NULL),
(157, 'marketsPayouts.destroy', 'web', '2020-03-29 11:58:19', '2020-03-29 11:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 11:59:15', '2020-03-29 11:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 11:59:15', '2020-03-29 11:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 11:59:15', '2020-03-29 11:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 11:59:15', '2020-03-29 11:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 11:59:15', '2020-03-29 11:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 11:59:16', '2020-03-29 11:59:16', NULL),
(164, 'fields.index', 'web', '2020-04-11 12:04:39', '2020-04-11 12:04:39', NULL),
(165, 'fields.create', 'web', '2020-04-11 12:04:39', '2020-04-11 12:04:39', NULL),
(166, 'fields.store', 'web', '2020-04-11 12:04:39', '2020-04-11 12:04:39', NULL),
(167, 'fields.edit', 'web', '2020-04-11 12:04:39', '2020-04-11 12:04:39', NULL),
(168, 'fields.update', 'web', '2020-04-11 12:04:39', '2020-04-11 12:04:39', NULL),
(169, 'fields.destroy', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(170, 'optionGroups.index', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(171, 'optionGroups.create', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(172, 'optionGroups.store', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(173, 'optionGroups.edit', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(174, 'optionGroups.update', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(175, 'optionGroups.destroy', 'web', '2020-04-11 12:04:40', '2020-04-11 12:04:40', NULL),
(176, 'requestedMarkets.index', 'web', '2020-08-13 11:58:02', '2020-08-13 11:58:02', NULL),
(183, 'coupons.index', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 11:58:02', '2020-08-23 11:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `capacity` double(9,2) DEFAULT '0.00',
  `package_items_count` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `market_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'Tuna steak', 40.24, 30.46, 'Ex id voluptatem laudantium sed. Velit delectus harum eaque autem. Vitae dolor ea recusandae ab iure excepturi.', 413.54, 6.00, 'ml', 0, 1, 3, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(7, 'Salad', 14.36, 12.68, 'Odio quibusdam corporis voluptates quaerat. Aut perferendis laboriosam consequatur qui officia nostrum et. Omnis aut unde totam sit quos.', 390.63, 3.00, 'Oz', 0, 0, 1, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(8, 'Acarbose', 35.07, 31.43, 'Aut recusandae minus beatae. Qui blanditiis dolor eos. Autem hic sint voluptas consectetur.', 156.09, 6.00, 'L', 0, 1, 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(20, 'Steak', 20.05, 10.22, 'Autem et deserunt minus non ut perspiciatis. Provident molestiae perspiciatis iste odit.', 468.24, 1.00, 'm', 1, 0, 3, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(23, 'Aspirin', 46.34, 36.73, 'Aut ad maiores molestiae iure voluptatem quo. Quisquam saepe blanditiis et non iure. Aut quam eos totam. Eveniet voluptates quis nostrum repellat asperiores.', 264.99, 5.00, 'g', 1, 1, 4, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(25, 'Honey', 34.33, 0.00, 'Aliquid possimus ut commodi. Maiores ipsam modi iure neque. Explicabo ratione ut non ut assumenda.', 249.96, 6.00, 'Kg', 1, 0, 1, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(27, 'Acarbose', 30.20, 25.22, 'Dolorum dolorum explicabo placeat et. Itaque maxime quis alias animi vel. Omnis consequuntur aperiam maxime nulla rem nam aspernatur. Non voluptates aut quis voluptatibus quam eveniet.', 319.37, 3.00, 'Kg', 0, 1, 4, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(31, 'Bread', 27.29, 0.00, 'Labore debitis dolores quidem non in non qui. Voluptates incidunt sit dicta corrupti repudiandae. Sequi occaecati quia et temporibus consequatur vel.', 446.71, 1.00, 'g', 0, 0, 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(33, 'Salad', 18.38, 12.85, 'Autem alias est quis omnis error soluta. Quis illum aliquam labore necessitatibus aliquam qui et. Pariatur doloribus rerum magnam itaque. Quis molestias magnam omnis.', 456.31, 5.00, 'ml', 0, 1, 5, 5, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(35, 'Onion', 35.85, 26.82, 'Sunt qui aspernatur eaque. Et earum non itaque. Suscipit sint eveniet adipisci voluptatem atque.', 446.52, 6.00, 'm²', 1, 1, 4, 1, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(36, 'Rice', 49.45, 0.00, 'Voluptas iusto voluptas iure quis harum. Tempore aperiam repellendus aspernatur quia hic fugit. Expedita voluptas magni quae et aliquid. Ullam praesentium eum velit deleniti laborum tenetur quos.', 304.33, 1.00, 'm', 0, 0, 1, 4, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(38, 'Spaghetti', 33.24, 29.39, 'Est praesentium aut ipsam qui. Ipsum sit harum commodi ut eveniet. Reprehenderit distinctio fugit et quo omnis debitis quibusdam molestiae.', 12.92, 6.00, 'L', 1, 1, 5, 3, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(39, 'كيك شوكولاته', 300.00, 20.00, '<p>كيك شوكولاته بالبندق والفستق</p><p><br></p>', 137.36, 6.00, 'km', 1, 1, 1, 2, '2021-03-25 10:06:53', '2021-04-04 17:55:39'),
(40, 'Sugar', 42.30, 34.07, 'Labore quos enim eligendi ea vitae. Eum et possimus voluptas dolores est ullam facere eaque. Et alias exercitationem magnam sed sint fuga.', 491.29, 5.00, 'g', 0, 1, 4, 2, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(16, 'Dormouse indignantly. However, he consented to go and live in that poky little house, and have next to her. \'I wish I had not the same, the next question is, Who in the trial one way of keeping up.', 4, 4, 23, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(22, 'Would not, could not, could not think of anything to put the hookah into its nest. Alice crouched down among the bright eager eyes were looking up into hers--she could hear him sighing as if he were.', 4, 6, 23, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(26, 'And it\'ll fetch things when you have to ask help of any one; so, when the Rabbit just under the hedge. In another minute there was no use now,\' thought poor Alice, \'it would be wasting our breath.\".', 3, 1, 25, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(27, 'How the Owl had the dish as its share of the miserable Mock Turtle. \'And how did you begin?\' The Hatter shook his grey locks, \'I kept all my limbs very supple By the time he had come back and see.', 1, 4, 7, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(28, 'Alice: \'she\'s so extremely--\' Just then her head on her face in her hands, and began:-- \'You are old,\' said the Dodo, \'the best way you have of putting things!\' \'It\'s a friend of mine--a Cheshire.', 4, 1, 6, '2021-03-25 10:06:53', '2021-03-25 10:06:53'),
(29, 'Dormouse went on, spreading out the Fish-Footman was gone, and the executioner myself,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said Alice. \'Nothing WHATEVER?\' persisted the.', 2, 2, 25, '2021-03-25 10:06:53', '2021-03-25 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 13:37:56', '2019-09-07 19:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 19:41:38', '2019-09-07 19:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 19:41:54', '2019-09-07 19:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 16:50:21', '2019-12-15 16:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(67, 2),
(68, 2),
(69, 2),
(76, 2),
(77, 2),
(78, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(103, 2),
(104, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(134, 2),
(135, 2),
(137, 2),
(138, 2),
(144, 2),
(145, 2),
(146, 2),
(148, 2),
(149, 2),
(151, 2),
(152, 2),
(153, 2),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(27, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(42, 3),
(48, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(67, 3),
(68, 3),
(76, 3),
(77, 3),
(78, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(86, 3),
(92, 3),
(95, 3),
(96, 3),
(98, 3),
(103, 3),
(104, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(113, 3),
(114, 3),
(117, 3),
(130, 3),
(134, 3),
(135, 3),
(137, 3),
(145, 3),
(146, 3),
(151, 3),
(152, 3),
(153, 3),
(164, 3),
(170, 3),
(171, 3),
(172, 3),
(176, 3),
(183, 3),
(186, 3),
(187, 3),
(1, 4),
(3, 4),
(4, 4),
(27, 4),
(30, 4),
(31, 4),
(32, 4),
(52, 4),
(64, 4),
(67, 4),
(68, 4),
(83, 4),
(86, 4),
(92, 4),
(95, 4),
(96, 4),
(98, 4),
(103, 4),
(104, 4),
(107, 4),
(111, 4),
(113, 4),
(114, 4),
(117, 4),
(164, 4),
(176, 4),
(183, 4),
(1, 5),
(3, 5),
(4, 5),
(27, 5),
(30, 5),
(48, 5),
(52, 5),
(64, 5),
(67, 5),
(68, 5),
(83, 5),
(86, 5),
(92, 5),
(95, 5),
(96, 5),
(98, 5),
(103, 5),
(104, 5),
(107, 5),
(111, 5),
(113, 5),
(114, 5),
(117, 5),
(130, 5),
(144, 5),
(145, 5),
(146, 5),
(164, 5),
(176, 5),
(183, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT '0',
  `text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `market_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `market_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 2, 'برجر ماك', 'اطلب الآن', 'top_start', '#ff3636', '#ff4747', '#ccccdd', '#1592ff', 'cover', NULL, NULL, 1, '2021-03-25 10:06:53', '2021-04-04 17:34:22'),
(3, 2, 'Mac is 24 hours now', 'Order Now', 'top_start', '#25d366', '#d32525', '#ccccdd', '#ff6565', 'cover', NULL, 4, 1, '2021-03-25 10:06:53', '2021-04-04 17:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '21ba23f2-3647-42f9-b146-040dbe418bbc', '2021-03-25 10:39:50', '2021-03-25 10:39:50'),
(2, '8c1a969c-064b-4ae1-88e8-4168eb98aaa0', '2021-03-25 10:42:06', '2021-03-25 10:42:06'),
(3, 'c79ed5d1-4455-4bb8-8708-7f1ba26d76d7', '2021-04-04 09:59:53', '2021-04-04 09:59:53'),
(4, 'bd1c9b5b-4bf0-4eb6-bf6d-a0eacc506a64', '2021-04-04 10:02:04', '2021-04-04 10:02:04'),
(5, '51c30951-51e1-4256-bc1d-9fb31408acdc', '2021-04-04 10:02:48', '2021-04-04 10:02:48'),
(6, '23a91ab7-d185-43d2-9372-88197da105ff', '2021-04-04 10:03:12', '2021-04-04 10:03:12'),
(7, 'dee29293-5486-478c-b0a9-1d7e948a3465', '2021-04-04 10:03:31', '2021-04-04 10:03:31'),
(8, '356a5755-c5e7-40f2-ad7c-a8db5f7e5386', '2021-04-04 10:03:49', '2021-04-04 10:03:49'),
(9, '68c610db-3abb-4851-949c-22857b1c395c', '2021-04-04 17:28:17', '2021-04-04 17:28:17'),
(10, 'e9b89847-f0a2-4798-a7f6-11cf64b17922', '2021-04-04 17:29:40', '2021-04-04 17:29:40'),
(11, '2ce6d543-2aea-49f1-9e45-06665e093ae8', '2021-04-04 17:33:58', '2021-04-04 17:33:58'),
(12, '40f489f0-94af-4fac-9d57-89b94cc564c3', '2021-04-04 17:34:11', '2021-04-04 17:34:11'),
(13, '4e4a7c44-422c-4719-b791-76acc513cca8', '2021-04-04 17:47:56', '2021-04-04 17:47:56'),
(14, 'bc6c3f56-cedb-411b-a7e9-06679ea998a1', '2021-04-04 17:52:25', '2021-04-04 17:52:25'),
(15, 'cd658846-d84f-4f19-a232-44e2548fde39', '2021-04-04 17:55:37', '2021-04-04 17:55:37'),
(16, 'd173438b-3b5f-437d-b2e7-9dcd5a6925fb', '2021-04-04 17:58:33', '2021-04-04 17:58:33'),
(17, '7aae51eb-708f-496e-a100-47e086ee73a5', '2021-04-04 18:00:01', '2021-04-04 18:00:01'),
(18, '929f162b-db70-45ad-b0e0-d266fc9d3cdc', '2021-04-04 18:00:41', '2021-04-04 18:00:41'),
(19, '23ce8b4f-c599-44e8-931f-57d7bd352405', '2021-04-04 18:03:44', '2021-04-04 18:03:44'),
(20, 'e0d67d4c-41e0-4ab2-bdc2-1f79fd4d8500', '2021-04-04 18:05:08', '2021-04-04 18:05:08'),
(21, 'b3d98fdf-6045-4391-a0e4-b5e6d066ac25', '2021-04-04 18:05:24', '2021-04-04 18:05:24'),
(22, '6f5368eb-f93b-41f2-891a-0a849abfef66', '2021-04-04 18:06:28', '2021-04-04 18:06:28'),
(23, '4cd867fb-197d-4ef6-947d-99cbd03f0130', '2021-04-04 18:06:43', '2021-04-04 18:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Islam Diab', 'islam@wssal.app', '$2y$10$Sf/Hjrj3yUuoaOHyRLAW2e1AFNsRHHEJlpEGSkXCdDn0q/TXTKzGW', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eBnmCfqRIhEr45Dt1A1RwpzNASmsJtIez0OT2k5m4Fs5cPn648pdpbR92Gxv', '2018-08-06 19:58:41', '2021-03-25 10:16:52'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 14:06:28', '2019-09-25 19:09:35'),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 19:31:26', '2020-03-29 14:44:30'),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 14:55:39', '2020-03-29 14:59:39'),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 16:49:44', '2020-03-29 14:22:10'),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 14:28:04', '2020-03-29 14:28:04'),
(7, 'borys', 'borys@wssal.app', '$2y$10$g1GnAH7DKn.JYLEYeRc4wu5BIHTCmU2Z.mQylmLCcx/Yy5xZePOLy', 'z05iDJuDw2Xa50dY7A0BI8Bxvl7hyVpwvArvTsagTXu9nYLH4hPjo35StajQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nhAnRGP5B7FGYaguOdLl30sTBCj2iWem7Rkbv63kNnBMWUnIwut6jNgDP3G4', '2021-03-25 10:31:46', '2021-03-25 10:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_markets`
--

INSERT INTO `user_markets` (`user_id`, `market_id`) VALUES
(2, 1),
(2, 3),
(2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`),
  ADD KEY `cart_options_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `driver_markets_market_id_foreign` (`market_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_market_id_foreign` (`market_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_market_id_foreign` (`market_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `markets_payouts_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD PRIMARY KEY (`field_id`,`market_id`),
  ADD KEY `market_fields_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_reviews_user_id_foreign` (`user_id`),
  ADD KEY `market_reviews_market_id_foreign` (`market_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_product_id_foreign` (`product_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
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
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_market_id_foreign` (`market_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`),
  ADD KEY `product_order_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_product_id_foreign` (`product_id`),
  ADD KEY `slides_market_id_foreign` (`market_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `user_markets_market_id_foreign` (`market_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_reviews`
--
ALTER TABLE `market_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD CONSTRAINT `cart_options_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD CONSTRAINT `driver_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD CONSTRAINT `markets_payouts_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD CONSTRAINT `market_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_fields_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD CONSTRAINT `market_reviews_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD CONSTRAINT `product_order_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_options_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD CONSTRAINT `user_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
