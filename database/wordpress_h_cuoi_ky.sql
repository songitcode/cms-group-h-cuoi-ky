-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2024 lúc 02:23 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wordpress_h_cuoi_ky`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-11-15 09:43:00', '2024-11-15 09:43:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:14:{i:1731850980;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1731851123;a:2:{s:34:\"job_manager_check_for_expired_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:39:\"job_manager_promoted_jobs_status_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1731879791;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1731883379;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1731885179;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1731886979;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1731922980;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1731922991;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1731922995;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1731923123;a:2:{s:31:\"job_manager_delete_old_previews\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"job_manager_email_daily_notices\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1732268608;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1732354980;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1732959923;a:1:{s:42:\"job_manager_usage_tracking_send_usage_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:36:\"job_manager_usage_tracking_two_weeks\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'http://wordpress.local', 'on'),
(3, 'home', 'http://wordpress.local', 'on'),
(4, 'blogname', 'wordpress581', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@admin.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:155:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:17:\"jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:27:\"index.php/jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:56:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:66:\"portfolio-category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:61:\"portfolio-category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:33:\"portfolio-category/(.+?)/embed/?$\";s:58:\"index.php?rara_portfolio_categories=$matches[1]&embed=true\";s:45:\"portfolio-category/(.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?rara_portfolio_categories=$matches[1]&paged=$matches[2]\";s:27:\"portfolio-category/(.+?)/?$\";s:47:\"index.php?rara_portfolio_categories=$matches[1]\";s:31:\"job/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"job/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"job/([^/]+)/embed/?$\";s:44:\"index.php?job_listing=$matches[1]&embed=true\";s:24:\"job/([^/]+)/trackback/?$\";s:38:\"index.php?job_listing=$matches[1]&tb=1\";s:32:\"job/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&paged=$matches[2]\";s:39:\"job/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&cpage=$matches[2]\";s:28:\"job/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?job_listing=$matches[1]&page=$matches[2]\";s:20:\"job/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"job/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"job/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"job_guest_user/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"job_guest_user/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:81:\"job_guest_user/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:76:\"job_guest_user/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"job_guest_user/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"job_guest_user/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"job_guest_user/([^/]+)/embed/?$\";s:47:\"index.php?job_guest_user=$matches[1]&embed=true\";s:35:\"job_guest_user/([^/]+)/trackback/?$\";s:41:\"index.php?job_guest_user=$matches[1]&tb=1\";s:43:\"job_guest_user/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?job_guest_user=$matches[1]&paged=$matches[2]\";s:50:\"job_guest_user/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?job_guest_user=$matches[1]&cpage=$matches[2]\";s:39:\"job_guest_user/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?job_guest_user=$matches[1]&page=$matches[2]\";s:31:\"job_guest_user/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job_guest_user/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"job_guest_user/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"job_guest_user/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job_guest_user/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"job_guest_user/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:47:\"index.php?rara-portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:41:\"index.php?rara-portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?rara-portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:41:\"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:36:\"(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:50:\"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:45:\"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:53:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:48:\"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:78:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:65:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:60:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:52:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:47:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:97:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:92:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:86:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:81:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:49:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:44:\"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";i:1;s:43:\"raratheme-companion/raratheme-companion.php\";i:2;s:33:\"wp-job-manager/wp-job-manager.php\";i:3;s:55:\"wpjm-company-profile-page/wpjm-company-profile-page.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'jobscout', 'on'),
(42, 'stylesheet', 'jobscout', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:3:{i:1;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:2;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'on'),
(78, 'widget_text', 'a:2:{i:1;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:516:\"<img class=\"size-full wp-image-31 alignnone\" src=\"http://rarathemesdemo.com/job-board-pro/wp-content/uploads/sites/91/2019/01/logo-15.png\" alt=\"\" width=\"64\" height=\"64\" />\r\n\r\n\r\nA job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment. Many people have multiple jobs. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '15', 'on'),
(83, 'page_on_front', '13', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '66', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '0', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1747215779', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"manage_job_listings\";b:1;s:16:\"edit_job_listing\";b:1;s:16:\"read_job_listing\";b:1;s:18:\"delete_job_listing\";b:1;s:17:\"edit_job_listings\";b:1;s:24:\"edit_others_job_listings\";b:1;s:20:\"publish_job_listings\";b:1;s:25:\"read_private_job_listings\";b:1;s:19:\"delete_job_listings\";b:1;s:27:\"delete_private_job_listings\";b:1;s:29:\"delete_published_job_listings\";b:1;s:26:\"delete_others_job_listings\";b:1;s:25:\"edit_private_job_listings\";b:1;s:27:\"edit_published_job_listings\";b:1;s:24:\"manage_job_listing_terms\";b:1;s:22:\"edit_job_listing_terms\";b:1;s:24:\"delete_job_listing_terms\";b:1;s:24:\"assign_job_listing_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"employer\";a:2:{s:4:\"name\";s:8:\"Employer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'user_count', '5', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:13:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"search-1\";i:6;s:27:\"raratheme_featured_widget-1\";i:7;s:12:\"categories-1\";i:8;s:24:\"raratheme_popular_post-1\";i:9;s:30:\"rtc_pro_twitter_feeds_widget-1\";i:10;s:18:\"rtc_social_links-1\";i:11;s:13:\"custom_html-1\";i:12;s:26:\"rtc_contact_social_links-1\";}s:3:\"cta\";a:1:{i:0;s:32:\"raratheme_companion_cta_widget-1\";}s:11:\"testimonial\";a:4:{i:0;s:25:\"rrtc_testimonial_widget-1\";i:1;s:25:\"rrtc_testimonial_widget-2\";i:2;s:25:\"rrtc_testimonial_widget-3\";i:3;s:25:\"rrtc_testimonial_widget-4\";}s:6:\"client\";a:1:{i:0;s:30:\"raratheme_client_logo_widget-1\";}s:10:\"footer-one\";a:1:{i:0;s:6:\"text-1\";}s:10:\"footer-two\";a:1:{i:0;s:24:\"raratheme_popular_post-2\";}s:12:\"footer-three\";a:1:{i:0;s:12:\"categories-2\";}s:11:\"footer-four\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:2:{i:1;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:2:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:353:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.89857119439!2d85.33659901559545!3d27.72041778278659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb196dcf0d2733%3A0xfbfefe8e6ac65654!2sCodewing+Solutions!5e0!3m2!1sen!2snp!4v1543223725024\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";}s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'auto'),
(126, 'nonce_key', '{CxR)c5)[Vu~-Y+PI#Ba82|_[3#g.WWp3H|6@q^p~VIinqO-P8jp=BgQ:xA/lC6{', 'off'),
(127, 'nonce_salt', '}z^Yjdj_@Pt1g!NnMNGFk*k+X-qqP/3O.i{DDQzc+X6gdWhJ@yVWg>{)vb2<y-GF', 'off'),
(128, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1731663822;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(129, 'logged_in_key', 'ia@[V|!U|%FUBIXIJ2/j)9ENTpTiM]G:k44MC}uf*8qy[+T>bL/d(}]r_@dV?T6)', 'off'),
(130, 'logged_in_salt', 'ar<sp*j!kNh.OEw)^#6+P6KbC:RF>4FQYwahEU9;k1Eq(c3f{r~t9Otkjazm5aWt', 'off'),
(131, 'auth_key', 'syCo)/q]uH*;X<{yY{)/U.bmbE:AtXj>>~=u@jr93a}{o3s<~O:k>`07tL4n?a8u', 'off'),
(132, 'auth_salt', 'v[#xxJ(jbYRuHIIDn[d.~9cMu:;bLWA8i6W4@NCW3FV9GV7-G3VUe{}c+^R0K?`8', 'off'),
(133, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.7\";s:7:\"version\";s:3:\"6.7\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:49:\"https://downloads.w.org/release/wordpress-6.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:49:\"https://downloads.w.org/release/wordpress-6.7.zip\";s:10:\"no_content\";s:60:\"https://downloads.w.org/release/wordpress-6.7-no-content.zip\";s:11:\"new_bundled\";s:61:\"https://downloads.w.org/release/wordpress-6.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.7\";s:7:\"version\";s:3:\"6.7\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1731849436;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}', 'off'),
(138, '_site_transient_timeout_browser_7675d59b5e84e0a878ee6f0a97f9056f', '1732268594', 'off'),
(139, '_site_transient_browser_7675d59b5e84e0a878ee6f0a97f9056f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"130.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(140, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1732268595', 'off'),
(141, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(143, 'can_compress_scripts', '1', 'on'),
(161, 'current_theme', 'JobScout', 'auto'),
(162, 'theme_mods_jobscout', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:26;s:9:\"secondary\";i:27;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(163, 'theme_switched', '', 'auto'),
(168, 'finished_updating_comment_type', '1', 'auto'),
(170, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(171, 'job_manager_permalinks', '{\"jobs_archive\":\"\"}', 'auto'),
(172, '_transient_jm_get_job_listing_type-transient-version', '1731664008', 'on'),
(178, 'job_manager_installed_terms', '1', 'auto'),
(179, 'job_manager_admin_notices', '[]', 'off'),
(180, 'job_manager_display_usage_tracking_once', '1732268723', 'auto'),
(181, 'job_manager_stats_enable', '1', 'auto'),
(182, 'recently_activated', 'a:0:{}', 'auto'),
(185, 'jm_promoted_job_count', '0', 'auto'),
(186, 'wp_job_manager_dismissed_notices', 'a:1:{i:0;s:20:\"release_notice_2_3_0\";}', 'auto'),
(187, 'wp_job_manager_version', '2.4.0', 'auto'),
(188, 'widget_widget_recent_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(189, 'widget_widget_featured_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(191, 'job_manager_date_format', 'relative', 'auto'),
(192, 'job_manager_google_maps_api_key', '', 'auto'),
(193, 'job_manager_delete_data_on_uninstall', '0', 'auto'),
(194, 'job_manager_bypass_trash_on_uninstall', '0', 'auto'),
(195, 'job_manager_usage_tracking_enabled', '1', 'auto'),
(196, 'job_manager_per_page', '10', 'auto'),
(197, 'job_manager_job_listing_pagination_type', 'load_more', 'auto'),
(198, 'job_manager_hide_filled_positions', '0', 'auto'),
(199, 'job_manager_hide_expired', '0', 'auto'),
(200, 'job_manager_hide_expired_content', '1', 'auto'),
(201, 'job_manager_enable_categories', '0', 'auto'),
(202, 'job_manager_enable_default_category_multiselect', '0', 'auto'),
(203, 'job_manager_category_filter_type', 'any', 'auto'),
(204, 'job_manager_enable_types', '1', 'auto'),
(205, 'job_manager_multi_job_type', '0', 'auto'),
(206, 'job_manager_enable_remote_position', '1', 'auto'),
(207, 'job_manager_enable_salary', '0', 'auto'),
(208, 'job_manager_enable_salary_currency', '0', 'auto'),
(209, 'job_manager_default_salary_currency', 'USD', 'auto'),
(210, 'job_manager_enable_salary_unit', '0', 'auto'),
(211, 'job_manager_default_salary_unit', 'YEAR', 'auto'),
(212, 'job_manager_display_location_address', '0', 'auto'),
(213, 'job_manager_strip_job_description_shortcodes', '0', 'auto'),
(214, 'job_manager_user_requires_account', '1', 'auto'),
(215, 'job_manager_enable_registration', '0', 'auto'),
(216, 'job_manager_enable_scheduled_listings', '0', 'auto'),
(217, 'job_manager_generate_username_from_email', '1', 'auto'),
(218, 'job_manager_use_standard_password_setup_email', '1', 'auto'),
(219, 'job_manager_registration_role', 'employer', 'auto'),
(220, 'job_manager_submission_requires_approval', '1', 'auto'),
(221, 'job_manager_user_can_edit_pending_submissions', '0', 'auto'),
(222, 'job_manager_user_edit_published_submissions', 'yes', 'auto'),
(223, 'job_manager_submission_duration', '30', 'auto'),
(224, 'job_manager_renewal_days', '5', 'auto'),
(225, 'job_manager_submission_limit', '', 'auto'),
(226, 'job_manager_allowed_application_method', '', 'auto'),
(227, 'job_manager_show_agreement_job_submission', '0', 'auto'),
(228, 'job_manager_recaptcha_label', 'Are you human?', 'auto'),
(229, 'job_manager_recaptcha_version', 'v2', 'auto'),
(230, 'job_manager_recaptcha_site_key', '', 'auto'),
(231, 'job_manager_recaptcha_secret_key', '', 'auto'),
(232, 'job_manager_enable_recaptcha_job_submission', '0', 'auto'),
(233, 'job_manager_submit_job_form_page_id', '969', 'auto'),
(234, 'job_manager_job_dashboard_page_id', '970', 'auto'),
(235, 'job_manager_jobs_page_id', '971', 'auto'),
(236, 'job_manager_terms_and_conditions_page_id', '', 'auto'),
(237, 'job_manager_browse_job_listings_capability', 'a:0:{}', 'auto'),
(238, 'job_manager_view_job_listing_capability', 'a:0:{}', 'auto'),
(239, 'job_manager_email_admin_new_job', 'a:3:{s:7:\"enabled\";s:1:\"1\";s:8:\"email_to\";s:0:\"\";s:10:\"plain_text\";s:1:\"0\";}', 'auto'),
(240, 'job_manager_email_admin_updated_job', 'a:3:{s:7:\"enabled\";s:1:\"1\";s:8:\"email_to\";s:0:\"\";s:10:\"plain_text\";s:1:\"0\";}', 'auto'),
(241, 'job_manager_email_admin_expiring_job', 'a:4:{s:7:\"enabled\";s:1:\"0\";s:8:\"email_to\";s:0:\"\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'auto'),
(242, 'job_manager_email_employer_expiring_job', 'a:3:{s:7:\"enabled\";s:1:\"0\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'auto'),
(243, 'rtc_queue_flush_rewrite_rules', 'no', 'auto'),
(251, '_transient_timeout_jm_pending_job_listing_count_user_1', '1732268724', 'off'),
(252, '_transient_jm_pending_job_listing_count_user_1', '0', 'off'),
(253, 'widget_raratheme_companion_cta_widget', 'a:2:{i:1;a:11:{s:5:\"title\";s:22:\"Build Your Online Team\";s:7:\"content\";s:84:\"We\'ll help you find it. We\'re your first step to becoming everything you want to be.\";s:13:\"button_number\";s:1:\"1\";s:16:\"button_alignment\";s:8:\"centered\";s:11:\"button1_url\";s:52:\"https://rarathemes.com/wordpress-themes/jobscout-pro\";s:11:\"button2_url\";s:0:\"\";s:12:\"button1_text\";s:10:\"Learn More\";s:12:\"button2_text\";s:0:\"\";s:15:\"widget-bg-color\";s:7:\"#2ace5e\";s:15:\"widget-bg-image\";s:2:\"21\";s:6:\"target\";s:1:\"1\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(254, 'widget_rtc_contact_social_links', 'a:2:{i:1;a:7:{s:5:\"title\";s:12:\"Get in Touch\";s:6:\"target\";N;s:4:\"size\";N;s:11:\"description\";s:49:\"For more information use the information below.\r\n\";s:5:\"phone\";s:14:\"4 456 921 5544\";s:5:\"email\";s:17:\"jobboard@mail.com\";s:7:\"address\";s:33:\"1234 Madeup Street, Hometown, USA\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(255, 'widget_raratheme_featured_widget', 'a:2:{i:1;a:3:{s:8:\"readmore\";s:9:\"Read More\";s:9:\"post_list\";i:109;s:14:\"show_thumbnail\";i:1;}s:12:\"_multiwidget\";i:1;}', 'auto'),
(256, 'widget_rrtc_icon_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(257, 'widget_raratheme_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(258, 'widget_raratheme_companion_stat_counter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(259, 'widget_raratheme_popular_post', 'a:3:{i:1;a:8:{s:5:\"title\";s:13:\"Popular Posts\";s:8:\"num_post\";i:3;s:14:\"show_thumbnail\";i:1;s:13:\"show_postdate\";s:0:\"\";s:8:\"based_on\";s:5:\"views\";s:11:\"comment_num\";s:0:\"\";s:10:\"view_count\";s:0:\"\";s:6:\"target\";s:0:\"\";}i:2;a:8:{s:5:\"title\";s:13:\"Popular Posts\";s:8:\"num_post\";i:3;s:14:\"show_thumbnail\";i:1;s:13:\"show_postdate\";i:1;s:8:\"based_on\";s:5:\"views\";s:11:\"comment_num\";s:0:\"\";s:10:\"view_count\";s:0:\"\";s:6:\"target\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(260, 'widget_raratheme_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(261, 'widget_rtc_social_links', 'a:2:{i:1;a:5:{s:5:\"title\";s:20:\"Subscribe and Follow\";s:6:\"target\";N;s:4:\"size\";N;s:6:\"social\";a:6:{i:1;s:32:\"https://facebook.com/rarathemehq\";i:2;s:31:\"https://twitter.com/rarathemehq\";i:3;s:20:\"https://linkedin.com\";i:4;s:21:\"https://pinterest.com\";i:5;s:25:\"https://google-plus-g.com\";i:6;s:21:\"https://instagram.com\";}s:14:\"social_profile\";a:6:{i:1;s:8:\"facebook\";i:2;s:7:\"twitter\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:13:\"google-plus-g\";i:6;s:9:\"instagram\";}}s:12:\"_multiwidget\";i:1;}', 'auto'),
(262, 'widget_rrtc_testimonial_widget', 'a:5:{i:1;a:4:{s:4:\"name\";s:15:\"Teressa Jackson\";s:11:\"testimonial\";s:210:\"We never thought of finding to stand alone, we\'ll never let you fall. Don\'t need permission to decide what you believe. You gotta learn something when we meet you after school. I said jump, down on Jump Street.\";s:5:\"image\";s:2:\"48\";s:11:\"designation\";s:13:\"Art Direction\";}i:2;a:4:{s:4:\"name\";s:10:\"Ben Parker\";s:11:\"testimonial\";s:249:\"Dance your cares away, worry\'s for another day. Let the music play, down at Fraggle Rock! Work you cares away, dancing\'s for another day. Let the Fraggles play, We\'re Gobo, Mokey, Wembley, Boober, Red! Dance your cares away, worry\'s for another day.\";s:5:\"image\";s:2:\"50\";s:11:\"designation\";s:20:\"Marketing Superviser\";}i:3;a:4:{s:4:\"name\";s:15:\"Amelie Anderson\";s:11:\"testimonial\";s:249:\"An endorsement is typically a well-known influencer giving their public support for a brand. But a testimonial is from a customer or client. They may be an unknown person to the reader, but they have personal experience with the product or service. \";s:5:\"image\";s:2:\"52\";s:11:\"designation\";s:18:\"CEO of XYZ Company\";}i:4;a:4:{s:4:\"name\";s:14:\"Thomas Walters\";s:11:\"testimonial\";s:265:\"Such a review may evaluate the book on the basis of personal taste. Reviewers may use the occasion of a book review for an extended essay that can be closely or loosely related to the subject of the book, or to promulgate their own ideas on the topic of a fiction .\";s:5:\"image\";s:2:\"53\";s:11:\"designation\";s:16:\"Developer at ABC\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(263, 'widget_rrtc_description_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(264, 'widget_raratheme_client_logo_widget', 'a:2:{i:1;a:5:{s:5:\"title\";s:0:\"\";s:10:\"display_bw\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"image\";a:6:{i:1;s:2:\"65\";i:2;s:2:\"64\";i:3;s:2:\"63\";i:4;s:2:\"62\";i:5;s:2:\"61\";i:6;s:2:\"60\";}s:4:\"link\";a:6:{i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";i:5;s:1:\"#\";i:6;s:1:\"#\";}}s:12:\"_multiwidget\";i:1;}', 'auto'),
(265, 'widget_raratheme_companion_faqs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(266, 'widget_raratheme_featured_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(267, 'widget_rtc_pro_twitter_feeds_widget', 'a:2:{i:1;a:7:{s:5:\"title\";s:12:\"Follow Us On\";s:8:\"username\";s:12:\"@rarathemeHQ\";s:9:\"widget-bg\";s:9:\"#ccc00333\";s:11:\"widget-link\";s:9:\"#00000000\";s:5:\"width\";i:400;s:12:\"tweetstoshow\";i:1;s:5:\"theme\";s:5:\"light\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(268, 'widget_rara_posts_category_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(269, 'widget_raratheme_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(270, 'widget_raratheme_author_bio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(271, 'widget_raratheme_custom_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(272, 'widget_raratheme_facebook_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(273, 'widget_raratheme_snapcode_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(274, 'widget_raratheme_pinterest_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(275, 'widget_raratheme_image_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(276, '_transient_jm_get_category-transient-version', '1731849594', 'on'),
(277, '_transient_jm_get_rara_portfolio_categories-transient-version', '1731664009', 'on'),
(278, '_transient_jm_get_nav_menu-transient-version', '1731664008', 'on'),
(281, '_transient_get_job_listings-transient-version', '1731674088', 'on'),
(282, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(283, 'category_children', 'a:0:{}', 'auto'),
(284, 'rara_portfolio_categories_children', 'a:0:{}', 'auto'),
(285, 'job_listing_type_children', 'a:0:{}', 'auto'),
(286, 'woocommerce_demo_store', 'no', 'on'),
(287, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'on'),
(288, 'woocommerce_shop_page_display', '', 'on'),
(289, 'woocommerce_category_archive_display', '', 'on'),
(290, 'woocommerce_default_catalog_orderby', 'menu_order', 'on'),
(291, 'woocommerce_catalog_columns', '4', 'on'),
(292, 'woocommerce_catalog_rows', '4', 'on'),
(293, 'woocommerce_single_image_width', '600', 'on'),
(294, 'woocommerce_thumbnail_image_width', '300', 'on'),
(295, 'woocommerce_thumbnail_cropping', '1:1', 'on'),
(296, 'woocommerce_thumbnail_cropping_custom_width', '4', 'on'),
(297, 'woocommerce_thumbnail_cropping_custom_height', '3', 'on'),
(298, 'woocommerce_checkout_company_field', 'optional', 'on'),
(299, 'woocommerce_checkout_address_2_field', 'optional', 'on'),
(300, 'woocommerce_checkout_phone_field', 'required', 'on'),
(301, 'woocommerce_checkout_highlight_required_fields', 'yes', 'on'),
(302, 'woocommerce_checkout_terms_and_conditions_checkbox_text', 'I have read and agree to the website [terms]', 'on'),
(303, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'on'),
(304, 'woocommerce_terms_page_id', '', 'on'),
(305, 'nav_menus_created_posts', 'a:0:{}', 'on'),
(309, 'job_manager_usage_tracking_opt_in_hide', '1', 'auto'),
(313, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1731849438;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/rara-one-click-demo-import\";s:4:\"slug\";s:26:\"rara-one-click-demo-import\";s:6:\"plugin\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/rara-one-click-demo-import/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/rara-one-click-demo-import.1.3.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/rara-one-click-demo-import/assets/icon-128x128.png?rev=1939066\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/rara-one-click-demo-import/assets/banner-772x250.png?rev=1939071\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:43:\"raratheme-companion/raratheme-companion.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/raratheme-companion\";s:4:\"slug\";s:19:\"raratheme-companion\";s:6:\"plugin\";s:43:\"raratheme-companion/raratheme-companion.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/raratheme-companion/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/raratheme-companion.1.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-256x256.png?rev=1858916\";s:2:\"1x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-128x128.png?rev=1858915\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/raratheme-companion/assets/banner-1544x500.png?rev=1858912\";s:2:\"1x\";s:74:\"https://ps.w.org/raratheme-companion/assets/banner-772x250.png?rev=1858911\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}s:55:\"wpjm-company-profile-page/wpjm-company-profile-page.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:39:\"w.org/plugins/wpjm-company-profile-page\";s:4:\"slug\";s:25:\"wpjm-company-profile-page\";s:6:\"plugin\";s:55:\"wpjm-company-profile-page/wpjm-company-profile-page.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/wpjm-company-profile-page/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wpjm-company-profile-page.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/wpjm-company-profile-page/assets/icon-256x256.png?rev=2289129\";s:2:\"1x\";s:78:\"https://ps.w.org/wpjm-company-profile-page/assets/icon-256x256.png?rev=2289129\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/wpjm-company-profile-page/assets/banner-772x250.png?rev=2289129\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/wpjm-extra-fields\";s:4:\"slug\";s:17:\"wpjm-extra-fields\";s:6:\"plugin\";s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wpjm-extra-fields/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wpjm-extra-fields.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wpjm-extra-fields/assets/icon-256x256.png?rev=2289131\";s:2:\"1x\";s:70:\"https://ps.w.org/wpjm-extra-fields/assets/icon-256x256.png?rev=2289131\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wpjm-extra-fields/assets/banner-772x250.png?rev=2289131\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:33:\"wp-job-manager/wp-job-manager.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-job-manager\";s:4:\"slug\";s:14:\"wp-job-manager\";s:6:\"plugin\";s:33:\"wp-job-manager/wp-job-manager.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-job-manager/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-job-manager.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-256x256.gif?rev=2975257\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-128x128.gif?rev=2975257\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-job-manager/assets/banner-1544x500.png?rev=2975257\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-job-manager/assets/banner-772x250.png?rev=2975257\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}}s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:5:\"1.3.4\";s:43:\"raratheme-companion/raratheme-companion.php\";s:5:\"1.4.3\";s:55:\"wpjm-company-profile-page/wpjm-company-profile-page.php\";s:5:\"1.3.0\";s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";s:5:\"1.3.0\";s:33:\"wp-job-manager/wp-job-manager.php\";s:5:\"2.4.0\";}}', 'off'),
(316, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1732270950', 'off'),
(317, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(336, '_site_transient_timeout_theme_roots', '1731851236', 'off'),
(337, '_site_transient_theme_roots', 'a:4:{s:8:\"jobscout\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(338, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1731849438;s:7:\"checked\";a:4:{s:8:\"jobscout\";s:5:\"1.1.7\";s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.9.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:8:\"jobscout\";a:6:{s:5:\"theme\";s:8:\"jobscout\";s:11:\"new_version\";s:5:\"1.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/themes/jobscout/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/jobscout.1.1.7.zip\";s:8:\"requires\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"7.3\";}}s:12:\"translations\";a:0:{}}', 'off'),
(339, '_site_transient_timeout_wp_theme_files_patterns-a7532062634293ec5f290e278d83b1bb', '1731851241', 'off'),
(340, '_site_transient_wp_theme_files_patterns-a7532062634293ec5f290e278d83b1bb', 'a:2:{s:7:\"version\";s:5:\"1.1.7\";s:8:\"patterns\";a:0:{}}', 'off'),
(341, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'auto'),
(342, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":8,\"critical\":1}', 'on'),
(343, '_transient_timeout_wpjmcom_08b600f8044a009d9109ff9dabd344ca', '1731935865', 'off'),
(344, '_transient_wpjmcom_08b600f8044a009d9109ff9dabd344ca', 'a:2:{s:8:\"_fetched\";i:1731849465;s:12:\"_remote_data\";a:1:{s:7:\"notices\";a:1:{s:18:\"core-bundle-addons\";a:8:{s:4:\"type\";s:9:\"site-wide\";s:5:\"level\";s:4:\"info\";s:4:\"icon\";N;s:7:\"heading\";s:37:\"Do you need multiple core extensions?\";s:7:\"message\";s:81:\"Get all of the core extensions together for one low price — from $159 per year.\";s:7:\"actions\";a:1:{i:0;a:4:{s:5:\"label\";s:10:\"Learn more\";s:3:\"url\";s:107:\"https://wpjobmanager.com/add-ons/bundle/?utm_source=plugin_wpjm&utm_medium=add-ons&utm_campaign=core-bundle\";s:7:\"primary\";b:1;s:6:\"target\";s:6:\"_blank\";}}s:10:\"conditions\";a:1:{i:0;a:2:{s:4:\"type\";s:7:\"screens\";s:7:\"screens\";a:2:{i:0;s:35:\"job_listing_page_job-manager-addons\";i:1;s:40:\"job_listing_page_job-manager-marketplace\";}}}s:11:\"dismissible\";b:0;}}}}', 'off');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_wp_attached_file', '2024/11/log_file_2024-11-15__09-45-49.txt'),
(6, 20, '_wp_attached_file', '2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg'),
(7, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:72:\"2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg\";s:8:\"filesize\";i:56296;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 21, '_wp_attached_file', '2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg'),
(9, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:107:\"2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg\";s:8:\"filesize\";i:48108;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 25, '_wp_attached_file', '2019/01/icon-6-1.png'),
(11, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-6-1.png\";s:8:\"filesize\";i:3013;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 26, '_wp_attached_file', '2019/01/icon-7.png'),
(13, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-7.png\";s:8:\"filesize\";i:2928;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 27, '_wp_attached_file', '2019/01/icon-8.png'),
(15, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-8.png\";s:8:\"filesize\";i:2681;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 28, '_wp_attached_file', '2019/01/icon-1.png'),
(17, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-1.png\";s:8:\"filesize\";i:3104;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 29, '_wp_attached_file', '2019/01/icon-2-1.png'),
(19, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-2-1.png\";s:8:\"filesize\";i:2981;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 30, '_wp_attached_file', '2019/01/favicon-7.png'),
(21, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2019/01/favicon-7.png\";s:8:\"filesize\";i:3386;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 31, '_wp_attached_file', '2019/01/logo-15.png'),
(23, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:19:\"2019/01/logo-15.png\";s:8:\"filesize\";i:668;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 35, '_wp_attached_file', '2019/01/icon-3-1.png'),
(25, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-3-1.png\";s:8:\"filesize\";i:3083;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 36, '_wp_attached_file', '2019/01/icon-4-1.png'),
(27, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-4-1.png\";s:8:\"filesize\";i:2984;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 37, '_wp_attached_file', '2019/01/icon-5-2.png'),
(29, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-5-2.png\";s:8:\"filesize\";i:2566;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 39, '_wp_attached_file', '2019/01/logo-6.png'),
(31, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-6.png\";s:8:\"filesize\";i:330;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 40, '_wp_attached_file', '2019/01/logo-1.png'),
(33, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-1.png\";s:8:\"filesize\";i:540;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 41, '_wp_attached_file', '2019/01/logo-2.png'),
(35, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-2.png\";s:8:\"filesize\";i:923;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 42, '_wp_attached_file', '2019/01/logo-3.png'),
(37, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-3.png\";s:8:\"filesize\";i:406;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 43, '_wp_attached_file', '2019/01/logo-4.png'),
(39, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-4.png\";s:8:\"filesize\";i:1275;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 44, '_wp_attached_file', '2019/01/logo-5.png'),
(41, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-5.png\";s:8:\"filesize\";i:964;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 48, '_wp_attached_file', '2019/01/woman-3083396_1920-1.jpg'),
(43, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:32:\"2019/01/woman-3083396_1920-1.jpg\";s:8:\"filesize\";i:62011;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 49, '_wp_attached_file', '2019/01/fezbot2000-365718-unsplash-2.jpg'),
(45, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2737;s:4:\"file\";s:40:\"2019/01/fezbot2000-365718-unsplash-2.jpg\";s:8:\"filesize\";i:236427;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 50, '_wp_attached_file', '2019/01/brooke-cagle-274465-unsplash-1.jpg'),
(48, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:42:\"2019/01/brooke-cagle-274465-unsplash-1.jpg\";s:8:\"filesize\";i:113831;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 52, '_wp_attached_file', '2019/01/girl-919048_1920-1.jpg'),
(50, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:30:\"2019/01/girl-919048_1920-1.jpg\";s:8:\"filesize\";i:47132;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 53, '_wp_attached_file', '2019/01/pexels-photo-247917-1.jpeg'),
(52, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2019/01/pexels-photo-247917-1.jpeg\";s:8:\"filesize\";i:104068;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 55, '_wp_attached_file', '2019/01/portrait-2865605_1920-1.jpg'),
(55, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:35:\"2019/01/portrait-2865605_1920-1.jpg\";s:8:\"filesize\";i:98204;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 60, '_wp_attached_file', '2019/01/ztos.png'),
(57, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:75;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2019/01/ztos.png\";s:8:\"filesize\";i:829;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 61, '_wp_attached_file', '2019/01/earth-2.0.png'),
(59, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:126;s:6:\"height\";i:30;s:4:\"file\";s:21:\"2019/01/earth-2.0.png\";s:8:\"filesize\";i:1189;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 62, '_wp_attached_file', '2019/01/goldline.png'),
(61, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:129;s:6:\"height\";i:30;s:4:\"file\";s:20:\"2019/01/goldline.png\";s:8:\"filesize\";i:1168;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 63, '_wp_attached_file', '2019/01/treva.png'),
(63, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:108;s:6:\"height\";i:30;s:4:\"file\";s:17:\"2019/01/treva.png\";s:8:\"filesize\";i:981;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 64, '_wp_attached_file', '2019/01/velocity-9.png'),
(65, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:117;s:6:\"height\";i:30;s:4:\"file\";s:22:\"2019/01/velocity-9.png\";s:8:\"filesize\";i:1185;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 65, '_wp_attached_file', '2019/01/zoo-tv.png'),
(67, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:96;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2019/01/zoo-tv.png\";s:8:\"filesize\";i:988;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 66, '_wp_attached_file', '2019/01/cropped-favicon-7.png'),
(69, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/01/cropped-favicon-7.png\";s:8:\"filesize\";i:3369;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 66, '_wp_attachment_context', 'site-icon'),
(71, 85, '_wp_attached_file', '2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg'),
(72, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:72:\"2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg\";s:8:\"filesize\";i:62919;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 88, '_wp_attached_file', '2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg'),
(75, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1631;s:6:\"height\";i:1080;s:4:\"file\";s:76:\"2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg\";s:8:\"filesize\";i:66592;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 91, '_wp_attached_file', '2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg'),
(78, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1444;s:6:\"height\";i:1080;s:4:\"file\";s:98:\"2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg\";s:8:\"filesize\";i:72027;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 95, '_wp_attached_file', '2019/01/StockSnap_RNGXYOKIBT-1.jpg'),
(81, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:5000;s:6:\"height\";i:3333;s:4:\"file\";s:34:\"2019/01/StockSnap_RNGXYOKIBT-1.jpg\";s:8:\"filesize\";i:358671;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 98, '_wp_attached_file', '2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg'),
(84, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:79:\"2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg\";s:8:\"filesize\";i:70939;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 101, '_wp_attached_file', '2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg'),
(87, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:95:\"2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg\";s:8:\"filesize\";i:71789;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 104, '_wp_attached_file', '2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg'),
(90, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:96:\"2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg\";s:8:\"filesize\";i:71315;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 107, '_wp_attached_file', '2019/01/StockSnap_64EKVZ4V2B-1.jpg'),
(93, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4948;s:6:\"height\";i:3303;s:4:\"file\";s:34:\"2019/01/StockSnap_64EKVZ4V2B-1.jpg\";s:8:\"filesize\";i:339437;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 110, '_wp_attached_file', '2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg'),
(96, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:85:\"2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg\";s:8:\"filesize\";i:71009;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 113, '_wp_attached_file', '2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg'),
(99, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1605;s:6:\"height\";i:1080;s:4:\"file\";s:69:\"2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg\";s:8:\"filesize\";i:39402;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 114, '_wp_attached_file', '2019/01/StockSnap_E5GUBD8MWN-1.jpg'),
(102, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:7680;s:6:\"height\";i:5120;s:4:\"file\";s:34:\"2019/01/StockSnap_E5GUBD8MWN-1.jpg\";s:8:\"filesize\";i:331697;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 882, '_wp_attached_file', '2017/12/album-1.jpg'),
(105, 882, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2017/12/album-1.jpg\";s:8:\"filesize\";i:12742;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 882, '_wxr_import_parent', '881'),
(107, 883, '_wp_attached_file', '2017/12/beanie-2.jpg'),
(108, 883, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2017/12/beanie-2.jpg\";s:8:\"filesize\";i:7747;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 883, '_wxr_import_parent', '880'),
(110, 884, '_wp_attached_file', '2017/12/beanie-with-logo-1.jpg'),
(111, 884, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2017/12/beanie-with-logo-1.jpg\";s:8:\"filesize\";i:7860;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 884, '_wxr_import_parent', '879'),
(113, 885, '_wp_attached_file', '2017/12/belt-2.jpg'),
(114, 885, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2017/12/belt-2.jpg\";s:8:\"filesize\";i:9457;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 885, '_wxr_import_parent', '878'),
(116, 886, '_wp_attached_file', '2017/12/cap-2-600x600-1.jpg'),
(117, 886, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2017/12/cap-2-600x600-1.jpg\";s:8:\"filesize\";i:6463;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 886, '_wxr_import_parent', '877'),
(119, 887, '_wp_attached_file', '2017/12/hoodie-with-logo-2.jpg'),
(120, 887, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2017/12/hoodie-with-logo-2.jpg\";s:8:\"filesize\";i:11931;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 887, '_wxr_import_parent', '876'),
(122, 888, '_wp_attached_file', '2017/12/hoodie-2-600x600-1.jpg'),
(123, 888, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2017/12/hoodie-2-600x600-1.jpg\";s:8:\"filesize\";i:7879;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 888, '_wxr_import_parent', '876'),
(125, 889, '_wp_attached_file', '2017/12/hoodie-with-zipper-2-600x600-1.jpg'),
(126, 889, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:42:\"2017/12/hoodie-with-zipper-2-600x600-1.jpg\";s:8:\"filesize\";i:9344;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 889, '_wxr_import_parent', '874'),
(128, 890, '_wp_attached_file', '2017/12/logo-1.jpg'),
(129, 890, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2017/12/logo-1.jpg\";s:8:\"filesize\";i:24241;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 890, '_wxr_import_parent', '874'),
(131, 891, '_wp_attached_file', '2017/12/polo-2.jpg'),
(132, 891, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2017/12/polo-2.jpg\";s:8:\"filesize\";i:10444;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 891, '_wxr_import_parent', '872'),
(134, 892, '_wp_attached_file', '2017/12/single-1.jpg'),
(135, 892, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2017/12/single-1.jpg\";s:8:\"filesize\";i:13151;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 892, '_wxr_import_parent', '872'),
(137, 894, '_wp_attached_file', '2017/12/long-sleeve-tee-2.jpg'),
(138, 894, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2017/12/long-sleeve-tee-2.jpg\";s:8:\"filesize\";i:11278;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 894, '_wxr_import_parent', '870'),
(140, 895, '_wp_attached_file', '2017/12/sunglasses-2.jpg'),
(141, 895, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2017/12/sunglasses-2.jpg\";s:8:\"filesize\";i:7405;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 895, '_wxr_import_parent', '869'),
(143, 896, '_wp_attached_file', '2017/12/tshirt-2.jpg'),
(144, 896, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2017/12/tshirt-2.jpg\";s:8:\"filesize\";i:9992;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 896, '_wxr_import_parent', '868'),
(146, 897, '_wp_attached_file', '2017/12/t-shirt-with-logo-1.jpg'),
(147, 897, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2017/12/t-shirt-with-logo-1.jpg\";s:8:\"filesize\";i:12227;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 897, '_wxr_import_parent', '867'),
(149, 898, '_wp_attached_file', '2017/12/pennant-1-300x300-1.jpg'),
(150, 898, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:31:\"2017/12/pennant-1-300x300-1.jpg\";s:8:\"filesize\";i:5600;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 898, '_wxr_import_parent', '866'),
(152, 900, '_wp_attached_file', '2017/12/vneck-tee-2.jpg'),
(153, 900, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2017/12/vneck-tee-2.jpg\";s:8:\"filesize\";i:11725;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 900, '_wxr_import_parent', '864'),
(155, 966, '_wp_attached_file', '2019/04/woocommerce-placeholder.png'),
(156, 966, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:35:\"2019/04/woocommerce-placeholder.png\";s:8:\"filesize\";i:20422;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 45, '_tracked_submitted', '1731664006'),
(158, 45, '_filled', '0'),
(159, 45, '_featured', '0'),
(160, 45, '_featured', '1'),
(161, 45, '_thumbnail_id', '40'),
(162, 45, '_job_expires', '2022-02-21'),
(163, 45, '_job_location', 'Fresno, California'),
(164, 45, '_job_important_info', 'Bachelor Degree Qualification'),
(165, 45, '_application', 'example@domain.com'),
(166, 45, '_company_name', 'Codewing Solutions'),
(167, 45, '_company_website', 'http://xyz@mail.com'),
(168, 45, '_job_salary', '$15 - $500/per hourly'),
(169, 45, '_company_tagline', 'Important rite of passage'),
(170, 45, '_company_twitter', '@xyzdemo'),
(171, 45, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(172, 73, '_tracked_submitted', '1731664006'),
(173, 73, '_filled', '0'),
(174, 73, '_featured', '0'),
(175, 73, '_thumbnail_id', '44'),
(176, 73, '_job_expires', '2022-02-22'),
(177, 73, '_job_location', 'Prague, Czech Republic'),
(178, 73, '_job_important_info', 'Bachelor Degree Qualification'),
(179, 73, '_application', 'example@domain.com'),
(180, 73, '_company_name', 'XYZ Solutions'),
(181, 73, '_company_website', 'http://xyz@mail.com'),
(182, 73, '_job_salary', '$19 - $600/per hourly'),
(183, 73, '_company_tagline', 'Important rite of passage'),
(184, 73, '_company_twitter', '@xyzdemo'),
(185, 73, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(186, 74, '_tracked_submitted', '1731664006'),
(187, 74, '_filled', '0'),
(188, 74, '_featured', '0'),
(189, 74, '_featured', '1'),
(190, 74, '_thumbnail_id', '43'),
(191, 74, '_job_expires', '2022-02-22'),
(192, 74, '_job_location', 'Manhattan, US'),
(193, 74, '_job_important_info', 'Bachelor Degree Qualification'),
(194, 74, '_application', 'example@domain.com'),
(195, 74, '_company_name', 'Codewing Solutions'),
(196, 74, '_company_website', 'http://xyz@mail.com'),
(197, 74, '_job_salary', '$15 - $500/per hourly'),
(198, 74, '_company_tagline', 'Important rite of passage'),
(199, 74, '_company_twitter', '@xyzdemo'),
(200, 74, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(201, 77, '_tracked_submitted', '1731664007'),
(202, 77, '_filled', '0'),
(203, 77, '_featured', '0'),
(204, 77, '_thumbnail_id', '42'),
(205, 77, '_job_expires', '2022-02-22'),
(206, 77, '_job_location', 'Chelsea, UK'),
(207, 77, '_job_important_info', 'Bachelor Degree Qualification'),
(208, 77, '_application', 'example@domain.com'),
(209, 77, '_company_name', 'ABC Solutions'),
(210, 77, '_company_website', 'http://xyz@mail.com'),
(211, 77, '_job_salary', '$20 - $500/per hourly'),
(212, 77, '_company_tagline', 'Important rite of passage'),
(213, 77, '_company_twitter', '@xyzdemo'),
(214, 77, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(215, 78, '_tracked_submitted', '1731664007'),
(216, 78, '_filled', '0'),
(217, 78, '_featured', '0'),
(218, 78, '_thumbnail_id', '41'),
(219, 78, '_job_expires', '2022-02-22'),
(220, 78, '_job_location', 'New York, US'),
(221, 78, '_job_important_info', 'Bachelor Degree Qualification'),
(222, 78, '_application', 'example@domain.com'),
(223, 78, '_company_name', 'RMP Solutions'),
(224, 78, '_company_website', 'http://xyz@mail.com'),
(225, 78, '_job_salary', '$15 - $500/per hourly'),
(226, 78, '_company_tagline', 'Important rite of passage'),
(227, 78, '_company_twitter', '@xyzdemo'),
(228, 78, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(229, 79, '_tracked_submitted', '1731664007'),
(230, 79, '_filled', '0'),
(231, 79, '_featured', '0'),
(232, 79, '_thumbnail_id', '39'),
(233, 79, '_job_expires', '2022-02-22'),
(234, 79, '_job_location', 'Warsaw, Poland'),
(235, 79, '_job_important_info', 'Bachelor Degree Qualification'),
(236, 79, '_application', 'example@domain.com'),
(237, 79, '_company_name', 'Ace University'),
(238, 79, '_company_website', 'http://xyz@mail.com'),
(239, 79, '_job_salary', '$15 - $500/per hourly'),
(240, 79, '_company_tagline', 'Important rite of passage'),
(241, 79, '_company_twitter', '@xyzdemo'),
(242, 79, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(243, 130, '_menu_item_type', 'post_type'),
(244, 130, '_menu_item_object_id', '13'),
(245, 130, '_menu_item_object', 'page'),
(246, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 131, '_menu_item_type', 'post_type'),
(249, 131, '_menu_item_menu_item_parent', '144'),
(250, 131, '_menu_item_object_id', '15'),
(251, 131, '_menu_item_object', 'page'),
(252, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 132, '_menu_item_type', 'post_type'),
(255, 132, '_menu_item_menu_item_parent', '925'),
(256, 132, '_menu_item_object_id', '9'),
(257, 132, '_menu_item_object', 'page'),
(258, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 133, '_menu_item_type', 'post_type'),
(261, 133, '_menu_item_object_id', '6'),
(262, 133, '_menu_item_object', 'page'),
(263, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 144, '_menu_item_type', 'post_type'),
(266, 144, '_menu_item_object_id', '140'),
(267, 144, '_menu_item_object', 'page'),
(268, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 145, '_menu_item_type', 'taxonomy'),
(271, 145, '_menu_item_menu_item_parent', '144'),
(272, 145, '_menu_item_object_id', '10'),
(273, 145, '_menu_item_object', 'category'),
(274, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 146, '_menu_item_type', 'post_type'),
(276, 146, '_menu_item_menu_item_parent', '144'),
(277, 146, '_menu_item_object_id', '140'),
(278, 146, '_menu_item_object', 'page'),
(279, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 151, '_menu_item_type', 'post_type'),
(282, 151, '_menu_item_object_id', '149'),
(283, 151, '_menu_item_object', 'page'),
(284, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 152, '_menu_item_type', 'custom'),
(287, 152, '_menu_item_menu_item_parent', '144'),
(288, 152, '_menu_item_object_id', '152'),
(289, 152, '_menu_item_object', 'custom'),
(290, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 152, '_menu_item_url', 'http://rarathemesdemo.com/jobscout/?s=job'),
(292, 153, '_menu_item_type', 'custom'),
(293, 153, '_menu_item_menu_item_parent', '144'),
(294, 153, '_menu_item_object_id', '153'),
(295, 153, '_menu_item_object', 'custom'),
(296, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 153, '_menu_item_url', 'http://rarathemesdemo.com/jobscout/404'),
(298, 921, '_tracked_submitted', '1731664007'),
(299, 921, '_filled', '0'),
(300, 921, '_featured', '0'),
(301, 921, '_thumbnail_id', '44'),
(302, 921, '_job_expires', '2022-02-23'),
(303, 921, '_job_location', 'Prague, Czech Republic'),
(304, 921, '_application', 'example@domain.com'),
(305, 921, '_company_name', 'RNM University'),
(306, 921, '_job_salary', '$15 - $500/per hourly'),
(307, 921, '_company_website', 'http://xyz@mail.com'),
(308, 921, '_job_important_info', 'Bachelor Degree Qualification'),
(309, 921, '_company_twitter', '@xyzdemo'),
(310, 922, '_tracked_submitted', '1731664008'),
(311, 922, '_filled', '0'),
(312, 922, '_featured', '0'),
(313, 922, '_thumbnail_id', '41'),
(314, 922, '_job_expires', '2022-02-23'),
(315, 922, '_job_location', 'Warsaw, Poland'),
(316, 922, '_application', 'example@domain.com'),
(317, 922, '_company_name', 'Ace University'),
(318, 922, '_job_salary', '$15 - $500/per hourly'),
(319, 922, '_company_website', 'http://xyz@mail.com'),
(320, 922, '_job_important_info', 'Bachelor Degree Qualification'),
(321, 922, '_company_tagline', 'Important rite of passage'),
(322, 922, '_company_twitter', '@xyzdemo'),
(323, 922, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(324, 923, '_tracked_submitted', '1731664008'),
(325, 923, '_filled', '0'),
(326, 923, '_featured', '0'),
(327, 923, '_thumbnail_id', '42'),
(328, 923, '_job_expires', '2022-02-23'),
(329, 923, '_job_location', 'San Carlos, CA'),
(330, 923, '_application', 'example@domain.com'),
(331, 923, '_company_name', 'LA University'),
(332, 923, '_job_salary', '$15 - $500/per hourly'),
(333, 923, '_company_website', 'http://xyz@mail.com'),
(334, 923, '_job_important_info', 'Bachelor Degree Qualification'),
(335, 923, '_company_tagline', 'Important rite of passage'),
(336, 923, '_company_twitter', '@xyzdemo'),
(337, 923, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(338, 928, '_tracked_submitted', '1731664008'),
(339, 928, '_filled', '0'),
(340, 928, '_featured', '0'),
(341, 928, '_thumbnail_id', '39'),
(342, 928, '_job_expires', '2022-02-23'),
(343, 928, '_job_location', 'Kathmandu, Nepal'),
(344, 928, '_application', 'example@domain.com'),
(345, 928, '_company_name', 'CA University'),
(346, 928, '_job_salary', '$20 - $500/per hourly'),
(347, 928, '_company_website', 'http://xyz@mail.com'),
(348, 928, '_job_important_info', 'Bachelor Degree Qualification'),
(349, 928, '_company_tagline', 'Important rite of passage'),
(350, 928, '_company_twitter', '@xyzdemo'),
(351, 928, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(352, 967, '_wp_page_template', 'default'),
(353, 6, '_wp_page_template', 'default'),
(354, 6, '_jobscout_sidebar_layout', 'default-sidebar'),
(355, 968, '_wp_page_template', 'templates/portfolio.php'),
(356, 8, '_wp_page_template', 'default'),
(357, 8, '_jobscout_sidebar_layout', 'default-sidebar'),
(358, 13, '_wp_page_template', 'default'),
(359, 154, '_menu_item_type', 'post_type'),
(360, 154, '_menu_item_menu_item_parent', '144'),
(361, 154, '_menu_item_object_id', '103'),
(362, 154, '_menu_item_object', 'post'),
(363, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 861, '_menu_item_type', 'post_type'),
(366, 861, '_menu_item_object_id', '147'),
(367, 861, '_menu_item_object', 'page'),
(368, 861, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(370, 907, '_menu_item_type', 'post_type'),
(371, 907, '_menu_item_menu_item_parent', '908'),
(372, 907, '_menu_item_object_id', '903'),
(373, 907, '_menu_item_object', 'page'),
(374, 907, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 908, '_menu_item_type', 'post_type'),
(377, 908, '_menu_item_object_id', '901'),
(378, 908, '_menu_item_object', 'page'),
(379, 908, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 909, '_menu_item_type', 'post_type'),
(382, 909, '_menu_item_menu_item_parent', '908'),
(383, 909, '_menu_item_object_id', '905'),
(384, 909, '_menu_item_object', 'page'),
(385, 909, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 916, '_menu_item_type', 'post_type'),
(388, 916, '_menu_item_menu_item_parent', '908'),
(389, 916, '_menu_item_object_id', '913'),
(390, 916, '_menu_item_object', 'page'),
(391, 916, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(393, 917, '_menu_item_type', 'post_type'),
(394, 917, '_menu_item_object_id', '901'),
(395, 917, '_menu_item_object', 'page'),
(396, 917, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 918, '_menu_item_type', 'post_type'),
(399, 918, '_menu_item_object_id', '149'),
(400, 918, '_menu_item_object', 'page'),
(401, 918, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(403, 919, '_menu_item_type', 'post_type'),
(404, 919, '_menu_item_object_id', '140'),
(405, 919, '_menu_item_object', 'page'),
(406, 919, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 920, '_menu_item_type', 'post_type'),
(409, 920, '_menu_item_object_id', '15'),
(410, 920, '_menu_item_object', 'page'),
(411, 920, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(413, 924, '_menu_item_type', 'post_type'),
(414, 924, '_menu_item_object_id', '9'),
(415, 924, '_menu_item_object', 'page'),
(416, 924, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 925, '_menu_item_type', 'post_type'),
(418, 925, '_menu_item_object_id', '10'),
(419, 925, '_menu_item_object', 'page'),
(420, 925, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 926, '_menu_item_type', 'post_type'),
(422, 926, '_menu_item_menu_item_parent', '925'),
(423, 926, '_menu_item_object_id', '8'),
(424, 926, '_menu_item_object', 'page'),
(425, 926, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(426, 15, '_wp_page_template', 'default'),
(427, 15, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(428, 15, '_job_board_pro_sidebar', 'default-sidebar'),
(431, 84, '_thumbnail_id', '113'),
(432, 84, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(433, 84, '_job_board_pro_sidebar', 'default-sidebar'),
(434, 84, '_raratheme_view_count', '112'),
(437, 87, '_thumbnail_id', '88'),
(438, 87, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(439, 87, '_job_board_pro_sidebar', 'default-sidebar'),
(440, 87, '_raratheme_view_count', '161'),
(443, 90, '_thumbnail_id', '114'),
(444, 90, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(445, 90, '_job_board_pro_sidebar', 'default-sidebar'),
(446, 90, '_raratheme_view_count', '159'),
(447, 90, '_job_board_pro_post_like', '1'),
(448, 90, '_job_board_pro_post_like_ip', 'a:1:{i:0;s:13:\"27.34.105.132\";}'),
(451, 94, '_thumbnail_id', '95'),
(452, 94, '_job_board_pro_sidebar_layout', 'default-sidebar');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(453, 94, '_job_board_pro_sidebar', 'default-sidebar'),
(454, 94, '_raratheme_view_count', '216'),
(457, 97, '_thumbnail_id', '98'),
(458, 97, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(459, 97, '_job_board_pro_sidebar', 'default-sidebar'),
(460, 97, '_raratheme_view_count', '142'),
(463, 100, '_thumbnail_id', '101'),
(464, 100, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(465, 100, '_job_board_pro_sidebar', 'default-sidebar'),
(466, 100, '_raratheme_view_count', '182'),
(467, 100, '_job_board_pro_post_like', '1'),
(468, 100, '_job_board_pro_post_like_ip', 'a:1:{i:0;s:13:\"27.34.105.132\";}'),
(471, 103, '_thumbnail_id', '104'),
(472, 103, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(473, 103, '_job_board_pro_sidebar', 'default-sidebar'),
(474, 103, '_raratheme_view_count', '909'),
(477, 106, '_thumbnail_id', '107'),
(478, 106, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(479, 106, '_job_board_pro_sidebar', 'default-sidebar'),
(480, 106, '_raratheme_view_count', '288'),
(483, 109, '_thumbnail_id', '110'),
(484, 109, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(485, 109, '_job_board_pro_sidebar', 'default-sidebar'),
(486, 109, '_raratheme_view_count', '334'),
(489, 112, '_thumbnail_id', '85'),
(490, 112, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(491, 112, '_job_board_pro_sidebar', 'default-sidebar'),
(492, 112, '_raratheme_view_count', '512'),
(493, 140, '_thumbnail_id', '48'),
(494, 140, '_wp_page_template', 'default'),
(495, 140, '_job_board_pro_sidebar_layout', 'no-sidebar'),
(496, 140, '_job_board_pro_sidebar', 'default-sidebar'),
(497, 140, '_jobscout_sidebar_layout', 'no-sidebar'),
(498, 140, '_wxr_import_has_attachment_refs', '1'),
(499, 147, '_wp_page_template', 'templates/portfolio.php'),
(500, 149, '_thumbnail_id', '21'),
(501, 149, '_wp_page_template', 'default'),
(502, 149, '_wxr_import_has_attachment_refs', '1'),
(503, 901, '_wp_page_template', 'default'),
(504, 903, '_wp_page_template', 'default'),
(505, 903, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(506, 903, '_job_board_pro_sidebar', 'default-sidebar'),
(507, 905, '_wp_page_template', 'default'),
(508, 905, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(509, 905, '_job_board_pro_sidebar', 'default-sidebar'),
(510, 913, '_wp_page_template', 'default'),
(511, 913, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(512, 913, '_job_board_pro_sidebar', 'default-sidebar'),
(513, 936, '_wp_page_template', 'templates/login-registration.php'),
(514, 936, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(515, 936, '_job_board_pro_sidebar', 'default-sidebar'),
(516, 954, '_wp_page_template', 'default'),
(519, 116, '_thumbnail_id', '91'),
(520, 116, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(521, 116, '_job_board_pro_sidebar', 'default-sidebar'),
(522, 116, '_raratheme_view_count', '657'),
(523, 838, '_thumbnail_id', '107'),
(524, 844, '_thumbnail_id', '110'),
(525, 845, '_thumbnail_id', '104'),
(526, 846, '_thumbnail_id', '95'),
(527, 847, '_thumbnail_id', '91'),
(528, 853, '_thumbnail_id', '50'),
(529, 855, '_thumbnail_id', '85'),
(530, 857, '_thumbnail_id', '114'),
(531, 860, '_thumbnail_id', '101'),
(532, 1, '_wp_trash_meta_status', 'publish'),
(533, 1, '_wp_trash_meta_time', '1731849594'),
(534, 1, '_wp_desired_post_slug', 'hello-world'),
(535, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-11-15 09:43:00', '2024-11-15 09:43:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-11-17 13:19:54', '2024-11-17 13:19:54', '', 0, 'http://wordpress.local/?p=1', 0, 'post', '', 1),
(2, 1, '2024-11-15 09:43:00', '2024-11-15 09:43:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpress.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-11-15 09:43:00', '2024-11-15 09:43:00', '', 0, 'http://wordpress.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-11-15 09:43:00', '2024-11-15 09:43:00', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wordpress.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-11-15 09:43:00', '2024-11-15 09:43:00', '', 0, 'http://wordpress.local/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-11-15 09:43:00', '2024-11-15 09:43:00', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-11-15 09:43:00', '2024-11-15 09:43:00', '', 0, 'http://wordpress.local/2024/11/15/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-11-15 09:43:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-11-15 09:43:15', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?p=5', 0, 'post', '', 0),
(6, 1, '2019-01-22 08:29:47', '2019-01-22 08:29:47', '[contact-form-7 id=\"135\" title=\"Contact\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/contact/', 0, 'page', '', 0),
(7, 1, '2024-11-15 09:45:49', '2024-11-15 09:45:49', '', 'Rara One Click Demo Import - log_file_2024-11-15__09-45-49', '', 'inherit', 'open', 'closed', '', 'rara-one-click-demo-import-log_file_2024-11-15__09-45-49', '', '', '2024-11-15 09:45:49', '2024-11-15 09:45:49', '', 0, 'http://wordpress.local/wp-content/uploads/2024/11/log_file_2024-11-15__09-45-49.txt', 0, 'attachment', 'text/plain', 0),
(8, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[submit_job_form]', 'Post a Job', '', 'private', 'closed', 'closed', '', 'post-a-job', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/post-a-job/', 0, 'page', '', 0),
(9, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[job_dashboard]', 'Job Dashboard', '', 'publish', 'closed', 'closed', '', 'job-dashboard', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/job-dashboard/', 0, 'page', '', 0),
(10, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[jobs]', 'Jobs', '', 'publish', 'closed', 'closed', '', 'jobs', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/jobs/', 0, 'page', '', 0),
(13, 1, '2019-01-22 08:54:17', '2019-01-22 08:54:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-22 08:54:17', '2019-01-22 08:54:17', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=13', 0, 'page', '', 0),
(15, 1, '2019-01-22 08:54:27', '2019-01-22 08:54:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-01-22 08:54:27', '2019-01-22 08:54:27', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=15', 0, 'page', '', 0),
(20, 1, '2019-01-22 09:09:20', '2019-01-22 09:09:20', '', 'laptop-desk-computer-writing-apple-table-693727-pxhere.com (2)', '', 'inherit', 'open', 'closed', '', 'laptop-desk-computer-writing-apple-table-693727-pxhere-com-2', '', '', '2019-01-22 09:09:20', '2019-01-22 09:09:20', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-01-22 09:21:40', '2019-01-22 09:21:40', '', 'interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere-com-1', '', '', '2019-01-22 09:21:40', '2019-01-22 09:21:40', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-01-22 09:29:07', '2019-01-22 09:29:07', '', 'icon-6 (1)', '', 'inherit', 'open', 'closed', '', 'icon-6-1', '', '', '2019-01-22 09:29:07', '2019-01-22 09:29:07', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-6-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-01-22 09:29:08', '2019-01-22 09:29:08', '', 'icon-7', '', 'inherit', 'open', 'closed', '', 'icon-7', '', '', '2019-01-22 09:29:08', '2019-01-22 09:29:08', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-7.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-01-22 09:29:09', '2019-01-22 09:29:09', '', 'icon-8', '', 'inherit', 'open', 'closed', '', 'icon-8', '', '', '2019-01-22 09:29:09', '2019-01-22 09:29:09', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-8.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-01-22 09:29:10', '2019-01-22 09:29:10', '', 'icon-1', '', 'inherit', 'open', 'closed', '', 'icon-1', '', '', '2019-01-22 09:29:10', '2019-01-22 09:29:10', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-01-22 09:29:13', '2019-01-22 09:29:13', '', 'icon-2 (1)', '', 'inherit', 'open', 'closed', '', 'icon-2-1', '', '', '2019-01-22 09:29:13', '2019-01-22 09:29:13', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-2-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-01-22 09:29:14', '2019-01-22 09:29:14', '', 'favicon (7)', '', 'inherit', 'open', 'closed', '', 'favicon-7', '', '', '2019-01-22 09:29:14', '2019-01-22 09:29:14', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/favicon-7.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-01-22 09:29:15', '2019-01-22 09:29:15', '', 'logo (15)', '', 'inherit', 'open', 'closed', '', 'logo-15', '', '', '2019-01-22 09:29:15', '2019-01-22 09:29:15', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-15.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-01-22 09:37:20', '2019-01-22 09:37:20', '', 'icon-3 (1)', '', 'inherit', 'open', 'closed', '', 'icon-3-1', '', '', '2019-01-22 09:37:20', '2019-01-22 09:37:20', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-3-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-01-22 09:37:21', '2019-01-22 09:37:21', '', 'icon-4 (1)', '', 'inherit', 'open', 'closed', '', 'icon-4-1', '', '', '2019-01-22 09:37:21', '2019-01-22 09:37:21', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-4-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-01-22 09:37:22', '2019-01-22 09:37:22', '', 'icon-5 (2)', '', 'inherit', 'open', 'closed', '', 'icon-5-2', '', '', '2019-01-22 09:37:22', '2019-01-22 09:37:22', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-5-2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2019-01-22 09:53:42', '2019-01-22 09:53:42', '', 'logo-6', '', 'inherit', 'open', 'closed', '', 'logo-6', '', '', '2019-01-22 09:53:42', '2019-01-22 09:53:42', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-6.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-01-22 09:53:43', '2019-01-22 09:53:43', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2019-01-22 09:53:43', '2019-01-22 09:53:43', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-01-22 09:53:44', '2019-01-22 09:53:44', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-01-22 09:53:44', '2019-01-22 09:53:44', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-01-22 09:53:45', '2019-01-22 09:53:45', '', 'logo-3', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2019-01-22 09:53:45', '2019-01-22 09:53:45', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-3.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-01-22 09:53:46', '2019-01-22 09:53:46', '', 'logo-4', '', 'inherit', 'open', 'closed', '', 'logo-4', '', '', '2019-01-22 09:53:46', '2019-01-22 09:53:46', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-4.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-01-22 09:53:47', '2019-01-22 09:53:47', '', 'logo-5', '', 'inherit', 'open', 'closed', '', 'logo-5', '', '', '2019-01-22 09:53:47', '2019-01-22 09:53:47', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-5.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-01-22 10:33:57', '2019-01-22 10:33:57', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Web Designer/Developer', '', 'expired', 'closed', 'closed', '', 'web-designer-developer', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=45', -1, 'job_listing', '', 0),
(48, 1, '2019-01-22 10:54:12', '2019-01-22 10:54:12', '', 'woman-3083396_1920 (1)', '', 'inherit', 'open', 'closed', '', 'woman-3083396_1920-1', '', '', '2019-01-22 10:54:12', '2019-01-22 10:54:12', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/woman-3083396_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-01-22 10:54:21', '2019-01-22 10:54:21', '', 'fezbot2000-365718-unsplash (2)', '', 'inherit', 'open', 'closed', '', 'fezbot2000-365718-unsplash-2', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 149, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/fezbot2000-365718-unsplash-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-22 10:57:47', '2019-01-22 10:57:47', '', 'brooke-cagle-274465-unsplash (1)', '', 'inherit', 'open', 'closed', '', 'brooke-cagle-274465-unsplash-1', '', '', '2019-01-22 10:57:47', '2019-01-22 10:57:47', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/brooke-cagle-274465-unsplash-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-01-22 11:00:37', '2019-01-22 11:00:37', '', 'girl-919048_1920 (1)', '', 'inherit', 'open', 'closed', '', 'girl-919048_1920-1', '', '', '2019-01-22 11:00:37', '2019-01-22 11:00:37', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/girl-919048_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-01-22 11:00:56', '2019-01-22 11:00:56', '', 'pexels-photo-247917 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-247917-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 149, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/pexels-photo-247917-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-01-22 11:01:06', '2019-01-22 11:01:06', '', 'portrait-2865605_1920 (1)', '', 'inherit', 'open', 'closed', '', 'portrait-2865605_1920-1', '', '', '2019-01-22 11:01:06', '2019-01-22 11:01:06', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/portrait-2865605_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-22 11:11:51', '2019-01-22 11:11:51', '', 'ztos', '', 'inherit', 'open', 'closed', '', 'ztos', '', '', '2019-01-22 11:11:51', '2019-01-22 11:11:51', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/ztos.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-01-22 11:11:52', '2019-01-22 11:11:52', '', 'earth-2.0', '', 'inherit', 'open', 'closed', '', 'earth-2-0', '', '', '2019-01-22 11:11:52', '2019-01-22 11:11:52', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/earth-2.0.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-01-22 11:11:53', '2019-01-22 11:11:53', '', 'goldline', '', 'inherit', 'open', 'closed', '', 'goldline', '', '', '2019-01-22 11:11:53', '2019-01-22 11:11:53', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/goldline.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-01-22 11:11:54', '2019-01-22 11:11:54', '', 'treva', '', 'inherit', 'open', 'closed', '', 'treva', '', '', '2019-01-22 11:11:54', '2019-01-22 11:11:54', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/treva.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-01-22 11:11:55', '2019-01-22 11:11:55', '', 'velocity-9', '', 'inherit', 'open', 'closed', '', 'velocity-9', '', '', '2019-01-22 11:11:55', '2019-01-22 11:11:55', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/velocity-9.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-01-22 11:11:56', '2019-01-22 11:11:56', '', 'zoo-tv', '', 'inherit', 'open', 'closed', '', 'zoo-tv', '', '', '2019-01-22 11:11:56', '2019-01-22 11:11:56', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/zoo-tv.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-01-22 11:14:21', '2019-01-22 11:14:21', 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/cropped-favicon-7.png', 'cropped-favicon-7.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-7-png', '', '', '2019-01-22 11:14:21', '2019-01-22 11:14:21', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/cropped-favicon-7.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2019-01-23 06:08:30', '2019-01-23 06:08:30', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Application Developer for Android', '', 'expired', 'closed', 'closed', '', 'application-developer-for-android', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=73', 0, 'job_listing', '', 0),
(74, 1, '2019-01-23 06:12:23', '2019-01-23 06:12:23', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'C Developer (Senior) C.Net', '', 'expired', 'closed', 'closed', '', 'c-developer-senior-c-net', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=74', -1, 'job_listing', '', 0),
(77, 1, '2019-01-23 06:40:21', '2019-01-23 06:40:21', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Car Financed Required For Bank', '', 'expired', 'closed', 'closed', '', 'car-financed-required-for-bank', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=77', 0, 'job_listing', '', 0),
(78, 1, '2019-01-23 06:43:42', '2019-01-23 06:43:42', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Physician Assistant at ABC Institute', '', 'expired', 'closed', 'closed', '', 'physician-assistant-at-abc-institute', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=78', 0, 'job_listing', '', 0),
(79, 1, '2019-01-23 06:46:54', '2019-01-23 06:46:54', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Post of the CEO Doctorate Researcher Office', '', 'expired', 'closed', 'closed', '', 'post-of-the-ceo-doctorate-researcher-office', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=79', 0, 'job_listing', '', 0),
(84, 1, '2019-01-23 07:43:05', '2019-01-23 07:43:05', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Every single Machine Learning course on the internet, ranked by your reviews', '', 'publish', 'closed', 'closed', '', 'every-single-machine-learning-course-on-the-internet-ranked-by-your-reviews', '', '', '2019-01-23 07:43:05', '2019-01-23 07:43:05', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=84', 0, 'post', '', 0),
(85, 1, '2019-01-23 07:42:59', '2019-01-23 07:42:59', '', 'desk-notebook-writing-work-hand-working-1325885-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'desk-notebook-writing-work-hand-working-1325885-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 84, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-01-23 07:44:58', '2019-01-23 07:44:58', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Want to know how Deep Learning works? Heres a quick guide for everyone', '', 'publish', 'closed', 'closed', '', 'want-to-know-how-deep-learning-works-heres-a-quick-guide-for-everyone', '', '', '2019-01-23 07:44:58', '2019-01-23 07:44:58', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=87', 0, 'post', '', 0),
(88, 1, '2019-01-23 07:44:54', '2019-01-23 07:44:54', '', 'computer-hand-man-working-person-technology-1076173-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'computer-hand-man-working-person-technology-1076173-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 87, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-23 07:49:08', '2019-01-23 07:49:08', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Understanding Capsule Networks AI’s Alluring New Architecture', '', 'publish', 'closed', 'closed', '', 'understanding-capsule-networks-ais-alluring-new-architecture', '', '', '2019-01-23 07:49:08', '2019-01-23 07:49:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=90', 0, 'post', '', 0),
(91, 1, '2019-01-23 07:49:01', '2019-01-23 07:49:01', '', 'african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 90, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-23 07:54:41', '2019-01-23 07:54:41', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Machine Learning is Fun! Part 4: Modern Face Recognition with Deep Learning', '', 'publish', 'closed', 'closed', '', 'machine-learning-is-fun-part-4-modern-face-recognition-with-deep-learning', '', '', '2019-01-23 07:54:41', '2019-01-23 07:54:41', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=94', 0, 'post', '', 0),
(95, 1, '2019-01-23 07:54:34', '2019-01-23 07:54:34', '', 'StockSnap_RNGXYOKIBT (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_rngxyokibt-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 94, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_RNGXYOKIBT-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-01-23 09:01:25', '2019-01-23 09:01:25', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Categorized by the level of experience required', '', 'publish', 'closed', 'closed', '', 'categorized-by-the-level-of-experience-required', '', '', '2019-01-23 09:01:25', '2019-01-23 09:01:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=97', 0, 'post', '', 0),
(98, 1, '2019-01-23 09:00:54', '2019-01-23 09:00:54', '', 'laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'laptop-notebook-computer-smartphone-mobile-work-796340-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 97, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-01-23 09:08:41', '2019-01-23 09:08:41', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Job Posting Sites In USA - Check it now', '', 'publish', 'closed', 'closed', '', 'job-posting-sites-in-usa-check-it-now', '', '', '2019-01-23 09:08:41', '2019-01-23 09:08:41', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=100', 0, 'post', '', 0),
(101, 1, '2019-01-23 09:08:33', '2019-01-23 09:08:33', '', 'achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 100, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2019-01-23 09:14:25', '2019-01-23 09:14:25', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'JobWorker - Post your Resume/CV', '', 'publish', 'closed', 'closed', '', 'jobworker-post-your-resume-cv', '', '', '2019-01-23 09:14:25', '2019-01-23 09:14:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=103', 0, 'post', '', 0),
(104, 1, '2019-01-23 09:14:21', '2019-01-23 09:14:21', '', 'african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 103, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-01-23 09:23:15', '2019-01-23 09:23:15', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Technology leader for your needs.', '', 'publish', 'closed', 'closed', '', 'technology-leader-for-your-needs', '', '', '2019-01-23 09:23:15', '2019-01-23 09:23:15', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=106', 0, 'post', '', 0),
(107, 1, '2019-01-23 09:23:04', '2019-01-23 09:23:04', '', 'StockSnap_64EKVZ4V2B (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_64ekvz4v2b-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 106, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_64EKVZ4V2B-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-01-23 09:33:53', '2019-01-23 09:33:53', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'State of working for oneself', '', 'publish', 'closed', 'closed', '', 'state-of-working-for-oneself', '', '', '2019-01-23 09:33:53', '2019-01-23 09:33:53', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=109', 0, 'post', '', 0),
(110, 1, '2019-01-23 09:33:40', '2019-01-23 09:33:40', '', 'girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'girl-young-business-businesswoman-office-negotiation-1456587-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 109, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-01-23 10:19:08', '2019-01-23 10:19:08', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'Self-employed individuals and home-based businesses.', '', 'publish', 'closed', 'closed', '', 'self-employed-individuals-and-home-based-businesses', '', '', '2019-01-23 10:19:08', '2019-01-23 10:19:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=112', 0, 'post', '', 0),
(113, 1, '2019-01-23 10:18:11', '2019-01-23 10:18:11', '', 'laptop-computer-work-man-table-person-707060-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'laptop-computer-work-man-table-person-707060-pxhere-com-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 112, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-01-23 10:18:13', '2019-01-23 10:18:13', '', 'StockSnap_E5GUBD8MWN (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_e5gubd8mwn-1', '', '', '2024-11-15 09:46:49', '2024-11-15 09:46:49', '', 112, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_E5GUBD8MWN-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-01-23 10:27:30', '2019-01-23 10:27:30', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'Commonly associated as a natural fit', '', 'publish', 'closed', 'closed', '', 'commonly-associated-as-a-natural-fit', '', '', '2019-01-23 10:27:30', '2019-01-23 10:27:30', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=116', 0, 'post', '', 0),
(130, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/130/', 1, 'nav_menu_item', '', 0),
(131, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/131/', 9, 'nav_menu_item', '', 0),
(132, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/132/', 3, 'nav_menu_item', '', 0),
(133, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/133/', 18, 'nav_menu_item', '', 0),
(140, 1, '2019-01-24 09:47:03', '2019-01-24 09:47:03', 'Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. Their new technique, described in a study published on Thursday in the journal Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone.\r\n\r\nIt’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nAn absolutely amazing and exciting paper,” added David Reich, a genetics professor. Harvard who focuses on ancient DNA. Until recently, the only way to study the genes of ancient humans like the Neanderthals and their cousins, the Denisovans, was to recover DNA from fossil bones.\r\n\r\nBut they are scarce and hard to find, which has greatly limited research into where early humans lived and how widely they ranged. The only Denisovan bones and teeth that scientists have, for example, come from a single cave in Siberia.\r\n<h1>Heading 1: How Retail Brands Can Cash in on Content Marketing</h1>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h2>Heading 2: How Retail Brands Can Cash in on Content Marketing</h2>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h3>Heading 3: How Retail Brands Can Cash in on Content Marketing</h3>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<blockquote>“I\'ve missed more than 9000 shots in my career. I\'ve lost almost 300 games. 26 times I\'ve been trusted to take the game winning shot and missed. I\'ve failed over and over and over again in my life. And that is why I succeed.” - MICHAEL JORDAN, Chicago Bulls</blockquote>\r\n<h4>Heading 4: How Retail Brands Can Cash in on Content Marketing</h4>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h5>Heading 5: How Retail Brands Can Cash in on Content Marketing</h5>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h6>Heading 6: How Retail Brands Can Cash in on Content Marketing</h6>\r\n<img class=\"alignleft size-medium wp-image-114\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_E5GUBD8MWN-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\n“The goal of a designer is to listen, observe, understand, sympathize, empathize, synthesize, and glean insights that enable him or her to ‘make the invisible visible.”\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Name</th>\r\n<th>Position</th>\r\n<th>Office</th>\r\n<th>Cities</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Erica Romaguera</td>\r\n<td>Coach</td>\r\n<td>Audi</td>\r\n<td>New York City</td>\r\n</tr>\r\n<tr>\r\n<td>Caleigh Jerde</td>\r\n<td>Lawyer</td>\r\n<td>Pizza Hut</td>\r\n<td>Los Angeles</td>\r\n</tr>\r\n<tr>\r\n<td>Lucas Schultz</td>\r\n<td>Librarian</td>\r\n<td>Burberry</td>\r\n<td>Beijing</td>\r\n</tr>\r\n<tr>\r\n<td>Carole Marvin</td>\r\n<td>Educator</td>\r\n<td>Starbucks</td>\r\n<td>Istanbul</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Հայերեն</h2>\r\nLorem Ipsum-ը տպագրության և տպագրական արդյունաբերության համար նախատեսված մոդելային տեքստ է: Սկսած 1500-ականներից` Lorem Ipsum-ը հանդիսացել է տպագրական արդյունաբերության ստանդարտ մոդելային տեքստ, ինչը մի անհայտ տպագրիչի կողմից տարբեր տառատեսակների օրինակների գիրք ստեղծելու ջանքերի արդյունք է: Այս տեքստը ոչ միայն կարողացել է գոյատևել հինգ դարաշրջան, այլև ներառվել է էլեկտրոնային տպագրության մեջ` մնալով էապես անփոփոխ: Այն հայտնի է դարձել 1960-ականներին Lorem Ipsum բովանդակող Letraset էջերի թողարկման արդյունքում, իսկ ավելի ուշ համակարգչային տպագրության այնպիսի ծրագրերի թողարկման հետևանքով, ինչպիսին է Aldus PageMaker-ը, որը ներառում է Lorem Ipsum-ի տարատեսակներ:\r\n<h2>Български</h2>\r\nLorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.\r\n<h2>Català</h2>\r\nLorem Ipsum és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l’any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l’any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d’autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.\r\n<h2>Hrvatski</h2>\r\nLorem Ipsum je jednostavno probni tekst koji se koristi u tiskarskoj i slovoslagarskoj industriji. Lorem Ipsum postoji kao industrijski standard još od 16-og stoljeća, kada je nepoznati tiskar uzeo tiskarsku galiju slova i posložio ih da bi napravio knjigu s uzorkom tiska. Taj je tekst ne samo preživio pet stoljeća, već se i vinuo u svijet elektronskog slovoslagarstva, ostajući u suštini nepromijenjen. Postao je popularan tijekom 1960-ih s pojavom Letraset listova s odlomcima Lorem Ipsum-a, a u skorije vrijeme sa software-om za stolno izdavaštvo kao što je Aldus PageMaker koji također sadrži varijante Lorem Ipsum-a.\r\n<h2>Česky</h2>\r\nLorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\r\n<h2>Româna</h2>\r\nLorem Ipsum este pur şi simplu o machetă pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei încă din secolul al XVI-lea, când un tipograf anonim a luat o planşetă de litere şi le-a amestecat pentru a crea o carte demonstrativă pentru literele respective. Nu doar că a supravieţuit timp de cinci secole, dar şi a facut saltul în tipografia electronică practic neschimbată. A fost popularizată în anii ’60 odată cu ieşirea colilor Letraset care conţineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.\r\n<h2>Српски</h2>\r\nLorem Ipsum је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.', 'Full Width', '', 'publish', 'closed', 'closed', '', 'full-width', '', '', '2019-01-24 09:47:03', '2019-01-24 09:47:03', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=140', 0, 'page', '', 0),
(144, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=144', 7, 'nav_menu_item', '', 0),
(145, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 'Category Page', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=145', 10, 'nav_menu_item', '', 0),
(146, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=146', 8, 'nav_menu_item', '', 0),
(147, 1, '2019-01-24 09:50:33', '2019-01-24 09:50:33', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio-2', '', '', '2019-01-24 09:50:33', '2019-01-24 09:50:33', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=147', 0, 'page', '', 0),
(149, 1, '2019-01-24 09:52:17', '2019-01-24 09:52:17', 'The style guide provides you with a blueprint of Paperback’s default post and page styles. The style guide is also a great reference for suggested typographic treatment and styles for your content.\r\n\r\n<hr />\r\n\r\n<h4>Right Aligned Image</h4>\r\n<img class=\"size-medium wp-image-53 alignright\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/pexels-photo-247917-1-300x200.jpeg\" alt=\"\" width=\"300\" height=\"200\" />Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram. They may be captured by optical devices – such as cameras, mirrors, lenses, telescopes, microscopes, etc. and natural objects and phenomena, such as the human eye or water surfaces. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting.\r\n\r\n<hr />\r\n\r\n<h4>Left Aligned Image</h4>\r\n<img class=\"alignleft size-medium wp-image-49\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/fezbot2000-365718-unsplash-2-210x300.jpg\" alt=\"\" width=\"210\" height=\"300\" />The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. In this wider sense, images can also be rendered manually, such as by drawing, painting, carving, rendered automatically by printing or computer graphics technology, or developed by a combination of methods. Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram.\r\n\r\nA volatile image is one that exists only for a short period of time. This may be a reflection of an object by a mirror, a projection of a camera obscura, or a scene displayed on a cathode ray tube. A fixed image, also called a hard copy.\r\n\r\n<hr />\r\n\r\n<div class=\"tiled-gallery type-rectangular\">\r\n<div class=\"gallery-row\">\r\n<div class=\"gallery-group images-1\">\r\n<div id=\"gallery-1\" class=\"gallery galleryid-265 gallery-columns-2 gallery-size-full\">\r\n<figure class=\"gallery-item\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n</div>\r\n</div>\r\n<div class=\"gallery-group images-3\"></div>\r\n</div>\r\n</div>\r\n<h1>Heading One</h1>\r\n<h2>Heading Two</h2>\r\n<h3>Heading Three</h3>\r\n<h4>Heading Four</h4>\r\n<h5>Heading Five</h5>\r\n<h6>Heading Six</h6>\r\n<h6></h6>\r\n\r\n<hr />\r\n\r\n<h3>Blockquote</h3>\r\n<blockquote>The greatest gift of life is friendship, and I have received it.</blockquote>\r\n<h3 id=\"pull-quotes\">Typography Styles</h3>\r\n<span id=\"dropcap\" class=\"dropcap\">A</span>drop cap is a decorative element typically used in documents at the start of a section or chapter. It’s a large capital letter at the beginning or a paragraph or text block that has the depth of two or more lines of normal text. You can easily add a dropcap to any paragraph by adding the class <strong>dropcap</strong> as seen below:\r\n<pre>&lt;span class=\"dropcap\"&gt;T&lt;/span&gt;his is how you add a dropcap.</pre>\r\n\r\n<hr />\r\n\r\n<h3>Table Styles</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>BEATLE</th>\r\n<th>INSTRUMENT</th>\r\n<th>SONG</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr class=\"odd\">\r\n<td>John Lennon</td>\r\n<td>Guitar</td>\r\n<td>A Day In the Life</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>George Harrison</td>\r\n<td>Guitar</td>\r\n<td>Old Brown Shoe</td>\r\n</tr>\r\n<tr class=\"odd\">\r\n<td>Paul McCartney</td>\r\n<td>Bass</td>\r\n<td>Helter Skelter</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>Ringo Starr</td>\r\n<td>Drums</td>\r\n<td>Don’t Pass Me By</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<hr />\r\n\r\n<h3>Code Formatting</h3>\r\n<pre>pre {\r\n    position: relative;\r\n    background: #f7f7f7;\r\n    font-family: \"Courier 10 Pitch\", Courier, monospace;\r\n    font-size: 15px;\r\n    font-size: 1.5rem;\r\n    line-height: 1.6;\r\n    margin-bottom: 1.6em;\r\n    padding: 1.6em;\r\n    overflow: auto;\r\n    max-width: 100%;\r\n    tab-size: 4;\r\n}</pre>\r\n\r\n<hr />\r\n\r\n<h3>Mixed List Items</h3>\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>\r\n</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>', 'Style Guide', '', 'publish', 'closed', 'closed', '', 'style-guide', '', '', '2019-01-24 09:52:17', '2019-01-24 09:52:17', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=149', 0, 'page', '', 0),
(151, 1, '2019-01-24 09:52:31', '2019-01-24 09:52:31', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2019-01-24 09:52:31', '2019-01-24 09:52:31', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=151', 6, 'nav_menu_item', '', 0),
(152, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 'Search Page', '', 'publish', 'closed', 'closed', '', 'search-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=152', 12, 'nav_menu_item', '', 0),
(153, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', '404 Error Page', '', 'publish', 'closed', 'closed', '', '404-error-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=153', 13, 'nav_menu_item', '', 0),
(154, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 'Post Page', '', 'publish', 'closed', 'closed', '', 'post-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=154', 11, 'nav_menu_item', '', 0),
(838, 1, '2018-12-26 06:24:05', '2018-12-26 06:24:05', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Van MockUp PSD 6 Angles', '', 'publish', 'closed', 'closed', '', 'van-mockup-psd-6-angles', '', '', '2018-12-26 06:24:05', '2018-12-26 06:24:05', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=838', 0, 'rara-portfolio', '', 0),
(844, 1, '2018-12-26 06:28:26', '2018-12-26 06:28:26', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Water Bottle MockUp', '', 'publish', 'closed', 'closed', '', 'water-bottle-mockup', '', '', '2018-12-26 06:28:26', '2018-12-26 06:28:26', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=844', 0, 'rara-portfolio', '', 0),
(845, 1, '2018-12-26 06:28:56', '2018-12-26 06:28:56', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Epsilon Powerpoint Template Free', '', 'publish', 'closed', 'closed', '', 'epsilon-powerpoint-template-free', '', '', '2018-12-26 06:28:56', '2018-12-26 06:28:56', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=845', 0, 'rara-portfolio', '', 0),
(846, 1, '2018-12-26 06:29:52', '2018-12-26 06:29:52', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Flatlay Business Photos', '', 'publish', 'closed', 'closed', '', 'flatlay-business-photos', '', '', '2018-12-26 06:29:52', '2018-12-26 06:29:52', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=846', 0, 'rara-portfolio', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(847, 1, '2018-12-26 06:31:16', '2018-12-26 06:31:16', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Phoenix Startup UI Kit Free Sample', '', 'publish', 'closed', 'closed', '', 'phoenix-startup-ui-kit-free-sample', '', '', '2018-12-26 06:31:16', '2018-12-26 06:31:16', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=847', 0, 'rara-portfolio', '', 0),
(853, 1, '2018-12-26 06:35:26', '2018-12-26 06:35:26', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Modern Office Photos', '', 'publish', 'closed', 'closed', '', 'modern-office-photos', '', '', '2018-12-26 06:35:26', '2018-12-26 06:35:26', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=853', 0, 'rara-portfolio', '', 0),
(855, 1, '2018-12-26 06:37:52', '2018-12-26 06:37:52', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Fashion eCommerce Templates', '', 'publish', 'closed', 'closed', '', 'fashion-ecommerce-templates', '', '', '2018-12-26 06:37:52', '2018-12-26 06:37:52', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=855', 0, 'rara-portfolio', '', 0),
(857, 1, '2018-12-26 06:43:43', '2018-12-26 06:43:43', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Dlex ECommerce UI Kit', '', 'publish', 'closed', 'closed', '', 'dlex-ecommerce-ui-kit', '', '', '2018-12-26 06:43:43', '2018-12-26 06:43:43', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=857', 0, 'rara-portfolio', '', 0),
(860, 1, '2018-12-26 06:51:24', '2018-12-26 06:51:24', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Personal Free HTML Template', '', 'publish', 'closed', 'closed', '', 'personal-free-html-template', '', '', '2018-12-26 06:51:24', '2018-12-26 06:51:24', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=860', 0, 'rara-portfolio', '', 0),
(861, 1, '2019-01-24 10:08:29', '2019-01-24 10:08:29', ' ', '', '', 'publish', 'closed', 'closed', '', '861', '', '', '2019-01-24 10:08:29', '2019-01-24 10:08:29', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=861', 5, 'nav_menu_item', '', 0),
(882, 1, '2019-01-24 10:29:55', '2019-01-24 10:29:55', '', 'album-1', '', 'inherit', 'open', 'closed', '', 'album-1', '', '', '2019-01-24 10:29:55', '2019-01-24 10:29:55', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(883, 1, '2019-01-24 10:31:23', '2019-01-24 10:31:23', '', 'beanie-2', '', 'inherit', 'open', 'closed', '', 'beanie-2', '', '', '2019-01-24 10:31:23', '2019-01-24 10:31:23', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(884, 1, '2019-01-24 10:32:10', '2019-01-24 10:32:10', '', 'beanie-with-logo-1', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1', '', '', '2019-01-24 10:32:10', '2019-01-24 10:32:10', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(885, 1, '2019-01-24 10:33:11', '2019-01-24 10:33:11', '', 'belt-2', '', 'inherit', 'open', 'closed', '', 'belt-2', '', '', '2019-01-24 10:33:11', '2019-01-24 10:33:11', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(886, 1, '2019-01-24 10:33:54', '2019-01-24 10:33:54', '', 'cap-2-600x600', '', 'inherit', 'open', 'closed', '', 'cap-2-600x600', '', '', '2019-01-24 10:33:54', '2019-01-24 10:33:54', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/cap-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(887, 1, '2019-01-24 10:34:52', '2019-01-24 10:34:52', '', 'hoodie-with-logo-2', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2', '', '', '2019-01-24 10:34:52', '2019-01-24 10:34:52', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(888, 1, '2019-01-24 10:34:53', '2019-01-24 10:34:53', '', 'hoodie-2-600x600', '', 'inherit', 'open', 'closed', '', 'hoodie-2-600x600', '', '', '2019-01-24 10:34:53', '2019-01-24 10:34:53', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(889, 1, '2019-01-24 10:36:01', '2019-01-24 10:36:01', '', 'hoodie-with-zipper-2-600x600', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-600x600', '', '', '2019-01-24 10:36:01', '2019-01-24 10:36:01', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-with-zipper-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(890, 1, '2019-01-24 10:36:03', '2019-01-24 10:36:03', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1-2', '', '', '2019-01-24 10:36:03', '2019-01-24 10:36:03', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(891, 1, '2019-01-24 10:37:24', '2019-01-24 10:37:24', '', 'polo-2', '', 'inherit', 'open', 'closed', '', 'polo-2', '', '', '2019-01-24 10:37:24', '2019-01-24 10:37:24', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(892, 1, '2019-01-24 10:37:26', '2019-01-24 10:37:26', '', 'single-1', '', 'inherit', 'open', 'closed', '', 'single-1', '', '', '2019-01-24 10:37:26', '2019-01-24 10:37:26', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(894, 1, '2019-01-24 10:38:30', '2019-01-24 10:38:30', '', 'long-sleeve-tee-2', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2', '', '', '2019-01-24 10:38:30', '2019-01-24 10:38:30', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(895, 1, '2019-01-24 10:39:15', '2019-01-24 10:39:15', '', 'sunglasses-2', '', 'inherit', 'open', 'closed', '', 'sunglasses-2', '', '', '2019-01-24 10:39:15', '2019-01-24 10:39:15', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(896, 1, '2019-01-24 10:39:31', '2019-01-24 10:39:31', '', 'tshirt-2', '', 'inherit', 'open', 'closed', '', 'tshirt-2', '', '', '2019-01-24 10:39:31', '2019-01-24 10:39:31', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(897, 1, '2019-01-24 10:39:52', '2019-01-24 10:39:52', '', 't-shirt-with-logo-1', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1', '', '', '2019-01-24 10:39:52', '2019-01-24 10:39:52', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(898, 1, '2019-01-24 10:40:28', '2019-01-24 10:40:28', '', 'pennant-1-300x300', '', 'inherit', 'open', 'closed', '', 'pennant-1-300x300', '', '', '2019-01-24 10:40:28', '2019-01-24 10:40:28', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/pennant-1-300x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(900, 1, '2019-01-24 10:43:13', '2019-01-24 10:43:13', '', 'vneck-tee-2', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2', '', '', '2019-01-24 10:43:13', '2019-01-24 10:43:13', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(901, 1, '2019-01-24 10:43:44', '2019-01-24 10:43:44', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-01-24 10:43:44', '2019-01-24 10:43:44', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=901', 0, 'page', '', 0),
(903, 1, '2019-01-24 10:43:54', '2019-01-24 10:43:54', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-01-24 10:43:54', '2019-01-24 10:43:54', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=903', 0, 'page', '', 0),
(905, 1, '2019-01-24 10:46:42', '2019-01-24 10:46:42', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-01-24 10:46:42', '2019-01-24 10:46:42', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=905', 0, 'page', '', 0),
(907, 1, '2019-01-24 10:46:22', '2019-01-24 10:46:22', ' ', '', '', 'publish', 'closed', 'closed', '', '907', '', '', '2019-01-24 10:46:22', '2019-01-24 10:46:22', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=907', 15, 'nav_menu_item', '', 0),
(908, 1, '2019-01-24 10:46:22', '2019-01-24 10:46:22', ' ', '', '', 'publish', 'closed', 'closed', '', '908', '', '', '2019-01-24 10:46:22', '2019-01-24 10:46:22', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=908', 14, 'nav_menu_item', '', 0),
(909, 1, '2019-01-24 10:46:53', '2019-01-24 10:46:53', ' ', '', '', 'publish', 'closed', 'closed', '', '909', '', '', '2019-01-24 10:46:53', '2019-01-24 10:46:53', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=909', 16, 'nav_menu_item', '', 0),
(913, 1, '2019-01-24 10:50:21', '2019-01-24 10:50:21', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-01-24 10:50:21', '2019-01-24 10:50:21', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=913', 0, 'page', '', 0),
(916, 1, '2019-01-24 10:51:45', '2019-01-24 10:51:45', ' ', '', '', 'publish', 'closed', 'closed', '', '916', '', '', '2019-01-24 10:51:45', '2019-01-24 10:51:45', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=916', 17, 'nav_menu_item', '', 0),
(917, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=917', 2, 'nav_menu_item', '', 0),
(918, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '918', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=918', 3, 'nav_menu_item', '', 0),
(919, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '919', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=919', 4, 'nav_menu_item', '', 0),
(920, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '920', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=920', 1, 'nav_menu_item', '', 0),
(921, 1, '2019-01-24 11:24:13', '2019-01-24 11:24:13', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Clerk I - Base Post Office', '', 'expired', 'closed', 'closed', '', 'clerk-i-base-post-office', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=921', 0, 'job_listing', '', 0),
(922, 1, '2019-01-24 11:28:27', '2019-01-24 11:28:27', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Us Post Office Job Openings', '', 'expired', 'closed', 'closed', '', 'us-post-office-job-openings', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=922', 0, 'job_listing', '', 0),
(923, 1, '2019-01-24 11:33:47', '2019-01-24 11:33:47', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'House Manager And Personal Assistant', '', 'expired', 'closed', 'closed', '', 'house-manager-and-personal-assistant', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=923', 0, 'job_listing', '', 0),
(924, 1, '2019-01-24 11:30:55', '2019-01-24 11:30:55', ' ', '', '', 'publish', 'closed', 'closed', '', '924', '', '', '2019-01-24 11:30:55', '2019-01-24 11:30:55', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=924', 5, 'nav_menu_item', '', 0),
(925, 1, '2019-01-24 11:31:19', '2019-01-24 11:31:19', ' ', '', '', 'publish', 'closed', 'closed', '', '925', '', '', '2019-01-24 11:31:19', '2019-01-24 11:31:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=925', 2, 'nav_menu_item', '', 0),
(926, 1, '2019-01-24 11:32:08', '2019-01-24 11:32:08', ' ', '', '', 'publish', 'closed', 'closed', '', '926', '', '', '2019-01-24 11:32:08', '2019-01-24 11:32:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=926', 4, 'nav_menu_item', '', 0),
(928, 1, '2019-01-24 11:39:11', '2019-01-24 11:39:11', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Administrative Assistant', '', 'expired', 'closed', 'closed', '', 'administrative-assistant', '', '', '2024-11-15 12:34:48', '2024-11-15 12:34:48', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&#038;p=928', 0, 'job_listing', '', 0),
(936, 1, '2019-02-20 12:43:47', '2019-02-20 12:43:47', '', 'Login and Registration', '', 'publish', 'closed', 'closed', '', 'login-and-registration', '', '', '2019-02-20 12:43:47', '2019-02-20 12:43:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=936', 0, 'page', '', 0),
(954, 1, '2019-03-18 10:48:49', '2019-03-18 10:48:49', '<!-- wp:heading -->\r\n<h2>Who we are</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Our website address is: http://rarathemesdemo.com/jobscout.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Comments</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Contact forms</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Embedded content from other websites</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Analytics</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Who we share your data with</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>How long we retain your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What rights you have over your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Where we send your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Visitor comments may be checked through an automated spam detection service.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Your contact information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Additional information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>How we protect your data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What data breach procedures we have in place</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What third parties we receive data from</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Industry regulatory disclosure requirements</h3>\r\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2019-03-18 10:48:49', '2019-03-18 10:48:49', '', 0, 'http://rarathemesdemo.com/jobscout/?page_id=954', 0, 'page', '', 0),
(966, 1, '2019-04-18 07:17:08', '2019-04-18 07:17:08', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-18 07:17:08', '2019-04-18 07:17:08', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(967, 1, '2019-01-16 04:52:01', '2019-01-16 04:52:01', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://rarathemesdemo.com/jobscout-pro/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page-2', '', '', '2019-01-16 04:52:01', '2019-01-16 04:52:01', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=2', 0, 'page', '', 0),
(968, 1, '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/portfolio/', 0, 'page', '', 0),
(969, 1, '2024-11-15 09:47:33', '2024-11-15 09:47:33', '[submit_job_form]', 'Post a Job', '', 'publish', 'closed', 'closed', '', 'post-a-job-2', '', '', '2024-11-15 09:47:33', '2024-11-15 09:47:33', '', 0, 'http://wordpress.local/post-a-job-2/', 0, 'page', '', 0),
(970, 1, '2024-11-15 09:47:33', '2024-11-15 09:47:33', '[job_dashboard]', 'Job Dashboard', '', 'publish', 'closed', 'closed', '', 'job-dashboard-2', '', '', '2024-11-15 09:47:33', '2024-11-15 09:47:33', '', 0, 'http://wordpress.local/job-dashboard-2/', 0, 'page', '', 0),
(971, 1, '2024-11-15 09:47:33', '2024-11-15 09:47:33', '[jobs]', 'Jobs', '', 'publish', 'closed', 'closed', '', 'jobs-2', '', '', '2024-11-15 09:47:33', '2024-11-15 09:47:33', '', 0, 'http://wordpress.local/jobs-2/', 0, 'page', '', 0),
(972, 1, '2024-11-17 13:19:54', '2024-11-17 13:19:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-11-17 13:19:54', '2024-11-17 13:19:54', '', 1, 'http://wordpress.local/?p=972', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'employment_type', 'FULL_TIME'),
(2, 3, 'employment_type', 'PART_TIME'),
(3, 4, 'employment_type', 'TEMPORARY'),
(4, 5, 'employment_type', 'CONTRACTOR'),
(5, 6, 'employment_type', 'INTERN'),
(6, 12, 'category-image-id', '28'),
(7, 13, 'category-image-id', '35'),
(8, 14, 'category-image-id', '36'),
(9, 15, 'category-image-id', '27'),
(10, 17, 'category-image-id', '37'),
(11, 18, 'category-image-id', '29'),
(12, 20, 'category-image-id', '26'),
(13, 25, 'category-image-id', '25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Full Time', 'full-time', 0),
(3, 'Part Time', 'part-time', 0),
(4, 'Temporary', 'temporary', 0),
(5, 'Freelance', 'freelance', 0),
(6, 'Internship', 'internship', 0),
(7, 'Festival', 'festival', 0),
(8, 'Hotel', 'hotel', 0),
(9, 'Restaurant', 'restaurant', 0),
(10, 'Spa and Salon', 'spa-and-salon', 0),
(11, 'Travel', 'travel', 0),
(12, 'Accounting / Finance', 'accounting-finance', 0),
(13, 'Construction Facilities', 'construction-facilities', 0),
(14, 'Education Training', 'education-training', 0),
(15, 'Food &amp; Restaurant', 'food-restaurant', 0),
(16, 'GRAPHIC', 'graphic', 0),
(17, 'Health Care', 'health-care', 0),
(18, 'Human Resource', 'human-resource', 0),
(19, 'ILLUSTRATION', 'illustration', 0),
(20, 'IT Services', 'it-services', 0),
(21, 'MOCKUP', 'mockup', 0),
(22, 'PHOTOGRAPHY', 'photography', 0),
(23, 'UI/UX', 'ui-ux', 0),
(24, 'WEB', 'web', 0),
(25, 'Web &amp; Marketing', 'web-and-marketing', 0),
(26, 'Primary', 'primary', 0),
(27, 'Secondary', 'secondary', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(45, 20, 0),
(73, 25, 0),
(74, 17, 0),
(77, 18, 0),
(78, 14, 0),
(79, 18, 0),
(84, 11, 0),
(87, 9, 0),
(90, 7, 0),
(94, 10, 0),
(97, 8, 0),
(100, 7, 0),
(103, 8, 0),
(106, 9, 0),
(109, 10, 0),
(112, 10, 0),
(116, 11, 0),
(130, 26, 0),
(131, 26, 0),
(132, 26, 0),
(133, 26, 0),
(144, 26, 0),
(145, 26, 0),
(146, 26, 0),
(151, 26, 0),
(152, 26, 0),
(153, 26, 0),
(154, 26, 0),
(838, 21, 0),
(844, 22, 0),
(845, 16, 0),
(846, 23, 0),
(847, 24, 0),
(853, 19, 0),
(855, 16, 0),
(855, 19, 0),
(855, 21, 0),
(857, 21, 0),
(857, 22, 0),
(857, 24, 0),
(860, 16, 0),
(860, 23, 0),
(860, 24, 0),
(861, 26, 0),
(907, 26, 0),
(908, 26, 0),
(909, 26, 0),
(916, 26, 0),
(917, 27, 0),
(918, 27, 0),
(919, 27, 0),
(920, 27, 0),
(921, 13, 0),
(922, 15, 0),
(923, 12, 0),
(924, 27, 0),
(925, 26, 0),
(926, 26, 0),
(928, 13, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'job_listing_type', '', 0, 0),
(3, 3, 'job_listing_type', '', 0, 0),
(4, 4, 'job_listing_type', '', 0, 0),
(5, 5, 'job_listing_type', '', 0, 0),
(6, 6, 'job_listing_type', '', 0, 0),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 2),
(12, 12, 'job_listing_type', '', 0, 0),
(13, 13, 'job_listing_type', '', 0, 0),
(14, 14, 'job_listing_type', '', 0, 0),
(15, 15, 'job_listing_type', '', 0, 0),
(16, 16, 'rara_portfolio_categories', '', 0, 3),
(17, 17, 'job_listing_type', '', 0, 0),
(18, 18, 'job_listing_type', '', 0, 0),
(19, 19, 'rara_portfolio_categories', '', 0, 2),
(20, 20, 'job_listing_type', '', 0, 0),
(21, 21, 'rara_portfolio_categories', '', 0, 3),
(22, 22, 'rara_portfolio_categories', '', 0, 2),
(23, 23, 'rara_portfolio_categories', '', 0, 2),
(24, 24, 'rara_portfolio_categories', '', 0, 3),
(25, 25, 'job_listing_type', '', 0, 0),
(26, 26, 'nav_menu', '', 0, 18),
(27, 27, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4e93f6df27d1c5d18da612105cfa40b69607c0cb47b807dd1d0f63015ff8e5fa\";a:4:{s:10:\"expiration\";i:1732022264;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36\";s:5:\"login\";i:1731849464;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1731663790'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 2, 'nickname', 'bnt124'),
(22, 2, 'first_name', 'Bùi'),
(23, 2, 'last_name', 'Nhật Tuấn'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 3, 'nickname', 'dqd295'),
(36, 3, 'first_name', 'Đặng'),
(37, 3, 'last_name', 'Quang Dinh'),
(38, 3, 'description', ''),
(39, 3, 'rich_editing', 'true'),
(40, 3, 'syntax_highlighting', 'true'),
(41, 3, 'comment_shortcuts', 'false'),
(42, 3, 'admin_color', 'fresh'),
(43, 3, 'use_ssl', '0'),
(44, 3, 'show_admin_bar_front', 'true'),
(45, 3, 'locale', ''),
(46, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(47, 3, 'wp_user_level', '10'),
(48, 3, 'dismissed_wp_pointers', ''),
(49, 4, 'nickname', 'ndc203'),
(50, 4, 'first_name', 'Nguyễn'),
(51, 4, 'last_name', 'Đức Chuẩn'),
(52, 4, 'description', ''),
(53, 4, 'rich_editing', 'true'),
(54, 4, 'syntax_highlighting', 'true'),
(55, 4, 'comment_shortcuts', 'false'),
(56, 4, 'admin_color', 'fresh'),
(57, 4, 'use_ssl', '0'),
(58, 4, 'show_admin_bar_front', 'true'),
(59, 4, 'locale', ''),
(60, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(61, 4, 'wp_user_level', '10'),
(62, 4, 'dismissed_wp_pointers', ''),
(63, 5, 'nickname', 'ctmt2926'),
(64, 5, 'first_name', 'Cao Trần Minh'),
(65, 5, 'last_name', 'Tâm'),
(66, 5, 'description', ''),
(67, 5, 'rich_editing', 'true'),
(68, 5, 'syntax_highlighting', 'true'),
(69, 5, 'comment_shortcuts', 'false'),
(70, 5, 'admin_color', 'fresh'),
(71, 5, 'use_ssl', '0'),
(72, 5, 'show_admin_bar_front', 'true'),
(73, 5, 'locale', ''),
(74, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(75, 5, 'wp_user_level', '0'),
(76, 5, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BCDeIPACDczfKGmNyH69UN2cshpx0C0', 'admin', 'admin@admin.com', 'http://wordpress.local', '2024-11-15 09:42:59', '', 0, 'admin'),
(2, 'bnt124', '$P$BptZcKEZWTATL7kGLkWBxbTzKlVBIe1', 'bnt124', 'tuanhat124@gmail.com', '', '2024-11-15 10:23:32', '1731666214:$P$BHc7MFAkxLGH7/fROTeuHMNwVAC7ll1', 0, 'Bùi Nhật Tuấn'),
(3, 'dqd295', '$P$B41NWCddbTP3MXLH0CUqVryZ6oLFcF/', 'dqd295', 'dinhquang295@gmail.com', '', '2024-11-15 10:24:16', '1731666258:$P$BEeMF/IYVFLev.RyP9sgsdqWKwSxAU0', 0, 'Đặng Quang Dinh'),
(4, 'ndc203', '$P$Bfn/3ZeU8rWxAHpoPTs1mfZY5V9R0H/', 'ndc203', 'Chuanghost203@gmail.com', '', '2024-11-15 10:24:44', '1731666286:$P$BvLOf1sOgp/fj3ONjHRbF9UaQmdhNk1', 0, 'Nguyễn Đức Chuẩn'),
(5, 'ctmt2926', '$P$B8xqOCCH2R8YSTRxhOejnI5w89iKmg/', 'ctmt2926', '22211tt2962@mail.tdc.edu.vn', '', '2024-11-17 13:19:08', '1731849550:$P$Bj4FFp.trHpzIaD4sFmFhS02uePXNJ/', 0, 'Cao Trần Minh Tâm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wpjm_stats`
--

CREATE TABLE `wp_wpjm_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `group` varchar(50) DEFAULT '',
  `count` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wpjm_stats`
--

INSERT INTO `wp_wpjm_stats` (`id`, `date`, `post_id`, `name`, `group`, `count`) VALUES
(1, '2024-11-15', 928, 'job_view', '', 1),
(2, '2024-11-15', 928, 'job_view_unique', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wpjm_stats`
--
ALTER TABLE `wp_wpjm_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wpjm_stats_name_date_group_post_id` (`name`,`date`,`group`,`post_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_wpjm_stats`
--
ALTER TABLE `wp_wpjm_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
