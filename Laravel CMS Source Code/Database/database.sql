-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 07:12 AM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivered_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(2, 3, NULL, 'Company Name', 'Test', 'Ionicecommerce', 'Suit# 876, North Street, Medsion eve', '', '10075', 'New York', 'NY', 223, 43);

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `myid` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `adminType` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`myid`, `user_name`, `first_name`, `last_name`, `email`, `password`, `isActive`, `address`, `city`, `state`, `zip`, `country`, `phone`, `image`, `adminType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Admin', '', 'demo@android.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '31271', '223', '+92 314 6681998', 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', 1, 'NBEdg0l26nDSieCDWmQzB7Pf7XcGl2wBETTBM7pAHUVQVvhky3uFxoBnQ4eT', '0000-00-00 00:00:00', '2017-12-11 20:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` mediumtext COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`) VALUES
(1, 'banner-1', '7', 'resources/assets/images/banner_images/1504099866.banner_1.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-30 13:31:06', '2017-08-30 13:31:06', 1, 'category'),
(2, 'Banner-2', '12', 'resources/assets/images/banner_images/1502370343.banner_2.jpg', '', NULL, 0, '2020-01-01 00:00:00', NULL, '2017-08-10 13:05:43', NULL, 1, 'category'),
(3, 'Banner-3', '23', 'resources/assets/images/banner_images/1502370366.banner_3.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:06', NULL, 1, 'category'),
(4, 'Banner-4', '17', 'resources/assets/images/banner_images/1502370387.banner_4.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:27', NULL, 1, 'category'),
(5, 'Banner-5', '19', 'resources/assets/images/banner_images/1502370406.banner_5.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:46', NULL, 1, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(1, 'resources/assets/images/category_images/1502285429.men.jpg', 'resources/assets/images/category_icons/1502101166.man-standing-up.png', 0, NULL, '2017-08-07 10:19:26', '2017-08-09 01:30:29'),
(2, 'resources/assets/images/category_images/1502285278.women.jpg', 'resources/assets/images/category_icons/1502101516.female-silhouette.png', 0, NULL, '2017-08-07 10:24:45', '2017-08-09 01:27:58'),
(3, 'resources/assets/images/category_images/1502285654.boys.jpg', 'resources/assets/images/category_icons/1502101936.man-standing-up.png', 0, NULL, '2017-08-07 10:32:16', '2017-08-09 01:34:14'),
(4, 'resources/assets/images/category_images/1502285903.girls.jpg', 'resources/assets/images/category_icons/1502103958.female-silhouette.png', 0, NULL, '2017-08-07 11:05:58', '2017-08-09 01:38:23'),
(5, 'resources/assets/images/category_images/1502285986.babies.jpg', 'resources/assets/images/category_icons/1502104163.crawling-baby-silhouette.png', 0, NULL, '2017-08-07 11:07:21', '2017-08-09 01:39:46'),
(6, 'resources/assets/images/category_images/1502286030.home.jpg', 'resources/assets/images/category_icons/1502104226.home.png', 0, NULL, '2017-08-07 11:10:26', '2017-08-09 01:40:30'),
(7, 'resources/assets/images/category_images/1502286458.polo_shirts.jpg', 'resources/assets/images/category_icons/1502105603.shirt.png', 1, NULL, '2017-08-07 11:33:23', '2017-08-09 01:47:38'),
(8, 'resources/assets/images/category_images/1502286584.casual.jpg', 'resources/assets/images/category_icons/1502178863.shirt.png', 1, NULL, '2017-08-08 07:54:23', '2017-08-09 01:49:44'),
(9, 'resources/assets/images/category_images/1502286701.jeans.jpg', 'resources/assets/images/category_icons/1502179389.jeans.png', 1, NULL, '2017-08-08 08:03:09', '2017-08-09 01:51:41'),
(10, 'resources/assets/images/category_images/1502284855.landscape-1482456067-jordan-take-flight.jpg', 'resources/assets/images/category_icons/1502179895.sneaker.png', 1, NULL, '2017-08-08 08:11:35', '2017-08-09 01:20:55'),
(11, 'resources/assets/images/category_images/1502284031.glasses.jpg', 'resources/assets/images/category_icons/1502180493.reading-glasses.png', 1, NULL, '2017-08-08 08:21:33', '2017-08-09 01:07:11'),
(12, 'resources/assets/images/category_images/1502287711.wo_dresses.jpg', 'resources/assets/images/category_icons/1502194101.dress.png', 2, NULL, '2017-08-08 12:08:21', '2017-08-09 02:08:31'),
(13, 'resources/assets/images/category_images/1502287196.wo_shirts.jpg', 'resources/assets/images/category_icons/1502194198.shirt.png', 2, NULL, '2017-08-08 12:09:58', '2017-08-09 01:59:56'),
(14, 'resources/assets/images/category_images/1502287459.wo_jans.jpg', 'resources/assets/images/category_icons/1502194291.jeans.png', 2, NULL, '2017-08-08 12:11:31', '2017-08-09 02:04:19'),
(15, 'resources/assets/images/category_images/1502287533.wo_handbags.jpg', 'resources/assets/images/category_icons/1502194427.handbag.png', 2, NULL, '2017-08-08 12:13:47', '2017-08-09 02:05:33'),
(16, 'resources/assets/images/category_images/1502287793.new_baby.jpg', 'resources/assets/images/category_icons/1502263460.smiling-baby.png', 5, NULL, '2017-08-09 07:24:20', '2017-08-09 02:09:53'),
(17, 'resources/assets/images/category_images/1502287893.baby_dress.jpg', 'resources/assets/images/category_icons/1502267564.dress.png', 5, NULL, '2017-08-09 08:32:44', '2017-08-09 02:11:33'),
(18, 'resources/assets/images/category_images/1502288151.baby_blaket.jpg', 'resources/assets/images/category_icons/1502273393.blanket.png', 5, NULL, '2017-08-09 10:09:53', '2017-08-09 02:15:51'),
(19, 'resources/assets/images/category_images/1502288250.bed_col.jpg', 'resources/assets/images/category_icons/1502274677.modern-double-bed.png', 6, NULL, '2017-08-09 10:31:17', '2017-08-09 02:17:30'),
(20, 'resources/assets/images/category_images/1502288368.pillows.jpg', 'resources/assets/images/category_icons/1502278859.pillow.png', 6, NULL, '2017-08-09 11:40:59', '2017-08-09 02:19:28'),
(21, 'resources/assets/images/category_images/1502346394.bath_robe.jpg', 'resources/assets/images/category_icons/1502280642.bath-robe.png', 6, NULL, '2017-08-09 12:10:42', '2017-08-10 06:26:34'),
(22, 'resources/assets/images/category_images/1502346623.polo_shirts.jpg', 'resources/assets/images/category_icons/1502283220.shirt2.png', 3, NULL, '2017-08-09 12:53:40', '2017-08-10 06:30:23'),
(23, 'resources/assets/images/category_images/1502346643.casual.jpg', 'resources/assets/images/category_icons/1502283252.shirt.png', 3, NULL, '2017-08-09 12:54:12', '2017-08-10 06:30:43'),
(24, 'resources/assets/images/category_images/1502346665.jeans.jpg', 'resources/assets/images/category_icons/1502283334.jeans.png', 3, NULL, '2017-08-09 12:55:34', '2017-08-10 06:31:05'),
(25, 'resources/assets/images/category_images/1502346742.shoes.jpg', 'resources/assets/images/category_icons/1502283383.sneaker.png', 3, NULL, '2017-08-09 12:56:23', '2017-08-10 06:32:22'),
(26, 'resources/assets/images/category_images/1502346940.rompers.jpg', 'resources/assets/images/category_icons/1502283482.dress.png', 4, NULL, '2017-08-09 12:58:02', '2017-08-10 06:35:40'),
(27, 'resources/assets/images/category_images/1502347098.skirts.jpg', 'resources/assets/images/category_icons/1502283595.short-skirt.png', 4, NULL, '2017-08-09 12:59:55', '2017-08-10 06:38:18'),
(28, 'resources/assets/images/category_images/1502347329.sweater.jpg', 'resources/assets/images/category_icons/1502283706.pullover.png', 4, NULL, '2017-08-09 01:01:46', '2017-08-10 06:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Men'),
(2, 1, 2, 'Mannen'),
(3, 1, 4, 'رجالي'),
(4, 2, 1, 'Women'),
(5, 2, 2, 'vrouw'),
(6, 2, 4, 'نساء'),
(7, 3, 1, 'Boys'),
(8, 3, 2, 'Jongens'),
(9, 3, 4, 'أولاد'),
(10, 4, 1, 'Girls'),
(11, 4, 2, 'meisjes'),
(12, 4, 4, 'الفتيات'),
(13, 5, 1, 'Baby'),
(14, 5, 2, 'Baby'),
(15, 5, 4, 'طفل'),
(16, 6, 1, 'Home'),
(17, 6, 2, 'Huis'),
(18, 6, 4, 'الصفحة الرئيسية'),
(19, 7, 1, 'Men Polo shirts'),
(20, 7, 2, 'Mannen polo shirts'),
(21, 7, 4, 'الرجال قمصان بولو'),
(22, 8, 1, 'Men Casual Shirts'),
(23, 8, 2, 'Mannen Casual Shirts'),
(24, 8, 4, 'الرجال قمصان عادية'),
(25, 9, 1, 'Men Jeans'),
(26, 9, 2, 'Mannen Jeans'),
(27, 9, 4, 'الرجال جينز'),
(28, 10, 1, 'Men Shoes'),
(29, 10, 2, 'Mannen schoenen'),
(30, 10, 4, 'احذية رجالية'),
(31, 11, 1, 'Sunglasses & Glasses'),
(32, 11, 2, 'Zonnebril & Bril'),
(33, 11, 4, 'النظارات الشمسية والنظارات'),
(34, 12, 1, 'Women Dresses'),
(35, 12, 2, 'Vrouwen Jurken'),
(36, 12, 4, 'الفساتين'),
(37, 13, 1, 'Women Shirts & Tops'),
(38, 13, 2, 'Vrouwen Shirts & Tops'),
(39, 13, 4, 'النساء قمصان، بلايز'),
(40, 14, 1, 'Women Jeans'),
(41, 14, 2, 'Vrouwen Jeans'),
(42, 14, 4, 'المرأة جينز'),
(43, 15, 1, 'Women Hand Bags'),
(44, 15, 2, 'Vrouwen Handtassen'),
(45, 15, 4, 'حقائب اليد للنساء'),
(46, 16, 1, 'New Born'),
(47, 16, 2, 'New Born'),
(48, 16, 4, 'مولود جديد'),
(49, 17, 1, 'Baby Dresses'),
(50, 17, 2, 'Baby Jurken'),
(51, 17, 4, 'فساتين الطفل'),
(52, 18, 1, 'Baby Blankets & Swaddles'),
(53, 18, 2, 'Baby dekens & zwadels'),
(54, 18, 4, 'طفل بطانيات و سوادلز'),
(55, 19, 1, 'Bedding Collections'),
(56, 19, 2, 'Bedden collecties'),
(57, 19, 4, 'مجموعات الفراش'),
(58, 20, 1, 'Throws & Pillows'),
(59, 20, 2, 'Kussens & Kussens'),
(60, 20, 4, 'رمي ووسائد'),
(61, 21, 1, 'Bath Robes'),
(62, 21, 2, 'Badjassen'),
(63, 21, 4, 'حمام الجلباب'),
(64, 22, 1, 'Boy Polo shirts'),
(65, 22, 2, 'Jongen Polo shirts'),
(66, 22, 4, 'بوي، بولو، القمصان'),
(67, 23, 1, 'Boy Casual Shirts'),
(68, 23, 2, 'Jongen Casual Shirts'),
(69, 23, 4, 'بوي، عارضة، القمصان'),
(70, 24, 1, 'Boy Pants & Jeans'),
(71, 24, 2, 'Jongen Broek & Jeans'),
(72, 24, 4, 'الفتيان السراويل والجينز'),
(73, 25, 1, 'Boy Shoes'),
(74, 25, 2, 'Jongen Schoenen'),
(75, 25, 4, 'أحذية الولد'),
(76, 26, 1, 'Dresses & Rompers'),
(77, 26, 2, 'Jurken & Rompers'),
(78, 26, 4, 'فساتين والسروال القصير'),
(79, 27, 1, 'Shorts & Skirts'),
(80, 27, 2, 'Shorts & Rokken'),
(81, 27, 4, 'السراويل والتنانير'),
(82, 28, 1, 'Sweaters'),
(83, 28, 2, 'Truien'),
(84, 28, 4, 'البلوزات');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(100) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(100) DEFAULT '0',
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(100) DEFAULT NULL,
  `usage_limit_per_user` int(100) DEFAULT NULL,
  `limit_usage_to_x_items` int(100) DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) DEFAULT NULL,
  `maximum_amount` decimal(10,2) DEFAULT NULL,
  `email_restrictions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`) VALUES
(3, 'PercentProduct_10', '2017-12-11 12:19:37', NULL, 'For All Products', 'percent_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '', 0, '0.00', '0.00', '', ''),
(4, 'FixedProduct_10', '2017-12-11 12:20:18', NULL, 'For All Products', 'fixed_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '', 0, '0.00', '0.00', '', ''),
(5, 'PercentCart_10', '2017-12-11 12:20:57', NULL, 'For All Products', 'percent', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '', 0, '0.00', '0.00', '', ''),
(6, 'FixedCart_10', '2017-12-11 12:21:20', NULL, 'For All Products', 'fixed_cart', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '', 0, '0.00', '0.00', '', ''),
(7, 'SingleCoupon_50', '2017-12-11 12:22:08', NULL, 'Individual Use', 'fixed_cart', 50, '2030-01-01 00:00:00', 0, 1, '', '', 0, 0, NULL, 0, '', '', 0, '0.00', '0.00', '', ''),
(8, 'FreeShipping_20', '2017-12-11 12:22:46', NULL, 'Free Shipping', 'fixed_cart', 20, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 1, '', '', 0, '0.00', '0.00', '', ''),
(9, 'ExcludeSale_15', '2017-12-11 12:23:28', NULL, 'Not for Sale Items', 'fixed_cart', 15, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '', 1, '0.00', '0.00', '', ''),
(10, 'Exclude_Shoes_25', '2017-12-11 12:25:16', NULL, 'Not For Men Shoes', 'fixed_cart', 25, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '', '10,10,10', 0, '0.00', '0.00', '', ''),
(11, 'Polo_Shirts_10', '2017-12-11 12:26:14', NULL, 'For Men Polo Shirts', 'percent_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '7,7,7', '', 0, '0.00', '0.00', '', ''),
(12, 'Jeans_10', '2017-12-11 12:27:09', NULL, 'For Men Jeans', 'percent', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, NULL, 0, '9,9,9', '', 0, '0.00', '0.00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, '.', '.', '2', NULL, '2017-02-09 00:00:00'),
(2, 'Euro', 'EUR', NULL, '€', '.', '.', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_picture` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(100) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_id` int(100) NOT NULL DEFAULT '0',
  `device_type` text COLLATE utf8_unicode_ci NOT NULL,
  `register_date` int(100) NOT NULL DEFAULT '0',
  `update_date` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isDesktop` tinyint(1) NOT NULL DEFAULT '0',
  `oneSignalId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isEnableMobile` tinyint(1) NOT NULL DEFAULT '1',
  `isEnableDesktop` tinyint(1) NOT NULL DEFAULT '1',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fedex_shipping`
--

INSERT INTO `fedex_shipping` (`fedex_id`, `title`, `user_name`, `password`, `parcel_height`, `parcel_width`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`) VALUES
(1, 'FedEx', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(100) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '10', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', '2017-01-10 00:00:00', '2017-01-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(100) NOT NULL,
  `label_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(1031, 'Home'),
(1, 'I\'ve forgotten my password?'),
(1030, 'Menu'),
(1029, 'Clear'),
(1028, 'Apply'),
(1027, 'Close'),
(1026, 'Price Range'),
(1025, 'Filters'),
(1024, 'My Wish List'),
(1023, 'Log Out'),
(1022, 'Please login or create an account for free'),
(1021, 'Login & Register'),
(1020, 'Save Address'),
(1018, 'State'),
(1019, 'Update Address'),
(1017, 'Post code'),
(1016, 'City'),
(1015, 'Zone'),
(1014, 'other'),
(1013, 'Country'),
(1012, 'Shipping Address'),
(1011, 'Proceed'),
(1010, 'Remove'),
(1008, 'by'),
(1009, 'View'),
(1007, 'Quantity'),
(1006, 'Price'),
(1005, 'continue shopping'),
(1004, 'Your cart is empty'),
(1003, 'My Cart'),
(1002, 'Continue'),
(1001, 'Error: invalid cvc number!'),
(1000, 'Error: invalid expiry date!'),
(999, 'Error: invalid card number!'),
(998, 'Expiration'),
(997, 'Expiration Date'),
(996, 'Card Number'),
(995, 'Payment'),
(994, 'Order Notes'),
(993, 'Shipping Cost'),
(992, 'Tax'),
(991, 'Products Price'),
(990, 'SubTotal'),
(989, 'Products'),
(988, 'Shipping Method'),
(987, 'Billing Address'),
(986, 'Order'),
(985, 'Next'),
(984, 'Same as Shipping Address'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(980, 'Already Memeber?'),
(979, 'Last Name'),
(978, 'First Name'),
(977, 'Create an Account'),
(976, 'Add new Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(968, 'Customer Orders'),
(967, 'Change Password'),
(966, 'New Password'),
(965, 'Current Password'),
(964, 'Update'),
(963, 'Date of Birth'),
(962, 'Mobile'),
(961, 'My Account'),
(960, 'Likes'),
(959, 'newest'),
(958, 'top seller'),
(957, 'special'),
(956, 'most liked'),
(955, 'Cancel'),
(954, 'Sort Products'),
(953, 'Special Products'),
(952, 'Price : low - high'),
(951, 'Price : high - low'),
(950, 'Z - A'),
(949, 'A - Z'),
(948, 'All'),
(947, 'Explore More'),
(946, 'Note to the buyer'),
(945, 'Coupon'),
(944, 'coupon code'),
(943, 'Coupon Amount'),
(942, 'Coupon Code'),
(941, 'Food Categories'),
(940, 'Recipe of Day'),
(939, 'Top Dishes'),
(938, 'Skip'),
(937, 'Term and Services'),
(936, 'Privacy Policy'),
(935, 'Refund Policy'),
(934, 'Newest'),
(933, 'OUT OF STOCK'),
(932, 'Select Language'),
(931, 'Reset'),
(930, 'Shop'),
(929, 'Settings'),
(928, 'Enter keyword'),
(927, 'News'),
(926, 'Top Sellers'),
(925, 'Go Back'),
(924, 'Word Press Post Detail'),
(923, 'Explore'),
(922, 'Continue Adding'),
(921, 'Your wish List is empty'),
(920, 'Favourite'),
(919, 'Continue Shopping'),
(918, 'My Orders'),
(917, 'Thank you for shopping with us.'),
(916, 'Thank You'),
(915, 'Shipping method'),
(914, 'Sub Categories'),
(913, 'Main Categories'),
(912, 'Search'),
(911, 'Reset Filters'),
(910, 'No Products Found'),
(909, 'OFF'),
(908, 'Techincal details'),
(907, 'Product Description'),
(906, 'ADD TO CART'),
(905, 'Add to Cart'),
(904, 'In Stock'),
(903, 'Out of Stock'),
(902, 'New'),
(901, 'Product Details'),
(900, 'Shipping'),
(899, 'Sub Total'),
(898, 'Total'),
(897, 'Price Detail'),
(896, 'Order Detail'),
(895, 'Got It!'),
(894, 'Skip Intro'),
(893, 'Intro'),
(892, 'REMOVE'),
(891, 'Deals'),
(890, 'All Categories'),
(889, 'Most Liked'),
(888, 'Special Deals'),
(887, 'Top Seller'),
(886, 'Products are available.'),
(885, 'Recently Viewed'),
(884, 'Please connect to the internet'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(880, 'Categories'),
(879, 'About Us'),
(878, 'Send'),
(877, 'Forgot Password'),
(876, 'Register'),
(875, 'Password'),
(874, 'Email'),
(873, 'or'),
(872, 'Login with'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(100) NOT NULL,
  `label_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `label_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1372, 'Most Liked', 1, 956),
(1371, 'Special', 1, 957),
(1370, 'Top Seller', 1, 958),
(1369, 'Newest ', 1, 959),
(1368, 'Likes', 1, 960),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1365, 'Date of Birth', 1, 963),
(1364, 'Update', 1, 964),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1354, 'Order Status', 1, 969),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1352, 'Add new Address', 1, 976),
(1351, 'Create an Account', 1, 977),
(1350, 'First Name', 1, 978),
(1349, 'Last Name', 1, 979),
(1348, 'Already Memeber?', 1, 980),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1333, 'Payment', 1, 995),
(1332, 'Card Number', 1, 996),
(1331, 'Expiration Date', 1, 997),
(1330, 'Expiration', 1, 998),
(1329, 'Error: invalid card number!', 1, 999),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1326, 'Continue', 1, 1002),
(1325, 'My Cart', 1, 1003),
(1324, 'Your cart is empty', 1, 1004),
(1323, 'continue shopping', 1, 1005),
(1322, 'Price', 1, 1006),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1317, 'Proceed', 1, 1011),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1306, 'Please login or create an account for free', 1, 1022),
(1305, 'Log Out', 1, 1023),
(1304, 'My Wish List', 1, 1024),
(1303, 'Filters', 1, 1025),
(1302, 'Price Range', 1, 1026),
(1301, 'Close', 1, 1027),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1298, 'Menu', 1, 1030),
(1297, 'Home', 1, 1031),
(1296, 'Einloggen mit', 2, 872),
(1295, 'oder', 2, 873),
(1294, 'Email', 2, 874),
(1293, 'Passwort', 2, 875),
(1292, 'Neu registrieren', 2, 876),
(1291, 'Passwort vergessen', 2, 877),
(1290, 'Senden', 2, 878),
(1289, 'Über uns', 2, 879),
(1288, 'Kategorien', 2, 880),
(1287, 'Deine Nachricht', 2, 883),
(1286, 'Name', 2, 882),
(1285, 'Kontaktiere uns', 2, 881),
(1284, 'Bitte wenden Sie sich an das Internet', 2, 884),
(1280, 'Besondere Angebote', 2, 888),
(1281, 'Oben Verkäufer', 2, 887),
(1282, 'Produkte sind verfügbar.', 2, 886),
(1283, 'zuletzt angesehen', 2, 885),
(1279, 'Am meisten gemocht', 2, 889),
(1273, 'Ich habs!', 2, 895),
(1274, 'Intro überspringen', 2, 894),
(1275, 'Intro', 2, 893),
(1276, 'ENTFERNEN', 2, 892),
(1277, 'Angebote', 2, 891),
(1278, 'Alle Kategorien', 2, 890),
(1271, 'Preis Detail', 2, 897),
(1272, 'Bestelldetails', 2, 896),
(1267, 'Produktdetails', 2, 901),
(1268, 'Versand', 2, 900),
(1269, 'Sub gesamt', 2, 899),
(1270, 'Gesamt', 2, 898),
(1264, 'Auf Lager', 2, 904),
(1265, 'Ausverkauft', 2, 903),
(1266, 'Neu', 2, 902),
(1260, 'Technische Details', 2, 908),
(1261, 'Produktbeschreibung', 2, 907),
(1262, 'in den Warenkorb legen', 2, 906),
(1263, 'in den Warenkorb legen', 2, 905),
(1259, 'AUS', 2, 909),
(1256, 'Suche', 2, 912),
(1257, 'Filter zurücksetzen', 2, 911),
(1258, 'Keine Produkte gefunden', 2, 910),
(1255, 'Hauptkategorien', 2, 913),
(1254, 'Unterkategorien', 2, 914),
(1253, 'Versandart', 2, 915),
(1252, 'Danke', 2, 916),
(1251, 'Danke für ihren Einkauf.', 2, 917),
(1250, 'Meine Befehle', 2, 918),
(1248, 'Favorit', 2, 920),
(1249, 'Mit dem Einkaufen fortfahren', 2, 919),
(1247, 'Deine Wunschliste ist leer', 2, 921),
(1245, 'Erforschen', 2, 923),
(1246, 'Weiter hinzufügen', 2, 922),
(1244, 'Word Press Post Detail', 2, 924),
(1242, 'Meist gekauft', 2, 926),
(1243, 'Geh zurück', 2, 925),
(1240, 'Schlüsselwort eingeben', 2, 928),
(1241, 'Nachrichten', 2, 927),
(1239, 'instellingen', 2, 929),
(1235, 'NIET OP VOORRAAD', 2, 933),
(1237, 'Reset', 2, 931),
(1238, 'Winkel', 2, 930),
(1236, 'Selecteer Taal', 2, 932),
(1234, 'Nieuwste', 2, 934),
(1233, 'Rückgaberecht', 2, 935),
(1232, 'Datenschutz-Bestimmungen', 2, 936),
(1230, 'Overspringen', 2, 938),
(1231, 'Term und Dienstleistungen', 2, 937),
(1228, 'Recept van de dag', 2, 940),
(1229, 'Topgerechten', 2, 939),
(1227, 'Voedselcategorieën', 2, 941),
(1225, 'Coupon Bedrag', 2, 943),
(1226, 'Coupon Code', 2, 942),
(1223, 'Coupon', 2, 945),
(1224, 'coupon code', 2, 944),
(1221, 'Ontdek meer', 2, 947),
(1222, 'Opmerking aan de koper', 2, 946),
(1220, 'Alle', 2, 948),
(1218, 'Z - A', 2, 950),
(1219, 'A - Z', 2, 949),
(1217, 'Prijs : hoog - laag', 2, 951),
(1216, 'Prijs : laag - hoog', 2, 952),
(1215, 'Speciale producten', 2, 953),
(1213, 'Annuleer', 2, 955),
(1214, 'Sorteer producten', 2, 954),
(1211, 'speciaal', 2, 957),
(1212, 'meest leuk gevonden', 2, 956),
(1210, 'Top verkoper', 2, 958),
(1206, 'mobiel', 2, 962),
(1207, 'Mein Konto', 2, 961),
(1208, 'sympathieën', 2, 960),
(1209, 'nieuwste', 2, 959),
(1203, 'Aktuelles Passwort', 2, 965),
(1204, 'Aktualisieren', 2, 964),
(1205, 'Geburtsdatum', 2, 963),
(1202, 'Neues Kennwort', 2, 966),
(1200, 'Kundenbestellungen', 2, 968),
(1201, 'Passwort ändern', 2, 967),
(1197, 'Anzahl der Produkte', 2, 972),
(1198, 'Datum', 2, 973),
(1199, 'Kundenadresse', 2, 974),
(1195, 'Bestellungen ID', 2, 970),
(1196, 'Produktpreis', 2, 971),
(1194, 'Bestellstatus', 2, 969),
(1193, 'Bitte fügen Sie Ihre neue Versandadresse für die weitere Bearbeitung Ihrer Bestellung hinzu', 2, 975),
(1191, 'Ein Konto erstellen', 2, 977),
(1192, 'Neue Adresse hinzufügen', 2, 976),
(1190, 'Vorname', 2, 978),
(1187, 'Telefon', 2, 983),
(1188, 'Schon Memeber?', 2, 980),
(1189, 'Familienname', 2, 979),
(1185, 'Rechnungsinfo', 2, 981),
(1186, 'Adresse', 2, 982),
(1183, 'Nächster', 2, 985),
(1184, 'Hetzelfde als verzendadres', 2, 984),
(1181, 'Rechnungsadresse', 2, 987),
(1182, 'Auftrag', 2, 986),
(1179, 'Produkte', 2, 989),
(1180, 'Versandart', 2, 988),
(1178, 'Zwischensumme', 2, 990),
(1176, 'Steuer', 2, 992),
(1177, 'Produkte Preis', 2, 991),
(1173, 'Zahlung', 2, 995),
(1174, 'Bestellhinweise', 2, 994),
(1175, 'Versandkosten', 2, 993),
(1172, 'Kartennummer', 2, 996),
(1168, 'Fehler: ungültiges Verfalldatum!', 2, 1000),
(1169, 'Fehler: ungültige Kartennummer!', 2, 999),
(1170, 'Ablauf', 2, 998),
(1171, 'Haltbarkeitsdatum', 2, 997),
(1166, 'Fortsetzen', 2, 1002),
(1167, 'Fehler: ungültige cvc-Nummer!', 2, 1001),
(1165, 'Mein Warenkorb', 2, 1003),
(1163, 'mit dem Einkaufen fortfahren', 2, 1005),
(1164, 'dein Wagen ist leer', 2, 1004),
(1160, 'Aussicht', 2, 1009),
(1161, 'Anzahl', 2, 1007),
(1162, 'Preis', 2, 1006),
(1157, 'Vorgehen', 2, 1011),
(1158, 'Entfernen', 2, 1010),
(1159, 'durch', 2, 1008),
(1155, 'Land', 2, 1013),
(1156, 'Lieferanschrift', 2, 1012),
(1154, 'andere', 2, 1014),
(1152, 'Stadt', 2, 1016),
(1153, 'Zone', 2, 1015),
(1150, 'Adresse aktualisieren', 2, 1019),
(1151, 'Postleitzahl', 2, 1017),
(1148, 'Adresse speichern', 2, 1020),
(1149, 'Bundesland', 2, 1018),
(1147, 'Anmeldung & registrieren', 2, 1021),
(1145, 'Ausloggen', 2, 1023),
(1146, 'Bitte loggen Sie sich ein oder erstellen Sie einen kostenlosen Account', 2, 1022),
(1144, 'Meine Wunschliste', 2, 1024),
(1141, 'Schließen', 2, 1027),
(1142, 'Preisklasse', 2, 1026),
(1143, 'Filter', 2, 1025),
(1139, 'Klar', 2, 1029),
(1140, 'Sich bewerben', 2, 1028),
(1138, 'Menü', 2, 1030),
(1137, 'Ich habe mein Passwort vergessen?', 2, 1),
(1136, 'Zuhause', 2, 1031),
(1135, 'Erstellen eines Kontos bedeutet, dass Sie mit den Nutzungsbedingungen von shopify, Datenschutzbestimmungen in Ordnung sind', 2, 2),
(1133, 'أو', 4, 873),
(1134, 'تسجيل الدخول مع', 4, 872),
(1131, 'كلمه السر', 4, 875),
(1132, 'البريد الإلكتروني', 4, 874),
(1130, 'تسجيل', 4, 876),
(1128, 'إرسال', 4, 878),
(1129, 'هل نسيت كلمة المرور', 4, 877),
(1127, 'معلومات عنا', 4, 879),
(1126, 'الاقسام', 4, 880),
(1125, 'رسالتك', 4, 883),
(1124, 'اسم', 4, 882),
(1123, 'اتصل بنا', 4, 881),
(1121, 'شوهدت مؤخرا', 4, 885),
(1122, 'يرجى الاتصال بالإنترنت', 4, 884),
(1120, 'المنتجات المتاحة.', 4, 886),
(1119, 'أعلى بائع', 4, 887),
(1118, 'أعلى بائع', 4, 888),
(1116, 'جميع الفئات', 4, 890),
(1117, 'الأكثر إعجابا', 4, 889),
(1114, 'إزالة', 4, 892),
(1115, 'صفقات', 4, 891),
(1112, 'تخطي مقدمة', 4, 894),
(1113, 'مقدمة', 4, 893),
(1111, 'فهمتك!', 4, 895),
(1110, 'تفاصيل الأمر', 4, 896),
(1108, 'مجموع', 4, 898),
(1109, 'السعر التفاصيل', 4, 897),
(1106, 'الشحن', 4, 900),
(1107, 'المجموع الفرعي', 4, 899),
(1105, 'تفاصيل المنتج', 4, 901),
(1104, 'الجديد', 4, 902),
(1099, 'وصف المنتج', 4, 907),
(1100, 'أضف إلى السلة', 4, 906),
(1101, 'أضف إلى السلة', 4, 905),
(1102, 'في المخزن', 4, 904),
(1103, 'إنتهى من المخزن', 4, 903),
(1097, 'إيقاف', 4, 909),
(1098, 'تفاصيل فنية', 4, 908),
(1096, 'لم يتم العثور على منتجات', 4, 910),
(1095, 'إعادة تعيين الفلاتر', 4, 911),
(1094, 'بحث', 4, 912),
(1092, 'الفئات الفرعية', 4, 914),
(1093, 'الفئات الرئيسية', 4, 913),
(1091, 'طريقة الشحن', 4, 915),
(1089, 'شكرا للتسوق معنا.', 4, 917),
(1090, 'شكرا', 4, 916),
(1088, 'طلباتي', 4, 918),
(1086, 'مفضل', 4, 920),
(1087, 'مواصلة التسوق', 4, 919),
(1085, 'قائمة رغباتك فارغة', 4, 921),
(1083, 'إستكشاف', 4, 923),
(1084, 'متابعة إضافة', 4, 922),
(1081, 'عُد', 4, 925),
(1082, 'Word Press Post التفاصيل', 4, 924),
(1078, 'أدخل الكلمة المفتاحية', 4, 928),
(1079, 'أخبار', 4, 927),
(1080, 'أفضل البائعين', 4, 926),
(1076, 'متجر', 4, 930),
(1077, 'إعدادات', 4, 929),
(1075, 'إعادة تعيين', 4, 931),
(1074, 'اختار اللغة', 4, 932),
(1073, 'إنتهى من المخزن', 4, 933),
(1071, 'سياسة الاسترجاع', 4, 935),
(1072, 'الأحدث', 4, 934),
(1069, 'المدة والخدمات', 4, 937),
(1070, 'سياسة الخصوصية', 4, 936),
(1067, 'أفضل الأطباق', 4, 939),
(1068, 'تخطى', 4, 938),
(1064, 'رمز القسيمة', 4, 942),
(1065, 'فئات الغذاء', 4, 941),
(1066, 'وصفة من اليوم', 4, 940),
(1063, 'قيمة القسيمة', 4, 943),
(1061, 'كوبون', 4, 945),
(1062, 'رمز القسيمة', 4, 944),
(1060, 'ملاحظة للمشتري', 4, 946),
(1057, 'ا - ي', 4, 949),
(1058, 'الكل', 4, 948),
(1059, 'استكشاف المزيد', 4, 947),
(1055, 'السعر : متوسط - منخفض', 4, 951),
(1056, 'ي - ا', 4, 950),
(1054, 'السعر : منخفض - متوسط', 4, 952),
(1053, 'المنتجات الخاصة', 4, 953),
(1052, 'فرز المنتجات', 4, 954),
(1051, 'إلغاء', 4, 955),
(1050, 'الأكثر إعجابا', 4, 956),
(1049, 'خاص', 4, 957),
(1047, 'أحدث', 4, 959),
(1048, 'أعلى بائع', 4, 958),
(1046, 'الإعجابات', 4, 960),
(1045, 'حسابي', 4, 961),
(1043, 'تاريخ الولادة', 4, 963),
(1044, 'التليفون المحمول', 4, 962),
(1042, 'تحديث', 4, 964),
(1041, 'كلمة السر الحالية', 4, 965),
(1040, 'كلمة السر الجديدة', 4, 966),
(1039, 'تغيير كلمة السر', 4, 967),
(1035, 'عدد المنتجات', 4, 972),
(1036, 'تاريخ', 4, 973),
(1037, 'عنوان العميل', 4, 974),
(1038, 'طلبات العملاء', 4, 968),
(1034, 'سعر المنتج', 4, 971),
(1033, 'معرف الطلبات', 4, 970),
(1032, 'حالة الطلب', 4, 969),
(1031, 'الرجاء إضافة عنوان الشحن الجديد لمعالجة فوثر من طلبك', 4, 975),
(1030, 'إضافة عنوان جديد', 4, 976),
(1027, 'الكنية', 4, 979),
(1028, 'الاسم الاول', 4, 978),
(1029, 'انشئ حساب', 4, 977),
(1024, 'عنوان', 4, 982),
(1025, 'هاتف', 4, 983),
(1026, 'بالفعل ميميبر؟', 4, 980),
(1023, 'معلومات الفواتير', 4, 981),
(1022, 'نفس عنوان الشحن', 4, 984),
(1021, 'التالى', 4, 985),
(1020, 'طلب', 4, 986),
(1019, 'عنوان وصول الفواتير', 4, 987),
(1018, 'طريقة الشحن', 4, 988),
(1017, 'منتجات', 4, 989),
(1016, 'المجموع الفرعي', 4, 990),
(1015, 'أسعار المنتجات', 4, 991),
(1014, 'ضريبة', 4, 992),
(1013, 'تكلفة الشحن', 4, 993),
(1012, 'ترتيب ملاحظات', 4, 994),
(1011, 'دفع', 4, 995),
(1010, 'رقم البطاقة', 4, 996),
(1009, 'تاريخ إنتهاء الصلاحية', 4, 997),
(1008, 'انتهاء الصلاحية', 4, 998),
(1007, 'خطأ: رقم بطاقة غير صالح!', 4, 999),
(1006, 'خطأ: تاريخ انتهاء الصلاحية غير صالح!', 4, 1000),
(1005, 'خطأ: رقم كفك غير صالح!', 4, 1001),
(1004, 'استمر', 4, 1002),
(1003, 'سلة التسوق', 4, 1003),
(1002, 'عربة التسوق فارغة', 4, 1004),
(1001, 'مواصلة التسوق', 4, 1005),
(1000, 'السعر', 4, 1006),
(999, 'كمية', 4, 1007),
(998, 'رأي', 4, 1009),
(997, 'بواسطة', 4, 1008),
(996, 'إزالة', 4, 1010),
(995, 'تقدم', 4, 1011),
(994, 'عنوان الشحن', 4, 1012),
(993, 'بلد', 4, 1013),
(992, 'آخر', 4, 1014),
(991, 'منطقة', 4, 1015),
(990, 'مدينة', 4, 1016),
(989, 'الرمز البريدي', 4, 1017),
(988, 'تحديث العنوان', 4, 1019),
(987, 'حالة', 4, 1018),
(986, 'حفظ العنوان', 4, 1020),
(985, 'تسجيل الدخول والتسجيل', 4, 1021),
(984, 'الرجاء تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(983, 'الخروج', 4, 1023),
(982, 'قائمة امنياتي', 4, 1024),
(981, 'الفلاتر', 4, 1025),
(980, 'نطاق السعر', 4, 1026),
(979, 'قريب', 4, 1027),
(978, 'تطبيق', 4, 1028),
(977, 'واضح', 4, 1029),
(976, 'قائمة طعام', 4, 1030),
(975, ' بي؟ نسيت كلمة المرور الخاصة', 4, 1),
(974, 'الصفحة الرئيسية', 4, 1031),
(973, 'إنشاء حساب يعني أنك على ما يرام مع شروط خدمة شوبيفي، سياسة الخصوصية', 4, 2),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`) VALUES
(1, 'English', 'en', 'resources/assets/images/language_flags/1486556365.503984030_english.jpg', 'english', 1, 'ltr', 1),
(2, 'German', 'de', 'resources/assets/images/language_flags/1502799244.1501241739.german.jpg', 'German', 2, 'ltr', 0),
(4, 'Arabic', 'ar', 'resources/assets/images/language_flags/1502799254.1501241757.uae.jpg', 'arabic', 4, 'rtl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(100) NOT NULL,
  `liked_customers_id` int(100) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(10, 79, 1, '2017-08-22 07:51:10'),
(11, 78, 1, '2017-08-22 07:51:13'),
(12, 1, 3, '2017-09-07 12:25:48'),
(13, 2, 3, '2017-09-07 12:25:52'),
(14, 4, 3, '2017-09-07 12:25:55'),
(15, 80, 3, '2017-09-08 10:09:40'),
(16, 79, 3, '2017-09-08 10:09:43'),
(17, 78, 3, '2017-09-08 10:09:44'),
(18, 81, 3, '2017-09-08 10:09:46'),
(19, 2, 79, '2017-12-11 20:35:46'),
(20, 8, 79, '2017-12-11 20:35:51'),
(21, 11, 79, '2017-12-11 20:35:54'),
(22, 81, 79, '2017-12-11 20:35:57'),
(23, 2, 5, '2017-12-12 09:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` mediumtext COLLATE utf8_unicode_ci,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(4, 'Nasir ALi', '', '2017-12-06 10:45:54', NULL),
(5, 'Nasir ALi', '', '2017-12-06 10:46:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` mediumtext COLLATE utf8_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`) VALUES
(5, 'resources/assets/images/news_images/1502109905.h.png', '2017-08-07 12:45:05', NULL, 1, 0),
(6, 'resources/assets/images/news_images/1513003664.demo_2_news_banner.jpg', '2017-08-22 06:36:32', '2017-12-11 02:47:44', 1, 1),
(7, 'resources/assets/images/news_images/1503929570.banner-4.png', '2017-08-22 07:00:29', '2017-08-28 02:12:50', 1, 1),
(8, 'resources/assets/images/news_images/1504092360.about.png', '2017-08-22 07:03:16', '2017-08-30 11:26:00', 1, 0),
(9, 'resources/assets/images/news_images/1504092640.laravel2.png', '2017-08-22 07:57:33', '2017-08-30 11:30:40', 1, 0),
(10, 'resources/assets/images/news_images/1504092240.ionic.png', '2017-08-22 07:59:33', '2017-08-30 11:24:00', 1, 0),
(11, 'resources/assets/images/news_images/1504091780.restaurant.png', '2017-08-22 08:04:29', '2017-08-30 11:16:20', 1, 0),
(12, 'resources/assets/images/news_images/1504091963.fashion.png', '2017-08-22 08:06:23', '2017-08-30 11:19:23', 1, 0),
(13, 'resources/assets/images/news_images/1504092054.electronics.png', '2017-08-22 08:07:23', '2017-08-30 11:20:54', 1, 0),
(14, 'resources/assets/images/news_images/1504091642.language.png', '2017-08-22 08:10:39', '2017-08-30 11:14:02', 1, 0),
(15, 'resources/assets/images/news_images/1504091465.payment.png', '2017-08-22 08:15:16', '2017-08-30 11:11:05', 1, 0),
(16, 'resources/assets/images/news_images/1504091072.push_notifications.png', '2017-08-22 08:17:28', '2017-08-30 11:04:32', 1, 0),
(17, 'resources/assets/images/news_images/1504091049.local_notifications.png', '2017-08-22 08:18:08', '2017-08-30 11:04:09', 1, 0),
(18, 'resources/assets/images/news_images/1504091024.products.png', '2017-08-22 08:18:51', '2017-08-30 11:03:44', 1, 0),
(19, 'resources/assets/images/news_images/1504091001.social.png', '2017-08-22 08:19:35', '2017-08-30 11:03:21', 1, 0),
(20, 'resources/assets/images/news_images/1504090986.shipping_method.png', '2017-08-22 08:22:33', '2017-08-30 11:03:06', 1, 0),
(21, 'resources/assets/images/news_images/1504090941.theme.png', '2017-08-22 08:23:22', '2017-08-30 11:02:21', 1, 0),
(22, 'resources/assets/images/news_images/1504090926.coupon_support.png', '2017-08-22 10:52:53', '2017-08-30 11:02:06', 1, 0),
(23, 'resources/assets/images/news_images/1504090906.profile_pic.png', '2017-08-22 10:53:45', '2017-08-30 11:01:46', 1, 0),
(24, 'resources/assets/images/news_images/1504090888.social_share.png', '2017-08-22 10:54:24', '2017-08-30 11:01:28', 1, 0),
(25, 'resources/assets/images/news_images/1504090868.wishlist.png', '2017-08-22 10:55:13', '2017-08-30 11:01:08', 1, 0),
(26, 'resources/assets/images/news_images/1504088925.wordpress.png', '2017-08-22 10:56:15', '2017-08-30 10:28:45', 1, 0),
(27, 'resources/assets/images/news_images/1504088895.app_tutorial.png', '2017-08-22 10:56:55', '2017-08-30 10:28:15', 1, 0),
(28, 'resources/assets/images/news_images/1504088865.price_filter.png', '2017-08-22 10:59:38', '2017-08-30 10:27:45', 1, 0),
(29, 'resources/assets/images/news_images/1504088836.sorting.png', '2017-08-22 11:03:06', '2017-08-30 10:27:16', 1, 0),
(30, 'resources/assets/images/news_images/1504088735.product_searching.png', '2017-08-22 11:03:53', '2017-08-30 10:25:35', 1, 0),
(31, 'resources/assets/images/news_images/1504088705.fully_customizable.png', '2017-08-22 11:04:34', '2017-08-30 10:25:05', 1, 0),
(32, 'resources/assets/images/news_images/1504087261.horizontal_Slider.png', '2017-08-22 11:09:25', '2017-08-30 10:01:01', 1, 0),
(33, 'resources/assets/images/news_images/1504087219.customization.png', '2017-08-22 11:13:38', '2017-08-30 10:00:19', 1, 0),
(34, 'resources/assets/images/news_images/1504087179.grid_list.png', '2017-08-22 11:14:16', '2017-08-30 09:59:39', 1, 0),
(35, 'resources/assets/images/news_images/1504083663.home_page_styles.png', '2017-08-22 11:15:19', '2017-08-30 09:01:03', 1, 0),
(36, 'resources/assets/images/news_images/1504015398.shop_page.png', '2017-08-22 11:16:24', '2017-08-29 02:03:18', 1, 0),
(37, 'resources/assets/images/news_images/1504015381.my_orders.png', '2017-08-22 11:17:04', '2017-08-29 02:03:01', 1, 0),
(38, 'resources/assets/images/news_images/1504015363.about_contact_pages.png', '2017-08-22 11:17:49', '2017-08-29 02:02:43', 1, 0),
(39, 'resources/assets/images/news_images/1504083589.Asset 2.png', '2017-08-22 11:18:14', '2017-08-30 08:59:49', 1, 0),
(40, 'resources/assets/images/news_images/1504015347.info_pages.png', '2017-08-22 11:18:53', '2017-08-29 02:02:27', 1, 0),
(41, 'resources/assets/images/news_images/1504015330.app_settings.png', '2017-08-22 11:19:57', '2017-08-29 02:02:10', 1, 0),
(42, 'resources/assets/images/news_images/1504015307.recently_item.png', '2017-08-22 11:24:05', '2017-08-29 02:01:47', 1, 0),
(43, 'resources/assets/images/news_images/1504015288.move_to_top.png', '2017-08-22 11:24:47', '2017-08-29 02:01:28', 1, 0),
(44, 'resources/assets/images/news_images/1504015272.product_price_discount.png', '2017-08-22 11:25:49', '2017-08-29 02:01:12', 1, 0),
(45, 'resources/assets/images/news_images/1504015246.inventory_management.png', '2017-08-22 11:26:24', '2017-08-29 02:00:46', 1, 0),
(46, 'resources/assets/images/news_images/1504013177.horizontal_Slider.png', '2017-08-22 11:26:59', '2017-08-29 01:26:17', 1, 0),
(47, 'resources/assets/images/news_images/1504013161.on_scroll_product_loading.png', '2017-08-22 11:33:04', '2017-08-29 01:26:01', 1, 0),
(48, 'resources/assets/images/news_images/1504013140.product_additional_attributes.png', '2017-08-22 11:36:02', '2017-08-29 01:25:40', 1, 0),
(49, 'resources/assets/images/news_images/1504012761.multi_product_images.png', '2017-08-22 11:36:36', '2017-08-29 01:19:21', 1, 0),
(50, 'resources/assets/images/news_images/1503928378.cart_page.png', '2017-08-22 11:37:11', '2017-08-28 01:52:58', 1, 0),
(51, 'resources/assets/images/news_images/1503928065.shipping_managment.png', '2017-08-22 11:37:48', '2017-08-28 01:47:45', 1, 0),
(52, 'resources/assets/images/news_images/1504083328.Asset 1.png', '2017-08-22 11:38:21', '2017-08-30 08:55:28', 1, 0),
(53, 'resources/assets/images/news_images/1503927733.animtions.png', '2017-08-22 11:38:58', '2017-08-28 01:42:38', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(6, 'resources/assets/images/news_categories_images/1512997556.1504092793.app_features.png', '', 0, NULL, '2017-08-22 06:20:50', '2017-12-11 01:05:56'),
(7, 'resources/assets/images/news_categories_images/1512997573.1504092906.introduction.png', '', 0, NULL, '2017-08-22 06:22:50', '2017-12-11 01:06:13'),
(8, 'resources/assets/images/news_categories_images/1512997576.1504092995.platform.png', '', 0, NULL, '2017-08-22 06:30:31', '2017-12-11 01:06:16'),
(9, 'resources/assets/images/news_categories_images/1512997580.1504093080.screenshots.png', '', 0, NULL, '2017-08-22 06:31:50', '2017-12-11 01:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(16, 6, 1, 'App Features'),
(17, 6, 2, 'App Functies'),
(18, 6, 4, 'ميزات التطبيق'),
(19, 7, 1, 'Introduction'),
(20, 7, 2, 'Invoering'),
(21, 7, 4, 'المقدمة'),
(22, 8, 1, 'Platforms'),
(23, 8, 2, 'Platforms'),
(24, 8, 4, 'منصات'),
(25, 9, 1, 'Screen Shots'),
(26, 9, 2, 'Schermafbeeldingen'),
(27, 9, 4, 'لقطات الشاشة');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci,
  `news_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(5, 1, 'Test Post', '<p>Test PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest Post</p>\r\n', NULL, 0),
(5, 2, 'German Test Post', '<p>German Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test Post</p>\r\n', NULL, 0),
(5, 4, 'Arabic Test Post', '<p>Arabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test Post</p>\r\n', NULL, 0),
(6, 1, 'Why To choose this App for your Project?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 2, 'Waarom deze applicatie?', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 4, 'لماذا هذا التطبيق؟', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 1, 'Tools and Technology', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(7, 2, 'Gereedschap en technologie', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(7, 4, 'الأدوات والتكنولوجيا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(8, 1, 'About Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(8, 2, 'Over ons', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(8, 4, 'معلومات عنا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(9, 1, 'Laravel', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(9, 2, 'Laravel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(9, 4, 'Laravel', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(10, 1, 'Ionic Framework', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(10, 2, 'Ionic Framework', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(10, 4, 'الإطار الأيوني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(11, 1, 'Resturant', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(11, 2, 'Resturant', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(11, 4, 'المطعم', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(12, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(12, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(12, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(13, 1, 'Electronics', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(13, 2, 'Elektronica', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(13, 4, 'إلكترونيات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(14, 1, 'Multi Language', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(14, 2, 'Multi Language', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(14, 4, 'متعدد اللغات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(15, 1, 'Multiple Payment Gateways', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(15, 2, 'Meerdere betalingsgateways', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(15, 4, 'بوابات الدفع المتعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(16, 1, 'Push Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(16, 2, 'Push Notifications', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(16, 4, 'دفع الإخطارات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(17, 1, 'Local Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(17, 2, 'Lokale meldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(17, 4, 'الإشعارات المحلية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(18, 1, 'All Types of Products Friendly', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(18, 2, 'Alle soorten producten vriendelijk', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(18, 4, 'جميع أنواع المنتجات ودية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(19, 1, 'Log-in via Social Accounts', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(19, 2, 'Inloggen via sociale accounts', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(19, 4, 'تسجيل الدخول عبر الحسابات الاجتماعية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(20, 1, 'Multiple Shipping Methods', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(20, 2, 'Meerdere verzendmethoden', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(20, 4, 'طرق الشحن متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(21, 1, 'Interactive Theme & Easy Customization with SaSS', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(21, 2, 'Interactief thema en gemakkelijke aanpassing met SaSS', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(21, 4, 'موضوع التفاعلية وسهولة التخصيص مع ساس', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(22, 1, 'Coupon Support', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(22, 2, 'Coupon Ondersteuning', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(22, 4, 'دعم القسيمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(23, 1, 'Profile Picture', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(23, 2, 'Profielfoto', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(23, 4, 'الصوره الشخصيه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(24, 1, 'Social Share', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(24, 2, 'Sociaal aandeel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(24, 4, 'حصة الاجتماعي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(25, 1, 'Wish List', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(25, 2, 'Wenslijst', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(25, 4, 'الأماني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(26, 1, 'WordPress Blog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(26, 2, 'WordPress Blog', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(26, 4, 'مدونة وورد', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(27, 1, 'App Tutorial / Intro Screens', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(27, 2, 'App Tutorial / Intro Screens', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(27, 4, 'التطبيق التعليمي / شاشات مقدمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(28, 1, 'Price & Keyword Filters', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(28, 2, 'Prijs- en sleutelwoordfilters', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(28, 4, 'السعر والكلمات الرئيسية الفلاتر', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(29, 1, 'Product Sorting', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(29, 2, 'Product sorteren', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(29, 4, 'فرز المنتجات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(30, 1, 'Product Searching', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(30, 2, 'Product zoeken', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(30, 4, 'البحث عن المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(31, 1, 'Fully Customizable', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(31, 2, 'Volledig klantgericht', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(31, 4, 'تماما للتخصيص', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(32, 1, 'Horizontal Product Slider', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(32, 2, 'Horizontale Product Slider', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(32, 4, 'أفقي المنتج المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(33, 1, 'Customizable Features & Functionalities', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(33, 2, 'Aanpasbare eigenschappen en functionaliteit', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(33, 4, 'الميزات والتخصيص وظائف', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(34, 1, 'Product Grid & List View', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(34, 2, 'Product Grid & Lijstweergave', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(34, 4, 'شبكة المنتج وعرض القائمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(35, 1, '5 Home Page Styles', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(35, 2, '5 Home Page Styles', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(35, 4, '5 الصفحة الرئيسية أنماط', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(36, 1, 'Beautiful Single Shop Page For Complete Catalog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(36, 2, 'Mooie single shop pagina voor complete catalogus', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(36, 4, 'جميلة صفحة واحدة متجر للكتالوج الكامل', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(37, 1, 'My Orders', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(37, 2, 'mijn bestellingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(37, 4, 'طلباتي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(38, 1, 'About & Contact Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(38, 2, 'Over & Contactpagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(38, 4, 'حول الصفحات والاتصال', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(39, 1, 'Laravel Blog Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(39, 2, 'Laravel blog pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(39, 4, 'صفحات لارافيل المدونة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(40, 1, 'Info Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(40, 2, 'Info pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(40, 4, 'صفحات المعلومات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(41, 1, 'App Settings Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(41, 2, 'App Settings Page', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(41, 4, 'صفحة إعدادات التطبيق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(42, 1, 'Recently Item Viewed Block on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(42, 2, 'Onlangs Item bekeken Blok op Startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(42, 4, 'تم مؤخرا عرض العنصر بلوك أون هوم بادج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(43, 1, 'Move to Top Slider Button', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(43, 2, 'Ga naar de bovenste schuifknop', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(43, 4, 'الانتقال إلى أعلى زر المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(44, 1, 'Product Price Discount', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(44, 2, 'Productprijs korting', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(44, 4, 'خصم سعر المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(45, 1, 'Inventory Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(45, 2, 'ادارة المخزون', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(45, 4, 'Voorraadbeheer', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(46, 1, 'Horizontal Slider on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(46, 2, 'Horizontale schuifregelaar op de startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(46, 4, 'أفقي المنزلق على الصفحة الرئيسية', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(47, 1, 'On-scroll Product Loading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(47, 2, 'On-scroll Product Loading', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(47, 4, 'أون-سكرول برودوكت لوادينغ', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(48, 1, 'Product Additional Attributes / Commerce Pricing Attributes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(48, 2, 'Product Aanvullende Attributen / Handelsprijzen Attributen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(48, 4, 'سمات المنتج الإضافية / سمات التسعير التجاري', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(49, 1, 'Multiple Product Images', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(49, 2, 'Meerdere productafbeeldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(49, 4, 'صور المنتج متعددة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(50, 1, 'Beautiful Cart Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(50, 2, 'Mooie winkelwagen pagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(50, 4, 'صفحة العربة الجميلة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(51, 1, 'Shipping Address Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(51, 2, 'Verzendadresbeheer', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(51, 4, 'إدارة عنوان الشحن', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(52, 1, 'Woocommerce Api', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(52, 2, 'Woocommerce Api', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(52, 4, 'ووكومرس أبي', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(53, 1, 'Animations', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(53, 2, 'animaties', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0),
(53, 4, 'الرسوم المتحركة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`) VALUES
(5, 5),
(6, 7),
(7, 7),
(8, 7),
(9, 8),
(10, 8),
(11, 9),
(12, 9),
(13, 9),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,0) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) DEFAULT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(100) DEFAULT NULL,
  `order_information` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(100) NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`) VALUES
(2, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:23:50', '2017-09-07 13:23:50', NULL, 'usd', '2017.000000', '152.96', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(3, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '03457', 'hassanntu@hotmail.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:27:52', '2017-09-07 13:27:52', NULL, 'usd', '2017.000000', '152.96', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(4, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:38:22', '2017-09-07 13:38:22', NULL, 'usd', '2017.000000', '299.60', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(5, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:38:25', '2017-09-07 13:38:25', NULL, 'usd', '2017.000000', '299.60', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(6, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:38:28', '2017-09-07 13:38:28', NULL, 'usd', '2017.000000', '299.60', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(7, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-07 13:38:30', '2017-09-07 13:38:30', NULL, 'usd', '2017.000000', '299.60', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(8, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-08 10:13:10', '2017-09-08 10:13:10', NULL, 'usd', '2017.000000', '281.35', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(9, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-08 10:13:12', '2017-09-08 10:13:12', NULL, 'usd', '2017.000000', '281.35', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 0, '', 0, '', '', '', 0, ''),
(10, '0', 3, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', '3215558888', 'test@ionicecommerce.com', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', 'New York', 'New York', '10075', 'New York', 'United States', NULL, 'Test Ionicecommerce', NULL, 'Suit# 876, North Street, Medsion eve', NULL, 'New York', '10075', 'New York', 'United States', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-09-08 10:13:15', '2017-09-08 10:13:15', NULL, 'usd', '2017.000000', '281.35', '0.00', 'Free Shipping(freeShipping)', NULL, '[]', 1, '', 0, '', '', '', 0, ''),
(11, '0', 79, 'jsjs jss', NULL, 'siis', 'Other', 'wuw', '6444', 'other', 'Andorra', '', 'aim143644@gmail.com', NULL, 'jsjs jss', NULL, 'siis', 'Other', 'wuw', '6444', 'other', 'Andorra', NULL, 'jsjs jss', NULL, 'siis', 'Other', 'wuw', '6444', 'other', 'Andorra', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2017-12-11 20:35:02', '2017-12-11 20:35:02', NULL, 'usd', '2017.000000', '1980.00', '0.00', 'Free Shipping (freeShipping)', NULL, '[]', 0, '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(3, 2, 81, NULL, 'RUFFLED COTTON CARDIGAN', '49.50', '49.50', '1', 1),
(4, 2, 80, NULL, 'FLAG COMBED COTTON SWEATER', '99.99', '99.99', '1', 1),
(5, 3, 81, NULL, 'RUFFLED COTTON CARDIGAN', '49.50', '49.50', '1', 1),
(6, 3, 80, NULL, 'FLAG COMBED COTTON SWEATER', '99.99', '99.99', '1', 1),
(7, 4, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(8, 5, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(9, 6, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(10, 7, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(11, 8, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(12, 9, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(13, 10, 1, NULL, 'CLASSIC FIT SOFT-TOUCH POLO', '85.00', '85.00', '1', 1),
(14, 11, 10, NULL, 'STANDARD FIT COTTON WORKSHIRT', '165.00', '1980.00', '1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 11, 14, 10, 'Size', 'Large', '0.00', '+');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '1',
  `downloads_flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(2, 1, 'Completed', 1, 0),
(3, 1, 'Cancel', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2017-08-22 07:50:27', 1, NULL),
(2, 2, 1, '2017-09-07 01:23:50', 1, NULL),
(3, 3, 1, '2017-09-07 01:27:52', 1, NULL),
(4, 4, 1, '2017-09-07 01:38:22', 1, NULL),
(5, 5, 1, '2017-09-07 01:38:25', 1, NULL),
(6, 6, 1, '2017-09-07 01:38:28', 1, NULL),
(7, 7, 1, '2017-09-07 01:38:30', 1, NULL),
(8, 8, 1, '2017-09-08 10:13:10', 1, NULL),
(9, 9, 1, '2017-09-08 10:13:12', 1, NULL),
(10, 10, 1, '2017-09-08 10:13:15', 1, NULL),
(11, 10, 2, '2017-11-29 05:46:38', 1, 'asd'),
(12, 11, 1, '2017-12-11 08:35:02', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`) VALUES
(1, 'privacy-policy', 1),
(2, 'term-services', 1),
(3, 'refund-policy', 1),
(4, 'about-us', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `page_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 1),
(2, 'Datenschutz-Bestimmungen', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 1),
(3, 'سياسة الخصوصية', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 2),
(5, 'langfristige Dienstleistungen', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 2),
(6, 'الخدمات المدى', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 3),
(8, 'Rückgaberecht', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 3),
(9, 'سياسة الاسترجاع', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 3),
(10, 'About Us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 4),
(11, 'Über uns', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 4),
(12, 'معلومات عنا', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payments_setting`
--

CREATE TABLE `payments_setting` (
  `payments_id` int(100) NOT NULL,
  `braintree_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brantree_active` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT '0',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `cod_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_enviroment` tinyint(1) DEFAULT '0',
  `payment_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_setting`
--

INSERT INTO `payments_setting` (`payments_id`, `braintree_enviroment`, `braintree_name`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `brantree_active`, `stripe_enviroment`, `stripe_name`, `secret_key`, `publishable_key`, `stripe_active`, `cash_on_delivery`, `cod_name`, `paypal_name`, `paypal_id`, `paypal_status`, `paypal_enviroment`, `payment_currency`) VALUES
(1, '0', 'Braintree', '', '', '', 0, '0', 'Stripe', '', '', 0, 1, 'Cash On Delivery', 'Paypal', '', 0, 0, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` mediumtext COLLATE utf8_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_weight_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(100) NOT NULL,
  `low_limit` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`) VALUES
(1, 9998, '', 'resources/assets/images/product_images/1502174889.pPOLO2-26314766_standard_v400.jpg', '85.00', '2017-08-07 11:44:10', '2017-08-08 06:48:09', NULL, '0.500', 'kg', 1, 1, 0, 1, 1, 0),
(2, 9999, '', 'resources/assets/images/product_images/1502114036.pPOLO2-26316336_standard_v400.jpg', '98.50', '2017-08-07 01:53:56', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 3, 0),
(3, 9999, '', 'resources/assets/images/product_images/1502174346.pPOLO2-26314826_standard_v400.jpg', '85.00', '2017-08-08 06:39:06', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(4, 9999, '', 'resources/assets/images/product_images/1502174364.pPOLO2-26314826_standard_v400.jpg', '85.00', '2017-08-08 06:39:24', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 1, 0),
(5, 9999, '', 'resources/assets/images/product_images/1502176579.pPOLO2-26316348_standard_v400.jpg', '98.50', '2017-08-08 07:16:19', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(6, 9999, '', 'resources/assets/images/product_images/1502177321.pPOLO2-26314634_standard_v400.jpg', '89.50', '2017-08-08 07:28:41', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(7, 9999, '', 'resources/assets/images/product_images/1502180946.pPOLO2-26008917_standard_v400.jpg', '98.50', '2017-08-08 08:29:06', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(8, 9999, '', 'resources/assets/images/product_images/1502181584.pPOLO2-26008953_standard_v400.jpg', '125.50', '2017-08-08 08:39:44', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 1, 0),
(9, 9999, '', 'resources/assets/images/product_images/1502182426.pPOLO2-26008935_standard_v400.jpg', '89.50', '2017-08-08 08:53:46', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(10, 9999, '', 'resources/assets/images/product_images/1502186978.pPOLO2-26315018_standard_v400.jpg', '165.00', '2017-08-08 10:09:38', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(11, 9999, '', 'resources/assets/images/product_images/1502187824.pPOLO2-26317497_standard_v400.jpg', '145.00', '2017-08-08 10:23:44', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 1, 0),
(12, 9999, '', 'resources/assets/images/product_images/1502189779.pPOLO2-26316198_standard_v360x480.jpg', '165.00', '2017-08-08 10:56:19', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(13, 9999, '', 'resources/assets/images/product_images/1502190187.pPOLO2-26315541_standard_v400.jpg', '125.00', '2017-08-08 11:03:07', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(14, 9999, '', 'resources/assets/images/product_images/1502190590.pPOLO2-26404754_standard_v400.jpg', '90.00', '2017-08-08 11:09:50', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(15, 9999, '', 'resources/assets/images/product_images/1502191191.pPOLO2-26256326_standard_v400.jpg', '69.50', '2017-08-08 11:19:51', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(16, 9999, '', 'resources/assets/images/product_images/1502191373.pPOLO2-21857429_standard_v400.jpg', '175.00', '2017-08-08 11:22:53', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(17, 9999, '', 'resources/assets/images/product_images/1502191568.pPOLO2-26256404_standard_v400.jpg', '275.00', '2017-08-08 11:26:08', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(18, 9999, '', 'resources/assets/images/product_images/1502191856.pPOLO2-24354359_standard_v400.jpg', '559.00', '2017-08-08 11:30:56', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(19, 9999, '', 'resources/assets/images/product_images/1502192066.pPOLO2-25784541_standard_v400.jpg', '89.00', '2017-08-08 11:34:26', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(20, 9999, 'Polo', 'resources/assets/images/product_images/1502192365.pPOLO2-12181663_standard_v400.jpg', '250.00', '2017-08-08 11:39:25', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(21, 9999, 'Polo', 'resources/assets/images/product_images/1502193410.pPOLO2-19116009_standard_v400.jpg', '150.00', '2017-08-08 11:56:50', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(22, 9999, '', 'resources/assets/images/product_images/1502193577.pPOLO2-24933842_standard_v400.jpg', '129.00', '2017-08-08 11:59:37', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(23, 9999, '', 'resources/assets/images/product_images/1502193710.pPOLO2-24128696_standard_v400.jpg', '229.00', '2017-08-08 12:01:50', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(24, 9999, '', 'resources/assets/images/product_images/1502194893.pPOLO2-25759503_alternate1_v400.jpg', '198.00', '2017-08-08 12:21:33', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(25, 9999, '', 'resources/assets/images/product_images/1502195102.pPOLO2-25759495_alternate1_v400.jpg', '258.00', '2017-08-08 12:25:02', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(26, 9999, '', 'resources/assets/images/product_images/1502195452.pPOLO2-26059809_alternate1_v400.jpg', '298.00', '2017-08-08 12:30:52', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(27, 9999, '', 'resources/assets/images/product_images/1502195642.pPOLO2-25854363_alternate1_v400.jpg', '198.00', '2017-08-08 12:34:02', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(28, 9999, '', 'resources/assets/images/product_images/1502196660.pPOLO2-25759710_standard_v400.jpg', '98.00', '2017-08-08 12:51:00', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(29, 9999, '', 'resources/assets/images/product_images/1502197951.pPOLO2-25759868_standard_v400.jpg', '145.00', '2017-08-08 01:12:31', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(30, 9999, '', 'resources/assets/images/product_images/1502198422.pPOLO2-26060127_standard_v400.jpg', '85.00', '2017-08-08 01:20:22', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(31, 9999, '', 'resources/assets/images/product_images/1502199326.pPOLO2-26451235_standard_v400.jpg', '205.00', '2017-08-08 01:35:26', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(32, 9999, '', 'resources/assets/images/product_images/1502200730.pPOLO2-26328182_standard_v400.jpg', '145.00', '2017-08-08 01:58:50', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(33, 9999, '', 'resources/assets/images/product_images/1502201105.pPOLO2-26328155_standard_v400.jpg', '215.00', '2017-08-08 02:05:05', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(34, 9999, '', 'resources/assets/images/product_images/1502261147.pPOLO2-25480910_alternate2_v360x480.jpg', '468.00', '2017-08-09 06:45:47', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(35, 9999, '', 'resources/assets/images/product_images/1502261648.pPOLO2-26161986_standard_v400.jpg', '128.00', '2017-08-09 06:54:08', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(36, 9999, '', 'resources/assets/images/product_images/1502261990.pPOLO2-26161985_standard_v400.jpg', '98.00', '2017-08-09 06:59:50', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(37, 9999, '', 'resources/assets/images/product_images/1502262425.pPOLO2-25480914_standard_v400.jpg', '398.00', '2017-08-09 07:07:05', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(38, 9999, '', 'resources/assets/images/product_images/1502263616.pPOLO2-11724079_lifestyle_v400.jpg', '29.50', '2017-08-09 07:26:56', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(39, 9999, '', 'resources/assets/images/product_images/1502264917.pPOLO2-21465903_lifestyle_v400.jpg', '29.50', '2017-08-09 07:48:37', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(40, 9999, '', 'resources/assets/images/product_images/1502265209.pPOLO2-21466203_lifestyle_v400.jpg', '29.50', '2017-08-09 07:53:29', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(41, 9999, '', 'resources/assets/images/product_images/1502265614.pPOLO2-22839467_lifestyle_v400.jpg', '103.50', '2017-08-09 08:00:14', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(42, 9999, '', 'resources/assets/images/product_images/1502267748.pPOLO2-26397584_standard_v400.jpg', '25.00', '2017-08-09 08:35:48', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(43, 9999, '', 'resources/assets/images/product_images/1502268005.pPOLO2-25655666_standard_v400.jpg', '35.00', '2017-08-09 08:40:05', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(44, 9999, '', 'resources/assets/images/product_images/1502268706.pPOLO2-25240665_standard_v400.jpg', '55.50', '2017-08-09 08:51:46', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(45, 9999, '', 'resources/assets/images/product_images/1502273498.pPOLO2-26000954_standard_v400.jpg', '29.50', '2017-08-09 10:11:38', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(46, 9999, '', 'resources/assets/images/product_images/1502273672.pPOLO2-23450031_lifestyle_v400.jpg', '75.00', '2017-08-09 10:14:32', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(47, 9999, '', 'resources/assets/images/product_images/1502273766.pPOLO2-23700424_standard_v400.jpg', '45.00', '2017-08-09 10:16:06', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(48, 9999, '', 'resources/assets/images/product_images/1502274870.pPOLO2-25426585_alternate7_v360x480.jpg', '470.00', '2017-08-09 10:34:30', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(49, 9999, '', 'resources/assets/images/product_images/1502275397.pPOLO2-23742156_standard_v360x480.jpg', '500.00', '2017-08-09 10:43:17', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(50, 9999, '', 'resources/assets/images/product_images/1502275538.pPOLO2-25426632_alternate7_v400.jpg', '160.00', '2017-08-09 10:45:38', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(51, 9999, '', 'resources/assets/images/product_images/1502276177.pPOLO2-18063379_mailer_v360x480.jpg', '130.00', '2017-08-09 10:56:17', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(52, 9999, '', 'resources/assets/images/product_images/1502278983.pPOLO2-16519324_lifestyle_v400.jpg', '255.00', '2017-08-09 11:43:03', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(53, 9999, '', 'resources/assets/images/product_images/1502279135.pPOLO2-13318847_lifestyle_v400.jpg', '595.00', '2017-08-09 11:45:35', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(54, 9999, '', 'resources/assets/images/product_images/1502279578.pPOLO2-18086941_lifestyle_v400.jpg', '395.00', '2017-08-09 11:52:58', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(55, 9999, '', 'resources/assets/images/product_images/1502282050.pPOLO2-18177063_lifestyle_v360x480.jpg', '5.00', '2017-08-09 12:34:10', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(56, 9999, '', 'resources/assets/images/product_images/1502347627.pPOLO2-25995642_standard_v400.jpg', '49.50', '2017-08-10 06:47:07', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(57, 9999, '', 'resources/assets/images/product_images/1502348404.pPOLO2-23625768_standard_v400.jpg', '29.50', '2017-08-10 07:00:04', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(58, 9999, '', 'resources/assets/images/product_images/1502349078.pPOLO2-25961612_standard_v400.jpg', '55.00', '2017-08-10 07:11:18', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(59, 9999, '', 'resources/assets/images/product_images/1502349501.pPOLO2-25563187_standard_v400.jpg', '45.00', '2017-08-10 07:18:21', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(60, 9999, '', 'resources/assets/images/product_images/1502350673.pPOLO2-25961171_standard_v400.jpg', '45.00', '2017-08-10 07:37:53', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(61, 9999, '', 'resources/assets/images/product_images/1502351678.pPOLO2-25961083_standard_v400.jpg', '45.00', '2017-08-10 07:54:38', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(62, 9999, '', 'resources/assets/images/product_images/1502351882.pPOLO2-24921004_standard_v400.jpg', '55.00', '2017-08-10 07:58:02', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(63, 9999, '', 'resources/assets/images/product_images/1502352055.pPOLO2-25363631_standard_v400.jpg', '50.00', '2017-08-10 08:00:55', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 0, 0),
(64, 9999, '', 'resources/assets/images/product_images/1502352545.pPOLO2-25363631_standard_v400.jpg', '55.00', '2017-08-10 08:09:05', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(65, 9999, '', 'resources/assets/images/product_images/1502353123.pPOLO2-10531663_standard_v400.jpg', '45.00', '2017-08-10 08:18:43', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(66, 9999, '', 'resources/assets/images/product_images/1502359349.pPOLO2-25961644_lifestyle_v400.jpg', '39.50', '2017-08-10 10:02:29', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(67, 9999, '', 'resources/assets/images/product_images/1502362089.pPOLO2-14689748_standard_v400.jpg', '550.00', '2017-08-10 10:48:09', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(68, 9999, '', 'resources/assets/images/product_images/1502362408.pPOLO2-24922918_standard_v400.jpg', '49.50', '2017-08-10 10:53:28', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(69, 9999, '', 'resources/assets/images/product_images/1502362738.pPOLO2-25464515_lifestyle_v400.jpg', '40.00', '2017-08-10 10:58:58', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(70, 9999, '', 'resources/assets/images/product_images/1502363119.pPOLO2-25464682_standard_v400.jpg', '45.00', '2017-08-10 11:05:19', NULL, NULL, '0.500', 'g', 1, 1, NULL, 0, 0, 0),
(71, 9999, '', 'resources/assets/images/product_images/1502363378.pPOLO2-25464575_standard_v400.jpg', '30.00', '2017-08-10 11:09:38', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(72, 9999, '', 'resources/assets/images/product_images/1502364150.pPOLO2-26091141_standard_v400.jpg', '59.00', '2017-08-10 11:22:30', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(73, 9999, '', 'resources/assets/images/product_images/1502364697.pPOLO2-23643008_standard_v400.jpg', '55.00', '2017-08-10 11:31:37', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(74, 9999, '', 'resources/assets/images/product_images/1502364932.pPOLO2-25835439_standard_v400.jpg', '45.00', '2017-08-10 11:35:32', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(75, 9999, '', 'resources/assets/images/product_images/1502365189.pPOLO2-26091856_standard_v400.jpg', '49.50', '2017-08-10 11:39:49', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(76, 9999, '', 'resources/assets/images/product_images/1502365515.pPOLO2-26091862_alternate1_v400.jpg', '49.50', '2017-08-10 11:45:15', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(77, 9999, '', 'resources/assets/images/product_images/1502366105.pPOLO2-26091049_alternate1_v400.jpg', '56.50', '2017-08-10 11:55:05', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 0, 0),
(78, 9999, '', 'resources/assets/images/product_images/1502366342.pPOLO2-26090785_standard_v400.jpg', '195.00', '2017-08-10 11:59:02', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 2, 0),
(79, 9999, '', 'resources/assets/images/product_images/1502366462.pPOLO2-26090829_standard_v400.jpg', '45.00', '2017-08-10 12:01:02', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 2, 0),
(80, 9999, '', 'resources/assets/images/product_images/1502366586.pPOLO2-25834797_standard_v400.jpg', '125.00', '2017-08-10 12:03:06', NULL, NULL, '0.500', 'kg', 1, 1, NULL, 0, 1, 0),
(81, 9999, '', 'resources/assets/images/product_images/1502366686.pPOLO2-25207761_standard_v400.jpg', '49.50', '2017-08-10 12:04:46', NULL, NULL, '0.500', 'kg', 1, 0, NULL, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(1, 1, 1, 1, '0.00', '+', 0),
(2, 1, 1, 2, '0.00', '+', 0),
(3, 1, 1, 3, '0.00', '+', 0),
(4, 1, 1, 4, '0.00', '+', 0),
(5, 1, 1, 5, '0.00', '+', 0),
(6, 1, 1, 6, '0.00', '+', 0),
(7, 1, 1, 7, '0.00', '+', 0),
(8, 1, 1, 8, '0.00', '+', 0),
(9, 1, 1, 9, '0.00', '+', 0),
(10, 1, 4, 29, '0.00', '+', 0),
(11, 1, 4, 32, '0.00', '+', 0),
(12, 1, 4, 35, '0.00', '+', 0),
(13, 1, 4, 38, '0.00', '+', 0),
(14, 1, 2, 20, '0.00', '+', 0),
(15, 1, 2, 21, '0.00', '+', 0),
(16, 1, 2, 22, '0.00', '+', 0),
(17, 1, 2, 23, '0.00', '+', 0),
(18, 1, 2, 24, '0.00', '+', 0),
(19, 1, 2, 25, '0.00', '+', 0),
(20, 1, 2, 26, '0.00', '+', 0),
(21, 1, 2, 27, '0.00', '+', 0),
(22, 1, 2, 28, '0.00', '+', 0),
(23, 1, 5, 30, '0.00', '+', 0),
(24, 1, 5, 34, '0.00', '+', 0),
(25, 1, 5, 36, '0.00', '+', 0),
(26, 1, 5, 40, '0.00', '+', 0),
(27, 1, 3, 10, '0.00', '+', 0),
(28, 1, 3, 11, '0.00', '+', 0),
(29, 1, 3, 12, '0.00', '+', 0),
(30, 1, 3, 13, '0.00', '+', 0),
(31, 1, 3, 14, '0.00', '+', 0),
(32, 1, 3, 15, '0.00', '+', 0),
(33, 1, 3, 16, '0.00', '+', 0),
(34, 1, 3, 17, '0.00', '+', 0),
(35, 1, 3, 18, '0.00', '+', 0),
(36, 1, 6, 31, '0.00', '+', 0),
(37, 1, 6, 33, '0.00', '+', 0),
(38, 1, 6, 37, '0.00', '+', 0),
(39, 1, 6, 39, '0.00', '+', 0),
(40, 4, 4, 29, '0.00', '+', 0),
(41, 4, 4, 32, '0.00', '+', 0),
(42, 4, 4, 35, '0.00', '+', 0),
(43, 4, 4, 38, '0.00', '+', 0),
(44, 4, 5, 30, '0.00', '+', 0),
(45, 4, 5, 34, '0.00', '+', 0),
(46, 4, 5, 36, '0.00', '+', 0),
(47, 4, 5, 40, '0.00', '+', 0),
(48, 4, 6, 31, '0.00', '+', 0),
(49, 4, 6, 33, '0.00', '+', 0),
(50, 4, 6, 37, '0.00', '+', 0),
(51, 4, 6, 39, '0.00', '+', 0),
(52, 5, 4, 29, '0.00', '+', 0),
(53, 5, 4, 32, '0.00', '+', 0),
(54, 5, 4, 35, '0.00', '+', 0),
(55, 5, 5, 30, '0.00', '+', 0),
(56, 5, 5, 34, '0.00', '+', 0),
(57, 5, 5, 36, '0.00', '+', 0),
(58, 5, 6, 31, '0.00', '+', 0),
(59, 5, 6, 33, '0.00', '+', 0),
(60, 5, 6, 37, '0.00', '+', 0),
(61, 6, 4, 29, '0.00', '+', 0),
(62, 6, 4, 32, '0.00', '+', 0),
(63, 6, 4, 35, '0.00', '+', 0),
(64, 6, 4, 38, '0.00', '+', 0),
(65, 6, 5, 30, '0.00', '+', 0),
(66, 6, 5, 34, '0.00', '+', 0),
(67, 6, 5, 36, '0.00', '+', 0),
(68, 6, 5, 40, '0.00', '+', 0),
(69, 6, 6, 31, '0.00', '+', 0),
(70, 6, 6, 33, '0.00', '+', 0),
(71, 6, 6, 37, '0.00', '+', 0),
(72, 6, 6, 39, '0.00', '+', 0),
(73, 7, 4, 32, '0.00', '+', 0),
(74, 7, 4, 35, '0.00', '+', 0),
(75, 7, 5, 34, '0.00', '+', 0),
(76, 7, 5, 36, '0.00', '+', 0),
(77, 7, 6, 33, '0.00', '+', 0),
(78, 7, 6, 37, '0.00', '+', 0),
(79, 8, 4, 29, '0.00', '+', 0),
(80, 8, 4, 32, '0.00', '+', 0),
(81, 8, 5, 30, '0.00', '+', 0),
(82, 8, 5, 34, '0.00', '+', 0),
(83, 8, 6, 31, '0.00', '+', 0),
(84, 8, 6, 33, '0.00', '+', 0),
(85, 9, 4, 32, '0.00', '+', 0),
(86, 9, 4, 35, '0.00', '+', 0),
(87, 9, 4, 38, '0.00', '+', 0),
(88, 9, 5, 34, '0.00', '+', 0),
(89, 9, 5, 36, '0.00', '+', 0),
(90, 9, 5, 40, '0.00', '+', 0),
(91, 9, 6, 33, '0.00', '+', 0),
(92, 9, 6, 37, '0.00', '+', 0),
(93, 9, 6, 39, '0.00', '+', 0),
(94, 10, 4, 35, '0.00', '+', 0),
(95, 10, 4, 38, '0.00', '+', 0),
(96, 10, 5, 36, '0.00', '+', 0),
(97, 10, 5, 40, '0.00', '+', 0),
(98, 10, 6, 37, '0.00', '+', 0),
(99, 10, 6, 39, '0.00', '+', 0),
(100, 11, 7, 41, '0.00', '+', 0),
(101, 11, 7, 42, '0.00', '+', 0),
(102, 11, 7, 43, '0.00', '+', 0),
(103, 11, 8, 49, '0.00', '+', 0),
(104, 11, 8, 50, '0.00', '+', 0),
(105, 11, 8, 51, '0.00', '+', 0),
(106, 11, 9, 57, '0.00', '+', 0),
(107, 11, 9, 58, '0.00', '+', 0),
(108, 11, 9, 59, '0.00', '+', 0),
(109, 11, 10, 65, '0.00', '+', 0),
(110, 11, 10, 66, '0.00', '+', 0),
(111, 11, 11, 68, '0.00', '+', 0),
(112, 11, 11, 69, '0.00', '+', 0),
(113, 11, 12, 71, '0.00', '+', 0),
(114, 11, 12, 72, '0.00', '+', 0),
(115, 12, 1, 1, '0.00', '+', 0),
(116, 12, 1, 3, '0.00', '+', 0),
(117, 12, 2, 20, '0.00', '+', 0),
(118, 12, 2, 22, '0.00', '+', 0),
(119, 12, 3, 10, '0.00', '+', 0),
(120, 12, 3, 12, '0.00', '+', 0),
(121, 12, 7, 44, '0.00', '+', 0),
(122, 12, 7, 45, '0.00', '+', 0),
(123, 12, 7, 46, '0.00', '+', 0),
(124, 12, 7, 47, '0.00', '+', 0),
(125, 12, 8, 52, '0.00', '+', 0),
(126, 12, 8, 53, '0.00', '+', 0),
(127, 12, 8, 54, '0.00', '+', 0),
(128, 12, 8, 55, '0.00', '+', 0),
(129, 12, 9, 60, '0.00', '+', 0),
(130, 12, 9, 61, '0.00', '+', 0),
(131, 12, 9, 62, '0.00', '+', 0),
(132, 12, 9, 63, '0.00', '+', 0),
(133, 12, 10, 65, '0.00', '+', 0),
(134, 12, 10, 66, '0.00', '+', 0),
(135, 12, 10, 67, '0.00', '+', 0),
(136, 12, 11, 68, '0.00', '+', 0),
(137, 12, 11, 69, '0.00', '+', 0),
(138, 12, 11, 70, '0.00', '+', 0),
(139, 12, 12, 71, '0.00', '+', 0),
(140, 12, 12, 72, '0.00', '+', 0),
(141, 12, 12, 73, '0.00', '+', 0),
(142, 13, 7, 41, '0.00', '+', 0),
(143, 13, 7, 42, '0.00', '+', 0),
(144, 13, 8, 49, '0.00', '+', 0),
(145, 13, 8, 50, '0.00', '+', 0),
(146, 13, 9, 57, '0.00', '+', 0),
(147, 13, 9, 58, '0.00', '+', 0),
(148, 13, 10, 65, '0.00', '+', 0),
(149, 13, 10, 67, '0.00', '+', 0),
(150, 13, 11, 68, '0.00', '+', 0),
(151, 13, 11, 70, '0.00', '+', 0),
(152, 13, 12, 71, '0.00', '+', 0),
(153, 13, 12, 73, '0.00', '+', 0),
(154, 14, 4, 74, '0.00', '+', 0),
(155, 14, 4, 75, '0.00', '+', 0),
(156, 14, 4, 76, '0.00', '+', 0),
(157, 14, 4, 77, '0.00', '+', 0),
(158, 14, 5, 78, '0.00', '+', 0),
(159, 14, 5, 79, '0.00', '+', 0),
(160, 14, 5, 80, '0.00', '+', 0),
(161, 14, 5, 81, '0.00', '+', 0),
(162, 14, 6, 82, '0.00', '+', 0),
(163, 14, 6, 83, '0.00', '+', 0),
(164, 14, 6, 84, '0.00', '+', 0),
(165, 14, 6, 85, '0.00', '+', 0),
(166, 15, 4, 76, '0.00', '+', 0),
(167, 15, 5, 80, '0.00', '+', 0),
(168, 15, 6, 85, '0.00', '+', 0),
(169, 16, 4, 75, '0.00', '+', 0),
(170, 16, 4, 76, '0.00', '+', 0),
(171, 16, 4, 77, '0.00', '+', 0),
(172, 16, 5, 79, '0.00', '+', 0),
(173, 16, 5, 80, '0.00', '+', 0),
(174, 16, 5, 81, '0.00', '+', 0),
(175, 16, 6, 83, '0.00', '+', 0),
(176, 16, 6, 84, '0.00', '+', 0),
(177, 16, 6, 85, '0.00', '+', 0),
(178, 17, 1, 5, '0.00', '+', 0),
(179, 17, 2, 24, '0.00', '+', 0),
(180, 17, 3, 14, '0.00', '+', 0),
(181, 17, 4, 74, '0.00', '+', 0),
(182, 17, 4, 75, '0.00', '+', 0),
(183, 17, 5, 78, '0.00', '+', 0),
(184, 17, 5, 79, '0.00', '+', 0),
(185, 17, 6, 82, '0.00', '+', 0),
(186, 17, 6, 83, '0.00', '+', 0),
(187, 19, 4, 76, '0.00', '+', 0),
(188, 19, 4, 77, '0.00', '+', 0),
(189, 19, 5, 80, '0.00', '+', 0),
(190, 19, 5, 81, '0.00', '+', 0),
(191, 19, 6, 84, '0.00', '+', 0),
(192, 19, 6, 85, '0.00', '+', 0),
(193, 24, 4, 29, '0.00', '+', 0),
(194, 24, 4, 32, '0.00', '+', 0),
(195, 24, 4, 35, '0.00', '+', 0),
(196, 24, 5, 30, '0.00', '+', 0),
(197, 24, 5, 34, '0.00', '+', 0),
(198, 24, 5, 36, '0.00', '+', 0),
(199, 24, 6, 31, '0.00', '+', 0),
(200, 24, 6, 33, '0.00', '+', 0),
(201, 24, 6, 37, '0.00', '+', 0),
(202, 25, 4, 29, '0.00', '+', 0),
(203, 25, 5, 30, '0.00', '+', 0),
(204, 25, 6, 31, '0.00', '+', 0),
(205, 26, 4, 32, '0.00', '+', 0),
(206, 26, 5, 34, '0.00', '+', 0),
(207, 26, 6, 33, '0.00', '+', 0),
(208, 27, 4, 32, '0.00', '+', 0),
(209, 27, 4, 35, '0.00', '+', 0),
(210, 27, 5, 34, '0.00', '+', 0),
(211, 27, 5, 36, '0.00', '+', 0),
(212, 27, 6, 33, '0.00', '+', 0),
(213, 27, 6, 37, '0.00', '+', 0),
(214, 28, 4, 29, '0.00', '+', 0),
(215, 28, 4, 32, '0.00', '+', 0),
(216, 28, 5, 30, '0.00', '+', 0),
(217, 28, 5, 34, '0.00', '+', 0),
(218, 28, 6, 31, '0.00', '+', 0),
(219, 28, 6, 33, '0.00', '+', 0),
(220, 29, 4, 29, '0.00', '+', 0),
(221, 29, 4, 32, '0.00', '+', 0),
(222, 29, 4, 35, '0.00', '+', 0),
(223, 29, 4, 38, '0.00', '+', 0),
(224, 29, 5, 30, '0.00', '+', 0),
(225, 29, 5, 34, '0.00', '+', 0),
(226, 29, 5, 36, '0.00', '+', 0),
(227, 29, 5, 40, '0.00', '+', 0),
(228, 29, 6, 31, '0.00', '+', 0),
(229, 29, 6, 33, '0.00', '+', 0),
(230, 29, 6, 37, '0.00', '+', 0),
(231, 29, 6, 39, '0.00', '+', 0),
(232, 30, 4, 29, '0.00', '+', 0),
(233, 30, 5, 30, '0.00', '+', 0),
(234, 30, 6, 31, '0.00', '+', 0),
(235, 31, 4, 87, '0.00', '+', 0),
(236, 31, 4, 88, '0.00', '+', 0),
(237, 31, 4, 89, '0.00', '+', 0),
(238, 31, 4, 90, '0.00', '+', 0),
(239, 31, 5, 86, '0.00', '+', 0),
(240, 31, 5, 94, '0.00', '+', 0),
(241, 31, 5, 95, '0.00', '+', 0),
(242, 31, 5, 96, '0.00', '+', 0),
(243, 31, 6, 100, '0.00', '+', 0),
(244, 31, 6, 101, '0.00', '+', 0),
(245, 31, 6, 102, '0.00', '+', 0),
(246, 31, 6, 103, '0.00', '+', 0),
(247, 32, 4, 87, '0.00', '+', 0),
(248, 32, 4, 88, '0.00', '+', 0),
(249, 32, 4, 89, '0.00', '+', 0),
(250, 32, 4, 90, '0.00', '+', 0),
(251, 32, 5, 86, '0.00', '+', 0),
(252, 32, 5, 94, '0.00', '+', 0),
(253, 32, 5, 95, '0.00', '+', 0),
(254, 32, 5, 96, '0.00', '+', 0),
(255, 32, 6, 100, '0.00', '+', 0),
(256, 32, 6, 101, '0.00', '+', 0),
(257, 32, 6, 102, '0.00', '+', 0),
(258, 32, 6, 103, '0.00', '+', 0),
(259, 33, 4, 91, '0.00', '+', 0),
(260, 33, 4, 92, '0.00', '+', 0),
(261, 33, 4, 93, '0.00', '+', 0),
(262, 33, 5, 97, '0.00', '+', 0),
(263, 33, 5, 98, '0.00', '+', 0),
(264, 33, 5, 99, '0.00', '+', 0),
(265, 33, 6, 104, '0.00', '+', 0),
(266, 33, 6, 105, '0.00', '+', 0),
(267, 33, 6, 106, '0.00', '+', 0),
(268, 38, 4, 107, '0.00', '+', 0),
(269, 38, 4, 110, '0.00', '+', 0),
(270, 38, 4, 111, '0.00', '+', 0),
(271, 38, 5, 109, '0.00', '+', 0),
(272, 38, 5, 113, '0.00', '+', 0),
(273, 38, 5, 114, '0.00', '+', 0),
(274, 38, 6, 108, '0.00', '+', 0),
(275, 38, 6, 116, '0.00', '+', 0),
(276, 38, 6, 117, '0.00', '+', 0),
(277, 39, 4, 111, '0.00', '+', 0),
(278, 39, 5, 114, '0.00', '+', 0),
(279, 39, 6, 117, '0.00', '+', 0),
(280, 40, 4, 107, '0.00', '+', 0),
(281, 40, 4, 110, '0.00', '+', 0),
(282, 40, 5, 109, '0.00', '+', 0),
(283, 40, 5, 113, '0.00', '+', 0),
(284, 40, 6, 108, '0.00', '+', 0),
(285, 40, 6, 116, '0.00', '+', 0),
(286, 42, 4, 111, '0.00', '+', 0),
(287, 42, 4, 112, '0.00', '+', 0),
(288, 42, 5, 114, '0.00', '+', 0),
(289, 42, 5, 115, '0.00', '+', 0),
(290, 42, 6, 117, '0.00', '+', 0),
(291, 42, 6, 118, '0.00', '+', 0),
(292, 43, 4, 112, '0.00', '+', 0),
(293, 43, 5, 115, '0.00', '+', 0),
(294, 43, 6, 118, '0.00', '+', 0),
(295, 44, 4, 111, '0.00', '+', 0),
(296, 44, 4, 112, '0.00', '+', 0),
(297, 44, 5, 114, '0.00', '+', 0),
(298, 44, 5, 115, '0.00', '+', 0),
(299, 44, 6, 117, '0.00', '+', 0),
(300, 44, 6, 118, '0.00', '+', 0),
(301, 50, 4, 125, '0.00', '+', 0),
(302, 50, 5, 127, '0.00', '+', 0),
(303, 50, 6, 126, '0.00', '+', 0),
(304, 48, 1, 119, '0.00', '+', 0),
(305, 48, 1, 122, '0.00', '+', 0),
(306, 48, 2, 121, '0.00', '+', 0),
(307, 48, 2, 123, '0.00', '+', 0),
(308, 48, 3, 120, '0.00', '+', 0),
(309, 48, 3, 124, '0.00', '+', 0),
(310, 48, 4, 125, '0.00', '+', 0),
(311, 48, 4, 130, '0.00', '+', 0),
(312, 48, 5, 127, '0.00', '+', 0),
(313, 48, 5, 129, '0.00', '+', 0),
(314, 48, 6, 126, '0.00', '+', 0),
(315, 48, 6, 128, '0.00', '+', 0),
(316, 49, 4, 130, '0.00', '+', 0),
(317, 49, 5, 129, '0.00', '+', 0),
(318, 49, 6, 128, '0.00', '+', 0),
(319, 51, 4, 125, '0.00', '+', 0),
(320, 51, 5, 127, '0.00', '+', 0),
(321, 51, 6, 126, '0.00', '+', 0),
(322, 52, 1, 119, '0.00', '+', 0),
(323, 52, 2, 121, '0.00', '+', 0),
(324, 52, 3, 120, '0.00', '+', 0),
(325, 53, 4, 132, '0.00', '+', 0),
(326, 53, 5, 135, '0.00', '+', 0),
(327, 53, 6, 136, '0.00', '+', 0),
(328, 52, 4, 131, '0.00', '+', 0),
(329, 52, 5, 133, '0.00', '+', 0),
(330, 52, 6, 134, '0.00', '+', 0),
(331, 54, 1, 2, '0.00', '+', 0),
(332, 54, 1, 3, '0.00', '+', 0),
(333, 54, 2, 21, '0.00', '+', 0),
(334, 54, 2, 22, '0.00', '+', 0),
(335, 54, 3, 11, '0.00', '+', 0),
(336, 54, 3, 12, '0.00', '+', 0),
(337, 55, 4, 29, '0.00', '+', 0),
(338, 55, 4, 32, '0.00', '+', 0),
(339, 55, 4, 35, '0.00', '+', 0),
(341, 55, 5, 30, '0.00', '+', 0),
(342, 55, 5, 34, '0.00', '+', 0),
(343, 55, 5, 36, '0.00', '+', 0),
(345, 55, 6, 31, '0.00', '+', 0),
(346, 55, 6, 33, '0.00', '+', 0),
(347, 55, 6, 37, '0.00', '+', 0),
(351, 56, 4, 137, '0.00', '+', 0),
(352, 56, 5, 140, '0.00', '+', 0),
(353, 56, 6, 143, '0.00', '+', 0),
(354, 57, 1, 2, '0.00', '+', 0),
(355, 57, 1, 3, '0.00', '+', 0),
(356, 57, 2, 21, '0.00', '+', 0),
(357, 57, 2, 22, '0.00', '+', 0),
(358, 57, 3, 11, '0.00', '+', 0),
(359, 57, 3, 12, '0.00', '+', 0),
(360, 57, 4, 138, '0.00', '+', 0),
(361, 57, 5, 141, '0.00', '+', 0),
(362, 57, 6, 145, '0.00', '+', 0),
(363, 58, 4, 29, '0.00', '+', 0),
(364, 58, 4, 32, '0.00', '+', 0),
(365, 58, 4, 35, '0.00', '+', 0),
(366, 58, 5, 30, '0.00', '+', 0),
(367, 58, 5, 34, '0.00', '+', 0),
(368, 58, 5, 36, '0.00', '+', 0),
(369, 58, 6, 31, '0.00', '+', 0),
(370, 58, 6, 33, '0.00', '+', 0),
(371, 58, 6, 37, '0.00', '+', 0),
(372, 59, 4, 29, '0.00', '+', 0),
(373, 59, 5, 30, '0.00', '+', 0),
(374, 59, 6, 31, '0.00', '+', 0),
(375, 60, 4, 35, '0.00', '+', 0),
(376, 60, 5, 36, '0.00', '+', 0),
(377, 60, 6, 37, '0.00', '+', 0),
(378, 61, 4, 32, '0.00', '+', 0),
(379, 61, 4, 35, '0.00', '+', 0),
(380, 61, 5, 34, '0.00', '+', 0),
(381, 61, 5, 36, '0.00', '+', 0),
(382, 61, 6, 33, '0.00', '+', 0),
(383, 61, 6, 37, '0.00', '+', 0),
(384, 63, 4, 29, '0.00', '+', 0),
(385, 63, 4, 35, '0.00', '+', 0),
(386, 63, 5, 30, '0.00', '+', 0),
(387, 63, 5, 36, '0.00', '+', 0),
(388, 63, 6, 31, '0.00', '+', 0),
(389, 63, 6, 37, '0.00', '+', 0),
(390, 66, 7, 41, '0.00', '+', 0),
(391, 66, 8, 49, '0.00', '+', 0),
(392, 66, 9, 57, '0.00', '+', 0),
(393, 66, 10, 65, '0.00', '+', 0),
(394, 66, 11, 68, '0.00', '+', 0),
(395, 66, 12, 71, '0.00', '+', 0),
(396, 67, 4, 32, '0.00', '+', 0),
(397, 67, 4, 35, '0.00', '+', 0),
(398, 67, 5, 34, '0.00', '+', 0),
(399, 67, 5, 36, '0.00', '+', 0),
(400, 67, 6, 33, '0.00', '+', 0),
(401, 67, 6, 37, '0.00', '+', 0),
(402, 68, 7, 42, '0.00', '+', 0),
(403, 68, 8, 50, '0.00', '+', 0),
(404, 68, 9, 58, '0.00', '+', 0),
(405, 68, 10, 65, '0.00', '+', 0),
(406, 68, 11, 68, '0.00', '+', 0),
(407, 68, 12, 71, '0.00', '+', 0),
(408, 69, 4, 74, '0.00', '+', 0),
(409, 69, 4, 75, '0.00', '+', 0),
(410, 69, 4, 76, '0.00', '+', 0),
(411, 69, 5, 78, '0.00', '+', 0),
(412, 69, 5, 79, '0.00', '+', 0),
(413, 69, 5, 80, '0.00', '+', 0),
(414, 69, 6, 82, '0.00', '+', 0),
(415, 69, 6, 83, '0.00', '+', 0),
(416, 69, 6, 84, '0.00', '+', 0),
(417, 70, 4, 74, '0.00', '+', 0),
(418, 70, 4, 75, '0.00', '+', 0),
(419, 70, 5, 78, '0.00', '+', 0),
(420, 70, 5, 79, '0.00', '+', 0),
(421, 70, 6, 82, '0.00', '+', 0),
(422, 70, 6, 83, '0.00', '+', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 1, 'CLASSIC FIT SOFT-TOUCH POLO', '- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest).\r\n- Size medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\n- Ribbed Polo collar. Three-button placket.\r\n- Short sleeves with ribbed armbands.\r\n- Even vented hem.\r\n- Multicolored signature embroidered pony at the left chest.\r\n- 100% cotton.\r\n- Machine washable. Imported.\r\n- Model is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(1, 2, 'CLASSIC FIT SOFT-TOUCH POLO', '- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest).\r\n- Size medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\n- Ribbed Polo collar. Three-button placket.\r\n- Short sleeves with ribbed armbands.\r\n- Even vented hem.\r\n- Multicolored signature embroidered pony at the left chest.\r\n- 100% cotton.\r\n- Machine washable. Imported.\r\n- Model is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(1, 4, 'الكلاسيكية تناسب لينة اللمس بولو', '- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest).\r\n- Size medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\n- Ribbed Polo collar. Three-button placket.\r\n- Short sleeves with ribbed armbands.\r\n- Even vented hem.\r\n- Multicolored signature embroidered pony at the left chest.\r\n- 100% cotton.\r\n- Machine washable. Imported.\r\n- Model is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(2, 1, 'HAMPTON CLASSIC FIT SHIRT', 'Classic Fit.\r\nSize medium has a 29½" body length, an 18½" shoulder, and a 22½" chest.\r\nMedium-spread collar. Four-button extended placket. Genuine mother-of-pearl buttons.\r\nShort sleeves.\r\nLeft chest patch pocket.\r\nEven vented hem.\r\n100% cotton.\r\nMachine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(2, 2, 'HAMPTON CLASSIC FIT SHIRT', 'Classic Fit.\r\nGrootte medium heeft een 29½ "lichaamslengte, een 18½" schouder en een 22½ "borst.\r\nMedium-spreidende kraag. Vierknop verlengde knoop. Echte parelknopen.\r\nKorte mouwen.\r\nLinker borstvlekzak.\r\nZelfs geventileerde zoom.\r\n100% katoen.\r\nMag in de wasmachine. Geïmporteerd.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(2, 4, 'هامبتون كلاسيك فيت شيرت', 'كلاسيكي ملائم.\r\nحجم المتوسطة لديه 29½ "طول الجسم، و 18 ½" الكتف، و 22 ½ "الصدر.\r\nطوق متوسط الانتشار. أربعة زر الموسعة بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار.\r\nأكمام قصيرة.\r\nاليسار التصحيح الصدر جيب.\r\nحتى تنفيس تنحنح.\r\n100٪ قطن.\r\nآلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(3, 1, 'CLASSIC FIT COTTON POLO SHIRT', 'Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow.\r\nOur Polo shirts also come in Slim Fit (3" trimmer at the chest and 2" shorter at the body) and Custom Slim Fit (1½" trimmer at the chest and ½" shorter at the body).\r\nSize medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\nRibbed Polo collar. Three-button placket.\r\nShort sleeves with ribbed armbands.\r\nEven vented hem.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(3, 2, 'HET KLASSIEKE OVERHEMD VAN HET POLO VAN DE KATOEN POLO', 'Classic Fit: ons ruimste silhouet. Knip voor een onderste armhol en een voller mouw die dichter bij de elleboog valt.\r\nOnze poloshirts komen ook in Slim Fit (3 "trimmer aan de borst en 2" korter aan het lichaam) en Custom Slim Fit (1½ "trimmer aan de borst en ½" korter aan het lichaam).\r\nGrootte medium heeft een 29 "lichaamslengte, een 18" schouder en een 22 "borst.\r\nGestreept polosband. Drukknop.\r\nKorte mouwen met geribbelde armbanden.\r\nZelfs geventileerde zoom.\r\nHandtekening geborduurde pony aan de linker borst.\r\n100% katoen. Mag in de wasmachine. Geïmporteerd.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(3, 4, 'كلاسيك فيت قطن قميص بولو', 'الكلاسيكية تناسب: لدينا روميست خيال. قطع لخفض الذراع وأكمل كم الذي يقع بالقرب من المرفق.\r\nلدينا قميص بولو يأتي أيضا في صالح صالح (3 "الانتهازي في الصدر و 2" أقصر في الجسم) والعرف سليم صالح (1½ "الانتهازي في الصدر و ½" أقصر في الجسم).\r\nحجم المتوسطة لديها 29 "طول الجسم، و 18" الكتف، و 22 "الصدر.\r\nمضلع طوق بولو. ثلاثة زر بلاكيت.\r\nأكمام قصيرة مع رباطات مضلعة.\r\nحتى تنفيس تنحنح.\r\nالتوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.\r\n100٪ قطن. آلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(4, 1, 'CLASSIC FIT COTTON POLO SHIRT', 'Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow.\r\nOur Polo shirts also come in Slim Fit (3" trimmer at the chest and 2" shorter at the body) and Custom Slim Fit (1½" trimmer at the chest and ½" shorter at the body).\r\nSize medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\nRibbed Polo collar. Three-button placket.\r\nShort sleeves with ribbed armbands.\r\nEven vented hem.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(4, 2, 'HET KLASSIEKE OVERHEMD VAN HET POLO VAN DE KATOEN POLO', 'Classic Fit: ons ruimste silhouet. Knip voor een onderste armhol en een voller mouw die dichter bij de elleboog valt.\r\nOnze poloshirts komen ook in Slim Fit (3 "trimmer aan de borst en 2" korter aan het lichaam) en Custom Slim Fit (1½ "trimmer aan de borst en ½" korter aan het lichaam).\r\nGrootte medium heeft een 29 "lichaamslengte, een 18" schouder en een 22 "borst.\r\nGestreept polosband. Drukknop.\r\nKorte mouwen met geribbelde armbanden.\r\nZelfs geventileerde zoom.\r\nHandtekening geborduurde pony aan de linker borst.\r\n100% katoen. Mag in de wasmachine. Geïmporteerd.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(4, 4, 'كلاسيك فيت قطن قميص بولو', 'الكلاسيكية تناسب: لدينا روميست خيال. قطع لخفض الذراع وأكمل كم الذي يقع بالقرب من المرفق.\r\nلدينا قميص بولو يأتي أيضا في صالح صالح (3 "الانتهازي في الصدر و 2" أقصر في الجسم) والعرف سليم صالح (1½ "الانتهازي في الصدر و ½" أقصر في الجسم).\r\nحجم المتوسطة لديها 29 "طول الجسم، و 18" الكتف، و 22 "الصدر.\r\nمضلع طوق بولو. ثلاثة زر بلاكيت.\r\nأكمام قصيرة مع رباطات مضلعة.\r\nحتى تنفيس تنحنح.\r\nالتوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.\r\n100٪ قطن. آلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(5, 1, 'CUSTOM SLIM FIT COTTON SHIRT', 'Custom Slim Fit: our trimmest silhouette. Previously called Custom Fit. Our T-shirts also come in Classic Fit (our roomiest).\r\nSize medium has a 27½" body length, an 18½" shoulder, and a 21" chest.\r\nStriped baseball collar. Two-button placket.\r\nShort sleeves with striped ribbed armbands. Striped ribbed piecing at the armholes.\r\nFelt "Polo Ralph Lauren" patch at the left chest.\r\nEven vented hem.\r\nShell: 100% cotton. Collar: 99% cotton, 1% elastane.\r\nMachine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(5, 2, 'HET DOUANE SLECHTE KLEDING VAN DE KLEDING VAN HET KOFFIE', 'Custom Slim Fit: ons trimmest silhouet. Voorheen heette Custom Fit. Onze T-shirts komen ook in Classic Fit (onze ruimste).\r\nGrootte medium heeft een 27½ "lichaamslengte, een 18½" schouder en een 21 "borst.\r\nGestreept honkbal kraag. Dubbele knoop.\r\nKorte mouwen met gestreepte geribde armbanden. Gestreepte ribbetjes bij de armholes.\r\nGevuld "Polo Ralph Lauren" pleister aan de linker borst.\r\nZelfs geventileerde zoom.\r\nShell: 100% katoen. Kraag: 99% katoen, 1% elastaan.\r\nMag in de wasmachine. Geïmporteerd.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(5, 4, 'العرف سليم تناسب القطن قميص', 'العرف سليم صالح: لدينا تريمست خيال. كانت تسمى سابقا كوستوم فيت. لدينا تي شيرت تأتي أيضا في كلاسيك صالح (لدينا روميست).\r\nحجم متوسط لديه 27½ "طول الجسم، و 18" الكتف، و 21 "الصدر.\r\nطوق البيسبول مخطط. اثنين زر بلاكيت.\r\nأكمام قصيرة مع رباطات مضلعة مخطط. مخطط، بيليسينغ، إلى، ال التعريف، أرمهولز.\r\nفيلت "بولو رالف لورين" التصحيح في الصدر الأيسر.\r\nحتى تنفيس تنحنح.\r\nالقشرة: 100٪ قطن. طوق:٪ 99 قطن، 1٪ إلاستان.\r\nآلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(6, 1, 'CUSTOM SLIM FIT WEATHERED POLO', 'Custom Slim Fit: a middle ground between our Classic Fit and Slim Fit. Sleeve hugs the bicep. Tailored through the waist. Previously called Custom Fit.\r\nOur Polo shirts also come in Slim Fit (1½" trimmer at the chest and ½" shorter at the body) and Classic Fit (1½" wider at the chest and 1½" longer at the body).\r\nSize medium has a 27½" front body length, a 28½" back body length, a 17¾" shoulder, a 20¾" chest, and a 34½" sleeve length. Sleeve length is taken from the center back of the neck and changes 1" betwe\r\nRibbed Polo collar. Two-button placket.\r\nLong sleeves with ribbed cuffs.\r\nTennis tail.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(6, 2, 'DOUANE SLIM FIT WEATHERED POLO', 'Aangepaste Slim Fit: een middelste grond tussen onze Classic Fit en Slim Fit. Mouw knuffels de bicep. Aangepast door middel van de taille. Voorheen heette Custom Fit.\r\nOnze poloshirts komen ook in Slim Fit (1½ "trimmer aan de borst en ½" korter aan het lichaam) en Classic Fit (1½ "breder aan de borst en 1½" langer aan het lichaam).\r\nGrootte medium heeft een 27½ "voorlichaamlengte, een 28½" achterlengte, een 17¾ "schouder, een 20¾" borst en een 34½ "mouwlengte. De mouwlengte is van het midden van de nek verwijderd en verandert 1" betwe\r\nGestreept polosband. Dubbele knoop.\r\nLange mouwen met geribde manchetten.\r\nTennis staart.\r\nHandtekening geborduurde pony aan de linker borst.\r\n100% katoen. Mag in de wasmachine. Geïmporteerd.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(6, 4, 'العرف سليم تناسب بولو الطقس', 'العرف سليم صالح: وسطا بين لدينا تناسب الكلاسيكية و سليم صالح. كم العناق في العضلة ذات الرأسين. مصممة من خلال الخصر. كانت تسمى سابقا كوستوم فيت.\r\nلدينا قميص بولو يأتي أيضا في صالح صالح (1½ "الانتهازي في الصدر و ½" أقصر في الجسم) و كلاسيك صالح (1½ "على نطاق أوسع في الصدر و 1½" أطول في الجسم).\r\nحجم متوسط لديه 27½ "طول الجسم الأمامي، 28 \'" طول الجسم الخلفي، و 17 ¾ "الكتف، و 20 ¾" الصدر، وطول الأكمام 34 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة وتغيير 1 "بيتو\r\nمضلع طوق بولو. اثنين زر بلاكيت.\r\nأكمام طويلة مع الأصفاد مضلع.\r\nذيل التنس.\r\nالتوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.\r\n100٪ قطن. آلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(7, 1, 'STANDARD FIT COTTON SHIRT', 'Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version.\r\nSize medium has a 30" body length.\r\nButton-down point collar. Buttoned placket.\r\nShort sleeves.\r\nLeft chest buttoned pocket.\r\n100% cotton.\r\nMachine washable. Imported.\r\nColoring may rub off onto fabrics and upholstery.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(7, 2, 'HET OVERHEMD VAN DE T-SHIRT VAN DE STANDAARD', 'Standaard Fit: een comfortabel, ontspannen silhouet. Als u onze Classic Fit of Custom Fit heeft gepresenteerd, vindt u deze bijgewerkte versie.\r\nGrootte medium heeft een 30 "lichaamslengte.\r\nButton-down punt kraag. Knoopknoop.\r\nKorte mouwen.\r\nLinker borstknoopzak.\r\n100% katoen.\r\nMag in de wasmachine. Geïmporteerd.\r\nKleurstoffen kunnen wrijven op stoffen en stoffering.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(7, 4, 'قمصان عادية قميص من القطن', 'معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث.\r\nحجم المتوسطة لديها 30 "طول الجسم.\r\nزر أسفل نقطة طوق. زر بلاكيت.\r\nأكمام قصيرة.\r\nاليسار الصدر جيب زر.\r\n100٪ قطن.\r\nآلة قابل للغسل. مستورد.\r\nقد تلتصق التلوين على الأقمشة والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(8, 1, 'STANDARD FIT COTTON POPOVER', 'Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version.\r\nSize medium has a 30" back body length.\r\nButton-down point collar. Buttoned half-placket.\r\nShort sleeves.\r\nLeft chest buttoned pocket.\r\nBox-pleated back yoke ensures a comfortable fit and a greater range of motion.\r\n100% cotton.\r\nMachine washable. Imported. Japanese fabric.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(8, 2, 'STANDAARD FIT COTTON POPOVER', 'Standaard Fit: een comfortabel, ontspannen silhouet. Als u onze Classic Fit of Custom Fit heeft gepresenteerd, vindt u deze bijgewerkte versie.\r\nGrootte medium heeft een 30 "ruglengte.\r\nButton-down punt kraag. Buttoned halve knoop.\r\nKorte mouwen.\r\nLinker borstknoopzak.\r\nBox-geplooide rug juk zorgt voor een comfortabele pasvorm en een grotere waaier van beweging.\r\n100% katoen.\r\nMag in de wasmachine. Geïmporteerd. Japanse stof.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(8, 4, 'ستاندرد فيت القطن بوبوفر', 'معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث.\r\nحجم المتوسطة لديها 30 "طول الجسم الخلفي.\r\nزر أسفل نقطة طوق. زر بلاكيت نصف.\r\nأكمام قصيرة.\r\nاليسار الصدر جيب زر.\r\nمربع مطوي نير نير يضمن تناسب مريح ومجموعة أكبر من الحركة.\r\n100٪ قطن.\r\nآلة قابل للغسل. مستورد. النسيج الياباني.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(9, 1, 'STANDARD FIT MADRAS POPOVER', 'Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version.\r\nSize medium has a 30" body length.\r\nButton-down point collar. Three-button placket. Genuine mother-of-pearl buttons.\r\nShort sleeves. Left chest patch pocket.\r\nSplit back yoke with a box pleat ensures a comfortable fit and a greater range of motion.\r\nSignature embroidered pony at the left chest pocket.\r\n100% cotton. Machine washable. Imported.\r\nDue to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(9, 2, 'STANDAARD FIT MADRAS POPOVER', 'Standaard Fit: een comfortabel, ontspannen silhouet. Als u onze Classic Fit of Custom Fit heeft gepresenteerd, vindt u deze bijgewerkte versie.\r\nGrootte medium heeft een 30 "lichaamslengte.\r\nButton-down punt kraag. Drukknop. Echte parelknopen.\r\nKorte mouwen. Linker borstvlekzak.\r\nVersplinterd juk met een doosvleugel zorgt voor een comfortabele pasvorm en een groter bewegingsbereik.\r\nHandtekening geborduurde pony aan de linker borstzak.\r\n100% katoen. Mag in de wasmachine. Geïmporteerd.\r\nVanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(9, 4, 'ستاندرد فيت مادراس بوبوفر', 'معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث.\r\nحجم المتوسطة لديها 30 "طول الجسم.\r\nزر أسفل نقطة طوق. ثلاثة زر بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار.\r\nأكمام قصيرة. اليسار التصحيح الصدر جيب.\r\nانقسام الظهر نير مع مربع الطوى يضمن تناسب مريح ومجموعة أكبر من الحركة.\r\nالتوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، خزانة الدولة، جيب.\r\n100٪ قطن. آلة قابل للغسل. مستورد.\r\nنظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(10, 1, 'STANDARD FIT COTTON WORKSHIRT', 'Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version.\r\nSize medium has a 32" body length, an 18½" shoulder, a 46½" chest, and a 35" sleeve length. Sleeve length is taken from the center back of the neck and changes 1" between sizes.\r\nPoint collar. Buttoned placket. Genuine mother-of-pearl buttons.\r\nLong sleeves with buttoned barrel cuffs.\r\nTwo chest buttoned pockets.\r\nSplit back yoke with a box pleat ensures a comfortable fit and a greater range of motion.\r\n100% cotton. Machine washable. Imported. Italian fabric.\r\nDyed with true indigo, which may rub off onto fabrics, leather, and upholstery.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(10, 2, 'STANDARD FIT COTTON WORKSHIRT', 'Standaard Fit: een comfortabel, ontspannen silhouet. Als u onze Classic Fit of Custom Fit heeft gepresenteerd, vindt u deze bijgewerkte versie.\r\nGrootte medium heeft een 32 "lichaamslengte, een 18½" schouder, een 46½ "borst en een 35" mouwlengte. Mouwlengte is van het midden van de nek verwijderd en verandert 1 "tussen maten.\r\nPunt kraag. Knoopknoop. Echte parelknopen.\r\nLange mouwen met knoopbeugels.\r\nTwee borstzakken met zakken.\r\nVersplinterd juk met een doosvleugel zorgt voor een comfortabele pasvorm en een groter bewegingsbereik.\r\n100% katoen. Mag in de wasmachine. Geïmporteerd. Italiaanse stof.\r\nGekleurd met echte indigo, die op stoffen, leer en stoffering kan wrijven.\r\nModel is 6\'1 "/ 185 cm en draagt een maat medium.', NULL, 0),
(10, 4, 'ستاندرد فيت القطن وركشيرت', 'معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث.\r\nحجم المتوسطة لديه 32 "طول الجسم، و 18" الكتف، و 46 "الصدر، و 35" كم طول. يتم أخذ طول الأكمام من وسط الظهر من الرقبة والتغييرات 1 "بين الأحجام.\r\nطوق نقطة. زر بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار.\r\nأكمام طويلة مع الأصفاد برميل زرر.\r\nاثنين من الصدر جيوب زر.\r\nانقسام الظهر نير مع مربع الطوى يضمن تناسب مريح ومجموعة أكبر من الحركة.\r\n100٪ قطن. آلة قابل للغسل. مستورد. النسيج الإيطالي.\r\nمصبوغ مع النيلي الحقيقي، والتي قد فرك على الأقمشة والجلود، والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0),
(11, 1, 'ELDRIDGE SUPER SLIM JEAN', 'Eldridge Super Slim: Polo\'s skinniest fit. Sits low at the waist. Trim through the thigh and the leg. Tapered leg opening.\r\nSize 32W has an 8¾" rise and a 12½" leg opening.\r\nBelt loops. Zip fly with our signature shank closure.\r\nFive-pocket styling with signature metal rivets. "Polo" label at the coin pocket.\r\n"Polo Ralph Lauren" leather patch at the back right waist.\r\n94% cotton, 4% polyester, 2% elastane.\r\nMachine washable. Imported.\r\nDue to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.\r\nModel is 6\'1"/185 cm and wears a size 32W x 32L.', NULL, 0),
(11, 2, 'ELDRIDGE SUPER SLIM JEAN', 'Eldridge Super Slim: de slankste pasvorm van Polo. Zit laag in de taille Snij door de dij en het been. Tapered leg opening.\r\nGrootte 32W heeft een opening van 8¾ "stijging en een 12½" been.\r\nRiemlussen. Zip vlieg met onze handtekening schacht sluiting.\r\nVijf-pocket styling met handtekening metalen klinknagels. Polo-label in de muntenzak.\r\n"Polo Ralph Lauren" lederen patch aan de rechter rechter taille.\r\n94% katoen, 4% polyester, 2% elastaan.\r\nMag in de wasmachine. Geïmporteerd.\r\nVanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.\r\nHet model is 6\'1 "/ 185 cm en draagt een maat van 32W x 32L.', NULL, 0),
(11, 4, 'إلدريدج سوبر سليم جين', 'إلدريدج سوبر سليم: بولو نحافة تناسب. يجلس منخفضة في وسطه. تقليم من خلال الفخذ والساق. افتتاح الساق مستدق.\r\nحجم 32W لديه ارتفاع 8¾ "و 12½" فتح الساق.\r\nحلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.\r\nتصميم خمسة جيب مع المسامير المعدنية التوقيع. "بولو" التسمية في جيب عملة.\r\n"بولو رالف لورين" التصحيح الجلود في الخصر الخلفي الخلفي.\r\nقطن 94٪، بوليستر 4٪، إلاستين 2٪.\r\nآلة قابل للغسل. مستورد.\r\nنظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس 32 واط × 32 لتر.', NULL, 0),
(12, 1, 'SULLIVAN SLIM FIT JEAN', 'Sullivan Slim: sits slightly below the waist. Slim, tapered leg.\r\nSize 32W has a 9" rise and a 14" leg opening.\r\nBelt loops. Zip fly with our signature shank closure.\r\nFive-pocket styling with signature metal rivets. "Polo" label at the coin pocket.\r\n"Polo Ralph Lauren"–debossed leather patch at the back right waist.\r\n97% cotton, 3% elastane.\r\nMachine washable. Imported.\r\nDue to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.\r\nModel is 6\'1"/185 cm and wears a size 32W x 32L.', NULL, 0),
(12, 2, 'SULLIVAN SLIM FIT JEAN', 'Sullivan Slim: zit iets onder de taille. Slank, taps been.\r\nGrootte 32W heeft een opening van 9 inch en een 14-inch opening.\r\nRiemlussen. Zip vlieg met onze handtekening schacht sluiting.\r\nVijf-pocket styling met handtekening metalen klinknagels. Polo-label in de muntenzak.\r\n"Polo Ralph Lauren" -debossed leer patch aan de rechter rechter taille.\r\n97% katoen, 3% elastaan.\r\nMag in de wasmachine. Geïmporteerd.\r\nVanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.\r\nHet model is 6\'1 "/ 185 cm en draagt een maat van 32W x 32L.', NULL, 0),
(12, 4, 'سوليفان سليم فيت جين', 'سوليفان سليم: يجلس قليلا تحت الخصر. سليم، الساق مدبب.\r\nحجم 32 واط لديه 9 "ارتفاع و 14" افتتاح الساق.\r\nحلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.\r\nتصميم خمسة جيب مع المسامير المعدنية التوقيع. "بولو" التسمية في جيب عملة.\r\n"بولو رالف لورين" -دبوسد التصحيح الجلود في الخصر الخلفي الخلفي.\r\nقطن 97٪، إلاستين 3٪.\r\nآلة قابل للغسل. مستورد.\r\nنظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس 32 واط × 32 لتر.', NULL, 0),
(13, 1, 'HAMPTON STRAIGHT FIT JEAN', 'Hampton Straight: Polo\'s most relaxed fit. Sits slightly below the waist. Easy fit through the thigh and slightly tapered at the ankle.\r\nSize 32W has a 9" rise and a 16" leg opening.\r\nBelt loops. Button fly with our signature shank closure.\r\nFive-pocket styling with signature metal rivets. "Polo" label at the coin pocket.\r\n"Polo Ralph Lauren"–debossed leather patch at the back right waist.\r\n100% cotton.\r\nMachine washable. Imported.\r\nDue to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.\r\nModel is 6\'1"/185 cm and wears a size 32W x 32L.', NULL, 0),
(13, 2, 'HAMPTON STRAIGHT FIT JEAN', 'Hampton Straight: de meest ontspannen pasvorm van Polo. Zit iets onder de taille. Gemakkelijke pasvorm door de dij en een beetje taps aan de enkel.\r\nGrootte 32W heeft een opening van 9 "stijging en een 16" -been.\r\nRiemlussen. Knoop vlieg met onze handtekening schacht sluiting.\r\nVijf-pocket styling met handtekening metalen klinknagels. Polo-label in de muntenzak.\r\n"Polo Ralph Lauren" -debossed leer patch aan de rechter rechter taille.\r\n100% katoen.\r\nMag in de wasmachine. Geïmporteerd.\r\nVanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.\r\nHet model is 6\'1 "/ 185 cm en draagt een maat van 32W x 32L.', NULL, 0),
(13, 4, 'هامبتون مستقيم فيت جين', 'هامبتون مستقيم: بولو الأكثر استرخاء صالح. يجلس قليلا تحت الخصر. من السهل تناسب من خلال الفخذ ومدبب قليلا في الكاحل.\r\nحجم 32 واط لديه 9 "ارتفاع و 16" افتتاح الساق.\r\nحلقات الحزام. زر يطير مع إغلاقنا توقيع عرقوب.\r\nتصميم خمسة جيب مع المسامير المعدنية التوقيع. "بولو" التسمية في جيب عملة.\r\n"بولو رالف لورين" -دبوسد التصحيح الجلود في الخصر الخلفي الخلفي.\r\n100٪ قطن.\r\nآلة قابل للغسل. مستورد.\r\nنظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس 32 واط × 32 لتر.', NULL, 0),
(14, 1, 'LAXMAN TECH SUEDE SNEAKER', 'Rounded toe. Lace-up front.\r\nWoven tag with our signature pony at the tongue.\r\nPadded velvet insole.\r\nTreaded rubber outsole.\r\n"Polo" printed at the outer side.\r\nUpper: man-made materials.\r\nMesh panels: 100% nylon.\r\nImported.', NULL, 0),
(14, 2, 'LAXMAN TECH SUEDE SNEAKER', 'Afgeronde teen. Lace-up front.\r\nGeweven tag met onze handtekening pony aan de tong.\r\nGewatteerde fluweelzool.\r\nTreaded rubberen zool.\r\n"Polo" aan de buitenkant afgedrukt.\r\nBoven: kunstmatige materialen.\r\nMesh panelen: 100% nylon.\r\nGeïmporteerd.', NULL, 0),
(14, 4, 'لاكسمان تيش سويد سنيكر', 'اصبع القدم مدورة. الدانتيل متابعة.\r\nنسج العلامة مع توقيعنا المهر على اللسان.\r\nمبطن المخمل نعل.\r\nالمطاط تسولي المطاط.\r\n"بولو" المطبوعة على الجانب الخارجي.\r\nالعلوي: المواد من صنع الإنسان.\r\nشبكة لوحات: 100٪ النايلون.\r\nمستورد.', NULL, 0),
(15, 1, 'VAUGHN SUEDE SLIP-ON SNEAKER', 'Fits true to size.\r\nRounded toe. Slip-on styling.\r\nElasticized side gores.\r\n"Polo" tag at the outer side. Padded collar.\r\nSignature pony–debossed suede heel.\r\nPadded canvas insole.\r\nTreaded rubber outsole.\r\nLeather.\r\nImported.', NULL, 0),
(15, 2, 'VAUGHN SUEDE SLIP-ON SNEAKER', 'Past op grootte.\r\nAfgeronde teen. Slip-on styling.\r\nElastische zijgaten.\r\nPolo-tag aan de buitenkant. Gewatteerde kraag.\r\nHandtekening pony-geborduurde suède hiel.\r\nGewatteerde doekzool.\r\nTreaded rubberen zool.\r\nLeer.\r\nGeïmporteerd.', NULL, 0),
(15, 4, 'فوند سويد سليب أون سنيكر', 'يناسب حجمها الحقيقي.\r\nاصبع القدم مدورة. الانزلاق على التصميم.\r\nجوارب جانبية مرنة.\r\n"بولو" العلامة في الجانب الخارجي. طوق مبطن.\r\nتوقيع بوني-ديبوسد جلد الغزال كعب.\r\nنعل قماش مبطن.\r\nالمطاط تسولي المطاط.\r\nجلدية.\r\nمستورد.', NULL, 0),
(16, 1, 'WORKINGTON LEATHER DRIVER', 'Penny tab at the vamp.\r\nSingle-needle stitching at the toe.\r\nPadded leather insole.\r\nLeather outsole with rubber-nub detailing.\r\nDebossed "Polo" tag at the outer side.\r\nLeather.\r\nImported.', NULL, 0),
(16, 2, 'WORKINGTON LEATHER DRIVER', 'Penny tabblad bij de vamp.\r\nEnkele naaldsteken bij de teen.\r\nGewatteerde leren binnenzool.\r\nLeren buitenzool met rubberen nub detailing.\r\nDebossed "Polo" tag aan de buitenkant.\r\nLeer.\r\nGeïmporteerd.', NULL, 0),
(16, 4, 'وركترتون الجلود دريفر', 'بيني علامة التبويب في الرقعة.\r\nخياطة إبرة واحدة في أخمص القدمين.\r\nنعل جلد مبطن.\r\nجلد تسولي مع المطاط-- نوب ديتايلينغ.\r\nديبوسد "بولو" العلامة في الجانب الخارجي.\r\nجلدية.\r\nمستورد.', NULL, 0),
(17, 1, 'DILLIAN II SUEDE CHELSEA BOOT', 'Fits true to size.\r\n½"/15 mm heel height.\r\nRounded toe.\r\nElasticized gores at the sides.\r\nPull tab at the heel.\r\nLeather insole.\r\nLeather outsole with rubber treads.\r\nLeather.\r\nImported.', NULL, 0),
(17, 2, 'DILLIAN II SUEDE CHELSEA BOOT', 'Past op grootte.\r\n½ "/ 15 mm hielhoogte.\r\nAfgeronde teen.\r\nElastische gores aan de zijkanten.\r\nTrek tabblad aan de hiel.\r\nLeren binnenzool.\r\nLeren buitenzool met rubberen loopvlakken.\r\nLeer.\r\nGeïmporteerd.', NULL, 0),
(17, 4, 'ديليان الثاني سويد تشلسي بوت', 'يناسب حجمها الحقيقي.\r\n½ "/ 15 مم ارتفاع كعب.\r\nاصبع القدم مدورة.\r\nجوارب مرنة على الجانبين.\r\nسحب علامة التبويب في كعب.\r\nجلد نعل.\r\nجلد تسولي مع المطاط معالجتها.\r\nجلدية.\r\nمستورد.', NULL, 0),
(18, 1, 'BRUNEL LEATHER WORK BOOT', '1"/25 mm heel height. 6"/152 mm shaft height.\r\nLace-up front with speed hooks.\r\nSewn-in tongue guard.\r\nPull tab at the heel.\r\nHand-cut leather insole.\r\nVibram rubber outsole. Goodyear welt construction.\r\nLeather.\r\nMade in the USA.', NULL, 0),
(18, 2, 'BRUNEL LEATHER WORK BOOT', '1 "/ 25 mm hielhoogte. 6" / 152 mm schachthoogte.\r\nLace-up voorkant met snelheidshaken.\r\nIngesneden tongbeveiliging.\r\nTrek tabblad aan de hiel.\r\nHandgesneden lederen binnenzool.\r\nVibram rubberen buitenzool. Goodyear welt constructie.\r\nLeer.\r\nGemaakt in de VS.', NULL, 0),
(18, 4, 'برونيل، جلد، شغل، بوت', '1 "/ 25 مم ارتفاع كعب 6" / 152 مم ارتفاع رمح.\r\nالدانتيل متابعة مع خطاف السرعة.\r\nمخيط في اللسان حارس.\r\nسحب علامة التبويب في كعب.\r\nاليد-- قطع الجلود نعل.\r\nفيبرام المطاط تسولي. غودير فيلت البناء.\r\nجلدية.\r\nصنع في الولايات المتحدة الأمريكية.', NULL, 0),
(19, 1, 'LAXMAN TECH SUEDE SNEAKER', 'Rounded toe. Lace-up front.\r\nWoven tag with our signature pony at the tongue.\r\nPadded insole.\r\nTreaded rubber outsole.\r\n"Polo" printed at the outer sides.\r\nIncludes our "Polo Ralph Lauren"–embossed box.\r\nMan-made materials.\r\nImported.', NULL, 0),
(19, 2, 'LAXMAN TECH SUEDE SNEAKER', 'Afgeronde teen. Lace-up front.\r\nGeweven tag met onze handtekening pony aan de tong.\r\nGewatteerde binnenzool.\r\nTreaded rubberen zool.\r\n"Polo" aan de buitenkant afgedrukt.\r\nInclusief onze "Polo Ralph Lauren" -embossed doos.\r\nKunstmatige materialen.\r\nGeïmporteerd.', NULL, 0),
(19, 4, 'لاكسمان تيش سويد سنيكر', 'اصبع القدم مدورة. الدانتيل متابعة.\r\nنسج العلامة مع توقيعنا المهر على اللسان.\r\nنعل مبطن.\r\nالمطاط تسولي المطاط.\r\n"بولو" المطبوعة على الجانبين الخارجي.\r\nيتضمن لدينا "بولو رالف لورين" - مربع منقوش.\r\nمواد من صنع الإنسان.\r\nمستورد.', NULL, 0),
(20, 1, 'ROUND SUNGLASSES', 'Lightweight lenses with 100% UV protection.\r\nMolded nose bridge. Curved arms.\r\nOur logo is discreetly etched at the left lens and interior right arm.\r\nMade in Italy.', NULL, 0),
(20, 2, 'ROND ZONNEBRILLEN', 'Lichtgewicht lenzen met 100% UV bescherming.\r\nGegoten neusbrug. Gebogen armen.\r\nOns logo is discreet geëtst op de linker lens en binnenin rechterarm.\r\nGemaakt in Italië.', NULL, 0),
(20, 4, 'روند، سونغلاسس', 'عدسات خفيفة الوزن مع حماية للأشعة فوق البنفسجية 100٪.\r\nمصبوب، جسر الأنف. الأسلحة المنحنية.\r\nشعارنا محفور بدقة في العدسة اليسرى والداخلية الذراع اليمنى.\r\nصنع في ايطاليا.', NULL, 0),
(21, 1, 'NAUTICAL-STRIPED SUNGLASSES', 'Acetate frame. Metal bars accent the hinges of the arms. Striped pattern accents the interior of each arm.\r\nTinted and polarized lenses offer 100% UV protection and have a scratch-resistant coating.\r\nSubtle "Ralph Lauren" text is etched at the left lens. Our metal "RL" monogram accents each temple.\r\nPresented in our signature soft leather case with a snapped closure. Our signature-stamped cleaning wipe is included.\r\n55 mm eye size. 20 mm bridge size. 145 mm temple size. Imported.', NULL, 0),
(21, 2, 'NAUTISCHE STRIPEDE ZONNEBRILEN', 'Acetaat frame. Metalen staven accentueren de scharnieren van de armen. Gestreept patroon accentueert het interieur van elke arm.\r\nGetinte en gepolariseerde lenzen bieden 100% UV-bescherming en hebben een krasbestendige coating.\r\nDe subtiele "Ralph Lauren" tekst is geëtst op de linker lens. Ons metalen "RL" monogram accentueert elke tempel.\r\nAangeboden in onze handtekening zachte leren behuizing met een afgesloten sluiting. Onze handtekening-gestempelde reinigingsdoekje is inbegrepen.\r\n55 mm ooggrootte. 20 mm brug grootte. 145 mm tempelgrootte. Geïmporteerd.', NULL, 0),
(21, 4, 'النظارات الشمسية ستوتيبد-ستريبد', 'إطار خلات. القضبان المعدنية لهجة المفصلات من الأسلحة. نمط مخطط لهجات الداخلية من كل ذراع.\r\nتوفر العدسات الملونة و المستقطبة حماية للأشعة فوق البنفسجية بنسبة 100٪ ولها طلاء مقاوم للخدش.\r\nيتم تحريف النص الرقيق "رالف لورين" في العدسة اليسرى. لدينا المعادن "رل" مشبك لهجات كل معبد.\r\nقدمت في توقيعنا حالة من الجلد الناعم مع إغلاق قطعت. يتم تضمين لدينا ختم ختم تنظيف مسح.\r\n55 ملم حجم العين. 20 مم حجم الجسر. 145 ملم حجم المعبد. مستورد.', NULL, 0),
(22, 1, 'POLO SQUARE SUNGLASSES', 'Metal frame with a double bridge.\r\nMetal signature pony at the temples.\r\nLenses offer 100% UV protection.\r\n"Polo" etched at the left lens.\r\nPresented in our leather "Polo Ralph Lauren"–debossed case.\r\n60 mm eye size.\r\n17 mm bridge size.\r\n140 mm temple size.\r\nMetal. Imported.', NULL, 0),
(22, 2, 'POLO SQUARE ZONNEBRILLEN', 'Metalen frame met een dubbele brug.\r\nMetalen handtekening pony bij de tempels.\r\nLenzen bieden 100% UV bescherming.\r\n"Polo" geëtst op de linker lens.\r\nAangeboden in onze leren "Polo Ralph Lauren" -debossed case.\r\n60 mm ooggrootte.\r\n17 mm brug grootte.\r\n140 mm tempelgrootte.\r\nMetaal. Geïmporteerd.', NULL, 0),
(22, 4, 'بولو، امين، سونغلاسس', 'إطار معدني مع جسر مزدوج.\r\nبوني، التوقيع، ترجمة حرفية، إلى، ال التعريف، تيمبلز.\r\nالعدسات توفر حماية للأشعة فوق البنفسجية 100٪.\r\n"بولو"، حفر حفر، إلى، ال التعريف، اليسار، لينس.\r\nعرضت في جلدنا "بولو رالف لورين" -debossed القضية.\r\n60 ملم حجم العين.\r\n17 مم حجم الجسر.\r\n140 مم حجم المعبد.\r\nفلز. مستورد.', NULL, 0),
(23, 1, 'POLO AVIATOR SUNGLASSES', 'Metal frame with a double bridge.\r\nMetal signature pony at the nylon-fiber temples.\r\nLenses offer 100% UV protection.\r\n"Polo" etched at the left lens.\r\nPresented in our leather "Polo Ralph Lauren"–debossed case.\r\n61 mm eye size.\r\n15 mm bridge size.\r\n145 mm temple size.\r\nMetal, nylon. Imported.', NULL, 0),
(23, 2, 'POLO AVIATOR ZONNEBRIL', 'Metalen frame met een dubbele brug.\r\nMetalen handtekening pony bij de nylonvezel tempels.\r\nLenzen bieden 100% UV bescherming.\r\n"Polo" geëtst op de linker lens.\r\nAangeboden in onze leren "Polo Ralph Lauren" -debossed case.\r\n61 mm ooggrootte.\r\n15 mm brug grootte.\r\n145 mm tempelgrootte.\r\nMetaal, nylon. Geïmporteerd.', NULL, 0),
(23, 4, 'النظارات الشمسية بولو أفياتور', 'إطار معدني مع جسر مزدوج.\r\nمعدن، توقيع، ترجمة حرفية، إلى، ال التعريف، نايلون-فيبر، تيمبلز.\r\nالعدسات توفر حماية للأشعة فوق البنفسجية 100٪.\r\n"بولو"، حفر حفر، إلى، ال التعريف، اليسار، لينس.\r\nعرضت في جلدنا "بولو رالف لورين" -debossed القضية.\r\n61 ملم حجم العين.\r\n15 مم حجم الجسر.\r\n145 ملم حجم المعبد.\r\nالمعادن، النايلون. مستورد.', NULL, 0),
(24, 1, 'STRAPLESS JERSEY MAXIDRESS', 'Strapless maxidress silhouette.\r\nSize medium has a 48½" front body length and a 47¼" back body length.\r\nPull-on styling.\r\nLined at the bodice.\r\nShell and Lining: 95% polyester, 5% elastane.\r\nMachine washable.\r\nImported.\r\nModel is 5\'10"/178 cm and has a 32" bust, a 24" waist, and 34" hips. She wears a size small.', NULL, 0),
(24, 2, 'STRAPLESS JERSEY MAXIDRESS', 'Strapless maxidress silhouet.\r\nGrootte medium heeft een 48½ "voorlichaam lengte en een 47¼" achterlichaam lengte.\r\nPull-on styling.\r\nGekleed in de bodice.\r\nShell en voering: 95% polyester, 5% elastaan.\r\nMag in de wasmachine.\r\nGeïmporteerd.\r\nHet model is 5\'10 "/ 178 cm en heeft een 32" buste, een 24 "taille en 34" heupen. Ze draagt een maatje klein.', NULL, 0),
(24, 4, 'بلا حدود جيرسي ماكسيدريس', 'حمالة، ماكسيدريس، خيال.\r\nحجم المتوسطة لديه 48½ "طول الجسم الأمامي و 47 ¼" طول الجسم الخلفي.\r\nسحب على التصميم.\r\nواصطف في صد.\r\nشل وبطانة: 95٪ بوليستر، 5٪ إلاستان.\r\nآلة قابل للغسل.\r\nمستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولديه 32" تمثال نصفي، و 24 "الخصر، و 34" الوركين. انها ترتدي حجم صغير.', NULL, 0),
(25, 1, 'MADRAS FIT-AND-FLARE DRESS', 'Sleeveless fit-and-flare silhouette.\r\nUS size 8 has a 40½" back body length and a 37¼" bust.\r\nRounded neckline. Concealed center back zipper with a hook-and-eye closure.\r\nSide on-seam pockets.\r\nLined at the bodice.\r\nShell and Lining: 100% cotton.\r\nDry clean.\r\nImported.\r\nModel is 5\'10"/178 cm and has a 32" bust, a 24" waist, and 34" hips. She wears a US size 2.', NULL, 0),
(25, 2, 'MADRAS FIT-AND-FLARE DRESS', 'Mouwloos fit-and-flare silhouet.\r\nAmerikaanse maat 8 heeft een 40½ "achterlichaam lengte en een 37¼" buste.\r\nAfgeronde hals. Versteekte midden rits met een oog-en-sluiting.\r\nZijkantzakken.\r\nGekleed in de bodice.\r\nShell en voering: 100% katoen.\r\nDroogkuis.\r\nGeïmporteerd.\r\nHet model is 5\'10 "/ 178 cm en heeft een 32" buste, een 24 "taille en 34" heupen. Zij draagt een maat van de VS 2.', NULL, 0),
(25, 4, 'مادراس فيت-أند-فلير دريس', 'صورة ظلية بدون أكمام.\r\nحجم الولايات المتحدة 8 لديه 40½ "طول الجسم الخلفي و 37¼" التمثال.\r\nخط العنق مدورة. مخفي مركز سحاب خلفي مع إغلاق هوك والعين.\r\nجانبية على جيوب التماس.\r\nواصطف في صد.\r\nالقشرة والبطانة: قطن 100٪.\r\nتنظيف جاف.\r\nمستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولديه 32" تمثال نصفي، و 24 "الخصر، و 34" الوركين. انها ترتدي حجم الولايات المتحدة 2.', NULL, 0),
(26, 1, 'SILK CREPE SHIRTDRESS', 'Straight fit.\r\nSize 8 has a 51½" back length, a 40¼" bust, and a 32½" sleeve length.\r\nPoint collar. Buttoned placket.\r\nLong sleeves with buttoned barrel cuffs. Two chest patch pockets.\r\nComes with a self-belt with a rectangular buckle.\r\n100% silk.\r\nDry clean.\r\nImported.\r\nModel is 5\'10"/178 cm and has a 32" bust, a 24" waist, and 34" hips. She wears a size 2.', NULL, 0),
(26, 2, 'SILK CREPE SHIRTDRESS', 'Straight fit.\r\nMaat 8 heeft een 51½ "ruglengte, een 40¼" buste en een 32½ "mouwlengte.\r\nPunt kraag. Knoopknoop.\r\nLange mouwen met knoopbeugels. Twee borstzakkenzakken.\r\nWordt geleverd met een zelfgordel met een rechthoekig gesp.\r\n100% zijde.\r\nDroogkuis.\r\nGeïmporteerd.\r\nHet model is 5\'10 "/ 178 cm en heeft een 32" buste, een 24 "taille en 34" heupen. Zij draagt een maat 2.', NULL, 0),
(26, 4, 'سيلك، تقشد، شيرتدريس', 'خطوات ثابتة.\r\nحجم 8 لديه 51½ "طول الظهر، و 40¼" التمثال، و 32½ "طول الأكمام.\r\nطوق نقطة. زر بلاكيت.\r\nأكمام طويلة مع الأصفاد برميل زرر. اثنين من جيوب الصدر التصحيح.\r\nيأتي مع حزام ذاتي مع مشبك مستطيلة.\r\n100٪ حرير.\r\nتنظيف جاف.\r\nمستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولديه 32" تمثال نصفي، و 24 "الخصر، و 34" الوركين. انها ترتدي حجم 2.', NULL, 0),
(27, 1, 'BEADED JERSEY GOWN', 'Slim fit.\r\nUS size 8 has a 58" back length and a 35" bust.\r\nSquare neckline. Center back zipper with a hook-and-eye closure.\r\nEmbellished shoulder straps. Sleeveless silhouette.\r\nRuching gathers at the front left waist. Ruffle at the front left skirt.\r\nFully lined.\r\nShell and lining: 95% polyester, 5% elastane.\r\nDry clean. Imported.\r\nModel is 5\'10"/178 cm and has a 32" bust, a 24" waist, and 34" hips. She wears a US size 2.', NULL, 0),
(27, 2, 'BEADED JERSEY GOWN', 'Kleedt slank af.\r\nAmerikaanse maat 8 heeft een 58 "ruglengte en een 35" buste.\r\nVierkante hals. Center achter rits met een oog-en-sluiting.\r\nVerfraaid schouderriem. Mouwloze silhouet.\r\nRuching verzamelt aan de linker linker taille. Ruffle aan de linkerkant van de linkerkant.\r\nVolledig gevoerd.\r\nShell en voering: 95% polyester, 5% elastaan.\r\nDroogkuis. Geïmporteerd.\r\nHet model is 5\'10 "/ 178 cm en heeft een 32" buste, een 24 "taille en 34" heupen. Zij draagt een maat van de VS 2.', NULL, 0),
(27, 4, 'بيدز جيرسي غون', 'جسد مثالي.\r\nحجم الولايات المتحدة 8 لديها 58 "طول الظهر و 35" تمثال نصفي.\r\nخط العنق مربع. مركز سحاب الظهر مع إغلاق هوك والعين.\r\nمزين بأشرطة الكتف. صورة ظلية بلا أكمام.\r\nروتشينغ يجمع في الجبهة اليسرى الخصر. كشكش في الجبهة اليسرى تنورة.\r\nمكتمل الصف.\r\nشل وبطانة: 95٪ بوليستر، 5٪ إلاستان.\r\nتنظيف جاف. مستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولديه 32" تمثال نصفي، و 24 "الخصر، و 34" الوركين. انها ترتدي حجم الولايات المتحدة 2.', NULL, 0),
(28, 1, 'STRIPED COTTON CREWNECK TEE', 'Relaxed fit.\r\nSize medium has a 24½" body length and a 38" bust.\r\nCrewneck.\r\nShort sleeves.\r\n"RL" embroidery at the front right hem.\r\n100% cotton.\r\nMachine washable.\r\nImported.\r\nModel is 5\'10"/178 cm and has a 32" bust. She wears a size small.', NULL, 0),
(28, 2, 'GESTREEPTE T-SHIRT CREWNECK TEE', 'Ontspannen pasvorm.\r\nGrootte medium heeft een 24½ "lichaamslengte en een 38" buste.\r\nRonde hals.\r\nKorte mouwen.\r\n"RL" borduurwerk aan de voorkant rechtshemel.\r\n100% katoen.\r\nMag in de wasmachine.\r\nGeïmporteerd.\r\nModel is 5\'10 "/ 178 cm en heeft een 32" buste. Ze draagt een maatje klein.', NULL, 0),
(28, 4, 'ستريبد، القطن، كريونيك، تي', 'تناسب مريح.\r\nحجم المتوسطة لديها 24 "طول الجسم و 38" التمثال.\r\nياقة مستديرة.\r\nأكمام قصيرة.\r\n"رل" التطريز في الجبهة اليمنى تنحنح.\r\n100٪ قطن.\r\nآلة قابل للغسل.\r\nمستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.', NULL, 0),
(29, 1, 'COTTON-BLEND CREWNECK PULLOVER', 'Boxy fit. Intended to hit at the hip.\r\nSize medium has a 25½" front body length, a 27½" back body length, a 45½" bust, a 49" shoulder (taken from the dropped shoulder), and a 32" sleeve length. Sleeve length changes ¾" between sizes.\r\nCrewneck.\r\nLong balloon sleeves with ribbed cuffs. Dropped shoulders.\r\nRibbed hem.\r\n"Polo" metal plaque at the front right hem. Hem falls longer at the back.\r\nShell: 56% polyester, 44% cotton. Collar and cuffs: 58% cotton, 40% polyester, 2% elastane.\r\nMachine washable. Imported.\r\nModel is 5\'10"/178 cm and has a 32" bust. She wears a size small.', NULL, 0),
(29, 2, 'COTTON-BLEND CREWNECK PULLOVER', 'Boxy fit. De bedoeling om in de heup te slaan.\r\nGrootte medium heeft een 25½ "voorlichaamlengte, een 27½" ruglengte, een 45½ "buste, een 49" schouder (van de afgevallen schouder) en een 32 "mouwlengte. De mouwlengte verandert ¾" tussen maten.\r\nRonde hals.\r\nLange ballonmouwen met geribde manchetten. Droppe schouders.\r\nGeribde zoom.\r\n"Polo" metalen plaatje aan de voorkant rechtse zoom. Hem valt langer aan de achterkant.\r\nShell: 56% polyester, 44% katoen. Kraag en manchetten: 58% katoen, 40% polyester, 2% elastaan.\r\nMag in de wasmachine. Geïmporteerd.\r\nModel is 5\'10 "/ 178 cm en heeft een 32" buste. Ze draagt een maatje klein.', NULL, 0),
(29, 4, 'كوتون-بليند كريونيك قفاز', 'بوكسي صالح. تهدف إلى ضرب في الورك.\r\nحجم متوسط لديه 25 "طول الجسم الأمامي، 27 \'" طول الجسم الخلفي، و 45 "تمثال نصفي، و 49" الكتف (مأخوذة من الكتف انخفض)، و طول الأكمام 32. تغير طول الأكمام ¾ "بين الأحجام.\r\nياقة مستديرة.\r\nطويلة الأكمام بالون مع الأصفاد مضلع. انسحب الكتفين.\r\nمضلع تنحنح.\r\n"بولو" لوحة معدنية في الجبهة اليمنى تنحنح. هيم يسقط أطول في الظهر.\r\nالقشرة:٪ 56 بوليستر،٪ 44 قطن. طوق وأصفاد:٪ 58 قطن،٪ 40 بوليستر،٪ 2 إلاستان.\r\nآلة قابل للغسل. مستورد.\r\nالموديل هو 5\'10 "/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.', NULL, 0),
(30, 1, 'CREWNECK LONG-SLEEVE TOP', '<ul>\r\n	<li>Slim fit. Intended to hit at the hip.</li>\r\n	<li>Size medium has a 26&quot; body length, a 32&quot; bust, a 28&quot; shoulder, a 29&frac12;&quot; waist, and a 24&quot; sleeve length. Sleeve length changes &frac12;&quot; between sizes.</li>\r\n	<li>Crewneck.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>&quot;Polo&quot;-engraved metal plaque at the front right hem.</li>\r\n	<li>Front and back panels.</li>\r\n	<li>96% modal, 4% elastane.</li>\r\n	<li>Machine washable. Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</li>\r\n</ul>\r\n', NULL, 0),
(30, 2, 'CREWNECK LONG-SLEEVE TOP', '<ul>\r\n	<li>Kleedt slank af. De bedoeling om in de heup te slaan.</li>\r\n	<li>Grootte medium heeft een 26 &quot;lichaamslengte, een 32&quot; buste, een 28 &quot;schouder, een 29&frac12;&quot; taille en een 24 &quot;mouwlengte. Mouwlengte verandert &frac12;&quot; tussen maten.</li>\r\n	<li>Ronde hals.</li>\r\n	<li>Lange mouwen.</li>\r\n	<li>&quot;Polo&quot; -gegraveerde metalen plaatje aan de voorkant rechtse zoom.</li>\r\n	<li>Voor- en achterpanelen.</li>\r\n	<li>96% modaal, 4% elastaan.</li>\r\n	<li>Mag in de wasmachine. Ge&iuml;mporteerd.</li>\r\n	<li>Model is 5&#39;10 &quot;/ 178 cm en heeft een 32&quot; buste. Ze draagt een maatje klein.</li>\r\n</ul>\r\n', NULL, 0),
(30, 4, 'كريونيك طويلة الأكمام الأعلى', '<ul>\r\n	<li>جسد مثالي. تهدف إلى ضرب في الورك.</li>\r\n	<li>حجم متوسط لديه 26 &quot;طول الجسم، و 32&quot; التمثال، و 28 &quot;الكتف، و 29 wa&quot; الخصر، و طول 24 &quot;كم طول التغييرات &frac12;&quot; بين الأحجام.</li>\r\n	<li>ياقة مستديرة.</li>\r\n	<li>اكمام طويلة.</li>\r\n	<li>&quot;بولو&quot; - نحى لوحة معدنية في الجبهة اليمنى تنحنح.</li>\r\n	<li>الأمامي والخلفي لوحات.</li>\r\n	<li>96٪ مشروط، 4٪ إلاستان.</li>\r\n	<li>آلة قابل للغسل. مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.</li>\r\n</ul>\r\n', NULL, 0),
(31, 1, 'TOMPKINS SKINNY CROP JEAN', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature skinny fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&frac12;&quot; waist, a 36&quot; hip, and an 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back. Distressing throughout. Rip at the left knee.</li>\r\n	<li>93% cotton, 5% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>\r\n', NULL, 0),
(31, 2, 'TOMPKINS SKINNY CROP JEAN', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s handtekening schinny fit geknipt om recht boven de enkel te raken.</li>\r\n	<li>Grootte 28 heeft ca. Een 7&frac14; &quot;stijging, een 30&frac12;&quot; taille, een 36 &quot;heup en een 11&quot; been opening. Alle maten hebben een 26 inch inseam.</li>\r\n	<li>Riemlussen. Zip vlieg met een handtekening schacht sluiting.</li>\r\n	<li>Vijf-pocket styling met handtekening &quot;P.R.L. 67&quot; -gegraveerde metalen klinknagels. Polo-patch bij de muntzak.</li>\r\n	<li>Handtekening leer &quot;Polo Ralph Lauren&quot; patch aan de achterzijde. Verontrustend doorheen. Rip aan de linkerknie.</li>\r\n	<li>93% katoen, 5% polyester, 2% elastaan.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n	<li>Het model is 5&#39;10 &quot;/ 178 cm en heeft een 24&quot; taille en 34 &quot;heupen. Zij draagt een maat 26 van de VS.</li>\r\n</ul>\r\n', NULL, 0),
(31, 4, 'تومكينز سكيني كروب جين', '<ul>\r\n	<li>تومكينز نحيل المحاصيل: منتصف الارتفاع. بولو التوقيع صالح نحيل اقتصاص لضرب الحق فوق الكاحل.</li>\r\n	<li>حجم 28 لديها تقريبا. و ارتفاع بزاوية 7 بوصات، و خصر 30 بوصة، و 36 بوصة، وفتحة ساق 11 بوصة. جميع الأحجام لديها 26 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي. محزن في جميع أنحاء. مزق في الركبة اليسرى.</li>\r\n	<li>قطن 93٪، بوليستر 5٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي حجم الولايات المتحدة 26.</li>\r\n</ul>\r\n', NULL, 0),
(32, 1, 'TOMPKINS SKINNY CROP JEANS', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature Skinny Fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has an approx. 7&frac14;&quot; rise, 30&frac12;&quot; waist, 36&quot; hip, and 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>\r\n', NULL, 0),
(32, 2, 'TOMPKINS SKINNY CROP JEANS', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s handtekening Skinny Fit is geknipt om recht boven de enkel te slaan.</li>\r\n	<li>Maat 28 heeft een ca. 7&frac14; &quot;stijging, 30&frac12;&quot; taille, 36 &quot;heup en 11&quot; been opening. Alle maten hebben een 26 inch inseam.</li>\r\n	<li>Riemlussen. Zip vlieg met een handtekening schacht sluiting.</li>\r\n	<li>Vijf-pocket styling met handtekening &quot;P.R.L. 67&quot; -gegraveerde metalen klinknagels. Polo-patch bij de muntzak.</li>\r\n	<li>Handtekening leer &quot;Polo Ralph Lauren&quot; patch aan de achterzijde.</li>\r\n	<li>92% katoen, 6% polyester, 2% elastaan.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n	<li>Het model is 5&#39;10 &quot;/ 178 cm en heeft een 24&quot; taille en 34 &quot;heupen. Zij draagt een maat 26 van de VS.</li>\r\n</ul>\r\n', NULL, 0),
(32, 4, 'تومكينز سكيني المحاصيل الجينز', '<ul>\r\n	<li>تومكينز نحيل المحاصيل: منتصف الارتفاع. بولو توقيع سكيني صالح اقتصاص لضرب الحق فوق الكاحل.</li>\r\n	<li>حجم 28 لديها تقريبا. 7&frac14; &quot;ارتفاع، 30&frac12;&quot; الخصر، 36 &quot;الورك، و 11&quot; افتتاح الساق. جميع الأحجام لديها 26 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي.</li>\r\n	<li>قطن 92٪، بوليستر 6٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي حجم الولايات المتحدة 26.</li>\r\n</ul>\r\n', NULL, 0),
(33, 1, 'TOMPKINS SKINNY JEAN', '<ul>\r\n	<li>Tompkins Skinny: mid-rise. Polo&#39;s signature skinny fit with a narrow leg and plenty of stretch for comfort.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&quot; waist, a 35&frac12;&quot; hip, and an 11&quot; leg opening. All sizes have a 30&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a size 26.</li>\r\n</ul>\r\n', NULL, 0);
INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(33, 2, 'TOMPKINS SKINNY JEAN', '<ul>\r\n	<li>Tompkins Skinny: mid-rise. Polo&#39;s handtekening schinny fit met een smalle been en veel stretch voor comfort.</li>\r\n	<li>Grootte 28 heeft ca. Een 7&frac14; &quot;stijging, een 30&quot; taille, een 35&frac12; &quot;heup en een 11&quot; been opening. Alle maten hebben een 30 inch inseam.</li>\r\n	<li>Riemlussen. Zip vlieg met een handtekening schacht sluiting.</li>\r\n	<li>Vijf-pocket styling met handtekening &quot;P.R.L. 67&quot; -gegraveerde metalen klinknagels. Polo-patch bij de muntzak.</li>\r\n	<li>Handtekening leer &quot;Polo Ralph Lauren&quot; patch aan de achterzijde.</li>\r\n	<li>92% katoen, 6% polyester, 2% elastaan.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n	<li>Het model is 5&#39;10 &quot;/ 178 cm en heeft een 24&quot; taille en 34 &quot;heupen. Zij draagt een maat 26.</li>\r\n</ul>\r\n', NULL, 0),
(33, 4, 'تومكينز سكيني جين', '<ul>\r\n	<li>تومكينز نحيل: منتصف الارتفاع. بولو توقيع تناسب نحيل مع الساق الضيقة والكثير من تمتد للراحة.</li>\r\n	<li>حجم 28 لديها تقريبا. و ارتفاع بزاوية 7 بوصات، و خصر 30 بوصة، و 35 &frac12; &quot;، و 11&quot; فتحة الساق. جميع الأحجام لديها 30 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي.</li>\r\n	<li>قطن 92٪، بوليستر 6٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي مقاس 26.</li>\r\n</ul>\r\n', NULL, 0),
(34, 1, 'SMALL SULLIVAN SADDLE BAG', '<ul>\r\n	<li>Single top handle with a 4&quot; drop. Removable woven crossbody strap with a 23&quot; drop.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;debossed fold-over flap. Concealed magnetic closure.</li>\r\n	<li>Leather strap with a stud closure at each side.</li>\r\n	<li>Lined with twill.</li>\r\n	<li>Exterior slip pocket at the back. Interior slip pocket.</li>\r\n	<li>8&quot; L x 9&quot; W x 4&quot; D.</li>\r\n	<li>Leather, cotton.</li>\r\n	<li>Italian leather. Imported.</li>\r\n	<li>Comes with a dust bag.</li>\r\n</ul>\r\n', NULL, 0),
(34, 2, 'KLEIN SULLIVAN ZADEL BAG', '<ul>\r\n	<li>Enkele bovenste handgreep met 4-druppel. Afneembare geweven crossbody band met een 23 &quot;druppel.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; -debossed fold-over flap. Versteekte magnetische sluiting.</li>\r\n	<li>Leren riem met een studsluiting aan elke kant.</li>\r\n	<li>Lined met twill.</li>\r\n	<li>Buitenzakkenzak aan de achterzijde. Interieur slip zak.</li>\r\n	<li>8 &quot;L x 9&quot; W x 4 &quot;D.</li>\r\n	<li>Leer, katoen.</li>\r\n	<li>Italiaans leer. Ge&iuml;mporteerd.</li>\r\n	<li>Wordt geleverd met een stofzak.</li>\r\n</ul>\r\n', NULL, 0),
(34, 4, 'صغير، سوليفان، أزعج، باغ', '<ul>\r\n	<li>مقبض علوي مفرد مع قطرة 4 بوصات قابل للإزالة حزام كروسبودي قابل للإزالة مع قطرة 23 بوصة.</li>\r\n	<li>&quot;بولو رالف لورين&quot; - رفرف مطوية أكثر. إغلاق مغناطيسي مخفي.</li>\r\n	<li>حزام من الجلد مع إغلاق مسمار على كل جانب.</li>\r\n	<li>اصطف مع حك.</li>\r\n	<li>جيب زلة الخارجية في الظهر. الداخلية زلة جيب.</li>\r\n	<li>8 &quot;L x 9&quot; W x 4 &quot;D.</li>\r\n	<li>جلد، قطن.</li>\r\n	<li>الجلود الإيطالية. مستورد.</li>\r\n	<li>يأتي مع حقيبة الغبار.</li>\r\n</ul>\r\n', NULL, 0),
(35, 1, 'PATCHWORK CANVAS BIG PONY TOTE', '<ul>\r\n	<li>Two webbed cotton top handles. each with a 9&frac12;&quot; maximum drop.</li>\r\n	<li>Antiqued metal rivets at the front and the back.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Signature embroidered Big Pony at the front patch pocket.</li>\r\n	<li>Reinforced base.</li>\r\n	<li>Interior slip pocket.</li>\r\n	<li>11&frac14;&quot; H x 19&quot; L x 7&quot; D.</li>\r\n	<li>Shell and lining: cotton. Trim: leather.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(35, 2, 'PATCHWORK CANVAS GROTE PONY TOTE', '<ul>\r\n	<li>Twee handgemaakte katoenen tophandgrepen. Elk met een maximale daling van 9&frac12; &quot;.</li>\r\n	<li>Antiqued metalen klinknagels aan de voorkant en de achterkant.</li>\r\n	<li>Top ritsluiting met een lederen trekblad.</li>\r\n	<li>Handtekening Geborduurde Grote Pony bij de voorste patchzak.</li>\r\n	<li>Versterkte basis.</li>\r\n	<li>Interieur slip zak.</li>\r\n	<li>11&frac14; &quot;H x 19&quot; L x 7 &quot;D.</li>\r\n	<li>Shell en voering: katoen. Trim: leer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(35, 4, 'قماش باتشورك بيج بوني توت', '<ul>\r\n	<li>اثنين من مقابض القطن مبطن. كل منها مع انخفاض 9&frac12; &quot;الحد الأقصى.</li>\r\n	<li>المسامير المعدنية أنتيكد في الجبهة والظهر.</li>\r\n	<li>أعلى إغلاق الرمز البريدي مع علامة التبويب سحب الجلود.</li>\r\n	<li>التوقيع، مطرز، ضخم، ترجمة حرفية، إلى، ال التعريف، تكتل سياسي، رقعة، جيب.</li>\r\n	<li>قاعدة عززت.</li>\r\n	<li>الداخلية زلة جيب.</li>\r\n	<li>11&frac14; &quot;H x 19&quot; L x 7 &quot;D.</li>\r\n	<li>شل وبطانة: القطن. تقليم: الجلود.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(36, 1, 'COLOR-BLOCKED BIG PONY TOTE', '<ul>\r\n	<li>Two webbed top handles, each with a 9&frac12;&quot; drop.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Patch pocket with our signature embroidered Big Pony at the front.</li>\r\n	<li>Interior slip pocket. Interior leather logo patch.</li>\r\n	<li>Gusseted sides. Reinforced bottom.</li>\r\n	<li>Antiqued rivets at the handles.</li>\r\n	<li>12&frac34;&quot; H x 16&frac12;&quot; L x 1&frac34;&quot; D.</li>\r\n	<li>Cotton, leather.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(36, 2, 'KLEURGEBLOKKE GROTE PONY TOTE', '<ul>\r\n	<li>Twee webbeddenhandgrepen, elk met een 9&frac12; &quot;druppel.</li>\r\n	<li>Top ritsluiting met een lederen trekblad.</li>\r\n	<li>Patchzakje met onze handtekening geborduurde Big Pony aan de voorzijde.</li>\r\n	<li>Interieur slip zak. Interieur lederen logo patch.</li>\r\n	<li>Gusseted zijden. Versterkte bodem.</li>\r\n	<li>Antiqued klinknagels aan de handgrepen.</li>\r\n	<li>12&frac34; &quot;H x 16&frac12;&quot; L x 1&frac34; &quot;D.</li>\r\n	<li>Katoen, leer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(36, 4, 'كولور-بلوكد بيج بوني توت', '<ul>\r\n	<li>اثنين من مقابض أعلى ويبد، ولكل منها 9&frac12; &quot;قطرة.</li>\r\n	<li>أعلى إغلاق الرمز البريدي مع علامة التبويب سحب الجلود.</li>\r\n	<li>جيب التصحيح مع توقيعنا مطرزة المهر الكبير في الجبهة.</li>\r\n	<li>الداخلية زلة جيب. الداخلية الجلود شعار التصحيح.</li>\r\n	<li>غوسيتد الجانبين. القاع المقوى.</li>\r\n	<li>المسامير أنتيكد في مقابض.</li>\r\n	<li>12&frac34; &quot;H &times; 16&frac12;&quot; L &times; 1&frac34; &quot;D.</li>\r\n	<li>القطن والجلود.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(37, 1, 'LASER-CUT FLORAL LEATHER TOTE', '<ul>\r\n	<li>Two leather top handles, each with an 8&quot; drop.</li>\r\n	<li>Lobster-clasp closure at the opening.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;embossed removable leather luggage tag and two ties at the top handles.</li>\r\n	<li>Bonded interior.</li>\r\n	<li>Includes a removable zip pouch.</li>\r\n	<li>Bag: 12&frac14;&quot; H x 17&quot; L x 6&quot; D. Pouch: 3&frac14;&quot; H x 6&frac14;&quot; L.</li>\r\n	<li>Leather.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(37, 2, 'LASER-CUT BLOEMEN LEER TOTE', '<ul>\r\n	<li>Twee lederen tophandgrepen, elk met een 8 &quot;druppel.</li>\r\n	<li>Lobster-sluiting bij de opening.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; -embleem verwijderbare lederen bagagelabel en twee banden bij de bovenste handgrepen.</li>\r\n	<li>Bonded interieur.</li>\r\n	<li>Bevat een verwijderbare ritssluiting.</li>\r\n	<li>Zak: 12&frac14; &quot;H x 17&quot; L x 6 &quot;D. Zakje: 3&frac14;&quot; H x 6&frac14; &quot;L.</li>\r\n	<li>Leer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(37, 4, 'ليسر-كت فلورال ليثر توت', '<ul>\r\n	<li>اثنين من أعلى مقابض من الجلد، مع كل 8 &quot;قطرة.</li>\r\n	<li>إغلاق المشبك جراد البحر في الافتتاح.</li>\r\n	<li>&quot;بولو رالف لورين&quot; - منقوش العلامة الأمتعة الجلدية القابلة للإزالة وعلاقتين في أعلى مقابض.</li>\r\n	<li>المستعبدين الداخلية.</li>\r\n	<li>يتضمن الحقيبة الرمزية القابلة للإزالة.</li>\r\n	<li>كيس: 12&frac14; &quot;H &times; 17&quot; L &times; 6 &quot;D. الحقيبة: 3&frac14;&quot; H &times; 6&frac14; &quot;L.</li>\r\n	<li>جلدية.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(38, 1, 'BEAR-PRINT COTTON COVERALL', '', NULL, 0),
(38, 2, 'BEAR-PRINT COTTON COVERALL', '', NULL, 0),
(38, 4, 'بير-برينت كوتن كوفيرال', '', NULL, 0),
(39, 1, 'STRIPED COTTON HENLEY COVERALL', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>Ring snaps at the hem ensure easy on and off.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(39, 2, 'STRIPED COTTON HENLEY COVERALL', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Henley hals.</li>\r\n	<li>Drukknop.</li>\r\n	<li>Lange mouwen.</li>\r\n	<li>Ringknipsels bij de zoom zorgen ervoor dat het gemakkelijk aan en uit staat.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(39, 4, 'ستريبد، القطن، هينلي، كوفيرال', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>خط العنق هينلي.</li>\r\n	<li>ثلاثة زر بلاكيت.</li>\r\n	<li>اكمام طويلة.</li>\r\n	<li>خاتم يستقر في تنحنح ضمان سهولة وإيقاف.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(40, 1, 'STRIPED COTTON HENLEY BODYSUIT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Ring snaps at the hem.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(40, 2, 'STRIPED COTTON HENLEY BODYSUIT', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Henley hals.</li>\r\n	<li>Drukknop.</li>\r\n	<li>Korte mouwen.</li>\r\n	<li>Ring snaps aan de zoom.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(40, 4, 'ستريبد، القطن، هنلي، بوديسويت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>خط العنق هينلي.</li>\r\n	<li>ثلاثة زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>حلقة يستقر في تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(41, 1, 'ABC BLOCK 4-PIECE GIFT BASKET', '<ul>\r\n	<li>Kimono top, pant, coverall, and printed side of blankie: 100% cotton.</li>\r\n	<li>Blankie&#39;s bear, bear fill, plush side, and plush trim: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Kimono top: wrap silhouette secures with snaps and a tie; long sleeves.</li>\r\n	<li>Pant: elasticized waist; footed silhouette.</li>\r\n	<li>Coverall: crew neckline; snapped front; long sleeves; signature embroidered pony at the left chest; ring snaps at the hem; footed silhouette.</li>\r\n	<li>Blankie: plush bear head and arms at the center; 11&quot; W x 11&quot; L. Imported.</li>\r\n	<li>Elegantly presented in a cotton-lined wicker basket. 10&quot; H x 10&quot; L x 8&quot; D.</li>\r\n	<li>Comes with pre-cut cellophane and a matching ribbon for gift-giving.</li>\r\n</ul>\r\n', NULL, 0),
(41, 2, 'ABC BLOCK 4-PIECE GIFTMANDJE', '<ul>\r\n	<li>Kimono top, broek, coverall, en bedrukte zijde van blankie: 100% katoen.</li>\r\n	<li>Blankie&#39;s beer, beervulling, pluche zijde en pluche bekleding: 100% polyester.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Kimono top: Wrap silhouet beveiligt met snaps en een das; lange mouwen.</li>\r\n	<li>Pant: elastische taille; Voeten silhouet.</li>\r\n	<li>Coverall: crew neckline; Vooraan geknipt lange mouwen; Handtekening geborduurde pony aan de linker borst; Ringknaps aan de zoom Voeten silhouet.</li>\r\n	<li>Blankie: pluche beerkop en armen in het midden; 11 &quot;B x 11&quot; L. Ingevoerd.</li>\r\n	<li>Elegant gepresenteerd in een katoenen gevoerde rieten mand. 10 &quot;H x 10&quot; L x 8 &quot;D.</li>\r\n	<li>Wordt geleverd met voorgesneden cellofaan en een bijpassend lint voor het geven van geschenken.</li>\r\n</ul>\r\n', NULL, 0),
(41, 4, 'أبك بلوك 4-بيس غيفت باسكيت', '<ul>\r\n	<li>كيمونو أعلى، بانت، المعطف، والجانب المطبوع من بلانكي: القطن 100٪.</li>\r\n	<li>بلانكي الدب، الدب ملء، أفخم الجانب، و أفخم تقليم: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>كيمونو الأعلى: التفاف خيال يؤمن مع الطقات وربطة عنق؛ اكمام طويلة.</li>\r\n	<li>بانت: إلاستيكيزد ويست؛ فوتد، خيال.</li>\r\n	<li>المعطف: خط الرقبة الطاقم. قطعت الجبهة؛ اكمام طويلة؛ التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، شيست؛ حلقة يستقر في تنحنح. فوتد، خيال.</li>\r\n	<li>بلانكي: أفخم الدب الرأس والذراعين في المركز. 11 &quot;W x 11&quot; L. المستوردة.</li>\r\n	<li>عرضت بشكل أنيق في سلة الخوص اصطف القطن. 10 &quot;H &times; 10&quot; L &times; 8 &quot;D.</li>\r\n	<li>يأتي مع سلفان قبل قطع وشريط مطابقة لتقديم الهدايا.</li>\r\n</ul>\r\n', NULL, 0),
(42, 1, 'COTTON POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&quot; body length.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Ruffled hem. Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(42, 2, 'KATOON POLO DRESS & BLOOMER', '<ul>\r\n	<li>Jurk en bloomer: 100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Drop-waist silhouet.</li>\r\n	<li>Maat 9 maanden heeft een lengte van 16 inch.</li>\r\n	<li>Gestreept polosband. Drukknop.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Korte mouwen met geribbelde armbanden.</li>\r\n	<li>Ruffled hem. Wordt geleverd met een bijpassende bloomer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(42, 4, 'القطن بولو اللباس و بومر', '<ul>\r\n	<li>اللباس و البنطلون: 100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>قطرة الخصر خيال.</li>\r\n	<li>حجم 9 أشهر لديه 16 &quot;طول الجسم.</li>\r\n	<li>مضلع طوق بولو. ثلاثة زر بلاكيت.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة.</li>\r\n	<li>تكدرت تنحنح. يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(43, 1, 'STRIPED POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Shirred flounce with lace trim.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(43, 2, 'STRIPED POLO DRESS & BLOOMER', '<ul>\r\n	<li>Jurk en bloomer: 100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Mouwloos druppel-taille silhouet.</li>\r\n	<li>Maat 9 maanden heeft een 16&frac12; &quot;voorlichaamlengte.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Gestreept polosband. Drukknop.</li>\r\n	<li>Shirred flounce met kant trim.</li>\r\n	<li>Wordt geleverd met een bijpassende bloomer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(43, 4, 'ستريبد بولو اللباس و بومر', '<ul>\r\n	<li>اللباس و البنطلون: 100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>بلا أكمام قطرة الخصر خيال.</li>\r\n	<li>حجم 9 أشهر لديه 16&frac12; &quot;طول الجسم الأمامي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو. ثلاثة زر بلاكيت.</li>\r\n	<li>شيرد يندرج مع تقليم الدانتيل.</li>\r\n	<li>يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(44, 1, 'RUFFLED FLORAL DRESS & BLOOMER', '<ul>\r\n	<li>Dress&#39; shell and bloomer: 100% viscose. Dress&#39;s lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless A-line silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Elasticized ruffled neckline.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(44, 2, 'RUFFLED FLORAL DRESS & BLOOMER', '<ul>\r\n	<li>Dress &#39;shell en bloomer: 100% viscose. Jurk voering: 100% polyester.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Mouwloze A-lijn silhouet.</li>\r\n	<li>Maat 9 maanden heeft een 16&frac12; &quot;voorlichaamlengte.</li>\r\n	<li>Elastische ruffled neckline.</li>\r\n	<li>Volledig gevoerd.</li>\r\n	<li>Wordt geleverd met een bijpassende bloomer.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(44, 4, 'روفلد فستان الزهور وبلوم', '<ul>\r\n	<li>اللباس &#39;قذيفة و بلومر: 100٪ فسكوزي. بطانة اللباس: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>بلا أكمام ألف خط صورة ظلية.</li>\r\n	<li>حجم 9 أشهر لديه 16&frac12; &quot;طول الجسم الأمامي.</li>\r\n	<li>مطاطا تكدرت العنق.</li>\r\n	<li>مكتمل الصف.</li>\r\n	<li>يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(45, 1, 'STRIPED COTTON BLANKET', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Striped side reverses to a solid-hued side.</li>\r\n	<li>Signature embroidered pony at the lower right corner of the striped side.</li>\r\n	<li>Ribbed binding.</li>\r\n	<li>28&quot; L x 32&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(45, 2, 'STRIPED COTTON BLANKET', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Gestreepte kant omkeert naar een stevige kant.</li>\r\n	<li>Handtekening geborduurde pony in de rechter benedenhoek van de gestreepte kant.</li>\r\n	<li>Ribbed binding.</li>\r\n	<li>28 &quot;L x 32&quot; W.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(45, 4, 'ستريبد، قطن، بلانكيت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>عكس الجانب مخطط إلى الجانب الصلبة.</li>\r\n	<li>التوقيع مطرزة المهر في الزاوية اليمنى السفلى من الجانب مخطط.</li>\r\n	<li>ملزمة مضلع.</li>\r\n	<li>28 &quot;L x 32&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(46, 1, 'CREPE SWADDLING BLANKET SET', '<ul>\r\n	<li>Set of three blankets.</li>\r\n	<li>All items: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the bottom right corner.</li>\r\n	<li>47&quot; L x 47&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(46, 2, 'CREPE SWADDLING BLANKET SET', '<ul>\r\n	<li>Set van drie dekens.</li>\r\n	<li>Alle artikelen: 100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Handtekening geborduurde pony in de rechterbenedenhoek.</li>\r\n	<li>47 &quot;L x 47&quot; W.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(46, 4, 'كريب سوادلينغ بلانكيت سيت', '<ul>\r\n	<li>مجموعة من ثلاث بطانيات.</li>\r\n	<li>جميع البنود: 100٪ القطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>توقيع مطرزة المهر في أسفل الزاوية اليمنى.</li>\r\n	<li>47 &quot;L x 47&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(47, 1, 'PLUSH BLANKET', '<ul>\r\n	<li>100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Tonal signature embroidered pony at one corner.</li>\r\n	<li>Grosgrain border.</li>\r\n	<li>28&quot; L x 28&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(47, 2, 'PLUSH BLANKET', '<ul>\r\n	<li>100% Polyester.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Tonale handtekening geborduurde pony in een hoek.</li>\r\n	<li>Grosgrain grens.</li>\r\n	<li>28 inch L x 28 inch B Gemaakt in de VS.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(47, 4, 'بلوش بطانية', '<ul>\r\n	<li>100٪ بوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>تون، توقيع، مطرزة، ترجمة حرفية، إلى، أوحد، كورنر.</li>\r\n	<li>الحدود غروسغراين.</li>\r\n	<li>28 &quot;L x 28&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(48, 1, 'RL Bowery Sateen Duvet Cover', '<p>A contrasting border and frame give this 624-thread-count sateen duvet cover a crisp tailored look.</p>\r\n\r\n<ul>\r\n	<li>624-thread-count cotton sateen.</li>\r\n	<li>3&quot; contrasting flange. &frac12;&quot; contrasting frame.</li>\r\n	<li>Concealed buttoned closures.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W.</li>\r\n	<li>King: 96&quot; L x 108&quot; W.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(48, 2, 'RL Bowery Sateen Dekbedovertrek', '<p>Een contrasterende rand en frame geven deze 624-thread-count sateen dekbedovertrek een frisse, op maat gemaakte look.</p>\r\n\r\n<ul>\r\n	<li>624-thread-count katoen sateen.</li>\r\n	<li>3 &quot;contrastend flens. &frac12;&quot; contrasterend frame.</li>\r\n	<li>Versteekte knoopsluits.</li>\r\n	<li>Volledig / koningin: 96 &quot;L x 92&quot; W.</li>\r\n	<li>Koning: 96 &quot;L x 108&quot; W.</li>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(48, 4, 'غطاء لحاف رولي بويري ساتين', '<p>إن الحدود والأطر المتناقضة تعطي غطاء لحاف ساتين ذو 6 خيط مرصع على شكل خيط مرصع.</p>\r\n\r\n<ul>\r\n	<li>624-ثرياد-كونت قطن ساتين.</li>\r\n	<li>3 &quot;شفة متناقضة. &frac12;&quot; إطار متناقض.</li>\r\n	<li>إخفاء إغلاق زر.</li>\r\n	<li>فول / كوين: 96 &quot;L x 92&quot; W.</li>\r\n	<li>كينغ: 96 &quot;L x 108&quot; W.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(49, 1, 'Bedford Jacquard Duvet Cover', '<p>With an allover jacquard-woven pattern, this 400-thread-count duvet cover will add subtle texture to your bed and is perfect for mixing and matching.</p>\r\n\r\n<ul>\r\n	<li>400-thread-count cotton jacquard.</li>\r\n	<li>2&quot; flange.</li>\r\n	<li>Concealed buttoned closure.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(49, 2, 'Bedford Jacquard Dekbedovertrek', '<p>Met een allover jacquard-geweven patroon, voegt deze 400-draad-dekbedovertrek subtiele textuur toe aan uw bed en is het perfect om te mengen en te passen.</p>\r\n\r\n<ul>\r\n	<li>400-thread-count katoen jacquard.</li>\r\n	<li>2 &quot;flens.</li>\r\n	<li>Versteekte knoopsluiting.</li>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(49, 4, 'غطاء لحاف بيدفورد جاكارد', '<p>مع هذا النمط من الجاكار المنسوج، فإن غطاء لحاف 400 خيط من هذا القبيل سيضيف نسيج خفيف إلى سريرك وهو مثالي للخلط والمطابقة.</p>\r\n\r\n<ul>\r\n	<li>400-موضوع-العد القطن الجاكار.</li>\r\n	<li>2 &quot;شفة.</li>\r\n	<li>إغلاق مخفي.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(50, 1, 'MONACO SATEEN DUVET COVER', '<ul>\r\n	<li>286-thread-count cotton sateen.</li>\r\n	<li>Concealed buttoned closures at the bottom.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W; 2&quot; flange.</li>\r\n	<li>King: 96&quot; L x 108&quot; W; 2&quot; flange.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(50, 2, 'MONACO SATEEN DUVET COVER', '<ul>\r\n	<li>286-thread-count katoen sateen.</li>\r\n	<li>Versteekte knoopjes aan de onderkant.</li>\r\n	<li>Volledig / koningin: 96 &quot;L x 92&quot; W; 2 &quot;flens.</li>\r\n	<li>Koning: 96 &quot;L x 108&quot; W; 2 &quot;flens.</li>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(50, 4, 'موناكو ساتين غطاء دوفيت', '<ul>\r\n	<li>286-موضوع العد القطن ساتين.</li>\r\n	<li>إخفاء إغلاق زر في الأسفل.</li>\r\n	<li>فول / كوين: 96 &quot;L x 92&quot; W؛ 2 &quot;شفة.</li>\r\n	<li>كينغ: 96 &quot;L x 108&quot; W؛ 2 &quot;شفة.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(51, 1, 'Pink Palmer Sham', '<p>Crafted from luxurious 464-thread-count cotton percale, our menswear-inspired Palmer sham is designed with pink contrast taping.</p>\r\n\r\n<ul>\r\n	<li>2&frac12;&quot; flange with &frac14;&quot; of contrast taping.</li>\r\n	<li>Back envelope closure.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n</ul>\r\n', NULL, 0),
(51, 2, 'Roze Palmer Sham', '<p>Gemaakt van luxe 464-thread-count katoen percale, onze menswear-ge&iuml;nspireerde Palmer sham is ontworpen met roze contrasteerband.</p>\r\n\r\n<ul>\r\n	<li>2&frac12; &quot;flens met &frac14;&quot; van contraband.</li>\r\n	<li>Terug envelopsluiting.</li>\r\n	<li>100% katoen. Mag in de wasmachine. Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(51, 4, 'الوردي بالمر الشام', '<p>صممت من الفخامة القطنية الفاخرة المصنوعة من 464 خيط مرصع بالألوان، تم تصميم شورت بالمر المستوحى من الملابس الرجالية مع ربط التباين الوردي.</p>\r\n\r\n<ul>\r\n	<li>2&frac12; &quot;شفة مع &frac14;&quot; من التباين التسجيل.</li>\r\n	<li>إغلاق المغلف الخلفي.</li>\r\n	<li>100٪ قطن. آلة قابل للغسل. مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(52, 1, 'RL BEADED DYLAN PILLOW', '<ul>\r\n	<li>Vertical rib-knit design with beading at the front. Solid-colored back.</li>\r\n	<li>Concealed zipper at the bottom.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>15&quot; L x 20&quot; W. Shell: 70% wool; 30% cashmere. Insert: 95% feathers; 5% down blend. Dry clean. Imported.</li>\r\n</ul>\r\n', NULL, 0),
(52, 2, 'RL BEADED DYLAN PILLOW', '<ul>\r\n	<li>Verticaal ribboordontwerp met kralen aan de voorzijde. Solid-colored terug.</li>\r\n	<li>Vergrendelde ritssluiting aan de onderkant.</li>\r\n	<li>Wordt geleverd met een kusseninzet.</li>\r\n	<li>15 &quot;L x 20&quot; W. Shell: 70% wol; 30% kasjmier. Insteek: 95% veren; 5% down mix. Droogkuis. Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(52, 4, 'RL ديلان BEADED سادة', '<ul>\r\n	<li>عمودي تصميم ضلع متماسكة مع الديكور في الجبهة. الصلبة الملونة الظهر.</li>\r\n	<li>أخفى سستة في القاع.</li>\r\n	<li>يأتي مع إدراج وسادة.</li>\r\n	<li>15 &quot;L &times; 20&quot; W شل: 70٪ من الصوف. 30٪ الكشمير. إدراج: 95٪ الريش. 5٪ مزيج أسفل. نظيفة جافة. المستوردة.</li>\r\n</ul>\r\n', NULL, 0),
(53, 1, 'GREAT BASIN THROW PILLOW', '<ul>\r\n	<li>Allover embroidery at the face. Solid silk twill back.</li>\r\n	<li>Concealed zip closure at one side.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>22&quot; L x 22&quot; W. Shell: 100% silk. Insert: 95% feathers; 5% down blend. Dry clean. Made in India.</li>\r\n</ul>\r\n', NULL, 0),
(53, 2, 'GROTE BASIN THROW PILLOW', '<ul>\r\n	<li>Over borduurwerk aan het gezicht. Vaste zijdewand terug.</li>\r\n	<li>Vergrendelde ritsluiting aan de ene kant.</li>\r\n	<li>Wordt geleverd met een kusseninzet.</li>\r\n	<li>22 &quot;L x 22&quot; W. Shell: 100% zijde. Insteek: 95% veren; 5% down mix. Droogkuis. Gemaakt in India.</li>\r\n</ul>\r\n', NULL, 0),
(53, 4, 'جليل، إصطاد الحيتان،', '<ul>\r\n	<li>كل التطريز على الوجه. الحرير الصلبة حك العودة.</li>\r\n	<li>إغلاق الرمز البريدي مخفي في جانب واحد.</li>\r\n	<li>يأتي مع إدراج وسادة.</li>\r\n	<li>22 &quot;l &times; 22&quot; W. شل: 100٪ الحرير. إدراج: 95٪ الريش. 5٪ أسفل مزيج. تنظيف جاف. المحرز في الهند.</li>\r\n</ul>\r\n', NULL, 0),
(54, 1, 'CABLED CASHMERE TRAVEL SET', '<ul>\r\n	<li>Eye mask is lined with contrasting woven cotton and has two elastic straps for a secure fit.</li>\r\n	<li>Rectangular cable-knit throw blanket has ribbed edges.</li>\r\n	<li>Zippered cable-knit bag is lined with coordinating cotton fleece.</li>\r\n	<li>Bag: 15&quot; L x 12&quot; W. Blanket: 32&quot; L x 55&quot; W.</li>\r\n	<li>Cashmere and cotton. Imported.</li>\r\n</ul>\r\n', NULL, 0),
(54, 2, 'Gekabbelde CASHMERE REIS SET', '<ul>\r\n	<li>Oogmasker is bekleed met contrasterend geweven katoen en heeft twee elastische riemen voor een veilige pasvorm.</li>\r\n	<li>Rechthoekige kabelbreedte-deken heeft randen.</li>\r\n	<li>Zippered kabel-gebreide tas is bekleed met co&ouml;rdinerende katoenen fleece.</li>\r\n	<li>Zak: 15 &quot;L x 12&quot; W. Koffer: 32 &quot;L x 55&quot; W.</li>\r\n	<li>Cashmere en katoen. Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(54, 4, 'كابلد كاشمير ترافيل سيت', '<ul>\r\n	<li>يصف قناع العين مع القطن المنسوج المتناقضة ولها اثنين من الأشرطة المرنة لملاءمة آمنة.</li>\r\n	<li>مستطيلة كابل رمي بطانية متماسكة حواف مضلع.</li>\r\n	<li>انحرفت حقيبة انغلق كابل متماسكة مع المنسوجات القطن الصوف.</li>\r\n	<li>حقيبة: 15 &quot;L &times; 12&quot; W. بطانية: 32 &quot;L &times; 55&quot; W.</li>\r\n	<li>الكشمير والقطن. مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(55, 1, 'Langdon Embroidered Bathrobe', '<p>This relaxed-fitting unisex bathrobe is tailored from plush Turkish cotton, a durable fiber that becomes softer and more absorbent after each washing. The spa-inspired style is embellished with contrasting embroidery along the shawl collar, placket and cuffs for a classic look. Add a monogram at the left chest for a personal touch.</p>\r\n\r\n<ul>\r\n	<li>Relaxed fit. Shawl collar.</li>\r\n	<li>Long sleeves with turn-back cuffs. Pocket at each hip.</li>\r\n	<li>Self-tie belt at the waist.</li>\r\n	<li>100% Turkish cotton. Machine washable. Imported.</li>\r\n	<li>Small: 47&quot; back body length; 44&quot; chest; 24&quot; sleeve length.</li>\r\n	<li>Medium: 48&quot; back body length; 46&quot; chest; 24&frac12;&quot; sleeve length.</li>\r\n	<li>Large: 49&quot; back body length; 49&quot; chest; 25&frac12;&quot; sleeve length.</li>\r\n	<li>Please note, personalized items are non-returnable. A $5 monogramming charge will be added to the retail price.</li>\r\n</ul>\r\n', NULL, 0),
(55, 2, 'Langdon Geborduurde Badjas', '<p>Deze ontspannen, fit unisex badjas is op maat gemaakt van pluche Turkse katoen, een duurzame vezels die na elke wasser zachter en absorberend worden. De spa-ge&iuml;nspireerde stijl is versierd met contrasterend borduurwerk langs de sjaalshalsband, knoop en manchetten voor een klassieke uitstraling. Voeg een monogram aan de linker borst toe voor een persoonlijke aanraking.</p>\r\n\r\n<ul>\r\n	<li>Ontspannen pasvorm. Zilveren kraag.</li>\r\n	<li>Lange mouwen met terugslagmouwen. Zak in elke heup.</li>\r\n	<li>Zelfstropende riem aan de taille.</li>\r\n	<li>100% Turks katoen. Mag in de wasmachine. Ge&iuml;mporteerd.</li>\r\n	<li>Klein: 47 &quot;achterlichaamlengte; 44&quot; borst; 24 &quot;mouwlengte.</li>\r\n	<li>Medium: 48 &quot;achterlichaamlengte; 46&quot; borst; 24&frac12; &quot;mouwlengte.</li>\r\n	<li>Groot: 49 &quot;achterlichaamlengte; 49&quot; borst; 25&frac12; &quot;mouwlengte.</li>\r\n	<li>Let op, gepersonaliseerde artikelen zijn niet retourneren. Een $ 5 monogrammering wordt toegevoegd aan de verkoopprijs.</li>\r\n</ul>\r\n', NULL, 0),
(55, 4, 'لانغدون البشكير مطرزة', '<p>هذا الحمام المناسب للجنسين مصمم خصيصا من القطن التركي الفاخر، وهو ألياف دائمة تصبح أكثر ليونة وأكثر امتصاصا بعد كل غسل. مزين بأسلوب مستوحى من السبا بالتطريز المتناقض على طول طوق الشال، والأغطية والأصفاد للحصول على مظهر كلاسيكي. إضافة مشبك في الصدر الأيسر لمسة شخصية.</p>\r\n\r\n<ul>\r\n	<li>تناسب مريح. طوق شال.</li>\r\n	<li>أكمام طويلة مع الأصفاد بدوره إلى الوراء. جيب في كل الورك.</li>\r\n	<li>حزام التعادل الذاتي في وسطه.</li>\r\n	<li>100٪ القطن التركي. آلة قابل للغسل. مستورد.</li>\r\n	<li>الصغيرة: 47 &quot;الظهر طول الجسم؛ 44&quot; الصدر؛ 24 &quot;طول الأكمام.</li>\r\n	<li>متوسط: 48 &quot;الظهر طول الجسم؛ 46&quot; الصدر؛ 24&frac12; &quot;طول الأكمام.</li>\r\n	<li>كبير: 49 &quot;الظهر طول الجسم؛ 49&quot; الصدر؛ 25&frac12; &quot;طول الأكمام.</li>\r\n	<li>يرجى ملاحظة أن العناصر الشخصية غير قابلة للإرجاع. سيتم إضافة 5 $ تهمة مونوغرامينغ إلى سعر التجزئة.</li>\r\n</ul>\r\n', NULL, 0),
(56, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and a 19&quot; back body length.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands.</li>\r\n	<li>Chenille-and-felt &quot;Polo RL Athl.&quot; patch at the left chest. Chain-stitched &quot;RL Athl. Division #5 New York&quot; embroidery at the right chest.</li>\r\n	<li>Chain-stitched &quot;New York 1967 Athletics&quot; embroidery at the center back.</li>\r\n	<li>Tennis tail. &quot;Polo Ralph Lauren MCMLXVII&quot; patch at the front right hem.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(56, 2, 'HET MESH POLO OVERHEMD VAN DE KATOEN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Maat 4 / 4T heeft een 17&frac34; &quot;voorlichaamlengte en een 19&quot; ruglengte.</li>\r\n	<li>Gestreepte geribde polosband. Dubbele knoop.</li>\r\n	<li>Korte mouwen met gestreepte geribde armbanden.</li>\r\n	<li>Chenille-en-vilt &quot;Polo RL Athl.&quot; Pleister aan de linker borst. Chain-stitched &quot;RL Athl. Division # 5 New York&quot; borduurwerk aan de rechterborst.</li>\r\n	<li>Chain-stitched &quot;New York 1967 Atletiek&quot; borduurwerk in het midden achter.</li>\r\n	<li>Tennis staart. &quot;Polo Ralph Lauren MCMLXVII&quot; pleister aan de voorkant rechtshemel.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(56, 4, 'قطن ميش بولو شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم 4 / 4T لديه 17&frac34; &quot;طول الجسم الأمامي و 19&quot; طول الجسم الخلفي.</li>\r\n	<li>مخطط، بولو، طوق. اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة مخطط.</li>\r\n	<li>الشنيل وشعر &quot;بولو رل أثل&quot;. التصحيح في الصدر الأيسر. سلسلة مخيط &quot;رل أثل شعبة # 5 نيويورك&quot; التطريز في الصدر الأيمن.</li>\r\n	<li>سلسلة مخيط &quot;نيويورك 1967 ألعاب القوى&quot; التطريز في وسط الظهر.</li>\r\n	<li>ذيل التنس. &quot;بولو رالف لورين مكملكسفي&quot; التصحيح في الجبهة اليمنى تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(57, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and an 18&frac12;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar.</li>\r\n	<li>Two-button placket.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(57, 2, 'HET MESH POLO OVERHEMD VAN DE KATOEN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Maat 4 / 4T heeft een 17&frac34; &quot;voorlichaamlengte en een 18&frac12;&quot; ruglengte.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Gestreept polosband.</li>\r\n	<li>Dubbele knoop.</li>\r\n	<li>Korte mouwen met geribbelde armbanden.</li>\r\n	<li>Tennis staart.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(57, 4, 'قطن ميش بولو شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم 4 / 4T لديه 17&frac34; &quot;طول الجسم الأمامي و 18 &frac12;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو.</li>\r\n	<li>اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة.</li>\r\n	<li>ذيل التنس.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(58, 1, 'BANNER COTTON MESH POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands. Chenille &quot;67&quot; patch at the right sleeve.</li>\r\n	<li>&quot;Academy PRL Athl.&quot; crackle-print and a &quot;67&quot; shield patch at the center back.</li>\r\n	<li>Even vented hem.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(58, 2, 'BANNER COTTON MESH POLO', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een lengte van 23&frac34; &quot;.</li>\r\n	<li>Handtekening Geborduurde Grote Pony aan de linker borst.</li>\r\n	<li>Gestreepte geribde polosband. Dubbele knoop.</li>\r\n	<li>Korte mouwen met gestreepte geribde armbanden. Chenille &quot;67&quot; pleister aan de rechtermouw.</li>\r\n	<li>&quot;Academie PRL Athl.&quot; Crackle-print en een &quot;67&quot; schild patch in het midden achter.</li>\r\n	<li>Zelfs geventileerde zoom.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(58, 4, 'بانر القطن ميش بولو', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac34; &quot;طول الجسم.</li>\r\n	<li>إمبروديرد ضخم، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مخطط، بولو، طوق. اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة مخطط. الشنيل &quot;67&quot; التصحيح في كم الصحيح.</li>\r\n	<li>&quot;أكاديمية برل أثل&quot;. الكراكلة الطباعة و &quot;67&quot; درع التصحيح في وسط الظهر.</li>\r\n	<li>حتى تنفيس تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(59, 1, 'COTTON MESH LONG-SLEEVE POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; front body length, a 25&frac14;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Two-button placket.</li>\r\n	<li>Long sleeves with ribbed cuffs. Twill &quot;3&quot; patch at the right sleeve.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(59, 2, 'KATOEN MESH LONG-SLEEVE POLO', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 23&frac34; &quot;voorlichaamlengte, een 25&frac14;&quot; achterlengte en een 28&frac12; &quot;mouwlengte. Mouwlengte is afkomstig van het midden van de nek.</li>\r\n	<li>Handtekening Geborduurde Grote Pony aan de linker borst.</li>\r\n	<li>Gestreept polosband. Dubbele knoop.</li>\r\n	<li>Lange mouwen met geribde manchetten. Twill &quot;3&quot; pleister aan de rechtermouw.</li>\r\n	<li>Tennis staart.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(59, 4, 'القطن شبكة طويلة الأكمام بولو', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac34; &quot;طول الجسم الأمامي، و 25 &frac14;&quot; طول الجسم الخلفي، وطول الأكمام 28 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>إمبروديرد ضخم، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو. اثنين زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد مضلع. حك &quot;3&quot; التصحيح في كم الصحيح.</li>\r\n	<li>ذيل التنس.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(60, 1, 'PLAID COTTON TWILL WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>&quot;Polo&quot; label at the left pocket.</li>\r\n	<li>Point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(60, 2, 'PLAID COTTON TWILL WORKSHIRT', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 24&frac12; &quot;voorlichaamlengte, een 24&frac34;&quot; achterlengte en een 28&frac12; &quot;mouwlengte. Mouwlengte is van het midden van de nek afgenomen.</li>\r\n	<li>Polo-label aan de linker zak.</li>\r\n	<li>Punt kraag.</li>\r\n	<li>Knoopknoop.</li>\r\n	<li>Lange mouwen met knoopbeugels.</li>\r\n	<li>Twee borstzakken met zakken.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(60, 4, 'بليد القطن تويل وركشيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي، و 24 &frac34;&quot; طول الجسم الخلفي، وطول الأكمام 28 .. طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>&quot;بولو&quot; التسمية في الجيب الأيسر.</li>\r\n	<li>طوق نقطة.</li>\r\n	<li>زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(61, 1, 'COTTON OXFORD SPORT SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Back body length and sleeve length are taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(61, 2, 'HET OVERHEMD VAN DE SPORT OXFORD SPORT', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 24&frac12; &quot;voorlichaamlengte, een lengte van 24&frac34;&quot; achterlichaam en een 28&frac12; &quot;mouwlengte. Achterlengte en mouwlengte worden van het midden van de nek afgenomen.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Button-down punt kraag.</li>\r\n	<li>Knoopknoop.</li>\r\n	<li>Lange mouwen met knoopbeugels.</li>\r\n	<li>Box-geplooide rug juk.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(61, 4, 'كوتن أوكسفورد سبورت شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم متوسط لديه 24&frac12; &quot;طول الجسم الأمامي، و 24 &frac34;&quot; طول الجسم الخلفي، و 28&frac12; &quot;طول الأكمام.أخذ طول الجسم وطول الأكمام تؤخذ من وسط الظهر من الرقبة.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق.</li>\r\n	<li>زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(62, 1, 'COTTON MESH WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac12;&quot; front body length, a 25&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Stenciled &quot;PRL67&quot; printed at the left chest.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(62, 2, 'HET MESH VAN DE KATOEN MESH', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 23&frac12; &quot;voorlichaamlengte, een 25&quot; ruglengte en een 28&frac12; &quot;mouwlengte. Mouwlengte is van het midden van de nek afgenomen.</li>\r\n	<li>Punt kraag. Knoopknoop.</li>\r\n	<li>Lange mouwen met knoopbeugels.</li>\r\n	<li>Twee borstzakken met zakken.</li>\r\n	<li>Stenciled &quot;PRL67&quot; gedrukt aan de linker borst.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(62, 4, 'قطن ميش وركشيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac12; &quot;طول الجسم الأمامي، 25&quot; طول الجسم الخلفي، وطول الأكمام 28 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>ستنسيلد &quot;PRL67&quot; المطبوعة في صدره الأيسر.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(63, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(63, 2, 'HET STRIPEDE OVERHEMD VAN DE KATOEN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 24&frac12; &quot;voorlichaamlengte en een 24&frac34;&quot; achterlengte.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Button-down punt kraag. Knoopknoop.</li>\r\n	<li>Korte mouwen.</li>\r\n	<li>Box-geplooide rug juk.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(63, 4, 'ستريبد، قطن، قميص', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي و 24 &frac34;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(64, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(64, 2, 'HET STRIPEDE OVERHEMD VAN DE KATOEN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 24&frac12; &quot;voorlichaamlengte en een 24&frac34;&quot; achterlengte.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Button-down punt kraag. Knoopknoop.</li>\r\n	<li>Korte mouwen.</li>\r\n	<li>Box-geplooide rug juk.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(64, 4, 'ستريبد، قطن، قميص', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي و 24 &frac34;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(65, 1, 'SLIM MOTT-WASH JEAN', '<ul>\r\n	<li>Belted waistband. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Fading down the leg with creased markings at the thigh and the knee.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n	<li>Belt is not included.</li>\r\n	<li>Size 12 has an average inseam of 27&frac12;&quot;.</li>\r\n</ul>\r\n', NULL, 0),
(65, 2, 'SLIM MOTT-WASH JEAN', '<ul>\r\n	<li>Gekantelde tailleband. Zip vlieg met onze handtekening schacht sluiting.</li>\r\n	<li>Vijf-pocket styling.</li>\r\n	<li>Het benen verdwijnt met gekleurde markeringen aan de dij en de knie.</li>\r\n	<li>100% katoen. Mag in de wasmachine. Ge&iuml;mporteerd.</li>\r\n	<li>Riem is niet inbegrepen.</li>\r\n	<li>Maat 12 heeft een gemiddelde inseam van 27&frac12; &quot;.</li>\r\n</ul>\r\n', NULL, 0),
(65, 4, 'سليم موت-واش جين', '<ul>\r\n	<li>حزام مربوط. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.</li>\r\n	<li>خمسة جيب التصميم.</li>\r\n	<li>يتلاشى الساق مع علامات مجعدة في الفخذ والركبة.</li>\r\n	<li>100٪ قطن. آلة قابل للغسل. مستورد.</li>\r\n	<li>الحزام غير مشمول.</li>\r\n	<li>حجم 12 لديه متوسط إنزيم من 27&frac12; &quot;.</li>\r\n</ul>\r\n', NULL, 0),
(66, 1, 'ELDRIDGE STRETCH SKINNY JEAN', '<ul>\r\n	<li>99% cotton, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Skinny Fit.</li>\r\n	<li>Size 12 has a 7&frac14;&quot; rise, a 26&frac12;&quot; inseam, and a 12&frac14;&quot; leg opening.</li>\r\n	<li>Belt loops. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling with signature metal rivets.</li>\r\n	<li>&quot;Polo&quot; label at the right coin pocket.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; faux-suede patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(66, 2, 'ELDRIDGE STRETCH SKINNY JEAN', '<ul>\r\n	<li>99% katoen, 1% elastaan.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Strakke pasvorm.</li>\r\n	<li>Maat 12 heeft een 7&frac14; &quot;stijging, een 26&frac12;&quot; inseam en een opening van 12&frac14; &quot;.</li>\r\n	<li>Riemlussen. Zip vlieg met onze handtekening schacht sluiting.</li>\r\n	<li>Vijf-pocket styling met handtekening metalen klinknagels.</li>\r\n	<li>Polo-label aan de rechter muntzak.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; faux-suede pleister aan de rechter rechter taille.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(66, 4, 'إلدريدج ستريتش سكيني جين', '<ul>\r\n	<li>قطن 99٪، إلاستين 1٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>نحيل صالح.</li>\r\n	<li>حجم 12 لديه ارتفاع 7&frac14; &quot;، إنزيم 26&frac12;&quot;، وفتح الساق 12&frac14; &quot;.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.</li>\r\n	<li>تصميم خمسة جيب مع المسامير المعدنية التوقيع.</li>\r\n	<li>&quot;بولو&quot; التسمية في جيب عملة الصحيح.</li>\r\n	<li>&quot;بولو رالف لورين&quot; التصحيح فو الجلد المدبوغ في الخصر الخلفي الخلفي.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0);
INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(67, 1, 'POLO I WOOL TWILL SUIT', '<ul>\r\n	<li>Jacket features notched lapels, a two-button silhouette and long sleeves with a four-button detail at each cuff.</li>\r\n	<li>Jacket also features an angled welt pocket at the left chest, interior besom pockets at the left and right chest, flapped besom pockets at the waist and a vented back hem. Jacket is fully lined.</li>\r\n	<li>Trouser features belt loops, a zip fly with a hook-and-bar closure, a finished waistband with interior suspender buttons and a flat front.</li>\r\n	<li>Trouser also features side on-seam pockets, a button-and-loop besom pocket at the back left and a buttoned besom pocket at the back right. Unfinished hems ready for custom-tailoring.</li>\r\n	<li>Jacket and trouser: 100% wool. Jacket lining: 100% viscose. Dry clean. Made in Italy.</li>\r\n	<li>Update this classic style with a bold bow tie and cool sneakers.</li>\r\n</ul>\r\n', NULL, 0),
(67, 2, 'POLO IK WOL TWILL SUIT', '<ul>\r\n	<li>Jacket is voorzien van gesneden lapels, een twee-knop silhouet en lange mouwen met een vier-knop detail bij elke manchet.</li>\r\n	<li>De jas heeft ook een hoekige zakje aan de linker borst, de binnenzakken aan de linker- en rechterkist, de knopen aan de taille en een geventileerde achterkant. Jas is volledig gevoerd.</li>\r\n	<li>Broeken heeft riemlussen, een ritssluiting met een hek-en-sluiting, een afgewerkte tailleband met binnenknopen en een platte voorkant.</li>\r\n	<li>De broek heeft ook een zijkantzakje, een knoop-en-luszakje achterin en een knoopzakje achterin rechts. Onvoltooide honden klaar voor maatwerk.</li>\r\n	<li>Jas en broek: 100% wol. Jasje voering: 100% viscose. Droogkuis. Gemaakt in Itali&euml;.</li>\r\n	<li>Update deze klassieke stijl met een dikke strik en koele sneakers.</li>\r\n</ul>\r\n', NULL, 0),
(67, 4, 'بولو أنا الصوف حك تناسب', '<ul>\r\n	<li>سترة يتميز التلبيب محفورة، صورة ظلية على زرين وأكمام طويلة مع تفاصيل أربعة زر في كل صفعة.</li>\r\n	<li>كما تحتوي السترة أيضا على جيب مائل في الصدر الأيسر، وجيوب داخلية من الجيب في الصدر الأيمن واليسار، وجيوب ذات حواف في الخصر، وتنحنح الظهر. سترة واصطف تماما.</li>\r\n	<li>بنطلون يتميز الحزام الحلقات، الرمز البريدي يطير مع هوك و بار إغلاق، حزام الانتهاء مع أزرار داخلية الحمالة و جبهة مسطحة.</li>\r\n	<li>كما يتميز بنطلون جيوب جانبية على الجيب، وجيب بيزوم وحلقة في الخلف على اليسار، وجيب بيزوم زرر في الجانب الخلفي الأيمن. لم تنته هويمز جاهزة للخياطة-- مخصص.</li>\r\n	<li>سترة وبنطلون: صوف 100٪. سترة بطانة: 100٪ فسكوزي. تنظيف جاف. صنع في ايطاليا.</li>\r\n	<li>تحديث هذا النمط الكلاسيكي مع التعادل الجريئة القوس وأحذية رياضية باردة.</li>\r\n</ul>\r\n', NULL, 0),
(68, 1, 'BELTED STRETCH COTTON CHINO', '<ul>\r\n	<li>Pant: 98% cotton, 2% elastane. Belt: 100% viscose.</li>\r\n	<li>Pant: machine washable.</li>\r\n	<li>Pant: Size 12 has a 7&frac14;&quot; rise, a 27&frac12;&quot; inseam, and a 12&frac34;&quot; leg-opening circumference.</li>\r\n	<li>Belt: 1&frac14;&quot; wide.</li>\r\n	<li>Pant: belt loops; zip fly with a buttoned closure; side on-seam pockets; coin pocket; two back buttoned pockets; &quot;Polo&quot; label at the back right pocket.</li>\r\n	<li>Belt: silver-tone double-D-ring closure.</li>\r\n	<li>Imported.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n</ul>\r\n', NULL, 0),
(68, 2, 'GEKTTE STRETCHE KINDER CHINO', '<ul>\r\n	<li>Pant: 98% katoen, 2% elastaan. Riem: 100% viscose.</li>\r\n	<li>Pant: machine wasbaar.</li>\r\n	<li>Pant: Maat 12 heeft een 7&frac14; &quot;stijging, een 27&frac12;&quot; inseam, en een 12&frac34; &quot;opening van de opening.</li>\r\n	<li>Riem: 1&frac14; &quot;breed.</li>\r\n	<li>Pant: riem lussen; Ritssluiting met een knoopsluiting; Zijzakken op de zijkant; Muntzak; Twee achterknopen zakken; Polo-label in de rechter achterzak.</li>\r\n	<li>Riem: Zilverkleurige dubbele D-ring sluiting.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n	<li>Vanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.</li>\r\n</ul>\r\n', NULL, 0),
(68, 4, 'محكم تمتد القطن تشينو', '<ul>\r\n	<li>بانت: 98٪ قطن، 2٪ إلاستان. حزام: 100٪ فسكوزي.</li>\r\n	<li>بانت: آلة قابل للغسل.</li>\r\n	<li>بانت: حجم 12 لديه ارتفاع 7&frac14;، و 27&frac12; &quot;إنزيم، و 12&quot; &quot;فتح الساق فتح.</li>\r\n	<li>حزام: 1&frac14; &quot;واسعة.</li>\r\n	<li>بانت: بيلت لوبس؛ الرمز البريدي يطير مع إغلاق زر. الجانب جيوب على التماس. جيب عملة؛ اثنين من جيوب زرر الظهر. &quot;بولو&quot; التسمية في الجيب الأيمن الخلفي.</li>\r\n	<li>حزام: الفضة لهجة مزدوجة-- d-- إغلاق حلقة.</li>\r\n	<li>مستورد.</li>\r\n	<li>نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.</li>\r\n</ul>\r\n', NULL, 0),
(69, 1, 'BATTEN CANVAS EZ BOAT SHOE', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Slip-on styling with a hook-and-loop strap closure.</li>\r\n	<li>Deck-shoe laces thread through metal grommets at the sides.</li>\r\n	<li>Rubber &quot;Polo&quot; tag at the outer side and the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Signature embroidered pony at the strap.</li>\r\n	<li>Cotton.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(69, 2, 'BATTEN CANVAS EZ BOAT SHOE', '<ul>\r\n	<li>Afgeronde teen.</li>\r\n	<li>Slip-on styling met een sluiting van de haakband.</li>\r\n	<li>Dekenschoenen veters aan de zijkanten door middel van metalen grommets.</li>\r\n	<li>Rubber &quot;Polo&quot; tag aan de buitenkant en de hiel.</li>\r\n	<li>Gewatteerde binnenzool.</li>\r\n	<li>Treaded rubberen zool.</li>\r\n	<li>Handtekening geborduurde pony bij de band.</li>\r\n	<li>Katoen.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(69, 4, 'باتن قماش إز قارب حذاء', '<ul>\r\n	<li>اصبع القدم مدورة.</li>\r\n	<li>الانزلاق على التصميم مع ربط حزام وربط حلقة.</li>\r\n	<li>سطح الأحذية الأربطة الصفحات من خلال الحلقات المعدنية على الجانبين.</li>\r\n	<li>المطاط &quot;بولو&quot; العلامة في الجانب الخارجي وكعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، ستراب.</li>\r\n	<li>القطن.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(70, 1, 'PROPELL II SNEAKER', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Hook-and-loop strap closure at the vamp.</li>\r\n	<li>&quot;Polo&quot; printed at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Printed signature pony at the strap.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(70, 2, 'PROPELL II SNEAKER', '<ul>\r\n	<li>Afgeronde teen.</li>\r\n	<li>Hook-and-loop bandsluiting bij de vamp.</li>\r\n	<li>&quot;Polo&quot; gedrukt bij de hiel.</li>\r\n	<li>Gewatteerde binnenzool.</li>\r\n	<li>Treaded rubberen zool.</li>\r\n	<li>Gedrukte handtekening pony bij de band.</li>\r\n	<li>Kunstmatige materialen.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(70, 4, 'بروبيل الثاني سناكر', '<ul>\r\n	<li>اصبع القدم مدورة.</li>\r\n	<li>حزام هوك وحلقة إغلاق في الرقعة.</li>\r\n	<li>&quot;بولو&quot; المطبوعة في كعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>توقيع المهر توقيع على حزام.</li>\r\n	<li>مواد من صنع الإنسان.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(71, 1, 'BANKS SANDAL', '<ul>\r\n	<li>Open toe. Hook-and-loop closure at the vamp.</li>\r\n	<li>Hook-and-loop strap closure at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Screen-printed signature pony at the vamp.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(71, 2, 'BANKEN SANDAL', '<ul>\r\n	<li>Open teen. Hook-and-loop sluiting bij de vamp.</li>\r\n	<li>Hook-and-loop bandsluiting bij de hiel.</li>\r\n	<li>Gewatteerde binnenzool.</li>\r\n	<li>Treaded rubberen zool.</li>\r\n	<li>Scherm-gedrukte handtekening pony bij de vamp.</li>\r\n	<li>Kunstmatige materialen.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(71, 4, 'البنوك ساندال', '<ul>\r\n	<li>فتح اصبع القدم. إغلاق هوك وحلقة في الرقعة.</li>\r\n	<li>حزام هوك وحلقة إغلاق في كعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>يطبع المهر توقيع الشاشة على الرقعة.</li>\r\n	<li>مواد من صنع الإنسان.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(72, 1, 'MADRAS COTTON SHIRTDRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length and a 27&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Comes with a self-belt with a double-D-ring closure. Shirred waist.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(72, 2, 'MADRAS SHIRTDRESS VAN DE KATOEN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Fit-and-flare silhouet.</li>\r\n	<li>Maat 10 heeft een 30 &quot;voorlichaamlengte en een 27&quot; mouwlengte. Mouwlengte is van het midden van de nek afgenomen.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Punt kraag. Knoopknoop.</li>\r\n	<li>Lange mouwen met knoopbeugels.</li>\r\n	<li>Wordt geleverd met een zelfgordel met dubbele D-ring sluiting. Shirred taille.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(72, 4, 'مادراس كوتن شيرتدريس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صالح و مضيئة خيال.</li>\r\n	<li>حجم 10 لديه 30 &quot;الجبهة طول الجسم و 27&quot; كم طول. يؤخذ طول الأكمام من وسط الظهر من الرقبة.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>يأتي مع حزام الذاتي مع إغلاق مزدوج D- حلقة. شيريد الخصر.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(73, 1, 'COTTON CHINO BELTED SHIRTDRESS', '<ul>\r\n	<li>Dress: 100% cotton. Belt: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Short sleeves with buttoned cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Shirred waist with a removable striped belt.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(73, 2, 'KATOEN CHINO BELTED SHIRTDRESS', '<ul>\r\n	<li>Jurk: 100% katoen. Riem: 100% polyester.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Fit-and-flare silhouet.</li>\r\n	<li>Maat 10 heeft een 30 &quot;voorlichaamlengte.</li>\r\n	<li>Punt kraag. Knoopknoop.</li>\r\n	<li>Korte mouwen met knoopmouwen.</li>\r\n	<li>Twee borstzakken met zakken.</li>\r\n	<li>Shirred taille met een verwijderbare gestreepte riem.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(73, 4, 'القطن تشينو حزام محكم', '<ul>\r\n	<li>اللباس: 100٪ من القطن. حزام: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صالح و مضيئة خيال.</li>\r\n	<li>حجم 10 لديه 30 &quot;الجبهة طول الجسم.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع الأصفاد زر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>شيريد الخصر مع حزام مخطط قابل للإزالة.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(74, 1, 'STRIPED OFF-THE-SHOULDER DRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Off-the-shoulder silhouette.</li>\r\n	<li>Size 10 has a 26&frac14;&quot; front body length.</li>\r\n	<li>Smocked off-the-shoulder neckline with adjustable shoulder straps.</li>\r\n	<li>Short raglan sleeves.</li>\r\n	<li>Two side on-seam pockets at the hips.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(74, 2, 'STRIPED OFF-THE-SHOULDER DRESS', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Off-the-shoulder silhouet.</li>\r\n	<li>Maat 10 heeft een 26&frac14; &quot;voorlichaamlengte.</li>\r\n	<li>Smocked off-the-shoulder neckline met verstelbare schouderriemjes.</li>\r\n	<li>Korte raglan mouwen.</li>\r\n	<li>Twee zijzakken op de heupen.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(74, 4, 'ستريبد أوف-ذي-شولدر دريس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صورة ظلية على الكتف.</li>\r\n	<li>حجم 10 لديه 26&frac14; &quot;طول الجسم الأمامي.</li>\r\n	<li>سموكيد العنق على الكتف مع الأشرطة الكتف قابل للتعديل.</li>\r\n	<li>قصيرة الأكمام راجلان.</li>\r\n	<li>اثنين من الجانب على جيوب التماس في الوركين.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(75, 1, 'BUTTON-FRONT DENIM SKIRT', '<ul>\r\n	<li>96% cotton, 3% polyester, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Slight A-line silhouette.</li>\r\n	<li>Size 10 has an 11&quot; front body length and a 12&quot; back body length.</li>\r\n	<li>Belt loops. Buttoned front. Signature shank closures</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Faux-suede &quot;Polo&quot; patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(75, 2, 'BUTTON-FRONT DENIM SKIRT', '<ul>\r\n	<li>96% katoen, 3% polyester, 1% elastaan.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Licht A-lijn silhouet.</li>\r\n	<li>Maat 10 heeft een 11 &quot;voorlichaamlengte en een 12&quot; ruglengte.</li>\r\n	<li>Riemlussen. Knoop voorzijde. Handtekening schacht sluitingen</li>\r\n	<li>Vijf-pocket styling.</li>\r\n	<li>Faux-suede &quot;Polo&quot; pleister aan de rechter rechter taille.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(75, 4, 'بوتون-فرونت دينيم تنورة', '<ul>\r\n	<li>٪ 96 قطن، 3٪ بوليستر، 1٪ إلاستان.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>طفيف ألف خط صورة ظلية.</li>\r\n	<li>حجم 10 لديه 11 &quot;طول الجسم الأمامي و 12&quot; طول الجسم الخلفي.</li>\r\n	<li>حلقات الحزام. جبهة أمامية. إغلاق عرقوب التوقيع</li>\r\n	<li>خمسة جيب التصميم.</li>\r\n	<li>فو الجلد المدبوغ &quot;بولو&quot; التصحيح في الخصر الخلفي الخلفي.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(76, 1, 'FLORAL SKIRT', '<ul>\r\n	<li>Shell: 100% viscose. Lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size medium has a 13&frac12;&quot; front body length and a 14&quot; back body length.</li>\r\n	<li>Concealed left-side-seam zipper.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(76, 2, 'BLOEMEN SKIRT', '<ul>\r\n	<li>Shell: 100% viscose. Voering: 100% polyester.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>A-lijn silhouet.</li>\r\n	<li>Grootte medium heeft een 13&frac12; &quot;voorlichaamlengte en een 14&quot; ruglengte.</li>\r\n	<li>Versteekte naa-rits rits.</li>\r\n	<li>Volledig gevoerd.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(76, 4, 'تنورة الأزهار', '<ul>\r\n	<li>شل: 100٪ فسكوزي. البطانة: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>ألف خط صورة ظلية.</li>\r\n	<li>حجم المتوسطة لديه 13&frac12; &quot;طول الجسم الأمامي و 14&quot; طول الجسم الخلفي.</li>\r\n	<li>مخفي سحاب التماس الجانب الأيسر.</li>\r\n	<li>مكتمل الصف.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(77, 1, 'PLEATED MADRAS SKIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size 10 has a 12&frac34;&quot; length.</li>\r\n	<li>Two buckled self-straps at the left side. Buttoned and hook-and-bar closures at the interior waist.</li>\r\n	<li>Pleated sides and back.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(77, 2, 'GESLOTEN MADRAS SKIRT', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>A-lijn silhouet.</li>\r\n	<li>Maat 10 heeft een 12&frac34; &quot;lengte.</li>\r\n	<li>Twee gebogen zelfbanden aan de linkerkant. Knoop- en haaksloten bij de binnenkant van de taille.</li>\r\n	<li>Geplooide zijkanten en rug.</li>\r\n	<li>Vanwege de natuurlijke eigenschappen van dit materiaal, kan de kleur wrijven op stoffen en stoffering.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(77, 4, 'مطوي تنورة مدراس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>ألف خط صورة ظلية.</li>\r\n	<li>حجم 10 لديه 12&frac34; &quot;طول.</li>\r\n	<li>اثنين من الأشرطة الذاتي مشبك في الجانب الأيسر. إغلاق وإغلاق وربط في الخصر الداخلي.</li>\r\n	<li>الجانبين مطوي والظهر.</li>\r\n	<li>نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(78, 1, 'CABLE-KNIT CASHMERE SWEATER', '<ul>\r\n	<li>100% cashmere.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&frac12;&quot; body length and a 20&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Imported. Italian cashmere.</li>\r\n</ul>\r\n', NULL, 0),
(78, 2, 'CABLE-KNIT CASHMERE SWEATER', '<ul>\r\n	<li>100% kasjmier.</li>\r\n	<li>Handenwassen.</li>\r\n	<li>Grootte medium heeft een 18&frac12; &quot;lichaamslengte en een 20&quot; mouwlengte.</li>\r\n	<li>Rib-knit crewneck.</li>\r\n	<li>Lange mouwen met ribboordmouwen.</li>\r\n	<li>Rib-gebreide zoom.</li>\r\n	<li>Ge&iuml;mporteerd. Italiaanse kasjmier.</li>\r\n</ul>\r\n', NULL, 0),
(78, 4, 'كابل-كنيت الكشمير', '<ul>\r\n	<li>100٪ الكشمير.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>حجم المتوسطة لديها 18 &quot;طول الجسم و 20&quot; طول الأكمام.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>أكمام طويلة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>مستورد. الكشمير الإيطالي.</li>\r\n</ul>\r\n', NULL, 0),
(79, 1, 'FAIR ISLE HOODED SWEATER', '<ul>\r\n	<li>Shell: 27% wool, 26% cotton, 23% viscose, 22% nylon, 2% cashmere. Lining: 100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Straight fit.</li>\r\n	<li>Size medium has a 19&frac14;&quot; body length and an 18&frac12;&quot; sleeve length. Sleeve length changes 2&quot; between sizes.</li>\r\n	<li>Hood. Three toggle-and-loop closures at the center front.</li>\r\n	<li>Long sleeves with ribbed cuffs.</li>\r\n	<li>Two front waist patch pockets.</li>\r\n	<li>Fully lined. Ribbed hem.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(79, 2, 'FAIR ISLE HOODED SWEATER', '<ul>\r\n	<li>شل: صوف 27٪، قطن 26٪، فسكوزي 23٪، نايلون 22٪، كشمير 2٪. البطانة: 100٪ القطن.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>خطوات ثابتة.</li>\r\n	<li>حجم المتوسطة لديها 19 &quot;طول الجسم و 18&frac12;&quot; طول الأكمام. طول طول التغييرات 2 &quot;بين الأحجام.</li>\r\n	<li>غطاء محرك السيارة. ثلاثة إغلاق تبديل و حلقة في الجبهة الوسط.</li>\r\n	<li>أكمام طويلة مع الأصفاد مضلع.</li>\r\n	<li>اثنين الجبهة الخصر التصحيح جيوب.</li>\r\n	<li>مكتمل الصف. مضلع تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(79, 4, 'عسل عسلي هودد البلوز', '<ul>\r\n	<li>شل: صوف 27٪، قطن 26٪، فسكوزي 23٪، نايلون 22٪، كشمير 2٪. البطانة: 100٪ القطن.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>خطوات ثابتة.</li>\r\n	<li>حجم المتوسطة لديها 19 &quot;طول الجسم و 18&frac12;&quot; طول الأكمام. طول طول التغييرات 2 &quot;بين الأحجام.</li>\r\n	<li>غطاء محرك السيارة. ثلاثة إغلاق تبديل و حلقة في الجبهة الوسط.</li>\r\n	<li>أكمام طويلة مع الأصفاد مضلع.</li>\r\n	<li>اثنين الجبهة الخصر التصحيح جيوب.</li>\r\n	<li>مكتمل الصف. مضلع تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(80, 1, 'FLAG COMBED COTTON SWEATER', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&quot; body length and a 19&frac12;&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck. Buttoned closure at the left shoulder.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Intarsia-knit American flag with hand-embroidered stars and &quot;RL&quot; embroidery at the center front.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Dyed with indigo, which may rub off onto fabrics, leather, and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(80, 2, 'FLAG COMBED COTTON SWEATER', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Handenwassen.</li>\r\n	<li>Grootte medium heeft een 18 &quot;lichaamslengte en een 19&frac12;&quot; mouwlengte.</li>\r\n	<li>Rib-knit crewneck. Knoopsluiting aan de linker schouder.</li>\r\n	<li>Lange mouwen met ribboordmouwen.</li>\r\n	<li>Intarsia-gebreide Amerikaanse vlag met handgeborduurde sterren en &quot;RL&quot; borduurwerk aan het midden.</li>\r\n	<li>Rib-gebreide zoom.</li>\r\n	<li>Gekleurd met indigo, die op stoffen, leer en stoffering kan wrijven.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(80, 4, 'بطة، قطن، البلوز', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>حجم المتوسطة لديها 18 &quot;طول الجسم و 19&frac12;&quot; طول الأكمام.</li>\r\n	<li>الضلع متماسكة. إغلاق زر على الكتف الأيسر.</li>\r\n	<li>أكمام طويلة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>إنتارسيا متماسكة العلم الأمريكي مع اليد-- مطرزة النجوم و &quot;رل&quot; التطريز في وسط الجبهة.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>مصبوغة مع النيلي، والتي قد تفرك على الأقمشة والجلود، والمفروشات.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0),
(81, 1, 'RUFFLED COTTON CARDIGAN', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 17&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Rib-knit crewneck. Buttoned placket.</li>\r\n	<li>Puffed long sleeves with rib-knit cuffs.</li>\r\n	<li>Ruffled hem.</li>\r\n	<li>Imported.</li>\r\n</ul>\r\n', NULL, 0),
(81, 2, 'RUFFLED CARDTON CARDIGAN', '<ul>\r\n	<li>100% katoen.</li>\r\n	<li>Mag in de wasmachine.</li>\r\n	<li>Grootte medium heeft een 17&frac34; &quot;lichaamslengte.</li>\r\n	<li>Handtekening geborduurde pony aan de linker borst.</li>\r\n	<li>Rib-knit crewneck. Knoopknoop.</li>\r\n	<li>Puffed lange mouwen met ribboordmouwen.</li>\r\n	<li>Ruffled hem.</li>\r\n	<li>Ge&iuml;mporteerd.</li>\r\n</ul>\r\n', NULL, 0),
(81, 4, 'روفلد كوتن كارديغان', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 17&frac34; &quot;طول الجسم.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>الضلع متماسكة. زر بلاكيت.</li>\r\n	<li>الأكمام الطويلة منتفخة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>تكدرت تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `htmlcontent` mediumtext COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, 'resources/assets/images/product_images/1502107398.pPOLO2-26314766_alternate1_v360x480.jpg', '', 1),
(2, 1, 'resources/assets/images/product_images/1502107404.pPOLO2-26314766_alternate2_v360x480.jpg', '', 1),
(3, 1, 'resources/assets/images/product_images/1502107411.pPOLO2-26314766_alternate3_v360x480.jpg', '', 1),
(4, 4, 'resources/assets/images/product_images/1502174861.pPOLO2-26314826_alternate1_v360x480.jpg', '', 1),
(5, 4, 'resources/assets/images/product_images/1502174868.pPOLO2-26314826_alternate2_v360x480.jpg', '', 1),
(6, 4, 'resources/assets/images/product_images/1502174874.pPOLO2-26314826_alternate3_v360x480.jpg', '', 1),
(7, 5, 'resources/assets/images/product_images/1502176795.pPOLO2-26316348_alternate1_v360x480.jpg', '', 1),
(8, 5, 'resources/assets/images/product_images/1502176801.pPOLO2-26316348_alternate2_v360x480.jpg', '', 1),
(9, 5, 'resources/assets/images/product_images/1502176808.pPOLO2-26316348_alternate3_v360x480.jpg', '', 1),
(10, 6, 'resources/assets/images/product_images/1502177811.pPOLO2-26314634_alternate1_v360x480.jpg', '', 1),
(11, 6, 'resources/assets/images/product_images/1502177816.pPOLO2-26314634_alternate2_v360x480.jpg', '', 1),
(12, 6, 'resources/assets/images/product_images/1502177823.pPOLO2-26314634_alternate3_v360x480.jpg', '', 1),
(13, 7, 'resources/assets/images/product_images/1502181296.pPOLO2-26008917_alternate1_v360x480.jpg', '', 1),
(14, 7, 'resources/assets/images/product_images/1502181302.pPOLO2-26008917_alternate2_v360x480.jpg', '', 1),
(15, 7, 'resources/assets/images/product_images/1502181310.pPOLO2-26008917_alternate3_v360x480.jpg', '', 1),
(16, 8, 'resources/assets/images/product_images/1502182266.pPOLO2-26008953_alternate1_v360x480.jpg', '', 1),
(17, 8, 'resources/assets/images/product_images/1502182272.pPOLO2-26008953_alternate2_v360x480.jpg', '', 1),
(18, 8, 'resources/assets/images/product_images/1502182279.pPOLO2-26008953_alternate3_v360x480.jpg', '', 1),
(19, 9, 'resources/assets/images/product_images/1502186424.pPOLO2-26008935_alternate1_v360x480.jpg', '', 1),
(21, 9, 'resources/assets/images/product_images/1502186446.pPOLO2-26008935_alternate2_v360x480.jpg', '', 1),
(23, 9, 'resources/assets/images/product_images/1502186468.pPOLO2-26008935_alternate3_v360x480.jpg', '', 1),
(27, 10, 'resources/assets/images/product_images/1502187573.pPOLO2-26315018_alternate1_v360x480.jpg', '', 1),
(28, 10, 'resources/assets/images/product_images/1502187583.pPOLO2-26315018_alternate2_v360x480.jpg', '', 1),
(29, 10, 'resources/assets/images/product_images/1502187596.pPOLO2-26315018_alternate3_v360x480.jpg', '', 1),
(30, 11, 'resources/assets/images/product_images/1502188797.pPOLO2-26317497_alternate1_v360x480.jpg', '', 1),
(31, 11, 'resources/assets/images/product_images/1502188805.pPOLO2-26317497_alternate2_v360x480.jpg', '', 1),
(32, 11, 'resources/assets/images/product_images/1502188814.pPOLO2-26317497_alternate3_v360x480.jpg', '', 1),
(33, 12, 'resources/assets/images/product_images/1502189793.pPOLO2-26316198_alternate1_v360x480.jpg', '', 1),
(34, 12, 'resources/assets/images/product_images/1502189798.pPOLO2-26316198_alternate2_v360x480.jpg', '', 1),
(35, 12, 'resources/assets/images/product_images/1502189805.pPOLO2-26316198_alternate3_v360x480.jpg', '', 1),
(36, 13, 'resources/assets/images/product_images/1502190279.pPOLO2-26315541_alternate1_v360x480.jpg', '', 1),
(37, 13, 'resources/assets/images/product_images/1502190286.pPOLO2-26315541_alternate2_v360x480.jpg', '', 1),
(38, 13, 'resources/assets/images/product_images/1502190295.pPOLO2-26315541_alternate3_v360x480.jpg', '', 1),
(39, 14, 'resources/assets/images/product_images/1502190650.pPOLO2-26404754_standard_v400.jpg', '', 1),
(40, 14, 'resources/assets/images/product_images/1502190660.pPOLO2-26404754_alternate2_v360x480.jpg', '', 1),
(41, 14, 'resources/assets/images/product_images/1502190665.pPOLO2-26404754_alternate3_v360x480.jpg', '', 1),
(42, 15, 'resources/assets/images/product_images/1502191226.pPOLO2-26256326_alternate1_v360x480.jpg', '', 1),
(43, 15, 'resources/assets/images/product_images/1502191230.pPOLO2-26256326_alternate2_v360x480.jpg', '', 1),
(44, 15, 'resources/assets/images/product_images/1502191234.pPOLO2-26256326_alternate3_v360x480.jpg', '', 1),
(45, 16, 'resources/assets/images/product_images/1502191401.pPOLO2-21857429_alternate2_v360x480.jpg', '', 1),
(46, 16, 'resources/assets/images/product_images/1502191406.pPOLO2-21857429_alternate3_v360x480.jpg', '', 1),
(47, 17, 'resources/assets/images/product_images/1502191619.pPOLO2-26256404_alternate1_v360x480.jpg', '', 1),
(48, 17, 'resources/assets/images/product_images/1502191626.pPOLO2-26256404_alternate2_v360x480.jpg', '', 1),
(49, 17, 'resources/assets/images/product_images/1502191633.pPOLO2-26256404_alternate3_v360x480.jpg', '', 1),
(50, 18, 'resources/assets/images/product_images/1502191918.pPOLO2-24354359_alternate1_v360x480.jpg', '', 1),
(51, 18, 'resources/assets/images/product_images/1502191923.pPOLO2-24354359_alternate2_v360x480.jpg', '', 1),
(52, 18, 'resources/assets/images/product_images/1502191929.pPOLO2-24354359_alternate3_v360x480.jpg', '', 1),
(53, 19, 'resources/assets/images/product_images/1502192102.pPOLO2-25784541_alternate1_v360x480.jpg', '', 1),
(54, 19, 'resources/assets/images/product_images/1502192107.pPOLO2-25784541_alternate2_v360x480.jpg', '', 1),
(55, 19, 'resources/assets/images/product_images/1502192112.pPOLO2-25784541_alternate3_v360x480.jpg', '', 1),
(56, 20, 'resources/assets/images/product_images/1502192380.pPOLO2-12181663_alternate1_v360x480.jpg', '', 1),
(57, 21, 'resources/assets/images/product_images/1502193428.pPOLO2-19116009_alternate5_v360x480.jpg', '', 1),
(58, 22, 'resources/assets/images/product_images/1502193592.pPOLO2-24933842_alternate1_v360x480.jpg', '', 1),
(59, 22, 'resources/assets/images/product_images/1502193608.pPOLO2-24933842_alternate2_v360x480.jpg', '', 1),
(60, 23, 'resources/assets/images/product_images/1502193742.pPOLO2-24128696_alternate1_v360x480.jpg', '', 1),
(61, 23, 'resources/assets/images/product_images/1502193755.pPOLO2-24128696_alternate2_v360x480.jpg', '', 1),
(62, 24, 'resources/assets/images/product_images/1502194983.pPOLO2-25759503_standard_v360x480.jpg', '', 1),
(63, 24, 'resources/assets/images/product_images/1502194989.pPOLO2-25759503_alternate3_v360x480.jpg', '', 1),
(65, 25, 'resources/assets/images/product_images/1502195162.pPOLO2-25759495_alternate8_v360x480.jpg', '', 1),
(66, 25, 'resources/assets/images/product_images/1502195167.pPOLO2-25759495_alternate3_v360x480.jpg', '', 1),
(67, 26, 'resources/assets/images/product_images/1502195500.pPOLO2-26059809_standard_v360x480.jpg', '', 1),
(68, 26, 'resources/assets/images/product_images/1502195504.pPOLO2-26059809_alternate3_v360x480.jpg', '', 1),
(69, 27, 'resources/assets/images/product_images/1502195693.pPOLO2-25854363_standard_v360x480.jpg', '', 1),
(70, 27, 'resources/assets/images/product_images/1502195698.pPOLO2-25854363_alternate3_v360x480.jpg', '', 1),
(71, 28, 'resources/assets/images/product_images/1502196955.pPOLO2-25759710_alternate2_v360x480.jpg', '', 1),
(72, 28, 'resources/assets/images/product_images/1502196961.pPOLO2-25759710_alternate1_v360x480.jpg', '', 1),
(73, 29, 'resources/assets/images/product_images/1502198243.pPOLO2-25759868_alternate1_v360x480.jpg', '', 1),
(74, 29, 'resources/assets/images/product_images/1502198249.pPOLO2-25759868_alternate2_v360x480.jpg', '', 1),
(75, 30, 'resources/assets/images/product_images/1502198485.pPOLO2-26060127_alternate1_v360x480.jpg', '', 1),
(76, 30, 'resources/assets/images/product_images/1502198490.pPOLO2-26060127_alternate2_v360x480.jpg', '', 1),
(77, 31, 'resources/assets/images/product_images/1502199708.pPOLO2-26451235_alternate1_v360x480.jpg', '', 1),
(78, 31, 'resources/assets/images/product_images/1502199722.pPOLO2-26451235_alternate2_v360x480.jpg', '', 1),
(79, 32, 'resources/assets/images/product_images/1502200897.pPOLO2-26328182_alternate1_v360x480.jpg', '', 1),
(80, 32, 'resources/assets/images/product_images/1502200911.pPOLO2-26328182_alternate2_v360x480.jpg', '', 1),
(81, 33, 'resources/assets/images/product_images/1502201134.pPOLO2-26328155_alternate1_v360x480.jpg', '', 1),
(82, 33, 'resources/assets/images/product_images/1502201141.pPOLO2-26328155_alternate2_v360x480.jpg', '', 1),
(83, 34, 'resources/assets/images/product_images/1502261155.pPOLO2-25480910_alternate1_v360x480.jpg', '', 1),
(84, 34, 'resources/assets/images/product_images/1502261161.pPOLO2-25480910_standard_v400.jpg', '', 1),
(85, 35, 'resources/assets/images/product_images/1502261680.pPOLO2-26161986_alternate1_v360x480.jpg', '', 1),
(86, 35, 'resources/assets/images/product_images/1502261688.pPOLO2-26161986_alternate2_v360x480.jpg', '', 1),
(87, 36, 'resources/assets/images/product_images/1502262213.pPOLO2-26161985_alternate1_v360x480.jpg', '', 1),
(88, 36, 'resources/assets/images/product_images/1502262221.pPOLO2-26161985_alternate2_v360x480.jpg', '', 1),
(89, 37, 'resources/assets/images/product_images/1502262505.pPOLO2-25480914_alternate1_v360x480.jpg', '', 1),
(90, 37, 'resources/assets/images/product_images/1502262510.pPOLO2-25480914_alternate2_v360x480.jpg', '', 1),
(91, 41, 'resources/assets/images/product_images/1502265623.pPOLO2-22839467_alternate1_v360x480.jpg', '', 1),
(92, 56, 'resources/assets/images/product_images/1502348047.pPOLO2-25995642_alternate1_v360x480.jpg', '', 1),
(93, 58, 'resources/assets/images/product_images/1502349087.pPOLO2-25961612_alternate1_v360x480.jpg', '', 1),
(94, 61, 'resources/assets/images/product_images/1502351686.pPOLO2-25961083_alternate1_v360x480.jpg', '', 1),
(95, 70, 'resources/assets/images/product_images/1502363144.pPOLO2-25464682_alternate1_v360x480.jpg', '', 1),
(96, 70, 'resources/assets/images/product_images/1502363160.pPOLO2-25464682_alternate2_v360x480.jpg', '', 1),
(97, 72, 'resources/assets/images/product_images/1502364167.pPOLO2-26091141_alternate1_v360x480.jpg', '', 1),
(98, 77, 'resources/assets/images/product_images/1502366133.pPOLO2-26091049_alternate1_v360x480.jpg', '', 1),
(99, 78, 'resources/assets/images/product_images/1502366354.pPOLO2-26090785_alternate1_v360x480.jpg', '', 1),
(100, 79, 'resources/assets/images/product_images/1502366470.pPOLO2-26090829_alternate1_v360x480.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories_id` int(100) NOT NULL,
  `session_regenerate_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`, `categories_id`, `session_regenerate_id`) VALUES
(1, 1, 'Colors', 0, '1502106343'),
(2, 2, 'kleuren', 0, '1502106343'),
(3, 4, 'الألوان', 0, '1502106343'),
(4, 1, 'Size', 0, '1502106711'),
(5, 2, 'Grootte', 0, '1502106711'),
(6, 4, 'بحجم', 0, '1502106711'),
(7, 1, 'Waist', 0, '1502187895'),
(8, 2, 'Taille', 0, '1502187895'),
(9, 4, 'وسط', 0, '1502187895'),
(10, 1, 'Length', 0, '1502187939'),
(11, 2, 'Lengte', 0, '1502187939'),
(12, 4, 'الطول', 0, '1502187939');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(1, 1, 'Brown'),
(2, 1, 'Cream'),
(3, 1, 'Blue'),
(4, 1, 'Multi'),
(5, 1, 'Black'),
(6, 1, 'Grey'),
(7, 1, 'White'),
(8, 1, 'Purple'),
(9, 1, 'Navy'),
(10, 4, 'بنى'),
(11, 4, 'كريم'),
(12, 4, 'أزرق'),
(13, 4, 'متعدد'),
(14, 4, 'أسود'),
(15, 4, 'اللون الرمادي'),
(16, 4, 'أبيض'),
(17, 4, 'أرجواني'),
(18, 4, 'القوات البحرية'),
(20, 2, 'Bruin'),
(21, 2, 'Room'),
(22, 2, 'Blauw'),
(23, 2, 'Multi'),
(24, 2, 'Zwart'),
(25, 2, 'Grijs'),
(26, 2, 'Wit'),
(27, 2, 'Purper'),
(28, 2, 'Marine'),
(29, 1, 'Small'),
(30, 2, 'Klein'),
(31, 4, 'صغير'),
(32, 1, 'Medium'),
(33, 4, 'متوسط'),
(34, 2, 'Medium'),
(35, 1, 'Large'),
(36, 2, 'Groot'),
(37, 4, 'كبير'),
(38, 1, 'Extra Large'),
(39, 4, 'كبير جدا'),
(40, 2, 'Extra groot'),
(41, 1, '28W'),
(42, 1, '30W'),
(43, 1, '32W'),
(44, 1, '34W'),
(45, 1, '36W'),
(46, 1, '38W'),
(47, 1, '40W'),
(48, 1, '42W'),
(49, 2, '28W'),
(50, 2, '30W'),
(51, 2, '32W'),
(52, 2, '34W'),
(53, 2, '36W'),
(54, 2, '38w'),
(55, 2, '40W'),
(56, 2, '42W'),
(57, 4, '28W'),
(58, 4, '30W'),
(59, 4, '32W'),
(60, 4, '34w'),
(61, 4, '36W'),
(62, 4, '38W'),
(63, 4, '40W'),
(64, 4, '42W'),
(65, 1, '30L'),
(66, 1, '32L'),
(67, 1, '34L'),
(68, 2, '30L'),
(69, 2, '32L'),
(70, 2, '34L'),
(71, 4, '30L'),
(72, 4, '32L'),
(73, 4, '34L'),
(74, 1, '7D'),
(75, 1, '8D'),
(76, 1, '8.5D'),
(77, 1, '9D'),
(78, 2, '7D'),
(79, 2, '8D'),
(80, 2, '8.5D'),
(81, 2, '9D'),
(82, 4, '7D'),
(83, 4, '8D'),
(84, 4, '8.5D'),
(85, 4, '9D'),
(86, 2, '24'),
(87, 1, '24'),
(88, 1, '25'),
(89, 1, '26'),
(90, 1, '27'),
(91, 1, '28'),
(92, 1, '29'),
(93, 1, '30'),
(94, 2, '25'),
(95, 2, '26'),
(96, 2, '27'),
(97, 2, '28'),
(98, 2, '29'),
(99, 2, '30'),
(100, 4, '24'),
(101, 4, '25'),
(102, 4, '26'),
(103, 4, '27'),
(104, 4, '28'),
(105, 4, '29'),
(106, 4, '30'),
(107, 1, 'New Born'),
(108, 4, 'مولود جديد'),
(109, 2, 'New Born'),
(110, 1, '3 Mos'),
(111, 1, '6 Mos'),
(112, 1, '9 Mos'),
(113, 2, '3 Mos'),
(114, 2, '6 Mos'),
(115, 2, '9 Mos'),
(116, 4, '3 Mos'),
(117, 4, '6 Mos'),
(118, 4, '9 Mos'),
(119, 1, 'Hollywood Cream'),
(120, 4, 'هوليوود، تقشد'),
(121, 2, 'Hollywood Cream'),
(122, 1, 'Vintage Silver'),
(123, 2, 'Vintage Zilver'),
(124, 4, 'خمر، سيلفر'),
(125, 1, 'King'),
(126, 4, 'ملك'),
(127, 2, 'koning'),
(128, 4, 'ممتلئ'),
(129, 2, 'vol'),
(130, 1, 'Full'),
(131, 1, '15"x20"'),
(132, 1, '22"x22"'),
(133, 2, '15"x20"'),
(134, 4, '15"x20"'),
(135, 2, '22"X22"'),
(136, 4, '22"X22"'),
(137, 1, '3T'),
(138, 1, '4T'),
(139, 1, '5T'),
(140, 2, '3T'),
(141, 2, '4T'),
(142, 2, '5T'),
(143, 4, '3T'),
(144, 4, '4T'),
(145, 4, '5T');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_to_products_options`
--

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 4, 29),
(30, 5, 30),
(31, 6, 31),
(32, 4, 32),
(33, 6, 33),
(34, 5, 34),
(35, 4, 35),
(36, 5, 36),
(37, 6, 37),
(38, 4, 38),
(39, 6, 39),
(40, 5, 40),
(41, 7, 41),
(42, 7, 42),
(43, 7, 43),
(44, 7, 44),
(45, 7, 45),
(46, 7, 46),
(47, 7, 47),
(48, 7, 48),
(49, 8, 49),
(50, 8, 50),
(51, 8, 51),
(52, 8, 52),
(53, 8, 53),
(54, 8, 54),
(55, 8, 55),
(56, 8, 56),
(57, 9, 57),
(58, 9, 58),
(59, 9, 59),
(60, 9, 60),
(61, 9, 61),
(62, 9, 62),
(63, 9, 63),
(64, 9, 64),
(65, 10, 65),
(66, 10, 66),
(67, 10, 67),
(68, 11, 68),
(69, 11, 69),
(70, 11, 70),
(71, 12, 71),
(72, 12, 72),
(73, 12, 73),
(74, 4, 74),
(75, 4, 75),
(76, 4, 76),
(77, 4, 77),
(78, 5, 78),
(79, 5, 79),
(80, 5, 80),
(81, 5, 81),
(82, 6, 82),
(83, 6, 83),
(84, 6, 84),
(85, 6, 85),
(86, 5, 86),
(87, 4, 87),
(88, 4, 88),
(89, 4, 89),
(90, 4, 90),
(91, 4, 91),
(92, 4, 92),
(93, 4, 93),
(94, 5, 94),
(95, 5, 95),
(96, 5, 96),
(97, 5, 97),
(98, 5, 98),
(99, 5, 99),
(100, 6, 100),
(101, 6, 101),
(102, 6, 102),
(103, 6, 103),
(104, 6, 104),
(105, 6, 105),
(106, 6, 106),
(107, 4, 107),
(108, 6, 108),
(109, 5, 109),
(110, 4, 110),
(111, 4, 111),
(112, 4, 112),
(113, 5, 113),
(114, 5, 114),
(115, 5, 115),
(116, 6, 116),
(117, 6, 117),
(118, 6, 118),
(119, 1, 119),
(120, 3, 120),
(121, 2, 121),
(122, 1, 122),
(123, 2, 123),
(124, 3, 124),
(125, 4, 125),
(126, 6, 126),
(127, 5, 127),
(128, 6, 128),
(129, 5, 129),
(130, 4, 130),
(131, 4, 131),
(132, 4, 132),
(133, 5, 133),
(134, 6, 134),
(135, 5, 135),
(136, 6, 136),
(137, 4, 137),
(138, 4, 138),
(139, 4, 139),
(140, 5, 140),
(141, 5, 141),
(142, 5, 142),
(143, 6, 143),
(144, 6, 144),
(145, 6, 145);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 7),
(2, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 9),
(12, 9),
(13, 9),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 11),
(21, 11),
(22, 11),
(23, 11),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 13),
(29, 13),
(30, 13),
(31, 14),
(32, 14),
(33, 14),
(34, 15),
(35, 15),
(36, 15),
(37, 15),
(38, 16),
(39, 16),
(40, 16),
(41, 16),
(42, 17),
(43, 17),
(44, 17),
(45, 18),
(46, 18),
(47, 18),
(48, 19),
(49, 19),
(50, 19),
(51, 19),
(52, 20),
(53, 20),
(54, 20),
(55, 21),
(56, 22),
(57, 22),
(58, 22),
(59, 22),
(60, 23),
(61, 23),
(62, 23),
(63, 23),
(64, 23),
(65, 24),
(66, 24),
(67, 24),
(68, 24),
(69, 25),
(70, 25),
(71, 25),
(72, 26),
(73, 26),
(74, 26),
(75, 27),
(76, 27),
(77, 27),
(78, 28),
(79, 28),
(80, 28),
(81, 28);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(100) NOT NULL,
  `facebook_app_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_secret_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_login` tinyint(1) NOT NULL DEFAULT '1',
  `google_login` tinyint(1) NOT NULL DEFAULT '1',
  `contact_us_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(100) NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_android` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_ios` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_desktop` text COLLATE utf8_unicode_ci NOT NULL,
  `app_logo` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_android_sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_ios_sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `new_product_duration` int(11) NOT NULL,
  `notification_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification_text` text COLLATE utf8_unicode_ci NOT NULL,
  `lazzy_loading_effect` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `footer_button` tinyint(1) NOT NULL DEFAULT '1',
  `cart_button` tinyint(1) NOT NULL DEFAULT '1',
  `featured_category` int(100) NOT NULL,
  `notification_duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_style` int(100) NOT NULL,
  `wish_list_page` tinyint(1) NOT NULL DEFAULT '1',
  `edit_profile_page` tinyint(1) NOT NULL DEFAULT '1',
  `shipping_address_page` tinyint(1) NOT NULL DEFAULT '1',
  `my_orders_page` tinyint(1) NOT NULL DEFAULT '1',
  `contact_us_page` tinyint(1) NOT NULL DEFAULT '1',
  `about_us_page` tinyint(1) NOT NULL DEFAULT '1',
  `news_page` tinyint(1) NOT NULL DEFAULT '1',
  `intro_page` tinyint(1) NOT NULL DEFAULT '1',
  `setting_page` tinyint(1) NOT NULL DEFAULT '1',
  `share_app` tinyint(1) NOT NULL DEFAULT '1',
  `rate_app` tinyint(1) NOT NULL DEFAULT '1',
  `site_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admob` tinyint(1) NOT NULL DEFAULT '1',
  `admob_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_unit_id_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_unit_id_interstitial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_style` int(10) NOT NULL,
  `package_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_analytic_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `facebook_app_id`, `facebook_secret_id`, `facebook_login`, `google_login`, `contact_us_email`, `address`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `phone_no`, `fcm_android`, `fcm_ios`, `fcm_desktop`, `app_logo`, `fcm_android_sender_id`, `fcm_ios_sender_id`, `app_name`, `currency_symbol`, `new_product_duration`, `notification_title`, `notification_text`, `lazzy_loading_effect`, `footer_button`, `cart_button`, `featured_category`, `notification_duration`, `home_style`, `wish_list_page`, `edit_profile_page`, `shipping_address_page`, `my_orders_page`, `contact_us_page`, `about_us_page`, `news_page`, `intro_page`, `setting_page`, `share_app`, `rate_app`, `site_url`, `admob`, `admob_id`, `ad_unit_id_banner`, `ad_unit_id_interstitial`, `category_style`, `package_name`, `google_analytic_id`) VALUES
(1, '', '', 0, 0, 'info@androidecommerce.com', '228 Park Ave S', 'New York', 'NY', 10003, 'USA', '40.730610', '-73.935242', '+92 1234567890', '', '', '', '', '', '', 'Android Ecommerce', '$', 20, 'Android Ecommerce', 'A bundle of products waiting for you!', 'bubbles', 1, 1, 0, 'day', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'androidecommerce.com', 0, '', '', '', 1, 'package name', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(100) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 1, 1, 'free_shipping'),
(3, 'localPickup', 0, 1, 'local_pickup'),
(4, 'flateRate', 0, 1, 'flate_rate');

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(100) NOT NULL,
  `specials_last_modified` int(100) NOT NULL,
  `expires_date` int(100) NOT NULL,
  `date_status_change` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 25, '150.00', 1502195102, 0, 1667174400, 0, 1),
(2, 39, '27.85', 1502264917, 0, 1640995200, 0, 1),
(3, 43, '21.99', 1502268005, 0, 1640995200, 0, 1),
(4, 44, '23.55', 1502268706, 0, 1640995200, 0, 1),
(5, 48, '450.00', 1502274870, 0, 1640995200, 0, 1),
(6, 62, '22.20', 1502351882, 0, 1659398400, 0, 1),
(7, 65, '23.50', 1502353123, 0, 1646092800, 0, 1),
(8, 67, '445.00', 1502362089, 0, 1640995200, 0, 1),
(9, 70, '23.99', 1502363119, 0, 1640995200, 0, 1),
(10, 73, '23.50', 1502364697, 0, 1640995200, 0, 1),
(11, 80, '99.99', 1502366586, 0, 1640995200, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Sale Tax', 'This tax apply on products related to USA item.', NULL, '2017-08-07 07:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 43, 1, 1, '7.00', '', NULL, '2017-08-07 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(100) NOT NULL,
  `pickup_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', '', '', '', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', 'UPS Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rememberToken` int(100) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'muzammil younas', '', '', '2017-08-30 13:', '', ''),
(2, 'Rabia Saqib', '', '', '2017-08-25 20:', '', ''),
(3, 'Test Ionicecommerce', '', '', '2017-09-08 10:', '', ''),
(4, 'Abhijeet Jha', '', '', '2017-12-11 17:', '', ''),
(5, 'a b', '', '', '2017-12-12 06:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`myid`),
  ADD UNIQUE KEY `administrators_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`customers_email_address`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payments_setting`
--
ALTER TABLE `payments_setting`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`);

--
-- Indexes for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `myid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;
--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1459;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `news_description`
--
ALTER TABLE `news_description`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payments_setting`
--
ALTER TABLE `payments_setting`
  MODIFY `payments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;
--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
