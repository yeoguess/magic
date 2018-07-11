-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 02:19 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_365commentmeta`
--

CREATE TABLE `wp_365commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_365comments`
--

CREATE TABLE `wp_365comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365comments`
--

INSERT INTO `wp_365comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-17 05:44:37', '2018-05-17 05:44:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_365links`
--

CREATE TABLE `wp_365links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_365options`
--

CREATE TABLE `wp_365options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365options`
--

INSERT INTO `wp_365options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/magic', 'yes'),
(2, 'home', 'http://localhost/magic', 'yes'),
(3, 'blogname', 'Magic Footwears', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yogesh@socialaves.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"outlets/?$\";s:26:\"index.php?post_type=outlet\";s:40:\"outlets/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=outlet&feed=$matches[1]\";s:35:\"outlets/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=outlet&feed=$matches[1]\";s:27:\"outlets/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=outlet&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"outlets/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"outlets/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"outlets/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"outlets/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"outlets/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"outlets/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"outlets/([^/]+)/embed/?$\";s:39:\"index.php?outlet=$matches[1]&embed=true\";s:28:\"outlets/([^/]+)/trackback/?$\";s:33:\"index.php?outlet=$matches[1]&tb=1\";s:48:\"outlets/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?outlet=$matches[1]&feed=$matches[2]\";s:43:\"outlets/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?outlet=$matches[1]&feed=$matches[2]\";s:36:\"outlets/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?outlet=$matches[1]&paged=$matches[2]\";s:43:\"outlets/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?outlet=$matches[1]&cpage=$matches[2]\";s:32:\"outlets/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?outlet=$matches[1]&page=$matches[2]\";s:24:\"outlets/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"outlets/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"outlets/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"outlets/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"outlets/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"outlets/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"option-tree/ot-loader.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Magic Footwears', 'yes'),
(41, 'stylesheet', 'Magic Footwears', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'gravatar_default', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_365user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:1:{i:0;s:10:\"nav_menu-2\";}s:7:\"footer4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1531121957;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1531158280;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531201497;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531206718;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1526536057;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', '', 'yes'),
(137, 'theme_mods_Magic Footwears', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:19:\"ot_set_google_fonts\";a:0:{}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(179, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"yogesh@socialaves.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1530870014;}', 'no'),
(237, 'recently_activated', 'a:0:{}', 'yes'),
(250, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1531116791;s:7:\"checked\";a:4:{s:15:\"Magic Footwears\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(326, 'acf_version', '4.4.12', 'yes'),
(350, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(363, 'option_tree_settings', 'a:3:{s:8:\"sections\";a:2:{i:0;a:2:{s:5:\"title\";s:7:\"General\";s:2:\"id\";s:7:\"general\";}i:1;a:2:{s:5:\"title\";s:7:\"Contact\";s:2:\"id\";s:7:\"contact\";}}s:8:\"settings\";a:1:{i:0;a:13:{s:5:\"label\";s:10:\"Contact Us\";s:2:\"id\";s:10:\"contact_us\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:38:\"Description for the sample text field.\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}}s:15:\"contextual_help\";a:1:{s:7:\"sidebar\";s:0:\"\";}}', 'yes'),
(364, 'option_tree', 'a:1:{s:10:\"contact_us\";s:178:\"<h1>Connect Us</h1>\r\n<p>161, Santushti, Samjhana Chowk <br />Biratnagar, Nepal</p>\r\n<p><br />+(977) 98520 28083 <br />info@magicfootwear.com.np <br />www.magicfootwear.com.np</p>\";}', 'yes'),
(365, 'ot_media_post_ID', '36', 'yes'),
(506, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1531116794;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(508, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1531474833', 'no'),
(509, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(517, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1531151665', 'no'),
(518, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:36:\"WordPress Bharatpur July Meetup 2018\";s:3:\"url\";s:67:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/events/252056765/\";s:6:\"meetup\";s:26:\"Bharatpur WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-07-14 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Gaindakot, Nepal\";s:7:\"country\";s:2:\"np\";s:8:\"latitude\";d:27.705055;s:9:\"longitude\";d:84.40763;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Pokhara\";s:3:\"url\";s:33:\"https://2018.pokhara.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-11-24 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Pokhara, Kaski, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:28.1947589;s:9:\"longitude\";d:83.9731033;}}}}', 'no'),
(529, '_site_transient_timeout_theme_roots', '1531118589', 'no'),
(530, '_site_transient_theme_roots', 'a:4:{s:15:\"Magic Footwears\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(531, 'auto_updater.lock', '1531116805', 'no'),
(532, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1531116807;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_365postmeta`
--

CREATE TABLE `wp_365postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365postmeta`
--

INSERT INTO `wp_365postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_edit_lock', '1530261837:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1530529290:1'),
(6, 7, '_edit_last', '1'),
(7, 7, 'field_5b35dd09655cb', 'a:12:{s:3:\"key\";s:19:\"field_5b35dd09655cb\";s:5:\"label\";s:12:\"Map Location\";s:4:\"name\";s:12:\"map_location\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(8, 7, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"outlet\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(9, 7, 'position', 'normal'),
(10, 7, 'layout', 'no_box'),
(11, 7, 'hide_on_screen', ''),
(12, 7, '_edit_lock', '1530271399:1'),
(13, 5, 'map_location', 'a:3:{s:7:\"address\";s:13:\"Butwal, Nepal\";s:3:\"lat\";s:10:\"27.6873608\";s:3:\"lng\";s:17:\"83.43233750000002\";}'),
(14, 5, '_map_location', 'field_5b35dd09655cb'),
(15, 6, 'map_location', 'a:3:{s:7:\"address\";s:17:\"Bhairahawa, Nepal\";s:3:\"lat\";s:10:\"27.5065119\";s:3:\"lng\";s:17:\"83.43767490000005\";}'),
(16, 6, '_map_location', 'field_5b35dd09655cb'),
(17, 9, '_menu_item_type', 'post_type'),
(18, 9, '_menu_item_menu_item_parent', '0'),
(19, 9, '_menu_item_object_id', '2'),
(20, 9, '_menu_item_object', 'page'),
(21, 9, '_menu_item_target', ''),
(22, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 9, '_menu_item_xfn', ''),
(24, 9, '_menu_item_url', ''),
(25, 9, '_menu_item_orphaned', '1530429210'),
(26, 2, '_wp_trash_meta_status', 'publish'),
(27, 2, '_wp_trash_meta_time', '1530433809'),
(28, 2, '_wp_desired_post_slug', 'sample-page'),
(29, 11, '_edit_last', '1'),
(30, 11, '_edit_lock', '1530433683:1'),
(31, 13, '_edit_last', '1'),
(32, 13, '_edit_lock', '1530433689:1'),
(33, 15, '_edit_last', '1'),
(34, 15, '_edit_lock', '1530433697:1'),
(35, 17, '_edit_last', '1'),
(36, 17, '_edit_lock', '1530433706:1'),
(37, 19, '_edit_last', '1'),
(38, 19, '_edit_lock', '1530792449:1'),
(39, 21, '_menu_item_type', 'custom'),
(40, 21, '_menu_item_menu_item_parent', '0'),
(41, 21, '_menu_item_object_id', '21'),
(42, 21, '_menu_item_object', 'custom'),
(43, 21, '_menu_item_target', ''),
(44, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 21, '_menu_item_xfn', ''),
(46, 21, '_menu_item_url', 'http://localhost/magic/'),
(47, 21, '_menu_item_orphaned', '1530433875'),
(48, 22, '_menu_item_type', 'post_type'),
(49, 22, '_menu_item_menu_item_parent', '0'),
(50, 22, '_menu_item_object_id', '11'),
(51, 22, '_menu_item_object', 'page'),
(52, 22, '_menu_item_target', ''),
(53, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 22, '_menu_item_xfn', ''),
(55, 22, '_menu_item_url', ''),
(56, 22, '_menu_item_orphaned', '1530433875'),
(57, 23, '_menu_item_type', 'post_type'),
(58, 23, '_menu_item_menu_item_parent', '0'),
(59, 23, '_menu_item_object_id', '17'),
(60, 23, '_menu_item_object', 'page'),
(61, 23, '_menu_item_target', ''),
(62, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 23, '_menu_item_xfn', ''),
(64, 23, '_menu_item_url', ''),
(65, 23, '_menu_item_orphaned', '1530433876'),
(66, 24, '_menu_item_type', 'post_type'),
(67, 24, '_menu_item_menu_item_parent', '0'),
(68, 24, '_menu_item_object_id', '19'),
(69, 24, '_menu_item_object', 'page'),
(70, 24, '_menu_item_target', ''),
(71, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 24, '_menu_item_xfn', ''),
(73, 24, '_menu_item_url', ''),
(74, 24, '_menu_item_orphaned', '1530433877'),
(75, 25, '_menu_item_type', 'post_type'),
(76, 25, '_menu_item_menu_item_parent', '0'),
(77, 25, '_menu_item_object_id', '13'),
(78, 25, '_menu_item_object', 'page'),
(79, 25, '_menu_item_target', ''),
(80, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 25, '_menu_item_xfn', ''),
(82, 25, '_menu_item_url', ''),
(83, 25, '_menu_item_orphaned', '1530433877'),
(84, 26, '_menu_item_type', 'post_type'),
(85, 26, '_menu_item_menu_item_parent', '0'),
(86, 26, '_menu_item_object_id', '15'),
(87, 26, '_menu_item_object', 'page'),
(88, 26, '_menu_item_target', ''),
(89, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 26, '_menu_item_xfn', ''),
(91, 26, '_menu_item_url', ''),
(92, 26, '_menu_item_orphaned', '1530433878'),
(93, 27, '_menu_item_type', 'custom'),
(94, 27, '_menu_item_menu_item_parent', '0'),
(95, 27, '_menu_item_object_id', '27'),
(96, 27, '_menu_item_object', 'custom'),
(97, 27, '_menu_item_target', ''),
(98, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 27, '_menu_item_xfn', ''),
(100, 27, '_menu_item_url', 'http://localhost/magic/'),
(102, 28, '_menu_item_type', 'post_type'),
(103, 28, '_menu_item_menu_item_parent', '0'),
(104, 28, '_menu_item_object_id', '11'),
(105, 28, '_menu_item_object', 'page'),
(106, 28, '_menu_item_target', ''),
(107, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 28, '_menu_item_xfn', ''),
(109, 28, '_menu_item_url', ''),
(111, 29, '_menu_item_type', 'post_type'),
(112, 29, '_menu_item_menu_item_parent', '0'),
(113, 29, '_menu_item_object_id', '17'),
(114, 29, '_menu_item_object', 'page'),
(115, 29, '_menu_item_target', ''),
(116, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 29, '_menu_item_xfn', ''),
(118, 29, '_menu_item_url', ''),
(120, 30, '_menu_item_type', 'post_type'),
(121, 30, '_menu_item_menu_item_parent', '0'),
(122, 30, '_menu_item_object_id', '19'),
(123, 30, '_menu_item_object', 'page'),
(124, 30, '_menu_item_target', ''),
(125, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 30, '_menu_item_xfn', ''),
(127, 30, '_menu_item_url', ''),
(129, 31, '_menu_item_type', 'post_type'),
(130, 31, '_menu_item_menu_item_parent', '0'),
(131, 31, '_menu_item_object_id', '13'),
(132, 31, '_menu_item_object', 'page'),
(133, 31, '_menu_item_target', ''),
(134, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 31, '_menu_item_xfn', ''),
(136, 31, '_menu_item_url', ''),
(138, 32, '_menu_item_type', 'post_type'),
(139, 32, '_menu_item_menu_item_parent', '0'),
(140, 32, '_menu_item_object_id', '15'),
(141, 32, '_menu_item_object', 'page'),
(142, 32, '_menu_item_target', ''),
(143, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 32, '_menu_item_xfn', ''),
(145, 32, '_menu_item_url', ''),
(147, 33, '_edit_last', '1'),
(148, 33, 'field_5b3897854751a', 'a:11:{s:3:\"key\";s:19:\"field_5b3897854751a\";s:5:\"label\";s:12:\"Upload Image\";s:4:\"name\";s:12:\"upload_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(149, 33, 'field_5b3897964751b', 'a:14:{s:3:\"key\";s:19:\"field_5b3897964751b\";s:5:\"label\";s:5:\"Price\";s:4:\"name\";s:5:\"price\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(151, 33, 'position', 'normal'),
(152, 33, 'layout', 'no_box'),
(153, 33, 'hide_on_screen', ''),
(154, 33, '_edit_lock', '1530436129:1'),
(155, 34, '_edit_last', '1'),
(156, 34, '_edit_lock', '1530617968:1'),
(157, 35, '_wp_attached_file', '2018/07/flipflop2.png'),
(158, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2018/07/flipflop2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"flipflop2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"flipflop2-234x300.png\";s:5:\"width\";i:234;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 34, 'upload_image', '35'),
(160, 34, '_upload_image', 'field_5b3897854751a'),
(161, 34, 'price', ''),
(162, 34, '_price', 'field_5b3897964751b'),
(163, 33, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(164, 37, '_wp_attached_file', '2018/07/cropped-flipflop2.png'),
(165, 37, '_wp_attachment_context', 'showcase'),
(166, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:29:\"2018/07/cropped-flipflop2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-flipflop2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-flipflop2-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 39, '_wp_attached_file', '2018/07/cropped-flipflop2-1.png'),
(169, 39, '_wp_attachment_context', 'showcase'),
(170, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:31:\"2018/07/cropped-flipflop2-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-1-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 41, '_wp_attached_file', '2018/07/cropped-flipflop2-2.png'),
(174, 41, '_wp_attachment_context', 'showcase'),
(175, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:31:\"2018/07/cropped-flipflop2-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-2-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 43, '_wp_attached_file', '2018/07/cropped-flipflop2-3.png'),
(179, 43, '_wp_attachment_context', 'showcase'),
(180, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:31:\"2018/07/cropped-flipflop2-3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-flipflop2-3-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 44, '_wp_attached_file', '2018/07/banner.jpg'),
(183, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/07/banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 45, '_wp_attached_file', '2018/07/cropped-banner.jpg'),
(185, 45, '_wp_attachment_context', 'showcase'),
(186, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:26:\"2018/07/cropped-banner.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-banner-253x300.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 47, '_wp_attached_file', '2018/07/cropped-banner-1.jpg'),
(189, 47, '_wp_attachment_context', 'showcase'),
(190, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:28:\"2018/07/cropped-banner-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-banner-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-banner-1-253x300.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 48, '_wp_attached_file', '2018/07/cropped-banner-2.jpg'),
(193, 48, '_wp_attachment_context', 'showcase'),
(194, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:532;s:4:\"file\";s:28:\"2018/07/cropped-banner-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-banner-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-banner-2-253x300.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 50, '_wp_attached_file', '2018/07/cropped-banner-3.jpg'),
(197, 50, '_wp_attachment_context', 'showcase'),
(198, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:920;s:4:\"file\";s:28:\"2018/07/cropped-banner-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-banner-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-banner-3-300x256.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-banner-3-768x654.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-banner-3-1024x872.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:872;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 52, '_edit_last', '1'),
(202, 52, '_edit_lock', '1530617963:1'),
(203, 53, '_wp_attached_file', '2018/07/flipflop3.png'),
(204, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:440;s:4:\"file\";s:21:\"2018/07/flipflop3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"flipflop3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"flipflop3-226x300.png\";s:5:\"width\";i:226;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 52, 'upload_image', '53'),
(206, 52, '_upload_image', 'field_5b3897854751a'),
(207, 52, 'price', ''),
(208, 52, '_price', 'field_5b3897964751b'),
(209, 54, '_edit_last', '1'),
(210, 54, '_edit_lock', '1530617965:1'),
(211, 54, 'upload_image', '35'),
(212, 54, '_upload_image', 'field_5b3897854751a'),
(213, 54, 'price', ''),
(214, 54, '_price', 'field_5b3897964751b'),
(215, 55, '_edit_last', '1'),
(216, 55, '_edit_lock', '1530617966:1'),
(217, 55, 'upload_image', '53'),
(218, 55, '_upload_image', 'field_5b3897854751a'),
(219, 55, 'price', ''),
(220, 55, '_price', 'field_5b3897964751b'),
(221, 56, '_edit_last', '1'),
(222, 56, '_edit_lock', '1530619746:1'),
(223, 56, 'upload_image', '35'),
(224, 56, '_upload_image', 'field_5b3897854751a'),
(225, 56, 'price', ''),
(226, 56, '_price', 'field_5b3897964751b'),
(227, 56, '_wp_trash_meta_status', 'publish'),
(228, 56, '_wp_trash_meta_time', '1530617483'),
(229, 56, '_wp_desired_post_slug', 'asda');

-- --------------------------------------------------------

--
-- Table structure for table `wp_365posts`
--

CREATE TABLE `wp_365posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365posts`
--

INSERT INTO `wp_365posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-17 05:44:37', '2018-05-17 05:44:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-17 05:44:37', '2018-05-17 05:44:37', '', 0, 'http://localhost/magic/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-17 05:44:37', '2018-05-17 05:44:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/magic/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-01 08:30:09', '2018-07-01 08:30:09', '', 0, 'http://localhost/magic/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-06-29 07:13:26', '2018-06-29 07:13:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget felis vitae nisi tempus vulputate eu sed mi. Suspendisse vitae tortor leo. Sed non dolor interdum, egestas ipsum id, molestie ligula. Morbi tincidunt tellus nec urna vestibulum, id eleifend libero pulvinar. Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque id iaculis odio, sed cursus neque. Nulla vel massa id nibh mattis elementum.', 'Butwal', '', 'publish', 'closed', 'closed', '', 'butwal', '', '', '2018-06-29 08:46:15', '2018-06-29 08:46:15', '', 0, 'http://localhost/magic/?post_type=outlet&#038;p=5', 0, 'outlet', '', 0),
(6, 1, '2018-06-29 07:13:39', '2018-06-29 07:13:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget felis vitae nisi tempus vulputate eu sed mi. Suspendisse vitae tortor leo. Sed non dolor interdum, egestas ipsum id, molestie ligula. Morbi tincidunt tellus nec urna vestibulum, id eleifend libero pulvinar. Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque id iaculis odio, sed cursus neque. Nulla vel massa id nibh mattis elementum.', 'Bhairawa', '', 'publish', 'closed', 'closed', '', 'bhairawa', '', '', '2018-06-29 08:46:36', '2018-06-29 08:46:36', '', 0, 'http://localhost/magic/?post_type=outlet&#038;p=6', 0, 'outlet', '', 0),
(7, 1, '2018-06-29 07:18:30', '2018-06-29 07:18:30', '', 'Map Location', '', 'publish', 'closed', 'closed', '', 'acf_map-location', '', '', '2018-06-29 07:18:30', '2018-06-29 07:18:30', '', 0, 'http://localhost/magic/?post_type=acf&#038;p=7', 0, 'acf', '', 0),
(9, 1, '2018-07-01 07:13:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 07:13:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-07-01 08:30:09', '2018-07-01 08:30:09', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/magic/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-01 08:30:09', '2018-07-01 08:30:09', '', 2, 'http://localhost/magic/2018/07/01/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-07-01 08:30:24', '2018-07-01 08:30:24', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-01 08:30:24', '2018-07-01 08:30:24', '', 0, 'http://localhost/magic/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-01 08:30:24', '2018-07-01 08:30:24', '', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-01 08:30:24', '2018-07-01 08:30:24', '', 11, 'http://localhost/magic/2018/07/01/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-07-01 08:30:31', '2018-07-01 08:30:31', '', 'Men', '', 'publish', 'closed', 'closed', '', 'men', '', '', '2018-07-01 08:30:31', '2018-07-01 08:30:31', '', 0, 'http://localhost/magic/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-07-01 08:30:31', '2018-07-01 08:30:31', '', 'Men', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-07-01 08:30:31', '2018-07-01 08:30:31', '', 13, 'http://localhost/magic/2018/07/01/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-07-01 08:30:38', '2018-07-01 08:30:38', '', 'Women', '', 'publish', 'closed', 'closed', '', 'women', '', '', '2018-07-01 08:30:38', '2018-07-01 08:30:38', '', 0, 'http://localhost/magic/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-07-01 08:30:38', '2018-07-01 08:30:38', '', 'Women', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-01 08:30:38', '2018-07-01 08:30:38', '', 15, 'http://localhost/magic/2018/07/01/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-07-01 08:30:48', '2018-07-01 08:30:48', '', 'Children', '', 'publish', 'closed', 'closed', '', 'children', '', '', '2018-07-01 08:30:48', '2018-07-01 08:30:48', '', 0, 'http://localhost/magic/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-07-01 08:30:48', '2018-07-01 08:30:48', '', 'Children', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-01 08:30:48', '2018-07-01 08:30:48', '', 17, 'http://localhost/magic/2018/07/01/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-07-01 08:30:57', '2018-07-01 08:30:57', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-07-01 08:30:57', '2018-07-01 08:30:57', '', 0, 'http://localhost/magic/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-07-01 08:30:57', '2018-07-01 08:30:57', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-01 08:30:57', '2018-07-01 08:30:57', '', 19, 'http://localhost/magic/2018/07/01/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-07-01 08:31:14', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-07-01 08:31:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-07-01 08:31:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-07-01 08:31:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-07-01 08:31:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-07-01 08:31:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-01 08:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-07-01 08:31:50', '2018-07-01 08:31:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-01 08:31:50', '2018-07-01 08:31:50', '', 0, 'http://localhost/magic/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-07-01 08:31:50', '2018-07-01 08:31:50', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-07-01 08:31:50', '2018-07-01 08:31:50', '', 0, 'http://localhost/magic/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2018-07-01 08:31:52', '2018-07-01 08:31:52', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-07-01 08:31:52', '2018-07-01 08:31:52', '', 0, 'http://localhost/magic/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-07-01 08:31:52', '2018-07-01 08:31:52', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-07-01 08:31:52', '2018-07-01 08:31:52', '', 0, 'http://localhost/magic/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2018-07-01 08:31:51', '2018-07-01 08:31:51', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-07-01 08:31:51', '2018-07-01 08:31:51', '', 0, 'http://localhost/magic/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2018-07-01 08:31:51', '2018-07-01 08:31:51', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-07-01 08:31:51', '2018-07-01 08:31:51', '', 0, 'http://localhost/magic/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2018-07-01 08:58:09', '2018-07-01 08:58:09', '', 'Products', '', 'publish', 'closed', 'closed', '', 'acf_products', '', '', '2018-07-01 09:05:28', '2018-07-01 09:05:28', '', 0, 'http://localhost/magic/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2018-07-01 09:00:29', '2018-07-01 09:00:29', '', 'Magic Men\'s Flip Flops', '', 'publish', 'closed', 'closed', '', 'magic-mens-flip-flops', '', '', '2018-07-03 11:41:33', '2018-07-03 11:41:33', '', 0, 'http://localhost/magic/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2018-07-01 09:00:25', '2018-07-01 09:00:25', '', 'flipflop2', '', 'inherit', 'open', 'closed', '', 'flipflop2', '', '', '2018-07-01 09:00:25', '2018-07-01 09:00:25', '', 34, 'http://localhost/magic/wp-content/uploads/2018/07/flipflop2.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-07-01 09:12:21', '2018-07-01 09:12:21', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2018-07-01 09:12:21', '2018-07-01 09:12:21', '', 0, 'http://localhost/magic/?option-tree=media', 0, 'option-tree', '', 0),
(37, 1, '2018-07-01 09:48:14', '2018-07-01 09:48:14', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2.png', 'cropped-flipflop2.png', '', 'inherit', 'open', 'closed', '', 'cropped-flipflop2-png', '', '', '2018-07-01 09:48:14', '2018-07-01 09:48:14', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-07-01 11:34:40', '2018-07-01 11:34:40', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-1.png', 'cropped-flipflop2-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-flipflop2-1-png', '', '', '2018-07-01 11:34:40', '2018-07-01 11:34:40', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-07-01 11:37:25', '2018-07-01 11:37:25', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-2.png', 'cropped-flipflop2-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-flipflop2-2-png', '', '', '2018-07-01 11:37:25', '2018-07-01 11:37:25', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-2.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-07-01 11:38:41', '2018-07-01 11:38:41', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-3.png', 'cropped-flipflop2-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-flipflop2-3-png', '', '', '2018-07-01 11:38:41', '2018-07-01 11:38:41', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-flipflop2-3.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-07-01 11:39:05', '2018-07-01 11:39:05', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-07-01 11:39:05', '2018-07-01 11:39:05', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-07-01 11:39:08', '2018-07-01 11:39:08', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner.jpg', 'cropped-banner.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner-jpg', '', '', '2018-07-01 11:39:08', '2018-07-01 11:39:08', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-07-01 11:41:08', '2018-07-01 11:41:08', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-1.jpg', 'cropped-banner-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner-1-jpg', '', '', '2018-07-01 11:41:08', '2018-07-01 11:41:08', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-07-01 11:41:39', '2018-07-01 11:41:39', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-2.jpg', 'cropped-banner-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner-2-jpg', '', '', '2018-07-01 11:41:39', '2018-07-01 11:41:39', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-07-01 11:42:34', '2018-07-01 11:42:34', 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-3.jpg', 'cropped-banner-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner-3-jpg', '', '', '2018-07-01 11:42:34', '2018-07-01 11:42:34', '', 0, 'http://localhost/magic/wp-content/uploads/2018/07/cropped-banner-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-07-01 12:11:46', '2018-07-01 12:11:46', '', 'fdsfdsfdsf', '', 'publish', 'closed', 'closed', '', 'fdsfdsfdsf', '', '', '2018-07-03 11:41:43', '2018-07-03 11:41:43', '', 0, 'http://localhost/magic/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2018-07-01 12:11:39', '2018-07-01 12:11:39', '', 'flipflop3', '', 'inherit', 'open', 'closed', '', 'flipflop3', '', '', '2018-07-01 12:11:39', '2018-07-01 12:11:39', '', 52, 'http://localhost/magic/wp-content/uploads/2018/07/flipflop3.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-07-01 12:12:35', '2018-07-01 12:12:35', '', 'dsasda', '', 'publish', 'closed', 'closed', '', 'dsasda', '', '', '2018-07-03 11:41:39', '2018-07-03 11:41:39', '', 0, 'http://localhost/magic/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2018-07-01 12:12:47', '2018-07-01 12:12:47', '', 'dsfdsf', '', 'publish', 'closed', 'closed', '', 'dsfdsf', '', '', '2018-07-03 11:41:18', '2018-07-03 11:41:18', '', 0, 'http://localhost/magic/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2018-07-01 12:12:58', '2018-07-01 12:12:58', '', 'asdavsdhashcbsajkbc', '', 'trash', 'closed', 'closed', '', 'asda__trashed', '', '', '2018-07-03 11:31:23', '2018-07-03 11:31:23', '', 0, 'http://localhost/magic/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2018-07-06 09:40:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-06 09:40:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/magic/?p=57', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_365termmeta`
--

CREATE TABLE `wp_365termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_365terms`
--

CREATE TABLE `wp_365terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365terms`
--

INSERT INTO `wp_365terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Secondary Menu', 'secondary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_365term_relationships`
--

CREATE TABLE `wp_365term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365term_relationships`
--

INSERT INTO `wp_365term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_365term_taxonomy`
--

CREATE TABLE `wp_365term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365term_taxonomy`
--

INSERT INTO `wp_365term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_365usermeta`
--

CREATE TABLE `wp_365usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365usermeta`
--

INSERT INTO `wp_365usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_365capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_365user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"8ad1e8b90910bc2b6a63eabf81ea225d9ab2cf82212fe69df2c4fe1d085a42bc\";a:4:{s:10:\"expiration\";i:1531194414;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531021614;}s:64:\"a3850150a0efed600842259488559e37714f395429dc48e560af64aff284ae00\";a:4:{s:10:\"expiration\";i:1531281247;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531108447;}}'),
(17, 1, 'wp_365dashboard_quick_press_last_post_id', '57'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:17:\"dashboard_primary\";i:3;s:21:\"dashboard_quick_press\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:20:\"add-post-type-outlet\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_365user-settings', 'libraryContent=browse&editor=tinymce'),
(25, 1, 'wp_365user-settings-time', '1530617071'),
(26, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:17:\"dashboard_primary\";s:7:\"column3\";s:21:\"dashboard_quick_press\";s:7:\"column4\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_365users`
--

CREATE TABLE `wp_365users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_365users`
--

INSERT INTO `wp_365users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BIVohm3WGOhG6lfYfQ8gnLWgeOU3PF/', 'admin', 'yogesh@socialaves.com', '', '2018-05-17 05:44:36', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_365commentmeta`
--
ALTER TABLE `wp_365commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_365comments`
--
ALTER TABLE `wp_365comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_365links`
--
ALTER TABLE `wp_365links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_365options`
--
ALTER TABLE `wp_365options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_365postmeta`
--
ALTER TABLE `wp_365postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_365posts`
--
ALTER TABLE `wp_365posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_365termmeta`
--
ALTER TABLE `wp_365termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_365terms`
--
ALTER TABLE `wp_365terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_365term_relationships`
--
ALTER TABLE `wp_365term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_365term_taxonomy`
--
ALTER TABLE `wp_365term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_365usermeta`
--
ALTER TABLE `wp_365usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_365users`
--
ALTER TABLE `wp_365users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_365commentmeta`
--
ALTER TABLE `wp_365commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_365comments`
--
ALTER TABLE `wp_365comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_365links`
--
ALTER TABLE `wp_365links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_365options`
--
ALTER TABLE `wp_365options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `wp_365postmeta`
--
ALTER TABLE `wp_365postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `wp_365posts`
--
ALTER TABLE `wp_365posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wp_365termmeta`
--
ALTER TABLE `wp_365termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_365terms`
--
ALTER TABLE `wp_365terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_365term_taxonomy`
--
ALTER TABLE `wp_365term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_365usermeta`
--
ALTER TABLE `wp_365usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_365users`
--
ALTER TABLE `wp_365users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
