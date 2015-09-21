-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2015 at 07:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mytheme`
--

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_cntctfrm_field`
--

CREATE TABLE IF NOT EXISTS `mytheme_cntctfrm_field` (
`id` int(11) NOT NULL,
  `name` char(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytheme_cntctfrm_field`
--

INSERT INTO `mytheme_cntctfrm_field` (`id`, `name`) VALUES
(1, 'name'),
(2, 'email'),
(3, 'subject'),
(4, 'message'),
(5, 'address'),
(6, 'phone'),
(7, 'attachment'),
(8, 'attachment_explanations'),
(9, 'send_copy'),
(10, 'sent_from'),
(11, 'date_time'),
(12, 'coming_from'),
(13, 'user_agent');

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_commentmeta`
--

CREATE TABLE IF NOT EXISTS `mytheme_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_comments`
--

CREATE TABLE IF NOT EXISTS `mytheme_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_comments`
--

INSERT INTO `mytheme_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-08-31 07:32:08', '2015-08-31 07:32:08', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_links`
--

CREATE TABLE IF NOT EXISTS `mytheme_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_options`
--

CREATE TABLE IF NOT EXISTS `mytheme_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_options`
--

INSERT INTO `mytheme_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:1234/projects/workshop/wp-workshop', 'yes'),
(2, 'home', 'http://localhost:1234/projects/workshop/wp-workshop', 'yes'),
(3, 'blogname', 'My Theme', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sshrestha@lftechnology.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:"contact-form-plugin/contact_form.php";i:1;s:32:"disqus-comment-system/disqus.php";i:3;s:58:"widget-embed-lastest-tweets/widget-embed-latest-tweets.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:84:"D:\\xampp\\htdocs\\projects\\workshop\\wp-workshop/wp-content/plugins/twitter/twitter.php";i:2;s:81:"D:\\xampp\\htdocs\\projects\\workshop\\wp-workshop/wp-content/themes/mytheme/style.css";i:3;s:0:"";}', 'no'),
(41, 'template', 'mytheme', 'yes'),
(42, 'stylesheet', 'mytheme', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:15:" About the Blog";s:4:"text";s:311:"Perspiciatis unde omnis iste natus error sit volu ptatem accusantium doloremque laudantium, totam rem aperiam. Perspiciatis unde omnis ist e natus error sit voluptatem accusantium dolor que laudantium, totam rem aperiam, eaque ab illo inventore veritatis et quasi architecto beata e vitae dicta sunt explicabo. ";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:6:"Flickr";s:4:"text";s:0:"";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:0:"";s:4:"text";s:244:"<h1 class="logo"> <a href="#" title="">Logo</a></h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:36:"contact-form-plugin/contact_form.php";s:23:"cntctfrm_delete_options";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33055', 'yes'),
(90, 'mytheme_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:6:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"sidebar-footer-1";a:1:{i:0;s:11:"tag_cloud-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:8:"search-3";i:1;s:12:"categories-3";i:2;s:6:"text-2";i:3;s:10:"archives-3";}s:9:"sidebar-2";a:4:{i:0;s:6:"text-6";i:1;s:18:"welt_last_tweets-3";i:2;s:11:"tag_cloud-3";i:3;s:6:"text-5";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:6:{i:1442815771;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442820729;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442820730;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442820840;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442822138;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.3.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:3:"4.3";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.3.1-partial-0.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-rollback-0.zip";}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:3:"4.3";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1442807585;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1442807590;s:7:"checked";a:4:{s:7:"mytheme";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_random_seed', '4738018f5bb128ee7a25b145ea9992e5', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(130, '_transient_twentyfifteen_categories', '1', 'yes'),
(133, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1441023254;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(134, 'current_theme', 'My Theme', 'yes'),
(135, 'theme_mods_mytheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(194, '_site_transient_timeout_popular_importers_en_US', '1442036785', 'yes'),
(195, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(198, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(199, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(200, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(202, 'widget_tag_cloud', 'a:4:{i:1;a:0:{}i:2;a:2:{s:5:"title";s:11:"USEFUL TAGS";s:8:"taxonomy";s:8:"post_tag";}i:3;a:2:{s:5:"title";s:11:"Useful Tags";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(236, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(237, 'recently_activated', 'a:2:{s:19:"twitter/twitter.php";i:1442808172;s:19:"akismet/akismet.php";i:1442376201;}', 'yes'),
(243, 'cntctfrm_options', 'a:59:{s:21:"plugin_option_version";s:4:"3.94";s:17:"plugin_db_version";s:3:"1.0";s:19:"cntctfrm_user_email";s:5:"admin";s:21:"cntctfrm_custom_email";s:0:"";s:21:"cntctfrm_select_email";s:4:"user";s:19:"cntctfrm_from_email";s:6:"custom";s:26:"cntctfrm_custom_from_email";s:19:"wordpress@localhost";s:19:"cntctfrm_attachment";i:0;s:32:"cntctfrm_attachment_explanations";i:1;s:18:"cntctfrm_send_copy";i:0;s:19:"cntctfrm_from_field";s:8:"My Theme";s:26:"cntctfrm_select_from_field";s:6:"custom";s:27:"cntctfrm_display_name_field";i:1;s:30:"cntctfrm_display_address_field";i:0;s:28:"cntctfrm_display_phone_field";i:0;s:28:"cntctfrm_required_name_field";i:1;s:31:"cntctfrm_required_address_field";i:0;s:29:"cntctfrm_required_email_field";i:1;s:29:"cntctfrm_required_phone_field";i:0;s:31:"cntctfrm_required_subject_field";i:1;s:31:"cntctfrm_required_message_field";i:1;s:24:"cntctfrm_required_symbol";s:1:"*";s:25:"cntctfrm_display_add_info";i:1;s:26:"cntctfrm_display_sent_from";i:1;s:26:"cntctfrm_display_date_time";i:1;s:20:"cntctfrm_mail_method";s:7:"wp-mail";s:28:"cntctfrm_display_coming_from";i:1;s:27:"cntctfrm_display_user_agent";i:1;s:17:"cntctfrm_language";a:0:{}s:21:"cntctfrm_change_label";i:0;s:19:"cntctfrm_name_label";a:1:{s:2:"en";s:5:"Name:";}s:22:"cntctfrm_address_label";a:1:{s:2:"en";s:8:"Address:";}s:20:"cntctfrm_email_label";a:1:{s:2:"en";s:14:"Email Address:";}s:20:"cntctfrm_phone_label";a:1:{s:2:"en";s:13:"Phone number:";}s:22:"cntctfrm_subject_label";a:1:{s:2:"en";s:8:"Subject:";}s:22:"cntctfrm_message_label";a:1:{s:2:"en";s:8:"Message:";}s:25:"cntctfrm_attachment_label";a:1:{s:2:"en";s:11:"Attachment:";}s:27:"cntctfrm_attachment_tooltip";a:1:{s:2:"en";s:158:"Supported file types: HTML, TXT, CSS, GIF, PNG, JPEG, JPG, TIFF, BMP, AI, EPS, PS, RTF, PDF, DOC, DOCX, XLS, XLSX, ZIP, RAR, WAV, MP3, PPT. Max file size: 2MB";}s:24:"cntctfrm_send_copy_label";a:1:{s:2:"en";s:14:"Send me a copy";}s:21:"cntctfrm_submit_label";a:1:{s:2:"en";s:6:"Submit";}s:19:"cntctfrm_name_error";a:1:{s:2:"en";s:22:"Your name is required.";}s:22:"cntctfrm_address_error";a:1:{s:2:"en";s:20:"Address is required.";}s:20:"cntctfrm_email_error";a:1:{s:2:"en";s:34:"A valid email address is required.";}s:20:"cntctfrm_phone_error";a:1:{s:2:"en";s:25:"Phone number is required.";}s:22:"cntctfrm_subject_error";a:1:{s:2:"en";s:20:"Subject is required.";}s:22:"cntctfrm_message_error";a:1:{s:2:"en";s:25:"Message text is required.";}s:25:"cntctfrm_attachment_error";a:1:{s:2:"en";s:25:"File format is not valid.";}s:32:"cntctfrm_attachment_upload_error";a:1:{s:2:"en";s:18:"File upload error.";}s:30:"cntctfrm_attachment_move_error";a:1:{s:2:"en";s:31:"The file could not be uploaded.";}s:30:"cntctfrm_attachment_size_error";a:1:{s:2:"en";s:23:"This file is too large.";}s:22:"cntctfrm_captcha_error";a:1:{s:2:"en";s:28:"Please fill out the CAPTCHA.";}s:19:"cntctfrm_form_error";a:1:{s:2:"en";s:44:"Please make corrections below and try again.";}s:26:"cntctfrm_action_after_send";i:1;s:19:"cntctfrm_thank_text";a:1:{s:2:"en";s:28:"Thank you for contacting us.";}s:21:"cntctfrm_redirect_url";s:0:"";s:29:"cntctfrm_delete_attached_file";s:1:"0";s:19:"cntctfrm_html_email";i:1;s:28:"cntctfrm_site_name_parameter";s:11:"SERVER_NAME";s:30:"cntctfrm_change_label_in_email";i:0;}', 'yes'),
(244, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:36:"contact-form-plugin/contact_form.php";s:5:"1.7.3";}}}', 'yes'),
(268, '_site_transient_timeout_browser_28b825f204e7ebd320756bd6294a29c1', '1443073392', 'yes'),
(269, '_site_transient_browser_28b825f204e7ebd320756bd6294a29c1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"40.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(311, '_transient_timeout_plugin_slugs', '1442895468', 'no'),
(312, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-plugin/contact_form.php";i:2;s:32:"disqus-comment-system/disqus.php";i:3;s:9:"hello.php";i:4;s:19:"twitter/twitter.php";i:5;s:58:"widget-embed-lastest-tweets/widget-embed-latest-tweets.php";}', 'no'),
(313, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1442832283', 'no'),
(314, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(319, 'rewrite_rules', 'a:70:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(332, 'category_children', 'a:0:{}', 'yes'),
(338, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1442817271', 'yes'),
(339, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(340, '_site_transient_timeout_theme_roots', '1442808284', 'yes'),
(341, '_site_transient_theme_roots', 'a:4:{s:7:"mytheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(343, 'disqus_active', '0', 'yes'),
(344, 'disqus_version', '2.84', 'yes'),
(351, 'widget_twitter-follow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, '_site_transient_timeout_available_translations', '1442818056', 'yes');
INSERT INTO `mytheme_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(353, '_site_transient_available_translations', 'a:65:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 20:42:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/4.3/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 19:48:02";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:15:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 08:45:05";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 04:19:00";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:22:20";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-09 10:05:26";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:35:36";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:68:"http://downloads.wordpress.org/translation/core/4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 22:30:30";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:53:46";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 18:40:22";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-25 13:32:40";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:17:58";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-10 15:08:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 14:28:09";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 15:13:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-14 08:49:12";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 12:47:55";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 17:47:38";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 06:13:38";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 02:18:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:45:19";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 06:57:09";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 02:24:55";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 14:23:10";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-31 19:45:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 05:50:57";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 08:09:24";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:50:06";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(358, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1442807596;s:7:"checked";a:6:{s:19:"akismet/akismet.php";s:5:"3.1.3";s:36:"contact-form-plugin/contact_form.php";s:4:"3.94";s:32:"disqus-comment-system/disqus.php";s:4:"2.84";s:9:"hello.php";s:3:"1.6";s:19:"twitter/twitter.php";s:5:"1.1.0";s:58:"widget-embed-lastest-tweets/widget-embed-latest-tweets.php";s:5:"0.6.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}s:36:"contact-form-plugin/contact_form.php";O:8:"stdClass":6:{s:2:"id";s:5:"22832";s:4:"slug";s:19:"contact-form-plugin";s:6:"plugin";s:36:"contact-form-plugin/contact_form.php";s:11:"new_version";s:4:"3.94";s:3:"url";s:50:"https://wordpress.org/plugins/contact-form-plugin/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/contact-form-plugin.3.94.zip";}s:32:"disqus-comment-system/disqus.php";O:8:"stdClass":6:{s:2:"id";s:4:"4500";s:4:"slug";s:21:"disqus-comment-system";s:6:"plugin";s:32:"disqus-comment-system/disqus.php";s:11:"new_version";s:4:"2.84";s:3:"url";s:52:"https://wordpress.org/plugins/disqus-comment-system/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/disqus-comment-system.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:19:"twitter/twitter.php";O:8:"stdClass":7:{s:2:"id";s:4:"5923";s:4:"slug";s:7:"twitter";s:6:"plugin";s:19:"twitter/twitter.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:38:"https://wordpress.org/plugins/twitter/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/twitter.1.1.0.zip";s:14:"upgrade_notice";s:126:"Shortcode improvements for ajax-loaded posts. Remove photo, gallery, and product Twitter Cards no longer supported by Twitter.";}s:58:"widget-embed-lastest-tweets/widget-embed-latest-tweets.php";O:8:"stdClass":6:{s:2:"id";s:5:"33963";s:4:"slug";s:27:"widget-embed-lastest-tweets";s:6:"plugin";s:58:"widget-embed-lastest-tweets/widget-embed-latest-tweets.php";s:11:"new_version";s:5:"0.6.4";s:3:"url";s:58:"https://wordpress.org/plugins/widget-embed-lastest-tweets/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/widget-embed-lastest-tweets.zip";}}}', 'yes'),
(359, 'twitter_widgets', 'a:3:{s:5:"theme";s:4:"dark";s:10:"link-color";s:6:"000000";s:12:"border-color";s:6:"000000";}', 'yes'),
(360, 'twitter_site_attribution', '', 'yes'),
(361, 'twitter_share', 'a:3:{s:8:"position";s:4:"both";s:4:"size";s:5:"large";s:5:"count";s:4:"none";}', 'yes'),
(364, 'widget_welt_last_tweets', 'a:2:{i:3;a:10:{s:5:"title";s:7:"Twitter";s:5:"count";i:3;s:8:"maxwidth";i:250;s:5:"align";s:4:"none";s:11:"hide_thread";b:1;s:11:"include_rts";b:1;s:10:"hide_media";b:1;s:15:"exclude_replies";b:1;s:4:"lang";s:2:"en";s:11:"screen_name";s:6:"yesubc";}s:12:"_multiwidget";i:1;}', 'yes'),
(365, 'welt_twitter_oauth_var', 'a:4:{s:12:"consumer_key";s:25:"pe6QprRSJCObCe5G3FI6W5h6U";s:15:"consumer_secret";s:50:"Ha1F4KOX2ktEfI0FpRnnKZW53vxwGXOJCVHSJRj4TUmae10Dvv";s:9:"token_key";s:50:"45558048-v0zYXglBp4hDnTFuPLniIEiivpL1EWtO51QJMQoKB";s:12:"token_secret";s:45:"rbEwvbenmZ6f8uUAt6wjiQNwUjfId1dd60jR32RlX1trl";}', 'yes'),
(368, '_transient_timeout_last_tweet_welt_last_tweets-3', '1442809167', 'no'),
(369, '_transient_last_tweet_welt_last_tweets-3', 'a:3:{i:0;s:18:"637972278597160960";i:1;s:18:"637591588001050624";i:2;s:18:"627450137091051520";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_postmeta`
--

CREATE TABLE IF NOT EXISTS `mytheme_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_postmeta`
--

INSERT INTO `mytheme_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1442376007:1'),
(3, 2, '_edit_last', '1'),
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1442373874:1'),
(6, 10, '_edit_last', '1'),
(7, 10, '_edit_lock', '1442373901:1'),
(8, 12, '_edit_last', '1'),
(9, 12, '_edit_lock', '1442373924:1'),
(10, 15, '_edit_last', '1'),
(11, 15, '_edit_lock', '1442471215:1'),
(12, 17, '_menu_item_type', 'post_type'),
(13, 17, '_menu_item_menu_item_parent', '0'),
(14, 17, '_menu_item_object_id', '15'),
(15, 17, '_menu_item_object', 'page'),
(16, 17, '_menu_item_target', ''),
(17, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 17, '_menu_item_xfn', ''),
(19, 17, '_menu_item_url', ''),
(21, 18, '_menu_item_type', 'post_type'),
(22, 18, '_menu_item_menu_item_parent', '0'),
(23, 18, '_menu_item_object_id', '12'),
(24, 18, '_menu_item_object', 'page'),
(25, 18, '_menu_item_target', ''),
(26, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 18, '_menu_item_xfn', ''),
(28, 18, '_menu_item_url', ''),
(30, 19, '_menu_item_type', 'post_type'),
(31, 19, '_menu_item_menu_item_parent', '0'),
(32, 19, '_menu_item_object_id', '10'),
(33, 19, '_menu_item_object', 'page'),
(34, 19, '_menu_item_target', ''),
(35, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 19, '_menu_item_xfn', ''),
(37, 19, '_menu_item_url', ''),
(39, 20, '_menu_item_type', 'post_type'),
(40, 20, '_menu_item_menu_item_parent', '0'),
(41, 20, '_menu_item_object_id', '7'),
(42, 20, '_menu_item_object', 'page'),
(43, 20, '_menu_item_target', ''),
(44, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 20, '_menu_item_xfn', ''),
(46, 20, '_menu_item_url', ''),
(48, 21, '_menu_item_type', 'post_type'),
(49, 21, '_menu_item_menu_item_parent', '0'),
(50, 21, '_menu_item_object_id', '2'),
(51, 21, '_menu_item_object', 'page'),
(52, 21, '_menu_item_target', ''),
(53, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 21, '_menu_item_xfn', ''),
(55, 21, '_menu_item_url', ''),
(57, 1, '_edit_lock', '1442800339:1'),
(58, 1, '_edit_last', '1'),
(59, 25, '_wp_attached_file', '2015/09/map.png'),
(60, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:760;s:6:"height";i:308;s:4:"file";s:15:"2015/09/map.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"map-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"map-300x122.png";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(61, 25, '_wp_attachment_image_alt', 'Google Map'),
(64, 29, '_edit_last', '1'),
(65, 29, '_edit_lock', '1442797097:1');

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_posts`
--

CREATE TABLE IF NOT EXISTS `mytheme_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_posts`
--

INSERT INTO `mytheme_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-31 07:32:08', '2015-08-31 07:32:08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'This is the best music for your headphones', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-09-21 01:54:26', '2015-09-21 01:54:26', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-31 07:32:08', '2015-08-31 07:32:08', 'About Us', 'About Us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-09-16 03:56:26', '2015-09-16 03:56:26', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?page_id=2', 0, 'page', '', 0),
(5, 1, '2015-09-16 03:24:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-16 03:24:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=5', 0, 'post', '', 0),
(6, 1, '2015-09-16 03:26:08', '2015-09-16 03:26:08', 'About Us', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-09-16 03:26:08', '2015-09-16 03:26:08', '', 2, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-09-16 03:26:49', '2015-09-16 03:26:49', 'Shortcodes page', 'Shortcodes', '', 'publish', 'closed', 'closed', '', 'shortcodes', '', '', '2015-09-16 03:26:49', '2015-09-16 03:26:49', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-09-16 03:26:49', '2015-09-16 03:26:49', 'Shortcodes page', 'Shortcodes', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-09-16 03:26:49', '2015-09-16 03:26:49', '', 7, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-09-16 03:26:53', '2015-09-16 03:26:53', 'Shortcodes page', 'Shortcodes', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2015-09-16 03:26:53', '2015-09-16 03:26:53', '', 7, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/7-autosave-v1/', 0, 'revision', '', 0),
(10, 1, '2015-09-16 03:27:15', '2015-09-16 03:27:15', 'Post page', 'Post', '', 'publish', 'closed', 'closed', '', 'post', '', '', '2015-09-16 03:27:15', '2015-09-16 03:27:15', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-09-16 03:27:15', '2015-09-16 03:27:15', 'Post page', 'Post', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-09-16 03:27:15', '2015-09-16 03:27:15', '', 10, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2015-09-16 03:27:40', '2015-09-16 03:27:40', 'Blog page', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2015-09-16 03:27:40', '2015-09-16 03:27:40', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-09-16 03:27:40', '2015-09-16 03:27:40', 'Blog page', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-09-16 03:27:40', '2015-09-16 03:27:40', '', 12, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-09-16 03:27:47', '2015-09-16 03:27:47', 'Blog page', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2015-09-16 03:27:47', '2015-09-16 03:27:47', '', 12, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/12-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2015-09-16 03:28:04', '2015-09-16 03:28:04', '<a href="http://localhost:1234/projects/workshop/wp-workshop/wp-content/uploads/2015/09/map.png"><img class="alignnone size-full wp-image-25" src="http://localhost:1234/projects/workshop/wp-workshop/wp-content/uploads/2015/09/map.png" alt="Google Map" width="760" height="308" /></a>\r\n\r\nContact Infos\r\n\r\n<span class="cntctfrm_shortcode">[contact_form]</span>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-09-17 05:44:39', '2015-09-17 05:44:39', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-09-16 03:28:04', '2015-09-16 03:28:04', 'Contact page', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-09-16 03:28:04', '2015-09-16 03:28:04', '', 15, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-09-16 03:53:18', '2015-09-16 03:53:18', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2015-09-16 03:53:42', '2015-09-16 03:53:42', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2015-09-16 03:53:18', '2015-09-16 03:53:18', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2015-09-16 03:53:42', '2015-09-16 03:53:42', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2015-09-16 03:53:19', '2015-09-16 03:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2015-09-16 03:53:41', '2015-09-16 03:53:41', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2015-09-16 03:53:19', '2015-09-16 03:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2015-09-16 03:53:41', '2015-09-16 03:53:41', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2015-09-16 03:53:19', '2015-09-16 03:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-09-16 03:53:41', '2015-09-16 03:53:41', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2015-09-16 04:07:17', '2015-09-16 04:07:17', 'Contact page\r\n\r\n<span class="cntctfrm_shortcode">[contact_form]</span>', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-09-16 04:07:17', '2015-09-16 04:07:17', '', 15, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/15-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-09-16 05:12:45', '2015-09-16 05:12:45', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Truly stunning designs & so user-friendly and intuitive', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-16 05:12:45', '2015-09-16 05:12:45', '', 1, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/1-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-09-16 05:14:12', '2015-09-16 05:14:12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Truly stunning designs & so user-friendly and intuitive', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-16 05:14:12', '2015-09-16 05:14:12', '', 1, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/16/1-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-09-17 05:44:23', '2015-09-17 05:44:23', 'Google Map', 'Google Map', '', 'inherit', 'open', 'closed', '', 'map', '', '', '2015-09-17 05:44:34', '2015-09-17 05:44:34', '', 15, 'http://localhost:1234/projects/workshop/wp-workshop/wp-content/uploads/2015/09/map.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2015-09-17 05:44:39', '2015-09-17 05:44:39', '<a href="http://localhost:1234/projects/workshop/wp-workshop/wp-content/uploads/2015/09/map.png"><img class="alignnone size-full wp-image-25" src="http://localhost:1234/projects/workshop/wp-workshop/wp-content/uploads/2015/09/map.png" alt="Google Map" width="760" height="308" /></a>\r\n\r\nContact Infos\r\n\r\n<span class="cntctfrm_shortcode">[contact_form]</span>', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-09-17 05:44:39', '2015-09-17 05:44:39', '', 15, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/17/15-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-09-18 23:43:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-18 23:43:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=27', 0, 'post', '', 0),
(28, 1, '2015-09-21 00:28:39', '2015-09-21 00:28:39', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'This is the best music for your headphones', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-21 00:28:39', '2015-09-21 00:28:39', '', 1, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/21/1-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-09-21 00:29:52', '2015-09-21 00:29:52', 'Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.', 'Truly stunning designs & so user-friendly and intuitive', '', 'publish', 'open', 'open', '', 'truly-stunning-designs-so-user-friendly-and-intuitive', '', '', '2015-09-21 00:45:43', '2015-09-21 00:45:43', '', 0, 'http://localhost:1234/projects/workshop/wp-workshop/?p=29', 0, 'post', '', 0),
(30, 1, '2015-09-21 00:29:52', '2015-09-21 00:29:52', 'Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.\r\n\r\nSed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Vestibulum facilisis, purunec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum liber. Praese nonummy mi in odio. Nunc interdum lacus sit amet orci.', 'Truly stunning designs & so user-friendly and intuitive', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2015-09-21 00:29:52', '2015-09-21 00:29:52', '', 29, 'http://localhost:1234/projects/workshop/wp-workshop/2015/09/21/29-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_terms`
--

CREATE TABLE IF NOT EXISTS `mytheme_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_terms`
--

INSERT INTO `mytheme_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Museum Childhood Corporation', 'museum-childhood-corporation', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Branding Log', 'branding-log', 0),
(4, 'post-format-image', 'post-format-image', 0),
(5, 'post-format-audio', 'post-format-audio', 0),
(6, 'Gif Animations', 'gif-animations', 0),
(7, 'Photography', 'photography', 0),
(8, 'Movie Service and Share', 'movie-service-and-share', 0),
(9, 'Web Design and Development', 'web-design-and-development', 0),
(10, 'Illustrator Design', 'illustrator-design', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_term_relationships`
--

CREATE TABLE IF NOT EXISTS `mytheme_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_term_relationships`
--

INSERT INTO `mytheme_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 5, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(29, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `mytheme_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_term_taxonomy`
--

INSERT INTO `mytheme_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Branding Logo', 0, 1),
(4, 4, 'post_format', '', 0, 0),
(5, 5, 'post_format', '', 0, 1),
(6, 6, 'category', 'Gif Animations', 0, 0),
(7, 7, 'category', 'Photography', 0, 0),
(8, 8, 'category', 'Movie Service and Share', 0, 0),
(9, 9, 'category', 'Web Design and Development', 0, 0),
(10, 10, 'category', 'Illustrator Design', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_usermeta`
--

CREATE TABLE IF NOT EXISTS `mytheme_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_usermeta`
--

INSERT INTO `mytheme_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'mytheme_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'mytheme_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'cntctfrm_install_multi_tooltip'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'mytheme_dashboard_quick_press_last_post_id', '5'),
(16, 1, 'mytheme_user-settings', 'mfold=o&libraryContent=browse&imgsize=full'),
(17, 1, 'mytheme_user-settings-time', '1442468675'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'session_tokens', 'a:2:{s:64:"fd17ae88214537b3e3e34fce08079c67bf5e4ec0d4b2a5874a78cb13a063fe12";a:4:{s:10:"expiration";i:1442792593;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0";s:5:"login";i:1442619793;}s:64:"4d04719519c880ecd657e2d3df347d774082cefb5b76aba21f555fbefef07413";a:4:{s:10:"expiration";i:1442961876;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0";s:5:"login";i:1442789076;}}');

-- --------------------------------------------------------

--
-- Table structure for table `mytheme_users`
--

CREATE TABLE IF NOT EXISTS `mytheme_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mytheme_users`
--

INSERT INTO `mytheme_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BEFpVjKCvHZj3mYhl.eMOv9t4BfbMp1', 'admin', 'sshrestha@lftechnology.com', '', '2015-08-31 07:32:07', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mytheme_cntctfrm_field`
--
ALTER TABLE `mytheme_cntctfrm_field`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `mytheme_commentmeta`
--
ALTER TABLE `mytheme_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191)), ADD KEY `disqus_dupecheck` (`meta_key`(191),`meta_value`(11));

--
-- Indexes for table `mytheme_comments`
--
ALTER TABLE `mytheme_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `mytheme_links`
--
ALTER TABLE `mytheme_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `mytheme_options`
--
ALTER TABLE `mytheme_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `mytheme_postmeta`
--
ALTER TABLE `mytheme_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mytheme_posts`
--
ALTER TABLE `mytheme_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `mytheme_terms`
--
ALTER TABLE `mytheme_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `mytheme_term_relationships`
--
ALTER TABLE `mytheme_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `mytheme_term_taxonomy`
--
ALTER TABLE `mytheme_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `mytheme_usermeta`
--
ALTER TABLE `mytheme_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mytheme_users`
--
ALTER TABLE `mytheme_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mytheme_cntctfrm_field`
--
ALTER TABLE `mytheme_cntctfrm_field`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mytheme_commentmeta`
--
ALTER TABLE `mytheme_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mytheme_comments`
--
ALTER TABLE `mytheme_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mytheme_links`
--
ALTER TABLE `mytheme_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mytheme_options`
--
ALTER TABLE `mytheme_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `mytheme_postmeta`
--
ALTER TABLE `mytheme_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `mytheme_posts`
--
ALTER TABLE `mytheme_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mytheme_terms`
--
ALTER TABLE `mytheme_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mytheme_term_taxonomy`
--
ALTER TABLE `mytheme_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mytheme_usermeta`
--
ALTER TABLE `mytheme_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `mytheme_users`
--
ALTER TABLE `mytheme_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
