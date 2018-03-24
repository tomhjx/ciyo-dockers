-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.249.50.181:16136
-- Generation Time: 2018-03-10 10:50:31
-- 服务器版本： 5.6.28-cdb2016-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciyo_blog`
--
CREATE DATABASE IF NOT EXISTS `ciyo_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ciyo_blog`;

-- --------------------------------------------------------

--
-- 表的结构 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `ciyo_extramessage`
--
CREATE DATABASE IF NOT EXISTS `ciyo_extramessage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyo_extramessage`;

-- --------------------------------------------------------

--
-- 表的结构 `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `device_id` varchar(64) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_bilibili_auth`
--

CREATE TABLE `em_bilibili_auth` (
  `open_id` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_client_version`
--

CREATE TABLE `em_client_version` (
  `id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `version` varchar(64) NOT NULL,
  `code` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `force_update` tinyint(1) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_diary`
--

CREATE TABLE `em_diary` (
  `user_id` bigint(20) NOT NULL,
  `record` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_dictionary`
--

CREATE TABLE `em_dictionary` (
  `user_id` bigint(20) NOT NULL,
  `record` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_dmzj_auth`
--

CREATE TABLE `em_dmzj_auth` (
  `open_id` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_facebook_auth`
--

CREATE TABLE `em_facebook_auth` (
  `open_id` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_game_record`
--

CREATE TABLE `em_game_record` (
  `user_id` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_payment_comment`
--

CREATE TABLE `em_payment_comment` (
  `product_purchase_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `story_id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `comment_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_payment_ranking`
--

CREATE TABLE `em_payment_ranking` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `story_id` bigint(20) NOT NULL,
  `total_fee` decimal(20,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_pic_record`
--

CREATE TABLE `em_pic_record` (
  `user_id` bigint(20) NOT NULL,
  `record` varchar(4096) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_promotion_code`
--

CREATE TABLE `em_promotion_code` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `transation_id` bigint(20) DEFAULT NULL,
  `app_store_transation_id` bigint(20) DEFAULT NULL,
  `code_expire_time` datetime DEFAULT NULL,
  `vendor` varchar(20) NOT NULL DEFAULT '',
  `vendor_record_id` bigint(20) NOT NULL DEFAULT '0',
  `pre_gen` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_promotion_code_vendor_record`
--

CREATE TABLE `em_promotion_code_vendor_record` (
  `id` bigint(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `count` int(11) NOT NULL,
  `code_expire_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_qq_auth`
--

CREATE TABLE `em_qq_auth` (
  `open_id` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_story`
--

CREATE TABLE `em_story` (
  `id` bigint(20) NOT NULL,
  `string_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_user`
--

CREATE TABLE `em_user` (
  `id` bigint(20) NOT NULL,
  `area_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `nickname` varchar(36) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `avatar_url` varchar(2083) DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `frozen` tinyint(1) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `grant_type` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_wechat_auth`
--

CREATE TABLE `em_wechat_auth` (
  `open_id` varchar(32) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `em_weibo_auth`
--

CREATE TABLE `em_weibo_auth` (
  `weibo_uid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE `options` (
  `id` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_str` varchar(255) DEFAULT NULL,
  `next` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `plays`
--

CREATE TABLE `plays` (
  `id` bigint(20) NOT NULL,
  `subtitleline` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `next` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `product_promotion_config`
--

CREATE TABLE `product_promotion_config` (
  `product_id` bigint(20) NOT NULL,
  `code_count` int(11) NOT NULL,
  `story_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_idx` (`device_id`),
  ADD KEY `qq_idx` (`qq`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `em_bilibili_auth`
--
ALTER TABLE `em_bilibili_auth`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `em_client_version`
--
ALTER TABLE `em_client_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `em_diary`
--
ALTER TABLE `em_diary`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `em_dictionary`
--
ALTER TABLE `em_dictionary`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `em_dmzj_auth`
--
ALTER TABLE `em_dmzj_auth`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `em_facebook_auth`
--
ALTER TABLE `em_facebook_auth`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `em_game_record`
--
ALTER TABLE `em_game_record`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `em_payment_comment`
--
ALTER TABLE `em_payment_comment`
  ADD PRIMARY KEY (`product_purchase_id`,`user_id`);

--
-- Indexes for table `em_payment_ranking`
--
ALTER TABLE `em_payment_ranking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_product_udx` (`user_id`,`story_id`);

--
-- Indexes for table `em_pic_record`
--
ALTER TABLE `em_pic_record`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id_udx` (`user_id`);

--
-- Indexes for table `em_promotion_code`
--
ALTER TABLE `em_promotion_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_11B613BB77153098` (`code`),
  ADD KEY `code_idx` (`code`),
  ADD KEY `user_idx` (`user_id`);

--
-- Indexes for table `em_promotion_code_vendor_record`
--
ALTER TABLE `em_promotion_code_vendor_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `em_qq_auth`
--
ALTER TABLE `em_qq_auth`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `em_story`
--
ALTER TABLE `em_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `em_user`
--
ALTER TABLE `em_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_code_phone_udx` (`area_code`,`phone`);

--
-- Indexes for table `em_wechat_auth`
--
ALTER TABLE `em_wechat_auth`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `em_weibo_auth`
--
ALTER TABLE `em_weibo_auth`
  ADD PRIMARY KEY (`weibo_uid`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plays`
--
ALTER TABLE `plays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `next_idx` (`next`),
  ADD KEY `type_idx` (`type`);

--
-- Indexes for table `product_promotion_config`
--
ALTER TABLE `product_promotion_config`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_idx` (`product_id`),
  ADD KEY `story_idx` (`story_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_client_version`
--
ALTER TABLE `em_client_version`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_payment_ranking`
--
ALTER TABLE `em_payment_ranking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_promotion_code`
--
ALTER TABLE `em_promotion_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_promotion_code_vendor_record`
--
ALTER TABLE `em_promotion_code_vendor_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_story`
--
ALTER TABLE `em_story`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `em_user`
--
ALTER TABLE `em_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `plays`
--
ALTER TABLE `plays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `ciyo_favorite`
--
CREATE DATABASE IF NOT EXISTS `ciyo_favorite` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyo_favorite`;

-- --------------------------------------------------------

--
-- 表的结构 `user_favorite_posts`
--

CREATE TABLE `user_favorite_posts` (
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `position` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_favorite_posts`
--
ALTER TABLE `user_favorite_posts`
  ADD PRIMARY KEY (`user_id`,`post_id`),
  ADD KEY `user_position_post` (`user_id`,`position`,`post_id`);
--
-- Database: `ciyo_live`
--
CREATE DATABASE IF NOT EXISTS `ciyo_live` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyo_live`;

-- --------------------------------------------------------

--
-- 表的结构 `jingxuan_inke_live`
--

CREATE TABLE `jingxuan_inke_live` (
  `inke_uid` varchar(100) NOT NULL,
  `nikename` varchar(100) DEFAULT NULL,
  `avatar` varchar(2083) DEFAULT NULL,
  `cover` varchar(2083) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `live_gifts_purchased`
--

CREATE TABLE `live_gifts_purchased` (
  `id` bigint(20) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `pizus_id` varchar(100) NOT NULL,
  `gift_json` varchar(1000) NOT NULL,
  `unit_price` decimal(20,2) NOT NULL,
  `gift_count` smallint(6) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `purchased_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `live_inke_live_info`
--

CREATE TABLE `live_inke_live_info` (
  `inke_uid` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `live_pizus_live_info`
--

CREATE TABLE `live_pizus_live_info` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `live_id` varchar(50) NOT NULL,
  `anchor_name` varchar(50) NOT NULL,
  `anchor_avatar` varchar(255) NOT NULL,
  `live_cover` varchar(255) NOT NULL,
  `recommended_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `live_pizus_user`
--

CREATE TABLE `live_pizus_user` (
  `user_id` bigint(20) NOT NULL,
  `pizus_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `live_record`
--

CREATE TABLE `live_record` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jingxuan_inke_live`
--
ALTER TABLE `jingxuan_inke_live`
  ADD PRIMARY KEY (`inke_uid`),
  ADD KEY `start_time_idx` (`start_time`),
  ADD KEY `end_time_idx` (`end_time`);

--
-- Indexes for table `live_gifts_purchased`
--
ALTER TABLE `live_gifts_purchased`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid_udx` (`transaction_id`),
  ADD KEY `user_idx` (`user_id`),
  ADD KEY `pizus_idx` (`pizus_id`);

--
-- Indexes for table `live_inke_live_info`
--
ALTER TABLE `live_inke_live_info`
  ADD PRIMARY KEY (`inke_uid`);

--
-- Indexes for table `live_pizus_live_info`
--
ALTER TABLE `live_pizus_live_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_pizus_user`
--
ALTER TABLE `live_pizus_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `pizus_udx` (`pizus_id`);

--
-- Indexes for table `live_record`
--
ALTER TABLE `live_record`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `live_gifts_purchased`
--
ALTER TABLE `live_gifts_purchased`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `live_pizus_live_info`
--
ALTER TABLE `live_pizus_live_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `live_record`
--
ALTER TABLE `live_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `ciyo_payment`
--
CREATE DATABASE IF NOT EXISTS `ciyo_payment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyo_payment`;

-- --------------------------------------------------------

--
-- 表的结构 `app_store_receipt`
--

CREATE TABLE `app_store_receipt` (
  `id` bigint(20) NOT NULL,
  `payer` varchar(64) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `time` datetime NOT NULL,
  `receipt` longtext NOT NULL,
  `env` varchar(20) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_id` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `iap_check_refund_log`
--

CREATE TABLE `iap_check_refund_log` (
  `id` bigint(20) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payer` varchar(64) NOT NULL,
  `check_time` datetime NOT NULL,
  `cancellation_date` datetime DEFAULT NULL,
  `is_refund` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_ciyocoin_purchased`
--

CREATE TABLE `payment_ciyocoin_purchased` (
  `id` bigint(20) NOT NULL,
  `out_trade_no` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `finish_time` datetime DEFAULT NULL,
  `ciyo_total_fee` decimal(20,2) NOT NULL,
  `item` smallint(6) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `total_fee` decimal(20,2) NOT NULL,
  `item_fee` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_product_purchased`
--

CREATE TABLE `payment_product_purchased` (
  `id` bigint(20) NOT NULL,
  `payer` varchar(64) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL DEFAULT '0',
  `appstore_transaction_id` varchar(100) NOT NULL DEFAULT '',
  `total_fee` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_time` datetime NOT NULL,
  `promotion_code_id` bigint(20) NOT NULL DEFAULT '0',
  `pay_type` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_products`
--

CREATE TABLE `payment_products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `ciyo_coin` int(11) NOT NULL DEFAULT '0',
  `app_store_id` varchar(100) NOT NULL DEFAULT '',
  `app_id` varchar(20) NOT NULL DEFAULT '10001',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_thridparty_notify`
--

CREATE TABLE `payment_thridparty_notify` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `receive_time` datetime NOT NULL,
  `body` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_trade_query_log`
--

CREATE TABLE `payment_trade_query_log` (
  `id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `query_time` datetime NOT NULL,
  `trade_info` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_transaction`
--

CREATE TABLE `payment_transaction` (
  `id` bigint(20) NOT NULL,
  `payer` varchar(64) NOT NULL,
  `client_ip` varchar(200) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `total_fee` decimal(20,2) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `payer_type` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_transaction_finish`
--

CREATE TABLE `payment_transaction_finish` (
  `transaction_id` bigint(20) NOT NULL,
  `notify_receive_time` datetime NOT NULL,
  `pay_time` datetime NOT NULL,
  `notify_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `payment_transaction_request`
--

CREATE TABLE `payment_transaction_request` (
  `transaction_id` bigint(20) NOT NULL,
  `request_params` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_store_receipt`
--
ALTER TABLE `app_store_receipt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_udx` (`transaction_id`);

--
-- Indexes for table `iap_check_refund_log`
--
ALTER TABLE `iap_check_refund_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_ciyocoin_purchased`
--
ALTER TABLE `payment_ciyocoin_purchased`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `out_trade_udx` (`out_trade_no`);

--
-- Indexes for table `payment_product_purchased`
--
ALTER TABLE `payment_product_purchased`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_transaction_udx` (`payer`,`transaction_id`,`appstore_transaction_id`,`promotion_code_id`),
  ADD KEY `payer_idx` (`payer`),
  ADD KEY `product_idx` (`product_id`);

--
-- Indexes for table `payment_products`
--
ALTER TABLE `payment_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appstore_idx` (`app_store_id`),
  ADD KEY `appid_idx` (`app_id`);

--
-- Indexes for table `payment_thridparty_notify`
--
ALTER TABLE `payment_thridparty_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_trade_query_log`
--
ALTER TABLE `payment_trade_query_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_idx` (`transaction_id`);

--
-- Indexes for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_transaction_finish`
--
ALTER TABLE `payment_transaction_finish`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `payment_transaction_request`
--
ALTER TABLE `payment_transaction_request`
  ADD PRIMARY KEY (`transaction_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `app_store_receipt`
--
ALTER TABLE `app_store_receipt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `iap_check_refund_log`
--
ALTER TABLE `iap_check_refund_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_ciyocoin_purchased`
--
ALTER TABLE `payment_ciyocoin_purchased`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_product_purchased`
--
ALTER TABLE `payment_product_purchased`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_products`
--
ALTER TABLE `payment_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_thridparty_notify`
--
ALTER TABLE `payment_thridparty_notify`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_trade_query_log`
--
ALTER TABLE `payment_trade_query_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `payment_transaction`
--
ALTER TABLE `payment_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `ciyo_report`
--
CREATE DATABASE IF NOT EXISTS `ciyo_report` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyo_report`;

-- --------------------------------------------------------

--
-- 表的结构 `comment_reports`
--

CREATE TABLE `comment_reports` (
  `id` bigint(20) NOT NULL,
  `reporter_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `post_reports`
--

CREATE TABLE `post_reports` (
  `id` bigint(20) NOT NULL,
  `reporter_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_reports`
--
ALTER TABLE `comment_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_reporter_udx` (`comment_id`,`reporter_id`);

--
-- Indexes for table `post_reports`
--
ALTER TABLE `post_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_reporter_udx` (`post_id`,`reporter_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comment_reports`
--
ALTER TABLE `comment_reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `post_reports`
--
ALTER TABLE `post_reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `ciyo_robot`
--
CREATE DATABASE IF NOT EXISTS `ciyo_robot` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ciyo_robot`;

-- --------------------------------------------------------

--
-- 表的结构 `authorization`
--

CREATE TABLE `authorization` (
  `uid` bigint(20) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `expires_in` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `follow_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `access_token` (`access_token`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `ciyocon`
--
CREATE DATABASE IF NOT EXISTS `ciyocon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyocon`;

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `action` smallint(6) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC
PARTITION BY RANGE (id)
(
PARTITION p1 VALUES LESS THAN (849084) ENGINE=InnoDB,
PARTITION p2 VALUES LESS THAN (10960155) ENGINE=InnoDB,
PARTITION p3 VALUES LESS THAN MAXVALUE ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `admin_customize_content`
--

CREATE TABLE `admin_customize_content` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_daily_analysis`
--

CREATE TABLE `admin_daily_analysis` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dailyCount` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_favor`
--

CREATE TABLE `admin_favor` (
  `id` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_gray_list`
--

CREATE TABLE `admin_gray_list` (
  `post_id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `operating_time` datetime NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `operation_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `operation_time` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_manager`
--

CREATE TABLE `admin_manager` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `frozen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_manager_operation_account`
--

CREATE TABLE `admin_manager_operation_account` (
  `manager_id` int(11) NOT NULL,
  `operation_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_manager_role`
--

CREATE TABLE `admin_manager_role` (
  `manager_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_account`
--

CREATE TABLE `admin_operation_account` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_recommendation_cron_job`
--

CREATE TABLE `admin_recommendation_cron_job` (
  `id` int(11) NOT NULL,
  `recommendation_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recommendation_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `publish_time` datetime NOT NULL,
  `recommended_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annotation` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `route_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `admin_tag`
--

CREATE TABLE `admin_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  `post_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_tag_post`
--

CREATE TABLE `admin_tag_post` (
  `id` bigint(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_topics_views`
--

CREATE TABLE `admin_topics_views` (
  `id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `uni_views` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `android_auto_update`
--

CREATE TABLE `android_auto_update` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `version` varchar(100) NOT NULL,
  `upload_date` datetime NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `log` varchar(500) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `auto_update` tinyint(1) NOT NULL,
  `version_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `anti_rubbish`
--

CREATE TABLE `anti_rubbish` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `app_channel_package`
--

CREATE TABLE `app_channel_package` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `app_channel_title`
--

CREATE TABLE `app_channel_title` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `audit_image`
--

CREATE TABLE `audit_image` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_client`
--

CREATE TABLE `auth_client` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `redirect_uri1` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri2` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `auth_password`
--

CREATE TABLE `auth_password` (
  `user_id` bigint(20) NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `auth_qq`
--

CREATE TABLE `auth_qq` (
  `open_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `auth_sina_weibo`
--

CREATE TABLE `auth_sina_weibo` (
  `weibo_uid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `auth_token`
--

CREATE TABLE `auth_token` (
  `id` bigint(20) NOT NULL,
  `access_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scope` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `ttl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `auth_wechat`
--

CREATE TABLE `auth_wechat` (
  `open_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `blocking_device`
--

CREATE TABLE `blocking_device` (
  `id` int(11) NOT NULL,
  `platform` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `blocking_topic`
--

CREATE TABLE `blocking_topic` (
  `id` int(11) NOT NULL,
  `channel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `topics` varchar(1024) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `caitu_record`
--

CREATE TABLE `caitu_record` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `ddate` datetime NOT NULL,
  `tdate` datetime NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `state` smallint(6) DEFAULT NULL,
  `fee` decimal(20,2) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `campaign`
--

CREATE TABLE `campaign` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `views` int(11) NOT NULL DEFAULT '-1',
  `unique_views` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `campaign_topic`
--

CREATE TABLE `campaign_topic` (
  `campaign_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `position` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `captured_site_content`
--

CREATE TABLE `captured_site_content` (
  `site_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `city`
--

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `city_post`
--

CREATE TABLE `city_post` (
  `id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cms_setting`
--

CREATE TABLE `cms_setting` (
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `column`
--

CREATE TABLE `column` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `column_element`
--

CREATE TABLE `column_element` (
  `column_id` int(11) NOT NULL,
  `element_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `recommendation_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `replied_id` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `liked_count` int(11) NOT NULL,
  `annotation` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `domain_whitelist`
--

CREATE TABLE `domain_whitelist` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `editor_choice_topic`
--

CREATE TABLE `editor_choice_topic` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `editor_choice_topic_category`
--

CREATE TABLE `editor_choice_topic_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `expression`
--

CREATE TABLE `expression` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `expression_package`
--

CREATE TABLE `expression_package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `last_modified_time` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `downloadUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `expression_package_version`
--

CREATE TABLE `expression_package_version` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game`
--

CREATE TABLE `game` (
  `id` bigint(20) NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ios_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ios_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_screenshots` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` smallint(6) DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `player_numbers` bigint(20) DEFAULT '0',
  `launch_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `game_banner`
--

CREATE TABLE `game_banner` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `share_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_text` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_big_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `unique_views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_category`
--

CREATE TABLE `game_category` (
  `id` int(11) NOT NULL,
  `icon` varchar(2083) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `game_columns`
--

CREATE TABLE `game_columns` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `game_columns_recommendation`
--

CREATE TABLE `game_columns_recommendation` (
  `id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `game_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `image_review`
--

CREATE TABLE `image_review` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` smallint(6) NOT NULL,
  `review` tinyint(1) NOT NULL,
  `rate` double NOT NULL,
  `last_review_time` datetime NOT NULL,
  `review_result` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `image_review_source`
--

CREATE TABLE `image_review_source` (
  `review_id` bigint(20) NOT NULL,
  `source_type` smallint(6) NOT NULL,
  `source_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `input_domain`
--

CREATE TABLE `input_domain` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `input_domain_daily_record`
--

CREATE TABLE `input_domain_daily_record` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `domain_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `input_domain_record`
--

CREATE TABLE `input_domain_record` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ip_blocker_records`
--

CREATE TABLE `ip_blocker_records` (
  `ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_time` int(11) NOT NULL,
  `day_count` int(11) NOT NULL,
  `hour_count` smallint(6) NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `like_comment`
--

CREATE TABLE `like_comment` (
  `id` bigint(20) NOT NULL,
  `liker_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `state` smallint(6) NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `like_post`
--

CREATE TABLE `like_post` (
  `id` bigint(20) NOT NULL,
  `liker_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `state` smallint(6) NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `live_post`
--

CREATE TABLE `live_post` (
  `id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finish` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `notification_counting`
--

CREATE TABLE `notification_counting` (
  `user_id` bigint(20) NOT NULL,
  `likes_unread` int(11) NOT NULL DEFAULT '0',
  `events_unread` int(11) NOT NULL DEFAULT '0',
  `official_cursor` bigint(20) NOT NULL DEFAULT '0',
  `comments_unread` int(11) NOT NULL DEFAULT '0',
  `topics_unread` int(11) NOT NULL DEFAULT '0',
  `mentions_unread` int(11) NOT NULL DEFAULT '0',
  `announcements_unread` int(11) NOT NULL DEFAULT '0',
  `no_topic_unread` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_event`
--

CREATE TABLE `notification_event` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_group_event`
--

CREATE TABLE `notification_group_event` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_type` smallint(6) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `actor_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `notification_like`
--

CREATE TABLE `notification_like` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `liker_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `likee_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_official`
--

CREATE TABLE `notification_official` (
  `id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `type` smallint(6) NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `unique_views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_official_push`
--

CREATE TABLE `notification_official_push` (
  `notification_id` bigint(20) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `push_time` datetime NOT NULL,
  `platform` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pushed` smallint(6) NOT NULL,
  `tags` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_push_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_push_setting`
--

CREATE TABLE `notification_push_setting` (
  `user_id` bigint(20) NOT NULL,
  `no_disturb` tinyint(1) NOT NULL,
  `no_disturb_timezone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_disturb_start_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_disturb_end_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mention_me` smallint(6) NOT NULL DEFAULT '1',
  `comment_me` smallint(6) NOT NULL DEFAULT '1',
  `image_comment_me` smallint(6) NOT NULL DEFAULT '1',
  `follow_me` smallint(6) NOT NULL DEFAULT '1',
  `like_me` smallint(6) NOT NULL DEFAULT '1',
  `message_me` smallint(6) NOT NULL DEFAULT '1',
  `topic_apply` smallint(6) NOT NULL DEFAULT '1',
  `schedule` smallint(6) NOT NULL DEFAULT '1',
  `followee_post` smallint(6) NOT NULL DEFAULT '2',
  `followee_anchor` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_topic_counting`
--

CREATE TABLE `notification_topic_counting` (
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `events_unread` int(11) NOT NULL,
  `likes_unread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `notification_topic_event`
--

CREATE TABLE `notification_topic_event` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `actor_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `notification_topic_like`
--

CREATE TABLE `notification_topic_like` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `liker_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `likee_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `phone_code`
--

CREATE TABLE `phone_code` (
  `area_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `reposted_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audio_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `news_source` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annotation` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folded` tinyint(1) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `sticky_level` smallint(6) NOT NULL DEFAULT '0',
  `im_group_id` bigint(20) DEFAULT NULL,
  `schedule_id` bigint(20) DEFAULT NULL,
  `voting_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `post_category_score`
--

CREATE TABLE `post_category_score` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `only_category` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_comment`
--

CREATE TABLE `post_comment` (
  `post_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `has_image` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `post_comment_image`
--

CREATE TABLE `post_comment_image` (
  `post_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `post_counting`
--

CREATE TABLE `post_counting` (
  `post_id` bigint(20) NOT NULL,
  `liked_count` int(11) NOT NULL,
  `commented_count` int(11) NOT NULL,
  `reposted_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `post_exposure_records`
--

CREATE TABLE `post_exposure_records` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_resource_title`
--

CREATE TABLE `post_resource_title` (
  `post_id` bigint(20) NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `promotion_banner`
--

CREATE TABLE `promotion_banner` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `share_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_text` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_big_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qingdian_user`
--

CREATE TABLE `qingdian_user` (
  `user_id` bigint(20) NOT NULL,
  `request_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `rec_group_posts`
--

CREATE TABLE `rec_group_posts` (
  `seq_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `recommendable_topic`
--

CREATE TABLE `recommendable_topic` (
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `recommendation_banner`
--

CREATE TABLE `recommendation_banner` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `share_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_text` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_big_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `unique_views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `recommendation_group`
--

CREATE TABLE `recommendation_group` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `recommendation_item`
--

CREATE TABLE `recommendation_item` (
  `id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `reason` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `sticky` smallint(6) NOT NULL DEFAULT '0',
  `position` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `recommendation_subbanner`
--

CREATE TABLE `recommendation_subbanner` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `position` smallint(6) NOT NULL,
  `image_url` varchar(2014) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `recommendation_topic_test`
--

CREATE TABLE `recommendation_topic_test` (
  `property` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `score` smallint(6) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `reporter_id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `review_state`
--

CREATE TABLE `review_state` (
  `id` int(11) NOT NULL,
  `channel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `in_review` tinyint(1) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `canceller_id` bigint(20) DEFAULT NULL,
  `joiner_count` int(11) NOT NULL,
  `last_notify_time` int(11) DEFAULT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `schedule_by_topic`
--

CREATE TABLE `schedule_by_topic` (
  `topic_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) NOT NULL,
  `start_time` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `schedule_by_user`
--

CREATE TABLE `schedule_by_user` (
  `user_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) NOT NULL,
  `start_time` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `schedule_joiners`
--

CREATE TABLE `schedule_joiners` (
  `schedule_id` bigint(20) NOT NULL,
  `joiner_id` bigint(20) NOT NULL,
  `position` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `search_keyword`
--

CREATE TABLE `search_keyword` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `create_time` datetime NOT NULL,
  `last_record_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `search_record`
--

CREATE TABLE `search_record` (
  `id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_time` datetime NOT NULL,
  `search_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sms_records`
--

CREATE TABLE `sms_records` (
  `id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `platform` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `spammer_records`
--

CREATE TABLE `spammer_records` (
  `id` bigint(20) NOT NULL,
  `spammer_id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `special_subject`
--

CREATE TABLE `special_subject` (
  `id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `special_subject_relation`
--

CREATE TABLE `special_subject_relation` (
  `id` bigint(20) NOT NULL,
  `special_subject_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `associated_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sticker`
--

CREATE TABLE `sticker` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` smallint(6) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` smallint(6) NOT NULL,
  `last_modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sticker_version`
--

CREATE TABLE `sticker_version` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sub_banner`
--

CREATE TABLE `sub_banner` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `position` smallint(6) NOT NULL,
  `image_url` varchar(2014) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `task_state`
--

CREATE TABLE `task_state` (
  `id` int(11) NOT NULL,
  `task_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_check_time` datetime DEFAULT NULL,
  `run_interval` int(11) NOT NULL,
  `next_run_time` datetime DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `test_topic`
--

CREATE TABLE `test_topic` (
  `property` smallint(6) NOT NULL,
  `score` smallint(6) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--

CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `index_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_count` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `op_mark` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_count` int(11) NOT NULL,
  `follower_position` int(11) NOT NULL,
  `apply_to_follow` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certified` tinyint(1) NOT NULL DEFAULT '0',
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_announcing`
--

CREATE TABLE `topic_announcing` (
  `topic_id` bigint(20) NOT NULL,
  `last_announce_time` int(11) NOT NULL,
  `last_announce_post` bigint(20) NOT NULL,
  `last_announce_time2` int(11) DEFAULT NULL,
  `last_announce_post2` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_category`
--

CREATE TABLE `topic_category` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_category_rel`
--

CREATE TABLE `topic_category_rel` (
  `category_id` int(11) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_category_score`
--

CREATE TABLE `topic_category_score` (
  `category_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_certified`
--

CREATE TABLE `topic_certified` (
  `id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_chat_post`
--

CREATE TABLE `topic_chat_post` (
  `topic_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_core_member_meta`
--

CREATE TABLE `topic_core_member_meta` (
  `topic_id` bigint(20) NOT NULL,
  `core_member_count` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_core_members`
--

CREATE TABLE `topic_core_members` (
  `topic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order` smallint(6) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_creating_application`
--

CREATE TABLE `topic_creating_application` (
  `id` bigint(20) NOT NULL,
  `apply_time` datetime NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `index_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apply_to_follow` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_creating_quota`
--

CREATE TABLE `topic_creating_quota` (
  `user_id` bigint(20) NOT NULL,
  `quota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_default_group`
--

CREATE TABLE `topic_default_group` (
  `topic_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_follower`
--

CREATE TABLE `topic_follower` (
  `topic_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_following_application`
--

CREATE TABLE `topic_following_application` (
  `topic_id` bigint(20) NOT NULL,
  `applicant_id` bigint(20) NOT NULL,
  `position` bigint(20) NOT NULL,
  `apply_time` int(11) NOT NULL,
  `apply_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_post`
--

CREATE TABLE `topic_post` (
  `topic_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_sticky_post`
--

CREATE TABLE `topic_sticky_post` (
  `id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `level` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `topic_tag`
--

CREATE TABLE `topic_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `order_key` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_tag_rel`
--

CREATE TABLE `topic_tag_rel` (
  `topic_id` bigint(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_titles`
--

CREATE TABLE `topic_titles` (
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_user_following`
--

CREATE TABLE `topic_user_following` (
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `state` smallint(6) NOT NULL,
  `position` int(11) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_user_meta`
--

CREATE TABLE `topic_user_meta` (
  `user_id` bigint(20) NOT NULL,
  `followee_count` int(11) NOT NULL,
  `followee_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `topic_visitor_log`
--

CREATE TABLE `topic_visitor_log` (
  `id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `nickname` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `area_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `experience` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `ciyo_coin` decimal(20,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_blacklist`
--

CREATE TABLE `user_blacklist` (
  `user_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_comment`
--

CREATE TABLE `user_comment` (
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `has_image` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_comment_image`
--

CREATE TABLE `user_comment_image` (
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_counting`
--

CREATE TABLE `user_counting` (
  `user_id` bigint(20) NOT NULL,
  `post_count` int(11) NOT NULL,
  `image_comment_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_device`
--

CREATE TABLE `user_device` (
  `user_id` bigint(20) NOT NULL,
  `platform` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_following`
--

CREATE TABLE `user_following` (
  `id` bigint(20) NOT NULL,
  `follower_id` bigint(20) NOT NULL,
  `followee_id` bigint(20) NOT NULL,
  `state` smallint(6) NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_following_counting`
--

CREATE TABLE `user_following_counting` (
  `target_id` bigint(20) NOT NULL,
  `follower_count` int(11) DEFAULT NULL,
  `followee_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_frozen`
--

CREATE TABLE `user_frozen` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `reason` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_live`
--

CREATE TABLE `user_live` (
  `user_id` bigint(20) NOT NULL,
  `pizus_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_mission_state`
--

CREATE TABLE `user_mission_state` (
  `user_id` bigint(20) NOT NULL,
  `filled_profile` smallint(6) NOT NULL,
  `invited_friends` smallint(6) NOT NULL,
  `followed_topic` smallint(6) NOT NULL,
  `daily_date` date DEFAULT NULL,
  `daily_like_post` smallint(6) NOT NULL,
  `daily_comment` smallint(6) NOT NULL,
  `daily_img_comment` smallint(6) NOT NULL,
  `daily_share` smallint(6) NOT NULL,
  `daily_post` smallint(6) NOT NULL,
  `daily_signin` smallint(6) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `set_favorite_topic` smallint(6) NOT NULL,
  `set_attributes` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_post`
--

CREATE TABLE `user_post` (
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` bigint(20) NOT NULL,
  `cover_url` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `honmei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constellation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `community` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fancy` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_sign_in`
--

CREATE TABLE `user_sign_in` (
  `user_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `os` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_topic_creating`
--

CREATE TABLE `user_topic_creating` (
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_topic_managing`
--

CREATE TABLE `user_topic_managing` (
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_vip`
--

CREATE TABLE `user_vip` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `certification_text` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `voting`
--

CREATE TABLE `voting` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `opt1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `opt1_count` int(11) NOT NULL DEFAULT '0',
  `opt2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `opt2_count` int(11) NOT NULL DEFAULT '0',
  `opt3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt3_count` int(11) DEFAULT '0',
  `opt4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt4_count` int(11) DEFAULT '0',
  `opt5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt5_count` int(11) DEFAULT '0',
  `opt6` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt6_count` int(11) DEFAULT '0',
  `opt7` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt7_count` int(11) DEFAULT '0',
  `opt8` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt8_count` int(11) DEFAULT '0',
  `opt9` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt9_count` int(11) DEFAULT '0',
  `opt10` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt10_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `voting_voters`
--

CREATE TABLE `voting_voters` (
  `voting_id` bigint(20) NOT NULL,
  `voter_id` bigint(20) NOT NULL,
  `option` smallint(6) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`);

--
-- Indexes for table `admin_customize_content`
--
ALTER TABLE `admin_customize_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_daily_analysis`
--
ALTER TABLE `admin_daily_analysis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_date_idx` (`date`,`type`),
  ADD KEY `daily_analysis_date_idx` (`date`);

--
-- Indexes for table `admin_favor`
--
ALTER TABLE `admin_favor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_gray_list`
--
ALTER TABLE `admin_gray_list`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `creator_idx` (`creator_id`),
  ADD KEY `topic_idx` (`topic_id`),
  ADD KEY `operating_time_idx` (`operating_time`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_manager`
--
ALTER TABLE `admin_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3E18A730E7927C74` (`email`);

--
-- Indexes for table `admin_manager_operation_account`
--
ALTER TABLE `admin_manager_operation_account`
  ADD PRIMARY KEY (`manager_id`,`operation_account_id`),
  ADD KEY `IDX_61EA198D783E3463` (`manager_id`),
  ADD KEY `IDX_61EA198DD5FC3067` (`operation_account_id`);

--
-- Indexes for table `admin_manager_role`
--
ALTER TABLE `admin_manager_role`
  ADD PRIMARY KEY (`manager_id`,`role_id`),
  ADD KEY `IDX_28218AFE783E3463` (`manager_id`),
  ADD KEY `IDX_28218AFED60322AC` (`role_id`);

--
-- Indexes for table `admin_operation_account`
--
ALTER TABLE `admin_operation_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_recommendation_cron_job`
--
ALTER TABLE `admin_recommendation_cron_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7770088A57698A6A` (`role`);

--
-- Indexes for table `admin_tag`
--
ALTER TABLE `admin_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_758EE4F65E237E06` (`name`);

--
-- Indexes for table `admin_tag_post`
--
ALTER TABLE `admin_tag_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_topics_views`
--
ALTER TABLE `admin_topics_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topic_date_idx` (`topic_id`,`date`),
  ADD KEY `date_idx` (`date`);

--
-- Indexes for table `android_auto_update`
--
ALTER TABLE `android_auto_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_idx` (`app_id`);

--
-- Indexes for table `anti_rubbish`
--
ALTER TABLE `anti_rubbish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_channel_package`
--
ALTER TABLE `app_channel_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_udx` (`code`);

--
-- Indexes for table `app_channel_title`
--
ALTER TABLE `app_channel_title`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_udx` (`code`);

--
-- Indexes for table `audit_image`
--
ALTER TABLE `audit_image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image_post_idx` (`image_url`,`post_id`);

--
-- Indexes for table `auth_client`
--
ALTER TABLE `auth_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_udx` (`key`);

--
-- Indexes for table `auth_password`
--
ALTER TABLE `auth_password`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `auth_qq`
--
ALTER TABLE `auth_qq`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `auth_sina_weibo`
--
ALTER TABLE `auth_sina_weibo`
  ADD PRIMARY KEY (`weibo_uid`);

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token_udx` (`access_token`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `auth_wechat`
--
ALTER TABLE `auth_wechat`
  ADD PRIMARY KEY (`open_id`);

--
-- Indexes for table `blocking_device`
--
ALTER TABLE `blocking_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `platform_device_id_udx` (`platform`,`device_id`);

--
-- Indexes for table `blocking_topic`
--
ALTER TABLE `blocking_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_version_idx` (`channel`,`version`);

--
-- Indexes for table `caitu_record`
--
ALTER TABLE `caitu_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_udx` (`phone`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_topic`
--
ALTER TABLE `campaign_topic`
  ADD PRIMARY KEY (`campaign_id`,`topic_id`);

--
-- Indexes for table `captured_site_content`
--
ALTER TABLE `captured_site_content`
  ADD PRIMARY KEY (`site_name`,`content_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `city_post`
--
ALTER TABLE `city_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `cms_setting`
--
ALTER TABLE `cms_setting`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `column`
--
ALTER TABLE `column`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `column_element`
--
ALTER TABLE `column_element`
  ADD PRIMARY KEY (`column_id`,`element_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id_liked_count_index` (`post_id`,`deleted`,`liked_count`);

--
-- Indexes for table `domain_whitelist`
--
ALTER TABLE `domain_whitelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain_udx` (`domain`);

--
-- Indexes for table `editor_choice_topic`
--
ALTER TABLE `editor_choice_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editor_choice_topic_category`
--
ALTER TABLE `editor_choice_topic_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expression`
--
ALTER TABLE `expression`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expression_package`
--
ALTER TABLE `expression_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expression_package_version`
--
ALTER TABLE `expression_package_version`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_idx` (`category_id`);

--
-- Indexes for table `game_banner`
--
ALTER TABLE `game_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_columns`
--
ALTER TABLE `game_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_columns_recommendation`
--
ALTER TABLE `game_columns_recommendation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `columns_idx` (`column_id`);

--
-- Indexes for table `image_review`
--
ALTER TABLE `image_review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image_idx` (`image`),
  ADD KEY `last_review_time_idx` (`last_review_time`);

--
-- Indexes for table `image_review_source`
--
ALTER TABLE `image_review_source`
  ADD PRIMARY KEY (`review_id`,`source_type`,`source_id`),
  ADD KEY `source_idx` (`source_type`,`source_id`);

--
-- Indexes for table `input_domain`
--
ALTER TABLE `input_domain`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain_name_idx` (`name`);

--
-- Indexes for table `input_domain_daily_record`
--
ALTER TABLE `input_domain_daily_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_domain_record`
--
ALTER TABLE `input_domain_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocker_records`
--
ALTER TABLE `ip_blocker_records`
  ADD PRIMARY KEY (`ip`,`action`);

--
-- Indexes for table `like_comment`
--
ALTER TABLE `like_comment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `liker_comment_state_udx` (`liker_id`,`comment_id`,`state`),
  ADD UNIQUE KEY `comment_state_id_udx` (`comment_id`,`state`,`id`),
  ADD KEY `update_time_idx` (`update_time`);

--
-- Indexes for table `like_post`
--
ALTER TABLE `like_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `liker_post_state_udx` (`liker_id`,`post_id`,`state`),
  ADD UNIQUE KEY `post_state_id_udx` (`post_id`,`state`,`id`),
  ADD KEY `update_time_idx` (`update_time`);

--
-- Indexes for table `live_post`
--
ALTER TABLE `live_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_counting`
--
ALTER TABLE `notification_counting`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `notification_event`
--
ALTER TABLE `notification_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`);

--
-- Indexes for table `notification_group_event`
--
ALTER TABLE `notification_group_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`),
  ADD KEY `user_group_id_index` (`user_id`,`group_type`,`id`);

--
-- Indexes for table `notification_like`
--
ALTER TABLE `notification_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`);

--
-- Indexes for table `notification_official`
--
ALTER TABLE `notification_official`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish_time_idx` (`publish_time`);

--
-- Indexes for table `notification_official_push`
--
ALTER TABLE `notification_official_push`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_push_setting`
--
ALTER TABLE `notification_push_setting`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `notification_topic_counting`
--
ALTER TABLE `notification_topic_counting`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `notification_topic_event`
--
ALTER TABLE `notification_topic_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`),
  ADD KEY `user_topic_id_idx` (`user_id`,`topic_id`,`id`);

--
-- Indexes for table `notification_topic_like`
--
ALTER TABLE `notification_topic_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`,`id`),
  ADD KEY `user_topic_id_idx` (`user_id`,`topic_id`,`id`);

--
-- Indexes for table `phone_code`
--
ALTER TABLE `phone_code`
  ADD PRIMARY KEY (`area_code`,`phone`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `create_time_index` (`create_time`);

--
-- Indexes for table `post_category_score`
--
ALTER TABLE `post_category_score`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_udx` (`post_id`),
  ADD KEY `cid_id_idx` (`category_id`,`id`),
  ADD KEY `cid_score_idx` (`category_id`,`score`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`post_id`,`comment_id`),
  ADD KEY `post_image_comment_idx` (`post_id`,`has_image`,`comment_id`);

--
-- Indexes for table `post_comment_image`
--
ALTER TABLE `post_comment_image`
  ADD PRIMARY KEY (`post_id`,`comment_id`);

--
-- Indexes for table `post_counting`
--
ALTER TABLE `post_counting`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_exposure_records`
--
ALTER TABLE `post_exposure_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_resource_title`
--
ALTER TABLE `post_resource_title`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `promotion_banner`
--
ALTER TABLE `promotion_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qingdian_user`
--
ALTER TABLE `qingdian_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rec_group_posts`
--
ALTER TABLE `rec_group_posts`
  ADD PRIMARY KEY (`seq_id`),
  ADD UNIQUE KEY `gid_pid_udx` (`group_id`,`post_id`),
  ADD KEY `gid_sid_idx` (`group_id`,`seq_id`);

--
-- Indexes for table `recommendable_topic`
--
ALTER TABLE `recommendable_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `recommendation_banner`
--
ALTER TABLE `recommendation_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation_group`
--
ALTER TABLE `recommendation_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation_item`
--
ALTER TABLE `recommendation_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation_subbanner`
--
ALTER TABLE `recommendation_subbanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation_topic_test`
--
ALTER TABLE `recommendation_topic_test`
  ADD PRIMARY KEY (`property`,`score`,`topic_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_state`
--
ALTER TABLE `review_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_channel_idx` (`app_id`,`channel`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `starttime_idx` (`start_time`);

--
-- Indexes for table `schedule_by_topic`
--
ALTER TABLE `schedule_by_topic`
  ADD PRIMARY KEY (`topic_id`,`schedule_id`),
  ADD UNIQUE KEY `topic_starttime_schedule_udx` (`topic_id`,`start_time`,`schedule_id`);

--
-- Indexes for table `schedule_by_user`
--
ALTER TABLE `schedule_by_user`
  ADD PRIMARY KEY (`user_id`,`schedule_id`),
  ADD UNIQUE KEY `user_starttime_schedule_udx` (`user_id`,`start_time`,`schedule_id`);

--
-- Indexes for table `schedule_joiners`
--
ALTER TABLE `schedule_joiners`
  ADD PRIMARY KEY (`schedule_id`,`joiner_id`),
  ADD UNIQUE KEY `schedule_position_udx` (`schedule_id`,`position`,`joiner_id`);

--
-- Indexes for table `search_keyword`
--
ALTER TABLE `search_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_record`
--
ALTER TABLE `search_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_records`
--
ALTER TABLE `sms_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spammer_records`
--
ALTER TABLE `spammer_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B029F74045F988B4` (`spammer_id`);

--
-- Indexes for table `special_subject`
--
ALTER TABLE `special_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_subject_relation`
--
ALTER TABLE `special_subject_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_subject_index` (`special_subject_id`);

--
-- Indexes for table `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sticker_version`
--
ALTER TABLE `sticker_version`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `sub_banner`
--
ALTER TABLE `sub_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_state`
--
ALTER TABLE `task_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`task_name`);

--
-- Indexes for table `test_topic`
--
ALTER TABLE `test_topic`
  ADD PRIMARY KEY (`property`,`score`,`topic_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_udx` (`title`),
  ADD KEY `creator_idx` (`creator_id`);

--
-- Indexes for table `topic_announcing`
--
ALTER TABLE `topic_announcing`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `topic_category`
--
ALTER TABLE `topic_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F07D94C75E237E06` (`name`);

--
-- Indexes for table `topic_category_rel`
--
ALTER TABLE `topic_category_rel`
  ADD PRIMARY KEY (`category_id`,`topic_id`),
  ADD KEY `topic_category_idx` (`topic_id`,`category_id`);

--
-- Indexes for table `topic_category_score`
--
ALTER TABLE `topic_category_score`
  ADD PRIMARY KEY (`category_id`,`score`,`order`,`topic_id`);

--
-- Indexes for table `topic_certified`
--
ALTER TABLE `topic_certified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_chat_post`
--
ALTER TABLE `topic_chat_post`
  ADD PRIMARY KEY (`topic_id`,`post_id`);

--
-- Indexes for table `topic_core_member_meta`
--
ALTER TABLE `topic_core_member_meta`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `topic_core_members`
--
ALTER TABLE `topic_core_members`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indexes for table `topic_creating_application`
--
ALTER TABLE `topic_creating_application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_udx` (`title`),
  ADD KEY `creator_idx` (`creator_id`);

--
-- Indexes for table `topic_creating_quota`
--
ALTER TABLE `topic_creating_quota`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `topic_default_group`
--
ALTER TABLE `topic_default_group`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `topic_follower`
--
ALTER TABLE `topic_follower`
  ADD PRIMARY KEY (`topic_id`,`position`,`user_id`),
  ADD UNIQUE KEY `topic_user` (`topic_id`,`user_id`);

--
-- Indexes for table `topic_following_application`
--
ALTER TABLE `topic_following_application`
  ADD PRIMARY KEY (`topic_id`,`applicant_id`),
  ADD UNIQUE KEY `topic_position_applicant_udx` (`topic_id`,`position`,`applicant_id`);

--
-- Indexes for table `topic_post`
--
ALTER TABLE `topic_post`
  ADD PRIMARY KEY (`topic_id`,`post_id`);

--
-- Indexes for table `topic_sticky_post`
--
ALTER TABLE `topic_sticky_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topic_post_index` (`topic_id`,`level`,`post_id`);

--
-- Indexes for table `topic_tag`
--
ALTER TABLE `topic_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_302AC6215E237E06` (`name`);

--
-- Indexes for table `topic_tag_rel`
--
ALTER TABLE `topic_tag_rel`
  ADD PRIMARY KEY (`topic_id`,`tag_id`);

--
-- Indexes for table `topic_titles`
--
ALTER TABLE `topic_titles`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `topic_user_following`
--
ALTER TABLE `topic_user_following`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD UNIQUE KEY `user_state_position` (`user_id`,`state`,`position`),
  ADD KEY `time_idx` (`create_time`);

--
-- Indexes for table `topic_user_meta`
--
ALTER TABLE `topic_user_meta`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `topic_visitor_log`
--
ALTER TABLE `topic_visitor_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_code_phone_udx` (`area_code`,`phone`),
  ADD UNIQUE KEY `email_udx` (`email`),
  ADD UNIQUE KEY `nickname_udx` (`nickname`);

--
-- Indexes for table `user_blacklist`
--
ALTER TABLE `user_blacklist`
  ADD PRIMARY KEY (`user_id`,`target_id`);

--
-- Indexes for table `user_comment`
--
ALTER TABLE `user_comment`
  ADD PRIMARY KEY (`user_id`,`comment_id`),
  ADD KEY `use_image_comment_idx` (`user_id`,`has_image`,`comment_id`);

--
-- Indexes for table `user_comment_image`
--
ALTER TABLE `user_comment_image`
  ADD PRIMARY KEY (`user_id`,`comment_id`);

--
-- Indexes for table `user_counting`
--
ALTER TABLE `user_counting`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_device`
--
ALTER TABLE `user_device`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_following`
--
ALTER TABLE `user_following`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follower_followee_state_udx` (`follower_id`,`followee_id`,`state`),
  ADD UNIQUE KEY `follower_state_id_udx` (`follower_id`,`state`,`id`),
  ADD KEY `update_time_idx` (`update_time`);

--
-- Indexes for table `user_following_counting`
--
ALTER TABLE `user_following_counting`
  ADD PRIMARY KEY (`target_id`);

--
-- Indexes for table `user_frozen`
--
ALTER TABLE `user_frozen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_index` (`user_id`);

--
-- Indexes for table `user_live`
--
ALTER TABLE `user_live`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `pizus_udx` (`pizus_id`);

--
-- Indexes for table `user_mission_state`
--
ALTER TABLE `user_mission_state`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`user_id`,`post_id`),
  ADD UNIQUE KEY `user_topic_post_udx` (`user_id`,`topic_id`,`post_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_sign_in`
--
ALTER TABLE `user_sign_in`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_topic_creating`
--
ALTER TABLE `user_topic_creating`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `user_topic_managing`
--
ALTER TABLE `user_topic_managing`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `user_vip`
--
ALTER TABLE `user_vip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_udx` (`user_id`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_voters`
--
ALTER TABLE `voting_voters`
  ADD PRIMARY KEY (`voting_id`,`voter_id`),
  ADD KEY `voting_option_time_voter_idx` (`voting_id`,`option`,`time`,`voter_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_customize_content`
--
ALTER TABLE `admin_customize_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_daily_analysis`
--
ALTER TABLE `admin_daily_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_favor`
--
ALTER TABLE `admin_favor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_manager`
--
ALTER TABLE `admin_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_recommendation_cron_job`
--
ALTER TABLE `admin_recommendation_cron_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_tag`
--
ALTER TABLE `admin_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_tag_post`
--
ALTER TABLE `admin_tag_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_topics_views`
--
ALTER TABLE `admin_topics_views`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `android_auto_update`
--
ALTER TABLE `android_auto_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `anti_rubbish`
--
ALTER TABLE `anti_rubbish`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `app_channel_package`
--
ALTER TABLE `app_channel_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `app_channel_title`
--
ALTER TABLE `app_channel_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `audit_image`
--
ALTER TABLE `audit_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_client`
--
ALTER TABLE `auth_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_token`
--
ALTER TABLE `auth_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `blocking_device`
--
ALTER TABLE `blocking_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `blocking_topic`
--
ALTER TABLE `blocking_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `caitu_record`
--
ALTER TABLE `caitu_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `city_post`
--
ALTER TABLE `city_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `column`
--
ALTER TABLE `column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `domain_whitelist`
--
ALTER TABLE `domain_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `editor_choice_topic`
--
ALTER TABLE `editor_choice_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `editor_choice_topic_category`
--
ALTER TABLE `editor_choice_topic_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `expression`
--
ALTER TABLE `expression`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `expression_package`
--
ALTER TABLE `expression_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `game`
--
ALTER TABLE `game`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `game_banner`
--
ALTER TABLE `game_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `game_category`
--
ALTER TABLE `game_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `game_columns`
--
ALTER TABLE `game_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `game_columns_recommendation`
--
ALTER TABLE `game_columns_recommendation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `image_review`
--
ALTER TABLE `image_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `input_domain`
--
ALTER TABLE `input_domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `input_domain_daily_record`
--
ALTER TABLE `input_domain_daily_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `input_domain_record`
--
ALTER TABLE `input_domain_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `like_comment`
--
ALTER TABLE `like_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `like_post`
--
ALTER TABLE `like_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `live_post`
--
ALTER TABLE `live_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_event`
--
ALTER TABLE `notification_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_group_event`
--
ALTER TABLE `notification_group_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_like`
--
ALTER TABLE `notification_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_official`
--
ALTER TABLE `notification_official`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_topic_event`
--
ALTER TABLE `notification_topic_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `notification_topic_like`
--
ALTER TABLE `notification_topic_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `post_category_score`
--
ALTER TABLE `post_category_score`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `post_exposure_records`
--
ALTER TABLE `post_exposure_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `promotion_banner`
--
ALTER TABLE `promotion_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `rec_group_posts`
--
ALTER TABLE `rec_group_posts`
  MODIFY `seq_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `recommendation_banner`
--
ALTER TABLE `recommendation_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `recommendation_group`
--
ALTER TABLE `recommendation_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `recommendation_item`
--
ALTER TABLE `recommendation_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `recommendation_subbanner`
--
ALTER TABLE `recommendation_subbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `review_state`
--
ALTER TABLE `review_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `search_keyword`
--
ALTER TABLE `search_keyword`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `search_record`
--
ALTER TABLE `search_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `sms_records`
--
ALTER TABLE `sms_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `spammer_records`
--
ALTER TABLE `spammer_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `special_subject`
--
ALTER TABLE `special_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `special_subject_relation`
--
ALTER TABLE `special_subject_relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `sticker`
--
ALTER TABLE `sticker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `sub_banner`
--
ALTER TABLE `sub_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `task_state`
--
ALTER TABLE `task_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic`
--
ALTER TABLE `topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_category`
--
ALTER TABLE `topic_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_certified`
--
ALTER TABLE `topic_certified`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_creating_application`
--
ALTER TABLE `topic_creating_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_sticky_post`
--
ALTER TABLE `topic_sticky_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_tag`
--
ALTER TABLE `topic_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `topic_visitor_log`
--
ALTER TABLE `topic_visitor_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_following`
--
ALTER TABLE `user_following`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_frozen`
--
ALTER TABLE `user_frozen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_vip`
--
ALTER TABLE `user_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `voting`
--
ALTER TABLE `voting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 限制导出的表
--

--
-- 限制表 `admin_manager_operation_account`
--
ALTER TABLE `admin_manager_operation_account`
  ADD CONSTRAINT `FK_61EA198D783E3463` FOREIGN KEY (`manager_id`) REFERENCES `admin_manager` (`id`),
  ADD CONSTRAINT `FK_61EA198DD5FC3067` FOREIGN KEY (`operation_account_id`) REFERENCES `admin_operation_account` (`id`);

--
-- 限制表 `admin_manager_role`
--
ALTER TABLE `admin_manager_role`
  ADD CONSTRAINT `FK_28218AFE783E3463` FOREIGN KEY (`manager_id`) REFERENCES `admin_manager` (`id`),
  ADD CONSTRAINT `FK_28218AFED60322AC` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`);

--
-- 限制表 `special_subject_relation`
--
ALTER TABLE `special_subject_relation`
  ADD CONSTRAINT `FK_E1B212EFE65EF837` FOREIGN KEY (`special_subject_id`) REFERENCES `special_subject` (`id`);
--
-- Database: `ciyocon_chatto`
--
CREATE DATABASE IF NOT EXISTS `ciyocon_chatto` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ciyocon_chatto`;

-- --------------------------------------------------------

--
-- 表的结构 `group`
--

CREATE TABLE `group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1500) DEFAULT NULL,
  `icon` varchar(2083) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `member_count` smallint(6) NOT NULL DEFAULT '0',
  `member_pos` int(11) NOT NULL DEFAULT '0',
  `kickout_count` smallint(6) NOT NULL DEFAULT '0',
  `kickout_pos` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `group_kickouts`
--

CREATE TABLE `group_kickouts` (
  `group_id` bigint(20) NOT NULL,
  `kickee_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `group_members`
--

CREATE TABLE `group_members` (
  `group_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL,
  `no_disturb` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `groups_by_topic`
--

CREATE TABLE `groups_by_topic` (
  `topic_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `groups_by_user`
--

CREATE TABLE `groups_by_user` (
  `user_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `from` bigint(20) DEFAULT NULL,
  `to` bigint(20) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `body` varchar(1500) DEFAULT NULL,
  `group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `user_count` bigint(20) UNSIGNED DEFAULT NULL,
  `connection_count` bigint(20) UNSIGNED DEFAULT NULL,
  `memory_usage` float DEFAULT NULL,
  `memory_free` float DEFAULT NULL,
  `cpu_usage` float DEFAULT NULL,
  `message_in_count` bigint(20) UNSIGNED DEFAULT NULL,
  `message_out_count` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `user_messages`
--

CREATE TABLE `user_messages` (
  `user_id` bigint(20) NOT NULL,
  `cursor` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_meta`
--

CREATE TABLE `user_meta` (
  `user_id` bigint(20) NOT NULL,
  `write_cursor` bigint(20) NOT NULL,
  `read_cursor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `group_kickouts`
--
ALTER TABLE `group_kickouts`
  ADD PRIMARY KEY (`group_id`,`kickee_id`) USING BTREE;

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_id`,`member_id`) USING BTREE;

--
-- Indexes for table `groups_by_topic`
--
ALTER TABLE `groups_by_topic`
  ADD PRIMARY KEY (`topic_id`,`group_id`) USING BTREE;

--
-- Indexes for table `groups_by_user`
--
ALTER TABLE `groups_by_user`
  ADD PRIMARY KEY (`user_id`,`group_id`) USING BTREE,
  ADD UNIQUE KEY `user_topic_group_udx` (`user_id`,`topic_id`,`group_id`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`user_id`,`cursor`,`message_id`) USING BTREE;

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `group`
--
ALTER TABLE `group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `ciyocon_oss`
--
CREATE DATABASE IF NOT EXISTS `ciyocon_oss` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciyocon_oss`;

-- --------------------------------------------------------

--
-- 表的结构 `bot_likes`
--

CREATE TABLE `bot_likes` (
  `id` bigint(20) NOT NULL,
  `liker_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_game_banner_view`
--

CREATE TABLE `event_game_banner_view` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `banner_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_official_notification_view`
--

CREATE TABLE `event_official_notification_view` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_post_share`
--

CREATE TABLE `event_post_share` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_post_view`
--

CREATE TABLE `event_post_view` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `platform` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_promotion_view`
--

CREATE TABLE `event_promotion_view` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `promotion_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `event_rec_banner_view`
--

CREATE TABLE `event_rec_banner_view` (
  `id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `banner_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `questionnaire1`
--

CREATE TABLE `questionnaire1` (
  `id` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `q1` smallint(6) DEFAULT NULL,
  `q2` smallint(6) DEFAULT NULL,
  `q3` smallint(6) DEFAULT NULL,
  `q4` smallint(6) DEFAULT NULL,
  `q5` smallint(6) DEFAULT NULL,
  `q6` smallint(6) DEFAULT NULL,
  `q7` smallint(6) DEFAULT NULL,
  `q8` smallint(6) DEFAULT NULL,
  `q9` smallint(6) DEFAULT NULL,
  `q10` smallint(6) DEFAULT NULL,
  `q11` smallint(6) DEFAULT NULL,
  `q11_e5` varchar(100) DEFAULT NULL,
  `q12` smallint(6) DEFAULT NULL,
  `q12_e6` varchar(100) DEFAULT NULL,
  `q13` smallint(6) DEFAULT NULL,
  `q13_e8` varchar(100) DEFAULT NULL,
  `q14` smallint(6) DEFAULT NULL,
  `q15` smallint(6) DEFAULT NULL,
  `q16` smallint(6) DEFAULT NULL,
  `q17` smallint(6) DEFAULT NULL,
  `q18` smallint(6) DEFAULT NULL,
  `q19` smallint(6) DEFAULT NULL,
  `q20` smallint(6) DEFAULT NULL,
  `q20_e9` varchar(100) DEFAULT NULL,
  `q21` smallint(6) DEFAULT NULL,
  `q21_e12` varchar(100) DEFAULT NULL,
  `q22` smallint(6) DEFAULT NULL,
  `q23` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bot_likes`
--
ALTER TABLE `bot_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_game_banner_view`
--
ALTER TABLE `event_game_banner_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_official_notification_view`
--
ALTER TABLE `event_official_notification_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_post_share`
--
ALTER TABLE `event_post_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_post_view`
--
ALTER TABLE `event_post_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_promotion_view`
--
ALTER TABLE `event_promotion_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_rec_banner_view`
--
ALTER TABLE `event_rec_banner_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire1`
--
ALTER TABLE `questionnaire1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bot_likes`
--
ALTER TABLE `bot_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_game_banner_view`
--
ALTER TABLE `event_game_banner_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_official_notification_view`
--
ALTER TABLE `event_official_notification_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_post_share`
--
ALTER TABLE `event_post_share`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_post_view`
--
ALTER TABLE `event_post_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_promotion_view`
--
ALTER TABLE `event_promotion_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `event_rec_banner_view`
--
ALTER TABLE `event_rec_banner_view`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `questionnaire1`
--
ALTER TABLE `questionnaire1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
